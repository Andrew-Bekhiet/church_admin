import '../../../../../../../graphql/__generated__/schema.graphql.dart';
import 'package:church_admin/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Variables$Subscription$watchAllHobbies {
  factory Variables$Subscription$watchAllHobbies({
    List<Input$HobbiesBoolExp>? where,
    int? limit,
  }) =>
      Variables$Subscription$watchAllHobbies._({
        if (where != null) r'where': where,
        if (limit != null) r'limit': limit,
      });

  Variables$Subscription$watchAllHobbies._(this._$data);

  factory Variables$Subscription$watchAllHobbies.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = (l$where as List<dynamic>?)
          ?.map(
              (e) => Input$HobbiesBoolExp.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('limit')) {
      final l$limit = data['limit'];
      result$data['limit'] = (l$limit as int?);
    }
    return Variables$Subscription$watchAllHobbies._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$HobbiesBoolExp>? get where =>
      (_$data['where'] as List<Input$HobbiesBoolExp>?);
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

  CopyWith$Variables$Subscription$watchAllHobbies<
          Variables$Subscription$watchAllHobbies>
      get copyWith => CopyWith$Variables$Subscription$watchAllHobbies(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Subscription$watchAllHobbies) ||
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

abstract class CopyWith$Variables$Subscription$watchAllHobbies<TRes> {
  factory CopyWith$Variables$Subscription$watchAllHobbies(
    Variables$Subscription$watchAllHobbies instance,
    TRes Function(Variables$Subscription$watchAllHobbies) then,
  ) = _CopyWithImpl$Variables$Subscription$watchAllHobbies;

  factory CopyWith$Variables$Subscription$watchAllHobbies.stub(TRes res) =
      _CopyWithStubImpl$Variables$Subscription$watchAllHobbies;

  TRes call({
    List<Input$HobbiesBoolExp>? where,
    int? limit,
  });
}

class _CopyWithImpl$Variables$Subscription$watchAllHobbies<TRes>
    implements CopyWith$Variables$Subscription$watchAllHobbies<TRes> {
  _CopyWithImpl$Variables$Subscription$watchAllHobbies(
    this._instance,
    this._then,
  );

  final Variables$Subscription$watchAllHobbies _instance;

  final TRes Function(Variables$Subscription$watchAllHobbies) _then;

  static const _undefined = {};

  TRes call({
    Object? where = _undefined,
    Object? limit = _undefined,
  }) =>
      _then(Variables$Subscription$watchAllHobbies._({
        ..._instance._$data,
        if (where != _undefined)
          'where': (where as List<Input$HobbiesBoolExp>?),
        if (limit != _undefined) 'limit': (limit as int?),
      }));
}

class _CopyWithStubImpl$Variables$Subscription$watchAllHobbies<TRes>
    implements CopyWith$Variables$Subscription$watchAllHobbies<TRes> {
  _CopyWithStubImpl$Variables$Subscription$watchAllHobbies(this._res);

  TRes _res;

  call({
    List<Input$HobbiesBoolExp>? where,
    int? limit,
  }) =>
      _res;
}

class Subscription$watchAllHobbies {
  Subscription$watchAllHobbies({required this.hobbies});

  factory Subscription$watchAllHobbies.fromJson(Map<String, dynamic> json) {
    final l$hobbies = json['hobbies'];
    return Subscription$watchAllHobbies(
        hobbies: (l$hobbies as List<dynamic>)
            .map((e) => Subscription$watchAllHobbies$hobbies.fromJson(
                (e as Map<String, dynamic>)))
            .toList());
  }

  final List<Subscription$watchAllHobbies$hobbies> hobbies;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$hobbies = hobbies;
    _resultData['hobbies'] = l$hobbies.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$hobbies = hobbies;
    return Object.hashAll([Object.hashAll(l$hobbies.map((v) => v))]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$watchAllHobbies) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$hobbies = hobbies;
    final lOther$hobbies = other.hobbies;
    if (l$hobbies.length != lOther$hobbies.length) {
      return false;
    }
    for (int i = 0; i < l$hobbies.length; i++) {
      final l$hobbies$entry = l$hobbies[i];
      final lOther$hobbies$entry = lOther$hobbies[i];
      if (l$hobbies$entry != lOther$hobbies$entry) {
        return false;
      }
    }
    return true;
  }
}

