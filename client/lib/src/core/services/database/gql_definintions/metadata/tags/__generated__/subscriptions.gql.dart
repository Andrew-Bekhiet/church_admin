import '../../../../../../graphql/__generated__/schema.graphql.dart';
import 'package:church_admin/src/core/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Variables_Subscription_watchAllTags {
  factory Variables_Subscription_watchAllTags({
    List<Input_TagsBoolExp>? where,
    List<Input_TagsOrderBy>? order_by,
    int? limit,
  }) =>
      Variables_Subscription_watchAllTags._({
        if (where != null) r'where': where,
        if (order_by != null) r'order_by': order_by,
        if (limit != null) r'limit': limit,
      });

  Variables_Subscription_watchAllTags._(this._$data);

  factory Variables_Subscription_watchAllTags.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = (l$where as List<dynamic>?)
          ?.map((e) => Input_TagsBoolExp.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('order_by')) {
      final l$order_by = data['order_by'];
      result$data['order_by'] = (l$order_by as List<dynamic>?)
          ?.map((e) => Input_TagsOrderBy.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('limit')) {
      final l$limit = data['limit'];
      result$data['limit'] = (l$limit as int?);
    }
    return Variables_Subscription_watchAllTags._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_TagsBoolExp>? get where =>
      (_$data['where'] as List<Input_TagsBoolExp>?);

  List<Input_TagsOrderBy>? get order_by =>
      (_$data['order_by'] as List<Input_TagsOrderBy>?);

  int? get limit => (_$data['limit'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('order_by')) {
      final l$order_by = order_by;
      result$data['order_by'] = l$order_by?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('limit')) {
      final l$limit = limit;
      result$data['limit'] = l$limit;
    }
    return result$data;
  }

  CopyWith_Variables_Subscription_watchAllTags<
          Variables_Subscription_watchAllTags>
      get copyWith => CopyWith_Variables_Subscription_watchAllTags(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables_Subscription_watchAllTags) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$where = where;
    final lOther$where = other.where;
    if (_$data.containsKey('where') != other._$data.containsKey('where')) {
      return false;
    }
    if (l$where != null && lOther$where != null) {
      if (l$where.length != lOther$where.length) {
        return false;
      }
      for (int i = 0; i < l$where.length; i++) {
        final l$where$entry = l$where[i];
        final lOther$where$entry = lOther$where[i];
        if (l$where$entry != lOther$where$entry) {
          return false;
        }
      }
    } else if (l$where != lOther$where) {
      return false;
    }
    final l$order_by = order_by;
    final lOther$order_by = other.order_by;
    if (_$data.containsKey('order_by') !=
        other._$data.containsKey('order_by')) {
      return false;
    }
    if (l$order_by != null && lOther$order_by != null) {
      if (l$order_by.length != lOther$order_by.length) {
        return false;
      }
      for (int i = 0; i < l$order_by.length; i++) {
        final l$order_by$entry = l$order_by[i];
        final lOther$order_by$entry = lOther$order_by[i];
        if (l$order_by$entry != lOther$order_by$entry) {
          return false;
        }
      }
    } else if (l$order_by != lOther$order_by) {
      return false;
    }
    final l$limit = limit;
    final lOther$limit = other.limit;
    if (_$data.containsKey('limit') != other._$data.containsKey('limit')) {
      return false;
    }
    if (l$limit != lOther$limit) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$where = where;
    final l$order_by = order_by;
    final l$limit = limit;
    return Object.hashAll([
      _$data.containsKey('where')
          ? l$where == null
              ? null
              : Object.hashAll(l$where.map((v) => v))
          : const {},
      _$data.containsKey('order_by')
          ? l$order_by == null
              ? null
              : Object.hashAll(l$order_by.map((v) => v))
          : const {},
      _$data.containsKey('limit') ? l$limit : const {},
    ]);
  }
}

