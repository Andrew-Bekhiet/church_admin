import 'dart:async';
import 'dart:convert';

import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:rxdart/rxdart.dart';

class AdvancedSearchScreen extends StatefulWidget {
  final AdvancedQuery? initialQuery;
  final bool autoExecuteInitialQuery;

  const AdvancedSearchScreen({
    this.autoExecuteInitialQuery = false,
    this.initialQuery,
    super.key,
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
                      items: AdvancedQueriesMetadata().allQueryables
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
              StreamBuilder<AdvancedQuery>(
                stream: controller.queryStream,
                initialData: controller.query,
                builder: (context, orderByData) {
                  final query = orderByData.requireData;
                  final selectedQueryableType = query.queryableType;
                  final orderByStatements = query.orderBy;

                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisSize: MainAxisSize.min,
                    children: orderByStatements
                        .mapIndexed(
                          (i, orderBy) => OrderByWidget(
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
              AdvancedSearchLimitField(
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

  @override
  void dispose() {
    unawaited(controller.dispose());
    super.dispose();
  }

  void _onTypeChanged(QueryableType newType) {
    controller.changeSelectedQueryableType(newType);
  }

  void _onAddOrderByStatement() => controller.addOrderBy(
    OrderBy(
      field: selectedQueryableType.orderableFields.firstWhere(
        (f) => f != selectedQueryableType.keyField,
        orElse: () => selectedQueryableType.orderableFields.first,
      ),
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
                  onPressed: () => globalProviderContainer
                      .read(shareServiceProvider)
                      .shareText(
                        base64Encode(
                          utf8.encode(
                            jsonEncode(controller.query.toJson()),
                          ),
                        ),
                      ),
                ),
              ],
            ),
            body: ViewableObjectList(
              objectsController: viewableObjectListController,
              viewableObjectWidgetConfig: controller.orderBy.isNotEmpty
                  ? ViewableObjectWidgetConfig(
                      secondLineField: controller.orderBy.first.field,
                    )
                  : null,
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
