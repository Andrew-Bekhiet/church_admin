import 'dart:convert';

import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:rxdart/rxdart.dart';

class AdvancedSearchScreen extends StatefulWidget {
  final AdvancedQuery? initialQuery;
  final bool autoExecuteInitialQuery;

  const AdvancedSearchScreen({
    super.key,
    this.initialQuery,
    this.autoExecuteInitialQuery = false,
  });

  @override
  State<AdvancedSearchScreen> createState() => _AdvancedSearchScreenState();
}

class _AdvancedSearchScreenState extends State<AdvancedSearchScreen> {
  AdvancedSearchController controller = AdvancedSearchController();

  QueryableType get selectedQueryableType => controller.selectedQueryableType;

  @override
  void initState() {
    super.initState();

    if (widget.initialQuery != null) {
      controller.changeQuery(widget.initialQuery!);
      if (widget.autoExecuteInitialQuery) {
        WidgetsBinding.instance.addPostFrameCallback((_) => _execute());
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('البحث المتقدم')),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  const Text('بحث في '),
                  const SizedBox(width: 10),
                  Expanded(
                    child: DropdownButtonFormField<QueryableType>(
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      isExpanded: true,
                      initialValue: selectedQueryableType,
                      items: AdvancedQueriesMetadata()
                          .allQueryables
                          .where((t) => t.dao != null)
                          .map(
                            (t) => DropdownMenuItem(
                              alignment: Alignment.center,
                              value: t,
                              child: Text(t.label),
                            ),
                          )
                          .toList(),
                      onChanged: (v) => _onTypeChanged(v!),
                    ),
                  ),
                ],
              ),
              const Divider(),
              StreamBuilder<AdvancedQuery>(
                initialData: controller.query,
                stream: controller.queryStream,
                builder: (context, snapshot) {
                  final query = snapshot.requireData;

                  final canAddManyConditions =
                      query.logicalOperator != LogicalOperator.not;

                  return FiltersBuilder(
                    canAddManyFilters: canAddManyConditions,
                    queryableType: selectedQueryableType,
                    filters: query.filters.toList(),
                    onChanged: controller.changeFilters,
                  );
                },
              ),
              const Divider(),
              StreamBuilder<(QueryableType, List<OrderBy>)>(
                stream: Rx.combineLatest2(
                  controller.selectedTypeStream,
                  controller.orderByStream,
                  (type, orderBy) => (type, orderBy),
                ),
                initialData: (
                  controller.selectedQueryableType,
                  controller.orderBy
                ),
                builder: (context, orderByData) {
                  final (selectedQueryableType, orderByStatments) =
                      orderByData.data!;

                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisSize: MainAxisSize.min,
                    children: orderByStatments
                        .mapIndexed(
                          (i, orderBy) => _OrderByWidget(
                            selectedQueryableType: selectedQueryableType,
                            orderBy: orderBy,
                            onChanged: (newValue) =>
                                controller.replaceOrderBy(i, newValue),
                            onRemoved: () => controller.removeOrderByAt(i),
                          ),
                        )
                        .toList(),
                  );
                },
              ),
              ElevatedButton.icon(
                onPressed: _onAddOrderByStatement,
                icon: const Icon(Symbols.sort),
                label: const Text('إضافة ترتيب'),
              ),
              const Divider(),
              _QueryLimitWidget(
                limitStream: controller.limitStream,
                onChangeLimit: _onChangeLimit,
              ),
              const Divider(),
              FilledButton.icon(
                onPressed: _execute,
                label: const Text('ابحث'),
                icon: const Icon(Symbols.search),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onTypeChanged(QueryableType newType) {
    controller.changeSelectedQueryableType(newType);
  }

  void _onAddOrderByStatement() => controller.addOrderBy(
        OrderBy(
          field: selectedQueryableType.fieldsMetadata
              .firstWhere((p) => !p.name.endsWith('id') && p.isOrderable),
        ),
      );

  void _onChangeLimit(int? newLimit) => controller.changeLimit(newLimit);

  Future<void> _execute() async {
    final searchQuery = BehaviorSubject<String?>.seeded(null);

    final paginatableStream = DatabaseService.I.advancedQueryParser
        .createPaginatableStream(controller.query, searchQuery);

    final viewableObjectListController = ViewableObjectListController(
      objectsPaginatableStream: paginatableStream,
      filterStream: paginatableStream.onLoadingChanged.switchMap(
        (isLoading) => isLoading ? searchQuery : Stream.value(null),
      ),
    );

    await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return Scaffold(
            appBar: AppBar(
              title: TitleSearchField(
                searchStream: searchQuery,
                title: const Text('النتائج'),
              ),
              actions: [
                IconButton(
                  icon: const Icon(Symbols.share),
                  onPressed: () {
                    globalProviderContainer
                        .read(shareServiceProvider)
                        .shareText(
                          base64Encode(
                            utf8.encode(
                              jsonEncode(controller.query.toJson()),
                            ),
                          ),
                        );
                  },
                ),
              ],
            ),
            body: ViewableObjectList(
              objectsController: viewableObjectListController,
            ),
            bottomNavigationBar: StreamBuilder<int?>(
              stream: viewableObjectListController.totalCountStream,
              builder: (context, snapshot) {
                final totalCount = snapshot.data;

                if (totalCount == null) return const SizedBox.shrink();

                return BottomAppBar(
                  child: Text(
                    '$totalCount من ${controller.query.queryableType.label}',
                    style: Theme.of(context).textTheme.titleLarge,
                    textAlign: TextAlign.center,
                  ),
                );
              },
            ),
          );
        },
      ),
    );

    await viewableObjectListController.dispose();
    await searchQuery.close();
  }
}

