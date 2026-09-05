# Beyond the Chat Window: Building and Evaluating a Human-Governed Workflow for Scientific Collaboration Across AI Platforms

This repository contains the paper on sustained scientific work across AI platforms and its version-pinned supplementary materials. The main paper explains the workflow and how to apply it, then reports a retrospective single-investigator case and its limitations. The case does not establish comparative effectiveness or general usability.

## Read the paper and adopt SCUTER

The main manuscript source is in [`content`](content). It separates workflow design, practical application, retrospective evaluation, findings, and discussion. GitHub Actions builds the formatted manuscript on pull requests and on the default branch.

The paper's implementation guide, work contract, schemas, synthetic examples, and templates remain in [`supplement`](supplement) as the version described by the manuscript. The build produces separate HTML and US Letter PDF supplement outputs.

[SCUTER](https://github.com/TaylorResearchLab/SCUTER), **Scientific Collaboration for User-directed, Traceable, Evidence-based Research**, is the companion implementation. It provides a reusable protocol, adoption guides, templates, a Skill package, and complete Markdown instructions for scientist-directed AI collaboration.

The development version described by this manuscript is [SCUTER 0.2.0 at commit 9835a3d](https://github.com/TaylorResearchLab/SCUTER/tree/9835a3d0c9adbc32ea99f6ff930f0b41bbaedc39). The [Skill package](https://github.com/TaylorResearchLab/SCUTER/blob/9835a3d0c9adbc32ea99f6ff930f0b41bbaedc39/dist/scuter-v0.2.0.skill?raw=true) and [complete Markdown instructions](https://github.com/TaylorResearchLab/SCUTER/blob/9835a3d0c9adbc32ea99f6ff930f0b41bbaedc39/dist/scuter-v0.2.0.md?raw=true) are available at that revision. The retrospective corpus characterizes the workflow, not the behavior of this later package. Formal release and announcement remain deferred until the arXiv preprint is posted.

[`SCUTER_SNAPSHOT.json`](SCUTER_SNAPSHOT.json) records the exact implementation revision and distribution checksums. It identifies the retained paper supplement separately; the paper's guide and the independently maintained SCUTER guides need not have identical wording.

## Manuscript collaboration

Notion holds project decisions, review routing, and handoffs. GitHub holds versioned source, diffs, and build evidence. The User initiates cross-platform transitions and retains acceptance, merge, and publication authority. Material changes and reviews are recorded in the Collaboration Log. `REFERENCE-VALIDATION` requires claim-specific checks of references and public URLs; a successful build is not citation validation.

See [`MANUSCRIPT_WORKFLOW.md`](MANUSCRIPT_WORKFLOW.md), [`CONTRIBUTING.md`](CONTRIBUTING.md), and [`CITATION_VALIDATION.md`](CITATION_VALIDATION.md).

## Public resources

- HTML manuscript: `https://TaylorResearchLab.github.io/beyond-the-chat-window/`
- PDF manuscript: `https://TaylorResearchLab.github.io/beyond-the-chat-window/manuscript.pdf`
- Implementation-guide and work-contract supplement PDF: `https://TaylorResearchLab.github.io/beyond-the-chat-window/supplement-work-contract.pdf`
- Implementation-guide and work-contract supplement HTML: `https://TaylorResearchLab.github.io/beyond-the-chat-window/supplement-work-contract.html`

Pull-request revisions are not necessarily reflected in default-branch public outputs.

## License

Manuscript and supplement text are intended for release under CC BY 4.0. Code and configuration follow the Rootstock licensing model.
