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
              StreamBuilder<(QueryableType, List<OrderBy>)>(
                stream: Rx.combineLatest2(
                  controller.selectedTypeStream,
                  controller.orderByStream,
                  (type, orderBy) => (type, orderBy),
                ),
                initialData: (
                  controller.selectedQueryableType,
                  controller.orderBy,
                ),
                builder: (context, orderByData) {
                  final (selectedQueryableType, orderByStatements) =
                      orderByData.data!;

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
      field: selectedQueryableType.fieldsMetadata.firstWhere(
        (p) => !p.name.endsWith('id') && p.isOrderable,
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

class _QueryLimitWidget extends StatelessWidget {
  final void Function(int?) onChangeLimit;
  final Stream<int?> limitStream;
  const _QueryLimitWidget({
    required this.onChangeLimit,
    required this.limitStream,
  });

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
