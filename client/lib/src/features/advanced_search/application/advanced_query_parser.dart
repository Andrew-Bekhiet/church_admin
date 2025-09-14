import 'package:church_admin/church_admin.dart';
import 'package:gql/ast.dart';

class AdvancedQueryParser {
  const AdvancedQueryParser();

  PaginatableStreamBase<ViewableWithID> createPaginatableStream(
    AdvancedQuery query, [
    Stream<String?>? searchStream,
  ]) {
    final Json jsonFilter = query.serializeFilter();

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
      jsonConditions: jsonFilter,
      jsonOrderBy: jsonOrderBy,
      limit: query.limit,
    );

    final newStreamCountConfig = streamableDAO.baseStreamCountConfig != null
        ? _overrideStreamCountVars(
            config: streamableDAO.baseStreamCountConfig!,
            jsonConditions: jsonFilter,
          )
        : null;

    return streamableDAO.streamingProxy.streamAll(
      searchQuery: searchStream,
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

  StreamAllConfig<T> _overrideStreamAllVars<T extends ViewableWithID>({
    required StreamAllConfig<T> config,
    required DocumentNode document,
    required Json jsonConditions,
    required List<Json> jsonOrderBy,
    int? limit,
  }) {
    return config.copyWith(
      document: document,
      transformRequest: (request) => {
        ...DatabaseService.I.varsTransformer.transformrequestForPagination(
          request,
          overrideWhere: [jsonConditions],
          overrideOrderBy: jsonOrderBy,
        ),
        if (limit != null) 'limit': limit,
      },
    );
  }

  StreamCountConfig<T>? _overrideStreamCountVars<T extends ViewableWithID>({
    required StreamCountConfig<T> config,
    required Json jsonConditions,
  }) {
    return config.copyWith(
      variables: {
        'where': [jsonConditions],
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
