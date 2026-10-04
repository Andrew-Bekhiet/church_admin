import '../../../../../graphql/__generated__/schema.graphql.dart';
import '../../gql/__generated__/fragments.gql.dart';
import '../../groups/__generated__/fragments.gql.dart';
import '../../metadata/study_years/__generated__/fragments.gql.dart';
import '../../services/__generated__/fragments.gql.dart';
import '../../users/__generated__/fragments.gql.dart';
import 'fragments.gql.dart';
import 'package:church_admin/src/core/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Variables_Subscription_watchAllMeetings {
  factory Variables_Subscription_watchAllMeetings({
    List<Input_HistoryMeetingsBoolExp>? where,
    List<Input_HistoryMeetingsOrderBy>? orderBy,
    int? limit,
  }) => Variables_Subscription_watchAllMeetings._({
    if (where != null) r'where': where,
    if (orderBy != null) r'orderBy': orderBy,
    if (limit != null) r'limit': limit,
  });

  Variables_Subscription_watchAllMeetings._(this._$data);

  factory Variables_Subscription_watchAllMeetings.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
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
    if (data.containsKey('orderBy')) {
      final l$orderBy = data['orderBy'];
      result$data['orderBy'] = (l$orderBy as List<dynamic>?)
          ?.map(
            (e) => Input_HistoryMeetingsOrderBy.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('limit')) {
      final l$limit = data['limit'];
      result$data['limit'] = (l$limit as int?);
    }
    return Variables_Subscription_watchAllMeetings._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_HistoryMeetingsBoolExp>? get where =>
      (_$data['where'] as List<Input_HistoryMeetingsBoolExp>?);

  List<Input_HistoryMeetingsOrderBy>? get orderBy =>
      (_$data['orderBy'] as List<Input_HistoryMeetingsOrderBy>?);

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

  CopyWith_Variables_Subscription_watchAllMeetings<
    Variables_Subscription_watchAllMeetings
  >
  get copyWith =>
      CopyWith_Variables_Subscription_watchAllMeetings(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Subscription_watchAllMeetings ||
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

abstract class CopyWith_Variables_Subscription_watchAllMeetings<TRes> {
  factory CopyWith_Variables_Subscription_watchAllMeetings(
    Variables_Subscription_watchAllMeetings instance,
    TRes Function(Variables_Subscription_watchAllMeetings) then,
  ) = _CopyWithImpl_Variables_Subscription_watchAllMeetings;

  factory CopyWith_Variables_Subscription_watchAllMeetings.stub(TRes res) =
      _CopyWithStubImpl_Variables_Subscription_watchAllMeetings;

  TRes call({
    List<Input_HistoryMeetingsBoolExp>? where,
    List<Input_HistoryMeetingsOrderBy>? orderBy,
    int? limit,
  });
}

class _CopyWithImpl_Variables_Subscription_watchAllMeetings<TRes>
    implements CopyWith_Variables_Subscription_watchAllMeetings<TRes> {
  _CopyWithImpl_Variables_Subscription_watchAllMeetings(
    this._instance,
    this._then,
  );

  final Variables_Subscription_watchAllMeetings _instance;

  final TRes Function(Variables_Subscription_watchAllMeetings) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? where = _undefined,
    Object? orderBy = _undefined,
    Object? limit = _undefined,
  }) => _then(
    Variables_Subscription_watchAllMeetings._({
      ..._instance._$data,
      if (where != _undefined)
        'where': (where as List<Input_HistoryMeetingsBoolExp>?),
      if (orderBy != _undefined)
        'orderBy': (orderBy as List<Input_HistoryMeetingsOrderBy>?),
      if (limit != _undefined) 'limit': (limit as int?),
    }),
  );
}

class _CopyWithStubImpl_Variables_Subscription_watchAllMeetings<TRes>
    implements CopyWith_Variables_Subscription_watchAllMeetings<TRes> {
  _CopyWithStubImpl_Variables_Subscription_watchAllMeetings(this._res);

  TRes _res;

  call({
    List<Input_HistoryMeetingsBoolExp>? where,
    List<Input_HistoryMeetingsOrderBy>? orderBy,
    int? limit,
  }) => _res;
}

class Subscription_watchAllMeetings {
  Subscription_watchAllMeetings({required this.historyMeetings});

  factory Subscription_watchAllMeetings.fromJson(Map<String, dynamic> json) {
    final l$historyMeetings = json['historyMeetings'];
    return Subscription_watchAllMeetings(
      historyMeetings: (l$historyMeetings as List<dynamic>)
          .map((e) => Fragment_Meeting.fromJson((e as Map<String, dynamic>)))
          .toList(),
    );
  }

