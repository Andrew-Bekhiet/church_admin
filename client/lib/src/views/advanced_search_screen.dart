import 'dart:convert';

import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:rxdart/rxdart.dart';

class AdvancedSearchScreen extends StatefulWidget {
  static final route = GoRoute(
    path: 'advanced_search',
    routes: [
      ViewPerson.route,
      ViewArea.route,
      ViewService.route,
      ViewUser.route,
      ViewGroup.route,
      ViewClass.route,
      ViewFamily.route,
      ViewStreet.route,
      ViewStore.route,
    ],
    builder: (context, state) => AdvancedSearchScreen(
      key: PageStorageKey(state.uri),
      initialQuery: state.extra as AdvancedQuery?,
      autoExecuteInitialQuery: state.extra is AdvancedQuery,
    ),
  );

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
        padding: const EdgeInsets.all(8.0),
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
                      value: selectedQueryableType,
                      items: AdvancedQueriesMetadata.queryableTypes.values
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
                stream: controller.queryStream,
                builder: (context, snapshot) => ConditionsBuilder(
                  canAddManyConditions: (snapshot.data?.logicalOperator ??
                          controller.logicalOperator) !=
                      LogicalOperator.not,
                  queryableType: selectedQueryableType,
                  conditions:
                      snapshot.data?.conditions ?? controller.conditions,
                  onChanged: controller.changeConditions,
                ),
              ),
              const Divider(),
              StreamBuilder<QueryableType>(
                stream: controller.selectedTypeStream,
                builder: (context, snapshot) => _OrderByWidget(
                  selectedQueryableType: snapshot.data ?? selectedQueryableType,
                  orderByStream: controller.orderByStream,
                  replaceOrderBy: controller.replaceOrderBy,
                  removeOrderBy: controller.removeOrderByAt,
                ),
              ),
              ElevatedButton.icon(
                onPressed: _onAddOrderByStatement,
                icon: const Icon(Icons.sort),
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
                icon: const Icon(Icons.search),
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
          fieldName: selectedQueryableType.fieldsMetadata.keys
              .firstWhere((p) => p != 'id'),
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
                  icon: const Icon(Icons.share),
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
    required this.orderByStream,
    required this.replaceOrderBy,
    required this.removeOrderBy,
  });

  final QueryableType selectedQueryableType;
  final Stream<List<OrderBy>> orderByStream;
  final void Function(int, OrderBy) replaceOrderBy;
  final void Function(int) removeOrderBy;

  Map<String, FieldMetadata<dynamic>> get fieldsMetadata =>
      selectedQueryableType.fieldsMetadata;

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);

    return StreamBuilder<List<OrderBy>>(
      stream: orderByStream,
      builder: (context, orderByData) {
        final orderByStatments = orderByData.data ?? [];

        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: orderByStatments
              .mapIndexed(
                (i, orderBy) => Padding(
                  key: ValueKey(orderBy),
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: DropdownButtonFormField<String>(
                              decoration: const InputDecoration(
                                labelText: 'ترتيب حسب',
                              ),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(20),
                              ),
                              isExpanded: true,
                              value: orderBy.fieldName,
                              items: fieldsMetadata.values
                                  .where((p) => p.isOrderable)
                                  .map(
                                    (p) => DropdownMenuItem(
                                      alignment: Alignment.center,
                                      value: p.name,
                                      child: Text(p.label),
                                    ),
                                  )
                                  .toList(),
                              onChanged: (value) {
                                final fieldMetadata = fieldsMetadata[value!]!;

                                replaceOrderBy(
                                  i,
                                  orderBy.copyWith(
                                    fieldName: value,
                                    value: fieldMetadata.isNestabale
                                        ? _createNewNestedOrderBy(fieldMetadata)
                                        : orderBy.value,
                                  ),
                                );
                              },
                            ),
                          ),
                          const SizedBox(width: 8),
                          if (orderBy.value is Enum_OrderBy)
                            Expanded(
                              child: DropdownButtonFormField<Enum_OrderBy>(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(20),
                                ),
                                isExpanded: true,
                                value: orderBy.value as Enum_OrderBy,
                                alignment: Alignment.center,
                                items: const [
                                  DropdownMenuItem(
                                    alignment: Alignment.center,
                                    value: Enum_OrderBy.ASC,
                                    child: Text('تصاعدي'),
                                  ),
                                  DropdownMenuItem(
                                    alignment: Alignment.center,
                                    value: Enum_OrderBy.DESC,
                                    child: Text('تنازلي'),
                                  ),
                                ],
                                onChanged: (value) {
                                  replaceOrderBy(
                                    i,
                                    orderBy.copyWith(value: value!),
                                  );
                                },
                              ),
                            ),
                          IconButton(
                            onPressed: () => removeOrderBy(i),
                            icon: const Icon(Icons.clear),
                          ),
                        ],
                      ),
                      if (orderBy.value is OrderBy)
                        Container(
                          padding: const EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            border: Border(
                              right: BorderSide(
                                color: themeData.inputDecorationTheme.border
                                        ?.borderSide.color ??
                                    themeData.colorScheme.primary,
                                width: 1.2,
                              ),
                            ),
                          ),
                          child: _OrderByWidget(
                            selectedQueryableType:
                                fieldsMetadata[orderBy.fieldName]!
                                    .queryableType!,
                            orderByStream: orderByStream
                                .map((o) => o[i].value as OrderBy)
                                .distinct()
                                .map((e) => [e]),
                            replaceOrderBy: (_, newOrderBy) => replaceOrderBy(
                              i,
                              orderBy.copyWith(value: newOrderBy),
                            ),
                            removeOrderBy: (_) => removeOrderBy(i),
                          ),
                        ),
                    ],
                  ),
                ),
              )
              .toList(),
        );
      },
    );
  }

  OrderBy _createNewNestedOrderBy(FieldMetadata outerFieldMetadata) {
    final nestedFieldMetadata =
        outerFieldMetadata.queryableType?.fieldsMetadata.values.firstWhere(
      (p) => p.name != 'id',
      orElse: () => const FieldMetadata(name: 'id', label: '='),
    );

    return OrderBy(
      fieldName: nestedFieldMetadata?.name ?? 'id',
      value: nestedFieldMetadata?.isNestabale ?? false
          ? _createNewNestedOrderBy(nestedFieldMetadata!)
          : Enum_OrderBy.ASC,
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
                icon: const Icon(Icons.clear),
              ),
            ),
            keyboardType: TextInputType.number,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            onChanged: (v) => onChangeLimit(int.tryParse(v)),
          );
        }

        return ElevatedButton.icon(
          onPressed: () => onChangeLimit(100),
          icon: const Icon(Icons.maximize),
          label: const Text('إضافة حد أقصى'),
        );
      },
    );
  }
}
