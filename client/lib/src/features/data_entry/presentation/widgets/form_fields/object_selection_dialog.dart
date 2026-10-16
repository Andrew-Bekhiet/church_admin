import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:material_ui/material_ui.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:rxdart/rxdart.dart';

class ObjectSelectionDialog<T extends ViewableWithID> extends StatefulWidget {
  final String fieldLabel;
  final ViewableObjectListController<T> Function(Stream<String?>)
  listController;
  final bool canCreateFromSearch;

  const ObjectSelectionDialog({
    required this.fieldLabel,
    required this.listController,
    required this.canCreateFromSearch,
    super.key,
  });

  @override
  State<ObjectSelectionDialog<T>> createState() =>
      _ObjectSelectionDialogState<T>();
}

class _ObjectSelectionDialogState<T extends ViewableWithID>
    extends State<ObjectSelectionDialog<T>> {
  final BehaviorSubject<String?> _search = BehaviorSubject.seeded(null);
  late final ViewableObjectListController<T> _controller = widget
      .listController(_search);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('اختيار ${widget.fieldLabel}'),
      content: SizedBox(
        width: MediaQuery.sizeOf(context).width * 0.9,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SearchField(searchSink: _search),
            if (widget.canCreateFromSearch)
              StreamBuilder(
                stream: Rx.combineLatest2(
                  _search.stream,
                  _controller.filteredObjectsStream,
                  (query, objects) => objects.isEmpty ? query : null,
                ),
                builder: (context, snapshot) => switch (snapshot.data) {
                  final newName? => OutlinedButton.icon(
                    icon: const Icon(Symbols.add),
                    onPressed: () =>
                        Navigator.of(context).pop(NewObjectNamed<T>(newName)),
                    label: Text('إضافة $newName'),
                  ),
                  null => const SizedBox.shrink(),
                },
              ),
            Expanded(
              child: ViewableObjectList<T>(
                objectsController: _controller,
                viewableObjectWidgetConfig: ViewableObjectWidgetConfig(
                  onTap: (object) =>
                      Navigator.of(context).pop(ObjectSelected<T>(object)),
                  forceShowSecondLine: false,
                  isDense: true,
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
