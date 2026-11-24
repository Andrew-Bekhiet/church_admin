# Issue tracker: Linear

Issues and specs for this repo live in Linear, team **ENG** (identifiers like `ENG-320`). GitHub Issues on this repo are not used. Reach Linear through the `linear-server` MCP tools.

## Conventions

- **Create an issue**: `save_issue` with `team: "ENG"`, a title and a markdown description. Search `list_issues` with a `query` first so you don't open a duplicate.
- **Read an issue**: `get_issue` for the body, labels and status, then `list_comments` for the discussion (`get_issue` leaves comments out).
- **List issues**: `list_issues` filtered by `team: "ENG"` and `state`, `label`, `assignee` or `query`. Follow `cursor` while `hasNextPage` is true.
- **Comment on an issue**: `save_comment` with the issue identifier.
- **Apply or remove labels**: `save_issue` with `addLabels` / `removeLabels`. Never pass `labels`, which replaces the whole set.
- **Change status**: `save_issue` with `state` set to one of the ENG statuses: Backlog, Todo, In Progress, In Review, Done, Canceled, Duplicate.
- **Close**: set `state` to Done, or to Canceled for won't-do, and leave a `save_comment` saying why.
- **Design docs and specs**: attach them to the issue as a Linear document with `save_document`, not as files under `docs/`.

Write descriptions for people. Put implementation plans, file lists and repro logs in a collapsible `+++ Agent notes` section at the end.

Branch names come from the issue's suggested branch name (`eng-<n>-<slug>`). PRs name the issue identifier.
