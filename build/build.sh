#!/usr/bin/env bash

## build.sh: compile manuscript and supplement outputs using Manubot and Pandoc

set -o errexit \
    -o nounset \
    -o pipefail

# Set timezone used by Python for setting the manuscript's date
export TZ=Etc/UTC
# Default Python to read/write text files using UTF-8 encoding
export LC_ALL=en_US.UTF-8

# Set DOCKER_RUNNING to true if docker is running, otherwise false.
DOCKER_RUNNING="$(docker info &> /dev/null && echo "true" || (true && echo "false"))"

# Set option defaults
CI="${CI:-false}"
BUILD_PDF="${BUILD_PDF:-true}"
BUILD_DOCX="${BUILD_DOCX:-false}"
BUILD_LATEX="${BUILD_LATEX:-false}"
SPELLCHECK="${SPELLCHECK:-false}"
MANUBOT_USE_DOCKER="${MANUBOT_USE_DOCKER:-$DOCKER_RUNNING}"
# Pandoc's configuration is specified via files of option defaults
# located in the $PANDOC_DATA_DIR/defaults directory.
PANDOC_DATA_DIR="${PANDOC_DATA_DIR:-build/pandoc}"

# Generate manuscript reference information and processed Markdown
echo >&2 "Retrieving and processing manuscript reference metadata"
manubot process \
  --content-directory=content \
  --output-directory=output \
  --cache-directory=ci/cache \
  --skip-citations \
  --log-level=INFO

# Generate the work-contract supplement Markdown in a separate work directory
echo >&2 "Processing work-contract supplement"
rm -rf output/supplement
manubot process \
  --content-directory=supplement \
  --output-directory=output/supplement \
  --cache-directory=ci/cache \
  --skip-citations \
  --log-level=INFO

# Make output directory
mkdir -p output

# Create manuscript HTML output
# https://pandoc.org/MANUAL.html
echo >&2 "Exporting HTML manuscript"
pandoc --verbose \
  --data-dir="$PANDOC_DATA_DIR" \
  --defaults=common.yaml \
  --defaults=html.yaml

# Create supplement HTML output
echo >&2 "Exporting HTML work-contract supplement"
pandoc --verbose \
  --data-dir="$PANDOC_DATA_DIR" \
  --defaults=supplement-common.yaml \
  --defaults=supplement-html.yaml

# Create manuscript PDF output unless BUILD_PDF equals false.
# If Docker is not available, use WeasyPrint.
if [ "${BUILD_PDF}" != "false" ] && [ "${MANUBOT_USE_DOCKER}" != "true" ]; then
  echo >&2 "Exporting PDF manuscript using WeasyPrint"
  if [ -L images ]; then rm images; fi
  ln -s content/images
  pandoc \
    --data-dir="$PANDOC_DATA_DIR" \
    --defaults=common.yaml \
    --defaults=html.yaml \
    --defaults=pdf-weasyprint.yaml
  rm images
fi

# If Docker is available, use Athena for the main manuscript.
if [ "${BUILD_PDF}" != "false" ] && [ "${MANUBOT_USE_DOCKER}" == "true" ]; then
  echo >&2 "Exporting PDF manuscript using Docker + Athena"
  if [ "${CI}" = "true" ]; then
    MANUBOT_ATHENAPDF_DELAY="${MANUBOT_ATHENAPDF_DELAY:-5000}"
    echo >&2 "Continuous integration build detected. Setting athenapdf --delay=$MANUBOT_ATHENAPDF_DELAY"
  fi
  if [ -d output/images ]; then rm -rf output/images; fi
  cp -R -L content/images output/
  docker run \
    --rm \
    --shm-size=1g \
    --volume="$(pwd)/output:/converted/" \
    --security-opt=seccomp:unconfined \
    arachnysdocker/athenapdf:2.16.0 \
    athenapdf \
    --delay=${MANUBOT_ATHENAPDF_DELAY:-1100} \
    --pagesize=Letter \
    manuscript.html manuscript.pdf
  rm -rf output/images
fi

# The supplement always uses WeasyPrint so its Letter configuration is identical
# in local and continuous-integration builds.
if [ "${BUILD_PDF}" != "false" ]; then
  echo >&2 "Exporting PDF work-contract supplement using WeasyPrint"
  pandoc \
    --data-dir="$PANDOC_DATA_DIR" \
    --defaults=supplement-common.yaml \
    --defaults=supplement-html.yaml \
    --defaults=supplement-pdf.yaml
fi

# Create DOCX output if requested.
if [ "${BUILD_DOCX}" = "true" ]; then
  echo >&2 "Exporting Word Docx manuscript"
  pandoc --verbose \
    --data-dir="$PANDOC_DATA_DIR" \
    --defaults=common.yaml \
    --defaults=docx.yaml
fi

# Create LaTeX output if requested.
if [ "${BUILD_LATEX}" = "true" ]; then
  echo >&2 "Exporting LaTeX manuscript"
  pandoc \
    --data-dir="$PANDOC_DATA_DIR" \
    --defaults=common.yaml \
    --defaults=latex.yaml
fi

# Spellcheck manuscript and supplement.
if [ "${SPELLCHECK}" = "true" ]; then
  export ASPELL_CONF="add-extra-dicts $(pwd)/build/assets/custom-dictionary.txt; ignore-case true"

  pandoc \
    --data-dir="$PANDOC_DATA_DIR" \
    --lua-filter spellcheck.lua \
    output/manuscript.md \
    | sort -fu > output/spelling-errors.txt
  echo >&2 "Potential manuscript spelling errors:"
  cat output/spelling-errors.txt

  cp output/spelling-errors.txt output/expanded-spelling-errors.txt
  grep "’" output/spelling-errors.txt | sed "s/’/'/g" >> output/expanded-spelling-errors.txt || true
  cat output/expanded-spelling-errors.txt | while read word; do grep -ion "\<$word\>" content/*.md; done | sort -h -t ":" -k 1b,1 -k2,2 > output/spelling-error-locations.txt || true
  echo >&2 "Manuscript spelling-error locations:"
  cat output/spelling-error-locations.txt
  rm output/expanded-spelling-errors.txt

  pandoc \
    --data-dir="$PANDOC_DATA_DIR" \
    --lua-filter spellcheck.lua \
    output/supplement/manuscript.md \
    | sort -fu > output/supplement-spelling-errors.txt
  echo >&2 "Potential supplement spelling errors:"
  cat output/supplement-spelling-errors.txt

  cp output/supplement-spelling-errors.txt output/supplement-expanded-spelling-errors.txt
  grep "’" output/supplement-spelling-errors.txt | sed "s/’/'/g" >> output/supplement-expanded-spelling-errors.txt || true
  cat output/supplement-expanded-spelling-errors.txt | while read word; do grep -ion "\<$word\>" supplement/*.md; done | sort -h -t ":" -k 1b,1 -k2,2 > output/supplement-spelling-error-locations.txt || true
  echo >&2 "Supplement spelling-error locations:"
  cat output/supplement-spelling-error-locations.txt
  rm output/supplement-expanded-spelling-errors.txt
fi

echo >&2 "Build complete"