  final List<Fragment_Meeting> historyMeetings;

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
    if (other is! Subscription_watchAllMeetings ||
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

extension UtilityExtension_Subscription_watchAllMeetings
    on Subscription_watchAllMeetings {
  CopyWith_Subscription_watchAllMeetings<Subscription_watchAllMeetings>
  get copyWith => CopyWith_Subscription_watchAllMeetings(this, (i) => i);
}

abstract class CopyWith_Subscription_watchAllMeetings<TRes> {
  factory CopyWith_Subscription_watchAllMeetings(
    Subscription_watchAllMeetings instance,
    TRes Function(Subscription_watchAllMeetings) then,
  ) = _CopyWithImpl_Subscription_watchAllMeetings;

  factory CopyWith_Subscription_watchAllMeetings.stub(TRes res) =
      _CopyWithStubImpl_Subscription_watchAllMeetings;

  TRes call({List<Fragment_Meeting>? historyMeetings});
  TRes historyMeetings(
    Iterable<Fragment_Meeting> Function(
      Iterable<CopyWith_Fragment_Meeting<Fragment_Meeting>>,
    )
    _fn,
  );
}

class _CopyWithImpl_Subscription_watchAllMeetings<TRes>
    implements CopyWith_Subscription_watchAllMeetings<TRes> {
  _CopyWithImpl_Subscription_watchAllMeetings(this._instance, this._then);

  final Subscription_watchAllMeetings _instance;

  final TRes Function(Subscription_watchAllMeetings) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? historyMeetings = _undefined}) => _then(
    Subscription_watchAllMeetings(
      historyMeetings: historyMeetings == _undefined || historyMeetings == null
          ? _instance.historyMeetings
          : (historyMeetings as List<Fragment_Meeting>),
    ),
  );

  TRes historyMeetings(
    Iterable<Fragment_Meeting> Function(
      Iterable<CopyWith_Fragment_Meeting<Fragment_Meeting>>,
    )
    _fn,
  ) => call(
    historyMeetings: _fn(
      _instance.historyMeetings.map(
        (e) => CopyWith_Fragment_Meeting(e, (i) => i),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl_Subscription_watchAllMeetings<TRes>
    implements CopyWith_Subscription_watchAllMeetings<TRes> {
  _CopyWithStubImpl_Subscription_watchAllMeetings(this._res);

  TRes _res;

  call({List<Fragment_Meeting>? historyMeetings}) => _res;

  historyMeetings(_fn) => _res;
}

const documentNodeSubscriptionwatchAllMeetings = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.subscription,
      name: NameNode(value: 'watchAllMeetings'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'where')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'HistoryMeetingsBoolExp'),
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
              name: NameNode(value: 'HistoryMeetingsOrderBy'),
              isNonNull: true,
            ),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(
            value: ObjectValueNode(
              fields: [
                ObjectFieldNode(
                  name: NameNode(value: 'name'),
                  value: EnumValueNode(name: NameNode(value: 'ASC')),
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
        ],
      ),
    ),
    fragmentDefinitionMeeting,
    fragmentDefinitionServiceNoPhoto,
    fragmentDefinitionStudyYear,
    fragmentDefinitionGroupNoPhoto,
  ],
);

class Variables_Subscription_watchMeeting {
  factory Variables_Subscription_watchMeeting({required UuidValue id}) =>
      Variables_Subscription_watchMeeting._({r'id': id});

  Variables_Subscription_watchMeeting._(this._$data);

  factory Variables_Subscription_watchMeeting.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = stringToUuid(l$id);
    return Variables_Subscription_watchMeeting._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get id => (_$data['id'] as UuidValue);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = uuidToString(l$id);
    return result$data;
  }

  CopyWith_Variables_Subscription_watchMeeting<
    Variables_Subscription_watchMeeting
  >
  get copyWith => CopyWith_Variables_Subscription_watchMeeting(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Subscription_watchMeeting ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }
}

abstract class CopyWith_Variables_Subscription_watchMeeting<TRes> {
  factory CopyWith_Variables_Subscription_watchMeeting(
    Variables_Subscription_watchMeeting instance,
    TRes Function(Variables_Subscription_watchMeeting) then,
  ) = _CopyWithImpl_Variables_Subscription_watchMeeting;

  factory CopyWith_Variables_Subscription_watchMeeting.stub(TRes res) =
      _CopyWithStubImpl_Variables_Subscription_watchMeeting;

  TRes call({UuidValue? id});
}

class _CopyWithImpl_Variables_Subscription_watchMeeting<TRes>
    implements CopyWith_Variables_Subscription_watchMeeting<TRes> {
  _CopyWithImpl_Variables_Subscription_watchMeeting(this._instance, this._then);

  final Variables_Subscription_watchMeeting _instance;

  final TRes Function(Variables_Subscription_watchMeeting) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(
    Variables_Subscription_watchMeeting._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as UuidValue),
    }),
  );
}

