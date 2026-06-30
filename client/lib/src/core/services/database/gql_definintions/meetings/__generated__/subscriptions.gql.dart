import '../../../../../graphql/__generated__/schema.graphql.dart';
import '../../groups/__generated__/fragments.gql.dart';
import '../../services/__generated__/fragments.gql.dart';
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
    fragmentDefinitionGroupNoPhoto,
  ],
);

class Variables_Subscription_watchMeetingRoster {
  factory Variables_Subscription_watchMeetingRoster({
    required UuidValue meetingId,
    required bool asServant,
    required DateTime fromDate,
    required DateTime toDate,
    List<Input_HistoryMeetingRosterBoolExp>? where,
    List<Input_HistoryMeetingRosterOrderBy>? orderBy,
    int? limit,
  }) => Variables_Subscription_watchMeetingRoster._({
    r'meetingId': meetingId,
    r'asServant': asServant,
    r'fromDate': fromDate,
    r'toDate': toDate,
    if (where != null) r'where': where,
    if (orderBy != null) r'orderBy': orderBy,
    if (limit != null) r'limit': limit,
  });

  Variables_Subscription_watchMeetingRoster._(this._$data);

  factory Variables_Subscription_watchMeetingRoster.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$meetingId = data['meetingId'];
    result$data['meetingId'] = stringToUuid(l$meetingId);
    final l$asServant = data['asServant'];
    result$data['asServant'] = (l$asServant as bool);
    final l$fromDate = data['fromDate'];
    result$data['fromDate'] = tstzFromString(l$fromDate);
    final l$toDate = data['toDate'];
    result$data['toDate'] = tstzFromString(l$toDate);
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
    return Variables_Subscription_watchMeetingRoster._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get meetingId => (_$data['meetingId'] as UuidValue);

  bool get asServant => (_$data['asServant'] as bool);

  DateTime get fromDate => (_$data['fromDate'] as DateTime);

  DateTime get toDate => (_$data['toDate'] as DateTime);

  List<Input_HistoryMeetingRosterBoolExp>? get where =>
      (_$data['where'] as List<Input_HistoryMeetingRosterBoolExp>?);

  List<Input_HistoryMeetingRosterOrderBy>? get orderBy =>
      (_$data['orderBy'] as List<Input_HistoryMeetingRosterOrderBy>?);

