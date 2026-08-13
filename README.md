# Beyond the Chat Window: User-Mediated Collaboration Across AI Platforms

This repository contains the Manubot source for a short methods and perspective paper on a human-governed collaboration workflow involving multiple named AI sessions.

## Manuscript

The source is in [`content`](content). GitHub Actions builds the formatted manuscript on pull requests and on the default branch.

## Workflow

- Notion holds the Collaboration Log, numbered notebooks, decisions, review routing, and state-anchoring handoffs.
- GitHub holds versioned manuscript source, diffs, pull requests, and build evidence.
- The User actively mediates cross-agent transitions and retains merge and publication authority.
- GPT and Claude may alternate lead and review roles.
- Each material branch, pull request, commit, review, and merge is recorded in Notion.

See [`MANUSCRIPT_WORKFLOW.md`](MANUSCRIPT_WORKFLOW.md) and [`CONTRIBUTING.md`](CONTRIBUTING.md).

## Public resources

- Public Notion Collaboration Log template: `PUBLIC_NOTION_TEMPLATE_URL`
- HTML manuscript: `https://TaylorResearchLab.github.io/beyond-the-chat-window/`
- PDF manuscript: `https://TaylorResearchLab.github.io/beyond-the-chat-window/manuscript.pdf`

## License

Manuscript text is intended for release under CC BY 4.0. Code and configuration follow the Rootstock licensing model.