abstract class CopyWith_Variables_Subscription_watchAllTags<TRes> {
  factory CopyWith_Variables_Subscription_watchAllTags(
    Variables_Subscription_watchAllTags instance,
    TRes Function(Variables_Subscription_watchAllTags) then,
  ) = _CopyWithImpl_Variables_Subscription_watchAllTags;

  factory CopyWith_Variables_Subscription_watchAllTags.stub(TRes res) =
      _CopyWithStubImpl_Variables_Subscription_watchAllTags;

  TRes call({
    List<Input_TagsBoolExp>? where,
    List<Input_TagsOrderBy>? order_by,
    int? limit,
  });
}

class _CopyWithImpl_Variables_Subscription_watchAllTags<TRes>
    implements CopyWith_Variables_Subscription_watchAllTags<TRes> {
  _CopyWithImpl_Variables_Subscription_watchAllTags(
    this._instance,
    this._then,
  );

  final Variables_Subscription_watchAllTags _instance;

  final TRes Function(Variables_Subscription_watchAllTags) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? where = _undefined,
    Object? order_by = _undefined,
    Object? limit = _undefined,
  }) =>
      _then(Variables_Subscription_watchAllTags._({
        ..._instance._$data,
        if (where != _undefined) 'where': (where as List<Input_TagsBoolExp>?),
        if (order_by != _undefined)
          'order_by': (order_by as List<Input_TagsOrderBy>?),
        if (limit != _undefined) 'limit': (limit as int?),
      }));
}

class _CopyWithStubImpl_Variables_Subscription_watchAllTags<TRes>
    implements CopyWith_Variables_Subscription_watchAllTags<TRes> {
  _CopyWithStubImpl_Variables_Subscription_watchAllTags(this._res);

  TRes _res;

  call({
    List<Input_TagsBoolExp>? where,
    List<Input_TagsOrderBy>? order_by,
    int? limit,
  }) =>
      _res;
}

class Subscription_watchAllTags {
  Subscription_watchAllTags({required this.tags});

  factory Subscription_watchAllTags.fromJson(Map<String, dynamic> json) {
    final l$tags = json['tags'];
    return Subscription_watchAllTags(
        tags: (l$tags as List<dynamic>)
            .map((e) => Subscription_watchAllTags_tags.fromJson(
                (e as Map<String, dynamic>)))
            .toList());
  }

  final List<Subscription_watchAllTags_tags> tags;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$tags = tags;
    _resultData['tags'] = l$tags.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$tags = tags;
    return Object.hashAll([Object.hashAll(l$tags.map((v) => v))]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription_watchAllTags) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$tags = tags;
    final lOther$tags = other.tags;
    if (l$tags.length != lOther$tags.length) {
      return false;
    }
    for (int i = 0; i < l$tags.length; i++) {
      final l$tags$entry = l$tags[i];
      final lOther$tags$entry = lOther$tags[i];
      if (l$tags$entry != lOther$tags$entry) {
        return false;
      }
    }
    return true;
  }
}

