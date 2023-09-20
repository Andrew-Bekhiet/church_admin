import 'dart:convert';

import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:gql/ast.dart';
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
      key: PageStorageKey(state.location),
      initialQuery: state.extra as AdvancedQuery?,
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

  Type get selectedType => controller.selectedType;

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
                      onChanged: (v) => _onTypeChanged(v!),
                    ),
                  ),
                ],
              ),
              const Divider(),
              StreamBuilder<List<Condition>>(
                stream: controller.conditionsStream,
                builder: (context, snapshot) => ConditionsBuilder(
                  type: selectedType,
                  conditions: snapshot.data ?? controller.conditions,
                  onChanged: controller.changeConditions,
                ),
              ),
              const Divider(),
              _OrderByWidget(
                selectedType: selectedType,
                orderByStream: controller.orderByStream,
                replaceOrderBy: controller.replaceOrderBy,
                removeOrderBy: controller.removeOrderByAt,
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

  void _onTypeChanged(Type newType) {
    controller.changeSelectedType(
      newType,
      AdvancedQueriesMetadata.propertiesByType[newType]!
          .firstWhere((p) => p.$1 != 'id')
          .$1,
    );
  }

  void _onAddOrderByStatement() => controller.addOrderBy(
        OrderBy(
          field: AdvancedQueriesMetadata.propertiesByType[selectedType]!
              .firstWhere((p) => p.$1 != 'id')
              .$1,
        ),
      );

  void _onChangeLimit(int? newLimit) => controller.changeLimit(newLimit);

  Future<void> _execute() async {
    final searchQuery = BehaviorSubject<String?>.seeded(null);

    final viewableObjectListController = _createObjectsController(searchQuery);

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

  ViewableObjectListController<ViewableWithID> _createObjectsController(
    BehaviorSubject<String?> searchQuery,
  ) {
    final jsonConditions = controller.conditions.map((e) => e.toSearchJson());
    final jsonOrderBy =
        controller.orderBy.map((e) => e.toSearchJson()).toList();

    final streamableDAO = AdvancedQueriesMetadata.streamableDAOs[selectedType]!;

    final firstOrderByField = jsonOrderBy.firstOrNull?.keys.single ?? 'id';

    //TODO: move to DaatabaseService DAOs
    final paginatableStream = streamableDAO.streamingProxy.streamAll(
      searchQuery: searchQuery,
      streamAllConfig: streamableDAO.baseStreamAllConfig.copyWith(
        document: streamableDAO.baseStreamAllConfig.document.addSelectionFields(
          {
            'persons': [
              FieldNode(name: NameNode(value: firstOrderByField)),
            ],
          },
        ),
        varsConstructor: ({required event, required where}) {
          final instance = event.instance;
          final offset = event.offset;
          final search = event.search;
          final lastSearch = event.lastSearch;

          //TODO: move to BaseDAO defaultSearchVarsConstructor
          //TODO: add limit handling logic to BaseDAO

          final lastItemInCurrentPage = lastSearch == search && offset > 0
              ? instance.currentValue[
                  (offset - 1) * instance.limit + instance.limit - 1]
              : null;
          return {
            'where': [
              ...jsonConditions,
              if (search != null && search.isNotEmpty)
                {
                  'name': {'_ilike': '%$search%'},
                },
              if (lastSearch == search && offset > 0)
                {
                  firstOrderByField: {
                    '_gt': firstOrderByField == 'id'
                        ? lastItemInCurrentPage
                        : (lastItemInCurrentPage! as ToJson)
                            .toJson()[firstOrderByField],
                  },
                },
            ],
            'limit': controller.limit ?? instance.limit + 1,
            'orderBy': jsonOrderBy,
          };
        },
      ),
    );

    return ViewableObjectListController(
      objectsPaginatableStream: paginatableStream,
      filterStream: paginatableStream.onLoadingChanged.switchMap(
        (isLoading) => isLoading ? searchQuery : Stream.value(null),
      ),
    );
  }
}

class _OrderByWidget extends StatelessWidget {
  const _OrderByWidget({
    required this.selectedType,
    required this.orderByStream,
    required this.replaceOrderBy,
    required this.removeOrderBy,
  });

  final Type selectedType;
  final Stream<List<OrderBy>> orderByStream;
  final void Function(int, OrderBy) replaceOrderBy;
  final void Function(int) removeOrderBy;

  @override
  Widget build(BuildContext context) {
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
                              .propertiesByType[selectedType]!
                              .map(
                                (p) => DropdownMenuItem(
                                  alignment: Alignment.center,
                                  value: p.$1,
                                  child: Text(p.$2),
                                ),
                              )
                              .toList(),
                          onChanged: (value) {
                            replaceOrderBy(
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
                          value: orderBy.direction,
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
                              orderBy.copyWith(direction: value!),
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
                ),
              )
              .toList(),
        );
      },
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
