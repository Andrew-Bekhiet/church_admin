import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:rxdart/rxdart.dart';

class MultiObjectSelectionDialog<T extends Viewable> extends StatefulWidget {
  final String fieldLabel;
  final Set<T> selected;
  final ViewableObjectListController<T> Function(Stream<String?>)
  listController;
  final Future<T> Function(String)? onCreateCustom;

  const MultiObjectSelectionDialog({
    required this.fieldLabel,
    required this.selected,
    required this.listController,
    this.onCreateCustom,
    super.key,
  });

  @override
  State<MultiObjectSelectionDialog<T>> createState() =>
      _MultiObjectSelectionDialogState<T>();
}

class _MultiObjectSelectionDialogState<T extends Viewable>
    extends State<MultiObjectSelectionDialog<T>> {
  final BehaviorSubject<String?> _search = BehaviorSubject.seeded(null);
  late final ViewableObjectListController<T> _controller =
      widget.listController(_search)
        ..selectionController.selectAll(widget.selected.toList());

  @override
  Widget build(BuildContext context) {
    final createCustom = widget.onCreateCustom;
    final canCreateFromSearch =
        createCustom != null &&
        FeatureFlagsRepository.I.canAddCustomObjects<T>();

    return AlertDialog(
      title: Text('اختيار ${widget.fieldLabel}'),
      actions: [
        OutlinedButton(
          onPressed: () => Navigator.of(
            context,
          ).pop(_controller.selectionController.currentValue ?? <T>{}),
          child: const Text('تم'),
        ),
      ],
      content: SizedBox(
        width: MediaQuery.sizeOf(context).width * 0.9,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SearchField(searchSink: _search),
            if (canCreateFromSearch)
              StreamBuilder(
                stream: Rx.combineLatest2(
                  _search.stream,
                  _controller.filteredObjectsStream,
                  (query, objects) => objects.isEmpty ? query : null,
                ),
                builder: (context, snapshot) => switch (snapshot.data) {
                  final newName? => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: OutlinedButton.icon(
                      icon: const Icon(Symbols.add),
                      onPressed: () async {
                        final created = await createCustom(newName);
                        _controller.selectionController.select(created);
                        _search.add(null);
                      },
                      label: Text('إضافة $newName'),
                    ),
                  ),
                  null => const SizedBox.shrink(),
                },
              ),
            Expanded(
              child: ViewableObjectList<T>(
                objectsController: _controller,
                viewableObjectWidgetConfig: ViewableObjectWidgetConfig(
                  forceShowSecondLine: false,
                  isDense: true,
                  onLongPress: (_) {
                    return;
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    unawaited(_search.close());
    unawaited(_controller.dispose());
    super.dispose();
  }
}
