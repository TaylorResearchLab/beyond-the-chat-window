# Manuscript collaboration workflow

## Roles

- **User:** sole publication authority, content owner, project manager, merge authority, and arXiv submitter.
- **Lead agent session:** proposes a bounded manuscript change on a branch.
- **Review agent session:** reviews the diff independently, checks claims and citations, and records objections.
- **Manubot CI:** builds HTML, PDF, and other configured outputs and reports build failures.

Roles between GPT and Claude are reversible.

## Required sequence

1. User defines the requested manuscript change and acceptance condition.
2. Lead session checks the Notion Collaboration Log and canonical manuscript branch.
3. Lead session edits Manubot Markdown on a named branch.
4. Lead session records branch, commit, purpose, and next action in Notion.
5. User prompts the reciprocal session to check the log or review the pull request.
6. Review session inspects the actual diff, not only the lead session's summary.
7. User adjudicates requested changes.
8. GitHub Actions must pass.
9. User merges the pull request.
10. Merge commit and resulting manuscript state are written to the Collaboration Log.
11. A state-anchoring handoff is created before role transfer or context exhaustion.

## Branch naming

```text
gpt/<bounded-task>
claude/<bounded-task>
user/<bounded-task>
```

These names describe the originating session in the project record. They do not imply that an LLM owns a GitHub personal account.

## Access

Use the connected GitHub App or another institutionally approved, repository-scoped integration. Do not share a personal GitHub password, personal access token, private key, or session cookie with an LLM.
