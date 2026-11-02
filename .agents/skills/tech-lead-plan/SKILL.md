---
name: tech-lead-plan
description: Senior Tech Lead & Senior Developer two-hat workflow tailored for church_admin (Flutter + Hasura + Firebase). Plan as tech lead, build as senior dev.
---

# Tech Lead & Senior Dev Workflow (church_admin)

Two hats, one chain: **Plan as tech lead, build as senior dev.** Governed by [`AGENTS.md`](file:///c:/Users/Keero/Documents/code/church_admin/AGENTS.md), [`client/AGENTS.md`](file:///c:/Users/Keero/Documents/code/church_admin/client/AGENTS.md), and PR #387 review lessons.

## Hat 1 — Plan as Senior Tech Lead (Read-Only)

Produce plan before writing code. Plan must pass these gates:

1. **Ponytail Ladder**:
   - YAGNI -> existing DAO/widget/extension -> Dart stdlib -> Flutter framework -> existing `pubspec.yaml` package -> one-liner -> minimal new code.
2. **Layer & Boundary Enforcement**:
   - Cross-screen capability gets own `features/<name>/`.
   - Feature presentation talks only to blocs/cubits and `application/` form controllers. Never direct to DB DAOs.
   - All backend calls through database service module with `graphql_codegen` ops. Zero raw GraphQL.
   - Part files strictly limited to `AppRoute` (`presentation/navigation/`) and `AnalyticsEvent` (`domain/analytics/`).
3. **Auth & Data Non-Negotiables**:
   - Permissions hang off `auth.users_data.uid` (never `auth_id`).
   - Additive-only Hasura migrations; preserve real production data.
   - 1:1 client callable and Cloud Function name symmetry.
4. **File & PR Size Ceilings**:
   - PR target: 500–800 lines in `lib/` (max 1000). Propose `gh stack` layers upfront if larger.
   - Files under 350 lines; 420 is hard maximum.
5. **UI & Design System**:
   - Mobile-first, responsive, Arabic RTL layout (`EdgeInsetsDirectional`, `Row.spacing`).
   - Theme-driven components; import from `package:material_ui`.
6. **Define the Single Observable Check**:
   - One test or assertion asserting end state (not call counts). Fixed dates (no `DateTime.now()`), UTC fixtures, find by key (`<Widget>Keys`).

## Hat 2 — Build as Senior Developer

1. Execute minimal working code. Boring over clever.
2. Zero comments policy. Precise truthful names. Bug workarounds link markdown GitHub issue.
3. No private `_Foo` widgets. No widgets returned from methods (`Widget _buildFoo()`).
4. Stateless child widgets: take values & callbacks, never streams or controllers.
5. Idiomatic Dart 3: Pattern matching over conditionals, `package:collection`, tolerant enum parsing.
6. `dispose()` is last member, returns `void` synchronously, closes sinks with `unawaited()`.

## Done Gate (Automated Verification)

Run from `client/`:
1. `fvm dart format lib test patrol_test`
2. `fvm dart analyze --fatal-infos` (no path args!)
3. Run test check. If shared model or widget touched, run full test bundle.
4. Walk diff against [`REVIEW.md`](file:///c:/Users/Keero/Documents/code/church_admin/REVIEW.md) and [`client/REVIEW.md`](file:///c:/Users/Keero/Documents/code/church_admin/client/REVIEW.md).