class _CopyWithStubImpl_Variables_Subscription_watchMeeting<TRes>
    implements CopyWith_Variables_Subscription_watchMeeting<TRes> {
  _CopyWithStubImpl_Variables_Subscription_watchMeeting(this._res);

  TRes _res;

  call({UuidValue? id}) => _res;
}

class Subscription_watchMeeting {
  Subscription_watchMeeting({this.historyMeetingsByPk});

  factory Subscription_watchMeeting.fromJson(Map<String, dynamic> json) {
    final l$historyMeetingsByPk = json['historyMeetingsByPk'];
    return Subscription_watchMeeting(
      historyMeetingsByPk: l$historyMeetingsByPk == null
          ? null
          : Fragment_Meeting.fromJson(
              (l$historyMeetingsByPk as Map<String, dynamic>),
            ),
    );
  }

  final Fragment_Meeting? historyMeetingsByPk;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$historyMeetingsByPk = historyMeetingsByPk;
    _resultData['historyMeetingsByPk'] = l$historyMeetingsByPk?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$historyMeetingsByPk = historyMeetingsByPk;
    return Object.hashAll([l$historyMeetingsByPk]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Subscription_watchMeeting ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$historyMeetingsByPk = historyMeetingsByPk;
    final lOther$historyMeetingsByPk = other.historyMeetingsByPk;
    if (l$historyMeetingsByPk != lOther$historyMeetingsByPk) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Subscription_watchMeeting
    on Subscription_watchMeeting {
  CopyWith_Subscription_watchMeeting<Subscription_watchMeeting> get copyWith =>
      CopyWith_Subscription_watchMeeting(this, (i) => i);
}

abstract class CopyWith_Subscription_watchMeeting<TRes> {
  factory CopyWith_Subscription_watchMeeting(
    Subscription_watchMeeting instance,
    TRes Function(Subscription_watchMeeting) then,
  ) = _CopyWithImpl_Subscription_watchMeeting;

  factory CopyWith_Subscription_watchMeeting.stub(TRes res) =
      _CopyWithStubImpl_Subscription_watchMeeting;

  TRes call({Fragment_Meeting? historyMeetingsByPk});
  CopyWith_Fragment_Meeting<TRes> get historyMeetingsByPk;
}

class _CopyWithImpl_Subscription_watchMeeting<TRes>
    implements CopyWith_Subscription_watchMeeting<TRes> {
  _CopyWithImpl_Subscription_watchMeeting(this._instance, this._then);

  final Subscription_watchMeeting _instance;

  final TRes Function(Subscription_watchMeeting) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? historyMeetingsByPk = _undefined}) => _then(
    Subscription_watchMeeting(
      historyMeetingsByPk: historyMeetingsByPk == _undefined
          ? _instance.historyMeetingsByPk
          : (historyMeetingsByPk as Fragment_Meeting?),
    ),
  );

  CopyWith_Fragment_Meeting<TRes> get historyMeetingsByPk {
    final local$historyMeetingsByPk = _instance.historyMeetingsByPk;
    return local$historyMeetingsByPk == null
        ? CopyWith_Fragment_Meeting.stub(_then(_instance))
        : CopyWith_Fragment_Meeting(
            local$historyMeetingsByPk,
            (e) => call(historyMeetingsByPk: e),
          );
  }
}

class _CopyWithStubImpl_Subscription_watchMeeting<TRes>
    implements CopyWith_Subscription_watchMeeting<TRes> {
  _CopyWithStubImpl_Subscription_watchMeeting(this._res);

  TRes _res;

  call({Fragment_Meeting? historyMeetingsByPk}) => _res;

  CopyWith_Fragment_Meeting<TRes> get historyMeetingsByPk =>
      CopyWith_Fragment_Meeting.stub(_res);
}