extension UtilityExtension_Subscription_watchAllTags
    on Subscription_watchAllTags {
  CopyWith_Subscription_watchAllTags<Subscription_watchAllTags> get copyWith =>
      CopyWith_Subscription_watchAllTags(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Subscription_watchAllTags<TRes> {
  factory CopyWith_Subscription_watchAllTags(
    Subscription_watchAllTags instance,
    TRes Function(Subscription_watchAllTags) then,
  ) = _CopyWithImpl_Subscription_watchAllTags;

  factory CopyWith_Subscription_watchAllTags.stub(TRes res) =
      _CopyWithStubImpl_Subscription_watchAllTags;

  TRes call({List<Subscription_watchAllTags_tags>? tags});
  TRes tags(
      Iterable<Subscription_watchAllTags_tags> Function(
              Iterable<
                  CopyWith_Subscription_watchAllTags_tags<
                      Subscription_watchAllTags_tags>>)
          _fn);
}

class _CopyWithImpl_Subscription_watchAllTags<TRes>
    implements CopyWith_Subscription_watchAllTags<TRes> {
  _CopyWithImpl_Subscription_watchAllTags(
    this._instance,
    this._then,
  );

  final Subscription_watchAllTags _instance;

  final TRes Function(Subscription_watchAllTags) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? tags = _undefined}) => _then(Subscription_watchAllTags(
      tags: tags == _undefined || tags == null
          ? _instance.tags
          : (tags as List<Subscription_watchAllTags_tags>)));

  TRes tags(
          Iterable<Subscription_watchAllTags_tags> Function(
                  Iterable<
                      CopyWith_Subscription_watchAllTags_tags<
                          Subscription_watchAllTags_tags>>)
              _fn) =>
      call(
          tags: _fn(
              _instance.tags.map((e) => CopyWith_Subscription_watchAllTags_tags(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl_Subscription_watchAllTags<TRes>
    implements CopyWith_Subscription_watchAllTags<TRes> {
  _CopyWithStubImpl_Subscription_watchAllTags(this._res);

  TRes _res;

  call({List<Subscription_watchAllTags_tags>? tags}) => _res;

  tags(_fn) => _res;
}

const documentNodeSubscriptionwatchAllTags = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'watchAllTags'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'where')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'TagsBoolExp'),
            isNonNull: true,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: ObjectValueNode(fields: [])),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'order_by')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'TagsOrderBy'),
            isNonNull: true,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: ObjectValueNode(fields: [])),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'limit')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: IntValueNode(value: '25')),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'tags'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: '_and'),
                value: VariableNode(name: NameNode(value: 'where')),
              )
            ]),
          ),
          ArgumentNode(
            name: NameNode(value: 'orderBy'),
            value: VariableNode(name: NameNode(value: 'order_by')),
          ),
          ArgumentNode(
            name: NameNode(value: 'limit'),
            value: VariableNode(name: NameNode(value: 'limit')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'color'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      )
    ]),
  ),
]);

class Subscription_watchAllTags_tags {
  Subscription_watchAllTags_tags({
    required this.id,
    required this.name,
    this.color,
    this.$__typename = 'Tags',
  });

  factory Subscription_watchAllTags_tags.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    return Subscription_watchAllTags_tags(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription_watchAllTags_tags) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$color = color;
    final lOther$color = other.color;
    if (l$color != lOther$color) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Subscription_watchAllTags_tags
    on Subscription_watchAllTags_tags {
  CopyWith_Subscription_watchAllTags_tags<Subscription_watchAllTags_tags>
      get copyWith => CopyWith_Subscription_watchAllTags_tags(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Subscription_watchAllTags_tags<TRes> {
  factory CopyWith_Subscription_watchAllTags_tags(
    Subscription_watchAllTags_tags instance,
    TRes Function(Subscription_watchAllTags_tags) then,
  ) = _CopyWithImpl_Subscription_watchAllTags_tags;

  factory CopyWith_Subscription_watchAllTags_tags.stub(TRes res) =
      _CopyWithStubImpl_Subscription_watchAllTags_tags;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
  });
}

class _CopyWithImpl_Subscription_watchAllTags_tags<TRes>
    implements CopyWith_Subscription_watchAllTags_tags<TRes> {
  _CopyWithImpl_Subscription_watchAllTags_tags(
    this._instance,
    this._then,
  );

  final Subscription_watchAllTags_tags _instance;

  final TRes Function(Subscription_watchAllTags_tags) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription_watchAllTags_tags(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        color: color == _undefined ? _instance.color : (color as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Subscription_watchAllTags_tags<TRes>
    implements CopyWith_Subscription_watchAllTags_tags<TRes> {
  _CopyWithStubImpl_Subscription_watchAllTags_tags(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
  }) =>
      _res;
}
