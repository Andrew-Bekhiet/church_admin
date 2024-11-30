import '../../../../../../graphql/__generated__/schema.graphql.dart';
import 'package:church_admin/src/core/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Variables_Subscription_watchAllJobs {
  factory Variables_Subscription_watchAllJobs({
    List<Input_JobsBoolExp>? where,
    List<Input_JobsOrderBy>? orderBy,
    int? limit,
  }) =>
      Variables_Subscription_watchAllJobs._({
        if (where != null) r'where': where,
        if (orderBy != null) r'orderBy': orderBy,
        if (limit != null) r'limit': limit,
      });

  Variables_Subscription_watchAllJobs._(this._$data);

  factory Variables_Subscription_watchAllJobs.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = (l$where as List<dynamic>?)
          ?.map((e) => Input_JobsBoolExp.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('orderBy')) {
      final l$orderBy = data['orderBy'];
      result$data['orderBy'] = (l$orderBy as List<dynamic>?)
          ?.map((e) => Input_JobsOrderBy.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('limit')) {
      final l$limit = data['limit'];
      result$data['limit'] = (l$limit as int?);
    }
    return Variables_Subscription_watchAllJobs._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_JobsBoolExp>? get where =>
      (_$data['where'] as List<Input_JobsBoolExp>?);

  List<Input_JobsOrderBy>? get orderBy =>
      (_$data['orderBy'] as List<Input_JobsOrderBy>?);

  int? get limit => (_$data['limit'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('orderBy')) {
      final l$orderBy = orderBy;
      result$data['orderBy'] = l$orderBy?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('limit')) {
      final l$limit = limit;
      result$data['limit'] = l$limit;
    }
    return result$data;
  }

  CopyWith_Variables_Subscription_watchAllJobs<
          Variables_Subscription_watchAllJobs>
      get copyWith => CopyWith_Variables_Subscription_watchAllJobs(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables_Subscription_watchAllJobs) ||
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
    final l$orderBy = orderBy;
    final lOther$orderBy = other.orderBy;
    if (_$data.containsKey('orderBy') != other._$data.containsKey('orderBy')) {
      return false;
    }
    if (l$orderBy != null && lOther$orderBy != null) {
      if (l$orderBy.length != lOther$orderBy.length) {
        return false;
      }
      for (int i = 0; i < l$orderBy.length; i++) {
        final l$orderBy$entry = l$orderBy[i];
        final lOther$orderBy$entry = lOther$orderBy[i];
        if (l$orderBy$entry != lOther$orderBy$entry) {
          return false;
        }
      }
    } else if (l$orderBy != lOther$orderBy) {
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
    final l$orderBy = orderBy;
    final l$limit = limit;
    return Object.hashAll([
      _$data.containsKey('where')
          ? l$where == null
              ? null
              : Object.hashAll(l$where.map((v) => v))
          : const {},
      _$data.containsKey('orderBy')
          ? l$orderBy == null
              ? null
              : Object.hashAll(l$orderBy.map((v) => v))
          : const {},
      _$data.containsKey('limit') ? l$limit : const {},
    ]);
  }
}

abstract class CopyWith_Variables_Subscription_watchAllJobs<TRes> {
  factory CopyWith_Variables_Subscription_watchAllJobs(
    Variables_Subscription_watchAllJobs instance,
    TRes Function(Variables_Subscription_watchAllJobs) then,
  ) = _CopyWithImpl_Variables_Subscription_watchAllJobs;

  factory CopyWith_Variables_Subscription_watchAllJobs.stub(TRes res) =
      _CopyWithStubImpl_Variables_Subscription_watchAllJobs;

  TRes call({
    List<Input_JobsBoolExp>? where,
    List<Input_JobsOrderBy>? orderBy,
    int? limit,
  });
}

class _CopyWithImpl_Variables_Subscription_watchAllJobs<TRes>
    implements CopyWith_Variables_Subscription_watchAllJobs<TRes> {
  _CopyWithImpl_Variables_Subscription_watchAllJobs(
    this._instance,
    this._then,
  );

  final Variables_Subscription_watchAllJobs _instance;

  final TRes Function(Variables_Subscription_watchAllJobs) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? where = _undefined,
    Object? orderBy = _undefined,
    Object? limit = _undefined,
  }) =>
      _then(Variables_Subscription_watchAllJobs._({
        ..._instance._$data,
        if (where != _undefined) 'where': (where as List<Input_JobsBoolExp>?),
        if (orderBy != _undefined)
          'orderBy': (orderBy as List<Input_JobsOrderBy>?),
        if (limit != _undefined) 'limit': (limit as int?),
      }));
}

class _CopyWithStubImpl_Variables_Subscription_watchAllJobs<TRes>
    implements CopyWith_Variables_Subscription_watchAllJobs<TRes> {
  _CopyWithStubImpl_Variables_Subscription_watchAllJobs(this._res);

  TRes _res;

  call({
    List<Input_JobsBoolExp>? where,
    List<Input_JobsOrderBy>? orderBy,
    int? limit,
  }) =>
      _res;
}

