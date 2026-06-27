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
    List<Input_HistoryMeetingsPersonsBoolExp>? where,
    List<Input_HistoryMeetingsPersonsOrderBy>? orderBy,
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
            (e) => Input_HistoryMeetingsPersonsBoolExp.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('orderBy')) {
      final l$orderBy = data['orderBy'];
      result$data['orderBy'] = (l$orderBy as List<dynamic>?)
          ?.map(
            (e) => Input_HistoryMeetingsPersonsOrderBy.fromJson(
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

  List<Input_HistoryMeetingsPersonsBoolExp>? get where =>
      (_$data['where'] as List<Input_HistoryMeetingsPersonsBoolExp>?);

  List<Input_HistoryMeetingsPersonsOrderBy>? get orderBy =>
      (_$data['orderBy'] as List<Input_HistoryMeetingsPersonsOrderBy>?);

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
    List<Input_HistoryMeetingsPersonsBoolExp>? where,
    List<Input_HistoryMeetingsPersonsOrderBy>? orderBy,
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
        'where': (where as List<Input_HistoryMeetingsPersonsBoolExp>?),
      if (orderBy != _undefined)
        'orderBy': (orderBy as List<Input_HistoryMeetingsPersonsOrderBy>?),
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
    List<Input_HistoryMeetingsPersonsBoolExp>? where,
    List<Input_HistoryMeetingsPersonsOrderBy>? orderBy,
    int? limit,
  }) => _res;
}

class Subscription_watchMeetingRoster {
  Subscription_watchMeetingRoster({required this.historyMeetingsPersons});