class _OrderByWidget extends StatelessWidget {
  const _OrderByWidget({
    required this.selectedQueryableType,
    required this.orderBy,
    required this.onChanged,
    required this.onRemoved,
  });

  final QueryableType selectedQueryableType;
  final OrderBy orderBy;
  final void Function(OrderBy) onChanged;
  final void Function() onRemoved;

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);

    final orderableFields = selectedQueryableType.fieldsMetadata
        .where((p) => p.isOrderable && !p.isCodeOnly)
        .toList();

    final FieldMetadata field = orderBy.field;
    final FieldMetadata parentField;
    final FieldMetadata? childField;

    if (field is RedirectingFieldMetadata &&
        field.isExpandable &&
        orderableFields.contains(field.parentField)) {
      parentField = field.parentField;
      childField = field.targetField;
    } else {
      parentField = field;
      childField = null;
    }

    return Padding(
      key: ValueKey(orderBy),
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Expanded(
                child: DropdownButtonFormField<FieldMetadata>(
                  decoration: const InputDecoration(
                    labelText: 'ترتيب حسب',
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  ),
                  isExpanded: true,
                  initialValue: parentField,
                  items: orderableFields
                      .map(
                        (p) => DropdownMenuItem(
                          alignment: Alignment.center,
                          value: p,
                          child: Text(p.label),
                        ),
                      )
                      .toList(),
                  onChanged: (field) {
                    final FieldMetadata newField;
                    if (field!.operators.isEmpty ||
                        !(field.fieldQueryableType?.isSelectableAsReference ??
                            true)) {
                      newField = field.redirectTo(
                        field.fieldQueryableType!.fieldsMetadata.firstWhere(
                            (f) =>
                                !f.isCodeOnly &&
                                f.isOrderable &&
                                (f.operators.isNotEmpty ||
                                    (f.fieldQueryableType
                                            ?.isSelectableAsReference ??
                                        false))),
                      );
                    } else {
                      newField = field;
                    }

                    onChanged(
                      OrderBy(
                        field: newField,
                        value: orderBy.value,
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(width: 8),
              if (childField == null)
                Expanded(
                  child: DropdownButtonFormField<OrderByValue>(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20),
                    ),
                    isExpanded: true,
                    initialValue: orderBy.value,
                    alignment: Alignment.center,
                    items: const [
                      DropdownMenuItem(
                        alignment: Alignment.center,
                        value: OrderByValue.asc,
                        child: Text('تصاعدي'),
                      ),
                      DropdownMenuItem(
                        alignment: Alignment.center,
                        value: OrderByValue.desc,
                        child: Text('تنازلي'),
                      ),
                    ],
                    onChanged: (value) =>
                        onChanged(orderBy.copyWith(value: value!)),
                  ),
                ),
              IconButton(
                onPressed: onRemoved,
                icon: const Icon(Symbols.clear),
              ),
            ],
          ),
          if (childField != null)
            Container(
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                border: Border(
                  right: BorderSide(
                    color: themeData
                            .inputDecorationTheme.border?.borderSide.color ??
                        themeData.colorScheme.primary,
                    width: 1.2,
                  ),
                ),
              ),
              child: _OrderByWidget(
                selectedQueryableType: parentField.fieldQueryableType!,
                orderBy: OrderBy(field: childField, value: orderBy.value),
                onChanged: (newOrderBy) => onChanged(
                  OrderBy(
                    field: parentField.redirectTo(newOrderBy.field),
                    value: newOrderBy.value,
                  ),
                ),
                onRemoved: onRemoved,
              ),
            ),
        ],
      ),
    );
  }
}

class _QueryLimitWidget extends StatelessWidget {
  const _QueryLimitWidget({
    required this.onChangeLimit,
    required this.limitStream,
  });

  final void Function(int?) onChangeLimit;
  final Stream<int?> limitStream;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<int?>(
      stream: limitStream,
      builder: (context, limitData) {
        if (limitData.hasData) {
          return TextFormField(
            initialValue: limitData.data?.toString(),
            decoration: InputDecoration(
              labelText: 'الحد الأقصى',
              suffixIcon: IconButton(
                onPressed: () => onChangeLimit(null),
                icon: const Icon(Symbols.clear),
              ),
            ),
            keyboardType: TextInputType.number,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            onChanged: (v) => onChangeLimit(int.tryParse(v)),
          );
        }

        return ElevatedButton.icon(
          onPressed: () => onChangeLimit(100),
          icon: const Icon(Symbols.maximize),
          label: const Text('إضافة حد أقصى'),
        );
      },
    );
  }
}
