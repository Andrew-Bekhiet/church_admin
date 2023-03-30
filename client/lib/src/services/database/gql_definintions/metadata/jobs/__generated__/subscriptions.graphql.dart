import '../../../../../../../graphql/__generated__/schema.graphql.dart';
import 'package:church_admin/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Variables$Subscription$watchAllJobs {
  factory Variables$Subscription$watchAllJobs({
    List<Input$JobsBoolExp>? where,
    int? limit,
  }) =>
      Variables$Subscription$watchAllJobs._({
        if (where != null) r'where': where,
        if (limit != null) r'limit': limit,
      });

  Variables$Subscription$watchAllJobs._(this._$data);

  factory Variables$Subscription$watchAllJobs.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = (l$where as List<dynamic>?)
          ?.map((e) => Input$JobsBoolExp.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('limit')) {
      final l$limit = data['limit'];
      result$data['limit'] = (l$limit as int?);
    }
    return Variables$Subscription$watchAllJobs._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$JobsBoolExp>? get where =>
      (_$data['where'] as List<Input$JobsBoolExp>?);
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

  CopyWith$Variables$Subscription$watchAllJobs<
          Variables$Subscription$watchAllJobs>
      get copyWith => CopyWith$Variables$Subscription$watchAllJobs(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Subscription$watchAllJobs) ||
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

abstract class CopyWith$Variables$Subscription$watchAllJobs<TRes> {
  factory CopyWith$Variables$Subscription$watchAllJobs(
    Variables$Subscription$watchAllJobs instance,
    TRes Function(Variables$Subscription$watchAllJobs) then,
  ) = _CopyWithImpl$Variables$Subscription$watchAllJobs;

  factory CopyWith$Variables$Subscription$watchAllJobs.stub(TRes res) =
      _CopyWithStubImpl$Variables$Subscription$watchAllJobs;

  TRes call({
    List<Input$JobsBoolExp>? where,
    int? limit,
  });
}

class _CopyWithImpl$Variables$Subscription$watchAllJobs<TRes>
    implements CopyWith$Variables$Subscription$watchAllJobs<TRes> {
  _CopyWithImpl$Variables$Subscription$watchAllJobs(
    this._instance,
    this._then,
  );

  final Variables$Subscription$watchAllJobs _instance;

  final TRes Function(Variables$Subscription$watchAllJobs) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? where = _undefined,
    Object? limit = _undefined,
  }) =>
      _then(Variables$Subscription$watchAllJobs._({
        ..._instance._$data,
        if (where != _undefined) 'where': (where as List<Input$JobsBoolExp>?),
        if (limit != _undefined) 'limit': (limit as int?),
      }));
}

class _CopyWithStubImpl$Variables$Subscription$watchAllJobs<TRes>
    implements CopyWith$Variables$Subscription$watchAllJobs<TRes> {
  _CopyWithStubImpl$Variables$Subscription$watchAllJobs(this._res);

  TRes _res;

  call({
    List<Input$JobsBoolExp>? where,
    int? limit,
  }) =>
      _res;
}

class Subscription$watchAllJobs {
  Subscription$watchAllJobs({required this.jobs});

  factory Subscription$watchAllJobs.fromJson(Map<String, dynamic> json) {
    final l$jobs = json['jobs'];
    return Subscription$watchAllJobs(
        jobs: (l$jobs as List<dynamic>)
            .map((e) => Subscription$watchAllJobs$jobs.fromJson(
                (e as Map<String, dynamic>)))
            .toList());
  }

  final List<Subscription$watchAllJobs$jobs> jobs;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$jobs = jobs;
    _resultData['jobs'] = l$jobs.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$jobs = jobs;
    return Object.hashAll([Object.hashAll(l$jobs.map((v) => v))]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$watchAllJobs) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$jobs = jobs;
    final lOther$jobs = other.jobs;
    if (l$jobs.length != lOther$jobs.length) {
      return false;
    }
    for (int i = 0; i < l$jobs.length; i++) {
      final l$jobs$entry = l$jobs[i];
      final lOther$jobs$entry = lOther$jobs[i];
      if (l$jobs$entry != lOther$jobs$entry) {
        return false;
      }
    }
    return true;
  }
}

