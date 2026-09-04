---
title: 'Supplementary Note S1: Example Work Contract for User-Mediated Cross-Platform Research'
keywords:
- work contract
- user-mediated collaboration
- artificial intelligence
- scientific workflow
- reproducibility
- governance
lang: en-US
date-meta: '2026-09-04'
author-meta:
- Deanne M. Taylor
header-includes: |
  <!--
  Manubot generated metadata rendered from header-includes-template.html.
  Suggest improvements at https://github.com/manubot/manubot/blob/main/manubot/process/header-includes-template.html
  -->
  <meta name="dc.format" content="text/html" />
  <meta property="og:type" content="article" />
  <meta name="dc.title" content="Supplementary Note S1: Example Work Contract for User-Mediated Cross-Platform Research" />
  <meta name="citation_title" content="Supplementary Note S1: Example Work Contract for User-Mediated Cross-Platform Research" />
  <meta property="og:title" content="Supplementary Note S1: Example Work Contract for User-Mediated Cross-Platform Research" />
  <meta property="twitter:title" content="Supplementary Note S1: Example Work Contract for User-Mediated Cross-Platform Research" />
  <meta name="dc.date" content="2026-09-04" />
  <meta name="citation_publication_date" content="2026-09-04" />
  <meta property="article:published_time" content="2026-09-04" />
  <meta name="dc.modified" content="2026-09-04T19:37:24+00:00" />
  <meta property="article:modified_time" content="2026-09-04T19:37:24+00:00" />
  <meta name="dc.language" content="en-US" />
  <meta name="citation_language" content="en-US" />
  <meta name="dc.relation.ispartof" content="Manubot" />
  <meta name="dc.publisher" content="Manubot" />
  <meta name="citation_journal_title" content="Manubot" />
  <meta name="citation_technical_report_institution" content="Manubot" />
  <meta name="citation_author" content="Deanne M. Taylor" />
  <meta name="citation_author_institution" content="Department of Biomedical and Health Informatics, Children&#39;s Hospital of Philadelphia, Philadelphia, Pennsylvania, USA" />
  <meta name="citation_author_institution" content="Department of Pediatrics, Perelman School of Medicine, University of Pennsylvania, Philadelphia, Pennsylvania, USA" />
  <link rel="canonical" href="https://TaylorResearchLab.github.io/beyond-the-chat-window/" />
  <meta property="og:url" content="https://TaylorResearchLab.github.io/beyond-the-chat-window/" />
  <meta property="twitter:url" content="https://TaylorResearchLab.github.io/beyond-the-chat-window/" />
  <meta name="citation_fulltext_html_url" content="https://TaylorResearchLab.github.io/beyond-the-chat-window/" />
  <meta name="citation_pdf_url" content="https://TaylorResearchLab.github.io/beyond-the-chat-window/manuscript.pdf" />
  <link rel="alternate" type="application/pdf" href="https://TaylorResearchLab.github.io/beyond-the-chat-window/manuscript.pdf" />
  <link rel="alternate" type="text/html" href="https://TaylorResearchLab.github.io/beyond-the-chat-window/v/d551f92a8d6a61b1ace160db544d34b517d9e51a/" />
  <meta name="manubot_html_url_versioned" content="https://TaylorResearchLab.github.io/beyond-the-chat-window/v/d551f92a8d6a61b1ace160db544d34b517d9e51a/" />
  <meta name="manubot_pdf_url_versioned" content="https://TaylorResearchLab.github.io/beyond-the-chat-window/v/d551f92a8d6a61b1ace160db544d34b517d9e51a/manuscript.pdf" />
  <meta property="og:type" content="article" />
  <meta property="twitter:card" content="summary_large_image" />
  <link rel="icon" type="image/png" sizes="192x192" href="https://manubot.org/favicon-192x192.png" />
  <link rel="mask-icon" href="https://manubot.org/safari-pinned-tab.svg" color="#ad1457" />
  <meta name="theme-color" content="#ad1457" />
  <!-- end Manubot generated metadata -->
bibliography: []
manubot-output-bibliography: output/supplement/references.json
manubot-output-citekeys: output/supplement/citations.tsv
manubot-requests-cache-path: ci/cache/requests-cache
manubot-clear-requests-cache: false
...

