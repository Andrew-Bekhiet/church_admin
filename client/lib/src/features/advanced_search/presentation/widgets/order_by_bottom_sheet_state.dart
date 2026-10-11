import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

class OrderByBottomSheetState extends State<OrderByBottomSheet> {
  late final StreamSubscription<void> _configSubscription;
  late List<OrderBy> _orderBy;

  @override
  void initState() {
    super.initState();
    _orderBy = OrderBy.availableOrderBys(widget.initialOrderBy);
    _configSubscription = FeatureFlagsRepository.I.onConfigChanged.listen(
      (_) => _changeOrderBy(_orderBy),
    );
    _notifyIfOrdersRemoved();
  }

  @override
  void didUpdateWidget(OrderByBottomSheet oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (const ListEquality<OrderBy>().equals(
      oldWidget.initialOrderBy,
      widget.initialOrderBy,
    )) {
      return;
    }
    _orderBy = OrderBy.availableOrderBys(widget.initialOrderBy);
    _notifyIfOrdersRemoved();
  }

  @override
  Widget build(BuildContext context) {
    final orderByValue = _orderBy;

    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              'ترتيب ${widget.queryableType.label}',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              spacing: 10,
              children: [
                ...orderByValue.mapIndexed(
                  (i, orderBy) => OrderByWidget(
                    selectedQueryableType: widget.queryableType,
                    orderBy: orderBy,
                    onChanged: (newValue) => _changeOrderBy(
                      orderByValue
                          .mapIndexed(
                            (j, o) => j == i ? newValue : o,
                          )
                          .toList(),
                    ),
                    onRemoved: i == 0
                        ? null
                        : () => _changeOrderBy(
                            orderByValue
                                .whereIndexed((j, _) => j != i)
                                .toList(),
                          ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 24),
                  child: FilledButton.icon(
                    onPressed: widget.queryableType.orderableFields.isEmpty
                        ? null
                        : () {
                            _changeOrderBy(
                              [
                                ...orderByValue,
                                OrderBy(
                                  field: widget.queryableType.orderableFields
                                      .firstWhere(
                                        (f) => !f.name.endsWith('id'),
                                      ),
                                ),
                              ],
                            );
                          },
                    icon: const Icon(Symbols.add),
                    label: const Text('إضافة ترتيب'),
                  ),
                ),
              ],
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

  void _notifyIfOrdersRemoved() {
    if (_orderBy.length == widget.initialOrderBy.length) {
      return;
    }
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) {
        return;
      }
      widget.onChanged(_orderBy);
    });
  }

  void _changeOrderBy(List<OrderBy> orderBy) {
    final availableOrderBy = OrderBy.availableOrderBys(orderBy);
    setState(() => _orderBy = availableOrderBy);
    widget.onChanged(availableOrderBy);
  }
}
