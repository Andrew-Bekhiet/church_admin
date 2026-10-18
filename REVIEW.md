# Review guide

How to review a change here. Automated reviewers load it through `knowledge_base.code_guidelines` in `.coderabbit.yaml`, together with the `AGENTS.md` files. `AGENTS.md` holds the conventions. This file says what to look for and how to report it. `client/REVIEW.md`, `server/hasura/REVIEW.md`, and `server/firebase/functions/REVIEW.md` add rules for those areas.

## What failure looks like here

church_admin is a mobile-only Arabic RTL app with about 30 real users. Hasura migrations and Cloud Functions deploy on merge, straight onto production data. Rank these failures above everything else:

- A user can see or change data their permissions do not cover, or loses access they should keep.
- An account identity is taken over, split in two, or lost: through sign-up, sign-in, an invite claim, account deletion, or someone registering the same email again.
- A migration rewrites or drops real rows, or holds a lock that blocks a busy table.
- An async path writes after dispose, lets an earlier in-flight result overwrite a later choice, or drops an error nobody handles.
- A save reports success while part of the write was lost.
- A test passes whether or not the behaviour holds.
- Client and server ship out of step: a renamed callable, schema drift, or a generated file left stale.

## Severity

- **Critical / Major**: one of the failures above, or a crash or compile error on this PR's head, given the scope the PR declares.
- **Minor**: a correctness edge case with a concrete trigger.
- **Trivial**: naming, structure, style. A broken convention is Trivial unless it causes one of the failures above.
- **Pre-existing**: the problem is already on the base branch, or the PR moves the code without changing it. Start the comment with "Pre-existing:", tag it Trivial, and do not ask for a fix in this PR.

## Evidence

Every finding names the file and line, the input or sequence of events that triggers it, and what the user or the data ends up with. If you cannot build that trigger, do not post the finding. Read the function body rather than guessing from its name. Before you call something reachable, check its callers. If no production caller reaches it, tag it Trivial or drop it.

## Intent and scope

Read the diff against the PR description.

- Flag any claim in the description that the diff does not deliver.
- Flag changes outside the stated purpose: unrelated refactors, formatter churn in code the PR does not otherwise touch, or a guide or config file landing alongside an unrelated feature.
- Flag leftovers: commented-out code, debug `print`s, stray files (`.bak` copies, submodules, one-off scripts), and dependencies nothing imports.
- Flag pre-release versions, dependencies pinned to a git branch, and floating image tags. All of these can change without a diff.

## Do not flag

- **Anything CI enforces.** That covers `dart analyze --fatal-infos` with solid_lints (`client/analysis_options.yaml`), `dart format`, sqlfluff (`sql-lint.yml`), and the generated-code and schema-drift checks (`generated-code.yml`). If the analyzer accepts something, its config chose to.
- **Generated files** (`*.g.dart`, `*.graphql.dart`, `__generated__/`, `schema.graphql`). Fix the generator or the source, not the output.
- **Missing doc comments, or a low docstring count.** The repo writes no comments by design (`AGENTS.md`, under Comments).
- **Browser history, web reload, or restoring route extras across app versions.** The app is mobile-only, and route extras live only in memory.

## Stacks

Many PRs are one layer of a `gh stack`, and their base branch is the layer below. Read the PR description first. If it says this layer holds only hand-written code, or that CI fails until a later layer lands, review the layer against that stated scope. When a later layer already fixes something, note that instead of opening a thread.

## Nits and classes of bugs

Post at most three Trivial findings per review. When one mistake repeats, post it once and list every location, so the author fixes the whole class of bug and not one line. For example, one `print` pattern once drew fourteen separate threads (#29).

## Re-reviews

- After the first review, review only the commits added since the previous one.
- Do not repeat a finding you already posted, or one the author already answered.
- When the author declines with a reason, accept it unless you have new evidence: a concrete trigger their reason does not cover.
- From the third review round onwards, open no new Minor or Trivial threads. If Major findings keep coming, say once that the approach may need rethinking.

## Docs that go stale

Flag a change that leaves a line in an `AGENTS.md`, a `REVIEW.md`, `docs/technical-decisions/`, or `.coderabbit.yaml` out of date.

## Summary

Open the summary with the number of actionable findings, broken down by severity. If there is nothing to fix, say so in one line.