extension UtilityExtension$Subscription$watchAllHobbies
    on Subscription$watchAllHobbies {
  CopyWith$Subscription$watchAllHobbies<Subscription$watchAllHobbies>
      get copyWith => CopyWith$Subscription$watchAllHobbies(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$watchAllHobbies<TRes> {
  factory CopyWith$Subscription$watchAllHobbies(
    Subscription$watchAllHobbies instance,
    TRes Function(Subscription$watchAllHobbies) then,
  ) = _CopyWithImpl$Subscription$watchAllHobbies;

  factory CopyWith$Subscription$watchAllHobbies.stub(TRes res) =
      _CopyWithStubImpl$Subscription$watchAllHobbies;

  TRes call({List<Subscription$watchAllHobbies$hobbies>? hobbies});
  TRes hobbies(
      Iterable<Subscription$watchAllHobbies$hobbies> Function(
              Iterable<
                  CopyWith$Subscription$watchAllHobbies$hobbies<
                      Subscription$watchAllHobbies$hobbies>>)
          _fn);
}

class _CopyWithImpl$Subscription$watchAllHobbies<TRes>
    implements CopyWith$Subscription$watchAllHobbies<TRes> {
  _CopyWithImpl$Subscription$watchAllHobbies(
    this._instance,
    this._then,
  );

  final Subscription$watchAllHobbies _instance;

  final TRes Function(Subscription$watchAllHobbies) _then;

  static const _undefined = {};

  TRes call({Object? hobbies = _undefined}) =>
      _then(Subscription$watchAllHobbies(
          hobbies: hobbies == _undefined || hobbies == null
              ? _instance.hobbies
              : (hobbies as List<Subscription$watchAllHobbies$hobbies>)));
  TRes hobbies(
          Iterable<Subscription$watchAllHobbies$hobbies> Function(
                  Iterable<
                      CopyWith$Subscription$watchAllHobbies$hobbies<
                          Subscription$watchAllHobbies$hobbies>>)
              _fn) =>
      call(
          hobbies: _fn(_instance.hobbies
              .map((e) => CopyWith$Subscription$watchAllHobbies$hobbies(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Subscription$watchAllHobbies<TRes>
    implements CopyWith$Subscription$watchAllHobbies<TRes> {
  _CopyWithStubImpl$Subscription$watchAllHobbies(this._res);

  TRes _res;

  call({List<Subscription$watchAllHobbies$hobbies>? hobbies}) => _res;
  hobbies(_fn) => _res;
}

const documentNodeSubscriptionwatchAllHobbies = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'watchAllHobbies'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'where')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'HobbiesBoolExp'),
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
        name: NameNode(value: 'hobbies'),
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

class Subscription$watchAllHobbies$hobbies {
  Subscription$watchAllHobbies$hobbies({
    required this.id,
    required this.name,
    this.color,
    required this.$__typename,
  });

  factory Subscription$watchAllHobbies$hobbies.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    return Subscription$watchAllHobbies$hobbies(
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
    if (!(other is Subscription$watchAllHobbies$hobbies) ||
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

extension UtilityExtension$Subscription$watchAllHobbies$hobbies
    on Subscription$watchAllHobbies$hobbies {
  CopyWith$Subscription$watchAllHobbies$hobbies<
          Subscription$watchAllHobbies$hobbies>
      get copyWith => CopyWith$Subscription$watchAllHobbies$hobbies(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$watchAllHobbies$hobbies<TRes> {
  factory CopyWith$Subscription$watchAllHobbies$hobbies(
    Subscription$watchAllHobbies$hobbies instance,
    TRes Function(Subscription$watchAllHobbies$hobbies) then,
  ) = _CopyWithImpl$Subscription$watchAllHobbies$hobbies;

  factory CopyWith$Subscription$watchAllHobbies$hobbies.stub(TRes res) =
      _CopyWithStubImpl$Subscription$watchAllHobbies$hobbies;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
  });
}

class _CopyWithImpl$Subscription$watchAllHobbies$hobbies<TRes>
    implements CopyWith$Subscription$watchAllHobbies$hobbies<TRes> {
  _CopyWithImpl$Subscription$watchAllHobbies$hobbies(
    this._instance,
    this._then,
  );

  final Subscription$watchAllHobbies$hobbies _instance;

  final TRes Function(Subscription$watchAllHobbies$hobbies) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription$watchAllHobbies$hobbies(
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

class _CopyWithStubImpl$Subscription$watchAllHobbies$hobbies<TRes>
    implements CopyWith$Subscription$watchAllHobbies$hobbies<TRes> {
  _CopyWithStubImpl$Subscription$watchAllHobbies$hobbies(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
  }) =>
      _res;
}
