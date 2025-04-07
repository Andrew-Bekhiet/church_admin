import 'package:church_admin/church_admin.dart';
import 'package:gql/ast.dart';
import 'package:rxdart/rxdart.dart';

class AdvancedQueryParser {
  const AdvancedQueryParser();

  PaginatableStreamBase<ViewableWithID> createPaginatableStream(
    AdvancedQuery query, [
    BehaviorSubject<String?>? searchStream,
  ]) {
    final List<Json> jsonConditions =
        query.conditions.map((e) => e.toSearchJson()).toList();

    final List<Json> jsonOrderBy = query.orderBy.isEmpty
        ? [
            {'name': 'ASC'},
          ]
        : query.orderBy.map((e) => e.toSearchJson()).toList();

    final streamableDAO = query.queryableType.dao!;

    final config = streamableDAO.baseStreamAllConfig;

    final docWithSelectedOrderBy =
        _selectOrderByFields(config.document, jsonOrderBy);

    final newConfig = _overrideConfigVars(
      config: config,
      document: docWithSelectedOrderBy,
      logicalOperator: query.logicalOperator,
      jsonConditions: jsonConditions,
      jsonOrderBy: jsonOrderBy,
      limit: query.limit,
    );

    return streamableDAO.streamingProxy.streamAll(
      searchQuery: searchStream,
      streamAllConfig: newConfig,
    );
  }

  DocumentNode _selectOrderByFields(
    DocumentNode document,
    List<Json> jsonOrderBy,
  ) {
    final firstSelectionNodeName = document.definitions
        .whereType<OperationDefinitionNode>()
        .first
        .firstSelectionNode
        .name
        .value;

    return document.withSelectionFields({
      firstSelectionNodeName: jsonOrderBy
          .map(
            (e) => e.keys.single.endsWith('HistoryAggregate')
                ? {
                    e.keys.single: {'aggregate': e.values.single},
                  }.toGQLFieldWithSelection()
                : e.toGQLFieldWithSelection(),
          )
          .toList(),
    });
  }

  StreamAllConfig<T, dynamic, dynamic>
      _overrideConfigVars<T extends ViewableWithID>({
    required LogicalOperator logicalOperator,
    required StreamAllConfig<T, dynamic, dynamic> config,
    required DocumentNode document,
    required List<Json> jsonConditions,
    required List<Json> jsonOrderBy,
    int? limit,
  }) {
    return config.copyWith(
      document: document,
      varsConstructor: ({required request, where, orderBy}) => {
        ...DatabaseService.I.varsTransformer.transformVariablesForPagination(
          request,
          where: [
            {logicalOperator.value: jsonConditions},
          ],
          orderBy: jsonOrderBy,
        ),
        if (limit != null) 'limit': limit,
      },
    );
  }
}

extension ToGQLFieldWithSelection on Json {
  FieldNode toGQLFieldWithSelection() {
    return FieldNode(
      name: NameNode(value: keys.single),
      selectionSet: entries.single.value is Json
          ? SelectionSetNode(
              selections: [
                (entries.single.value as Json).toGQLFieldWithSelection(),
              ],
            )
          : null,
    );
  }
}
