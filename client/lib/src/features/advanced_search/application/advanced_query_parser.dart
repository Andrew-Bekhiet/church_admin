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

    final streamAllConfig = streamableDAO.baseStreamAllConfig;

    final docWithSelectedOrderBy =
        _selectOrderByFields(streamAllConfig.document, jsonOrderBy);

    final newStreamAllConfig = _overrideStreamAllVars(
      config: streamAllConfig,
      document: docWithSelectedOrderBy,
      logicalOperator: query.logicalOperator,
      jsonConditions: jsonConditions,
      jsonOrderBy: jsonOrderBy,
      limit: query.limit,
    );

    final newStreamCountConfig = streamableDAO.baseStreamCountConfig != null
        ? _overrideStreamCountVars(
            config: streamableDAO.baseStreamCountConfig!,
            jsonConditions: jsonConditions,
            logicalOperator: query.logicalOperator,
          )
        : null;

    return streamableDAO.streamingProxy.streamAll(
      parametersStream: searchStream
          ?.map((search) => StreamableDAOParameters(search: search)),
      streamAllConfig: newStreamAllConfig,
      streamCountConfig: newStreamCountConfig,
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
      _overrideStreamAllVars<T extends ViewableWithID>({
    required LogicalOperator logicalOperator,
    required StreamAllConfig<T, dynamic, dynamic> config,
    required DocumentNode document,
    required List<Json> jsonConditions,
    required List<Json> jsonOrderBy,
    int? limit,
  }) {
    return config.copyWith(
      document: document,
      varsConstructor: (request) => {
        ...DatabaseService.I.varsTransformer.transformrequestForPagination(
          request,
          overrideWhere: [
            {logicalOperator.value: jsonConditions},
          ],
          overrideOrderBy: jsonOrderBy,
        ),
        if (limit != null) 'limit': limit,
      },
    );
  }

  StreamCountConfig<T, dynamic>?
      _overrideStreamCountVars<T extends ViewableWithID>({
    required StreamCountConfig<T, dynamic> config,
    required List<Json> jsonConditions,
    required LogicalOperator logicalOperator,
  }) {
    return config.copyWith(
      variables: {
        'where': [
          {logicalOperator.value: jsonConditions},
        ],
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
