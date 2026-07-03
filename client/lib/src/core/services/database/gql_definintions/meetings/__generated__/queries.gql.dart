import '../../../../../graphql/__generated__/schema.graphql.dart';
import 'package:church_admin/src/core/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Variables_Query_historyMeetingRoster {
  factory Variables_Query_historyMeetingRoster({
    required UuidValue meetingId,
    List<Input_HistoryMeetingRosterBoolExp>? where,
    List<Input_HistoryMeetingRosterOrderBy>? orderBy,
    int? limit,
  }) => Variables_Query_historyMeetingRoster._({
    r'meetingId': meetingId,
    if (where != null) r'where': where,
    if (orderBy != null) r'orderBy': orderBy,
    if (limit != null) r'limit': limit,
  });

  Variables_Query_historyMeetingRoster._(this._$data);

  factory Variables_Query_historyMeetingRoster.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$meetingId = data['meetingId'];
    result$data['meetingId'] = stringToUuid(l$meetingId);
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = (l$where as List<dynamic>?)
          ?.map(
            (e) => Input_HistoryMeetingRosterBoolExp.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('orderBy')) {
      final l$orderBy = data['orderBy'];
      result$data['orderBy'] = (l$orderBy as List<dynamic>?)
          ?.map(
            (e) => Input_HistoryMeetingRosterOrderBy.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('limit')) {
      final l$limit = data['limit'];
      result$data['limit'] = (l$limit as int?);
    }
    return Variables_Query_historyMeetingRoster._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get meetingId => (_$data['meetingId'] as UuidValue);

  List<Input_HistoryMeetingRosterBoolExp>? get where =>
      (_$data['where'] as List<Input_HistoryMeetingRosterBoolExp>?);

  List<Input_HistoryMeetingRosterOrderBy>? get orderBy =>
      (_$data['orderBy'] as List<Input_HistoryMeetingRosterOrderBy>?);

  int? get limit => (_$data['limit'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$meetingId = meetingId;
    result$data['meetingId'] = uuidToString(l$meetingId);
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

  CopyWith_Variables_Query_historyMeetingRoster<
    Variables_Query_historyMeetingRoster
  >
  get copyWith => CopyWith_Variables_Query_historyMeetingRoster(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Query_historyMeetingRoster ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$meetingId = meetingId;
    final lOther$meetingId = other.meetingId;
    if (l$meetingId != lOther$meetingId) {
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
    final l$meetingId = meetingId;
    final l$where = where;
    final l$orderBy = orderBy;
    final l$limit = limit;
    return Object.hashAll([
      l$meetingId,
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

abstract class CopyWith_Variables_Query_historyMeetingRoster<TRes> {
  factory CopyWith_Variables_Query_historyMeetingRoster(
    Variables_Query_historyMeetingRoster instance,
    TRes Function(Variables_Query_historyMeetingRoster) then,
  ) = _CopyWithImpl_Variables_Query_historyMeetingRoster;

  factory CopyWith_Variables_Query_historyMeetingRoster.stub(TRes res) =
      _CopyWithStubImpl_Variables_Query_historyMeetingRoster;

  TRes call({
    UuidValue? meetingId,
    List<Input_HistoryMeetingRosterBoolExp>? where,
    List<Input_HistoryMeetingRosterOrderBy>? orderBy,
    int? limit,
  });
}

class _CopyWithImpl_Variables_Query_historyMeetingRoster<TRes>
    implements CopyWith_Variables_Query_historyMeetingRoster<TRes> {
  _CopyWithImpl_Variables_Query_historyMeetingRoster(
    this._instance,
    this._then,
  );

  final Variables_Query_historyMeetingRoster _instance;

  final TRes Function(Variables_Query_historyMeetingRoster) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? meetingId = _undefined,
    Object? where = _undefined,
    Object? orderBy = _undefined,
    Object? limit = _undefined,
  }) => _then(
    Variables_Query_historyMeetingRoster._({
      ..._instance._$data,
      if (meetingId != _undefined && meetingId != null)
        'meetingId': (meetingId as UuidValue),
      if (where != _undefined)
        'where': (where as List<Input_HistoryMeetingRosterBoolExp>?),
      if (orderBy != _undefined)
        'orderBy': (orderBy as List<Input_HistoryMeetingRosterOrderBy>?),
      if (limit != _undefined) 'limit': (limit as int?),
    }),
  );
}

class _CopyWithStubImpl_Variables_Query_historyMeetingRoster<TRes>
    implements CopyWith_Variables_Query_historyMeetingRoster<TRes> {
  _CopyWithStubImpl_Variables_Query_historyMeetingRoster(this._res);

  TRes _res;

  call({
    UuidValue? meetingId,
    List<Input_HistoryMeetingRosterBoolExp>? where,
    List<Input_HistoryMeetingRosterOrderBy>? orderBy,
    int? limit,
  }) => _res;
}

class Query_historyMeetingRoster {
  Query_historyMeetingRoster({
    required this.historyMeetingRoster,
    this.$__typename = 'query_root',
  });

  factory Query_historyMeetingRoster.fromJson(Map<String, dynamic> json) {
    final l$historyMeetingRoster = json['historyMeetingRoster'];
    final l$$__typename = json['__typename'];
    return Query_historyMeetingRoster(
      historyMeetingRoster: (l$historyMeetingRoster as List<dynamic>)
          .map(
            (e) => Query_historyMeetingRoster_historyMeetingRoster.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query_historyMeetingRoster_historyMeetingRoster>
  historyMeetingRoster;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$historyMeetingRoster = historyMeetingRoster;
    _resultData['historyMeetingRoster'] = l$historyMeetingRoster
        .map((e) => e.toJson())
        .toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$historyMeetingRoster = historyMeetingRoster;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$historyMeetingRoster.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_historyMeetingRoster ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$historyMeetingRoster = historyMeetingRoster;
    final lOther$historyMeetingRoster = other.historyMeetingRoster;
    if (l$historyMeetingRoster.length != lOther$historyMeetingRoster.length) {
      return false;
    }
    for (int i = 0; i < l$historyMeetingRoster.length; i++) {
      final l$historyMeetingRoster$entry = l$historyMeetingRoster[i];
      final lOther$historyMeetingRoster$entry = lOther$historyMeetingRoster[i];
      if (l$historyMeetingRoster$entry != lOther$historyMeetingRoster$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Query_historyMeetingRoster
    on Query_historyMeetingRoster {
  CopyWith_Query_historyMeetingRoster<Query_historyMeetingRoster>
  get copyWith => CopyWith_Query_historyMeetingRoster(this, (i) => i);
}

abstract class CopyWith_Query_historyMeetingRoster<TRes> {
  factory CopyWith_Query_historyMeetingRoster(
    Query_historyMeetingRoster instance,
    TRes Function(Query_historyMeetingRoster) then,
  ) = _CopyWithImpl_Query_historyMeetingRoster;

  factory CopyWith_Query_historyMeetingRoster.stub(TRes res) =
      _CopyWithStubImpl_Query_historyMeetingRoster;

  TRes call({
    List<Query_historyMeetingRoster_historyMeetingRoster>? historyMeetingRoster,
    String? $__typename,
  });
  TRes historyMeetingRoster(
    Iterable<Query_historyMeetingRoster_historyMeetingRoster> Function(
      Iterable<
        CopyWith_Query_historyMeetingRoster_historyMeetingRoster<
          Query_historyMeetingRoster_historyMeetingRoster
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl_Query_historyMeetingRoster<TRes>
    implements CopyWith_Query_historyMeetingRoster<TRes> {
  _CopyWithImpl_Query_historyMeetingRoster(this._instance, this._then);

  final Query_historyMeetingRoster _instance;

  final TRes Function(Query_historyMeetingRoster) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? historyMeetingRoster = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query_historyMeetingRoster(
      historyMeetingRoster:
          historyMeetingRoster == _undefined || historyMeetingRoster == null
          ? _instance.historyMeetingRoster
          : (historyMeetingRoster
                as List<Query_historyMeetingRoster_historyMeetingRoster>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes historyMeetingRoster(
    Iterable<Query_historyMeetingRoster_historyMeetingRoster> Function(
      Iterable<
        CopyWith_Query_historyMeetingRoster_historyMeetingRoster<
          Query_historyMeetingRoster_historyMeetingRoster
        >
      >,
    )
    _fn,
  ) => call(
    historyMeetingRoster: _fn(
      _instance.historyMeetingRoster.map(
        (e) => CopyWith_Query_historyMeetingRoster_historyMeetingRoster(
          e,
          (i) => i,
        ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl_Query_historyMeetingRoster<TRes>
    implements CopyWith_Query_historyMeetingRoster<TRes> {
  _CopyWithStubImpl_Query_historyMeetingRoster(this._res);

  TRes _res;

  call({
    List<Query_historyMeetingRoster_historyMeetingRoster>? historyMeetingRoster,
    String? $__typename,
  }) => _res;

  historyMeetingRoster(_fn) => _res;
}

const documentNodeQueryhistoryMeetingRoster = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'historyMeetingRoster'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'meetingId')),
          type: NamedTypeNode(name: NameNode(value: 'uuid'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'where')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'HistoryMeetingRosterBoolExp'),
              isNonNull: true,
            ),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: ListValueNode(values: [])),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'orderBy')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'HistoryMeetingRosterOrderBy'),
              isNonNull: true,
            ),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(
            value: ListValueNode(
              values: [
                ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'name'),
                      value: EnumValueNode(name: NameNode(value: 'ASC')),
                    ),
                  ],
                ),
                ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'personId'),
                      value: EnumValueNode(name: NameNode(value: 'ASC')),
                    ),
                  ],
                ),
              ],
            ),
          ),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'limit')),
          type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: false),
          defaultValue: DefaultValueNode(value: IntValueNode(value: '200')),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'historyMeetingRoster'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'where'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'meetingId'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: '_eq'),
                            value: VariableNode(
                              name: NameNode(value: 'meetingId'),
                            ),
                          ),
                        ],
                      ),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: '_and'),
                      value: VariableNode(name: NameNode(value: 'where')),
                    ),
                  ],
                ),
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
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'personId'),
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
                  name: NameNode(value: 'mainPhone'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'gender'),
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
                  name: NameNode(value: 'studyYearId'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'studyYearName'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'photoUpdatedAt'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'blurhash'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'asServant'),
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
              ],
            ),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ],
      ),
    ),
  ],
);