  factory Subscription_watchMeetingRoster.fromJson(Map<String, dynamic> json) {
    final l$historyMeetingsPersons = json['historyMeetingsPersons'];
    return Subscription_watchMeetingRoster(
      historyMeetingsPersons: (l$historyMeetingsPersons as List<dynamic>)
          .map(
            (e) =>
                Subscription_watchMeetingRoster_historyMeetingsPersons.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
    );
  }

  final List<Subscription_watchMeetingRoster_historyMeetingsPersons>
  historyMeetingsPersons;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$historyMeetingsPersons = historyMeetingsPersons;
    _resultData['historyMeetingsPersons'] = l$historyMeetingsPersons
        .map((e) => e.toJson())
        .toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$historyMeetingsPersons = historyMeetingsPersons;
    return Object.hashAll([
      Object.hashAll(l$historyMeetingsPersons.map((v) => v)),
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
    final l$historyMeetingsPersons = historyMeetingsPersons;
    final lOther$historyMeetingsPersons = other.historyMeetingsPersons;
    if (l$historyMeetingsPersons.length !=
        lOther$historyMeetingsPersons.length) {
      return false;
    }
    for (int i = 0; i < l$historyMeetingsPersons.length; i++) {
      final l$historyMeetingsPersons$entry = l$historyMeetingsPersons[i];
      final lOther$historyMeetingsPersons$entry =
          lOther$historyMeetingsPersons[i];
      if (l$historyMeetingsPersons$entry !=
          lOther$historyMeetingsPersons$entry) {
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
    List<Subscription_watchMeetingRoster_historyMeetingsPersons>?
    historyMeetingsPersons,
  });
  TRes historyMeetingsPersons(
    Iterable<Subscription_watchMeetingRoster_historyMeetingsPersons> Function(
      Iterable<
        CopyWith_Subscription_watchMeetingRoster_historyMeetingsPersons<
          Subscription_watchMeetingRoster_historyMeetingsPersons
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

  TRes call({Object? historyMeetingsPersons = _undefined}) => _then(
    Subscription_watchMeetingRoster(
      historyMeetingsPersons:
          historyMeetingsPersons == _undefined || historyMeetingsPersons == null
          ? _instance.historyMeetingsPersons
          : (historyMeetingsPersons
                as List<
                  Subscription_watchMeetingRoster_historyMeetingsPersons
                >),
    ),
  );

  TRes historyMeetingsPersons(
    Iterable<Subscription_watchMeetingRoster_historyMeetingsPersons> Function(
      Iterable<
        CopyWith_Subscription_watchMeetingRoster_historyMeetingsPersons<
          Subscription_watchMeetingRoster_historyMeetingsPersons
        >
      >,
    )
    _fn,
  ) => call(
    historyMeetingsPersons: _fn(
      _instance.historyMeetingsPersons.map(
        (e) => CopyWith_Subscription_watchMeetingRoster_historyMeetingsPersons(
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
    List<Subscription_watchMeetingRoster_historyMeetingsPersons>?
    historyMeetingsPersons,
  }) => _res;

  historyMeetingsPersons(_fn) => _res;
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
              name: NameNode(value: 'HistoryMeetingsPersonsBoolExp'),
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
              name: NameNode(value: 'HistoryMeetingsPersonsOrderBy'),
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
                      name: NameNode(value: 'person'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'name'),
                            value: EnumValueNode(name: NameNode(value: 'ASC')),
                          ),
                        ],
                      ),
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
            name: NameNode(value: 'historyMeetingsPersons'),
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
                  name: NameNode(value: 'attendanceHistory'),
                  alias: null,
                  arguments: [
                    ArgumentNode(
                      name: NameNode(value: 'where'),
                      value: ObjectValueNode(
                        fields: [
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

class Subscription_watchMeetingRoster_historyMeetingsPersons {
  Subscription_watchMeetingRoster_historyMeetingsPersons({
    this.person,
    required this.attendanceHistory,
    this.$__typename = 'HistoryMeetingsPersons',
  });

  factory Subscription_watchMeetingRoster_historyMeetingsPersons.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$person = json['person'];
    final l$attendanceHistory = json['attendanceHistory'];
    final l$$__typename = json['__typename'];
    return Subscription_watchMeetingRoster_historyMeetingsPersons(
      person: l$person == null
          ? null
          : Subscription_watchMeetingRoster_historyMeetingsPersons_person.fromJson(
              (l$person as Map<String, dynamic>),
            ),
      attendanceHistory: (l$attendanceHistory as List<dynamic>)
          .map(
            (e) =>
                Subscription_watchMeetingRoster_historyMeetingsPersons_attendanceHistory.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Subscription_watchMeetingRoster_historyMeetingsPersons_person? person;

  final List<
    Subscription_watchMeetingRoster_historyMeetingsPersons_attendanceHistory
  >
  attendanceHistory;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$person = person;
    _resultData['person'] = l$person?.toJson();
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
    final l$person = person;
    final l$attendanceHistory = attendanceHistory;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$person,
      Object.hashAll(l$attendanceHistory.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Subscription_watchMeetingRoster_historyMeetingsPersons ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$person = person;
    final lOther$person = other.person;
    if (l$person != lOther$person) {
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

extension UtilityExtension_Subscription_watchMeetingRoster_historyMeetingsPersons
    on Subscription_watchMeetingRoster_historyMeetingsPersons {
  CopyWith_Subscription_watchMeetingRoster_historyMeetingsPersons<
    Subscription_watchMeetingRoster_historyMeetingsPersons
  >
  get copyWith =>
      CopyWith_Subscription_watchMeetingRoster_historyMeetingsPersons(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Subscription_watchMeetingRoster_historyMeetingsPersons<
  TRes
> {
  factory CopyWith_Subscription_watchMeetingRoster_historyMeetingsPersons(
    Subscription_watchMeetingRoster_historyMeetingsPersons instance,
    TRes Function(Subscription_watchMeetingRoster_historyMeetingsPersons) then,
  ) = _CopyWithImpl_Subscription_watchMeetingRoster_historyMeetingsPersons;

  factory CopyWith_Subscription_watchMeetingRoster_historyMeetingsPersons.stub(
    TRes res,
  ) = _CopyWithStubImpl_Subscription_watchMeetingRoster_historyMeetingsPersons;

  TRes call({
    Subscription_watchMeetingRoster_historyMeetingsPersons_person? person,
    List<
      Subscription_watchMeetingRoster_historyMeetingsPersons_attendanceHistory
    >?
    attendanceHistory,
    String? $__typename,
  });
  CopyWith_Subscription_watchMeetingRoster_historyMeetingsPersons_person<TRes>
  get person;
  TRes attendanceHistory(
    Iterable<
      Subscription_watchMeetingRoster_historyMeetingsPersons_attendanceHistory
    >
    Function(
      Iterable<
        CopyWith_Subscription_watchMeetingRoster_historyMeetingsPersons_attendanceHistory<
          Subscription_watchMeetingRoster_historyMeetingsPersons_attendanceHistory
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl_Subscription_watchMeetingRoster_historyMeetingsPersons<TRes>
    implements
        CopyWith_Subscription_watchMeetingRoster_historyMeetingsPersons<TRes> {
  _CopyWithImpl_Subscription_watchMeetingRoster_historyMeetingsPersons(
    this._instance,
    this._then,
  );

  final Subscription_watchMeetingRoster_historyMeetingsPersons _instance;

  final TRes Function(Subscription_watchMeetingRoster_historyMeetingsPersons)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? person = _undefined,
    Object? attendanceHistory = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Subscription_watchMeetingRoster_historyMeetingsPersons(
      person: person == _undefined
          ? _instance.person
          : (person
                as Subscription_watchMeetingRoster_historyMeetingsPersons_person?),
      attendanceHistory:
          attendanceHistory == _undefined || attendanceHistory == null
          ? _instance.attendanceHistory
          : (attendanceHistory
                as List<
                  Subscription_watchMeetingRoster_historyMeetingsPersons_attendanceHistory
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Subscription_watchMeetingRoster_historyMeetingsPersons_person<TRes>
  get person {
    final local$person = _instance.person;
    return local$person == null
        ? CopyWith_Subscription_watchMeetingRoster_historyMeetingsPersons_person.stub(
            _then(_instance),
          )
        : CopyWith_Subscription_watchMeetingRoster_historyMeetingsPersons_person(
            local$person,
            (e) => call(person: e),
          );
  }

  TRes attendanceHistory(
    Iterable<
      Subscription_watchMeetingRoster_historyMeetingsPersons_attendanceHistory
    >
    Function(
      Iterable<
        CopyWith_Subscription_watchMeetingRoster_historyMeetingsPersons_attendanceHistory<
          Subscription_watchMeetingRoster_historyMeetingsPersons_attendanceHistory
        >
      >,
    )
    _fn,
  ) => call(
    attendanceHistory: _fn(
      _instance.attendanceHistory.map(
        (e) =>
            CopyWith_Subscription_watchMeetingRoster_historyMeetingsPersons_attendanceHistory(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl_Subscription_watchMeetingRoster_historyMeetingsPersons<
  TRes
>
    implements
        CopyWith_Subscription_watchMeetingRoster_historyMeetingsPersons<TRes> {
  _CopyWithStubImpl_Subscription_watchMeetingRoster_historyMeetingsPersons(
    this._res,
  );

  TRes _res;

  call({
    Subscription_watchMeetingRoster_historyMeetingsPersons_person? person,
    List<
      Subscription_watchMeetingRoster_historyMeetingsPersons_attendanceHistory
    >?
    attendanceHistory,
    String? $__typename,
  }) => _res;

  CopyWith_Subscription_watchMeetingRoster_historyMeetingsPersons_person<TRes>
  get person =>
      CopyWith_Subscription_watchMeetingRoster_historyMeetingsPersons_person.stub(
        _res,
      );

  attendanceHistory(_fn) => _res;
}

class Subscription_watchMeetingRoster_historyMeetingsPersons_person {
  Subscription_watchMeetingRoster_historyMeetingsPersons_person({
    required this.id,
    required this.name,
    this.mainPhone,
    required this.gender,
    this.color,
    this.studyYearId,
    this.photoUpdatedAt,
    this.blurhash,
    this.$__typename = 'Persons',
  });

  factory Subscription_watchMeetingRoster_historyMeetingsPersons_person.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$mainPhone = json['mainPhone'];
    final l$gender = json['gender'];
    final l$color = json['color'];
    final l$studyYearId = json['studyYearId'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$blurhash = json['blurhash'];
    final l$$__typename = json['__typename'];
    return Subscription_watchMeetingRoster_historyMeetingsPersons_person(
      id: stringToUuid(l$id),
      name: (l$name as String),
      mainPhone: (l$mainPhone as String?),
      gender: (l$gender as bool),
      color: (l$color as int?),
      studyYearId: (l$studyYearId as int?),
      photoUpdatedAt: l$photoUpdatedAt == null
          ? null
          : tstzFromString(l$photoUpdatedAt),
      blurhash: (l$blurhash as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final String name;

  final String? mainPhone;

  final bool gender;

  final int? color;

  final int? studyYearId;

  final DateTime? photoUpdatedAt;

  final String? blurhash;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
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
    final l$photoUpdatedAt = photoUpdatedAt;
    _resultData['photoUpdatedAt'] = l$photoUpdatedAt == null
        ? null
        : tstzToString(l$photoUpdatedAt);
    final l$blurhash = blurhash;
    _resultData['blurhash'] = l$blurhash;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$mainPhone = mainPhone;
    final l$gender = gender;
    final l$color = color;
    final l$studyYearId = studyYearId;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$blurhash = blurhash;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$mainPhone,
      l$gender,
      l$color,
      l$studyYearId,
      l$photoUpdatedAt,
      l$blurhash,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Subscription_watchMeetingRoster_historyMeetingsPersons_person ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Subscription_watchMeetingRoster_historyMeetingsPersons_person
    on Subscription_watchMeetingRoster_historyMeetingsPersons_person {
  CopyWith_Subscription_watchMeetingRoster_historyMeetingsPersons_person<
    Subscription_watchMeetingRoster_historyMeetingsPersons_person
  >
  get copyWith =>
      CopyWith_Subscription_watchMeetingRoster_historyMeetingsPersons_person(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Subscription_watchMeetingRoster_historyMeetingsPersons_person<
  TRes
> {
  factory CopyWith_Subscription_watchMeetingRoster_historyMeetingsPersons_person(
    Subscription_watchMeetingRoster_historyMeetingsPersons_person instance,
    TRes Function(Subscription_watchMeetingRoster_historyMeetingsPersons_person)
    then,
  ) = _CopyWithImpl_Subscription_watchMeetingRoster_historyMeetingsPersons_person;

  factory CopyWith_Subscription_watchMeetingRoster_historyMeetingsPersons_person.stub(
    TRes res,
  ) = _CopyWithStubImpl_Subscription_watchMeetingRoster_historyMeetingsPersons_person;

  TRes call({
    UuidValue? id,
    String? name,
    String? mainPhone,
    bool? gender,
    int? color,
    int? studyYearId,
    DateTime? photoUpdatedAt,
    String? blurhash,
    String? $__typename,
  });
}

class _CopyWithImpl_Subscription_watchMeetingRoster_historyMeetingsPersons_person<
  TRes
>
    implements
        CopyWith_Subscription_watchMeetingRoster_historyMeetingsPersons_person<
          TRes
        > {
  _CopyWithImpl_Subscription_watchMeetingRoster_historyMeetingsPersons_person(
    this._instance,
    this._then,
  );

  final Subscription_watchMeetingRoster_historyMeetingsPersons_person _instance;

  final TRes Function(
    Subscription_watchMeetingRoster_historyMeetingsPersons_person,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? mainPhone = _undefined,
    Object? gender = _undefined,
    Object? color = _undefined,
    Object? studyYearId = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? blurhash = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Subscription_watchMeetingRoster_historyMeetingsPersons_person(
      id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      mainPhone: mainPhone == _undefined
          ? _instance.mainPhone
          : (mainPhone as String?),
      gender: gender == _undefined || gender == null
          ? _instance.gender
          : (gender as bool),
      color: color == _undefined ? _instance.color : (color as int?),
      studyYearId: studyYearId == _undefined
          ? _instance.studyYearId
          : (studyYearId as int?),
      photoUpdatedAt: photoUpdatedAt == _undefined
          ? _instance.photoUpdatedAt
          : (photoUpdatedAt as DateTime?),
      blurhash: blurhash == _undefined
          ? _instance.blurhash
          : (blurhash as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Subscription_watchMeetingRoster_historyMeetingsPersons_person<
  TRes
>
    implements
        CopyWith_Subscription_watchMeetingRoster_historyMeetingsPersons_person<
          TRes
        > {
  _CopyWithStubImpl_Subscription_watchMeetingRoster_historyMeetingsPersons_person(
    this._res,
  );

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    String? mainPhone,
    bool? gender,
    int? color,
    int? studyYearId,
    DateTime? photoUpdatedAt,
    String? blurhash,
    String? $__typename,
  }) => _res;
}

class Subscription_watchMeetingRoster_historyMeetingsPersons_attendanceHistory {
  Subscription_watchMeetingRoster_historyMeetingsPersons_attendanceHistory({
    required this.id,
    required this.meetingId,
    required this.personId,
    required this.datetime,
    required this.asServant,
    this.$__typename = 'HistoryAttendanceHistory',
  });

  factory Subscription_watchMeetingRoster_historyMeetingsPersons_attendanceHistory.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$meetingId = json['meetingId'];
    final l$personId = json['personId'];
    final l$datetime = json['datetime'];
    final l$asServant = json['asServant'];
    final l$$__typename = json['__typename'];
    return Subscription_watchMeetingRoster_historyMeetingsPersons_attendanceHistory(
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
            is! Subscription_watchMeetingRoster_historyMeetingsPersons_attendanceHistory ||
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

extension UtilityExtension_Subscription_watchMeetingRoster_historyMeetingsPersons_attendanceHistory
    on Subscription_watchMeetingRoster_historyMeetingsPersons_attendanceHistory {
  CopyWith_Subscription_watchMeetingRoster_historyMeetingsPersons_attendanceHistory<
    Subscription_watchMeetingRoster_historyMeetingsPersons_attendanceHistory
  >
  get copyWith =>
      CopyWith_Subscription_watchMeetingRoster_historyMeetingsPersons_attendanceHistory(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Subscription_watchMeetingRoster_historyMeetingsPersons_attendanceHistory<
  TRes
> {
  factory CopyWith_Subscription_watchMeetingRoster_historyMeetingsPersons_attendanceHistory(
    Subscription_watchMeetingRoster_historyMeetingsPersons_attendanceHistory
    instance,
    TRes Function(
      Subscription_watchMeetingRoster_historyMeetingsPersons_attendanceHistory,
    )
    then,
  ) = _CopyWithImpl_Subscription_watchMeetingRoster_historyMeetingsPersons_attendanceHistory;

  factory CopyWith_Subscription_watchMeetingRoster_historyMeetingsPersons_attendanceHistory.stub(
    TRes res,
  ) = _CopyWithStubImpl_Subscription_watchMeetingRoster_historyMeetingsPersons_attendanceHistory;

  TRes call({
    UuidValue? id,
    UuidValue? meetingId,
    UuidValue? personId,
    DateTime? datetime,
    bool? asServant,
    String? $__typename,
  });
}

class _CopyWithImpl_Subscription_watchMeetingRoster_historyMeetingsPersons_attendanceHistory<
  TRes
>
    implements
        CopyWith_Subscription_watchMeetingRoster_historyMeetingsPersons_attendanceHistory<
          TRes
        > {
  _CopyWithImpl_Subscription_watchMeetingRoster_historyMeetingsPersons_attendanceHistory(
    this._instance,
    this._then,
  );

  final Subscription_watchMeetingRoster_historyMeetingsPersons_attendanceHistory
  _instance;

  final TRes Function(
    Subscription_watchMeetingRoster_historyMeetingsPersons_attendanceHistory,
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
    Subscription_watchMeetingRoster_historyMeetingsPersons_attendanceHistory(
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

class _CopyWithStubImpl_Subscription_watchMeetingRoster_historyMeetingsPersons_attendanceHistory<
  TRes
>
    implements
        CopyWith_Subscription_watchMeetingRoster_historyMeetingsPersons_attendanceHistory<
          TRes
        > {
  _CopyWithStubImpl_Subscription_watchMeetingRoster_historyMeetingsPersons_attendanceHistory(
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
  }) => Variables_Subscription_watchMeetingEligibleCount._({
    r'meetingId': meetingId,
  });

  Variables_Subscription_watchMeetingEligibleCount._(this._$data);

  factory Variables_Subscription_watchMeetingEligibleCount.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$meetingId = data['meetingId'];
    result$data['meetingId'] = stringToUuid(l$meetingId);
    return Variables_Subscription_watchMeetingEligibleCount._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get meetingId => (_$data['meetingId'] as UuidValue);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$meetingId = meetingId;
    result$data['meetingId'] = uuidToString(l$meetingId);
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
    return true;
  }

  @override
  int get hashCode {
    final l$meetingId = meetingId;
    return Object.hashAll([l$meetingId]);
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

  TRes call({UuidValue? meetingId});
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

  TRes call({Object? meetingId = _undefined}) => _then(
    Variables_Subscription_watchMeetingEligibleCount._({
      ..._instance._$data,
      if (meetingId != _undefined && meetingId != null)
        'meetingId': (meetingId as UuidValue),
    }),
  );
}

class _CopyWithStubImpl_Variables_Subscription_watchMeetingEligibleCount<TRes>
    implements CopyWith_Variables_Subscription_watchMeetingEligibleCount<TRes> {
  _CopyWithStubImpl_Variables_Subscription_watchMeetingEligibleCount(this._res);

  TRes _res;

  call({UuidValue? meetingId}) => _res;
}

class Subscription_watchMeetingEligibleCount {
  Subscription_watchMeetingEligibleCount({required this.personsAggregate});

  factory Subscription_watchMeetingEligibleCount.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$personsAggregate = json['personsAggregate'];
    return Subscription_watchMeetingEligibleCount(
      personsAggregate:
          Subscription_watchMeetingEligibleCount_personsAggregate.fromJson(
            (l$personsAggregate as Map<String, dynamic>),
          ),
    );
  }

  final Subscription_watchMeetingEligibleCount_personsAggregate
  personsAggregate;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$personsAggregate = personsAggregate;
    _resultData['personsAggregate'] = l$personsAggregate.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$personsAggregate = personsAggregate;
    return Object.hashAll([l$personsAggregate]);
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
    final l$personsAggregate = personsAggregate;
    final lOther$personsAggregate = other.personsAggregate;
    if (l$personsAggregate != lOther$personsAggregate) {
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
    Subscription_watchMeetingEligibleCount_personsAggregate? personsAggregate,
  });
  CopyWith_Subscription_watchMeetingEligibleCount_personsAggregate<TRes>
  get personsAggregate;
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

  TRes call({Object? personsAggregate = _undefined}) => _then(
    Subscription_watchMeetingEligibleCount(
      personsAggregate:
          personsAggregate == _undefined || personsAggregate == null
          ? _instance.personsAggregate
          : (personsAggregate
                as Subscription_watchMeetingEligibleCount_personsAggregate),
    ),
  );

  CopyWith_Subscription_watchMeetingEligibleCount_personsAggregate<TRes>
  get personsAggregate {
    final local$personsAggregate = _instance.personsAggregate;
    return CopyWith_Subscription_watchMeetingEligibleCount_personsAggregate(
      local$personsAggregate,
      (e) => call(personsAggregate: e),
    );
  }
}

class _CopyWithStubImpl_Subscription_watchMeetingEligibleCount<TRes>
    implements CopyWith_Subscription_watchMeetingEligibleCount<TRes> {
  _CopyWithStubImpl_Subscription_watchMeetingEligibleCount(this._res);

  TRes _res;

  call({
    Subscription_watchMeetingEligibleCount_personsAggregate? personsAggregate,
  }) => _res;

  CopyWith_Subscription_watchMeetingEligibleCount_personsAggregate<TRes>
  get personsAggregate =>
      CopyWith_Subscription_watchMeetingEligibleCount_personsAggregate.stub(
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
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'personsAggregate'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'where'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'meetings'),
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

class Subscription_watchMeetingEligibleCount_personsAggregate {
  Subscription_watchMeetingEligibleCount_personsAggregate({
    this.aggregate,
    this.$__typename = 'PersonsAggregate',
  });

  factory Subscription_watchMeetingEligibleCount_personsAggregate.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$aggregate = json['aggregate'];
    final l$$__typename = json['__typename'];
    return Subscription_watchMeetingEligibleCount_personsAggregate(
      aggregate: l$aggregate == null
          ? null
          : Subscription_watchMeetingEligibleCount_personsAggregate_aggregate.fromJson(
              (l$aggregate as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Subscription_watchMeetingEligibleCount_personsAggregate_aggregate?
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
    if (other is! Subscription_watchMeetingEligibleCount_personsAggregate ||
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

extension UtilityExtension_Subscription_watchMeetingEligibleCount_personsAggregate
    on Subscription_watchMeetingEligibleCount_personsAggregate {
  CopyWith_Subscription_watchMeetingEligibleCount_personsAggregate<
    Subscription_watchMeetingEligibleCount_personsAggregate
  >
  get copyWith =>
      CopyWith_Subscription_watchMeetingEligibleCount_personsAggregate(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Subscription_watchMeetingEligibleCount_personsAggregate<
  TRes
> {
  factory CopyWith_Subscription_watchMeetingEligibleCount_personsAggregate(
    Subscription_watchMeetingEligibleCount_personsAggregate instance,
    TRes Function(Subscription_watchMeetingEligibleCount_personsAggregate) then,
  ) = _CopyWithImpl_Subscription_watchMeetingEligibleCount_personsAggregate;

  factory CopyWith_Subscription_watchMeetingEligibleCount_personsAggregate.stub(
    TRes res,
  ) = _CopyWithStubImpl_Subscription_watchMeetingEligibleCount_personsAggregate;

  TRes call({
    Subscription_watchMeetingEligibleCount_personsAggregate_aggregate?
    aggregate,
    String? $__typename,
  });
  CopyWith_Subscription_watchMeetingEligibleCount_personsAggregate_aggregate<
    TRes
  >
  get aggregate;
}

class _CopyWithImpl_Subscription_watchMeetingEligibleCount_personsAggregate<
  TRes
>
    implements
        CopyWith_Subscription_watchMeetingEligibleCount_personsAggregate<TRes> {
  _CopyWithImpl_Subscription_watchMeetingEligibleCount_personsAggregate(
    this._instance,
    this._then,
  );

  final Subscription_watchMeetingEligibleCount_personsAggregate _instance;

  final TRes Function(Subscription_watchMeetingEligibleCount_personsAggregate)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? aggregate = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Subscription_watchMeetingEligibleCount_personsAggregate(
      aggregate: aggregate == _undefined
          ? _instance.aggregate
          : (aggregate
                as Subscription_watchMeetingEligibleCount_personsAggregate_aggregate?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Subscription_watchMeetingEligibleCount_personsAggregate_aggregate<
    TRes
  >
  get aggregate {
    final local$aggregate = _instance.aggregate;
    return local$aggregate == null
        ? CopyWith_Subscription_watchMeetingEligibleCount_personsAggregate_aggregate.stub(
            _then(_instance),
          )
        : CopyWith_Subscription_watchMeetingEligibleCount_personsAggregate_aggregate(
            local$aggregate,
            (e) => call(aggregate: e),
          );
  }
}

class _CopyWithStubImpl_Subscription_watchMeetingEligibleCount_personsAggregate<
  TRes
>
    implements
        CopyWith_Subscription_watchMeetingEligibleCount_personsAggregate<TRes> {
  _CopyWithStubImpl_Subscription_watchMeetingEligibleCount_personsAggregate(
    this._res,
  );

  TRes _res;

  call({
    Subscription_watchMeetingEligibleCount_personsAggregate_aggregate?
    aggregate,
    String? $__typename,
  }) => _res;

  CopyWith_Subscription_watchMeetingEligibleCount_personsAggregate_aggregate<
    TRes
  >
  get aggregate =>
      CopyWith_Subscription_watchMeetingEligibleCount_personsAggregate_aggregate.stub(
        _res,
      );
}

class Subscription_watchMeetingEligibleCount_personsAggregate_aggregate {
  Subscription_watchMeetingEligibleCount_personsAggregate_aggregate({
    required this.count,
    this.$__typename = 'PersonsAggregateFields',
  });

  factory Subscription_watchMeetingEligibleCount_personsAggregate_aggregate.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$count = json['count'];
    final l$$__typename = json['__typename'];
    return Subscription_watchMeetingEligibleCount_personsAggregate_aggregate(
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
            is! Subscription_watchMeetingEligibleCount_personsAggregate_aggregate ||
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

extension UtilityExtension_Subscription_watchMeetingEligibleCount_personsAggregate_aggregate
    on Subscription_watchMeetingEligibleCount_personsAggregate_aggregate {
  CopyWith_Subscription_watchMeetingEligibleCount_personsAggregate_aggregate<
    Subscription_watchMeetingEligibleCount_personsAggregate_aggregate
  >
  get copyWith =>
      CopyWith_Subscription_watchMeetingEligibleCount_personsAggregate_aggregate(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Subscription_watchMeetingEligibleCount_personsAggregate_aggregate<
  TRes
> {
  factory CopyWith_Subscription_watchMeetingEligibleCount_personsAggregate_aggregate(
    Subscription_watchMeetingEligibleCount_personsAggregate_aggregate instance,
    TRes Function(
      Subscription_watchMeetingEligibleCount_personsAggregate_aggregate,
    )
    then,
  ) = _CopyWithImpl_Subscription_watchMeetingEligibleCount_personsAggregate_aggregate;

  factory CopyWith_Subscription_watchMeetingEligibleCount_personsAggregate_aggregate.stub(
    TRes res,
  ) = _CopyWithStubImpl_Subscription_watchMeetingEligibleCount_personsAggregate_aggregate;

  TRes call({int? count, String? $__typename});
}

class _CopyWithImpl_Subscription_watchMeetingEligibleCount_personsAggregate_aggregate<
  TRes
>
    implements
        CopyWith_Subscription_watchMeetingEligibleCount_personsAggregate_aggregate<
          TRes
        > {
  _CopyWithImpl_Subscription_watchMeetingEligibleCount_personsAggregate_aggregate(
    this._instance,
    this._then,
  );

  final Subscription_watchMeetingEligibleCount_personsAggregate_aggregate
  _instance;

  final TRes Function(
    Subscription_watchMeetingEligibleCount_personsAggregate_aggregate,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? count = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Subscription_watchMeetingEligibleCount_personsAggregate_aggregate(
          count: count == _undefined || count == null
              ? _instance.count
              : (count as int),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl_Subscription_watchMeetingEligibleCount_personsAggregate_aggregate<
  TRes
>
    implements
        CopyWith_Subscription_watchMeetingEligibleCount_personsAggregate_aggregate<
          TRes
        > {
  _CopyWithStubImpl_Subscription_watchMeetingEligibleCount_personsAggregate_aggregate(
    this._res,
  );

  TRes _res;

  call({int? count, String? $__typename}) => _res;
}
