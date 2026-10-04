import '../../../../../graphql/__generated__/schema.graphql.dart';
import '../../groups/__generated__/fragments.gql.dart';
import '../../metadata/study_years/__generated__/fragments.gql.dart';
import '../../services/__generated__/fragments.gql.dart';
import 'fragments.gql.dart';
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
  Query_historyMeetingRoster({required this.historyMeetingRoster});

  factory Query_historyMeetingRoster.fromJson(Map<String, dynamic> json) {
    final l$historyMeetingRoster = json['historyMeetingRoster'];
    return Query_historyMeetingRoster(
      historyMeetingRoster: (l$historyMeetingRoster as List<dynamic>)
          .map(
            (e) => Query_historyMeetingRoster_historyMeetingRoster.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
    );
  }

  final List<Query_historyMeetingRoster_historyMeetingRoster>
  historyMeetingRoster;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$historyMeetingRoster = historyMeetingRoster;
    _resultData['historyMeetingRoster'] = l$historyMeetingRoster
        .map((e) => e.toJson())
        .toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$historyMeetingRoster = historyMeetingRoster;
    return Object.hashAll([
      Object.hashAll(l$historyMeetingRoster.map((v) => v)),
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

  TRes call({Object? historyMeetingRoster = _undefined}) => _then(
    Query_historyMeetingRoster(
      historyMeetingRoster:
          historyMeetingRoster == _undefined || historyMeetingRoster == null
          ? _instance.historyMeetingRoster
          : (historyMeetingRoster
                as List<Query_historyMeetingRoster_historyMeetingRoster>),
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
                  name: NameNode(value: 'meetingId'),
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
                  name: NameNode(value: 'person'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'id'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'contacts'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'id'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'phone'),
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
                        name: NameNode(value: 'familyContacts'),
                        alias: null,
                        arguments: [
                          ArgumentNode(
                            name: NameNode(value: 'where'),
                            value: ObjectValueNode(
                              fields: [
                                ObjectFieldNode(
                                  name: NameNode(value: 'personType'),
                                  value: ObjectValueNode(
                                    fields: [
                                      ObjectFieldNode(
                                        name: NameNode(value: 'isFamilyAdmin'),
                                        value: ObjectValueNode(
                                          fields: [
                                            ObjectFieldNode(
                                              name: NameNode(value: '_eq'),
                                              value: BooleanValueNode(
                                                value: true,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'id'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'phone'),
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
        ],
      ),
    ),
  ],
);

class Query_historyMeetingRoster_historyMeetingRoster {
  Query_historyMeetingRoster_historyMeetingRoster({
    this.personId,
    this.meetingId,
    this.name,
    this.person,
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
    final l$meetingId = json['meetingId'];
    final l$name = json['name'];
    final l$person = json['person'];
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
      meetingId: l$meetingId == null ? null : stringToUuid(l$meetingId),
      name: (l$name as String?),
      person: l$person == null
          ? null
          : Query_historyMeetingRoster_historyMeetingRoster_person.fromJson(
              (l$person as Map<String, dynamic>),
            ),
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

  final UuidValue? meetingId;

  final String? name;

  final Query_historyMeetingRoster_historyMeetingRoster_person? person;

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
    final l$meetingId = meetingId;
    _resultData['meetingId'] = l$meetingId == null
        ? null
        : uuidToString(l$meetingId);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$person = person;
    _resultData['person'] = l$person?.toJson();
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
    final l$meetingId = meetingId;
    final l$name = name;
    final l$person = person;
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
      l$meetingId,
      l$name,
      l$person,
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
    final l$meetingId = meetingId;
    final lOther$meetingId = other.meetingId;
    if (l$meetingId != lOther$meetingId) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$person = person;
    final lOther$person = other.person;
    if (l$person != lOther$person) {
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
    UuidValue? meetingId,
    String? name,
    Query_historyMeetingRoster_historyMeetingRoster_person? person,
    bool? gender,
    int? color,
    int? studyYearId,
    String? studyYearName,
    DateTime? photoUpdatedAt,
    String? blurhash,
    bool? asServant,
    String? $__typename,
  });
  CopyWith_Query_historyMeetingRoster_historyMeetingRoster_person<TRes>
  get person;
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
    Object? meetingId = _undefined,
    Object? name = _undefined,
    Object? person = _undefined,
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
      meetingId: meetingId == _undefined
          ? _instance.meetingId
          : (meetingId as UuidValue?),
      name: name == _undefined ? _instance.name : (name as String?),
      person: person == _undefined
          ? _instance.person
          : (person as Query_historyMeetingRoster_historyMeetingRoster_person?),
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

  CopyWith_Query_historyMeetingRoster_historyMeetingRoster_person<TRes>
  get person {
    final local$person = _instance.person;
    return local$person == null
        ? CopyWith_Query_historyMeetingRoster_historyMeetingRoster_person.stub(
            _then(_instance),
          )
        : CopyWith_Query_historyMeetingRoster_historyMeetingRoster_person(
            local$person,
            (e) => call(person: e),
          );
  }
}

class _CopyWithStubImpl_Query_historyMeetingRoster_historyMeetingRoster<TRes>
    implements CopyWith_Query_historyMeetingRoster_historyMeetingRoster<TRes> {
  _CopyWithStubImpl_Query_historyMeetingRoster_historyMeetingRoster(this._res);

  TRes _res;

  call({
    UuidValue? personId,
    UuidValue? meetingId,
    String? name,
    Query_historyMeetingRoster_historyMeetingRoster_person? person,
    bool? gender,
    int? color,
    int? studyYearId,
    String? studyYearName,
    DateTime? photoUpdatedAt,
    String? blurhash,
    bool? asServant,
    String? $__typename,
  }) => _res;

  CopyWith_Query_historyMeetingRoster_historyMeetingRoster_person<TRes>
  get person =>
      CopyWith_Query_historyMeetingRoster_historyMeetingRoster_person.stub(
        _res,
      );
}

class Query_historyMeetingRoster_historyMeetingRoster_person {
  Query_historyMeetingRoster_historyMeetingRoster_person({
    required this.id,
    required this.contacts,
    required this.familyContacts,
    this.$__typename = 'Persons',
  });

  factory Query_historyMeetingRoster_historyMeetingRoster_person.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$contacts = json['contacts'];
    final l$familyContacts = json['familyContacts'];
    final l$$__typename = json['__typename'];
    return Query_historyMeetingRoster_historyMeetingRoster_person(
      id: stringToUuid(l$id),
      contacts: (l$contacts as List<dynamic>)
          .map(
            (e) =>
                Query_historyMeetingRoster_historyMeetingRoster_person_contacts.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      familyContacts: (l$familyContacts as List<dynamic>)
          .map(
            (e) =>
                Query_historyMeetingRoster_historyMeetingRoster_person_familyContacts.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final List<Query_historyMeetingRoster_historyMeetingRoster_person_contacts>
  contacts;

  final List<
    Query_historyMeetingRoster_historyMeetingRoster_person_familyContacts
  >
  familyContacts;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$contacts = contacts;
    _resultData['contacts'] = l$contacts.map((e) => e.toJson()).toList();
    final l$familyContacts = familyContacts;
    _resultData['familyContacts'] = l$familyContacts
        .map((e) => e.toJson())
        .toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$contacts = contacts;
    final l$familyContacts = familyContacts;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      Object.hashAll(l$contacts.map((v) => v)),
      Object.hashAll(l$familyContacts.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_historyMeetingRoster_historyMeetingRoster_person ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$contacts = contacts;
    final lOther$contacts = other.contacts;
    if (l$contacts.length != lOther$contacts.length) {
      return false;
    }
    for (int i = 0; i < l$contacts.length; i++) {
      final l$contacts$entry = l$contacts[i];
      final lOther$contacts$entry = lOther$contacts[i];
      if (l$contacts$entry != lOther$contacts$entry) {
        return false;
      }
    }
    final l$familyContacts = familyContacts;
    final lOther$familyContacts = other.familyContacts;
    if (l$familyContacts.length != lOther$familyContacts.length) {
      return false;
    }
    for (int i = 0; i < l$familyContacts.length; i++) {
      final l$familyContacts$entry = l$familyContacts[i];
      final lOther$familyContacts$entry = lOther$familyContacts[i];
      if (l$familyContacts$entry != lOther$familyContacts$entry) {
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

extension UtilityExtension_Query_historyMeetingRoster_historyMeetingRoster_person
    on Query_historyMeetingRoster_historyMeetingRoster_person {
  CopyWith_Query_historyMeetingRoster_historyMeetingRoster_person<
    Query_historyMeetingRoster_historyMeetingRoster_person
  >
  get copyWith =>
      CopyWith_Query_historyMeetingRoster_historyMeetingRoster_person(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Query_historyMeetingRoster_historyMeetingRoster_person<
  TRes
> {
  factory CopyWith_Query_historyMeetingRoster_historyMeetingRoster_person(
    Query_historyMeetingRoster_historyMeetingRoster_person instance,
    TRes Function(Query_historyMeetingRoster_historyMeetingRoster_person) then,
  ) = _CopyWithImpl_Query_historyMeetingRoster_historyMeetingRoster_person;

  factory CopyWith_Query_historyMeetingRoster_historyMeetingRoster_person.stub(
    TRes res,
  ) = _CopyWithStubImpl_Query_historyMeetingRoster_historyMeetingRoster_person;

  TRes call({
    UuidValue? id,
    List<Query_historyMeetingRoster_historyMeetingRoster_person_contacts>?
    contacts,
    List<Query_historyMeetingRoster_historyMeetingRoster_person_familyContacts>?
    familyContacts,
    String? $__typename,
  });
  TRes contacts(
    Iterable<Query_historyMeetingRoster_historyMeetingRoster_person_contacts>
    Function(
      Iterable<
        CopyWith_Query_historyMeetingRoster_historyMeetingRoster_person_contacts<
          Query_historyMeetingRoster_historyMeetingRoster_person_contacts
        >
      >,
    )
    _fn,
  );
  TRes familyContacts(
    Iterable<
      Query_historyMeetingRoster_historyMeetingRoster_person_familyContacts
    >
    Function(
      Iterable<
        CopyWith_Query_historyMeetingRoster_historyMeetingRoster_person_familyContacts<
          Query_historyMeetingRoster_historyMeetingRoster_person_familyContacts
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl_Query_historyMeetingRoster_historyMeetingRoster_person<TRes>
    implements
        CopyWith_Query_historyMeetingRoster_historyMeetingRoster_person<TRes> {
  _CopyWithImpl_Query_historyMeetingRoster_historyMeetingRoster_person(
    this._instance,
    this._then,
  );

  final Query_historyMeetingRoster_historyMeetingRoster_person _instance;

  final TRes Function(Query_historyMeetingRoster_historyMeetingRoster_person)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? contacts = _undefined,
    Object? familyContacts = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query_historyMeetingRoster_historyMeetingRoster_person(
      id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
      contacts: contacts == _undefined || contacts == null
          ? _instance.contacts
          : (contacts
                as List<
                  Query_historyMeetingRoster_historyMeetingRoster_person_contacts
                >),
      familyContacts: familyContacts == _undefined || familyContacts == null
          ? _instance.familyContacts
          : (familyContacts
                as List<
                  Query_historyMeetingRoster_historyMeetingRoster_person_familyContacts
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes contacts(
    Iterable<Query_historyMeetingRoster_historyMeetingRoster_person_contacts>
    Function(
      Iterable<
        CopyWith_Query_historyMeetingRoster_historyMeetingRoster_person_contacts<
          Query_historyMeetingRoster_historyMeetingRoster_person_contacts
        >
      >,
    )
    _fn,
  ) => call(
    contacts: _fn(
      _instance.contacts.map(
        (e) =>
            CopyWith_Query_historyMeetingRoster_historyMeetingRoster_person_contacts(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );

  TRes familyContacts(
    Iterable<
      Query_historyMeetingRoster_historyMeetingRoster_person_familyContacts
    >
    Function(
      Iterable<
        CopyWith_Query_historyMeetingRoster_historyMeetingRoster_person_familyContacts<
          Query_historyMeetingRoster_historyMeetingRoster_person_familyContacts
        >
      >,
    )
    _fn,
  ) => call(
    familyContacts: _fn(
      _instance.familyContacts.map(
        (e) =>
            CopyWith_Query_historyMeetingRoster_historyMeetingRoster_person_familyContacts(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl_Query_historyMeetingRoster_historyMeetingRoster_person<
  TRes
>
    implements
        CopyWith_Query_historyMeetingRoster_historyMeetingRoster_person<TRes> {
  _CopyWithStubImpl_Query_historyMeetingRoster_historyMeetingRoster_person(
    this._res,
  );

  TRes _res;

  call({
    UuidValue? id,
    List<Query_historyMeetingRoster_historyMeetingRoster_person_contacts>?
    contacts,
    List<Query_historyMeetingRoster_historyMeetingRoster_person_familyContacts>?
    familyContacts,
    String? $__typename,
  }) => _res;

  contacts(_fn) => _res;

  familyContacts(_fn) => _res;
}

class Query_historyMeetingRoster_historyMeetingRoster_person_contacts {
  Query_historyMeetingRoster_historyMeetingRoster_person_contacts({
    required this.id,
    required this.phone,
    this.$__typename = 'Contacts',
  });

  factory Query_historyMeetingRoster_historyMeetingRoster_person_contacts.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$phone = json['phone'];
    final l$$__typename = json['__typename'];
    return Query_historyMeetingRoster_historyMeetingRoster_person_contacts(
      id: stringToUuid(l$id),
      phone: (l$phone as String),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final String phone;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$phone = phone;
    _resultData['phone'] = l$phone;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$phone = phone;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$phone, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query_historyMeetingRoster_historyMeetingRoster_person_contacts ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$phone = phone;
    final lOther$phone = other.phone;
    if (l$phone != lOther$phone) {
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

extension UtilityExtension_Query_historyMeetingRoster_historyMeetingRoster_person_contacts
    on Query_historyMeetingRoster_historyMeetingRoster_person_contacts {
  CopyWith_Query_historyMeetingRoster_historyMeetingRoster_person_contacts<
    Query_historyMeetingRoster_historyMeetingRoster_person_contacts
  >
  get copyWith =>
      CopyWith_Query_historyMeetingRoster_historyMeetingRoster_person_contacts(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Query_historyMeetingRoster_historyMeetingRoster_person_contacts<
  TRes
> {
  factory CopyWith_Query_historyMeetingRoster_historyMeetingRoster_person_contacts(
    Query_historyMeetingRoster_historyMeetingRoster_person_contacts instance,
    TRes Function(
      Query_historyMeetingRoster_historyMeetingRoster_person_contacts,
    )
    then,
  ) = _CopyWithImpl_Query_historyMeetingRoster_historyMeetingRoster_person_contacts;

  factory CopyWith_Query_historyMeetingRoster_historyMeetingRoster_person_contacts.stub(
    TRes res,
  ) = _CopyWithStubImpl_Query_historyMeetingRoster_historyMeetingRoster_person_contacts;

  TRes call({UuidValue? id, String? phone, String? $__typename});
}

class _CopyWithImpl_Query_historyMeetingRoster_historyMeetingRoster_person_contacts<
  TRes
>
    implements
        CopyWith_Query_historyMeetingRoster_historyMeetingRoster_person_contacts<
          TRes
        > {
  _CopyWithImpl_Query_historyMeetingRoster_historyMeetingRoster_person_contacts(
    this._instance,
    this._then,
  );

  final Query_historyMeetingRoster_historyMeetingRoster_person_contacts
  _instance;

  final TRes Function(
    Query_historyMeetingRoster_historyMeetingRoster_person_contacts,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? phone = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query_historyMeetingRoster_historyMeetingRoster_person_contacts(
      id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
      phone: phone == _undefined || phone == null
          ? _instance.phone
          : (phone as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Query_historyMeetingRoster_historyMeetingRoster_person_contacts<
  TRes
>
    implements
        CopyWith_Query_historyMeetingRoster_historyMeetingRoster_person_contacts<
          TRes
        > {
  _CopyWithStubImpl_Query_historyMeetingRoster_historyMeetingRoster_person_contacts(
    this._res,
  );

  TRes _res;

  call({UuidValue? id, String? phone, String? $__typename}) => _res;
}

class Query_historyMeetingRoster_historyMeetingRoster_person_familyContacts {
  Query_historyMeetingRoster_historyMeetingRoster_person_familyContacts({
    this.id,
    this.phone,
    this.$__typename = 'ResolvedContacts',
  });

  factory Query_historyMeetingRoster_historyMeetingRoster_person_familyContacts.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$phone = json['phone'];
    final l$$__typename = json['__typename'];
    return Query_historyMeetingRoster_historyMeetingRoster_person_familyContacts(
      id: l$id == null ? null : stringToUuid(l$id),
      phone: (l$phone as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue? id;

  final String? phone;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id == null ? null : uuidToString(l$id);
    final l$phone = phone;
    _resultData['phone'] = l$phone;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$phone = phone;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$phone, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query_historyMeetingRoster_historyMeetingRoster_person_familyContacts ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$phone = phone;
    final lOther$phone = other.phone;
    if (l$phone != lOther$phone) {
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

extension UtilityExtension_Query_historyMeetingRoster_historyMeetingRoster_person_familyContacts
    on Query_historyMeetingRoster_historyMeetingRoster_person_familyContacts {
  CopyWith_Query_historyMeetingRoster_historyMeetingRoster_person_familyContacts<
    Query_historyMeetingRoster_historyMeetingRoster_person_familyContacts
  >
  get copyWith =>
      CopyWith_Query_historyMeetingRoster_historyMeetingRoster_person_familyContacts(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Query_historyMeetingRoster_historyMeetingRoster_person_familyContacts<
  TRes
> {
  factory CopyWith_Query_historyMeetingRoster_historyMeetingRoster_person_familyContacts(
    Query_historyMeetingRoster_historyMeetingRoster_person_familyContacts
    instance,
    TRes Function(
      Query_historyMeetingRoster_historyMeetingRoster_person_familyContacts,
    )
    then,
  ) = _CopyWithImpl_Query_historyMeetingRoster_historyMeetingRoster_person_familyContacts;

  factory CopyWith_Query_historyMeetingRoster_historyMeetingRoster_person_familyContacts.stub(
    TRes res,
  ) = _CopyWithStubImpl_Query_historyMeetingRoster_historyMeetingRoster_person_familyContacts;

  TRes call({UuidValue? id, String? phone, String? $__typename});
}

class _CopyWithImpl_Query_historyMeetingRoster_historyMeetingRoster_person_familyContacts<
  TRes
>
    implements
        CopyWith_Query_historyMeetingRoster_historyMeetingRoster_person_familyContacts<
          TRes
        > {
  _CopyWithImpl_Query_historyMeetingRoster_historyMeetingRoster_person_familyContacts(
    this._instance,
    this._then,
  );

  final Query_historyMeetingRoster_historyMeetingRoster_person_familyContacts
  _instance;

  final TRes Function(
    Query_historyMeetingRoster_historyMeetingRoster_person_familyContacts,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? phone = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query_historyMeetingRoster_historyMeetingRoster_person_familyContacts(
      id: id == _undefined ? _instance.id : (id as UuidValue?),
      phone: phone == _undefined ? _instance.phone : (phone as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Query_historyMeetingRoster_historyMeetingRoster_person_familyContacts<
  TRes
>
    implements
        CopyWith_Query_historyMeetingRoster_historyMeetingRoster_person_familyContacts<
          TRes
        > {
  _CopyWithStubImpl_Query_historyMeetingRoster_historyMeetingRoster_person_familyContacts(
    this._res,
  );

  TRes _res;

  call({UuidValue? id, String? phone, String? $__typename}) => _res;
}

class Variables_Query_attendanceAnalysis {
  factory Variables_Query_attendanceAnalysis({
    required DateTime dayFrom,
    required DateTime dayTo,
    required List<UuidValue> meetingIds,
    List<Input_HistoryMeetingRosterBoolExp>? where,
  }) => Variables_Query_attendanceAnalysis._({
    r'dayFrom': dayFrom,
    r'dayTo': dayTo,
    r'meetingIds': meetingIds,
    if (where != null) r'where': where,
  });

  Variables_Query_attendanceAnalysis._(this._$data);

  factory Variables_Query_attendanceAnalysis.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$dayFrom = data['dayFrom'];
    result$data['dayFrom'] = dateFromString(l$dayFrom);
    final l$dayTo = data['dayTo'];
    result$data['dayTo'] = dateFromString(l$dayTo);
    final l$meetingIds = data['meetingIds'];
    result$data['meetingIds'] = (l$meetingIds as List<dynamic>)
        .map((e) => stringToUuid(e))
        .toList();
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
    return Variables_Query_attendanceAnalysis._(result$data);
  }

  Map<String, dynamic> _$data;

  DateTime get dayFrom => (_$data['dayFrom'] as DateTime);

  DateTime get dayTo => (_$data['dayTo'] as DateTime);

  List<UuidValue> get meetingIds => (_$data['meetingIds'] as List<UuidValue>);

  List<Input_HistoryMeetingRosterBoolExp>? get where =>
      (_$data['where'] as List<Input_HistoryMeetingRosterBoolExp>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$dayFrom = dayFrom;
    result$data['dayFrom'] = dateToString(l$dayFrom);
    final l$dayTo = dayTo;
    result$data['dayTo'] = dateToString(l$dayTo);
    final l$meetingIds = meetingIds;
    result$data['meetingIds'] = l$meetingIds
        .map((e) => uuidToString(e))
        .toList();
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.map((e) => e.toJson()).toList();
    }
    return result$data;
  }

  CopyWith_Variables_Query_attendanceAnalysis<
    Variables_Query_attendanceAnalysis
  >
  get copyWith => CopyWith_Variables_Query_attendanceAnalysis(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Query_attendanceAnalysis ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$dayFrom = dayFrom;
    final lOther$dayFrom = other.dayFrom;
    if (l$dayFrom != lOther$dayFrom) {
      return false;
    }
    final l$dayTo = dayTo;
    final lOther$dayTo = other.dayTo;
    if (l$dayTo != lOther$dayTo) {
      return false;
    }
    final l$meetingIds = meetingIds;
    final lOther$meetingIds = other.meetingIds;
    if (l$meetingIds.length != lOther$meetingIds.length) {
      return false;
    }
    for (int i = 0; i < l$meetingIds.length; i++) {
      final l$meetingIds$entry = l$meetingIds[i];
      final lOther$meetingIds$entry = lOther$meetingIds[i];
      if (l$meetingIds$entry != lOther$meetingIds$entry) {
        return false;
      }
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
    return true;
  }

  @override
  int get hashCode {
    final l$dayFrom = dayFrom;
    final l$dayTo = dayTo;
    final l$meetingIds = meetingIds;
    final l$where = where;
    return Object.hashAll([
      l$dayFrom,
      l$dayTo,
      Object.hashAll(l$meetingIds.map((v) => v)),
      _$data.containsKey('where')
          ? l$where == null
                ? null
                : Object.hashAll(l$where.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith_Variables_Query_attendanceAnalysis<TRes> {
  factory CopyWith_Variables_Query_attendanceAnalysis(
    Variables_Query_attendanceAnalysis instance,
    TRes Function(Variables_Query_attendanceAnalysis) then,
  ) = _CopyWithImpl_Variables_Query_attendanceAnalysis;

  factory CopyWith_Variables_Query_attendanceAnalysis.stub(TRes res) =
      _CopyWithStubImpl_Variables_Query_attendanceAnalysis;

  TRes call({
    DateTime? dayFrom,
    DateTime? dayTo,
    List<UuidValue>? meetingIds,
    List<Input_HistoryMeetingRosterBoolExp>? where,
  });
}

class _CopyWithImpl_Variables_Query_attendanceAnalysis<TRes>
    implements CopyWith_Variables_Query_attendanceAnalysis<TRes> {
  _CopyWithImpl_Variables_Query_attendanceAnalysis(this._instance, this._then);

  final Variables_Query_attendanceAnalysis _instance;

  final TRes Function(Variables_Query_attendanceAnalysis) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dayFrom = _undefined,
    Object? dayTo = _undefined,
    Object? meetingIds = _undefined,
    Object? where = _undefined,
  }) => _then(
    Variables_Query_attendanceAnalysis._({
      ..._instance._$data,
      if (dayFrom != _undefined && dayFrom != null)
        'dayFrom': (dayFrom as DateTime),
      if (dayTo != _undefined && dayTo != null) 'dayTo': (dayTo as DateTime),
      if (meetingIds != _undefined && meetingIds != null)
        'meetingIds': (meetingIds as List<UuidValue>),
      if (where != _undefined)
        'where': (where as List<Input_HistoryMeetingRosterBoolExp>?),
    }),
  );
}

class _CopyWithStubImpl_Variables_Query_attendanceAnalysis<TRes>
    implements CopyWith_Variables_Query_attendanceAnalysis<TRes> {
  _CopyWithStubImpl_Variables_Query_attendanceAnalysis(this._res);

  TRes _res;

  call({
    DateTime? dayFrom,
    DateTime? dayTo,
    List<UuidValue>? meetingIds,
    List<Input_HistoryMeetingRosterBoolExp>? where,
  }) => _res;
}

class Query_attendanceAnalysis {
  Query_attendanceAnalysis({
    required this.historyMeetings,
    required this.historyMeetingRoster,
  });

  factory Query_attendanceAnalysis.fromJson(Map<String, dynamic> json) {
    final l$historyMeetings = json['historyMeetings'];
    final l$historyMeetingRoster = json['historyMeetingRoster'];
    return Query_attendanceAnalysis(
      historyMeetings: (l$historyMeetings as List<dynamic>)
          .map(
            (e) => Query_attendanceAnalysis_historyMeetings.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      historyMeetingRoster: (l$historyMeetingRoster as List<dynamic>)
          .map(
            (e) => Query_attendanceAnalysis_historyMeetingRoster.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
    );
  }

  final List<Query_attendanceAnalysis_historyMeetings> historyMeetings;

  final List<Query_attendanceAnalysis_historyMeetingRoster>
  historyMeetingRoster;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$historyMeetings = historyMeetings;
    _resultData['historyMeetings'] = l$historyMeetings
        .map((e) => e.toJson())
        .toList();
    final l$historyMeetingRoster = historyMeetingRoster;
    _resultData['historyMeetingRoster'] = l$historyMeetingRoster
        .map((e) => e.toJson())
        .toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$historyMeetings = historyMeetings;
    final l$historyMeetingRoster = historyMeetingRoster;
    return Object.hashAll([
      Object.hashAll(l$historyMeetings.map((v) => v)),
      Object.hashAll(l$historyMeetingRoster.map((v) => v)),
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_attendanceAnalysis ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$historyMeetings = historyMeetings;
    final lOther$historyMeetings = other.historyMeetings;
    if (l$historyMeetings.length != lOther$historyMeetings.length) {
      return false;
    }
    for (int i = 0; i < l$historyMeetings.length; i++) {
      final l$historyMeetings$entry = l$historyMeetings[i];
      final lOther$historyMeetings$entry = lOther$historyMeetings[i];
      if (l$historyMeetings$entry != lOther$historyMeetings$entry) {
        return false;
      }
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
    return true;
  }
}

extension UtilityExtension_Query_attendanceAnalysis
    on Query_attendanceAnalysis {
  CopyWith_Query_attendanceAnalysis<Query_attendanceAnalysis> get copyWith =>
      CopyWith_Query_attendanceAnalysis(this, (i) => i);
}

abstract class CopyWith_Query_attendanceAnalysis<TRes> {
  factory CopyWith_Query_attendanceAnalysis(
    Query_attendanceAnalysis instance,
    TRes Function(Query_attendanceAnalysis) then,
  ) = _CopyWithImpl_Query_attendanceAnalysis;

  factory CopyWith_Query_attendanceAnalysis.stub(TRes res) =
      _CopyWithStubImpl_Query_attendanceAnalysis;

  TRes call({
    List<Query_attendanceAnalysis_historyMeetings>? historyMeetings,
    List<Query_attendanceAnalysis_historyMeetingRoster>? historyMeetingRoster,
  });
  TRes historyMeetings(
    Iterable<Query_attendanceAnalysis_historyMeetings> Function(
      Iterable<
        CopyWith_Query_attendanceAnalysis_historyMeetings<
          Query_attendanceAnalysis_historyMeetings
        >
      >,
    )
    _fn,
  );
  TRes historyMeetingRoster(
    Iterable<Query_attendanceAnalysis_historyMeetingRoster> Function(
      Iterable<
        CopyWith_Query_attendanceAnalysis_historyMeetingRoster<
          Query_attendanceAnalysis_historyMeetingRoster
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl_Query_attendanceAnalysis<TRes>
    implements CopyWith_Query_attendanceAnalysis<TRes> {
  _CopyWithImpl_Query_attendanceAnalysis(this._instance, this._then);

  final Query_attendanceAnalysis _instance;

  final TRes Function(Query_attendanceAnalysis) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? historyMeetings = _undefined,
    Object? historyMeetingRoster = _undefined,
  }) => _then(
    Query_attendanceAnalysis(
      historyMeetings: historyMeetings == _undefined || historyMeetings == null
          ? _instance.historyMeetings
          : (historyMeetings as List<Query_attendanceAnalysis_historyMeetings>),
      historyMeetingRoster:
          historyMeetingRoster == _undefined || historyMeetingRoster == null
          ? _instance.historyMeetingRoster
          : (historyMeetingRoster
                as List<Query_attendanceAnalysis_historyMeetingRoster>),
    ),
  );

  TRes historyMeetings(
    Iterable<Query_attendanceAnalysis_historyMeetings> Function(
      Iterable<
        CopyWith_Query_attendanceAnalysis_historyMeetings<
          Query_attendanceAnalysis_historyMeetings
        >
      >,
    )
    _fn,
  ) => call(
    historyMeetings: _fn(
      _instance.historyMeetings.map(
        (e) => CopyWith_Query_attendanceAnalysis_historyMeetings(e, (i) => i),
      ),
    ).toList(),
  );

  TRes historyMeetingRoster(
    Iterable<Query_attendanceAnalysis_historyMeetingRoster> Function(
      Iterable<
        CopyWith_Query_attendanceAnalysis_historyMeetingRoster<
          Query_attendanceAnalysis_historyMeetingRoster
        >
      >,
    )
    _fn,
  ) => call(
    historyMeetingRoster: _fn(
      _instance.historyMeetingRoster.map(
        (e) =>
            CopyWith_Query_attendanceAnalysis_historyMeetingRoster(e, (i) => i),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl_Query_attendanceAnalysis<TRes>
    implements CopyWith_Query_attendanceAnalysis<TRes> {
  _CopyWithStubImpl_Query_attendanceAnalysis(this._res);

  TRes _res;

  call({
    List<Query_attendanceAnalysis_historyMeetings>? historyMeetings,
    List<Query_attendanceAnalysis_historyMeetingRoster>? historyMeetingRoster,
  }) => _res;

  historyMeetings(_fn) => _res;

  historyMeetingRoster(_fn) => _res;
}

const documentNodeQueryattendanceAnalysis = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'attendanceAnalysis'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'dayFrom')),
          type: NamedTypeNode(name: NameNode(value: 'date'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'dayTo')),
          type: NamedTypeNode(name: NameNode(value: 'date'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'meetingIds')),
          type: ListTypeNode(
            type: NamedTypeNode(name: NameNode(value: 'uuid'), isNonNull: true),
            isNonNull: true,
          ),
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
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'historyMeetings'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'where'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'id'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: '_in'),
                            value: VariableNode(
                              name: NameNode(value: 'meetingIds'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'id'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'days'),
                  alias: null,
                  arguments: [
                    ArgumentNode(
                      name: NameNode(value: 'where'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'day'),
                            value: ObjectValueNode(
                              fields: [
                                ObjectFieldNode(
                                  name: NameNode(value: '_gte'),
                                  value: VariableNode(
                                    name: NameNode(value: 'dayFrom'),
                                  ),
                                ),
                                ObjectFieldNode(
                                  name: NameNode(value: '_lte'),
                                  value: VariableNode(
                                    name: NameNode(value: 'dayTo'),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    ArgumentNode(
                      name: NameNode(value: 'orderBy'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'day'),
                            value: EnumValueNode(name: NameNode(value: 'ASC')),
                          ),
                        ],
                      ),
                    ),
                    ArgumentNode(
                      name: NameNode(value: 'distinctOn'),
                      value: ListValueNode(
                        values: [EnumValueNode(name: NameNode(value: 'day'))],
                      ),
                    ),
                  ],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'day'),
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
          FieldNode(
            name: NameNode(value: 'historyMeetingRoster'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'where'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: '_and'),
                      value: ListValueNode(
                        values: [
                          ObjectValueNode(
                            fields: [
                              ObjectFieldNode(
                                name: NameNode(value: 'meetingId'),
                                value: ObjectValueNode(
                                  fields: [
                                    ObjectFieldNode(
                                      name: NameNode(value: '_in'),
                                      value: VariableNode(
                                        name: NameNode(value: 'meetingIds'),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          ObjectValueNode(
                            fields: [
                              ObjectFieldNode(
                                name: NameNode(value: '_and'),
                                value: VariableNode(
                                  name: NameNode(value: 'where'),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              ArgumentNode(
                name: NameNode(value: 'orderBy'),
                value: ListValueNode(
                  values: [
                    ObjectValueNode(
                      fields: [
                        ObjectFieldNode(
                          name: NameNode(value: 'personId'),
                          value: EnumValueNode(name: NameNode(value: 'ASC')),
                        ),
                      ],
                    ),
                    ObjectValueNode(
                      fields: [
                        ObjectFieldNode(
                          name: NameNode(value: 'asServant'),
                          value: EnumValueNode(name: NameNode(value: 'ASC')),
                        ),
                      ],
                    ),
                    ObjectValueNode(
                      fields: [
                        ObjectFieldNode(
                          name: NameNode(value: 'meetingId'),
                          value: EnumValueNode(name: NameNode(value: 'ASC')),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              ArgumentNode(
                name: NameNode(value: 'distinctOn'),
                value: ListValueNode(
                  values: [
                    EnumValueNode(name: NameNode(value: 'personId')),
                    EnumValueNode(name: NameNode(value: 'asServant')),
                    EnumValueNode(name: NameNode(value: 'meetingId')),
                  ],
                ),
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
                  name: NameNode(value: 'asServant'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'meetingId'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'attendanceHistory'),
                  alias: null,
                  arguments: [
                    ArgumentNode(
                      name: NameNode(value: 'where'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'day'),
                            value: ObjectValueNode(
                              fields: [
                                ObjectFieldNode(
                                  name: NameNode(value: '_gte'),
                                  value: VariableNode(
                                    name: NameNode(value: 'dayFrom'),
                                  ),
                                ),
                                ObjectFieldNode(
                                  name: NameNode(value: '_lte'),
                                  value: VariableNode(
                                    name: NameNode(value: 'dayTo'),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    ArgumentNode(
                      name: NameNode(value: 'orderBy'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'day'),
                            value: EnumValueNode(name: NameNode(value: 'ASC')),
                          ),
                        ],
                      ),
                    ),
                  ],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'id'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'day'),
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
      ),
    ),
  ],
);

class Query_attendanceAnalysis_historyMeetings {
  Query_attendanceAnalysis_historyMeetings({
    required this.id,
    required this.days,
    this.$__typename = 'HistoryMeetings',
  });

  factory Query_attendanceAnalysis_historyMeetings.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$days = json['days'];
    final l$$__typename = json['__typename'];
    return Query_attendanceAnalysis_historyMeetings(
      id: stringToUuid(l$id),
      days: (l$days as List<dynamic>)
          .map(
            (e) => Query_attendanceAnalysis_historyMeetings_days.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final List<Query_attendanceAnalysis_historyMeetings_days> days;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$days = days;
    _resultData['days'] = l$days.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$days = days;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      Object.hashAll(l$days.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_attendanceAnalysis_historyMeetings ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$days = days;
    final lOther$days = other.days;
    if (l$days.length != lOther$days.length) {
      return false;
    }
    for (int i = 0; i < l$days.length; i++) {
      final l$days$entry = l$days[i];
      final lOther$days$entry = lOther$days[i];
      if (l$days$entry != lOther$days$entry) {
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

extension UtilityExtension_Query_attendanceAnalysis_historyMeetings
    on Query_attendanceAnalysis_historyMeetings {
  CopyWith_Query_attendanceAnalysis_historyMeetings<
    Query_attendanceAnalysis_historyMeetings
  >
  get copyWith =>
      CopyWith_Query_attendanceAnalysis_historyMeetings(this, (i) => i);
}

abstract class CopyWith_Query_attendanceAnalysis_historyMeetings<TRes> {
  factory CopyWith_Query_attendanceAnalysis_historyMeetings(
    Query_attendanceAnalysis_historyMeetings instance,
    TRes Function(Query_attendanceAnalysis_historyMeetings) then,
  ) = _CopyWithImpl_Query_attendanceAnalysis_historyMeetings;

  factory CopyWith_Query_attendanceAnalysis_historyMeetings.stub(TRes res) =
      _CopyWithStubImpl_Query_attendanceAnalysis_historyMeetings;

  TRes call({
    UuidValue? id,
    List<Query_attendanceAnalysis_historyMeetings_days>? days,
    String? $__typename,
  });
  TRes days(
    Iterable<Query_attendanceAnalysis_historyMeetings_days> Function(
      Iterable<
        CopyWith_Query_attendanceAnalysis_historyMeetings_days<
          Query_attendanceAnalysis_historyMeetings_days
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl_Query_attendanceAnalysis_historyMeetings<TRes>
    implements CopyWith_Query_attendanceAnalysis_historyMeetings<TRes> {
  _CopyWithImpl_Query_attendanceAnalysis_historyMeetings(
    this._instance,
    this._then,
  );

  final Query_attendanceAnalysis_historyMeetings _instance;

  final TRes Function(Query_attendanceAnalysis_historyMeetings) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? days = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query_attendanceAnalysis_historyMeetings(
      id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
      days: days == _undefined || days == null
          ? _instance.days
          : (days as List<Query_attendanceAnalysis_historyMeetings_days>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes days(
    Iterable<Query_attendanceAnalysis_historyMeetings_days> Function(
      Iterable<
        CopyWith_Query_attendanceAnalysis_historyMeetings_days<
          Query_attendanceAnalysis_historyMeetings_days
        >
      >,
    )
    _fn,
  ) => call(
    days: _fn(
      _instance.days.map(
        (e) =>
            CopyWith_Query_attendanceAnalysis_historyMeetings_days(e, (i) => i),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl_Query_attendanceAnalysis_historyMeetings<TRes>
    implements CopyWith_Query_attendanceAnalysis_historyMeetings<TRes> {
  _CopyWithStubImpl_Query_attendanceAnalysis_historyMeetings(this._res);

  TRes _res;

  call({
    UuidValue? id,
    List<Query_attendanceAnalysis_historyMeetings_days>? days,
    String? $__typename,
  }) => _res;

  days(_fn) => _res;
}

class Query_attendanceAnalysis_historyMeetings_days {
  Query_attendanceAnalysis_historyMeetings_days({
    this.day,
    this.$__typename = 'HistoryMeetingDays',
  });

  factory Query_attendanceAnalysis_historyMeetings_days.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$day = json['day'];
    final l$$__typename = json['__typename'];
    return Query_attendanceAnalysis_historyMeetings_days(
      day: l$day == null ? null : dateFromString(l$day),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime? day;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$day = day;
    _resultData['day'] = l$day == null ? null : dateToString(l$day);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$day = day;
    final l$$__typename = $__typename;
    return Object.hashAll([l$day, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_attendanceAnalysis_historyMeetings_days ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$day = day;
    final lOther$day = other.day;
    if (l$day != lOther$day) {
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

extension UtilityExtension_Query_attendanceAnalysis_historyMeetings_days
    on Query_attendanceAnalysis_historyMeetings_days {
  CopyWith_Query_attendanceAnalysis_historyMeetings_days<
    Query_attendanceAnalysis_historyMeetings_days
  >
  get copyWith =>
      CopyWith_Query_attendanceAnalysis_historyMeetings_days(this, (i) => i);
}

abstract class CopyWith_Query_attendanceAnalysis_historyMeetings_days<TRes> {
  factory CopyWith_Query_attendanceAnalysis_historyMeetings_days(
    Query_attendanceAnalysis_historyMeetings_days instance,
    TRes Function(Query_attendanceAnalysis_historyMeetings_days) then,
  ) = _CopyWithImpl_Query_attendanceAnalysis_historyMeetings_days;

  factory CopyWith_Query_attendanceAnalysis_historyMeetings_days.stub(
    TRes res,
  ) = _CopyWithStubImpl_Query_attendanceAnalysis_historyMeetings_days;

  TRes call({DateTime? day, String? $__typename});
}

class _CopyWithImpl_Query_attendanceAnalysis_historyMeetings_days<TRes>
    implements CopyWith_Query_attendanceAnalysis_historyMeetings_days<TRes> {
  _CopyWithImpl_Query_attendanceAnalysis_historyMeetings_days(
    this._instance,
    this._then,
  );

  final Query_attendanceAnalysis_historyMeetings_days _instance;

  final TRes Function(Query_attendanceAnalysis_historyMeetings_days) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? day = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query_attendanceAnalysis_historyMeetings_days(
          day: day == _undefined ? _instance.day : (day as DateTime?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl_Query_attendanceAnalysis_historyMeetings_days<TRes>
    implements CopyWith_Query_attendanceAnalysis_historyMeetings_days<TRes> {
  _CopyWithStubImpl_Query_attendanceAnalysis_historyMeetings_days(this._res);

  TRes _res;

  call({DateTime? day, String? $__typename}) => _res;
}

class Query_attendanceAnalysis_historyMeetingRoster {
  Query_attendanceAnalysis_historyMeetingRoster({
    this.personId,
    this.asServant,
    this.meetingId,
    required this.attendanceHistory,
    this.$__typename = 'HistoryMeetingRoster',
  });

  factory Query_attendanceAnalysis_historyMeetingRoster.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$personId = json['personId'];
    final l$asServant = json['asServant'];
    final l$meetingId = json['meetingId'];
    final l$attendanceHistory = json['attendanceHistory'];
    final l$$__typename = json['__typename'];
    return Query_attendanceAnalysis_historyMeetingRoster(
      personId: l$personId == null ? null : stringToUuid(l$personId),
      asServant: (l$asServant as bool?),
      meetingId: l$meetingId == null ? null : stringToUuid(l$meetingId),
      attendanceHistory: (l$attendanceHistory as List<dynamic>)
          .map(
            (e) =>
                Query_attendanceAnalysis_historyMeetingRoster_attendanceHistory.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue? personId;

  final bool? asServant;

  final UuidValue? meetingId;

  final List<Query_attendanceAnalysis_historyMeetingRoster_attendanceHistory>
  attendanceHistory;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$personId = personId;
    _resultData['personId'] = l$personId == null
        ? null
        : uuidToString(l$personId);
    final l$asServant = asServant;
    _resultData['asServant'] = l$asServant;
    final l$meetingId = meetingId;
    _resultData['meetingId'] = l$meetingId == null
        ? null
        : uuidToString(l$meetingId);
    final l$attendanceHistory = attendanceHistory;
    _resultData['attendanceHistory'] = l$attendanceHistory
        .map((e) => e.toJson())
        .toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$personId = personId;
    final l$asServant = asServant;
    final l$meetingId = meetingId;
    final l$attendanceHistory = attendanceHistory;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$personId,
      l$asServant,
      l$meetingId,
      Object.hashAll(l$attendanceHistory.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_attendanceAnalysis_historyMeetingRoster ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$personId = personId;
    final lOther$personId = other.personId;
    if (l$personId != lOther$personId) {
      return false;
    }
    final l$asServant = asServant;
    final lOther$asServant = other.asServant;
    if (l$asServant != lOther$asServant) {
      return false;
    }
    final l$meetingId = meetingId;
    final lOther$meetingId = other.meetingId;
    if (l$meetingId != lOther$meetingId) {
      return false;
    }
    final l$attendanceHistory = attendanceHistory;
    final lOther$attendanceHistory = other.attendanceHistory;
    if (l$attendanceHistory.length != lOther$attendanceHistory.length) {
      return false;
    }
    for (int i = 0; i < l$attendanceHistory.length; i++) {
      final l$attendanceHistory$entry = l$attendanceHistory[i];
      final lOther$attendanceHistory$entry = lOther$attendanceHistory[i];
      if (l$attendanceHistory$entry != lOther$attendanceHistory$entry) {
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

extension UtilityExtension_Query_attendanceAnalysis_historyMeetingRoster
    on Query_attendanceAnalysis_historyMeetingRoster {
  CopyWith_Query_attendanceAnalysis_historyMeetingRoster<
    Query_attendanceAnalysis_historyMeetingRoster
  >
  get copyWith =>
      CopyWith_Query_attendanceAnalysis_historyMeetingRoster(this, (i) => i);
}

abstract class CopyWith_Query_attendanceAnalysis_historyMeetingRoster<TRes> {
  factory CopyWith_Query_attendanceAnalysis_historyMeetingRoster(
    Query_attendanceAnalysis_historyMeetingRoster instance,
    TRes Function(Query_attendanceAnalysis_historyMeetingRoster) then,
  ) = _CopyWithImpl_Query_attendanceAnalysis_historyMeetingRoster;

  factory CopyWith_Query_attendanceAnalysis_historyMeetingRoster.stub(
    TRes res,
  ) = _CopyWithStubImpl_Query_attendanceAnalysis_historyMeetingRoster;

  TRes call({
    UuidValue? personId,
    bool? asServant,
    UuidValue? meetingId,
    List<Query_attendanceAnalysis_historyMeetingRoster_attendanceHistory>?
    attendanceHistory,
    String? $__typename,
  });
  TRes attendanceHistory(
    Iterable<Query_attendanceAnalysis_historyMeetingRoster_attendanceHistory>
    Function(
      Iterable<
        CopyWith_Query_attendanceAnalysis_historyMeetingRoster_attendanceHistory<
          Query_attendanceAnalysis_historyMeetingRoster_attendanceHistory
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl_Query_attendanceAnalysis_historyMeetingRoster<TRes>
    implements CopyWith_Query_attendanceAnalysis_historyMeetingRoster<TRes> {
  _CopyWithImpl_Query_attendanceAnalysis_historyMeetingRoster(
    this._instance,
    this._then,
  );

  final Query_attendanceAnalysis_historyMeetingRoster _instance;

  final TRes Function(Query_attendanceAnalysis_historyMeetingRoster) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? personId = _undefined,
    Object? asServant = _undefined,
    Object? meetingId = _undefined,
    Object? attendanceHistory = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query_attendanceAnalysis_historyMeetingRoster(
      personId: personId == _undefined
          ? _instance.personId
          : (personId as UuidValue?),
      asServant: asServant == _undefined
          ? _instance.asServant
          : (asServant as bool?),
      meetingId: meetingId == _undefined
          ? _instance.meetingId
          : (meetingId as UuidValue?),
      attendanceHistory:
          attendanceHistory == _undefined || attendanceHistory == null
          ? _instance.attendanceHistory
          : (attendanceHistory
                as List<
                  Query_attendanceAnalysis_historyMeetingRoster_attendanceHistory
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes attendanceHistory(
    Iterable<Query_attendanceAnalysis_historyMeetingRoster_attendanceHistory>
    Function(
      Iterable<
        CopyWith_Query_attendanceAnalysis_historyMeetingRoster_attendanceHistory<
          Query_attendanceAnalysis_historyMeetingRoster_attendanceHistory
        >
      >,
    )
    _fn,
  ) => call(
    attendanceHistory: _fn(
      _instance.attendanceHistory.map(
        (e) =>
            CopyWith_Query_attendanceAnalysis_historyMeetingRoster_attendanceHistory(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl_Query_attendanceAnalysis_historyMeetingRoster<TRes>
    implements CopyWith_Query_attendanceAnalysis_historyMeetingRoster<TRes> {
  _CopyWithStubImpl_Query_attendanceAnalysis_historyMeetingRoster(this._res);

  TRes _res;

  call({
    UuidValue? personId,
    bool? asServant,
    UuidValue? meetingId,
    List<Query_attendanceAnalysis_historyMeetingRoster_attendanceHistory>?
    attendanceHistory,
    String? $__typename,
  }) => _res;

  attendanceHistory(_fn) => _res;
}

class Query_attendanceAnalysis_historyMeetingRoster_attendanceHistory {
  Query_attendanceAnalysis_historyMeetingRoster_attendanceHistory({
    required this.id,
    this.day,
    this.$__typename = 'HistoryAttendanceHistory',
  });

  factory Query_attendanceAnalysis_historyMeetingRoster_attendanceHistory.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$day = json['day'];
    final l$$__typename = json['__typename'];
    return Query_attendanceAnalysis_historyMeetingRoster_attendanceHistory(
      id: stringToUuid(l$id),
      day: l$day == null ? null : dateFromString(l$day),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final DateTime? day;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$day = day;
    _resultData['day'] = l$day == null ? null : dateToString(l$day);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$day = day;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$day, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query_attendanceAnalysis_historyMeetingRoster_attendanceHistory ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$day = day;
    final lOther$day = other.day;
    if (l$day != lOther$day) {
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

extension UtilityExtension_Query_attendanceAnalysis_historyMeetingRoster_attendanceHistory
    on Query_attendanceAnalysis_historyMeetingRoster_attendanceHistory {
  CopyWith_Query_attendanceAnalysis_historyMeetingRoster_attendanceHistory<
    Query_attendanceAnalysis_historyMeetingRoster_attendanceHistory
  >
  get copyWith =>
      CopyWith_Query_attendanceAnalysis_historyMeetingRoster_attendanceHistory(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Query_attendanceAnalysis_historyMeetingRoster_attendanceHistory<
  TRes
> {
  factory CopyWith_Query_attendanceAnalysis_historyMeetingRoster_attendanceHistory(
    Query_attendanceAnalysis_historyMeetingRoster_attendanceHistory instance,
    TRes Function(
      Query_attendanceAnalysis_historyMeetingRoster_attendanceHistory,
    )
    then,
  ) = _CopyWithImpl_Query_attendanceAnalysis_historyMeetingRoster_attendanceHistory;

  factory CopyWith_Query_attendanceAnalysis_historyMeetingRoster_attendanceHistory.stub(
    TRes res,
  ) = _CopyWithStubImpl_Query_attendanceAnalysis_historyMeetingRoster_attendanceHistory;

  TRes call({UuidValue? id, DateTime? day, String? $__typename});
}

class _CopyWithImpl_Query_attendanceAnalysis_historyMeetingRoster_attendanceHistory<
  TRes
>
    implements
        CopyWith_Query_attendanceAnalysis_historyMeetingRoster_attendanceHistory<
          TRes
        > {
  _CopyWithImpl_Query_attendanceAnalysis_historyMeetingRoster_attendanceHistory(
    this._instance,
    this._then,
  );

  final Query_attendanceAnalysis_historyMeetingRoster_attendanceHistory
  _instance;

  final TRes Function(
    Query_attendanceAnalysis_historyMeetingRoster_attendanceHistory,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? day = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query_attendanceAnalysis_historyMeetingRoster_attendanceHistory(
      id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
      day: day == _undefined ? _instance.day : (day as DateTime?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Query_attendanceAnalysis_historyMeetingRoster_attendanceHistory<
  TRes
>
    implements
        CopyWith_Query_attendanceAnalysis_historyMeetingRoster_attendanceHistory<
          TRes
        > {
  _CopyWithStubImpl_Query_attendanceAnalysis_historyMeetingRoster_attendanceHistory(
    this._res,
  );

  TRes _res;

  call({UuidValue? id, DateTime? day, String? $__typename}) => _res;
}

class Variables_Query_meetingsAttendanceAnalysis {
  factory Variables_Query_meetingsAttendanceAnalysis({
    required DateTime dayFrom,
    required DateTime dayTo,
    List<Input_HistoryMeetingsBoolExp>? where,
    List<Input_HistoryMeetingDaysBoolExp>? demographicsWhere,
  }) => Variables_Query_meetingsAttendanceAnalysis._({
    r'dayFrom': dayFrom,
    r'dayTo': dayTo,
    if (where != null) r'where': where,
    if (demographicsWhere != null) r'demographicsWhere': demographicsWhere,
  });

  Variables_Query_meetingsAttendanceAnalysis._(this._$data);

  factory Variables_Query_meetingsAttendanceAnalysis.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$dayFrom = data['dayFrom'];
    result$data['dayFrom'] = dateFromString(l$dayFrom);
    final l$dayTo = data['dayTo'];
    result$data['dayTo'] = dateFromString(l$dayTo);
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = (l$where as List<dynamic>?)
          ?.map(
            (e) => Input_HistoryMeetingsBoolExp.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('demographicsWhere')) {
      final l$demographicsWhere = data['demographicsWhere'];
      result$data['demographicsWhere'] = (l$demographicsWhere as List<dynamic>?)
          ?.map(
            (e) => Input_HistoryMeetingDaysBoolExp.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    return Variables_Query_meetingsAttendanceAnalysis._(result$data);
  }

  Map<String, dynamic> _$data;

  DateTime get dayFrom => (_$data['dayFrom'] as DateTime);

  DateTime get dayTo => (_$data['dayTo'] as DateTime);

  List<Input_HistoryMeetingsBoolExp>? get where =>
      (_$data['where'] as List<Input_HistoryMeetingsBoolExp>?);

  List<Input_HistoryMeetingDaysBoolExp>? get demographicsWhere =>
      (_$data['demographicsWhere'] as List<Input_HistoryMeetingDaysBoolExp>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$dayFrom = dayFrom;
    result$data['dayFrom'] = dateToString(l$dayFrom);
    final l$dayTo = dayTo;
    result$data['dayTo'] = dateToString(l$dayTo);
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('demographicsWhere')) {
      final l$demographicsWhere = demographicsWhere;
      result$data['demographicsWhere'] = l$demographicsWhere
          ?.map((e) => e.toJson())
          .toList();
    }
    return result$data;
  }

  CopyWith_Variables_Query_meetingsAttendanceAnalysis<
    Variables_Query_meetingsAttendanceAnalysis
  >
  get copyWith =>
      CopyWith_Variables_Query_meetingsAttendanceAnalysis(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Query_meetingsAttendanceAnalysis ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$dayFrom = dayFrom;
    final lOther$dayFrom = other.dayFrom;
    if (l$dayFrom != lOther$dayFrom) {
      return false;
    }
    final l$dayTo = dayTo;
    final lOther$dayTo = other.dayTo;
    if (l$dayTo != lOther$dayTo) {
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
    final l$demographicsWhere = demographicsWhere;
    final lOther$demographicsWhere = other.demographicsWhere;
    if (_$data.containsKey('demographicsWhere') !=
        other._$data.containsKey('demographicsWhere')) {
      return false;
    }
    if (l$demographicsWhere != null && lOther$demographicsWhere != null) {
      if (l$demographicsWhere.length != lOther$demographicsWhere.length) {
        return false;
      }
      for (int i = 0; i < l$demographicsWhere.length; i++) {
        final l$demographicsWhere$entry = l$demographicsWhere[i];
        final lOther$demographicsWhere$entry = lOther$demographicsWhere[i];
        if (l$demographicsWhere$entry != lOther$demographicsWhere$entry) {
          return false;
        }
      }
    } else if (l$demographicsWhere != lOther$demographicsWhere) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$dayFrom = dayFrom;
    final l$dayTo = dayTo;
    final l$where = where;
    final l$demographicsWhere = demographicsWhere;
    return Object.hashAll([
      l$dayFrom,
      l$dayTo,
      _$data.containsKey('where')
          ? l$where == null
                ? null
                : Object.hashAll(l$where.map((v) => v))
          : const {},
      _$data.containsKey('demographicsWhere')
          ? l$demographicsWhere == null
                ? null
                : Object.hashAll(l$demographicsWhere.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith_Variables_Query_meetingsAttendanceAnalysis<TRes> {
  factory CopyWith_Variables_Query_meetingsAttendanceAnalysis(
    Variables_Query_meetingsAttendanceAnalysis instance,
    TRes Function(Variables_Query_meetingsAttendanceAnalysis) then,
  ) = _CopyWithImpl_Variables_Query_meetingsAttendanceAnalysis;

  factory CopyWith_Variables_Query_meetingsAttendanceAnalysis.stub(TRes res) =
      _CopyWithStubImpl_Variables_Query_meetingsAttendanceAnalysis;

  TRes call({
    DateTime? dayFrom,
    DateTime? dayTo,
    List<Input_HistoryMeetingsBoolExp>? where,
    List<Input_HistoryMeetingDaysBoolExp>? demographicsWhere,
  });
}

class _CopyWithImpl_Variables_Query_meetingsAttendanceAnalysis<TRes>
    implements CopyWith_Variables_Query_meetingsAttendanceAnalysis<TRes> {
  _CopyWithImpl_Variables_Query_meetingsAttendanceAnalysis(
    this._instance,
    this._then,
  );

  final Variables_Query_meetingsAttendanceAnalysis _instance;

  final TRes Function(Variables_Query_meetingsAttendanceAnalysis) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dayFrom = _undefined,
    Object? dayTo = _undefined,
    Object? where = _undefined,
    Object? demographicsWhere = _undefined,
  }) => _then(
    Variables_Query_meetingsAttendanceAnalysis._({
      ..._instance._$data,
      if (dayFrom != _undefined && dayFrom != null)
        'dayFrom': (dayFrom as DateTime),
      if (dayTo != _undefined && dayTo != null) 'dayTo': (dayTo as DateTime),
      if (where != _undefined)
        'where': (where as List<Input_HistoryMeetingsBoolExp>?),
      if (demographicsWhere != _undefined)
        'demographicsWhere':
            (demographicsWhere as List<Input_HistoryMeetingDaysBoolExp>?),
    }),
  );
}

class _CopyWithStubImpl_Variables_Query_meetingsAttendanceAnalysis<TRes>
    implements CopyWith_Variables_Query_meetingsAttendanceAnalysis<TRes> {
  _CopyWithStubImpl_Variables_Query_meetingsAttendanceAnalysis(this._res);

  TRes _res;

  call({
    DateTime? dayFrom,
    DateTime? dayTo,
    List<Input_HistoryMeetingsBoolExp>? where,
    List<Input_HistoryMeetingDaysBoolExp>? demographicsWhere,
  }) => _res;
}

class Query_meetingsAttendanceAnalysis {
  Query_meetingsAttendanceAnalysis({required this.historyMeetings});

  factory Query_meetingsAttendanceAnalysis.fromJson(Map<String, dynamic> json) {
    final l$historyMeetings = json['historyMeetings'];
    return Query_meetingsAttendanceAnalysis(
      historyMeetings: (l$historyMeetings as List<dynamic>)
          .map(
            (e) => Query_meetingsAttendanceAnalysis_historyMeetings.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
    );
  }

  final List<Query_meetingsAttendanceAnalysis_historyMeetings> historyMeetings;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$historyMeetings = historyMeetings;
    _resultData['historyMeetings'] = l$historyMeetings
        .map((e) => e.toJson())
        .toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$historyMeetings = historyMeetings;
    return Object.hashAll([Object.hashAll(l$historyMeetings.map((v) => v))]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_meetingsAttendanceAnalysis ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$historyMeetings = historyMeetings;
    final lOther$historyMeetings = other.historyMeetings;
    if (l$historyMeetings.length != lOther$historyMeetings.length) {
      return false;
    }
    for (int i = 0; i < l$historyMeetings.length; i++) {
      final l$historyMeetings$entry = l$historyMeetings[i];
      final lOther$historyMeetings$entry = lOther$historyMeetings[i];
      if (l$historyMeetings$entry != lOther$historyMeetings$entry) {
        return false;
      }
    }
    return true;
  }
}

extension UtilityExtension_Query_meetingsAttendanceAnalysis
    on Query_meetingsAttendanceAnalysis {
  CopyWith_Query_meetingsAttendanceAnalysis<Query_meetingsAttendanceAnalysis>
  get copyWith => CopyWith_Query_meetingsAttendanceAnalysis(this, (i) => i);
}

abstract class CopyWith_Query_meetingsAttendanceAnalysis<TRes> {
  factory CopyWith_Query_meetingsAttendanceAnalysis(
    Query_meetingsAttendanceAnalysis instance,
    TRes Function(Query_meetingsAttendanceAnalysis) then,
  ) = _CopyWithImpl_Query_meetingsAttendanceAnalysis;

  factory CopyWith_Query_meetingsAttendanceAnalysis.stub(TRes res) =
      _CopyWithStubImpl_Query_meetingsAttendanceAnalysis;

  TRes call({
    List<Query_meetingsAttendanceAnalysis_historyMeetings>? historyMeetings,
  });
  TRes historyMeetings(
    Iterable<Query_meetingsAttendanceAnalysis_historyMeetings> Function(
      Iterable<
        CopyWith_Query_meetingsAttendanceAnalysis_historyMeetings<
          Query_meetingsAttendanceAnalysis_historyMeetings
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl_Query_meetingsAttendanceAnalysis<TRes>
    implements CopyWith_Query_meetingsAttendanceAnalysis<TRes> {
  _CopyWithImpl_Query_meetingsAttendanceAnalysis(this._instance, this._then);

  final Query_meetingsAttendanceAnalysis _instance;

  final TRes Function(Query_meetingsAttendanceAnalysis) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? historyMeetings = _undefined}) => _then(
    Query_meetingsAttendanceAnalysis(
      historyMeetings: historyMeetings == _undefined || historyMeetings == null
          ? _instance.historyMeetings
          : (historyMeetings
                as List<Query_meetingsAttendanceAnalysis_historyMeetings>),
    ),
  );

  TRes historyMeetings(
    Iterable<Query_meetingsAttendanceAnalysis_historyMeetings> Function(
      Iterable<
        CopyWith_Query_meetingsAttendanceAnalysis_historyMeetings<
          Query_meetingsAttendanceAnalysis_historyMeetings
        >
      >,
    )
    _fn,
  ) => call(
    historyMeetings: _fn(
      _instance.historyMeetings.map(
        (e) => CopyWith_Query_meetingsAttendanceAnalysis_historyMeetings(
          e,
          (i) => i,
        ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl_Query_meetingsAttendanceAnalysis<TRes>
    implements CopyWith_Query_meetingsAttendanceAnalysis<TRes> {
  _CopyWithStubImpl_Query_meetingsAttendanceAnalysis(this._res);

  TRes _res;

  call({
    List<Query_meetingsAttendanceAnalysis_historyMeetings>? historyMeetings,
  }) => _res;

  historyMeetings(_fn) => _res;
}

const documentNodeQuerymeetingsAttendanceAnalysis = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'meetingsAttendanceAnalysis'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'dayFrom')),
          type: NamedTypeNode(name: NameNode(value: 'date'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'dayTo')),
          type: NamedTypeNode(name: NameNode(value: 'date'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'where')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'HistoryMeetingsBoolExp'),
              isNonNull: true,
            ),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: ListValueNode(values: [])),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'demographicsWhere')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'HistoryMeetingDaysBoolExp'),
              isNonNull: true,
            ),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: ListValueNode(values: [])),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'historyMeetings'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'where'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: '_and'),
                      value: VariableNode(name: NameNode(value: 'where')),
                    ),
                  ],
                ),
              ),
              ArgumentNode(
                name: NameNode(value: 'orderBy'),
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
                  ],
                ),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FragmentSpreadNode(
                  name: NameNode(value: 'Meeting'),
                  directives: [],
                ),
                FieldNode(
                  name: NameNode(value: 'days'),
                  alias: null,
                  arguments: [
                    ArgumentNode(
                      name: NameNode(value: 'where'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'day'),
                            value: ObjectValueNode(
                              fields: [
                                ObjectFieldNode(
                                  name: NameNode(value: '_gte'),
                                  value: VariableNode(
                                    name: NameNode(value: 'dayFrom'),
                                  ),
                                ),
                                ObjectFieldNode(
                                  name: NameNode(value: '_lte'),
                                  value: VariableNode(
                                    name: NameNode(value: 'dayTo'),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: '_and'),
                            value: VariableNode(
                              name: NameNode(value: 'demographicsWhere'),
                            ),
                          ),
                        ],
                      ),
                    ),
                    ArgumentNode(
                      name: NameNode(value: 'orderBy'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'day'),
                            value: EnumValueNode(name: NameNode(value: 'ASC')),
                          ),
                        ],
                      ),
                    ),
                  ],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'day'),
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
                        name: NameNode(value: 'studyYear'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FragmentSpreadNode(
                              name: NameNode(value: 'StudyYear'),
                              directives: [],
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
                        name: NameNode(value: 'gender'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'personsCount'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'servantsCount'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'totalCount'),
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
      ),
    ),
    fragmentDefinitionMeeting,
    fragmentDefinitionServiceNoPhoto,
    fragmentDefinitionStudyYear,
    fragmentDefinitionGroupNoPhoto,
  ],
);

class Query_meetingsAttendanceAnalysis_historyMeetings
    implements Fragment_Meeting {
  Query_meetingsAttendanceAnalysis_historyMeetings({
    required this.id,
    required this.name,
    required this.audience,
    this.color,
    required this.isArchived,
    required this.showKodasCheckbox,
    this.serviceId,
    this.serviceGender,
    this.serviceStudyYear,
    this.groupId,
    this.service,
    this.studyYear,
    this.group,
    this.$__typename = 'HistoryMeetings',
    required this.days,
  });

  factory Query_meetingsAttendanceAnalysis_historyMeetings.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$audience = json['audience'];
    final l$color = json['color'];
    final l$isArchived = json['isArchived'];
    final l$showKodasCheckbox = json['showKodasCheckbox'];
    final l$serviceId = json['serviceId'];
    final l$serviceGender = json['serviceGender'];
    final l$serviceStudyYear = json['serviceStudyYear'];
    final l$groupId = json['groupId'];
    final l$service = json['service'];
    final l$studyYear = json['studyYear'];
    final l$group = json['group'];
    final l$$__typename = json['__typename'];
    final l$days = json['days'];
    return Query_meetingsAttendanceAnalysis_historyMeetings(
      id: stringToUuid(l$id),
      name: (l$name as String),
      audience: (l$audience as String),
      color: (l$color as int?),
      isArchived: (l$isArchived as bool),
      showKodasCheckbox: (l$showKodasCheckbox as bool),
      serviceId: l$serviceId == null ? null : stringToUuid(l$serviceId),
      serviceGender: (l$serviceGender as bool?),
      serviceStudyYear: (l$serviceStudyYear as int?),
      groupId: l$groupId == null ? null : stringToUuid(l$groupId),
      service: l$service == null
          ? null
          : Fragment_ServiceNoPhoto.fromJson(
              (l$service as Map<String, dynamic>),
            ),
      studyYear: l$studyYear == null
          ? null
          : Fragment_StudyYear.fromJson((l$studyYear as Map<String, dynamic>)),
      group: l$group == null
          ? null
          : Fragment_GroupNoPhoto.fromJson((l$group as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
      days: (l$days as List<dynamic>)
          .map(
            (e) =>
                Query_meetingsAttendanceAnalysis_historyMeetings_days.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
    );
  }

  final UuidValue id;

  final String name;

  final String audience;

  final int? color;

  final bool isArchived;

  final bool showKodasCheckbox;

  final UuidValue? serviceId;

  final bool? serviceGender;

  final int? serviceStudyYear;

  final UuidValue? groupId;

  final Fragment_ServiceNoPhoto? service;

  final Fragment_StudyYear? studyYear;

  final Fragment_GroupNoPhoto? group;

  final String $__typename;

  final List<Query_meetingsAttendanceAnalysis_historyMeetings_days> days;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$audience = audience;
    _resultData['audience'] = l$audience;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$isArchived = isArchived;
    _resultData['isArchived'] = l$isArchived;
    final l$showKodasCheckbox = showKodasCheckbox;
    _resultData['showKodasCheckbox'] = l$showKodasCheckbox;
    final l$serviceId = serviceId;
    _resultData['serviceId'] = l$serviceId == null
        ? null
        : uuidToString(l$serviceId);
    final l$serviceGender = serviceGender;
    _resultData['serviceGender'] = l$serviceGender;
    final l$serviceStudyYear = serviceStudyYear;
    _resultData['serviceStudyYear'] = l$serviceStudyYear;
    final l$groupId = groupId;
    _resultData['groupId'] = l$groupId == null ? null : uuidToString(l$groupId);
    final l$service = service;
    _resultData['service'] = l$service?.toJson();
    final l$studyYear = studyYear;
    _resultData['studyYear'] = l$studyYear?.toJson();
    final l$group = group;
    _resultData['group'] = l$group?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$days = days;
    _resultData['days'] = l$days.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$audience = audience;
    final l$color = color;
    final l$isArchived = isArchived;
    final l$showKodasCheckbox = showKodasCheckbox;
    final l$serviceId = serviceId;
    final l$serviceGender = serviceGender;
    final l$serviceStudyYear = serviceStudyYear;
    final l$groupId = groupId;
    final l$service = service;
    final l$studyYear = studyYear;
    final l$group = group;
    final l$$__typename = $__typename;
    final l$days = days;
    return Object.hashAll([
      l$id,
      l$name,
      l$audience,
      l$color,
      l$isArchived,
      l$showKodasCheckbox,
      l$serviceId,
      l$serviceGender,
      l$serviceStudyYear,
      l$groupId,
      l$service,
      l$studyYear,
      l$group,
      l$$__typename,
      Object.hashAll(l$days.map((v) => v)),
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_meetingsAttendanceAnalysis_historyMeetings ||
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
    final l$audience = audience;
    final lOther$audience = other.audience;
    if (l$audience != lOther$audience) {
      return false;
    }
    final l$color = color;
    final lOther$color = other.color;
    if (l$color != lOther$color) {
      return false;
    }
    final l$isArchived = isArchived;
    final lOther$isArchived = other.isArchived;
    if (l$isArchived != lOther$isArchived) {
      return false;
    }
    final l$showKodasCheckbox = showKodasCheckbox;
    final lOther$showKodasCheckbox = other.showKodasCheckbox;
    if (l$showKodasCheckbox != lOther$showKodasCheckbox) {
      return false;
    }
    final l$serviceId = serviceId;
    final lOther$serviceId = other.serviceId;
    if (l$serviceId != lOther$serviceId) {
      return false;
    }
    final l$serviceGender = serviceGender;
    final lOther$serviceGender = other.serviceGender;
    if (l$serviceGender != lOther$serviceGender) {
      return false;
    }
    final l$serviceStudyYear = serviceStudyYear;
    final lOther$serviceStudyYear = other.serviceStudyYear;
    if (l$serviceStudyYear != lOther$serviceStudyYear) {
      return false;
    }
    final l$groupId = groupId;
    final lOther$groupId = other.groupId;
    if (l$groupId != lOther$groupId) {
      return false;
    }
    final l$service = service;
    final lOther$service = other.service;
    if (l$service != lOther$service) {
      return false;
    }
    final l$studyYear = studyYear;
    final lOther$studyYear = other.studyYear;
    if (l$studyYear != lOther$studyYear) {
      return false;
    }
    final l$group = group;
    final lOther$group = other.group;
    if (l$group != lOther$group) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$days = days;
    final lOther$days = other.days;
    if (l$days.length != lOther$days.length) {
      return false;
    }
    for (int i = 0; i < l$days.length; i++) {
      final l$days$entry = l$days[i];
      final lOther$days$entry = lOther$days[i];
      if (l$days$entry != lOther$days$entry) {
        return false;
      }
    }
    return true;
  }
}

extension UtilityExtension_Query_meetingsAttendanceAnalysis_historyMeetings
    on Query_meetingsAttendanceAnalysis_historyMeetings {
  CopyWith_Query_meetingsAttendanceAnalysis_historyMeetings<
    Query_meetingsAttendanceAnalysis_historyMeetings
  >
  get copyWith =>
      CopyWith_Query_meetingsAttendanceAnalysis_historyMeetings(this, (i) => i);
}

abstract class CopyWith_Query_meetingsAttendanceAnalysis_historyMeetings<TRes> {
  factory CopyWith_Query_meetingsAttendanceAnalysis_historyMeetings(
    Query_meetingsAttendanceAnalysis_historyMeetings instance,
    TRes Function(Query_meetingsAttendanceAnalysis_historyMeetings) then,
  ) = _CopyWithImpl_Query_meetingsAttendanceAnalysis_historyMeetings;

  factory CopyWith_Query_meetingsAttendanceAnalysis_historyMeetings.stub(
    TRes res,
  ) = _CopyWithStubImpl_Query_meetingsAttendanceAnalysis_historyMeetings;

  TRes call({
    UuidValue? id,
    String? name,
    String? audience,
    int? color,
    bool? isArchived,
    bool? showKodasCheckbox,
    UuidValue? serviceId,
    bool? serviceGender,
    int? serviceStudyYear,
    UuidValue? groupId,
    Fragment_ServiceNoPhoto? service,
    Fragment_StudyYear? studyYear,
    Fragment_GroupNoPhoto? group,
    String? $__typename,
    List<Query_meetingsAttendanceAnalysis_historyMeetings_days>? days,
  });
  CopyWith_Fragment_ServiceNoPhoto<TRes> get service;
  CopyWith_Fragment_StudyYear<TRes> get studyYear;
  CopyWith_Fragment_GroupNoPhoto<TRes> get group;
  TRes days(
    Iterable<Query_meetingsAttendanceAnalysis_historyMeetings_days> Function(
      Iterable<
        CopyWith_Query_meetingsAttendanceAnalysis_historyMeetings_days<
          Query_meetingsAttendanceAnalysis_historyMeetings_days
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl_Query_meetingsAttendanceAnalysis_historyMeetings<TRes>
    implements CopyWith_Query_meetingsAttendanceAnalysis_historyMeetings<TRes> {
  _CopyWithImpl_Query_meetingsAttendanceAnalysis_historyMeetings(
    this._instance,
    this._then,
  );

  final Query_meetingsAttendanceAnalysis_historyMeetings _instance;

  final TRes Function(Query_meetingsAttendanceAnalysis_historyMeetings) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? audience = _undefined,
    Object? color = _undefined,
    Object? isArchived = _undefined,
    Object? showKodasCheckbox = _undefined,
    Object? serviceId = _undefined,
    Object? serviceGender = _undefined,
    Object? serviceStudyYear = _undefined,
    Object? groupId = _undefined,
    Object? service = _undefined,
    Object? studyYear = _undefined,
    Object? group = _undefined,
    Object? $__typename = _undefined,
    Object? days = _undefined,
  }) => _then(
    Query_meetingsAttendanceAnalysis_historyMeetings(
      id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      audience: audience == _undefined || audience == null
          ? _instance.audience
          : (audience as String),
      color: color == _undefined ? _instance.color : (color as int?),
      isArchived: isArchived == _undefined || isArchived == null
          ? _instance.isArchived
          : (isArchived as bool),
      showKodasCheckbox:
          showKodasCheckbox == _undefined || showKodasCheckbox == null
          ? _instance.showKodasCheckbox
          : (showKodasCheckbox as bool),
      serviceId: serviceId == _undefined
          ? _instance.serviceId
          : (serviceId as UuidValue?),
      serviceGender: serviceGender == _undefined
          ? _instance.serviceGender
          : (serviceGender as bool?),
      serviceStudyYear: serviceStudyYear == _undefined
          ? _instance.serviceStudyYear
          : (serviceStudyYear as int?),
      groupId: groupId == _undefined
          ? _instance.groupId
          : (groupId as UuidValue?),
      service: service == _undefined
          ? _instance.service
          : (service as Fragment_ServiceNoPhoto?),
      studyYear: studyYear == _undefined
          ? _instance.studyYear
          : (studyYear as Fragment_StudyYear?),
      group: group == _undefined
          ? _instance.group
          : (group as Fragment_GroupNoPhoto?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
      days: days == _undefined || days == null
          ? _instance.days
          : (days
                as List<Query_meetingsAttendanceAnalysis_historyMeetings_days>),
    ),
  );

  CopyWith_Fragment_ServiceNoPhoto<TRes> get service {
    final local$service = _instance.service;
    return local$service == null
        ? CopyWith_Fragment_ServiceNoPhoto.stub(_then(_instance))
        : CopyWith_Fragment_ServiceNoPhoto(
            local$service,
            (e) => call(service: e),
          );
  }

  CopyWith_Fragment_StudyYear<TRes> get studyYear {
    final local$studyYear = _instance.studyYear;
    return local$studyYear == null
        ? CopyWith_Fragment_StudyYear.stub(_then(_instance))
        : CopyWith_Fragment_StudyYear(
            local$studyYear,
            (e) => call(studyYear: e),
          );
  }

  CopyWith_Fragment_GroupNoPhoto<TRes> get group {
    final local$group = _instance.group;
    return local$group == null
        ? CopyWith_Fragment_GroupNoPhoto.stub(_then(_instance))
        : CopyWith_Fragment_GroupNoPhoto(local$group, (e) => call(group: e));
  }

  TRes days(
    Iterable<Query_meetingsAttendanceAnalysis_historyMeetings_days> Function(
      Iterable<
        CopyWith_Query_meetingsAttendanceAnalysis_historyMeetings_days<
          Query_meetingsAttendanceAnalysis_historyMeetings_days
        >
      >,
    )
    _fn,
  ) => call(
    days: _fn(
      _instance.days.map(
        (e) => CopyWith_Query_meetingsAttendanceAnalysis_historyMeetings_days(
          e,
          (i) => i,
        ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl_Query_meetingsAttendanceAnalysis_historyMeetings<TRes>
    implements CopyWith_Query_meetingsAttendanceAnalysis_historyMeetings<TRes> {
  _CopyWithStubImpl_Query_meetingsAttendanceAnalysis_historyMeetings(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    String? audience,
    int? color,
    bool? isArchived,
    bool? showKodasCheckbox,
    UuidValue? serviceId,
    bool? serviceGender,
    int? serviceStudyYear,
    UuidValue? groupId,
    Fragment_ServiceNoPhoto? service,
    Fragment_StudyYear? studyYear,
    Fragment_GroupNoPhoto? group,
    String? $__typename,
    List<Query_meetingsAttendanceAnalysis_historyMeetings_days>? days,
  }) => _res;

  CopyWith_Fragment_ServiceNoPhoto<TRes> get service =>
      CopyWith_Fragment_ServiceNoPhoto.stub(_res);

  CopyWith_Fragment_StudyYear<TRes> get studyYear =>
      CopyWith_Fragment_StudyYear.stub(_res);

  CopyWith_Fragment_GroupNoPhoto<TRes> get group =>
      CopyWith_Fragment_GroupNoPhoto.stub(_res);

  days(_fn) => _res;
}

class Query_meetingsAttendanceAnalysis_historyMeetings_days {
  Query_meetingsAttendanceAnalysis_historyMeetings_days({
    this.day,
    this.studyYearId,
    this.studyYear,
    this.gender,
    this.personsCount,
    this.servantsCount,
    this.totalCount,
    this.$__typename = 'HistoryMeetingDays',
  });

  factory Query_meetingsAttendanceAnalysis_historyMeetings_days.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$day = json['day'];
    final l$studyYearId = json['studyYearId'];
    final l$studyYear = json['studyYear'];
    final l$gender = json['gender'];
    final l$personsCount = json['personsCount'];
    final l$servantsCount = json['servantsCount'];
    final l$totalCount = json['totalCount'];
    final l$$__typename = json['__typename'];
    return Query_meetingsAttendanceAnalysis_historyMeetings_days(
      day: l$day == null ? null : dateFromString(l$day),
      studyYearId: (l$studyYearId as int?),
      studyYear: l$studyYear == null
          ? null
          : Fragment_StudyYear.fromJson((l$studyYear as Map<String, dynamic>)),
      gender: (l$gender as bool?),
      personsCount: (l$personsCount as int?),
      servantsCount: (l$servantsCount as int?),
      totalCount: (l$totalCount as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime? day;

  final int? studyYearId;

  final Fragment_StudyYear? studyYear;

  final bool? gender;

  final int? personsCount;

  final int? servantsCount;

  final int? totalCount;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$day = day;
    _resultData['day'] = l$day == null ? null : dateToString(l$day);
    final l$studyYearId = studyYearId;
    _resultData['studyYearId'] = l$studyYearId;
    final l$studyYear = studyYear;
    _resultData['studyYear'] = l$studyYear?.toJson();
    final l$gender = gender;
    _resultData['gender'] = l$gender;
    final l$personsCount = personsCount;
    _resultData['personsCount'] = l$personsCount;
    final l$servantsCount = servantsCount;
    _resultData['servantsCount'] = l$servantsCount;
    final l$totalCount = totalCount;
    _resultData['totalCount'] = l$totalCount;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$day = day;
    final l$studyYearId = studyYearId;
    final l$studyYear = studyYear;
    final l$gender = gender;
    final l$personsCount = personsCount;
    final l$servantsCount = servantsCount;
    final l$totalCount = totalCount;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$day,
      l$studyYearId,
      l$studyYear,
      l$gender,
      l$personsCount,
      l$servantsCount,
      l$totalCount,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_meetingsAttendanceAnalysis_historyMeetings_days ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$day = day;
    final lOther$day = other.day;
    if (l$day != lOther$day) {
      return false;
    }
    final l$studyYearId = studyYearId;
    final lOther$studyYearId = other.studyYearId;
    if (l$studyYearId != lOther$studyYearId) {
      return false;
    }
    final l$studyYear = studyYear;
    final lOther$studyYear = other.studyYear;
    if (l$studyYear != lOther$studyYear) {
      return false;
    }
    final l$gender = gender;
    final lOther$gender = other.gender;
    if (l$gender != lOther$gender) {
      return false;
    }
    final l$personsCount = personsCount;
    final lOther$personsCount = other.personsCount;
    if (l$personsCount != lOther$personsCount) {
      return false;
    }
    final l$servantsCount = servantsCount;
    final lOther$servantsCount = other.servantsCount;
    if (l$servantsCount != lOther$servantsCount) {
      return false;
    }
    final l$totalCount = totalCount;
    final lOther$totalCount = other.totalCount;
    if (l$totalCount != lOther$totalCount) {
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

extension UtilityExtension_Query_meetingsAttendanceAnalysis_historyMeetings_days
    on Query_meetingsAttendanceAnalysis_historyMeetings_days {
  CopyWith_Query_meetingsAttendanceAnalysis_historyMeetings_days<
    Query_meetingsAttendanceAnalysis_historyMeetings_days
  >
  get copyWith =>
      CopyWith_Query_meetingsAttendanceAnalysis_historyMeetings_days(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Query_meetingsAttendanceAnalysis_historyMeetings_days<
  TRes
> {
  factory CopyWith_Query_meetingsAttendanceAnalysis_historyMeetings_days(
    Query_meetingsAttendanceAnalysis_historyMeetings_days instance,
    TRes Function(Query_meetingsAttendanceAnalysis_historyMeetings_days) then,
  ) = _CopyWithImpl_Query_meetingsAttendanceAnalysis_historyMeetings_days;

  factory CopyWith_Query_meetingsAttendanceAnalysis_historyMeetings_days.stub(
    TRes res,
  ) = _CopyWithStubImpl_Query_meetingsAttendanceAnalysis_historyMeetings_days;

  TRes call({
    DateTime? day,
    int? studyYearId,
    Fragment_StudyYear? studyYear,
    bool? gender,
    int? personsCount,
    int? servantsCount,
    int? totalCount,
    String? $__typename,
  });
  CopyWith_Fragment_StudyYear<TRes> get studyYear;
}

class _CopyWithImpl_Query_meetingsAttendanceAnalysis_historyMeetings_days<TRes>
    implements
        CopyWith_Query_meetingsAttendanceAnalysis_historyMeetings_days<TRes> {
  _CopyWithImpl_Query_meetingsAttendanceAnalysis_historyMeetings_days(
    this._instance,
    this._then,
  );

  final Query_meetingsAttendanceAnalysis_historyMeetings_days _instance;

  final TRes Function(Query_meetingsAttendanceAnalysis_historyMeetings_days)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? day = _undefined,
    Object? studyYearId = _undefined,
    Object? studyYear = _undefined,
    Object? gender = _undefined,
    Object? personsCount = _undefined,
    Object? servantsCount = _undefined,
    Object? totalCount = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query_meetingsAttendanceAnalysis_historyMeetings_days(
      day: day == _undefined ? _instance.day : (day as DateTime?),
      studyYearId: studyYearId == _undefined
          ? _instance.studyYearId
          : (studyYearId as int?),
      studyYear: studyYear == _undefined
          ? _instance.studyYear
          : (studyYear as Fragment_StudyYear?),
      gender: gender == _undefined ? _instance.gender : (gender as bool?),
      personsCount: personsCount == _undefined
          ? _instance.personsCount
          : (personsCount as int?),
      servantsCount: servantsCount == _undefined
          ? _instance.servantsCount
          : (servantsCount as int?),
      totalCount: totalCount == _undefined
          ? _instance.totalCount
          : (totalCount as int?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Fragment_StudyYear<TRes> get studyYear {
    final local$studyYear = _instance.studyYear;
    return local$studyYear == null
        ? CopyWith_Fragment_StudyYear.stub(_then(_instance))
        : CopyWith_Fragment_StudyYear(
            local$studyYear,
            (e) => call(studyYear: e),
          );
  }
}

class _CopyWithStubImpl_Query_meetingsAttendanceAnalysis_historyMeetings_days<
  TRes
>
    implements
        CopyWith_Query_meetingsAttendanceAnalysis_historyMeetings_days<TRes> {
  _CopyWithStubImpl_Query_meetingsAttendanceAnalysis_historyMeetings_days(
    this._res,
  );

  TRes _res;

  call({
    DateTime? day,
    int? studyYearId,
    Fragment_StudyYear? studyYear,
    bool? gender,
    int? personsCount,
    int? servantsCount,
    int? totalCount,
    String? $__typename,
  }) => _res;

  CopyWith_Fragment_StudyYear<TRes> get studyYear =>
      CopyWith_Fragment_StudyYear.stub(_res);
}

class Variables_Query_meetingsRosterDemographics {
  factory Variables_Query_meetingsRosterDemographics({
    required DateTime day,
    List<Input_HistoryMeetingsBoolExp>? where,
    List<Input_HistoryMeetingRosterBoolExp>? rosterWhere,
  }) => Variables_Query_meetingsRosterDemographics._({
    r'day': day,
    if (where != null) r'where': where,
    if (rosterWhere != null) r'rosterWhere': rosterWhere,
  });

  Variables_Query_meetingsRosterDemographics._(this._$data);

  factory Variables_Query_meetingsRosterDemographics.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$day = data['day'];
    result$data['day'] = dateFromString(l$day);
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = (l$where as List<dynamic>?)
          ?.map(
            (e) => Input_HistoryMeetingsBoolExp.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('rosterWhere')) {
      final l$rosterWhere = data['rosterWhere'];
      result$data['rosterWhere'] = (l$rosterWhere as List<dynamic>?)
          ?.map(
            (e) => Input_HistoryMeetingRosterBoolExp.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    return Variables_Query_meetingsRosterDemographics._(result$data);
  }

  Map<String, dynamic> _$data;

  DateTime get day => (_$data['day'] as DateTime);

  List<Input_HistoryMeetingsBoolExp>? get where =>
      (_$data['where'] as List<Input_HistoryMeetingsBoolExp>?);

  List<Input_HistoryMeetingRosterBoolExp>? get rosterWhere =>
      (_$data['rosterWhere'] as List<Input_HistoryMeetingRosterBoolExp>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$day = day;
    result$data['day'] = dateToString(l$day);
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('rosterWhere')) {
      final l$rosterWhere = rosterWhere;
      result$data['rosterWhere'] = l$rosterWhere
          ?.map((e) => e.toJson())
          .toList();
    }
    return result$data;
  }

  CopyWith_Variables_Query_meetingsRosterDemographics<
    Variables_Query_meetingsRosterDemographics
  >
  get copyWith =>
      CopyWith_Variables_Query_meetingsRosterDemographics(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Query_meetingsRosterDemographics ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$day = day;
    final lOther$day = other.day;
    if (l$day != lOther$day) {
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
    final l$rosterWhere = rosterWhere;
    final lOther$rosterWhere = other.rosterWhere;
    if (_$data.containsKey('rosterWhere') !=
        other._$data.containsKey('rosterWhere')) {
      return false;
    }
    if (l$rosterWhere != null && lOther$rosterWhere != null) {
      if (l$rosterWhere.length != lOther$rosterWhere.length) {
        return false;
      }
      for (int i = 0; i < l$rosterWhere.length; i++) {
        final l$rosterWhere$entry = l$rosterWhere[i];
        final lOther$rosterWhere$entry = lOther$rosterWhere[i];
        if (l$rosterWhere$entry != lOther$rosterWhere$entry) {
          return false;
        }
      }
    } else if (l$rosterWhere != lOther$rosterWhere) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$day = day;
    final l$where = where;
    final l$rosterWhere = rosterWhere;
    return Object.hashAll([
      l$day,
      _$data.containsKey('where')
          ? l$where == null
                ? null
                : Object.hashAll(l$where.map((v) => v))
          : const {},
      _$data.containsKey('rosterWhere')
          ? l$rosterWhere == null
                ? null
                : Object.hashAll(l$rosterWhere.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith_Variables_Query_meetingsRosterDemographics<TRes> {
  factory CopyWith_Variables_Query_meetingsRosterDemographics(
    Variables_Query_meetingsRosterDemographics instance,
    TRes Function(Variables_Query_meetingsRosterDemographics) then,
  ) = _CopyWithImpl_Variables_Query_meetingsRosterDemographics;

  factory CopyWith_Variables_Query_meetingsRosterDemographics.stub(TRes res) =
      _CopyWithStubImpl_Variables_Query_meetingsRosterDemographics;

  TRes call({
    DateTime? day,
    List<Input_HistoryMeetingsBoolExp>? where,
    List<Input_HistoryMeetingRosterBoolExp>? rosterWhere,
  });
}

class _CopyWithImpl_Variables_Query_meetingsRosterDemographics<TRes>
    implements CopyWith_Variables_Query_meetingsRosterDemographics<TRes> {
  _CopyWithImpl_Variables_Query_meetingsRosterDemographics(
    this._instance,
    this._then,
  );

  final Variables_Query_meetingsRosterDemographics _instance;

  final TRes Function(Variables_Query_meetingsRosterDemographics) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? day = _undefined,
    Object? where = _undefined,
    Object? rosterWhere = _undefined,
  }) => _then(
    Variables_Query_meetingsRosterDemographics._({
      ..._instance._$data,
      if (day != _undefined && day != null) 'day': (day as DateTime),
      if (where != _undefined)
        'where': (where as List<Input_HistoryMeetingsBoolExp>?),
      if (rosterWhere != _undefined)
        'rosterWhere':
            (rosterWhere as List<Input_HistoryMeetingRosterBoolExp>?),
    }),
  );
}

class _CopyWithStubImpl_Variables_Query_meetingsRosterDemographics<TRes>
    implements CopyWith_Variables_Query_meetingsRosterDemographics<TRes> {
  _CopyWithStubImpl_Variables_Query_meetingsRosterDemographics(this._res);

  TRes _res;

  call({
    DateTime? day,
    List<Input_HistoryMeetingsBoolExp>? where,
    List<Input_HistoryMeetingRosterBoolExp>? rosterWhere,
  }) => _res;
}

class Query_meetingsRosterDemographics {
  Query_meetingsRosterDemographics({required this.historyMeetingRoster});

  factory Query_meetingsRosterDemographics.fromJson(Map<String, dynamic> json) {
    final l$historyMeetingRoster = json['historyMeetingRoster'];
    return Query_meetingsRosterDemographics(
      historyMeetingRoster: (l$historyMeetingRoster as List<dynamic>)
          .map(
            (e) =>
                Query_meetingsRosterDemographics_historyMeetingRoster.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
    );
  }

  final List<Query_meetingsRosterDemographics_historyMeetingRoster>
  historyMeetingRoster;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$historyMeetingRoster = historyMeetingRoster;
    _resultData['historyMeetingRoster'] = l$historyMeetingRoster
        .map((e) => e.toJson())
        .toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$historyMeetingRoster = historyMeetingRoster;
    return Object.hashAll([
      Object.hashAll(l$historyMeetingRoster.map((v) => v)),
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_meetingsRosterDemographics ||
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
    return true;
  }
}

extension UtilityExtension_Query_meetingsRosterDemographics
    on Query_meetingsRosterDemographics {
  CopyWith_Query_meetingsRosterDemographics<Query_meetingsRosterDemographics>
  get copyWith => CopyWith_Query_meetingsRosterDemographics(this, (i) => i);
}

abstract class CopyWith_Query_meetingsRosterDemographics<TRes> {
  factory CopyWith_Query_meetingsRosterDemographics(
    Query_meetingsRosterDemographics instance,
    TRes Function(Query_meetingsRosterDemographics) then,
  ) = _CopyWithImpl_Query_meetingsRosterDemographics;

  factory CopyWith_Query_meetingsRosterDemographics.stub(TRes res) =
      _CopyWithStubImpl_Query_meetingsRosterDemographics;

  TRes call({
    List<Query_meetingsRosterDemographics_historyMeetingRoster>?
    historyMeetingRoster,
  });
  TRes historyMeetingRoster(
    Iterable<Query_meetingsRosterDemographics_historyMeetingRoster> Function(
      Iterable<
        CopyWith_Query_meetingsRosterDemographics_historyMeetingRoster<
          Query_meetingsRosterDemographics_historyMeetingRoster
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl_Query_meetingsRosterDemographics<TRes>
    implements CopyWith_Query_meetingsRosterDemographics<TRes> {
  _CopyWithImpl_Query_meetingsRosterDemographics(this._instance, this._then);

  final Query_meetingsRosterDemographics _instance;

  final TRes Function(Query_meetingsRosterDemographics) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? historyMeetingRoster = _undefined}) => _then(
    Query_meetingsRosterDemographics(
      historyMeetingRoster:
          historyMeetingRoster == _undefined || historyMeetingRoster == null
          ? _instance.historyMeetingRoster
          : (historyMeetingRoster
                as List<Query_meetingsRosterDemographics_historyMeetingRoster>),
    ),
  );

  TRes historyMeetingRoster(
    Iterable<Query_meetingsRosterDemographics_historyMeetingRoster> Function(
      Iterable<
        CopyWith_Query_meetingsRosterDemographics_historyMeetingRoster<
          Query_meetingsRosterDemographics_historyMeetingRoster
        >
      >,
    )
    _fn,
  ) => call(
    historyMeetingRoster: _fn(
      _instance.historyMeetingRoster.map(
        (e) => CopyWith_Query_meetingsRosterDemographics_historyMeetingRoster(
          e,
          (i) => i,
        ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl_Query_meetingsRosterDemographics<TRes>
    implements CopyWith_Query_meetingsRosterDemographics<TRes> {
  _CopyWithStubImpl_Query_meetingsRosterDemographics(this._res);

  TRes _res;

  call({
    List<Query_meetingsRosterDemographics_historyMeetingRoster>?
    historyMeetingRoster,
  }) => _res;

  historyMeetingRoster(_fn) => _res;
}

const documentNodeQuerymeetingsRosterDemographics = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'meetingsRosterDemographics'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'day')),
          type: NamedTypeNode(name: NameNode(value: 'date'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'where')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'HistoryMeetingsBoolExp'),
              isNonNull: true,
            ),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: ListValueNode(values: [])),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'rosterWhere')),
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
                      name: NameNode(value: 'meeting'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: '_and'),
                            value: VariableNode(name: NameNode(value: 'where')),
                          ),
                        ],
                      ),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: '_and'),
                      value: VariableNode(name: NameNode(value: 'rosterWhere')),
                    ),
                  ],
                ),
              ),
              ArgumentNode(
                name: NameNode(value: 'orderBy'),
                value: ListValueNode(
                  values: [
                    ObjectValueNode(
                      fields: [
                        ObjectFieldNode(
                          name: NameNode(value: 'personId'),
                          value: EnumValueNode(name: NameNode(value: 'ASC')),
                        ),
                      ],
                    ),
                    ObjectValueNode(
                      fields: [
                        ObjectFieldNode(
                          name: NameNode(value: 'asServant'),
                          value: EnumValueNode(name: NameNode(value: 'ASC')),
                        ),
                      ],
                    ),
                    ObjectValueNode(
                      fields: [
                        ObjectFieldNode(
                          name: NameNode(value: 'meetingId'),
                          value: EnumValueNode(name: NameNode(value: 'ASC')),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              ArgumentNode(
                name: NameNode(value: 'distinctOn'),
                value: ListValueNode(
                  values: [
                    EnumValueNode(name: NameNode(value: 'personId')),
                    EnumValueNode(name: NameNode(value: 'asServant')),
                    EnumValueNode(name: NameNode(value: 'meetingId')),
                  ],
                ),
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
                  name: NameNode(value: 'asServant'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'meetingId'),
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
                  name: NameNode(value: 'gender'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'attendanceHistory'),
                  alias: null,
                  arguments: [
                    ArgumentNode(
                      name: NameNode(value: 'where'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'day'),
                            value: ObjectValueNode(
                              fields: [
                                ObjectFieldNode(
                                  name: NameNode(value: '_eq'),
                                  value: VariableNode(
                                    name: NameNode(value: 'day'),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'id'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'day'),
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
      ),
    ),
  ],
);

class Query_meetingsRosterDemographics_historyMeetingRoster {
  Query_meetingsRosterDemographics_historyMeetingRoster({
    this.personId,
    this.asServant,
    this.meetingId,
    this.studyYearId,
    this.studyYearName,
    this.gender,
    required this.attendanceHistory,
    this.$__typename = 'HistoryMeetingRoster',
  });

  factory Query_meetingsRosterDemographics_historyMeetingRoster.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$personId = json['personId'];
    final l$asServant = json['asServant'];
    final l$meetingId = json['meetingId'];
    final l$studyYearId = json['studyYearId'];
    final l$studyYearName = json['studyYearName'];
    final l$gender = json['gender'];
    final l$attendanceHistory = json['attendanceHistory'];
    final l$$__typename = json['__typename'];
    return Query_meetingsRosterDemographics_historyMeetingRoster(
      personId: l$personId == null ? null : stringToUuid(l$personId),
      asServant: (l$asServant as bool?),
      meetingId: l$meetingId == null ? null : stringToUuid(l$meetingId),
      studyYearId: (l$studyYearId as int?),
      studyYearName: (l$studyYearName as String?),
      gender: (l$gender as bool?),
      attendanceHistory: (l$attendanceHistory as List<dynamic>)
          .map(
            (e) =>
                Query_meetingsRosterDemographics_historyMeetingRoster_attendanceHistory.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue? personId;

  final bool? asServant;

  final UuidValue? meetingId;

  final int? studyYearId;

  final String? studyYearName;

  final bool? gender;

  final List<
    Query_meetingsRosterDemographics_historyMeetingRoster_attendanceHistory
  >
  attendanceHistory;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$personId = personId;
    _resultData['personId'] = l$personId == null
        ? null
        : uuidToString(l$personId);
    final l$asServant = asServant;
    _resultData['asServant'] = l$asServant;
    final l$meetingId = meetingId;
    _resultData['meetingId'] = l$meetingId == null
        ? null
        : uuidToString(l$meetingId);
    final l$studyYearId = studyYearId;
    _resultData['studyYearId'] = l$studyYearId;
    final l$studyYearName = studyYearName;
    _resultData['studyYearName'] = l$studyYearName;
    final l$gender = gender;
    _resultData['gender'] = l$gender;
    final l$attendanceHistory = attendanceHistory;
    _resultData['attendanceHistory'] = l$attendanceHistory
        .map((e) => e.toJson())
        .toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$personId = personId;
    final l$asServant = asServant;
    final l$meetingId = meetingId;
    final l$studyYearId = studyYearId;
    final l$studyYearName = studyYearName;
    final l$gender = gender;
    final l$attendanceHistory = attendanceHistory;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$personId,
      l$asServant,
      l$meetingId,
      l$studyYearId,
      l$studyYearName,
      l$gender,
      Object.hashAll(l$attendanceHistory.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_meetingsRosterDemographics_historyMeetingRoster ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$personId = personId;
    final lOther$personId = other.personId;
    if (l$personId != lOther$personId) {
      return false;
    }
    final l$asServant = asServant;
    final lOther$asServant = other.asServant;
    if (l$asServant != lOther$asServant) {
      return false;
    }
    final l$meetingId = meetingId;
    final lOther$meetingId = other.meetingId;
    if (l$meetingId != lOther$meetingId) {
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
    final l$gender = gender;
    final lOther$gender = other.gender;
    if (l$gender != lOther$gender) {
      return false;
    }
    final l$attendanceHistory = attendanceHistory;
    final lOther$attendanceHistory = other.attendanceHistory;
    if (l$attendanceHistory.length != lOther$attendanceHistory.length) {
      return false;
    }
    for (int i = 0; i < l$attendanceHistory.length; i++) {
      final l$attendanceHistory$entry = l$attendanceHistory[i];
      final lOther$attendanceHistory$entry = lOther$attendanceHistory[i];
      if (l$attendanceHistory$entry != lOther$attendanceHistory$entry) {
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

extension UtilityExtension_Query_meetingsRosterDemographics_historyMeetingRoster
    on Query_meetingsRosterDemographics_historyMeetingRoster {
  CopyWith_Query_meetingsRosterDemographics_historyMeetingRoster<
    Query_meetingsRosterDemographics_historyMeetingRoster
  >
  get copyWith =>
      CopyWith_Query_meetingsRosterDemographics_historyMeetingRoster(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Query_meetingsRosterDemographics_historyMeetingRoster<
  TRes
> {
  factory CopyWith_Query_meetingsRosterDemographics_historyMeetingRoster(
    Query_meetingsRosterDemographics_historyMeetingRoster instance,
    TRes Function(Query_meetingsRosterDemographics_historyMeetingRoster) then,
  ) = _CopyWithImpl_Query_meetingsRosterDemographics_historyMeetingRoster;

  factory CopyWith_Query_meetingsRosterDemographics_historyMeetingRoster.stub(
    TRes res,
  ) = _CopyWithStubImpl_Query_meetingsRosterDemographics_historyMeetingRoster;

  TRes call({
    UuidValue? personId,
    bool? asServant,
    UuidValue? meetingId,
    int? studyYearId,
    String? studyYearName,
    bool? gender,
    List<
      Query_meetingsRosterDemographics_historyMeetingRoster_attendanceHistory
    >?
    attendanceHistory,
    String? $__typename,
  });
  TRes attendanceHistory(
    Iterable<
      Query_meetingsRosterDemographics_historyMeetingRoster_attendanceHistory
    >
    Function(
      Iterable<
        CopyWith_Query_meetingsRosterDemographics_historyMeetingRoster_attendanceHistory<
          Query_meetingsRosterDemographics_historyMeetingRoster_attendanceHistory
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl_Query_meetingsRosterDemographics_historyMeetingRoster<TRes>
    implements
        CopyWith_Query_meetingsRosterDemographics_historyMeetingRoster<TRes> {
  _CopyWithImpl_Query_meetingsRosterDemographics_historyMeetingRoster(
    this._instance,
    this._then,
  );

  final Query_meetingsRosterDemographics_historyMeetingRoster _instance;

  final TRes Function(Query_meetingsRosterDemographics_historyMeetingRoster)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? personId = _undefined,
    Object? asServant = _undefined,
    Object? meetingId = _undefined,
    Object? studyYearId = _undefined,
    Object? studyYearName = _undefined,
    Object? gender = _undefined,
    Object? attendanceHistory = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query_meetingsRosterDemographics_historyMeetingRoster(
      personId: personId == _undefined
          ? _instance.personId
          : (personId as UuidValue?),
      asServant: asServant == _undefined
          ? _instance.asServant
          : (asServant as bool?),
      meetingId: meetingId == _undefined
          ? _instance.meetingId
          : (meetingId as UuidValue?),
      studyYearId: studyYearId == _undefined
          ? _instance.studyYearId
          : (studyYearId as int?),
      studyYearName: studyYearName == _undefined
          ? _instance.studyYearName
          : (studyYearName as String?),
      gender: gender == _undefined ? _instance.gender : (gender as bool?),
      attendanceHistory:
          attendanceHistory == _undefined || attendanceHistory == null
          ? _instance.attendanceHistory
          : (attendanceHistory
                as List<
                  Query_meetingsRosterDemographics_historyMeetingRoster_attendanceHistory
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes attendanceHistory(
    Iterable<
      Query_meetingsRosterDemographics_historyMeetingRoster_attendanceHistory
    >
    Function(
      Iterable<
        CopyWith_Query_meetingsRosterDemographics_historyMeetingRoster_attendanceHistory<
          Query_meetingsRosterDemographics_historyMeetingRoster_attendanceHistory
        >
      >,
    )
    _fn,
  ) => call(
    attendanceHistory: _fn(
      _instance.attendanceHistory.map(
        (e) =>
            CopyWith_Query_meetingsRosterDemographics_historyMeetingRoster_attendanceHistory(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl_Query_meetingsRosterDemographics_historyMeetingRoster<
  TRes
>
    implements
        CopyWith_Query_meetingsRosterDemographics_historyMeetingRoster<TRes> {
  _CopyWithStubImpl_Query_meetingsRosterDemographics_historyMeetingRoster(
    this._res,
  );

  TRes _res;

  call({
    UuidValue? personId,
    bool? asServant,
    UuidValue? meetingId,
    int? studyYearId,
    String? studyYearName,
    bool? gender,
    List<
      Query_meetingsRosterDemographics_historyMeetingRoster_attendanceHistory
    >?
    attendanceHistory,
    String? $__typename,
  }) => _res;

  attendanceHistory(_fn) => _res;
}

class Query_meetingsRosterDemographics_historyMeetingRoster_attendanceHistory {
  Query_meetingsRosterDemographics_historyMeetingRoster_attendanceHistory({
    required this.id,
    this.day,
    this.$__typename = 'HistoryAttendanceHistory',
  });

  factory Query_meetingsRosterDemographics_historyMeetingRoster_attendanceHistory.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$day = json['day'];
    final l$$__typename = json['__typename'];
    return Query_meetingsRosterDemographics_historyMeetingRoster_attendanceHistory(
      id: stringToUuid(l$id),
      day: l$day == null ? null : dateFromString(l$day),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final DateTime? day;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$day = day;
    _resultData['day'] = l$day == null ? null : dateToString(l$day);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$day = day;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$day, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query_meetingsRosterDemographics_historyMeetingRoster_attendanceHistory ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$day = day;
    final lOther$day = other.day;
    if (l$day != lOther$day) {
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

extension UtilityExtension_Query_meetingsRosterDemographics_historyMeetingRoster_attendanceHistory
    on Query_meetingsRosterDemographics_historyMeetingRoster_attendanceHistory {
  CopyWith_Query_meetingsRosterDemographics_historyMeetingRoster_attendanceHistory<
    Query_meetingsRosterDemographics_historyMeetingRoster_attendanceHistory
  >
  get copyWith =>
      CopyWith_Query_meetingsRosterDemographics_historyMeetingRoster_attendanceHistory(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Query_meetingsRosterDemographics_historyMeetingRoster_attendanceHistory<
  TRes
> {
  factory CopyWith_Query_meetingsRosterDemographics_historyMeetingRoster_attendanceHistory(
    Query_meetingsRosterDemographics_historyMeetingRoster_attendanceHistory
    instance,
    TRes Function(
      Query_meetingsRosterDemographics_historyMeetingRoster_attendanceHistory,
    )
    then,
  ) = _CopyWithImpl_Query_meetingsRosterDemographics_historyMeetingRoster_attendanceHistory;

  factory CopyWith_Query_meetingsRosterDemographics_historyMeetingRoster_attendanceHistory.stub(
    TRes res,
  ) = _CopyWithStubImpl_Query_meetingsRosterDemographics_historyMeetingRoster_attendanceHistory;

  TRes call({UuidValue? id, DateTime? day, String? $__typename});
}

class _CopyWithImpl_Query_meetingsRosterDemographics_historyMeetingRoster_attendanceHistory<
  TRes
>
    implements
        CopyWith_Query_meetingsRosterDemographics_historyMeetingRoster_attendanceHistory<
          TRes
        > {
  _CopyWithImpl_Query_meetingsRosterDemographics_historyMeetingRoster_attendanceHistory(
    this._instance,
    this._then,
  );

  final Query_meetingsRosterDemographics_historyMeetingRoster_attendanceHistory
  _instance;

  final TRes Function(
    Query_meetingsRosterDemographics_historyMeetingRoster_attendanceHistory,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? day = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query_meetingsRosterDemographics_historyMeetingRoster_attendanceHistory(
      id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
      day: day == _undefined ? _instance.day : (day as DateTime?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Query_meetingsRosterDemographics_historyMeetingRoster_attendanceHistory<
  TRes
>
    implements
        CopyWith_Query_meetingsRosterDemographics_historyMeetingRoster_attendanceHistory<
          TRes
        > {
  _CopyWithStubImpl_Query_meetingsRosterDemographics_historyMeetingRoster_attendanceHistory(
    this._res,
  );

  TRes _res;

  call({UuidValue? id, DateTime? day, String? $__typename}) => _res;
}

class Variables_Query_personMeetings {
  factory Variables_Query_personMeetings({
    required UuidValue personId,
    List<Input_HistoryMeetingRosterBoolExp>? where,
  }) => Variables_Query_personMeetings._({
    r'personId': personId,
    if (where != null) r'where': where,
  });

  Variables_Query_personMeetings._(this._$data);

  factory Variables_Query_personMeetings.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$personId = data['personId'];
    result$data['personId'] = stringToUuid(l$personId);
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
    return Variables_Query_personMeetings._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get personId => (_$data['personId'] as UuidValue);

  List<Input_HistoryMeetingRosterBoolExp>? get where =>
      (_$data['where'] as List<Input_HistoryMeetingRosterBoolExp>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$personId = personId;
    result$data['personId'] = uuidToString(l$personId);
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.map((e) => e.toJson()).toList();
    }
    return result$data;
  }

  CopyWith_Variables_Query_personMeetings<Variables_Query_personMeetings>
  get copyWith => CopyWith_Variables_Query_personMeetings(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Query_personMeetings ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$personId = personId;
    final lOther$personId = other.personId;
    if (l$personId != lOther$personId) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$personId = personId;
    final l$where = where;
    return Object.hashAll([
      l$personId,
      _$data.containsKey('where')
          ? l$where == null
                ? null
                : Object.hashAll(l$where.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith_Variables_Query_personMeetings<TRes> {
  factory CopyWith_Variables_Query_personMeetings(
    Variables_Query_personMeetings instance,
    TRes Function(Variables_Query_personMeetings) then,
  ) = _CopyWithImpl_Variables_Query_personMeetings;

  factory CopyWith_Variables_Query_personMeetings.stub(TRes res) =
      _CopyWithStubImpl_Variables_Query_personMeetings;

  TRes call({
    UuidValue? personId,
    List<Input_HistoryMeetingRosterBoolExp>? where,
  });
}

class _CopyWithImpl_Variables_Query_personMeetings<TRes>
    implements CopyWith_Variables_Query_personMeetings<TRes> {
  _CopyWithImpl_Variables_Query_personMeetings(this._instance, this._then);

  final Variables_Query_personMeetings _instance;

  final TRes Function(Variables_Query_personMeetings) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? personId = _undefined, Object? where = _undefined}) =>
      _then(
        Variables_Query_personMeetings._({
          ..._instance._$data,
          if (personId != _undefined && personId != null)
            'personId': (personId as UuidValue),
          if (where != _undefined)
            'where': (where as List<Input_HistoryMeetingRosterBoolExp>?),
        }),
      );
}

class _CopyWithStubImpl_Variables_Query_personMeetings<TRes>
    implements CopyWith_Variables_Query_personMeetings<TRes> {
  _CopyWithStubImpl_Variables_Query_personMeetings(this._res);

  TRes _res;

  call({UuidValue? personId, List<Input_HistoryMeetingRosterBoolExp>? where}) =>
      _res;
}

class Query_personMeetings {
  Query_personMeetings({required this.historyMeetingRoster});

  factory Query_personMeetings.fromJson(Map<String, dynamic> json) {
    final l$historyMeetingRoster = json['historyMeetingRoster'];
    return Query_personMeetings(
      historyMeetingRoster: (l$historyMeetingRoster as List<dynamic>)
          .map(
            (e) => Query_personMeetings_historyMeetingRoster.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
    );
  }

  final List<Query_personMeetings_historyMeetingRoster> historyMeetingRoster;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$historyMeetingRoster = historyMeetingRoster;
    _resultData['historyMeetingRoster'] = l$historyMeetingRoster
        .map((e) => e.toJson())
        .toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$historyMeetingRoster = historyMeetingRoster;
    return Object.hashAll([
      Object.hashAll(l$historyMeetingRoster.map((v) => v)),
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_personMeetings || runtimeType != other.runtimeType) {
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
    return true;
  }
}

extension UtilityExtension_Query_personMeetings on Query_personMeetings {
  CopyWith_Query_personMeetings<Query_personMeetings> get copyWith =>
      CopyWith_Query_personMeetings(this, (i) => i);
}

abstract class CopyWith_Query_personMeetings<TRes> {
  factory CopyWith_Query_personMeetings(
    Query_personMeetings instance,
    TRes Function(Query_personMeetings) then,
  ) = _CopyWithImpl_Query_personMeetings;

  factory CopyWith_Query_personMeetings.stub(TRes res) =
      _CopyWithStubImpl_Query_personMeetings;

  TRes call({
    List<Query_personMeetings_historyMeetingRoster>? historyMeetingRoster,
  });
  TRes historyMeetingRoster(
    Iterable<Query_personMeetings_historyMeetingRoster> Function(
      Iterable<
        CopyWith_Query_personMeetings_historyMeetingRoster<
          Query_personMeetings_historyMeetingRoster
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl_Query_personMeetings<TRes>
    implements CopyWith_Query_personMeetings<TRes> {
  _CopyWithImpl_Query_personMeetings(this._instance, this._then);

  final Query_personMeetings _instance;

  final TRes Function(Query_personMeetings) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? historyMeetingRoster = _undefined}) => _then(
    Query_personMeetings(
      historyMeetingRoster:
          historyMeetingRoster == _undefined || historyMeetingRoster == null
          ? _instance.historyMeetingRoster
          : (historyMeetingRoster
                as List<Query_personMeetings_historyMeetingRoster>),
    ),
  );

  TRes historyMeetingRoster(
    Iterable<Query_personMeetings_historyMeetingRoster> Function(
      Iterable<
        CopyWith_Query_personMeetings_historyMeetingRoster<
          Query_personMeetings_historyMeetingRoster
        >
      >,
    )
    _fn,
  ) => call(
    historyMeetingRoster: _fn(
      _instance.historyMeetingRoster.map(
        (e) => CopyWith_Query_personMeetings_historyMeetingRoster(e, (i) => i),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl_Query_personMeetings<TRes>
    implements CopyWith_Query_personMeetings<TRes> {
  _CopyWithStubImpl_Query_personMeetings(this._res);

  TRes _res;

  call({
    List<Query_personMeetings_historyMeetingRoster>? historyMeetingRoster,
  }) => _res;

  historyMeetingRoster(_fn) => _res;
}

const documentNodeQuerypersonMeetings = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'personMeetings'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'personId')),
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
                      name: NameNode(value: 'personId'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: '_eq'),
                            value: VariableNode(
                              name: NameNode(value: 'personId'),
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
                value: ListValueNode(
                  values: [
                    ObjectValueNode(
                      fields: [
                        ObjectFieldNode(
                          name: NameNode(value: 'asServant'),
                          value: EnumValueNode(name: NameNode(value: 'ASC')),
                        ),
                      ],
                    ),
                    ObjectValueNode(
                      fields: [
                        ObjectFieldNode(
                          name: NameNode(value: 'meetingId'),
                          value: EnumValueNode(name: NameNode(value: 'ASC')),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              ArgumentNode(
                name: NameNode(value: 'distinctOn'),
                value: ListValueNode(
                  values: [
                    EnumValueNode(name: NameNode(value: 'asServant')),
                    EnumValueNode(name: NameNode(value: 'meetingId')),
                  ],
                ),
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
                  name: NameNode(value: 'asServant'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'meetingId'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'meeting'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FragmentSpreadNode(
                        name: NameNode(value: 'Meeting'),
                        directives: [],
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
      ),
    ),
    fragmentDefinitionMeeting,
    fragmentDefinitionServiceNoPhoto,
    fragmentDefinitionStudyYear,
    fragmentDefinitionGroupNoPhoto,
  ],
);

class Query_personMeetings_historyMeetingRoster {
  Query_personMeetings_historyMeetingRoster({
    this.personId,
    this.asServant,
    this.meetingId,
    this.meeting,
    this.$__typename = 'HistoryMeetingRoster',
  });

  factory Query_personMeetings_historyMeetingRoster.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$personId = json['personId'];
    final l$asServant = json['asServant'];
    final l$meetingId = json['meetingId'];
    final l$meeting = json['meeting'];
    final l$$__typename = json['__typename'];
    return Query_personMeetings_historyMeetingRoster(
      personId: l$personId == null ? null : stringToUuid(l$personId),
      asServant: (l$asServant as bool?),
      meetingId: l$meetingId == null ? null : stringToUuid(l$meetingId),
      meeting: l$meeting == null
          ? null
          : Fragment_Meeting.fromJson((l$meeting as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue? personId;

  final bool? asServant;

  final UuidValue? meetingId;

  final Fragment_Meeting? meeting;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$personId = personId;
    _resultData['personId'] = l$personId == null
        ? null
        : uuidToString(l$personId);
    final l$asServant = asServant;
    _resultData['asServant'] = l$asServant;
    final l$meetingId = meetingId;
    _resultData['meetingId'] = l$meetingId == null
        ? null
        : uuidToString(l$meetingId);
    final l$meeting = meeting;
    _resultData['meeting'] = l$meeting?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$personId = personId;
    final l$asServant = asServant;
    final l$meetingId = meetingId;
    final l$meeting = meeting;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$personId,
      l$asServant,
      l$meetingId,
      l$meeting,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_personMeetings_historyMeetingRoster ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$personId = personId;
    final lOther$personId = other.personId;
    if (l$personId != lOther$personId) {
      return false;
    }
    final l$asServant = asServant;
    final lOther$asServant = other.asServant;
    if (l$asServant != lOther$asServant) {
      return false;
    }
    final l$meetingId = meetingId;
    final lOther$meetingId = other.meetingId;
    if (l$meetingId != lOther$meetingId) {
      return false;
    }
    final l$meeting = meeting;
    final lOther$meeting = other.meeting;
    if (l$meeting != lOther$meeting) {
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

extension UtilityExtension_Query_personMeetings_historyMeetingRoster
    on Query_personMeetings_historyMeetingRoster {
  CopyWith_Query_personMeetings_historyMeetingRoster<
    Query_personMeetings_historyMeetingRoster
  >
  get copyWith =>
      CopyWith_Query_personMeetings_historyMeetingRoster(this, (i) => i);
}

abstract class CopyWith_Query_personMeetings_historyMeetingRoster<TRes> {
  factory CopyWith_Query_personMeetings_historyMeetingRoster(
    Query_personMeetings_historyMeetingRoster instance,
    TRes Function(Query_personMeetings_historyMeetingRoster) then,
  ) = _CopyWithImpl_Query_personMeetings_historyMeetingRoster;

  factory CopyWith_Query_personMeetings_historyMeetingRoster.stub(TRes res) =
      _CopyWithStubImpl_Query_personMeetings_historyMeetingRoster;

  TRes call({
    UuidValue? personId,
    bool? asServant,
    UuidValue? meetingId,
    Fragment_Meeting? meeting,
    String? $__typename,
  });
  CopyWith_Fragment_Meeting<TRes> get meeting;
}

class _CopyWithImpl_Query_personMeetings_historyMeetingRoster<TRes>
    implements CopyWith_Query_personMeetings_historyMeetingRoster<TRes> {
  _CopyWithImpl_Query_personMeetings_historyMeetingRoster(
    this._instance,
    this._then,
  );

  final Query_personMeetings_historyMeetingRoster _instance;

  final TRes Function(Query_personMeetings_historyMeetingRoster) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? personId = _undefined,
    Object? asServant = _undefined,
    Object? meetingId = _undefined,
    Object? meeting = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query_personMeetings_historyMeetingRoster(
      personId: personId == _undefined
          ? _instance.personId
          : (personId as UuidValue?),
      asServant: asServant == _undefined
          ? _instance.asServant
          : (asServant as bool?),
      meetingId: meetingId == _undefined
          ? _instance.meetingId
          : (meetingId as UuidValue?),
      meeting: meeting == _undefined
          ? _instance.meeting
          : (meeting as Fragment_Meeting?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Fragment_Meeting<TRes> get meeting {
    final local$meeting = _instance.meeting;
    return local$meeting == null
        ? CopyWith_Fragment_Meeting.stub(_then(_instance))
        : CopyWith_Fragment_Meeting(local$meeting, (e) => call(meeting: e));
  }
}

class _CopyWithStubImpl_Query_personMeetings_historyMeetingRoster<TRes>
    implements CopyWith_Query_personMeetings_historyMeetingRoster<TRes> {
  _CopyWithStubImpl_Query_personMeetings_historyMeetingRoster(this._res);

  TRes _res;

  call({
    UuidValue? personId,
    bool? asServant,
    UuidValue? meetingId,
    Fragment_Meeting? meeting,
    String? $__typename,
  }) => _res;

  CopyWith_Fragment_Meeting<TRes> get meeting =>
      CopyWith_Fragment_Meeting.stub(_res);
}