extension UtilityExtension$Subscription$watchAllJobs
    on Subscription$watchAllJobs {
  CopyWith$Subscription$watchAllJobs<Subscription$watchAllJobs> get copyWith =>
      CopyWith$Subscription$watchAllJobs(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Subscription$watchAllJobs<TRes> {
  factory CopyWith$Subscription$watchAllJobs(
    Subscription$watchAllJobs instance,
    TRes Function(Subscription$watchAllJobs) then,
  ) = _CopyWithImpl$Subscription$watchAllJobs;

  factory CopyWith$Subscription$watchAllJobs.stub(TRes res) =
      _CopyWithStubImpl$Subscription$watchAllJobs;

  TRes call({List<Subscription$watchAllJobs$jobs>? jobs});
  TRes jobs(
      Iterable<Subscription$watchAllJobs$jobs> Function(
              Iterable<
                  CopyWith$Subscription$watchAllJobs$jobs<
                      Subscription$watchAllJobs$jobs>>)
          _fn);
}

class _CopyWithImpl$Subscription$watchAllJobs<TRes>
    implements CopyWith$Subscription$watchAllJobs<TRes> {
  _CopyWithImpl$Subscription$watchAllJobs(
    this._instance,
    this._then,
  );

  final Subscription$watchAllJobs _instance;

  final TRes Function(Subscription$watchAllJobs) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? jobs = _undefined}) => _then(Subscription$watchAllJobs(
      jobs: jobs == _undefined || jobs == null
          ? _instance.jobs
          : (jobs as List<Subscription$watchAllJobs$jobs>)));
  TRes jobs(
          Iterable<Subscription$watchAllJobs$jobs> Function(
                  Iterable<
                      CopyWith$Subscription$watchAllJobs$jobs<
                          Subscription$watchAllJobs$jobs>>)
              _fn) =>
      call(
          jobs: _fn(
              _instance.jobs.map((e) => CopyWith$Subscription$watchAllJobs$jobs(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Subscription$watchAllJobs<TRes>
    implements CopyWith$Subscription$watchAllJobs<TRes> {
  _CopyWithStubImpl$Subscription$watchAllJobs(this._res);

  TRes _res;

  call({List<Subscription$watchAllJobs$jobs>? jobs}) => _res;
  jobs(_fn) => _res;
}

const documentNodeSubscriptionwatchAllJobs = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'watchAllJobs'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'where')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'JobsBoolExp'),
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
        name: NameNode(value: 'jobs'),
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

class Subscription$watchAllJobs$jobs {
  Subscription$watchAllJobs$jobs({
    required this.id,
    required this.name,
    this.$__typename = 'Jobs',
  });

  factory Subscription$watchAllJobs$jobs.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Subscription$watchAllJobs$jobs(
      id: stringToUuid(l$id),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$watchAllJobs$jobs) ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Subscription$watchAllJobs$jobs
    on Subscription$watchAllJobs$jobs {
  CopyWith$Subscription$watchAllJobs$jobs<Subscription$watchAllJobs$jobs>
      get copyWith => CopyWith$Subscription$watchAllJobs$jobs(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$watchAllJobs$jobs<TRes> {
  factory CopyWith$Subscription$watchAllJobs$jobs(
    Subscription$watchAllJobs$jobs instance,
    TRes Function(Subscription$watchAllJobs$jobs) then,
  ) = _CopyWithImpl$Subscription$watchAllJobs$jobs;

  factory CopyWith$Subscription$watchAllJobs$jobs.stub(TRes res) =
      _CopyWithStubImpl$Subscription$watchAllJobs$jobs;

  TRes call({
    UuidValue? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Subscription$watchAllJobs$jobs<TRes>
    implements CopyWith$Subscription$watchAllJobs$jobs<TRes> {
  _CopyWithImpl$Subscription$watchAllJobs$jobs(
    this._instance,
    this._then,
  );

  final Subscription$watchAllJobs$jobs _instance;

  final TRes Function(Subscription$watchAllJobs$jobs) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription$watchAllJobs$jobs(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Subscription$watchAllJobs$jobs<TRes>
    implements CopyWith$Subscription$watchAllJobs$jobs<TRes> {
  _CopyWithStubImpl$Subscription$watchAllJobs$jobs(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}
