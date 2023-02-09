import '../../../../../../../graphql/__generated__/schema.graphql.dart';
import 'package:church_admin/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Variables$Subscription$watchAllTags {
  factory Variables$Subscription$watchAllTags({
    List<Input$TagsBoolExp>? where,
    int? limit,
  }) =>
      Variables$Subscription$watchAllTags._({
        if (where != null) r'where': where,
        if (limit != null) r'limit': limit,
      });

  Variables$Subscription$watchAllTags._(this._$data);

  factory Variables$Subscription$watchAllTags.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = (l$where as List<dynamic>?)
          ?.map((e) => Input$TagsBoolExp.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('limit')) {
      final l$limit = data['limit'];
      result$data['limit'] = (l$limit as int?);
    }
    return Variables$Subscription$watchAllTags._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$TagsBoolExp>? get where =>
      (_$data['where'] as List<Input$TagsBoolExp>?);
  int? get limit => (_$data['limit'] as int?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('limit')) {
      final l$limit = limit;
      result$data['limit'] = l$limit;
    }
    return result$data;
  }

  CopyWith$Variables$Subscription$watchAllTags<
          Variables$Subscription$watchAllTags>
      get copyWith => CopyWith$Variables$Subscription$watchAllTags(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Subscription$watchAllTags) ||
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
    final l$limit = limit;
    return Object.hashAll([
      _$data.containsKey('where')
          ? l$where == null
              ? null
              : Object.hashAll(l$where.map((v) => v))
          : const {},
      _$data.containsKey('limit') ? l$limit : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Subscription$watchAllTags<TRes> {
  factory CopyWith$Variables$Subscription$watchAllTags(
    Variables$Subscription$watchAllTags instance,
    TRes Function(Variables$Subscription$watchAllTags) then,
  ) = _CopyWithImpl$Variables$Subscription$watchAllTags;

  factory CopyWith$Variables$Subscription$watchAllTags.stub(TRes res) =
      _CopyWithStubImpl$Variables$Subscription$watchAllTags;

  TRes call({
    List<Input$TagsBoolExp>? where,
    int? limit,
  });
}

class _CopyWithImpl$Variables$Subscription$watchAllTags<TRes>
    implements CopyWith$Variables$Subscription$watchAllTags<TRes> {
  _CopyWithImpl$Variables$Subscription$watchAllTags(
    this._instance,
    this._then,
  );

  final Variables$Subscription$watchAllTags _instance;

  final TRes Function(Variables$Subscription$watchAllTags) _then;

  static const _undefined = {};

  TRes call({
    Object? where = _undefined,
    Object? limit = _undefined,
  }) =>
      _then(Variables$Subscription$watchAllTags._({
        ..._instance._$data,
        if (where != _undefined) 'where': (where as List<Input$TagsBoolExp>?),
        if (limit != _undefined) 'limit': (limit as int?),
      }));
}

class _CopyWithStubImpl$Variables$Subscription$watchAllTags<TRes>
    implements CopyWith$Variables$Subscription$watchAllTags<TRes> {
  _CopyWithStubImpl$Variables$Subscription$watchAllTags(this._res);

  TRes _res;

  call({
    List<Input$TagsBoolExp>? where,
    int? limit,
  }) =>
      _res;
}

class Subscription$watchAllTags {
  Subscription$watchAllTags({required this.tags});

  factory Subscription$watchAllTags.fromJson(Map<String, dynamic> json) {
    final l$tags = json['tags'];
    return Subscription$watchAllTags(
        tags: (l$tags as List<dynamic>)
            .map((e) => Subscription$watchAllTags$tags.fromJson(
                (e as Map<String, dynamic>)))
            .toList());
  }

  final List<Subscription$watchAllTags$tags> tags;

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
    if (!(other is Subscription$watchAllTags) ||
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

extension UtilityExtension$Subscription$watchAllTags
    on Subscription$watchAllTags {
  CopyWith$Subscription$watchAllTags<Subscription$watchAllTags> get copyWith =>
      CopyWith$Subscription$watchAllTags(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Subscription$watchAllTags<TRes> {
  factory CopyWith$Subscription$watchAllTags(
    Subscription$watchAllTags instance,
    TRes Function(Subscription$watchAllTags) then,
  ) = _CopyWithImpl$Subscription$watchAllTags;

  factory CopyWith$Subscription$watchAllTags.stub(TRes res) =
      _CopyWithStubImpl$Subscription$watchAllTags;

  TRes call({List<Subscription$watchAllTags$tags>? tags});
  TRes tags(
      Iterable<Subscription$watchAllTags$tags> Function(
              Iterable<
                  CopyWith$Subscription$watchAllTags$tags<
                      Subscription$watchAllTags$tags>>)
          _fn);
}

class _CopyWithImpl$Subscription$watchAllTags<TRes>
    implements CopyWith$Subscription$watchAllTags<TRes> {
  _CopyWithImpl$Subscription$watchAllTags(
    this._instance,
    this._then,
  );

  final Subscription$watchAllTags _instance;

  final TRes Function(Subscription$watchAllTags) _then;

  static const _undefined = {};

  TRes call({Object? tags = _undefined}) => _then(Subscription$watchAllTags(
      tags: tags == _undefined || tags == null
          ? _instance.tags
          : (tags as List<Subscription$watchAllTags$tags>)));
  TRes tags(
          Iterable<Subscription$watchAllTags$tags> Function(
                  Iterable<
                      CopyWith$Subscription$watchAllTags$tags<
                          Subscription$watchAllTags$tags>>)
              _fn) =>
      call(
          tags: _fn(
              _instance.tags.map((e) => CopyWith$Subscription$watchAllTags$tags(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Subscription$watchAllTags<TRes>
    implements CopyWith$Subscription$watchAllTags<TRes> {
  _CopyWithStubImpl$Subscription$watchAllTags(this._res);

  TRes _res;

  call({List<Subscription$watchAllTags$tags>? tags}) => _res;
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
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'name'),
                value: EnumValueNode(name: NameNode(value: 'ASC')),
              )
            ]),
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

class Subscription$watchAllTags$tags {
  Subscription$watchAllTags$tags({
    required this.id,
    required this.name,
    this.color,
    required this.$__typename,
  });

  factory Subscription$watchAllTags$tags.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    return Subscription$watchAllTags$tags(
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
    if (!(other is Subscription$watchAllTags$tags) ||
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

extension UtilityExtension$Subscription$watchAllTags$tags
    on Subscription$watchAllTags$tags {
  CopyWith$Subscription$watchAllTags$tags<Subscription$watchAllTags$tags>
      get copyWith => CopyWith$Subscription$watchAllTags$tags(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$watchAllTags$tags<TRes> {
  factory CopyWith$Subscription$watchAllTags$tags(
    Subscription$watchAllTags$tags instance,
    TRes Function(Subscription$watchAllTags$tags) then,
  ) = _CopyWithImpl$Subscription$watchAllTags$tags;

  factory CopyWith$Subscription$watchAllTags$tags.stub(TRes res) =
      _CopyWithStubImpl$Subscription$watchAllTags$tags;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
  });
}

class _CopyWithImpl$Subscription$watchAllTags$tags<TRes>
    implements CopyWith$Subscription$watchAllTags$tags<TRes> {
  _CopyWithImpl$Subscription$watchAllTags$tags(
    this._instance,
    this._then,
  );

  final Subscription$watchAllTags$tags _instance;

  final TRes Function(Subscription$watchAllTags$tags) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription$watchAllTags$tags(
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

class _CopyWithStubImpl$Subscription$watchAllTags$tags<TRes>
    implements CopyWith$Subscription$watchAllTags$tags<TRes> {
  _CopyWithStubImpl$Subscription$watchAllTags$tags(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
  }) =>
      _res;
}
