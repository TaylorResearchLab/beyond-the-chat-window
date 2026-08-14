# Beyond the Chat Window: User-Mediated Collaboration Across AI Platforms

This repository contains the Manubot source for a methods paper on a human-governed collaboration workflow involving multiple named AI sessions.

## Manuscript

The main source is in [`content`](content). GitHub Actions builds the formatted manuscript on pull requests and on the default branch.

The work-contract supplement source is in [`supplement`](supplement). The same workflow produces separate HTML and US Letter PDF outputs containing a completed synthetic work contract, example Collaboration Log record, example handoff, and reusable template.

## Workflow

- Notion holds the Collaboration Log, numbered notebooks, decisions, review routing, and state-anchoring handoffs.
- GitHub holds versioned manuscript and supplement source, diffs, pull requests, and build evidence.
- The User actively mediates cross-agent transitions and retains merge and publication authority.
- GPT and Claude may alternate lead and review roles.
- Each material branch, pull request, commit, review, and merge is recorded in Notion.
- RULE ONE requires every scholarly citation and public URL to be validated before merge.

See [`MANUSCRIPT_WORKFLOW.md`](MANUSCRIPT_WORKFLOW.md), [`CONTRIBUTING.md`](CONTRIBUTING.md), and [`CITATION_VALIDATION.md`](CITATION_VALIDATION.md).

## Public resources

- HTML manuscript: `https://TaylorResearchLab.github.io/beyond-the-chat-window/`
- PDF manuscript: `https://TaylorResearchLab.github.io/beyond-the-chat-window/manuscript.pdf`
- Work-contract supplement PDF: `https://TaylorResearchLab.github.io/beyond-the-chat-window/supplement-work-contract.pdf`
- Work-contract supplement HTML: `https://TaylorResearchLab.github.io/beyond-the-chat-window/supplement-work-contract.html`

A public Notion Collaboration Log template remains a planned companion resource and is not yet represented as an active URL.

## License

Manuscript and supplement text are intended for release under CC BY 4.0. Code and configuration follow the Rootstock licensing model.
