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

  const AdvancedSearchScreen({super.key});

  @override
  State<AdvancedSearchScreen> createState() => AdvancedSearchScreenState();
}

class AdvancedSearchScreenState extends State<AdvancedSearchScreen> {
  Type get selectedType => controller.selectedType;

  final controller = AdvancedSearchController();

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
              StreamBuilder<List<(String, Enum_OrderBy)>>(
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
                                  value: orderBy.$1,
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
                                      (value!, orderBy.$2),
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
                                  value: orderBy.$2,
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
                                      (orderBy.$1, value!),
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
                    (
                      AdvancedQueriesMetadata
                          .propertiesByType[controller.selectedType]!.first.$1,
                      Enum_OrderBy.ASC
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
    final jsonConditions = controller.conditions.map((e) => e.toJson());
    final jsonOrderBy =
        controller.orderBy.map((e) => {e.$1: e.$2.name}).toList();

    final searchQuery = BehaviorSubject<String?>.seeded(null);

    final streamableDAO =
        AdvancedQueriesMetadata.queryableTypes[selectedType]!.$2;

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
  final BehaviorSubject<Type> _selectedType = BehaviorSubject.seeded(Person);
  final BehaviorSubject<List<Condition>> _conditions =
      BehaviorSubject.seeded([]);
  final BehaviorSubject<int?> _limit = BehaviorSubject.seeded(null);
  final BehaviorSubject<List<(String, Enum_OrderBy)>> _orderBy =
      BehaviorSubject.seeded([]);

  ValueStream<Type> get selectedTypeStream => _selectedType.stream;
  ValueStream<List<Condition>> get conditionsStream => _conditions.stream;
  ValueStream<int?> get limitStream => _limit.stream;
  ValueStream<List<(String, Enum_OrderBy)>> get orderByStream =>
      _orderBy.stream;

  Type get selectedType => _selectedType.value;
  List<Condition> get conditions => _conditions.value;
  int? get limit => _limit.valueOrNull;
  List<(String, Enum_OrderBy)> get orderBy => _orderBy.value;

  void changeSelectedType(Type type) {
    changeOrderBy([]);
    changeConditions([]);
    _selectedType.add(type);
  }

  void changeConditions(List<Condition> conditions) {
    _conditions.add(conditions);
  }

  void replaceCondition(int index, Condition newCondition) {
    _conditions.add(
      conditions
          .mapIndexed(
            (i, e) => i == index ? newCondition : e,
          )
          .toList(),
    );
  }

  void removeCondition(int index) {
    _conditions.add(conditions.whereIndexed((i, e) => i != index).toList());
  }

  void changeLimit(int? limit) => _limit.add(limit);

  void changeOrderBy(List<(String, Enum_OrderBy)> orderBy) =>
      _orderBy.add(orderBy);

  void replaceOrderBy(int index, (String, Enum_OrderBy) newOrderBy) {
    _orderBy.add(
      orderBy
          .mapIndexed(
            (i, e) => i == index ? newOrderBy : e,
          )
          .toList(),
    );
  }

  void removeOrderBy(int index) {
    _orderBy.add(orderBy.whereIndexed((i, e) => i != index).toList());
  }

  Future<void> dispose() async {
    await _limit.close();
    await _orderBy.close();
    await _conditions.close();
    await _selectedType.close();
  }
}
