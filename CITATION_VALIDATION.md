# Citation validation ledger

**Rule One:** only cite validated articles.

A successful Manubot build or resolved identifier is not evidence that a reference exists, is bibliographically correct, or supports the attached claim. Before merge, each citation must be checked against a primary publication record for title, authorship, date, identifier, and relevance.

**Audit date:** 2026-08-13  
**Manuscript branch:** `agent/fix-workflow-custody`

| Citation key | Primary record checked | Bibliographic match | Claim supported | Status |
| --- | --- | --- | --- | --- |
| `arxiv:2308.08155` | https://arxiv.org/abs/2308.08155 | AutoGen; Wu et al.; arXiv 2308.08155 | Multi-agent orchestration framework | Validated |
| `arxiv:2308.00352` | https://arxiv.org/abs/2308.00352 | MetaGPT; Hong et al.; arXiv 2308.00352 | Role-based multi-agent software workflow | Validated |
| `arxiv:2307.07924` | https://arxiv.org/abs/2307.07924 | ChatDev; Qian et al.; arXiv 2307.07924 | Communicative multi-agent software workflow | Validated |
| `doi:10.1038/sdata.2016.18` | https://www.nature.com/articles/sdata201618 | Wilkinson et al.; Scientific Data 3:160018; DOI exact | FAIR principles and machine-actionable research objects | Validated |
| `doi:10.1145/356810.356816` | https://dl.acm.org/doi/10.1145/356810.356816 and https://mas.cs.umass.edu/pub/paper_detail.php/229 | Erman, Hayes-Roth, Lesser, and Reddy; ACM Computing Surveys 12(2):213-253; DOI exact | Hearsay-II as a blackboard-system precedent | Validated |
| `doi:10.1609/aimag.v7i2.537` | https://ojs.aaai.org/aimagazine/index.php/aimagazine/article/view/537 | H. Penny Nii; AI Magazine 7(2):38-53; DOI exact | Blackboard model and architecture | Validated |
| `arxiv:2505.13400` | https://arxiv.org/abs/2505.13400 | Robin; Ghareeb et al.; arXiv 2505.13400 | Multi-agent system for semi-autonomous scientific discovery | Validated |
| `arxiv:2503.05854` | https://arxiv.org/abs/2503.05854 | Pantiukhin et al.; arXiv 2503.05854 | Multi-agent workflow for Earth-science data access and analysis | Validated |
| `doi:10.1371/journal.pcbi.1007128` | https://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1007128 | Himmelstein et al.; PLOS Computational Biology 15(6):e1007128; DOI exact | Manubot versioned collaborative manuscript workflow | Validated |

## Public-link audit

The review PDF previously exposed a versioned Manubot permalink and source-commit URL based on a temporary pull-request merge SHA. Those links did not represent durable public artifacts and were not validated before the PDF was described as ready. The front-matter template now links only to the stable public repository:

https://github.com/TaylorResearchLab/beyond-the-chat-window

## Merge gate

A citation or public URL with status other than **Validated** blocks merge and release. Claude and the User should independently spot-check this ledger against the rendered bibliography and public links.
