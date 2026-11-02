---
name: flutter-code-review
description: Comprehensive checklist and pattern auditor for Flutter and Dart code reviews.
---

# Flutter & Dart Code Review Runbook

Use this checklist during self-review or peer review of Flutter implementations.

## 1. Widget & UI Layer
- [ ] **RTL Consistency**: Ensure RTL layout is preserved (avoid hardcoded `left`/`right` in favor of `start`/`end` where directional).
- [ ] **Const Constructors**: Use `const` constructors on immutable widget subtrees to minimize unnecessary rebuilds.
- [ ] **Responsive Constraints**: Ensure layout adapts properly within bounds (`LayoutBuilder` / flexible containers); prevent `RenderFlex` overflows.

## 2. State & Lifecycle Safety
- [ ] **Disposed Context & Controllers**: Ensure no calls to `setState()`, animation controllers, or TextEditingControllers occur after widget disposal.
- [ ] **Async Gap Guards**: Use `if (!mounted) return;` immediately following any `await` before accessing `context` or setting state.
- [ ] **Subscription Cleanup**: Cancel all `StreamSubscription`s and dispose listeners in `dispose()`.

## 3. Data & Architecture
- [ ] **No Direct GraphQL**: All calls routed via database service wrappers using generated operations.
- [ ] **Pagination & Streams**: Collections stream using limit overrides rather than draining sequential pages.

