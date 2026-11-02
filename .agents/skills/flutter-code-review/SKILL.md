---
name: flutter-code-review
description: Comprehensive checklist and pattern auditor for Flutter and Dart code reviews in church_admin.
---

# Flutter & Dart Code Review Runbook

Derived from [`client/AGENTS.md`](file:///c:/Users/Keero/Documents/code/church_admin/client/AGENTS.md), [`client/REVIEW.md`](file:///c:/Users/Keero/Documents/code/church_admin/client/REVIEW.md), and lessons from PR #387.

## 1. Widget & UI Layer
- [ ] **No private `_Foo` widget classes**: Every widget class is public (test files included).
- [ ] **Never return widgets from methods**: No `Widget _buildFoo()`. Extract a widget class or inline if small (<100 lines).
- [ ] **Widget keys live with widget**: Define test keys in same file as widget (`<Widget>Keys` or `keyFor(...)`).
- [ ] **Presentation decoupling**: Presentation talks only to blocs/cubits and `application/` form controllers, never to repositories or DAOs.
- [ ] **Stateless children**: Child widgets take primitive values and callbacks, never streams or controllers. Parent owns `BlocBuilder`/`StreamBuilder`.
- [ ] **Spacing & Layout**: Use `Row.spacing` / `Column.spacing` (no `SizedBox` gaps). `EdgeInsetsDirectional.only(start:, end:)`, no hardcoded `fromSTEB`. `ShapeDecoration(shape: StadiumBorder())`, no `BorderRadius.circular(999)`.
- [ ] **Import source**: Import Material/Cupertino from `package:material_ui`, never `package:flutter/material.dart`.
- [ ] **Dialog return values**: Dialogs return domain enum value, not `bool` or `String`.

## 2. Structure & File Ceilings
- [ ] **File line limits**: Under 350 lines; 420 is absolute maximum. Split before crossing.
- [ ] **No top-level variables or functions**: Use static members or private instance methods.
- [ ] **Helper placement**: Single consumer -> private instance method. Multiple -> feature `utils/`. Type helper -> Dart extension on that type (`extension on Map`). Result/model -> `domain/models/`, never `presentation/widgets/`.
- [ ] **`dispose()` placement & signature**: `dispose()` is last member of class and returns `void` (synchronous, never async). Close sinks with `unawaited(x.close())`.

## 3. Idioms & Architecture
- [ ] **Pattern matching over conditionals**: `switch` on enums/sealed classes for exhaustiveness; `if (x case final y?)`; object pattern shorthand `Foo(:final bar?)`.
- [ ] **`package:collection` usage**: `maxBy`, `firstWhereOrNull`, `EqualitySet`, `mapIndexed` over manual loops, index cascades, or partition concatenations.
- [ ] **URL construction**: `Uri(...)` with `queryParameters`, never string concatenation.
- [ ] **Tolerant enum decoding**: `values.firstWhereOrNull((v) => v.name == raw)`, never `.byName`.
- [ ] **No `!`**: No non-null assertions (`avoid_non_null_assertion`). Use pattern matching or `?.`.
- [ ] **Constructor field init**: `required this._form`, `required super.currentUserId`. SDK 3.13 passes private named parameter as `form:`.
- [ ] **No comments**: Aim for zero comments. Link upstream issue for bug workaround.

## 4. Tests
- [ ] **Assert observable state, not interactions**: Check end state, never method call counts. Outgoing edge commands (URL launch / server write) verify parsed Uri / queryParams only. No `.called(n)` unless frequency is the behavior.
- [ ] **No clock/timezone dependence**: Fixed dates, UTC wire format. Never `DateTime.now()`.
- [ ] **Blocs & Cubits**: Use `blocTest`, never manual cubit lifecycle inside plain `test`.
- [ ] **Mocking**: Use `mocktail` with `registerFallbackValue`.
- [ ] **Finders**: Find widgets by key (`<Widget>Keys`), never by text, tooltip, or icon.
- [ ] **Verify red before green**: Break line under test, verify failure, restore. Never use `git stash`.
- [ ] **Full bundle run**: If touched `core/` or shared widget (`ViewableObject*`), run full test bundle.

## 5. Pre-Commit Verification Commands
From `client/`:
- Format: `fvm dart format lib test patrol_test`
- Analyze: `fvm dart analyze --fatal-infos` (no path argument!)
- Test: `scripts/generate_test_bundle.sh` then `fvm flutter test --dart-define CI=true test/test_bundle.dart`