class Query_historyMeetingRoster_historyMeetingRoster {
  Query_historyMeetingRoster_historyMeetingRoster({
    this.personId,
    this.name,
    this.mainPhone,
    this.gender,
    this.color,
    this.studyYearId,
    this.studyYearName,
    this.photoUpdatedAt,
    this.blurhash,
    this.asServant,
    this.$__typename = 'HistoryMeetingRoster',
  });

  factory Query_historyMeetingRoster_historyMeetingRoster.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$personId = json['personId'];
    final l$name = json['name'];
    final l$mainPhone = json['mainPhone'];
    final l$gender = json['gender'];
    final l$color = json['color'];
    final l$studyYearId = json['studyYearId'];
    final l$studyYearName = json['studyYearName'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$blurhash = json['blurhash'];
    final l$asServant = json['asServant'];
    final l$$__typename = json['__typename'];
    return Query_historyMeetingRoster_historyMeetingRoster(
      personId: l$personId == null ? null : stringToUuid(l$personId),
      name: (l$name as String?),
      mainPhone: (l$mainPhone as String?),
      gender: (l$gender as bool?),
      color: (l$color as int?),
      studyYearId: (l$studyYearId as int?),
      studyYearName: (l$studyYearName as String?),
      photoUpdatedAt: l$photoUpdatedAt == null
          ? null
          : tstzFromString(l$photoUpdatedAt),
      blurhash: (l$blurhash as String?),
      asServant: (l$asServant as bool?),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue? personId;

  final String? name;

  final String? mainPhone;

  final bool? gender;

  final int? color;

  final int? studyYearId;

  final String? studyYearName;

  final DateTime? photoUpdatedAt;

  final String? blurhash;

  final bool? asServant;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$personId = personId;
    _resultData['personId'] = l$personId == null
        ? null
        : uuidToString(l$personId);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$mainPhone = mainPhone;
    _resultData['mainPhone'] = l$mainPhone;
    final l$gender = gender;
    _resultData['gender'] = l$gender;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$studyYearId = studyYearId;
    _resultData['studyYearId'] = l$studyYearId;
    final l$studyYearName = studyYearName;
    _resultData['studyYearName'] = l$studyYearName;
    final l$photoUpdatedAt = photoUpdatedAt;
    _resultData['photoUpdatedAt'] = l$photoUpdatedAt == null
        ? null
        : tstzToString(l$photoUpdatedAt);
    final l$blurhash = blurhash;
    _resultData['blurhash'] = l$blurhash;
    final l$asServant = asServant;
    _resultData['asServant'] = l$asServant;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$personId = personId;
    final l$name = name;
    final l$mainPhone = mainPhone;
    final l$gender = gender;
    final l$color = color;
    final l$studyYearId = studyYearId;
    final l$studyYearName = studyYearName;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$blurhash = blurhash;
    final l$asServant = asServant;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$personId,
      l$name,
      l$mainPhone,
      l$gender,
      l$color,
      l$studyYearId,
      l$studyYearName,
      l$photoUpdatedAt,
      l$blurhash,
      l$asServant,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_historyMeetingRoster_historyMeetingRoster ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$personId = personId;
    final lOther$personId = other.personId;
    if (l$personId != lOther$personId) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$mainPhone = mainPhone;
    final lOther$mainPhone = other.mainPhone;
    if (l$mainPhone != lOther$mainPhone) {
      return false;
    }
    final l$gender = gender;
    final lOther$gender = other.gender;
    if (l$gender != lOther$gender) {
      return false;
    }
    final l$color = color;
    final lOther$color = other.color;
    if (l$color != lOther$color) {
      return false;
    }
    final l$studyYearId = studyYearId;
    final lOther$studyYearId = other.studyYearId;
    if (l$studyYearId != lOther$studyYearId) {
      return false;
    }
    final l$studyYearName = studyYearName;
    final lOther$studyYearName = other.studyYearName;
    if (l$studyYearName != lOther$studyYearName) {
      return false;
    }
    final l$photoUpdatedAt = photoUpdatedAt;
    final lOther$photoUpdatedAt = other.photoUpdatedAt;
    if (l$photoUpdatedAt != lOther$photoUpdatedAt) {
      return false;
    }
    final l$blurhash = blurhash;
    final lOther$blurhash = other.blurhash;
    if (l$blurhash != lOther$blurhash) {
      return false;
    }
    final l$asServant = asServant;
    final lOther$asServant = other.asServant;
    if (l$asServant != lOther$asServant) {
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

extension UtilityExtension_Query_historyMeetingRoster_historyMeetingRoster
    on Query_historyMeetingRoster_historyMeetingRoster {
  CopyWith_Query_historyMeetingRoster_historyMeetingRoster<
    Query_historyMeetingRoster_historyMeetingRoster
  >
  get copyWith =>
      CopyWith_Query_historyMeetingRoster_historyMeetingRoster(this, (i) => i);
}

abstract class CopyWith_Query_historyMeetingRoster_historyMeetingRoster<TRes> {
  factory CopyWith_Query_historyMeetingRoster_historyMeetingRoster(
    Query_historyMeetingRoster_historyMeetingRoster instance,
    TRes Function(Query_historyMeetingRoster_historyMeetingRoster) then,
  ) = _CopyWithImpl_Query_historyMeetingRoster_historyMeetingRoster;

  factory CopyWith_Query_historyMeetingRoster_historyMeetingRoster.stub(
    TRes res,
  ) = _CopyWithStubImpl_Query_historyMeetingRoster_historyMeetingRoster;

  TRes call({
    UuidValue? personId,
    String? name,
    String? mainPhone,
    bool? gender,
    int? color,
    int? studyYearId,
    String? studyYearName,
    DateTime? photoUpdatedAt,
    String? blurhash,
    bool? asServant,
    String? $__typename,
  });
}

class _CopyWithImpl_Query_historyMeetingRoster_historyMeetingRoster<TRes>
    implements CopyWith_Query_historyMeetingRoster_historyMeetingRoster<TRes> {
  _CopyWithImpl_Query_historyMeetingRoster_historyMeetingRoster(
    this._instance,
    this._then,
  );

  final Query_historyMeetingRoster_historyMeetingRoster _instance;

  final TRes Function(Query_historyMeetingRoster_historyMeetingRoster) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? personId = _undefined,
    Object? name = _undefined,
    Object? mainPhone = _undefined,
    Object? gender = _undefined,
    Object? color = _undefined,
    Object? studyYearId = _undefined,
    Object? studyYearName = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? blurhash = _undefined,
    Object? asServant = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query_historyMeetingRoster_historyMeetingRoster(
      personId: personId == _undefined
          ? _instance.personId
          : (personId as UuidValue?),
      name: name == _undefined ? _instance.name : (name as String?),
      mainPhone: mainPhone == _undefined
          ? _instance.mainPhone
          : (mainPhone as String?),
      gender: gender == _undefined ? _instance.gender : (gender as bool?),
      color: color == _undefined ? _instance.color : (color as int?),
      studyYearId: studyYearId == _undefined
          ? _instance.studyYearId
          : (studyYearId as int?),
      studyYearName: studyYearName == _undefined
          ? _instance.studyYearName
          : (studyYearName as String?),
      photoUpdatedAt: photoUpdatedAt == _undefined
          ? _instance.photoUpdatedAt
          : (photoUpdatedAt as DateTime?),
      blurhash: blurhash == _undefined
          ? _instance.blurhash
          : (blurhash as String?),
      asServant: asServant == _undefined
          ? _instance.asServant
          : (asServant as bool?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Query_historyMeetingRoster_historyMeetingRoster<TRes>
    implements CopyWith_Query_historyMeetingRoster_historyMeetingRoster<TRes> {
  _CopyWithStubImpl_Query_historyMeetingRoster_historyMeetingRoster(this._res);

  TRes _res;

  call({
    UuidValue? personId,
    String? name,
    String? mainPhone,
    bool? gender,
    int? color,
    int? studyYearId,
    String? studyYearName,
    DateTime? photoUpdatedAt,
    String? blurhash,
    bool? asServant,
    String? $__typename,
  }) => _res;
}