const documentNodeSubscriptionwatchMeeting = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.subscription,
      name: NameNode(value: 'watchMeeting'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'id')),
          type: NamedTypeNode(name: NameNode(value: 'uuid'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'historyMeetingsByPk'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'id'),
                value: VariableNode(name: NameNode(value: 'id')),
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

class Variables_Subscription_watchAttendanceHistory {
  factory Variables_Subscription_watchAttendanceHistory({
    required UuidValue meetingId,
    required DateTime fromDate,
    required DateTime toDate,
  }) => Variables_Subscription_watchAttendanceHistory._({
    r'meetingId': meetingId,
    r'fromDate': fromDate,
    r'toDate': toDate,
  });

  Variables_Subscription_watchAttendanceHistory._(this._$data);

  factory Variables_Subscription_watchAttendanceHistory.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$meetingId = data['meetingId'];
    result$data['meetingId'] = stringToUuid(l$meetingId);
    final l$fromDate = data['fromDate'];
    result$data['fromDate'] = tstzFromString(l$fromDate);
    final l$toDate = data['toDate'];
    result$data['toDate'] = tstzFromString(l$toDate);
    return Variables_Subscription_watchAttendanceHistory._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get meetingId => (_$data['meetingId'] as UuidValue);

  DateTime get fromDate => (_$data['fromDate'] as DateTime);

  DateTime get toDate => (_$data['toDate'] as DateTime);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$meetingId = meetingId;
    result$data['meetingId'] = uuidToString(l$meetingId);
    final l$fromDate = fromDate;
    result$data['fromDate'] = tstzToString(l$fromDate);
    final l$toDate = toDate;
    result$data['toDate'] = tstzToString(l$toDate);
    return result$data;
  }

  CopyWith_Variables_Subscription_watchAttendanceHistory<
    Variables_Subscription_watchAttendanceHistory
  >
  get copyWith =>
      CopyWith_Variables_Subscription_watchAttendanceHistory(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Subscription_watchAttendanceHistory ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$meetingId = meetingId;
    final lOther$meetingId = other.meetingId;
    if (l$meetingId != lOther$meetingId) {
      return false;
    }
    final l$fromDate = fromDate;
    final lOther$fromDate = other.fromDate;
    if (l$fromDate != lOther$fromDate) {
      return false;
    }
    final l$toDate = toDate;
    final lOther$toDate = other.toDate;
    if (l$toDate != lOther$toDate) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$meetingId = meetingId;
    final l$fromDate = fromDate;
    final l$toDate = toDate;
    return Object.hashAll([l$meetingId, l$fromDate, l$toDate]);
  }
}

abstract class CopyWith_Variables_Subscription_watchAttendanceHistory<TRes> {
  factory CopyWith_Variables_Subscription_watchAttendanceHistory(
    Variables_Subscription_watchAttendanceHistory instance,
    TRes Function(Variables_Subscription_watchAttendanceHistory) then,
  ) = _CopyWithImpl_Variables_Subscription_watchAttendanceHistory;

  factory CopyWith_Variables_Subscription_watchAttendanceHistory.stub(
    TRes res,
  ) = _CopyWithStubImpl_Variables_Subscription_watchAttendanceHistory;

  TRes call({UuidValue? meetingId, DateTime? fromDate, DateTime? toDate});
}

class _CopyWithImpl_Variables_Subscription_watchAttendanceHistory<TRes>
    implements CopyWith_Variables_Subscription_watchAttendanceHistory<TRes> {
  _CopyWithImpl_Variables_Subscription_watchAttendanceHistory(
    this._instance,
    this._then,
  );

  final Variables_Subscription_watchAttendanceHistory _instance;

  final TRes Function(Variables_Subscription_watchAttendanceHistory) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? meetingId = _undefined,
    Object? fromDate = _undefined,
    Object? toDate = _undefined,
  }) => _then(
    Variables_Subscription_watchAttendanceHistory._({
      ..._instance._$data,
      if (meetingId != _undefined && meetingId != null)
        'meetingId': (meetingId as UuidValue),
      if (fromDate != _undefined && fromDate != null)
        'fromDate': (fromDate as DateTime),
      if (toDate != _undefined && toDate != null)
        'toDate': (toDate as DateTime),
    }),
  );
}

class _CopyWithStubImpl_Variables_Subscription_watchAttendanceHistory<TRes>
    implements CopyWith_Variables_Subscription_watchAttendanceHistory<TRes> {
  _CopyWithStubImpl_Variables_Subscription_watchAttendanceHistory(this._res);

  TRes _res;

  call({UuidValue? meetingId, DateTime? fromDate, DateTime? toDate}) => _res;
}

class Subscription_watchAttendanceHistory {
  Subscription_watchAttendanceHistory({required this.historyAttendanceHistory});

  factory Subscription_watchAttendanceHistory.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$historyAttendanceHistory = json['historyAttendanceHistory'];
    return Subscription_watchAttendanceHistory(
      historyAttendanceHistory: (l$historyAttendanceHistory as List<dynamic>)
          .map(
            (e) =>
                Subscription_watchAttendanceHistory_historyAttendanceHistory.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
    );
  }

