import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';

class ListArrangementSheet extends StatefulWidget {
  final QueryableType queryableType;
  final ListArrangement initialArrangement;

  static Future<ListArrangement?> show(
    BuildContext context, {
    required QueryableType queryableType,
    required ListArrangement initialArrangement,
  }) => showModalBottomSheet<ListArrangement>(
    context: context,
    isScrollControlled: true,
    useSafeArea: true,
    builder: (context) => ListArrangementSheet(
      queryableType: queryableType,
      initialArrangement: initialArrangement,
    ),
  );

  const ListArrangementSheet({
    required this.queryableType,
    required this.initialArrangement,
    super.key,
  });

  @override
  State<ListArrangementSheet> createState() => _ListArrangementSheetState();
}

class _ListArrangementSheetState extends State<ListArrangementSheet> {
  late final StreamSubscription<void> _configSubscription;
  late ListArrangement _draft;

  @override
  void initState() {
    super.initState();
    _draft = widget.initialArrangement.withEnabledFields();
    _configSubscription = FeatureFlagsRepository.I.onConfigChanged.listen(
      (_) => setState(() => _draft = _draft.withEnabledFields()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: MediaQuery.viewInsetsOf(context).bottom),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              'ترتيب وعرض ${widget.queryableType.label}',
              textAlign: TextAlign.center,
              style: TextTheme.of(context).titleLarge,
            ),
          ),
          Flexible(
            child: SingleChildScrollView(
              padding: const EdgeInsetsDirectional.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ArrangementSortSection(
                    queryableType: widget.queryableType,
                    arrangement: _draft,
                    onChanged: (arrangement) =>
                        setState(() => _draft = arrangement),
                  ),
                  const Divider(),
                  ArrangementSecondLineSection(
                    queryableType: widget.queryableType,
                    arrangement: _draft,
                    onChanged: (arrangement) =>
                        setState(() => _draft = arrangement),
                  ),
                ],
              ),
            ),
          ),
          const Divider(),
          SafeArea(
            top: false,
            child: Padding(
              padding: const EdgeInsetsDirectional.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                spacing: 8,
                children: [
                  TextButton(
                    key: ListArrangementSheetKeys.cancel,
                    onPressed: () => Navigator.of(context).pop(),
                    child: const Text('إلغاء'),
                  ),
                  FilledButton(
                    key: ListArrangementSheetKeys.save,
                    onPressed: () => Navigator.of(context).pop(_draft),
                    child: const Text('حفظ'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    unawaited(_configSubscription.cancel());
    super.dispose();
  }
}

abstract final class ListArrangementSheetKeys {
  static const save = Key('ListArrangementSheet.save');
  static const cancel = Key('ListArrangementSheet.cancel');
}
