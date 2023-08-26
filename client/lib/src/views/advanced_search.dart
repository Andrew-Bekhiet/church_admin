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
    builder: (context, state) => const AdvancedSearchScreen(),
  );

  final List<Condition>? initialQuery;
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
  final controller = AdvancedSearchController();

  Type get selectedType => controller.selectedType;

  @override
  void initState() {
    super.initState();

    if (widget.initialQuery != null) {
      controller.changeConditions(widget.initialQuery!);
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
                  Expanded(
                    child: DropdownButtonFormField(
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      isExpanded: true,
                      value: selectedType,
                      items: AdvancedQueriesMetadata.queryableTypes.entries
                          .map(
                            (e) => DropdownMenuItem(
                              alignment: Alignment.center,
                              value: e.key,
                              child: Text(e.value.$1),
                            ),
                          )
                          .toList(),
                      onChanged: (v) {
                        controller
                          ..changeSelectedType(v!)
                          ..changeConditions([
                            Condition(
                              type: v,
                              field: AdvancedQueriesMetadata
                                  .propertiesByType[v]!.first.$1,
                              operator: Operator.eq,
                            ),
                          ]);
                      },
                    ),
                  ),
                ],
              ),
              const Divider(),
              StreamBuilder<List<Condition>>(
                stream: controller.conditionsStream,
                builder: (context, snapshot) {
                  return ConditionBuilder(
                    type: selectedType,
                    conditions: snapshot.data ?? controller.conditions,
                    onChanged: controller.changeConditions,
                  );
                },
              ),
              const Divider(),
              StreamBuilder<List<OrderBy>>(
                stream: controller.orderByStream,
                builder: (context, orderByData) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ...(orderByData.data ?? []).mapIndexed(
                        (i, orderBy) => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4),
                          child: Row(
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
                                  value: orderBy.field,
                                  items: AdvancedQueriesMetadata
                                      .propertiesByType[
                                          controller.selectedType]!
                                      .map(
                                        (p) => DropdownMenuItem(
                                          alignment: Alignment.center,
                                          value: p.$1,
                                          child: Text(p.$2),
                                        ),
                                      )
                                      .toList(),
                                  onChanged: (value) {
                                    controller.replaceOrderBy(
                                      i,
                                      orderBy.copyWith(field: value!),
                                    );
                                  },
                                ),
                              ),
                              const SizedBox(width: 8),
                              Expanded(
                                child: DropdownButtonFormField<Enum_OrderBy>(
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(20),
                                  ),
                                  isExpanded: true,
                                  value: orderBy.order,
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
                                    controller.replaceOrderBy(
                                      i,
                                      orderBy.copyWith(order: value!),
                                    );
                                  },
                                ),
                              ),
                              IconButton(
                                onPressed: () => controller.removeOrderBy(i),
                                icon: const Icon(Icons.clear),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
              ElevatedButton.icon(
                onPressed: () => controller.changeOrderBy(
                  [
                    ...controller.orderBy,
                    OrderBy(
                      field: AdvancedQueriesMetadata
                          .propertiesByType[controller.selectedType]!.first.$1,
                    ),
                  ],
                ),
                icon: const Icon(Icons.sort),
                label: const Text('إضافة ترتيب'),
              ),
              const Divider(),
              StreamBuilder<int?>(
                stream: controller.limitStream,
                builder: (context, limitData) {
                  if (limitData.hasData) {
                    return TextFormField(
                      initialValue: controller.limit.toString(),
                      decoration: InputDecoration(
                        labelText: 'الحد الأقصى',
                        suffixIcon: IconButton(
                          onPressed: () => controller.changeLimit(null),
                          icon: const Icon(Icons.clear),
                        ),
                      ),
                      keyboardType: TextInputType.number,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      onChanged: (v) => controller.changeLimit(int.tryParse(v)),
                    );
                  }

                  return ElevatedButton.icon(
                    onPressed: () => controller.changeLimit(100),
                    icon: const Icon(Icons.maximize),
                    label: const Text('إضافة حد أقصى'),
                  );
                },
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

  Future<void> _execute() async {
    final jsonConditions = controller.conditions.map((e) => e.toSearchJson());
    final jsonOrderBy =
        controller.orderBy.map((e) => e.toSearchJson()).toList();

    final searchQuery = BehaviorSubject<String?>.seeded(null);

    final streamableDAO = AdvancedQueriesMetadata.streamableDAOs[selectedType]!;

    final paginatableStream = streamableDAO.streamingProxy.streamAll(
      searchQuery: searchQuery,
      streamAllConfig: streamableDAO.baseStreamAllConfig.copyWith(
        varsConstructor: ({required event, required where}) {
          final instance = event.instance;
          final offset = event.offset;
          final search = event.search;
          final lastSearch = event.lastSearch;

          return {
            'where': [
              ...jsonConditions,
              if (search != null && search.isNotEmpty)
                {
                  'name': {'_ilike': '%$search%'},
                },
              if (lastSearch == search && offset > 0)
                {
                  'name': {
                    '_gt': instance
                        .currentValue[
                            (offset - 1) * instance.limit + instance.limit - 1]
                        .name,
                  },
                },
            ],
            'limit': controller.limit ?? instance.limit + 1,
            'orderBy': jsonOrderBy,
          };
        },
      ),
    );
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
                              jsonEncode(controller.currentQuery.toJson()),
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

class AdvancedSearchController {
  final BehaviorSubject<AdvancedQuery> _query =
      BehaviorSubject.seeded(const AdvancedQuery(name: ''));
  final BehaviorSubject<Type> _selectedType = BehaviorSubject.seeded(Person);

  Stream<AdvancedQuery> get queryStream => _query.stream;
  Stream<Type> get selectedTypeStream => _selectedType.stream;

  Stream<List<Condition>> get conditionsStream =>
      _query.map((q) => q.conditions);
  Stream<int?> get limitStream => _query.map((q) => q.limit);
  Stream<List<OrderBy>> get orderByStream => _query.map((q) => q.orderBy);

  AdvancedQuery get currentQuery => _query.value;
  Type get selectedType => _selectedType.value;

  List<Condition> get conditions => _query.value.conditions;
  int? get limit => _query.value.limit;
  List<OrderBy> get orderBy => _query.value.orderBy;

  void changeSelectedType(Type type) {
    changeOrderBy([]);
    changeConditions([]);
    _selectedType.add(type);
  }

  void changeConditions(List<Condition> conditions) {
    _query.add(currentQuery.copyWith(conditions: conditions));
  }

  void replaceCondition(int index, Condition newCondition) {
    changeConditions(
      conditions
          .mapIndexed(
            (i, e) => i == index ? newCondition : e,
          )
          .toList(),
    );
  }

  void removeCondition(int index) {
    changeConditions(conditions.whereIndexed((i, e) => i != index).toList());
  }

  void changeLimit(int? limit) =>
      _query.add(currentQuery.copyWith(limit: limit));

  void changeOrderBy(List<OrderBy> orderBy) =>
      _query.add(currentQuery.copyWith(orderBy: orderBy));

  void replaceOrderBy(int index, OrderBy newOrderBy) {
    changeOrderBy(
      orderBy
          .mapIndexed(
            (i, e) => i == index ? newOrderBy : e,
          )
          .toList(),
    );
  }

  void removeOrderBy(int index) {
    changeOrderBy(orderBy.whereIndexed((i, e) => i != index).toList());
  }

  Future<void> dispose() async {
    await _query.close();
    await _selectedType.close();
  }
}