  final List<Subscription_watchAttendanceHistory_historyAttendanceHistory>
  historyAttendanceHistory;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$historyAttendanceHistory = historyAttendanceHistory;
    _resultData['historyAttendanceHistory'] = l$historyAttendanceHistory
        .map((e) => e.toJson())
        .toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$historyAttendanceHistory = historyAttendanceHistory;
    return Object.hashAll([
      Object.hashAll(l$historyAttendanceHistory.map((v) => v)),
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Subscription_watchAttendanceHistory ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$historyAttendanceHistory = historyAttendanceHistory;
    final lOther$historyAttendanceHistory = other.historyAttendanceHistory;
    if (l$historyAttendanceHistory.length !=
        lOther$historyAttendanceHistory.length) {
      return false;
    }
    for (int i = 0; i < l$historyAttendanceHistory.length; i++) {
      final l$historyAttendanceHistory$entry = l$historyAttendanceHistory[i];
      final lOther$historyAttendanceHistory$entry =
          lOther$historyAttendanceHistory[i];
      if (l$historyAttendanceHistory$entry !=
          lOther$historyAttendanceHistory$entry) {
        return false;
      }
    }
    return true;
  }
}

extension UtilityExtension_Subscription_watchAttendanceHistory
    on Subscription_watchAttendanceHistory {
  CopyWith_Subscription_watchAttendanceHistory<
    Subscription_watchAttendanceHistory
  >
  get copyWith => CopyWith_Subscription_watchAttendanceHistory(this, (i) => i);
}

abstract class CopyWith_Subscription_watchAttendanceHistory<TRes> {
  factory CopyWith_Subscription_watchAttendanceHistory(
    Subscription_watchAttendanceHistory instance,
    TRes Function(Subscription_watchAttendanceHistory) then,
  ) = _CopyWithImpl_Subscription_watchAttendanceHistory;

  factory CopyWith_Subscription_watchAttendanceHistory.stub(TRes res) =
      _CopyWithStubImpl_Subscription_watchAttendanceHistory;