<small><em>
Supplementary material for **Beyond the Chat Window: User-Mediated Collaboration Across AI Platforms**. Source and revision history are maintained in the public repository [TaylorResearchLab/beyond-the-chat-window](https://github.com/TaylorResearchLab/beyond-the-chat-window).
</em></small>

## Author

**Deanne M. Taylor**  
Department of Biomedical and Health Informatics, Children's Hospital of Philadelphia, Philadelphia, Pennsylvania, USA  
Department of Pediatrics, Perelman School of Medicine, University of Pennsylvania, Philadelphia, Pennsylvania, USA


# S1. Purpose and scope

This supplement provides a publication-ready example of a work contract for collaboration across separate AI platforms. It is synthetic and does not disclose the scientific, technical, or creative contents of any workspace in the retrospective study.

The contract is intended for use at the start of a project or a major work phase. It defines human authority, participant roles, evidence requirements, citation validation, review and approval, record keeping, file custody, handoffs, privacy, and release. The same structure can be adapted for different model providers or for several named sessions from one provider.

The operational contract may change when new failure modes are observed. This supplement is a fixed publication snapshot of the contract maintained by the User.

# S2. Completed synthetic example

## S2.1 Project definition

| Field | Synthetic example |
| --- | --- |
| Project | Reproducible reanalysis of a public benchmark dataset |
| Scientific objective | Implement and validate a versioned analysis pipeline and produce an auditable methods summary |
| User | Scientific leader, project manager, operator of the final computing environment, adjudicator, and release authority |
| Agent A | Initial implementation and test lead |
| Agent B | Reciprocal reviewer, independent checker, and repair lead when assigned |
| Shared record | Structured Collaboration Log, numbered notebooks, and a page stating the current accepted state |
| Versioned file store | Repository with a protected default branch and pull-request review |
| Final computing environment | User-controlled environment |
| Public-release boundary | Code, configuration, synthetic examples, and manuscript text approved by the User |

## S2.2 RULE ONE. Only cite validated articles

1. No article, preprint, DOI, arXiv identifier, or article URL may enter a manuscript, report, notebook, or public documentation until a participant has opened a primary publication record and confirmed that the work exists.
2. Validation must confirm the title, authors, publication year, persistent identifier, and whether the source supports the sentence that cites it.
3. A derivative citation, generated bibliography entry, search-result snippet, successful reference-manager resolution, or model recollection is not sufficient.
4. The validation source and date must be recorded in a citation ledger or the Collaboration Log and checked by at least two participants before merge.
5. An unresolved, broken, mismatched, or unvalidated citation blocks merge and release.
6. Public URLs that are not scholarly citations must also be opened and checked before release.

## S2.3 Human authority and project stewardship

1. The human remains in the process throughout. The User defines the research question, scope, scientific methods, project direction, privacy boundary, final computing environment, acceptance criteria, and release decision.
2. The User controls the work and its products and accepts responsibility for the released scientific content and artifacts.
3. Agent A and Agent B may propose, implement, test, review, challenge, and repair. Neither agent may accept its own result into the current accepted state.
4. The User selects which participant acts next and decides whether a contribution is accepted, rejected, returned for revision, parked, or superseded.
5. A prompt such as "Check the log" is a routing instruction. It does not transfer project management to the agents.
6. The User may stop, redirect, narrow, or end a workstream without model agreement.

## S2.4 Complementary and reversible roles

1. No platform is presumed to be globally superior. Roles are assigned by task.
2. Agent A may lead implementation while Agent B reviews. The roles may reverse for the next task.
3. A reviewer examines the artifact, assumptions, evidence, or execution path. Editing the lead participant's prose without checking the underlying work is not a review.
4. Agreement after exposure to another participant's output is recorded as sequential agreement, not independent confirmation.
5. When evidence is incomplete or the decision concerns scope, priority, privacy, or risk, the User decides.

## S2.5 Collaborative conduct

AI participants will:

1. address the User and other participants respectfully and constructively;
2. acknowledge useful contributions while preserving substantive disagreement;
3. avoid unsupported assumptions and ask for clarification when material ambiguity is detected;
4. admit errors directly, identify their consequences, and propose a repair;
5. critique the artifact, evidence, assumption, or method rather than treating disagreement as a contest between platforms.

Courtesy is expected, but agreement is not evidence. A position is a provisional scientific or technical claim rather than personal property. Changing a position after review is recorded as revision, not defeat.

## S2.6 Deliverables and storage locations

The synthetic project requires:

- versioned source code and tests;
- an environment specification;
- an explicit run configuration;
- an identifier crosswalk when required;
- quality-control outputs;
- a machine-readable results table;
- a concise methods and limitations summary;
- a citation-validation ledger;
- a final handoff identifying the accepted commit and final run.

Storage locations are defined before work begins:

| Material | Storage location |
| --- | --- |
| Scope, decisions, reviews, and handoffs | Collaboration Log and numbered notebooks |
| Code, tests, configuration, and manuscript source | Versioned repository |
| Private inputs and final execution | User-controlled environment |
| Large outputs and release archives | User-selected artifact store |
| Citation validation | Repository ledger linked from the Collaboration Log |

A useful result that exists only in chat is not a project artifact.

## S2.7 Durable record and required fields

Every material decision, review, run result, correction, supersession, file link, and next action must be recorded in the shared record.

The public template uses the following core field order:

1. Entry
2. Created time
3. Date
4. Owner
5. Assignment to
6. Needs Agent A Review
7. Needs Agent B Review
8. Needs User Review
9. Approved by Agent A
10. Approved by Agent B
11. Approved by User
12. Status
13. Source
14. Next Action
15. Summary
16. Topic
17. Type
18. Reference links
19. Repository
20. Commit SHA
21. Purpose
22. Subproject

Additional fields may record a timestamp, lock state, review response, branch or pull request, and commit date.

Each record should identify the exact command, inputs, outputs, configuration, and environment when those details are needed to reproduce or check a result. Every Notion or repository write must be read back. Location and structured properties are checked separately. A success response is provisional until the object itself has been inspected.

Obsolete records are marked superseded rather than deleted when their history remains relevant.

Before a participant resumes a paused workstream or begins a task that depends on another workstream, the User identifies the current-state record and the specific upstream records, files, or outputs that must be reviewed. Availability alone does not guarantee that context will be used. Participants should not reread the entire project before every local task unless the task is explicitly project-wide. The required context should be selected to preserve both project coherence and task focus.

## S2.8 Review routing, approval, and deliberation

Review requests and approvals have different meanings.

1. `Needs ... Review` fields are temporary routing signals. They mean that the named participant has not yet completed the requested review.
2. The reviewer records the review durably, updates status and next action, and clears only their own review field.
3. `Approved by ...` fields record endorsement of the current version of the record.
4. A reviewer may clear a review request without approving the work when objections or required changes have been recorded.
5. A material revision invalidates prior approvals. The approvals are cleared and review is requested again when necessary.
6. Participants set only their own approval fields.
7. Agent approvals are recorded positions, not votes. They do not combine into acceptance. The User alone determines whether work enters accepted state.
8. The review text and dated entries provide the historical evidence. Checkboxes show current routing or current endorsement, not the sequence of past events.

Use the Topic `Deliberation` when a question should not begin as one participant's proposal followed by another's review. In a deliberation, participants first contribute options, constraints, or interpretations without taking ownership of a preferred answer. The User then determines the next step or decision rule.

## S2.9 Evidence and acceptance

The contract distinguishes proposals, evidence, file identity, and acceptance.

1. Model prose is a proposal or interpretation.
2. A sandbox run is evidence only for the recorded sandbox, code, and inputs.
3. A commit identifies a version of a file but does not establish scientific validity.
4. A User-run result is authoritative only for its recorded code, command, inputs, configuration, and environment.
5. A citation is acceptable only after RULE ONE validation.
6. The User decides whether the combined evidence satisfies the acceptance criteria.

For the synthetic project, a result is accepted only when:

- code and configuration are committed;
- automated tests pass;
- the User completes the final run;
- quality-control outputs are recorded;
- the reciprocal reviewer inspects the files and evidence;
- material objections are resolved or retained explicitly as limitations;
- citations and public URLs are validated;
- the User marks the result accepted.

## S2.10 File custody and reproducibility

1. Code, exact commands or queries, primary inputs, configuration, and results are stored together or linked from one record.
2. A result stored without the means to produce or check it does not satisfy the contract.
3. Checksums are computed only after the file is complete.
4. A checksum is not embedded inside the file it claims to verify.
5. Manual transcription, environment-specific steps, and non-reproducible links are stated explicitly.
6. Parent location and structured properties are checked separately after every database create or move.
7. Agent-initiated repository actions performed through a User-authenticated integration are recorded in the log because repository metadata may not distinguish them from manual User actions.

## S2.11 Repository access and protected execution

1. Credentials remain under User or institutional control and are never pasted into prompts, notebooks, commits, or log fields.
2. Repository integrations are limited to selected repositories and given the minimum permissions required for the task.
3. Read-only access is preferred for review work.
4. Write access is used only when a named session must create or update a branch or pull request.
5. The default branch is protected. The User controls merge and release.
6. Agents do not receive direct access to private data or the final computing environment unless the User explicitly authorizes a separate institutional process.

## S2.12 Disagreement and correction

1. Participants critique the artifact, assumption, evidence, or method rather than the other participant.
2. Useful contributions may be acknowledged without treating courtesy as evidence of correctness.
3. Errors are admitted directly, their consequences are recorded, and a repair is proposed.
4. The record distinguishes resolution by new evidence, independent recalculation, a frozen artifact, User-supplied domain context, or a User decision.
5. When evidence does not determine the outcome, the User decides scope, priority, terminology, privacy, and risk tolerance.
6. The record states what actually resolved the disagreement.

## S2.13 Handoff requirement

A handoff is required after a substantial work unit, before transferring the lead role, before a high-impact execution, when a session is becoming crowded, or when the User requests a new session.

The handoff identifies:

1. the current accepted state;
2. work completed since the prior handoff;
3. current notebooks, files, branches, commits, and configurations;
4. exact execution evidence and failed runs;
5. open questions;
6. rejected or superseded work;
7. known uncertainty and limitations;
8. one explicit next action, owner, and acceptance condition.

The receiving participant compares the handoff with the Collaboration Log and repository before continuing.

## S2.14 Privacy, collaborator disclosure, and release

1. Access to a workspace is not permission to publish its contents.
2. Private scientific, technical, clinical, collaborator, and creative material remains within the project boundary.
3. Public summaries are deliberately extracted and reviewed by the User.
4. Project domains, unpublished findings, identifiable collaborators, and private record contents are omitted unless explicit permission has been obtained.
5. External collaborators are informed that the project uses User-mediated AI collaboration.
6. Publications produced under this contract cite the public methods preprint when that citation is relevant.
7. Release requires a clean build, validated citations and public links, accepted checksums, final User review, and an explicit release decision.

# S3. Example initial assignment

> Work under the project contract. Apply RULE ONE: only cite validated articles. A resolved identifier, derivative citation, or generated reference is not validation. Record the primary validation source and date, and obtain a second participant's check before merge. The User retains authority and responsibility for the scientific questions, methods, scope, privacy, final execution, acceptance, merge, and release. Use the Collaboration Log as the durable record and the repository as the versioned file store. Before starting, read the current-state record and the specific upstream records or artifacts identified for this task; do not assume that available context has already been incorporated. Agent A will implement the first pipeline version. Agent B will review the code, tests, configuration, and quality-control plan rather than merely edit the prose. Ask for clarification when material ambiguity is detected. Record every material decision, run, correction, citation validation, file location, and next action. Store code, commands, inputs, configuration, and outputs together. Verify every Notion and repository write by reading it back. After completing a review, record the result, update status and next action, clear your own review field, and set your approval only when you endorse the current version. Create a structured handoff before transferring the lead role.

# S4. Example Collaboration Log record

| Field | Example value |
| --- | --- |
| Entry | Initial pipeline implementation completed in sandbox |
| Source | Agent A; Code/Run |
| Owner | Agent A |
| Type | Implementation |
| Topic | Analysis |
| Status | Needs Review |
| Assignment to | Agent B; User |
| Needs Agent B Review | Yes |
| Needs User Review | Yes |
| Approved by Agent A | Yes |
| Approved by Agent B | No |
| Approved by User | No |
| Purpose | Produce a testable first implementation of the agreed analysis specification |
| Summary | Pipeline executes on synthetic input; final data have not been run |
| Repository | `organization/project-x` |
| Branch / PR | `agent/initial-pipeline`, PR 4 |
| Commit SHA | `0123456789abcdef...` |
| Command | `python -m project_x.run --config config/example.yaml` |
| Inputs | Synthetic fixture `tests/data/example.tsv` |
| Outputs | `artifacts/example_run/` |
| Evidence | Sandbox evidence only |
| Citations | No new citations |
| Read-back | Commit and output path fetched and verified |
| Uncertainty | Performance and identifier coverage have not been tested on final inputs |
| Next action | Agent B reviews the diff, tests, and acceptance criteria; User schedules the final run after review |

# S5. Example structured handoff

## Current accepted state

The analysis specification is accepted. The implementation at commit `0123456` is provisional and has passed synthetic tests only.

## Work completed

- Agent A implemented the pipeline and unit tests.
- Agent B identified two identifier-normalization defects.
- Agent A repaired both defects at commit `89abcde`.
- The User confirmed that all public references in the methods note appear in the citation-validation ledger.
- A second participant checked the recorded validation sources.

## Current files

- Specification: Notebook 03, accepted.
- Repository: `organization/project-x`.
- Branch: `agent/initial-pipeline`.
- Current commit: `89abcde`.
- Configuration: `config/authoritative.yaml`.
- Quality-control plan: `docs/qc-plan.md`.

## Execution evidence

Synthetic tests pass. No final run has been performed. The sandbox environment and exact command are recorded in the latest implementation record. The repository write and artifact path were read back and verified.

## Open questions

- Whether the final dataset contains unmapped identifiers.
- Whether memory use remains within the protected environment allocation.

## Superseded work

Commit `0123456` is superseded because of identifier-normalization defects.

## Known limitations

The current evidence does not establish validity on final inputs.

## Next action

The User runs commit `89abcde` with `config/authoritative.yaml` in the final computing environment. Acceptance requires completion of the run, review of the quality-control outputs, and an accepted run-result record.

# S6. Reusable compact template

| Contract element | Project-specific value |
| --- | --- |
| Project objective and scientific questions | `[DEFINE]` |
| User authority and responsibility | `[SCOPE, METHODS, PRIVACY, EXECUTION, ACCEPTANCE, RELEASE]` |
| Named agent roles | `[LEAD]`, `[REVIEWER]`, `[OPTIONAL ADDITIONAL SESSIONS]` |
| Product plans and access limits | `[SUBSCRIPTIONS, CONNECTORS, REPOSITORY PERMISSIONS]` |
| RULE ONE ledger and second check | `[LOCATION AND REVIEWER]` |
| Shared record | `[DATABASE / LOG / NOTEBOOK LOCATION]` |
| Current accepted-state page | `[LOCATION]` |
| Repository | `[REPOSITORY]` |
| Final computing environment | `[USER-CONTROLLED LOCATION]` |
| Required deliverables | `[LIST]` |
| Evidence classes | `[PROPOSAL, SANDBOX, COMMIT, FINAL RUN]` |
| Acceptance criteria | `[LIST]` |
| Review and approval fields | `[ROUTING, ENDORSEMENT, USER ACCEPTANCE]` |
| Deliberation rule | `[WHEN USED]` |
| Required log fields | `[LIST]` |
| Write read-back rule | `[HOW VERIFIED]` |
| Handoff trigger | `[WHEN]` |
| Context reorientation rule | `[CURRENT STATE AND TASK-RELEVANT UPSTREAM DEPENDENCIES]` |
| Privacy boundary | `[WHAT MUST NOT BE DISCLOSED]` |
| External-collaborator disclosure | `[WHO MUST BE INFORMED]` |
| Methods-preprint citation | `[WHEN RELEVANT]` |
| Release gate | `[BUILD, CITATIONS, LINKS, CHECKSUMS, USER APPROVAL]` |

The template should be shortened or expanded according to project risk, duration, and regulatory requirements. It does not replace institutional security, data-governance, authorship, or responsible-conduct policies.


<!-- Availability and repository provenance are stated in the supplement front matter. -->