  int? get limit => (_$data['limit'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$meetingId = meetingId;
    result$data['meetingId'] = uuidToString(l$meetingId);
    final l$asServant = asServant;
    result$data['asServant'] = l$asServant;
    final l$fromDate = fromDate;
    result$data['fromDate'] = tstzToString(l$fromDate);
    final l$toDate = toDate;
    result$data['toDate'] = tstzToString(l$toDate);
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

  CopyWith_Variables_Subscription_watchMeetingRoster<
    Variables_Subscription_watchMeetingRoster
  >
  get copyWith =>
      CopyWith_Variables_Subscription_watchMeetingRoster(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Subscription_watchMeetingRoster ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$meetingId = meetingId;
    final lOther$meetingId = other.meetingId;
    if (l$meetingId != lOther$meetingId) {
      return false;
    }
    final l$asServant = asServant;
    final lOther$asServant = other.asServant;
    if (l$asServant != lOther$asServant) {
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
    final l$asServant = asServant;
    final l$fromDate = fromDate;
    final l$toDate = toDate;
    final l$where = where;
    final l$orderBy = orderBy;
    final l$limit = limit;
    return Object.hashAll([
      l$meetingId,
      l$asServant,
      l$fromDate,
      l$toDate,
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

abstract class CopyWith_Variables_Subscription_watchMeetingRoster<TRes> {
  factory CopyWith_Variables_Subscription_watchMeetingRoster(
    Variables_Subscription_watchMeetingRoster instance,
    TRes Function(Variables_Subscription_watchMeetingRoster) then,
  ) = _CopyWithImpl_Variables_Subscription_watchMeetingRoster;

  factory CopyWith_Variables_Subscription_watchMeetingRoster.stub(TRes res) =
      _CopyWithStubImpl_Variables_Subscription_watchMeetingRoster;

  TRes call({
    UuidValue? meetingId,
    bool? asServant,
    DateTime? fromDate,
    DateTime? toDate,
    List<Input_HistoryMeetingRosterBoolExp>? where,
    List<Input_HistoryMeetingRosterOrderBy>? orderBy,
    int? limit,
  });
}

class _CopyWithImpl_Variables_Subscription_watchMeetingRoster<TRes>
    implements CopyWith_Variables_Subscription_watchMeetingRoster<TRes> {
  _CopyWithImpl_Variables_Subscription_watchMeetingRoster(
    this._instance,
    this._then,
  );

  final Variables_Subscription_watchMeetingRoster _instance;

  final TRes Function(Variables_Subscription_watchMeetingRoster) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? meetingId = _undefined,
    Object? asServant = _undefined,
    Object? fromDate = _undefined,
    Object? toDate = _undefined,
    Object? where = _undefined,
    Object? orderBy = _undefined,
    Object? limit = _undefined,
  }) => _then(
    Variables_Subscription_watchMeetingRoster._({
      ..._instance._$data,
      if (meetingId != _undefined && meetingId != null)
        'meetingId': (meetingId as UuidValue),
      if (asServant != _undefined && asServant != null)
        'asServant': (asServant as bool),
      if (fromDate != _undefined && fromDate != null)
        'fromDate': (fromDate as DateTime),
      if (toDate != _undefined && toDate != null)
        'toDate': (toDate as DateTime),
      if (where != _undefined)
        'where': (where as List<Input_HistoryMeetingRosterBoolExp>?),
      if (orderBy != _undefined)
        'orderBy': (orderBy as List<Input_HistoryMeetingRosterOrderBy>?),
      if (limit != _undefined) 'limit': (limit as int?),
    }),
  );
}

class _CopyWithStubImpl_Variables_Subscription_watchMeetingRoster<TRes>
    implements CopyWith_Variables_Subscription_watchMeetingRoster<TRes> {
  _CopyWithStubImpl_Variables_Subscription_watchMeetingRoster(this._res);

  TRes _res;

  call({
    UuidValue? meetingId,
    bool? asServant,
    DateTime? fromDate,
    DateTime? toDate,
    List<Input_HistoryMeetingRosterBoolExp>? where,
    List<Input_HistoryMeetingRosterOrderBy>? orderBy,
    int? limit,
  }) => _res;
}

class Subscription_watchMeetingRoster {
  Subscription_watchMeetingRoster({required this.historyMeetingRoster});

  factory Subscription_watchMeetingRoster.fromJson(Map<String, dynamic> json) {
    final l$historyMeetingRoster = json['historyMeetingRoster'];
    return Subscription_watchMeetingRoster(
      historyMeetingRoster: (l$historyMeetingRoster as List<dynamic>)
          .map(
            (e) =>
                Subscription_watchMeetingRoster_historyMeetingRoster.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
    );
  }

  final List<Subscription_watchMeetingRoster_historyMeetingRoster>
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
    if (other is! Subscription_watchMeetingRoster ||
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

extension UtilityExtension_Subscription_watchMeetingRoster
    on Subscription_watchMeetingRoster {
  CopyWith_Subscription_watchMeetingRoster<Subscription_watchMeetingRoster>
  get copyWith => CopyWith_Subscription_watchMeetingRoster(this, (i) => i);
}

abstract class CopyWith_Subscription_watchMeetingRoster<TRes> {
  factory CopyWith_Subscription_watchMeetingRoster(
    Subscription_watchMeetingRoster instance,
    TRes Function(Subscription_watchMeetingRoster) then,
  ) = _CopyWithImpl_Subscription_watchMeetingRoster;

  factory CopyWith_Subscription_watchMeetingRoster.stub(TRes res) =
      _CopyWithStubImpl_Subscription_watchMeetingRoster;

  TRes call({
    List<Subscription_watchMeetingRoster_historyMeetingRoster>?
    historyMeetingRoster,
  });
  TRes historyMeetingRoster(
    Iterable<Subscription_watchMeetingRoster_historyMeetingRoster> Function(
      Iterable<
        CopyWith_Subscription_watchMeetingRoster_historyMeetingRoster<
          Subscription_watchMeetingRoster_historyMeetingRoster
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl_Subscription_watchMeetingRoster<TRes>
    implements CopyWith_Subscription_watchMeetingRoster<TRes> {
  _CopyWithImpl_Subscription_watchMeetingRoster(this._instance, this._then);

  final Subscription_watchMeetingRoster _instance;

  final TRes Function(Subscription_watchMeetingRoster) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? historyMeetingRoster = _undefined}) => _then(
    Subscription_watchMeetingRoster(
      historyMeetingRoster:
          historyMeetingRoster == _undefined || historyMeetingRoster == null
          ? _instance.historyMeetingRoster
          : (historyMeetingRoster
                as List<Subscription_watchMeetingRoster_historyMeetingRoster>),
    ),
  );

  TRes historyMeetingRoster(
    Iterable<Subscription_watchMeetingRoster_historyMeetingRoster> Function(
      Iterable<
        CopyWith_Subscription_watchMeetingRoster_historyMeetingRoster<
          Subscription_watchMeetingRoster_historyMeetingRoster
        >
      >,
    )
    _fn,
  ) => call(
    historyMeetingRoster: _fn(
      _instance.historyMeetingRoster.map(
        (e) => CopyWith_Subscription_watchMeetingRoster_historyMeetingRoster(
          e,
          (i) => i,
        ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl_Subscription_watchMeetingRoster<TRes>
    implements CopyWith_Subscription_watchMeetingRoster<TRes> {
  _CopyWithStubImpl_Subscription_watchMeetingRoster(this._res);

  TRes _res;

  call({
    List<Subscription_watchMeetingRoster_historyMeetingRoster>?
    historyMeetingRoster,
  }) => _res;

  historyMeetingRoster(_fn) => _res;
}

const documentNodeSubscriptionwatchMeetingRoster = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.subscription,
      name: NameNode(value: 'watchMeetingRoster'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'meetingId')),
          type: NamedTypeNode(name: NameNode(value: 'uuid'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'asServant')),
          type: NamedTypeNode(
            name: NameNode(value: 'Boolean'),
            isNonNull: true,
          ),
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
                      name: NameNode(value: 'asServant'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: '_eq'),
                            value: VariableNode(
                              name: NameNode(value: 'asServant'),
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
                  name: NameNode(value: 'attendanceHistory'),
                  alias: null,
                  arguments: [
                    ArgumentNode(
                      name: NameNode(value: 'where'),
                      value: ObjectValueNode(
                        fields: [
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
                    ArgumentNode(
                      name: NameNode(value: 'orderBy'),
                      value: ListValueNode(
                        values: [
                          ObjectValueNode(
                            fields: [
                              ObjectFieldNode(
                                name: NameNode(value: 'datetime'),
                                value: EnumValueNode(
                                  name: NameNode(value: 'DESC'),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    ArgumentNode(
                      name: NameNode(value: 'limit'),
                      value: IntValueNode(value: '1'),
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

class Subscription_watchMeetingRoster_historyMeetingRoster {
  Subscription_watchMeetingRoster_historyMeetingRoster({
    this.personId,
    this.name,
    this.mainPhone,
    this.gender,
    this.color,
    this.studyYearId,
    this.studyYearName,
    this.photoUpdatedAt,
    this.blurhash,
    required this.attendanceHistory,
    this.$__typename = 'HistoryMeetingRoster',
  });

  factory Subscription_watchMeetingRoster_historyMeetingRoster.fromJson(
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
    final l$attendanceHistory = json['attendanceHistory'];
    final l$$__typename = json['__typename'];
    return Subscription_watchMeetingRoster_historyMeetingRoster(
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
      attendanceHistory: (l$attendanceHistory as List<dynamic>)
          .map(
            (e) =>
                Subscription_watchMeetingRoster_historyMeetingRoster_attendanceHistory.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
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

  final List<
    Subscription_watchMeetingRoster_historyMeetingRoster_attendanceHistory
  >
  attendanceHistory;

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
    final l$name = name;
    final l$mainPhone = mainPhone;
    final l$gender = gender;
    final l$color = color;
    final l$studyYearId = studyYearId;
    final l$studyYearName = studyYearName;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$blurhash = blurhash;
    final l$attendanceHistory = attendanceHistory;
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
      Object.hashAll(l$attendanceHistory.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Subscription_watchMeetingRoster_historyMeetingRoster ||
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

extension UtilityExtension_Subscription_watchMeetingRoster_historyMeetingRoster
    on Subscription_watchMeetingRoster_historyMeetingRoster {
  CopyWith_Subscription_watchMeetingRoster_historyMeetingRoster<
    Subscription_watchMeetingRoster_historyMeetingRoster
  >
  get copyWith => CopyWith_Subscription_watchMeetingRoster_historyMeetingRoster(
    this,
    (i) => i,
  );
}

abstract class CopyWith_Subscription_watchMeetingRoster_historyMeetingRoster<
  TRes
> {
  factory CopyWith_Subscription_watchMeetingRoster_historyMeetingRoster(
    Subscription_watchMeetingRoster_historyMeetingRoster instance,
    TRes Function(Subscription_watchMeetingRoster_historyMeetingRoster) then,
  ) = _CopyWithImpl_Subscription_watchMeetingRoster_historyMeetingRoster;

  factory CopyWith_Subscription_watchMeetingRoster_historyMeetingRoster.stub(
    TRes res,
  ) = _CopyWithStubImpl_Subscription_watchMeetingRoster_historyMeetingRoster;

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
    List<
      Subscription_watchMeetingRoster_historyMeetingRoster_attendanceHistory
    >?
    attendanceHistory,
    String? $__typename,
  });
  TRes attendanceHistory(
    Iterable<
      Subscription_watchMeetingRoster_historyMeetingRoster_attendanceHistory
    >
    Function(
      Iterable<
        CopyWith_Subscription_watchMeetingRoster_historyMeetingRoster_attendanceHistory<
          Subscription_watchMeetingRoster_historyMeetingRoster_attendanceHistory
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl_Subscription_watchMeetingRoster_historyMeetingRoster<TRes>
    implements
        CopyWith_Subscription_watchMeetingRoster_historyMeetingRoster<TRes> {
  _CopyWithImpl_Subscription_watchMeetingRoster_historyMeetingRoster(
    this._instance,
    this._then,
  );

  final Subscription_watchMeetingRoster_historyMeetingRoster _instance;

  final TRes Function(Subscription_watchMeetingRoster_historyMeetingRoster)
  _then;

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
    Object? attendanceHistory = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Subscription_watchMeetingRoster_historyMeetingRoster(
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
      attendanceHistory:
          attendanceHistory == _undefined || attendanceHistory == null
          ? _instance.attendanceHistory
          : (attendanceHistory
                as List<
                  Subscription_watchMeetingRoster_historyMeetingRoster_attendanceHistory
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes attendanceHistory(
    Iterable<
      Subscription_watchMeetingRoster_historyMeetingRoster_attendanceHistory
    >
    Function(
      Iterable<
        CopyWith_Subscription_watchMeetingRoster_historyMeetingRoster_attendanceHistory<
          Subscription_watchMeetingRoster_historyMeetingRoster_attendanceHistory
        >
      >,
    )
    _fn,
  ) => call(
    attendanceHistory: _fn(
      _instance.attendanceHistory.map(
        (e) =>
            CopyWith_Subscription_watchMeetingRoster_historyMeetingRoster_attendanceHistory(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl_Subscription_watchMeetingRoster_historyMeetingRoster<
  TRes
>
    implements
        CopyWith_Subscription_watchMeetingRoster_historyMeetingRoster<TRes> {
  _CopyWithStubImpl_Subscription_watchMeetingRoster_historyMeetingRoster(
    this._res,
  );

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
    List<
      Subscription_watchMeetingRoster_historyMeetingRoster_attendanceHistory
    >?
    attendanceHistory,
    String? $__typename,
  }) => _res;

  attendanceHistory(_fn) => _res;
}

class Subscription_watchMeetingRoster_historyMeetingRoster_attendanceHistory {
  Subscription_watchMeetingRoster_historyMeetingRoster_attendanceHistory({
    required this.id,
    required this.meetingId,
    required this.personId,
    required this.datetime,
    required this.asServant,
    this.$__typename = 'HistoryAttendanceHistory',
  });

  factory Subscription_watchMeetingRoster_historyMeetingRoster_attendanceHistory.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$meetingId = json['meetingId'];
    final l$personId = json['personId'];
    final l$datetime = json['datetime'];
    final l$asServant = json['asServant'];
    final l$$__typename = json['__typename'];
    return Subscription_watchMeetingRoster_historyMeetingRoster_attendanceHistory(
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
            is! Subscription_watchMeetingRoster_historyMeetingRoster_attendanceHistory ||
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

extension UtilityExtension_Subscription_watchMeetingRoster_historyMeetingRoster_attendanceHistory
    on Subscription_watchMeetingRoster_historyMeetingRoster_attendanceHistory {
  CopyWith_Subscription_watchMeetingRoster_historyMeetingRoster_attendanceHistory<
    Subscription_watchMeetingRoster_historyMeetingRoster_attendanceHistory
  >
  get copyWith =>
      CopyWith_Subscription_watchMeetingRoster_historyMeetingRoster_attendanceHistory(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Subscription_watchMeetingRoster_historyMeetingRoster_attendanceHistory<
  TRes
> {
  factory CopyWith_Subscription_watchMeetingRoster_historyMeetingRoster_attendanceHistory(
    Subscription_watchMeetingRoster_historyMeetingRoster_attendanceHistory
    instance,
    TRes Function(
      Subscription_watchMeetingRoster_historyMeetingRoster_attendanceHistory,
    )
    then,
  ) = _CopyWithImpl_Subscription_watchMeetingRoster_historyMeetingRoster_attendanceHistory;

  factory CopyWith_Subscription_watchMeetingRoster_historyMeetingRoster_attendanceHistory.stub(
    TRes res,
  ) = _CopyWithStubImpl_Subscription_watchMeetingRoster_historyMeetingRoster_attendanceHistory;

  TRes call({
    UuidValue? id,
    UuidValue? meetingId,
    UuidValue? personId,
    DateTime? datetime,
    bool? asServant,
    String? $__typename,
  });
}

class _CopyWithImpl_Subscription_watchMeetingRoster_historyMeetingRoster_attendanceHistory<
  TRes
>
    implements
        CopyWith_Subscription_watchMeetingRoster_historyMeetingRoster_attendanceHistory<
          TRes
        > {
  _CopyWithImpl_Subscription_watchMeetingRoster_historyMeetingRoster_attendanceHistory(
    this._instance,
    this._then,
  );

  final Subscription_watchMeetingRoster_historyMeetingRoster_attendanceHistory
  _instance;

  final TRes Function(
    Subscription_watchMeetingRoster_historyMeetingRoster_attendanceHistory,
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
    Subscription_watchMeetingRoster_historyMeetingRoster_attendanceHistory(
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

class _CopyWithStubImpl_Subscription_watchMeetingRoster_historyMeetingRoster_attendanceHistory<
  TRes
>
    implements
        CopyWith_Subscription_watchMeetingRoster_historyMeetingRoster_attendanceHistory<
          TRes
        > {
  _CopyWithStubImpl_Subscription_watchMeetingRoster_historyMeetingRoster_attendanceHistory(
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

class Variables_Subscription_watchMeetingPresentCount {
  factory Variables_Subscription_watchMeetingPresentCount({
    required UuidValue meetingId,
    required bool asServant,
    required DateTime fromDate,
    required DateTime toDate,
  }) => Variables_Subscription_watchMeetingPresentCount._({
    r'meetingId': meetingId,
    r'asServant': asServant,
    r'fromDate': fromDate,
    r'toDate': toDate,
  });

  Variables_Subscription_watchMeetingPresentCount._(this._$data);

  factory Variables_Subscription_watchMeetingPresentCount.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$meetingId = data['meetingId'];
    result$data['meetingId'] = stringToUuid(l$meetingId);
    final l$asServant = data['asServant'];
    result$data['asServant'] = (l$asServant as bool);
    final l$fromDate = data['fromDate'];
    result$data['fromDate'] = tstzFromString(l$fromDate);
    final l$toDate = data['toDate'];
    result$data['toDate'] = tstzFromString(l$toDate);
    return Variables_Subscription_watchMeetingPresentCount._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get meetingId => (_$data['meetingId'] as UuidValue);

  bool get asServant => (_$data['asServant'] as bool);

  DateTime get fromDate => (_$data['fromDate'] as DateTime);

  DateTime get toDate => (_$data['toDate'] as DateTime);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$meetingId = meetingId;
    result$data['meetingId'] = uuidToString(l$meetingId);
    final l$asServant = asServant;
    result$data['asServant'] = l$asServant;
    final l$fromDate = fromDate;
    result$data['fromDate'] = tstzToString(l$fromDate);
    final l$toDate = toDate;
    result$data['toDate'] = tstzToString(l$toDate);
    return result$data;
  }

  CopyWith_Variables_Subscription_watchMeetingPresentCount<
    Variables_Subscription_watchMeetingPresentCount
  >
  get copyWith =>
      CopyWith_Variables_Subscription_watchMeetingPresentCount(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Subscription_watchMeetingPresentCount ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$meetingId = meetingId;
    final lOther$meetingId = other.meetingId;
    if (l$meetingId != lOther$meetingId) {
      return false;
    }
    final l$asServant = asServant;
    final lOther$asServant = other.asServant;
    if (l$asServant != lOther$asServant) {
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
    final l$asServant = asServant;
    final l$fromDate = fromDate;
    final l$toDate = toDate;
    return Object.hashAll([l$meetingId, l$asServant, l$fromDate, l$toDate]);
  }
}

abstract class CopyWith_Variables_Subscription_watchMeetingPresentCount<TRes> {
  factory CopyWith_Variables_Subscription_watchMeetingPresentCount(
    Variables_Subscription_watchMeetingPresentCount instance,
    TRes Function(Variables_Subscription_watchMeetingPresentCount) then,
  ) = _CopyWithImpl_Variables_Subscription_watchMeetingPresentCount;

  factory CopyWith_Variables_Subscription_watchMeetingPresentCount.stub(
    TRes res,
  ) = _CopyWithStubImpl_Variables_Subscription_watchMeetingPresentCount;

  TRes call({
    UuidValue? meetingId,
    bool? asServant,
    DateTime? fromDate,
    DateTime? toDate,
  });
}

class _CopyWithImpl_Variables_Subscription_watchMeetingPresentCount<TRes>
    implements CopyWith_Variables_Subscription_watchMeetingPresentCount<TRes> {
  _CopyWithImpl_Variables_Subscription_watchMeetingPresentCount(
    this._instance,
    this._then,
  );

  final Variables_Subscription_watchMeetingPresentCount _instance;

  final TRes Function(Variables_Subscription_watchMeetingPresentCount) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? meetingId = _undefined,
    Object? asServant = _undefined,
    Object? fromDate = _undefined,
    Object? toDate = _undefined,
  }) => _then(
    Variables_Subscription_watchMeetingPresentCount._({
      ..._instance._$data,
      if (meetingId != _undefined && meetingId != null)
        'meetingId': (meetingId as UuidValue),
      if (asServant != _undefined && asServant != null)
        'asServant': (asServant as bool),
      if (fromDate != _undefined && fromDate != null)
        'fromDate': (fromDate as DateTime),
      if (toDate != _undefined && toDate != null)
        'toDate': (toDate as DateTime),
    }),
  );
}

class _CopyWithStubImpl_Variables_Subscription_watchMeetingPresentCount<TRes>
    implements CopyWith_Variables_Subscription_watchMeetingPresentCount<TRes> {
  _CopyWithStubImpl_Variables_Subscription_watchMeetingPresentCount(this._res);

  TRes _res;

  call({
    UuidValue? meetingId,
    bool? asServant,
    DateTime? fromDate,
    DateTime? toDate,
  }) => _res;
}

class Subscription_watchMeetingPresentCount {
  Subscription_watchMeetingPresentCount({
    required this.historyAttendanceHistoryAggregate,
  });

  factory Subscription_watchMeetingPresentCount.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$historyAttendanceHistoryAggregate =
        json['historyAttendanceHistoryAggregate'];
    return Subscription_watchMeetingPresentCount(
      historyAttendanceHistoryAggregate:
          Subscription_watchMeetingPresentCount_historyAttendanceHistoryAggregate.fromJson(
            (l$historyAttendanceHistoryAggregate as Map<String, dynamic>),
          ),
    );
  }

  final Subscription_watchMeetingPresentCount_historyAttendanceHistoryAggregate
  historyAttendanceHistoryAggregate;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$historyAttendanceHistoryAggregate =
        historyAttendanceHistoryAggregate;
    _resultData['historyAttendanceHistoryAggregate'] =
        l$historyAttendanceHistoryAggregate.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$historyAttendanceHistoryAggregate =
        historyAttendanceHistoryAggregate;
    return Object.hashAll([l$historyAttendanceHistoryAggregate]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Subscription_watchMeetingPresentCount ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$historyAttendanceHistoryAggregate =
        historyAttendanceHistoryAggregate;
    final lOther$historyAttendanceHistoryAggregate =
        other.historyAttendanceHistoryAggregate;
    if (l$historyAttendanceHistoryAggregate !=
        lOther$historyAttendanceHistoryAggregate) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Subscription_watchMeetingPresentCount
    on Subscription_watchMeetingPresentCount {
  CopyWith_Subscription_watchMeetingPresentCount<
    Subscription_watchMeetingPresentCount
  >
  get copyWith =>
      CopyWith_Subscription_watchMeetingPresentCount(this, (i) => i);
}

abstract class CopyWith_Subscription_watchMeetingPresentCount<TRes> {
  factory CopyWith_Subscription_watchMeetingPresentCount(
    Subscription_watchMeetingPresentCount instance,
    TRes Function(Subscription_watchMeetingPresentCount) then,
  ) = _CopyWithImpl_Subscription_watchMeetingPresentCount;

  factory CopyWith_Subscription_watchMeetingPresentCount.stub(TRes res) =
      _CopyWithStubImpl_Subscription_watchMeetingPresentCount;

  TRes call({
    Subscription_watchMeetingPresentCount_historyAttendanceHistoryAggregate?
    historyAttendanceHistoryAggregate,
  });
  CopyWith_Subscription_watchMeetingPresentCount_historyAttendanceHistoryAggregate<
    TRes
  >
  get historyAttendanceHistoryAggregate;
}

class _CopyWithImpl_Subscription_watchMeetingPresentCount<TRes>
    implements CopyWith_Subscription_watchMeetingPresentCount<TRes> {
  _CopyWithImpl_Subscription_watchMeetingPresentCount(
    this._instance,
    this._then,
  );

  final Subscription_watchMeetingPresentCount _instance;

  final TRes Function(Subscription_watchMeetingPresentCount) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? historyAttendanceHistoryAggregate = _undefined}) => _then(
    Subscription_watchMeetingPresentCount(
      historyAttendanceHistoryAggregate:
          historyAttendanceHistoryAggregate == _undefined ||
              historyAttendanceHistoryAggregate == null
          ? _instance.historyAttendanceHistoryAggregate
          : (historyAttendanceHistoryAggregate
                as Subscription_watchMeetingPresentCount_historyAttendanceHistoryAggregate),
    ),
  );

  CopyWith_Subscription_watchMeetingPresentCount_historyAttendanceHistoryAggregate<
    TRes
  >
  get historyAttendanceHistoryAggregate {
    final local$historyAttendanceHistoryAggregate =
        _instance.historyAttendanceHistoryAggregate;
    return CopyWith_Subscription_watchMeetingPresentCount_historyAttendanceHistoryAggregate(
      local$historyAttendanceHistoryAggregate,
      (e) => call(historyAttendanceHistoryAggregate: e),
    );
  }
}

class _CopyWithStubImpl_Subscription_watchMeetingPresentCount<TRes>
    implements CopyWith_Subscription_watchMeetingPresentCount<TRes> {
  _CopyWithStubImpl_Subscription_watchMeetingPresentCount(this._res);

  TRes _res;

  call({
    Subscription_watchMeetingPresentCount_historyAttendanceHistoryAggregate?
    historyAttendanceHistoryAggregate,
  }) => _res;

  CopyWith_Subscription_watchMeetingPresentCount_historyAttendanceHistoryAggregate<
    TRes
  >
  get historyAttendanceHistoryAggregate =>
      CopyWith_Subscription_watchMeetingPresentCount_historyAttendanceHistoryAggregate.stub(
        _res,
      );
}

const documentNodeSubscriptionwatchMeetingPresentCount = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.subscription,
      name: NameNode(value: 'watchMeetingPresentCount'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'meetingId')),
          type: NamedTypeNode(name: NameNode(value: 'uuid'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'asServant')),
          type: NamedTypeNode(
            name: NameNode(value: 'Boolean'),
            isNonNull: true,
          ),
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
            name: NameNode(value: 'historyAttendanceHistoryAggregate'),
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
                      name: NameNode(value: 'asServant'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: '_eq'),
                            value: VariableNode(
                              name: NameNode(value: 'asServant'),
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
                  name: NameNode(value: 'aggregate'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'count'),
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

class Subscription_watchMeetingPresentCount_historyAttendanceHistoryAggregate {
  Subscription_watchMeetingPresentCount_historyAttendanceHistoryAggregate({
    this.aggregate,
    this.$__typename = 'HistoryAttendanceHistoryAggregate',
  });

  factory Subscription_watchMeetingPresentCount_historyAttendanceHistoryAggregate.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$aggregate = json['aggregate'];
    final l$$__typename = json['__typename'];
    return Subscription_watchMeetingPresentCount_historyAttendanceHistoryAggregate(
      aggregate: l$aggregate == null
          ? null
          : Subscription_watchMeetingPresentCount_historyAttendanceHistoryAggregate_aggregate.fromJson(
              (l$aggregate as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Subscription_watchMeetingPresentCount_historyAttendanceHistoryAggregate_aggregate?
  aggregate;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$aggregate = aggregate;
    _resultData['aggregate'] = l$aggregate?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$aggregate = aggregate;
    final l$$__typename = $__typename;
    return Object.hashAll([l$aggregate, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Subscription_watchMeetingPresentCount_historyAttendanceHistoryAggregate ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$aggregate = aggregate;
    final lOther$aggregate = other.aggregate;
    if (l$aggregate != lOther$aggregate) {
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

extension UtilityExtension_Subscription_watchMeetingPresentCount_historyAttendanceHistoryAggregate
    on Subscription_watchMeetingPresentCount_historyAttendanceHistoryAggregate {
  CopyWith_Subscription_watchMeetingPresentCount_historyAttendanceHistoryAggregate<
    Subscription_watchMeetingPresentCount_historyAttendanceHistoryAggregate
  >
  get copyWith =>
      CopyWith_Subscription_watchMeetingPresentCount_historyAttendanceHistoryAggregate(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Subscription_watchMeetingPresentCount_historyAttendanceHistoryAggregate<
  TRes
> {
  factory CopyWith_Subscription_watchMeetingPresentCount_historyAttendanceHistoryAggregate(
    Subscription_watchMeetingPresentCount_historyAttendanceHistoryAggregate
    instance,
    TRes Function(
      Subscription_watchMeetingPresentCount_historyAttendanceHistoryAggregate,
    )
    then,
  ) = _CopyWithImpl_Subscription_watchMeetingPresentCount_historyAttendanceHistoryAggregate;

  factory CopyWith_Subscription_watchMeetingPresentCount_historyAttendanceHistoryAggregate.stub(
    TRes res,
  ) = _CopyWithStubImpl_Subscription_watchMeetingPresentCount_historyAttendanceHistoryAggregate;

  TRes call({
    Subscription_watchMeetingPresentCount_historyAttendanceHistoryAggregate_aggregate?
    aggregate,
    String? $__typename,
  });
  CopyWith_Subscription_watchMeetingPresentCount_historyAttendanceHistoryAggregate_aggregate<
    TRes
  >
  get aggregate;
}

class _CopyWithImpl_Subscription_watchMeetingPresentCount_historyAttendanceHistoryAggregate<
  TRes
>
    implements
        CopyWith_Subscription_watchMeetingPresentCount_historyAttendanceHistoryAggregate<
          TRes
        > {
  _CopyWithImpl_Subscription_watchMeetingPresentCount_historyAttendanceHistoryAggregate(
    this._instance,
    this._then,
  );

  final Subscription_watchMeetingPresentCount_historyAttendanceHistoryAggregate
  _instance;

  final TRes Function(
    Subscription_watchMeetingPresentCount_historyAttendanceHistoryAggregate,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? aggregate = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Subscription_watchMeetingPresentCount_historyAttendanceHistoryAggregate(
      aggregate: aggregate == _undefined
          ? _instance.aggregate
          : (aggregate
                as Subscription_watchMeetingPresentCount_historyAttendanceHistoryAggregate_aggregate?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Subscription_watchMeetingPresentCount_historyAttendanceHistoryAggregate_aggregate<
    TRes
  >
  get aggregate {
    final local$aggregate = _instance.aggregate;
    return local$aggregate == null
        ? CopyWith_Subscription_watchMeetingPresentCount_historyAttendanceHistoryAggregate_aggregate.stub(
            _then(_instance),
          )
        : CopyWith_Subscription_watchMeetingPresentCount_historyAttendanceHistoryAggregate_aggregate(
            local$aggregate,
            (e) => call(aggregate: e),
          );
  }
}

class _CopyWithStubImpl_Subscription_watchMeetingPresentCount_historyAttendanceHistoryAggregate<
  TRes
>
    implements
        CopyWith_Subscription_watchMeetingPresentCount_historyAttendanceHistoryAggregate<
          TRes
        > {
  _CopyWithStubImpl_Subscription_watchMeetingPresentCount_historyAttendanceHistoryAggregate(
    this._res,
  );

  TRes _res;

  call({
    Subscription_watchMeetingPresentCount_historyAttendanceHistoryAggregate_aggregate?
    aggregate,
    String? $__typename,
  }) => _res;

  CopyWith_Subscription_watchMeetingPresentCount_historyAttendanceHistoryAggregate_aggregate<
    TRes
  >
  get aggregate =>
      CopyWith_Subscription_watchMeetingPresentCount_historyAttendanceHistoryAggregate_aggregate.stub(
        _res,
      );
}

class Subscription_watchMeetingPresentCount_historyAttendanceHistoryAggregate_aggregate {
  Subscription_watchMeetingPresentCount_historyAttendanceHistoryAggregate_aggregate({
    required this.count,
    this.$__typename = 'HistoryAttendanceHistoryAggregateFields',
  });

  factory Subscription_watchMeetingPresentCount_historyAttendanceHistoryAggregate_aggregate.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$count = json['count'];
    final l$$__typename = json['__typename'];
    return Subscription_watchMeetingPresentCount_historyAttendanceHistoryAggregate_aggregate(
      count: (l$count as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int count;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$count = count;
    _resultData['count'] = l$count;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$count = count;
    final l$$__typename = $__typename;
    return Object.hashAll([l$count, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Subscription_watchMeetingPresentCount_historyAttendanceHistoryAggregate_aggregate ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
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

extension UtilityExtension_Subscription_watchMeetingPresentCount_historyAttendanceHistoryAggregate_aggregate
    on
        Subscription_watchMeetingPresentCount_historyAttendanceHistoryAggregate_aggregate {
  CopyWith_Subscription_watchMeetingPresentCount_historyAttendanceHistoryAggregate_aggregate<
    Subscription_watchMeetingPresentCount_historyAttendanceHistoryAggregate_aggregate
  >
  get copyWith =>
      CopyWith_Subscription_watchMeetingPresentCount_historyAttendanceHistoryAggregate_aggregate(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Subscription_watchMeetingPresentCount_historyAttendanceHistoryAggregate_aggregate<
  TRes
> {
  factory CopyWith_Subscription_watchMeetingPresentCount_historyAttendanceHistoryAggregate_aggregate(
    Subscription_watchMeetingPresentCount_historyAttendanceHistoryAggregate_aggregate
    instance,
    TRes Function(
      Subscription_watchMeetingPresentCount_historyAttendanceHistoryAggregate_aggregate,
    )
    then,
  ) = _CopyWithImpl_Subscription_watchMeetingPresentCount_historyAttendanceHistoryAggregate_aggregate;

  factory CopyWith_Subscription_watchMeetingPresentCount_historyAttendanceHistoryAggregate_aggregate.stub(
    TRes res,
  ) = _CopyWithStubImpl_Subscription_watchMeetingPresentCount_historyAttendanceHistoryAggregate_aggregate;

  TRes call({int? count, String? $__typename});
}

class _CopyWithImpl_Subscription_watchMeetingPresentCount_historyAttendanceHistoryAggregate_aggregate<
  TRes
>
    implements
        CopyWith_Subscription_watchMeetingPresentCount_historyAttendanceHistoryAggregate_aggregate<
          TRes
        > {
  _CopyWithImpl_Subscription_watchMeetingPresentCount_historyAttendanceHistoryAggregate_aggregate(
    this._instance,
    this._then,
  );

  final Subscription_watchMeetingPresentCount_historyAttendanceHistoryAggregate_aggregate
  _instance;

  final TRes Function(
    Subscription_watchMeetingPresentCount_historyAttendanceHistoryAggregate_aggregate,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Subscription_watchMeetingPresentCount_historyAttendanceHistoryAggregate_aggregate(
      count: count == _undefined || count == null
          ? _instance.count
          : (count as int),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Subscription_watchMeetingPresentCount_historyAttendanceHistoryAggregate_aggregate<
  TRes
>
    implements
        CopyWith_Subscription_watchMeetingPresentCount_historyAttendanceHistoryAggregate_aggregate<
          TRes
        > {
  _CopyWithStubImpl_Subscription_watchMeetingPresentCount_historyAttendanceHistoryAggregate_aggregate(
    this._res,
  );

  TRes _res;

  call({int? count, String? $__typename}) => _res;
}

class Variables_Subscription_watchMeetingEligibleCount {
  factory Variables_Subscription_watchMeetingEligibleCount({
    required UuidValue meetingId,
    required bool asServant,
  }) => Variables_Subscription_watchMeetingEligibleCount._({
    r'meetingId': meetingId,
    r'asServant': asServant,
  });

  Variables_Subscription_watchMeetingEligibleCount._(this._$data);

  factory Variables_Subscription_watchMeetingEligibleCount.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$meetingId = data['meetingId'];
    result$data['meetingId'] = stringToUuid(l$meetingId);
    final l$asServant = data['asServant'];
    result$data['asServant'] = (l$asServant as bool);
    return Variables_Subscription_watchMeetingEligibleCount._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get meetingId => (_$data['meetingId'] as UuidValue);

  bool get asServant => (_$data['asServant'] as bool);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$meetingId = meetingId;
    result$data['meetingId'] = uuidToString(l$meetingId);
    final l$asServant = asServant;
    result$data['asServant'] = l$asServant;
    return result$data;
  }

  CopyWith_Variables_Subscription_watchMeetingEligibleCount<
    Variables_Subscription_watchMeetingEligibleCount
  >
  get copyWith =>
      CopyWith_Variables_Subscription_watchMeetingEligibleCount(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Subscription_watchMeetingEligibleCount ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$meetingId = meetingId;
    final lOther$meetingId = other.meetingId;
    if (l$meetingId != lOther$meetingId) {
      return false;
    }
    final l$asServant = asServant;
    final lOther$asServant = other.asServant;
    if (l$asServant != lOther$asServant) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$meetingId = meetingId;
    final l$asServant = asServant;
    return Object.hashAll([l$meetingId, l$asServant]);
  }
}

abstract class CopyWith_Variables_Subscription_watchMeetingEligibleCount<TRes> {
  factory CopyWith_Variables_Subscription_watchMeetingEligibleCount(
    Variables_Subscription_watchMeetingEligibleCount instance,
    TRes Function(Variables_Subscription_watchMeetingEligibleCount) then,
  ) = _CopyWithImpl_Variables_Subscription_watchMeetingEligibleCount;

  factory CopyWith_Variables_Subscription_watchMeetingEligibleCount.stub(
    TRes res,
  ) = _CopyWithStubImpl_Variables_Subscription_watchMeetingEligibleCount;

  TRes call({UuidValue? meetingId, bool? asServant});
}

class _CopyWithImpl_Variables_Subscription_watchMeetingEligibleCount<TRes>
    implements CopyWith_Variables_Subscription_watchMeetingEligibleCount<TRes> {
  _CopyWithImpl_Variables_Subscription_watchMeetingEligibleCount(
    this._instance,
    this._then,
  );

  final Variables_Subscription_watchMeetingEligibleCount _instance;

  final TRes Function(Variables_Subscription_watchMeetingEligibleCount) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? meetingId = _undefined, Object? asServant = _undefined}) =>
      _then(
        Variables_Subscription_watchMeetingEligibleCount._({
          ..._instance._$data,
          if (meetingId != _undefined && meetingId != null)
            'meetingId': (meetingId as UuidValue),
          if (asServant != _undefined && asServant != null)
            'asServant': (asServant as bool),
        }),
      );
}

class _CopyWithStubImpl_Variables_Subscription_watchMeetingEligibleCount<TRes>
    implements CopyWith_Variables_Subscription_watchMeetingEligibleCount<TRes> {
  _CopyWithStubImpl_Variables_Subscription_watchMeetingEligibleCount(this._res);

  TRes _res;

  call({UuidValue? meetingId, bool? asServant}) => _res;
}

class Subscription_watchMeetingEligibleCount {
  Subscription_watchMeetingEligibleCount({
    required this.historyMeetingRosterAggregate,
  });

  factory Subscription_watchMeetingEligibleCount.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$historyMeetingRosterAggregate =
        json['historyMeetingRosterAggregate'];
    return Subscription_watchMeetingEligibleCount(
      historyMeetingRosterAggregate:
          Subscription_watchMeetingEligibleCount_historyMeetingRosterAggregate.fromJson(
            (l$historyMeetingRosterAggregate as Map<String, dynamic>),
          ),
    );
  }

  final Subscription_watchMeetingEligibleCount_historyMeetingRosterAggregate
  historyMeetingRosterAggregate;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$historyMeetingRosterAggregate = historyMeetingRosterAggregate;
    _resultData['historyMeetingRosterAggregate'] =
        l$historyMeetingRosterAggregate.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$historyMeetingRosterAggregate = historyMeetingRosterAggregate;
    return Object.hashAll([l$historyMeetingRosterAggregate]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Subscription_watchMeetingEligibleCount ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$historyMeetingRosterAggregate = historyMeetingRosterAggregate;
    final lOther$historyMeetingRosterAggregate =
        other.historyMeetingRosterAggregate;
    if (l$historyMeetingRosterAggregate !=
        lOther$historyMeetingRosterAggregate) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Subscription_watchMeetingEligibleCount
    on Subscription_watchMeetingEligibleCount {
  CopyWith_Subscription_watchMeetingEligibleCount<
    Subscription_watchMeetingEligibleCount
  >
  get copyWith =>
      CopyWith_Subscription_watchMeetingEligibleCount(this, (i) => i);
}

abstract class CopyWith_Subscription_watchMeetingEligibleCount<TRes> {
  factory CopyWith_Subscription_watchMeetingEligibleCount(
    Subscription_watchMeetingEligibleCount instance,
    TRes Function(Subscription_watchMeetingEligibleCount) then,
  ) = _CopyWithImpl_Subscription_watchMeetingEligibleCount;

  factory CopyWith_Subscription_watchMeetingEligibleCount.stub(TRes res) =
      _CopyWithStubImpl_Subscription_watchMeetingEligibleCount;

  TRes call({
    Subscription_watchMeetingEligibleCount_historyMeetingRosterAggregate?
    historyMeetingRosterAggregate,
  });
  CopyWith_Subscription_watchMeetingEligibleCount_historyMeetingRosterAggregate<
    TRes
  >
  get historyMeetingRosterAggregate;
}

class _CopyWithImpl_Subscription_watchMeetingEligibleCount<TRes>
    implements CopyWith_Subscription_watchMeetingEligibleCount<TRes> {
  _CopyWithImpl_Subscription_watchMeetingEligibleCount(
    this._instance,
    this._then,
  );

  final Subscription_watchMeetingEligibleCount _instance;

  final TRes Function(Subscription_watchMeetingEligibleCount) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? historyMeetingRosterAggregate = _undefined}) => _then(
    Subscription_watchMeetingEligibleCount(
      historyMeetingRosterAggregate:
          historyMeetingRosterAggregate == _undefined ||
              historyMeetingRosterAggregate == null
          ? _instance.historyMeetingRosterAggregate
          : (historyMeetingRosterAggregate
                as Subscription_watchMeetingEligibleCount_historyMeetingRosterAggregate),
    ),
  );

  CopyWith_Subscription_watchMeetingEligibleCount_historyMeetingRosterAggregate<
    TRes
  >
  get historyMeetingRosterAggregate {
    final local$historyMeetingRosterAggregate =
        _instance.historyMeetingRosterAggregate;
    return CopyWith_Subscription_watchMeetingEligibleCount_historyMeetingRosterAggregate(
      local$historyMeetingRosterAggregate,
      (e) => call(historyMeetingRosterAggregate: e),
    );
  }
}

class _CopyWithStubImpl_Subscription_watchMeetingEligibleCount<TRes>
    implements CopyWith_Subscription_watchMeetingEligibleCount<TRes> {
  _CopyWithStubImpl_Subscription_watchMeetingEligibleCount(this._res);

  TRes _res;

  call({
    Subscription_watchMeetingEligibleCount_historyMeetingRosterAggregate?
    historyMeetingRosterAggregate,
  }) => _res;

  CopyWith_Subscription_watchMeetingEligibleCount_historyMeetingRosterAggregate<
    TRes
  >
  get historyMeetingRosterAggregate =>
      CopyWith_Subscription_watchMeetingEligibleCount_historyMeetingRosterAggregate.stub(
        _res,
      );
}

const documentNodeSubscriptionwatchMeetingEligibleCount = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.subscription,
      name: NameNode(value: 'watchMeetingEligibleCount'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'meetingId')),
          type: NamedTypeNode(name: NameNode(value: 'uuid'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'asServant')),
          type: NamedTypeNode(
            name: NameNode(value: 'Boolean'),
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
            name: NameNode(value: 'historyMeetingRosterAggregate'),
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
                      name: NameNode(value: 'asServant'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: '_eq'),
                            value: VariableNode(
                              name: NameNode(value: 'asServant'),
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
                  name: NameNode(value: 'aggregate'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'count'),
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

class Subscription_watchMeetingEligibleCount_historyMeetingRosterAggregate {
  Subscription_watchMeetingEligibleCount_historyMeetingRosterAggregate({
    this.aggregate,
    this.$__typename = 'HistoryMeetingRosterAggregate',
  });

  factory Subscription_watchMeetingEligibleCount_historyMeetingRosterAggregate.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$aggregate = json['aggregate'];
    final l$$__typename = json['__typename'];
    return Subscription_watchMeetingEligibleCount_historyMeetingRosterAggregate(
      aggregate: l$aggregate == null
          ? null
          : Subscription_watchMeetingEligibleCount_historyMeetingRosterAggregate_aggregate.fromJson(
              (l$aggregate as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Subscription_watchMeetingEligibleCount_historyMeetingRosterAggregate_aggregate?
  aggregate;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$aggregate = aggregate;
    _resultData['aggregate'] = l$aggregate?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$aggregate = aggregate;
    final l$$__typename = $__typename;
    return Object.hashAll([l$aggregate, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Subscription_watchMeetingEligibleCount_historyMeetingRosterAggregate ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$aggregate = aggregate;
    final lOther$aggregate = other.aggregate;
    if (l$aggregate != lOther$aggregate) {
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

extension UtilityExtension_Subscription_watchMeetingEligibleCount_historyMeetingRosterAggregate
    on Subscription_watchMeetingEligibleCount_historyMeetingRosterAggregate {
  CopyWith_Subscription_watchMeetingEligibleCount_historyMeetingRosterAggregate<
    Subscription_watchMeetingEligibleCount_historyMeetingRosterAggregate
  >
  get copyWith =>
      CopyWith_Subscription_watchMeetingEligibleCount_historyMeetingRosterAggregate(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Subscription_watchMeetingEligibleCount_historyMeetingRosterAggregate<
  TRes
> {
  factory CopyWith_Subscription_watchMeetingEligibleCount_historyMeetingRosterAggregate(
    Subscription_watchMeetingEligibleCount_historyMeetingRosterAggregate
    instance,
    TRes Function(
      Subscription_watchMeetingEligibleCount_historyMeetingRosterAggregate,
    )
    then,
  ) = _CopyWithImpl_Subscription_watchMeetingEligibleCount_historyMeetingRosterAggregate;

  factory CopyWith_Subscription_watchMeetingEligibleCount_historyMeetingRosterAggregate.stub(
    TRes res,
  ) = _CopyWithStubImpl_Subscription_watchMeetingEligibleCount_historyMeetingRosterAggregate;

  TRes call({
    Subscription_watchMeetingEligibleCount_historyMeetingRosterAggregate_aggregate?
    aggregate,
    String? $__typename,
  });
  CopyWith_Subscription_watchMeetingEligibleCount_historyMeetingRosterAggregate_aggregate<
    TRes
  >
  get aggregate;
}

class _CopyWithImpl_Subscription_watchMeetingEligibleCount_historyMeetingRosterAggregate<
  TRes
>
    implements
        CopyWith_Subscription_watchMeetingEligibleCount_historyMeetingRosterAggregate<
          TRes
        > {
  _CopyWithImpl_Subscription_watchMeetingEligibleCount_historyMeetingRosterAggregate(
    this._instance,
    this._then,
  );

  final Subscription_watchMeetingEligibleCount_historyMeetingRosterAggregate
  _instance;

  final TRes Function(
    Subscription_watchMeetingEligibleCount_historyMeetingRosterAggregate,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? aggregate = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Subscription_watchMeetingEligibleCount_historyMeetingRosterAggregate(
      aggregate: aggregate == _undefined
          ? _instance.aggregate
          : (aggregate
                as Subscription_watchMeetingEligibleCount_historyMeetingRosterAggregate_aggregate?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Subscription_watchMeetingEligibleCount_historyMeetingRosterAggregate_aggregate<
    TRes
  >
  get aggregate {
    final local$aggregate = _instance.aggregate;
    return local$aggregate == null
        ? CopyWith_Subscription_watchMeetingEligibleCount_historyMeetingRosterAggregate_aggregate.stub(
            _then(_instance),
          )
        : CopyWith_Subscription_watchMeetingEligibleCount_historyMeetingRosterAggregate_aggregate(
            local$aggregate,
            (e) => call(aggregate: e),
          );
  }
}

class _CopyWithStubImpl_Subscription_watchMeetingEligibleCount_historyMeetingRosterAggregate<
  TRes
>
    implements
        CopyWith_Subscription_watchMeetingEligibleCount_historyMeetingRosterAggregate<
          TRes
        > {
  _CopyWithStubImpl_Subscription_watchMeetingEligibleCount_historyMeetingRosterAggregate(
    this._res,
  );

  TRes _res;

  call({
    Subscription_watchMeetingEligibleCount_historyMeetingRosterAggregate_aggregate?
    aggregate,
    String? $__typename,
  }) => _res;

  CopyWith_Subscription_watchMeetingEligibleCount_historyMeetingRosterAggregate_aggregate<
    TRes
  >
  get aggregate =>
      CopyWith_Subscription_watchMeetingEligibleCount_historyMeetingRosterAggregate_aggregate.stub(
        _res,
      );
}

class Subscription_watchMeetingEligibleCount_historyMeetingRosterAggregate_aggregate {
  Subscription_watchMeetingEligibleCount_historyMeetingRosterAggregate_aggregate({
    required this.count,
    this.$__typename = 'HistoryMeetingRosterAggregateFields',
  });

  factory Subscription_watchMeetingEligibleCount_historyMeetingRosterAggregate_aggregate.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$count = json['count'];
    final l$$__typename = json['__typename'];
    return Subscription_watchMeetingEligibleCount_historyMeetingRosterAggregate_aggregate(
      count: (l$count as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int count;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$count = count;
    _resultData['count'] = l$count;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$count = count;
    final l$$__typename = $__typename;
    return Object.hashAll([l$count, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Subscription_watchMeetingEligibleCount_historyMeetingRosterAggregate_aggregate ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
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

extension UtilityExtension_Subscription_watchMeetingEligibleCount_historyMeetingRosterAggregate_aggregate
    on Subscription_watchMeetingEligibleCount_historyMeetingRosterAggregate_aggregate {
  CopyWith_Subscription_watchMeetingEligibleCount_historyMeetingRosterAggregate_aggregate<
    Subscription_watchMeetingEligibleCount_historyMeetingRosterAggregate_aggregate
  >
  get copyWith =>
      CopyWith_Subscription_watchMeetingEligibleCount_historyMeetingRosterAggregate_aggregate(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Subscription_watchMeetingEligibleCount_historyMeetingRosterAggregate_aggregate<
  TRes
> {
  factory CopyWith_Subscription_watchMeetingEligibleCount_historyMeetingRosterAggregate_aggregate(
    Subscription_watchMeetingEligibleCount_historyMeetingRosterAggregate_aggregate
    instance,
    TRes Function(
      Subscription_watchMeetingEligibleCount_historyMeetingRosterAggregate_aggregate,
    )
    then,
  ) = _CopyWithImpl_Subscription_watchMeetingEligibleCount_historyMeetingRosterAggregate_aggregate;

  factory CopyWith_Subscription_watchMeetingEligibleCount_historyMeetingRosterAggregate_aggregate.stub(
    TRes res,
  ) = _CopyWithStubImpl_Subscription_watchMeetingEligibleCount_historyMeetingRosterAggregate_aggregate;

  TRes call({int? count, String? $__typename});
}

class _CopyWithImpl_Subscription_watchMeetingEligibleCount_historyMeetingRosterAggregate_aggregate<
  TRes
>
    implements
        CopyWith_Subscription_watchMeetingEligibleCount_historyMeetingRosterAggregate_aggregate<
          TRes
        > {
  _CopyWithImpl_Subscription_watchMeetingEligibleCount_historyMeetingRosterAggregate_aggregate(
    this._instance,
    this._then,
  );

  final Subscription_watchMeetingEligibleCount_historyMeetingRosterAggregate_aggregate
  _instance;

  final TRes Function(
    Subscription_watchMeetingEligibleCount_historyMeetingRosterAggregate_aggregate,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Subscription_watchMeetingEligibleCount_historyMeetingRosterAggregate_aggregate(
      count: count == _undefined || count == null
          ? _instance.count
          : (count as int),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Subscription_watchMeetingEligibleCount_historyMeetingRosterAggregate_aggregate<
  TRes
>
    implements
        CopyWith_Subscription_watchMeetingEligibleCount_historyMeetingRosterAggregate_aggregate<
          TRes
        > {
  _CopyWithStubImpl_Subscription_watchMeetingEligibleCount_historyMeetingRosterAggregate_aggregate(
    this._res,
  );

  TRes _res;

  call({int? count, String? $__typename}) => _res;
}