class Subscription_watchAllJobs {
  Subscription_watchAllJobs({required this.jobs});

  factory Subscription_watchAllJobs.fromJson(Map<String, dynamic> json) {
    final l$jobs = json['jobs'];
    return Subscription_watchAllJobs(
        jobs: (l$jobs as List<dynamic>)
            .map((e) => Subscription_watchAllJobs_jobs.fromJson(
                (e as Map<String, dynamic>)))
            .toList());
  }

  final List<Subscription_watchAllJobs_jobs> jobs;

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
    if (!(other is Subscription_watchAllJobs) ||
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

extension UtilityExtension_Subscription_watchAllJobs
    on Subscription_watchAllJobs {
  CopyWith_Subscription_watchAllJobs<Subscription_watchAllJobs> get copyWith =>
      CopyWith_Subscription_watchAllJobs(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Subscription_watchAllJobs<TRes> {
  factory CopyWith_Subscription_watchAllJobs(
    Subscription_watchAllJobs instance,
    TRes Function(Subscription_watchAllJobs) then,
  ) = _CopyWithImpl_Subscription_watchAllJobs;

  factory CopyWith_Subscription_watchAllJobs.stub(TRes res) =
      _CopyWithStubImpl_Subscription_watchAllJobs;

  TRes call({List<Subscription_watchAllJobs_jobs>? jobs});
  TRes jobs(
      Iterable<Subscription_watchAllJobs_jobs> Function(
              Iterable<
                  CopyWith_Subscription_watchAllJobs_jobs<
                      Subscription_watchAllJobs_jobs>>)
          _fn);
}

class _CopyWithImpl_Subscription_watchAllJobs<TRes>
    implements CopyWith_Subscription_watchAllJobs<TRes> {
  _CopyWithImpl_Subscription_watchAllJobs(
    this._instance,
    this._then,
  );

  final Subscription_watchAllJobs _instance;

  final TRes Function(Subscription_watchAllJobs) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? jobs = _undefined}) => _then(Subscription_watchAllJobs(
      jobs: jobs == _undefined || jobs == null
          ? _instance.jobs
          : (jobs as List<Subscription_watchAllJobs_jobs>)));

  TRes jobs(
          Iterable<Subscription_watchAllJobs_jobs> Function(
                  Iterable<
                      CopyWith_Subscription_watchAllJobs_jobs<
                          Subscription_watchAllJobs_jobs>>)
              _fn) =>
      call(
          jobs: _fn(
              _instance.jobs.map((e) => CopyWith_Subscription_watchAllJobs_jobs(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl_Subscription_watchAllJobs<TRes>
    implements CopyWith_Subscription_watchAllJobs<TRes> {
  _CopyWithStubImpl_Subscription_watchAllJobs(this._res);

  TRes _res;

  call({List<Subscription_watchAllJobs_jobs>? jobs}) => _res;

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
        variable: VariableNode(name: NameNode(value: 'orderBy')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'JobsOrderBy'),
            isNonNull: true,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(
            value: ObjectValueNode(fields: [
          ObjectFieldNode(
            name: NameNode(value: 'name'),
            value: EnumValueNode(name: NameNode(value: 'ASC')),
          )
        ])),
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
            value: VariableNode(name: NameNode(value: 'orderBy')),
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

class Subscription_watchAllJobs_jobs {
  Subscription_watchAllJobs_jobs({
    required this.id,
    required this.name,
    this.$__typename = 'Jobs',
  });

  factory Subscription_watchAllJobs_jobs.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Subscription_watchAllJobs_jobs(
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
    if (!(other is Subscription_watchAllJobs_jobs) ||
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

extension UtilityExtension_Subscription_watchAllJobs_jobs
    on Subscription_watchAllJobs_jobs {
  CopyWith_Subscription_watchAllJobs_jobs<Subscription_watchAllJobs_jobs>
      get copyWith => CopyWith_Subscription_watchAllJobs_jobs(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Subscription_watchAllJobs_jobs<TRes> {
  factory CopyWith_Subscription_watchAllJobs_jobs(
    Subscription_watchAllJobs_jobs instance,
    TRes Function(Subscription_watchAllJobs_jobs) then,
  ) = _CopyWithImpl_Subscription_watchAllJobs_jobs;

  factory CopyWith_Subscription_watchAllJobs_jobs.stub(TRes res) =
      _CopyWithStubImpl_Subscription_watchAllJobs_jobs;

  TRes call({
    UuidValue? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl_Subscription_watchAllJobs_jobs<TRes>
    implements CopyWith_Subscription_watchAllJobs_jobs<TRes> {
  _CopyWithImpl_Subscription_watchAllJobs_jobs(
    this._instance,
    this._then,
  );

  final Subscription_watchAllJobs_jobs _instance;

  final TRes Function(Subscription_watchAllJobs_jobs) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription_watchAllJobs_jobs(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Subscription_watchAllJobs_jobs<TRes>
    implements CopyWith_Subscription_watchAllJobs_jobs<TRes> {
  _CopyWithStubImpl_Subscription_watchAllJobs_jobs(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}
