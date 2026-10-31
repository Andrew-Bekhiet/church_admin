import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:material_ui/material_ui.dart';

typedef ActiveListSelection = ({
  ListSelectionCubit selection,
  ViewableObjectListController list,
});

class ListSelectionHost extends StatefulWidget {
  final Widget child;

  const ListSelectionHost({required this.child, super.key});

  static ListSelectionHostState? maybeOf(BuildContext context) =>
      context.getInheritedWidgetOfExactType<ListSelectionHostScope>()?.host;

  static ActiveListSelection? maybeActiveOf(BuildContext context) => context
      .dependOnInheritedWidgetOfExactType<ListSelectionHostScope>()
      ?.active;

  @override
  State<ListSelectionHost> createState() => ListSelectionHostState();
}

class ListSelectionHostState extends State<ListSelectionHost> {
  ActiveListSelection? _active;
  StreamSubscription<ListSelectionState>? _activeSubscription;

  void register(
    ListSelectionCubit selection, {
    required ViewableObjectListController list,
  }) {
    final previous = _active;
    if (previous?.selection == selection) return;

    unawaited(_activeSubscription?.cancel());
    _activeSubscription = selection.stream.listen(
      (state) {
        if (state is ListSelectionInactive) _clear(selection);
      },
      onDone: () => _clear(selection),
    );
    setState(() => _active = (selection: selection, list: list));

    previous?.selection.endUnlessAlwaysActive();
  }

  void _clear(ListSelectionCubit selection) {
    if (!mounted || _active?.selection != selection) return;

    unawaited(_activeSubscription?.cancel());
    _activeSubscription = null;
    setState(() => _active = null);
  }

  void _endActiveSelectionUnlessPopped(bool didPop, Object? _) {
    if (!didPop) _active?.selection.endUnlessAlwaysActive();
  }

  @override
  Widget build(BuildContext context) => PopScope(
    canPop: _active == null,
    onPopInvokedWithResult: _endActiveSelectionUnlessPopped,
    child: ListSelectionHostScope(
      host: this,
      active: _active,
      child: widget.child,
    ),
  );

  @override
  void dispose() {
    unawaited(_activeSubscription?.cancel());
    super.dispose();
  }
}

class ListSelectionHostScope extends InheritedWidget {
  final ListSelectionHostState host;
  final ActiveListSelection? active;

  const ListSelectionHostScope({
    required this.host,
    required this.active,
    required super.child,
  });

  @override
  bool updateShouldNotify(ListSelectionHostScope oldWidget) =>
      active != oldWidget.active;
}
