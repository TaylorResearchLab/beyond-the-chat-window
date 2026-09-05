# Beyond the Chat Window: Building and Evaluating a Human-Governed Workflow for Scientific Collaboration Across AI Platforms

This repository contains a methods paper and reusable materials for sustained scientific work across AI platforms. The main paper explains the workflow and how to apply it, then reports a retrospective single-investigator case and its limitations. The case does not establish comparative effectiveness or general usability.

## Read and apply the workflow

The main manuscript source is in [`content`](content). It separates workflow design, practical application, retrospective evaluation, findings, and discussion. GitHub Actions builds the formatted manuscript on pull requests and on the default branch.

The detailed implementation guide, work contract, schemas, synthetic examples, and templates are in [`supplement`](supplement). The build produces separate HTML and US Letter PDF supplement outputs.

The development Skill is in [`skills/user-mediated-collaboration`](skills/user-mediated-collaboration), with the packaged [`v0.1.0 artifact`](skills/user-mediated-collaboration-v0.1.0.skill). It packages participant instructions rather than automating coordination or granting access. The embedded protocol snapshot is `47ad152` and predates some revisions in the current supplement. Reconcile the package with the project's adopted contract before use. Its presence here is not a formal release; formal Skill release and announcement remain deferred until the arXiv preprint is posted.

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