  TRes call({
    List<Subscription_watchAttendanceHistory_historyAttendanceHistory>?
    historyAttendanceHistory,
  });
  TRes historyAttendanceHistory(
    Iterable<Subscription_watchAttendanceHistory_historyAttendanceHistory>
    Function(
      Iterable<
        CopyWith_Subscription_watchAttendanceHistory_historyAttendanceHistory<
          Subscription_watchAttendanceHistory_historyAttendanceHistory
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl_Subscription_watchAttendanceHistory<TRes>
    implements CopyWith_Subscription_watchAttendanceHistory<TRes> {
  _CopyWithImpl_Subscription_watchAttendanceHistory(this._instance, this._then);

  final Subscription_watchAttendanceHistory _instance;

  final TRes Function(Subscription_watchAttendanceHistory) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? historyAttendanceHistory = _undefined}) => _then(
    Subscription_watchAttendanceHistory(
      historyAttendanceHistory:
          historyAttendanceHistory == _undefined ||
              historyAttendanceHistory == null
          ? _instance.historyAttendanceHistory
          : (historyAttendanceHistory
                as List<
                  Subscription_watchAttendanceHistory_historyAttendanceHistory
                >),
    ),
  );

  TRes historyAttendanceHistory(
    Iterable<Subscription_watchAttendanceHistory_historyAttendanceHistory>
    Function(
      Iterable<
        CopyWith_Subscription_watchAttendanceHistory_historyAttendanceHistory<
          Subscription_watchAttendanceHistory_historyAttendanceHistory
        >
      >,
    )
    _fn,
  ) => call(
    historyAttendanceHistory: _fn(
      _instance.historyAttendanceHistory.map(
        (e) =>
            CopyWith_Subscription_watchAttendanceHistory_historyAttendanceHistory(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl_Subscription_watchAttendanceHistory<TRes>
    implements CopyWith_Subscription_watchAttendanceHistory<TRes> {
  _CopyWithStubImpl_Subscription_watchAttendanceHistory(this._res);

  TRes _res;

  call({
    List<Subscription_watchAttendanceHistory_historyAttendanceHistory>?
    historyAttendanceHistory,
  }) => _res;

  historyAttendanceHistory(_fn) => _res;
}

const documentNodeSubscriptionwatchAttendanceHistory = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.subscription,
      name: NameNode(value: 'watchAttendanceHistory'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'meetingId')),
          type: NamedTypeNode(name: NameNode(value: 'uuid'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'fromDate')),
          type: NamedTypeNode(
            name: NameNode(value: 'timestamptz'),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'toDate')),
          type: NamedTypeNode(
            name: NameNode(value: 'timestamptz'),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'historyAttendanceHistory'),
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
                      name: NameNode(value: 'datetime'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: '_gte'),
                            value: VariableNode(
                              name: NameNode(value: 'fromDate'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: '_lt'),
                            value: VariableNode(
                              name: NameNode(value: 'toDate'),
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
                  name: NameNode(value: 'meetingId'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'personId'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'datetime'),
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

class Subscription_watchAttendanceHistory_historyAttendanceHistory {
  Subscription_watchAttendanceHistory_historyAttendanceHistory({
    required this.id,
    required this.meetingId,
    required this.personId,
    required this.datetime,
    required this.asServant,
    this.$__typename = 'HistoryAttendanceHistory',
  });

  factory Subscription_watchAttendanceHistory_historyAttendanceHistory.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$meetingId = json['meetingId'];
    final l$personId = json['personId'];
    final l$datetime = json['datetime'];
    final l$asServant = json['asServant'];
    final l$$__typename = json['__typename'];
    return Subscription_watchAttendanceHistory_historyAttendanceHistory(
      id: stringToUuid(l$id),
      meetingId: stringToUuid(l$meetingId),
      personId: stringToUuid(l$personId),
      datetime: tstzFromString(l$datetime),
      asServant: (l$asServant as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final UuidValue meetingId;

  final UuidValue personId;

  final DateTime datetime;

  final bool asServant;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$meetingId = meetingId;
    _resultData['meetingId'] = uuidToString(l$meetingId);
    final l$personId = personId;
    _resultData['personId'] = uuidToString(l$personId);
    final l$datetime = datetime;
    _resultData['datetime'] = tstzToString(l$datetime);
    final l$asServant = asServant;
    _resultData['asServant'] = l$asServant;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$meetingId = meetingId;
    final l$personId = personId;
    final l$datetime = datetime;
    final l$asServant = asServant;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$meetingId,
      l$personId,
      l$datetime,
      l$asServant,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Subscription_watchAttendanceHistory_historyAttendanceHistory ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$meetingId = meetingId;
    final lOther$meetingId = other.meetingId;
    if (l$meetingId != lOther$meetingId) {
      return false;
    }
    final l$personId = personId;
    final lOther$personId = other.personId;
    if (l$personId != lOther$personId) {
      return false;
    }
    final l$datetime = datetime;
    final lOther$datetime = other.datetime;
    if (l$datetime != lOther$datetime) {
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

extension UtilityExtension_Subscription_watchAttendanceHistory_historyAttendanceHistory
    on Subscription_watchAttendanceHistory_historyAttendanceHistory {
  CopyWith_Subscription_watchAttendanceHistory_historyAttendanceHistory<
    Subscription_watchAttendanceHistory_historyAttendanceHistory
  >
  get copyWith =>
      CopyWith_Subscription_watchAttendanceHistory_historyAttendanceHistory(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Subscription_watchAttendanceHistory_historyAttendanceHistory<
  TRes
> {
  factory CopyWith_Subscription_watchAttendanceHistory_historyAttendanceHistory(
    Subscription_watchAttendanceHistory_historyAttendanceHistory instance,
    TRes Function(Subscription_watchAttendanceHistory_historyAttendanceHistory)
    then,
  ) = _CopyWithImpl_Subscription_watchAttendanceHistory_historyAttendanceHistory;

  factory CopyWith_Subscription_watchAttendanceHistory_historyAttendanceHistory.stub(
    TRes res,
  ) = _CopyWithStubImpl_Subscription_watchAttendanceHistory_historyAttendanceHistory;

  TRes call({
    UuidValue? id,
    UuidValue? meetingId,
    UuidValue? personId,
    DateTime? datetime,
    bool? asServant,
    String? $__typename,
  });
}

class _CopyWithImpl_Subscription_watchAttendanceHistory_historyAttendanceHistory<
  TRes
>
    implements
        CopyWith_Subscription_watchAttendanceHistory_historyAttendanceHistory<
          TRes
        > {
  _CopyWithImpl_Subscription_watchAttendanceHistory_historyAttendanceHistory(
    this._instance,
    this._then,
  );

  final Subscription_watchAttendanceHistory_historyAttendanceHistory _instance;

  final TRes Function(
    Subscription_watchAttendanceHistory_historyAttendanceHistory,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? meetingId = _undefined,
    Object? personId = _undefined,
    Object? datetime = _undefined,
    Object? asServant = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Subscription_watchAttendanceHistory_historyAttendanceHistory(
      id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
      meetingId: meetingId == _undefined || meetingId == null
          ? _instance.meetingId
          : (meetingId as UuidValue),
      personId: personId == _undefined || personId == null
          ? _instance.personId
          : (personId as UuidValue),
      datetime: datetime == _undefined || datetime == null
          ? _instance.datetime
          : (datetime as DateTime),
      asServant: asServant == _undefined || asServant == null
          ? _instance.asServant
          : (asServant as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Subscription_watchAttendanceHistory_historyAttendanceHistory<
  TRes
>
    implements
        CopyWith_Subscription_watchAttendanceHistory_historyAttendanceHistory<
          TRes
        > {
  _CopyWithStubImpl_Subscription_watchAttendanceHistory_historyAttendanceHistory(
    this._res,
  );

  TRes _res;

  call({
    UuidValue? id,
    UuidValue? meetingId,
    UuidValue? personId,
    DateTime? datetime,
    bool? asServant,
    String? $__typename,
  }) => _res;
}

class Variables_Subscription_personMeetingAttendance {
  factory Variables_Subscription_personMeetingAttendance({
    List<Input_HistoryAttendanceHistoryBoolExp>? where,
    List<Input_HistoryAttendanceHistoryOrderBy>? orderBy,
    int? limit,
  }) => Variables_Subscription_personMeetingAttendance._({
    if (where != null) r'where': where,
    if (orderBy != null) r'orderBy': orderBy,
    if (limit != null) r'limit': limit,
  });

  Variables_Subscription_personMeetingAttendance._(this._$data);

  factory Variables_Subscription_personMeetingAttendance.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = (l$where as List<dynamic>?)
          ?.map(
            (e) => Input_HistoryAttendanceHistoryBoolExp.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('orderBy')) {
      final l$orderBy = data['orderBy'];
      result$data['orderBy'] = (l$orderBy as List<dynamic>?)
          ?.map(
            (e) => Input_HistoryAttendanceHistoryOrderBy.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('limit')) {
      final l$limit = data['limit'];
      result$data['limit'] = (l$limit as int);
    }
    return Variables_Subscription_personMeetingAttendance._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_HistoryAttendanceHistoryBoolExp>? get where =>
      (_$data['where'] as List<Input_HistoryAttendanceHistoryBoolExp>?);

  List<Input_HistoryAttendanceHistoryOrderBy>? get orderBy =>
      (_$data['orderBy'] as List<Input_HistoryAttendanceHistoryOrderBy>?);

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
      result$data['limit'] = (l$limit as int);
    }
    return result$data;
  }

  CopyWith_Variables_Subscription_personMeetingAttendance<
    Variables_Subscription_personMeetingAttendance
  >
  get copyWith =>
      CopyWith_Variables_Subscription_personMeetingAttendance(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Subscription_personMeetingAttendance ||
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

abstract class CopyWith_Variables_Subscription_personMeetingAttendance<TRes> {
  factory CopyWith_Variables_Subscription_personMeetingAttendance(
    Variables_Subscription_personMeetingAttendance instance,
    TRes Function(Variables_Subscription_personMeetingAttendance) then,
  ) = _CopyWithImpl_Variables_Subscription_personMeetingAttendance;

  factory CopyWith_Variables_Subscription_personMeetingAttendance.stub(
    TRes res,
  ) = _CopyWithStubImpl_Variables_Subscription_personMeetingAttendance;

  TRes call({
    List<Input_HistoryAttendanceHistoryBoolExp>? where,
    List<Input_HistoryAttendanceHistoryOrderBy>? orderBy,
    int? limit,
  });
}

class _CopyWithImpl_Variables_Subscription_personMeetingAttendance<TRes>
    implements CopyWith_Variables_Subscription_personMeetingAttendance<TRes> {
  _CopyWithImpl_Variables_Subscription_personMeetingAttendance(
    this._instance,
    this._then,
  );

  final Variables_Subscription_personMeetingAttendance _instance;

  final TRes Function(Variables_Subscription_personMeetingAttendance) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? where = _undefined,
    Object? orderBy = _undefined,
    Object? limit = _undefined,
  }) => _then(
    Variables_Subscription_personMeetingAttendance._({
      ..._instance._$data,
      if (where != _undefined)
        'where': (where as List<Input_HistoryAttendanceHistoryBoolExp>?),
      if (orderBy != _undefined)
        'orderBy': (orderBy as List<Input_HistoryAttendanceHistoryOrderBy>?),
      if (limit != _undefined && limit != null) 'limit': (limit as int),
    }),
  );
}

class _CopyWithStubImpl_Variables_Subscription_personMeetingAttendance<TRes>
    implements CopyWith_Variables_Subscription_personMeetingAttendance<TRes> {
  _CopyWithStubImpl_Variables_Subscription_personMeetingAttendance(this._res);

  TRes _res;

  call({
    List<Input_HistoryAttendanceHistoryBoolExp>? where,
    List<Input_HistoryAttendanceHistoryOrderBy>? orderBy,
    int? limit,
  }) => _res;
}

class Subscription_personMeetingAttendance {
  Subscription_personMeetingAttendance({
    required this.historyAttendanceHistory,
  });

  factory Subscription_personMeetingAttendance.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$historyAttendanceHistory = json['historyAttendanceHistory'];
    return Subscription_personMeetingAttendance(
      historyAttendanceHistory: (l$historyAttendanceHistory as List<dynamic>)
          .map(
            (e) => Fragment_AttendanceHistory.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
    );
  }

  final List<Fragment_AttendanceHistory> historyAttendanceHistory;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$historyAttendanceHistory = historyAttendanceHistory;
    _resultData['historyAttendanceHistory'] = l$historyAttendanceHistory
        .map((e) => e.toJson())
        .toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$historyAttendanceHistory = historyAttendanceHistory;
    return Object.hashAll([
      Object.hashAll(l$historyAttendanceHistory.map((v) => v)),
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Subscription_personMeetingAttendance ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$historyAttendanceHistory = historyAttendanceHistory;
    final lOther$historyAttendanceHistory = other.historyAttendanceHistory;
    if (l$historyAttendanceHistory.length !=
        lOther$historyAttendanceHistory.length) {
      return false;
    }
    for (int i = 0; i < l$historyAttendanceHistory.length; i++) {
      final l$historyAttendanceHistory$entry = l$historyAttendanceHistory[i];
      final lOther$historyAttendanceHistory$entry =
          lOther$historyAttendanceHistory[i];
      if (l$historyAttendanceHistory$entry !=
          lOther$historyAttendanceHistory$entry) {
        return false;
      }
    }
    return true;
  }
}

extension UtilityExtension_Subscription_personMeetingAttendance
    on Subscription_personMeetingAttendance {
  CopyWith_Subscription_personMeetingAttendance<
    Subscription_personMeetingAttendance
  >
  get copyWith => CopyWith_Subscription_personMeetingAttendance(this, (i) => i);
}

abstract class CopyWith_Subscription_personMeetingAttendance<TRes> {
  factory CopyWith_Subscription_personMeetingAttendance(
    Subscription_personMeetingAttendance instance,
    TRes Function(Subscription_personMeetingAttendance) then,
  ) = _CopyWithImpl_Subscription_personMeetingAttendance;

  factory CopyWith_Subscription_personMeetingAttendance.stub(TRes res) =
      _CopyWithStubImpl_Subscription_personMeetingAttendance;

  TRes call({List<Fragment_AttendanceHistory>? historyAttendanceHistory});
  TRes historyAttendanceHistory(
    Iterable<Fragment_AttendanceHistory> Function(
      Iterable<CopyWith_Fragment_AttendanceHistory<Fragment_AttendanceHistory>>,
    )
    _fn,
  );
}

class _CopyWithImpl_Subscription_personMeetingAttendance<TRes>
    implements CopyWith_Subscription_personMeetingAttendance<TRes> {
  _CopyWithImpl_Subscription_personMeetingAttendance(
    this._instance,
    this._then,
  );

  final Subscription_personMeetingAttendance _instance;

  final TRes Function(Subscription_personMeetingAttendance) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? historyAttendanceHistory = _undefined}) => _then(
    Subscription_personMeetingAttendance(
      historyAttendanceHistory:
          historyAttendanceHistory == _undefined ||
              historyAttendanceHistory == null
          ? _instance.historyAttendanceHistory
          : (historyAttendanceHistory as List<Fragment_AttendanceHistory>),
    ),
  );

  TRes historyAttendanceHistory(
    Iterable<Fragment_AttendanceHistory> Function(
      Iterable<CopyWith_Fragment_AttendanceHistory<Fragment_AttendanceHistory>>,
    )
    _fn,
  ) => call(
    historyAttendanceHistory: _fn(
      _instance.historyAttendanceHistory.map(
        (e) => CopyWith_Fragment_AttendanceHistory(e, (i) => i),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl_Subscription_personMeetingAttendance<TRes>
    implements CopyWith_Subscription_personMeetingAttendance<TRes> {
  _CopyWithStubImpl_Subscription_personMeetingAttendance(this._res);

  TRes _res;

  call({List<Fragment_AttendanceHistory>? historyAttendanceHistory}) => _res;

  historyAttendanceHistory(_fn) => _res;
}

const documentNodeSubscriptionpersonMeetingAttendance = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.subscription,
      name: NameNode(value: 'personMeetingAttendance'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'where')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'HistoryAttendanceHistoryBoolExp'),
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
              name: NameNode(value: 'HistoryAttendanceHistoryOrderBy'),
              isNonNull: true,
            ),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(
            value: ObjectValueNode(
              fields: [
                ObjectFieldNode(
                  name: NameNode(value: 'datetime'),
                  value: EnumValueNode(name: NameNode(value: 'DESC')),
                ),
              ],
            ),
          ),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'limit')),
          type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: true),
          defaultValue: DefaultValueNode(value: IntValueNode(value: '200')),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'historyAttendanceHistory'),
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
                FragmentSpreadNode(
                  name: NameNode(value: 'AttendanceHistory'),
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
        ],
      ),
    ),
    fragmentDefinitionAttendanceHistory,
    fragmentDefinitionUser,
    fragmentDefinitionUserNoPhoto,
  ],
);
