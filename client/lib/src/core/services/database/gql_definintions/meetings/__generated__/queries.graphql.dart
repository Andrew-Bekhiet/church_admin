import '../../../../../graphql/__generated__/schema.graphql.dart';
import '../../gql/__generated__/fragments.graphql.dart';
import '../../metadata/study_years/__generated__/fragments.graphql.dart';
import 'fragments.graphql.dart';

import 'package:church_admin/src/core/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Variables_Query_meetings {
  factory Variables_Query_meetings({
    Input_MeetingFilterInput? filter,
    List<Input_MeetingSortInput?>? sort,
    int? first,
    String? after,
  }) => Variables_Query_meetings._({
    if (filter != null) r'filter': filter,
    if (sort != null) r'sort': sort,
    if (first != null) r'first': first,
    if (after != null) r'after': after,
  });

  Variables_Query_meetings._(this._$data);

  factory Variables_Query_meetings.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('filter')) {
      final l$filter = data['filter'];
      result$data['filter'] = l$filter == null
          ? null
          : Input_MeetingFilterInput.fromJson(
              (l$filter as Map<String, dynamic>),
            );
    }
    if (data.containsKey('sort')) {
      final l$sort = data['sort'];
      result$data['sort'] = (l$sort as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Input_MeetingSortInput.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    if (data.containsKey('first')) {
      final l$first = data['first'];
      result$data['first'] = (l$first as int?);
    }
    if (data.containsKey('after')) {
      final l$after = data['after'];
      result$data['after'] = (l$after as String?);
    }
    return Variables_Query_meetings._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_MeetingFilterInput? get filter =>
      (_$data['filter'] as Input_MeetingFilterInput?);

  List<Input_MeetingSortInput?>? get sort =>
      (_$data['sort'] as List<Input_MeetingSortInput?>?);

  int? get first => (_$data['first'] as int?);

  String? get after => (_$data['after'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('filter')) {
      final l$filter = filter;
      result$data['filter'] = l$filter?.toJson();
    }
    if (_$data.containsKey('sort')) {
      final l$sort = sort;
      result$data['sort'] = l$sort?.map((e) => e?.toJson()).toList();
    }
    if (_$data.containsKey('first')) {
      final l$first = first;
      result$data['first'] = l$first;
    }
    if (_$data.containsKey('after')) {
      final l$after = after;
      result$data['after'] = l$after;
    }
    return result$data;
  }

  CopyWith_Variables_Query_meetings<Variables_Query_meetings> get copyWith =>
      CopyWith_Variables_Query_meetings(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Query_meetings ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$filter = filter;
    final lOther$filter = other.filter;
    if (_$data.containsKey('filter') != other._$data.containsKey('filter')) {
      return false;
    }
    if (l$filter != lOther$filter) {
      return false;
    }
    final l$sort = sort;
    final lOther$sort = other.sort;
    if (_$data.containsKey('sort') != other._$data.containsKey('sort')) {
      return false;
    }
    if (l$sort != null && lOther$sort != null) {
      if (l$sort.length != lOther$sort.length) {
        return false;
      }
      for (int i = 0; i < l$sort.length; i++) {
        final l$sort$entry = l$sort[i];
        final lOther$sort$entry = lOther$sort[i];
        if (l$sort$entry != lOther$sort$entry) {
          return false;
        }
      }
    } else if (l$sort != lOther$sort) {
      return false;
    }
    final l$first = first;
    final lOther$first = other.first;
    if (_$data.containsKey('first') != other._$data.containsKey('first')) {
      return false;
    }
    if (l$first != lOther$first) {
      return false;
    }
    final l$after = after;
    final lOther$after = other.after;
    if (_$data.containsKey('after') != other._$data.containsKey('after')) {
      return false;
    }
    if (l$after != lOther$after) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$filter = filter;
    final l$sort = sort;
    final l$first = first;
    final l$after = after;
    return Object.hashAll([
      _$data.containsKey('filter') ? l$filter : const {},
      _$data.containsKey('sort')
          ? l$sort == null
                ? null
                : Object.hashAll(l$sort.map((v) => v))
          : const {},
      _$data.containsKey('first') ? l$first : const {},
      _$data.containsKey('after') ? l$after : const {},
    ]);
  }
}

abstract class CopyWith_Variables_Query_meetings<TRes> {
  factory CopyWith_Variables_Query_meetings(
    Variables_Query_meetings instance,
    TRes Function(Variables_Query_meetings) then,
  ) = _CopyWithImpl_Variables_Query_meetings;

  factory CopyWith_Variables_Query_meetings.stub(TRes res) =
      _CopyWithStubImpl_Variables_Query_meetings;

  TRes call({
    Input_MeetingFilterInput? filter,
    List<Input_MeetingSortInput?>? sort,
    int? first,
    String? after,
  });
}

class _CopyWithImpl_Variables_Query_meetings<TRes>
    implements CopyWith_Variables_Query_meetings<TRes> {
  _CopyWithImpl_Variables_Query_meetings(this._instance, this._then);

  final Variables_Query_meetings _instance;

  final TRes Function(Variables_Query_meetings) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? filter = _undefined,
    Object? sort = _undefined,
    Object? first = _undefined,
    Object? after = _undefined,
  }) => _then(
    Variables_Query_meetings._({
      ..._instance._$data,
      if (filter != _undefined) 'filter': (filter as Input_MeetingFilterInput?),
      if (sort != _undefined) 'sort': (sort as List<Input_MeetingSortInput?>?),
      if (first != _undefined) 'first': (first as int?),
      if (after != _undefined) 'after': (after as String?),
    }),
  );
}

class _CopyWithStubImpl_Variables_Query_meetings<TRes>
    implements CopyWith_Variables_Query_meetings<TRes> {
  _CopyWithStubImpl_Variables_Query_meetings(this._res);

  TRes _res;

  call({
    Input_MeetingFilterInput? filter,
    List<Input_MeetingSortInput?>? sort,
    int? first,
    String? after,
  }) => _res;
}

class Query_meetings {
  Query_meetings({this.meetings, this.$__typename = 'RootQueryType'});

  factory Query_meetings.fromJson(Map<String, dynamic> json) {
    final l$meetings = json['meetings'];
    final l$$__typename = json['__typename'];
    return Query_meetings(
      meetings: l$meetings == null
          ? null
          : Query_meetings_meetings.fromJson(
              (l$meetings as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query_meetings_meetings? meetings;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$meetings = meetings;
    _resultData['meetings'] = l$meetings?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$meetings = meetings;
    final l$$__typename = $__typename;
    return Object.hashAll([l$meetings, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_meetings || runtimeType != other.runtimeType) {
      return false;
    }
    final l$meetings = meetings;
    final lOther$meetings = other.meetings;
    if (l$meetings != lOther$meetings) {
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

extension UtilityExtension_Query_meetings on Query_meetings {
  CopyWith_Query_meetings<Query_meetings> get copyWith =>
      CopyWith_Query_meetings(this, (i) => i);
}

abstract class CopyWith_Query_meetings<TRes> {
  factory CopyWith_Query_meetings(
    Query_meetings instance,
    TRes Function(Query_meetings) then,
  ) = _CopyWithImpl_Query_meetings;

  factory CopyWith_Query_meetings.stub(TRes res) =
      _CopyWithStubImpl_Query_meetings;

  TRes call({Query_meetings_meetings? meetings, String? $__typename});
  CopyWith_Query_meetings_meetings<TRes> get meetings;
}

class _CopyWithImpl_Query_meetings<TRes>
    implements CopyWith_Query_meetings<TRes> {
  _CopyWithImpl_Query_meetings(this._instance, this._then);

  final Query_meetings _instance;

  final TRes Function(Query_meetings) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? meetings = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query_meetings(
      meetings: meetings == _undefined
          ? _instance.meetings
          : (meetings as Query_meetings_meetings?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Query_meetings_meetings<TRes> get meetings {
    final local$meetings = _instance.meetings;
    return local$meetings == null
        ? CopyWith_Query_meetings_meetings.stub(_then(_instance))
        : CopyWith_Query_meetings_meetings(
            local$meetings,
            (e) => call(meetings: e),
          );
  }
}

class _CopyWithStubImpl_Query_meetings<TRes>
    implements CopyWith_Query_meetings<TRes> {
  _CopyWithStubImpl_Query_meetings(this._res);

  TRes _res;

  call({Query_meetings_meetings? meetings, String? $__typename}) => _res;

  CopyWith_Query_meetings_meetings<TRes> get meetings =>
      CopyWith_Query_meetings_meetings.stub(_res);
}

const documentNodeQuerymeetings = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'meetings'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'filter')),
          type: NamedTypeNode(
            name: NameNode(value: 'MeetingFilterInput'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'sort')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'MeetingSortInput'),
              isNonNull: false,
            ),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'first')),
          type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: false),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'after')),
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'meetings'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'filter'),
                value: VariableNode(name: NameNode(value: 'filter')),
              ),
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: VariableNode(name: NameNode(value: 'sort')),
              ),
              ArgumentNode(
                name: NameNode(value: 'first'),
                value: VariableNode(name: NameNode(value: 'first')),
              ),
              ArgumentNode(
                name: NameNode(value: 'after'),
                value: VariableNode(name: NameNode(value: 'after')),
              ),
            ],
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
                  name: NameNode(value: 'endKeyset'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'results'),
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
    fragmentDefinitionMeeting,
    fragmentDefinitionMeetingService,
    fragmentDefinitionStudyYear,
    fragmentDefinitionMeetingGroup,
  ],
);

class Query_meetings_meetings {
  Query_meetings_meetings({
    this.count,
    this.endKeyset,
    this.results,
    this.$__typename = 'KeysetPageOfMeeting',
  });

  factory Query_meetings_meetings.fromJson(Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$endKeyset = json['endKeyset'];
    final l$results = json['results'];
    final l$$__typename = json['__typename'];
    return Query_meetings_meetings(
      count: (l$count as int?),
      endKeyset: (l$endKeyset as String?),
      results: (l$results as List<dynamic>?)
          ?.map((e) => Fragment_Meeting.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int? count;

  final String? endKeyset;

  final List<Fragment_Meeting>? results;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$count = count;
    _resultData['count'] = l$count;
    final l$endKeyset = endKeyset;
    _resultData['endKeyset'] = l$endKeyset;
    final l$results = results;
    _resultData['results'] = l$results?.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$count = count;
    final l$endKeyset = endKeyset;
    final l$results = results;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$count,
      l$endKeyset,
      l$results == null ? null : Object.hashAll(l$results.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_meetings_meetings || runtimeType != other.runtimeType) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
      return false;
    }
    final l$endKeyset = endKeyset;
    final lOther$endKeyset = other.endKeyset;
    if (l$endKeyset != lOther$endKeyset) {
      return false;
    }
    final l$results = results;
    final lOther$results = other.results;
    if (l$results != null && lOther$results != null) {
      if (l$results.length != lOther$results.length) {
        return false;
      }
      for (int i = 0; i < l$results.length; i++) {
        final l$results$entry = l$results[i];
        final lOther$results$entry = lOther$results[i];
        if (l$results$entry != lOther$results$entry) {
          return false;
        }
      }
    } else if (l$results != lOther$results) {
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

extension UtilityExtension_Query_meetings_meetings on Query_meetings_meetings {
  CopyWith_Query_meetings_meetings<Query_meetings_meetings> get copyWith =>
      CopyWith_Query_meetings_meetings(this, (i) => i);
}

abstract class CopyWith_Query_meetings_meetings<TRes> {
  factory CopyWith_Query_meetings_meetings(
    Query_meetings_meetings instance,
    TRes Function(Query_meetings_meetings) then,
  ) = _CopyWithImpl_Query_meetings_meetings;

  factory CopyWith_Query_meetings_meetings.stub(TRes res) =
      _CopyWithStubImpl_Query_meetings_meetings;

  TRes call({
    int? count,
    String? endKeyset,
    List<Fragment_Meeting>? results,
    String? $__typename,
  });
  TRes results(
    Iterable<Fragment_Meeting>? Function(
      Iterable<CopyWith_Fragment_Meeting<Fragment_Meeting>>?,
    )
    _fn,
  );
}

class _CopyWithImpl_Query_meetings_meetings<TRes>
    implements CopyWith_Query_meetings_meetings<TRes> {
  _CopyWithImpl_Query_meetings_meetings(this._instance, this._then);

  final Query_meetings_meetings _instance;

  final TRes Function(Query_meetings_meetings) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? endKeyset = _undefined,
    Object? results = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query_meetings_meetings(
      count: count == _undefined ? _instance.count : (count as int?),
      endKeyset: endKeyset == _undefined
          ? _instance.endKeyset
          : (endKeyset as String?),
      results: results == _undefined
          ? _instance.results
          : (results as List<Fragment_Meeting>?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes results(
    Iterable<Fragment_Meeting>? Function(
      Iterable<CopyWith_Fragment_Meeting<Fragment_Meeting>>?,
    )
    _fn,
  ) => call(
    results: _fn(
      _instance.results?.map((e) => CopyWith_Fragment_Meeting(e, (i) => i)),
    )?.toList(),
  );
}

class _CopyWithStubImpl_Query_meetings_meetings<TRes>
    implements CopyWith_Query_meetings_meetings<TRes> {
  _CopyWithStubImpl_Query_meetings_meetings(this._res);

  TRes _res;

  call({
    int? count,
    String? endKeyset,
    List<Fragment_Meeting>? results,
    String? $__typename,
  }) => _res;

  results(_fn) => _res;
}

class Variables_Query_meeting {
  factory Variables_Query_meeting({required String id}) =>
      Variables_Query_meeting._({r'id': id});

  Variables_Query_meeting._(this._$data);

  factory Variables_Query_meeting.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables_Query_meeting._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith_Variables_Query_meeting<Variables_Query_meeting> get copyWith =>
      CopyWith_Variables_Query_meeting(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Query_meeting || runtimeType != other.runtimeType) {
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

abstract class CopyWith_Variables_Query_meeting<TRes> {
  factory CopyWith_Variables_Query_meeting(
    Variables_Query_meeting instance,
    TRes Function(Variables_Query_meeting) then,
  ) = _CopyWithImpl_Variables_Query_meeting;

  factory CopyWith_Variables_Query_meeting.stub(TRes res) =
      _CopyWithStubImpl_Variables_Query_meeting;

  TRes call({String? id});
}

class _CopyWithImpl_Variables_Query_meeting<TRes>
    implements CopyWith_Variables_Query_meeting<TRes> {
  _CopyWithImpl_Variables_Query_meeting(this._instance, this._then);

  final Variables_Query_meeting _instance;

  final TRes Function(Variables_Query_meeting) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(
    Variables_Query_meeting._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as String),
    }),
  );
}

class _CopyWithStubImpl_Variables_Query_meeting<TRes>
    implements CopyWith_Variables_Query_meeting<TRes> {
  _CopyWithStubImpl_Variables_Query_meeting(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Query_meeting {
  Query_meeting({this.meeting, this.$__typename = 'RootQueryType'});

  factory Query_meeting.fromJson(Map<String, dynamic> json) {
    final l$meeting = json['meeting'];
    final l$$__typename = json['__typename'];
    return Query_meeting(
      meeting: l$meeting == null
          ? null
          : Fragment_Meeting.fromJson((l$meeting as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_Meeting? meeting;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$meeting = meeting;
    _resultData['meeting'] = l$meeting?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$meeting = meeting;
    final l$$__typename = $__typename;
    return Object.hashAll([l$meeting, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_meeting || runtimeType != other.runtimeType) {
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

extension UtilityExtension_Query_meeting on Query_meeting {
  CopyWith_Query_meeting<Query_meeting> get copyWith =>
      CopyWith_Query_meeting(this, (i) => i);
}

abstract class CopyWith_Query_meeting<TRes> {
  factory CopyWith_Query_meeting(
    Query_meeting instance,
    TRes Function(Query_meeting) then,
  ) = _CopyWithImpl_Query_meeting;

  factory CopyWith_Query_meeting.stub(TRes res) =
      _CopyWithStubImpl_Query_meeting;

  TRes call({Fragment_Meeting? meeting, String? $__typename});
  CopyWith_Fragment_Meeting<TRes> get meeting;
}

class _CopyWithImpl_Query_meeting<TRes>
    implements CopyWith_Query_meeting<TRes> {
  _CopyWithImpl_Query_meeting(this._instance, this._then);

  final Query_meeting _instance;

  final TRes Function(Query_meeting) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? meeting = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query_meeting(
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

class _CopyWithStubImpl_Query_meeting<TRes>
    implements CopyWith_Query_meeting<TRes> {
  _CopyWithStubImpl_Query_meeting(this._res);

  TRes _res;

  call({Fragment_Meeting? meeting, String? $__typename}) => _res;

  CopyWith_Fragment_Meeting<TRes> get meeting =>
      CopyWith_Fragment_Meeting.stub(_res);
}

const documentNodeQuerymeeting = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'meeting'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'id')),
          type: NamedTypeNode(name: NameNode(value: 'ID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'meeting'),
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
    fragmentDefinitionMeeting,
    fragmentDefinitionMeetingService,
    fragmentDefinitionStudyYear,
    fragmentDefinitionMeetingGroup,
  ],
);

class Variables_Query_attendanceRecords {
  factory Variables_Query_attendanceRecords({
    Input_AttendanceRecordFilterInput? filter,
    List<Input_AttendanceRecordSortInput?>? sort,
    int? first,
    String? after,
  }) => Variables_Query_attendanceRecords._({
    if (filter != null) r'filter': filter,
    if (sort != null) r'sort': sort,
    if (first != null) r'first': first,
    if (after != null) r'after': after,
  });

  Variables_Query_attendanceRecords._(this._$data);

  factory Variables_Query_attendanceRecords.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('filter')) {
      final l$filter = data['filter'];
      result$data['filter'] = l$filter == null
          ? null
          : Input_AttendanceRecordFilterInput.fromJson(
              (l$filter as Map<String, dynamic>),
            );
    }
    if (data.containsKey('sort')) {
      final l$sort = data['sort'];
      result$data['sort'] = (l$sort as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Input_AttendanceRecordSortInput.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList();
    }
    if (data.containsKey('first')) {
      final l$first = data['first'];
      result$data['first'] = (l$first as int?);
    }
    if (data.containsKey('after')) {
      final l$after = data['after'];
      result$data['after'] = (l$after as String?);
    }
    return Variables_Query_attendanceRecords._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_AttendanceRecordFilterInput? get filter =>
      (_$data['filter'] as Input_AttendanceRecordFilterInput?);

  List<Input_AttendanceRecordSortInput?>? get sort =>
      (_$data['sort'] as List<Input_AttendanceRecordSortInput?>?);

  int? get first => (_$data['first'] as int?);

  String? get after => (_$data['after'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('filter')) {
      final l$filter = filter;
      result$data['filter'] = l$filter?.toJson();
    }
    if (_$data.containsKey('sort')) {
      final l$sort = sort;
      result$data['sort'] = l$sort?.map((e) => e?.toJson()).toList();
    }
    if (_$data.containsKey('first')) {
      final l$first = first;
      result$data['first'] = l$first;
    }
    if (_$data.containsKey('after')) {
      final l$after = after;
      result$data['after'] = l$after;
    }
    return result$data;
  }

  CopyWith_Variables_Query_attendanceRecords<Variables_Query_attendanceRecords>
  get copyWith => CopyWith_Variables_Query_attendanceRecords(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Query_attendanceRecords ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$filter = filter;
    final lOther$filter = other.filter;
    if (_$data.containsKey('filter') != other._$data.containsKey('filter')) {
      return false;
    }
    if (l$filter != lOther$filter) {
      return false;
    }
    final l$sort = sort;
    final lOther$sort = other.sort;
    if (_$data.containsKey('sort') != other._$data.containsKey('sort')) {
      return false;
    }
    if (l$sort != null && lOther$sort != null) {
      if (l$sort.length != lOther$sort.length) {
        return false;
      }
      for (int i = 0; i < l$sort.length; i++) {
        final l$sort$entry = l$sort[i];
        final lOther$sort$entry = lOther$sort[i];
        if (l$sort$entry != lOther$sort$entry) {
          return false;
        }
      }
    } else if (l$sort != lOther$sort) {
      return false;
    }
    final l$first = first;
    final lOther$first = other.first;
    if (_$data.containsKey('first') != other._$data.containsKey('first')) {
      return false;
    }
    if (l$first != lOther$first) {
      return false;
    }
    final l$after = after;
    final lOther$after = other.after;
    if (_$data.containsKey('after') != other._$data.containsKey('after')) {
      return false;
    }
    if (l$after != lOther$after) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$filter = filter;
    final l$sort = sort;
    final l$first = first;
    final l$after = after;
    return Object.hashAll([
      _$data.containsKey('filter') ? l$filter : const {},
      _$data.containsKey('sort')
          ? l$sort == null
                ? null
                : Object.hashAll(l$sort.map((v) => v))
          : const {},
      _$data.containsKey('first') ? l$first : const {},
      _$data.containsKey('after') ? l$after : const {},
    ]);
  }
}

abstract class CopyWith_Variables_Query_attendanceRecords<TRes> {
  factory CopyWith_Variables_Query_attendanceRecords(
    Variables_Query_attendanceRecords instance,
    TRes Function(Variables_Query_attendanceRecords) then,
  ) = _CopyWithImpl_Variables_Query_attendanceRecords;

  factory CopyWith_Variables_Query_attendanceRecords.stub(TRes res) =
      _CopyWithStubImpl_Variables_Query_attendanceRecords;

  TRes call({
    Input_AttendanceRecordFilterInput? filter,
    List<Input_AttendanceRecordSortInput?>? sort,
    int? first,
    String? after,
  });
}

class _CopyWithImpl_Variables_Query_attendanceRecords<TRes>
    implements CopyWith_Variables_Query_attendanceRecords<TRes> {
  _CopyWithImpl_Variables_Query_attendanceRecords(this._instance, this._then);

  final Variables_Query_attendanceRecords _instance;

  final TRes Function(Variables_Query_attendanceRecords) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? filter = _undefined,
    Object? sort = _undefined,
    Object? first = _undefined,
    Object? after = _undefined,
  }) => _then(
    Variables_Query_attendanceRecords._({
      ..._instance._$data,
      if (filter != _undefined)
        'filter': (filter as Input_AttendanceRecordFilterInput?),
      if (sort != _undefined)
        'sort': (sort as List<Input_AttendanceRecordSortInput?>?),
      if (first != _undefined) 'first': (first as int?),
      if (after != _undefined) 'after': (after as String?),
    }),
  );
}

class _CopyWithStubImpl_Variables_Query_attendanceRecords<TRes>
    implements CopyWith_Variables_Query_attendanceRecords<TRes> {
  _CopyWithStubImpl_Variables_Query_attendanceRecords(this._res);

  TRes _res;

  call({
    Input_AttendanceRecordFilterInput? filter,
    List<Input_AttendanceRecordSortInput?>? sort,
    int? first,
    String? after,
  }) => _res;
}

class Query_attendanceRecords {
  Query_attendanceRecords({
    this.attendanceRecords,
    this.$__typename = 'RootQueryType',
  });

  factory Query_attendanceRecords.fromJson(Map<String, dynamic> json) {
    final l$attendanceRecords = json['attendanceRecords'];
    final l$$__typename = json['__typename'];
    return Query_attendanceRecords(
      attendanceRecords: l$attendanceRecords == null
          ? null
          : Query_attendanceRecords_attendanceRecords.fromJson(
              (l$attendanceRecords as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query_attendanceRecords_attendanceRecords? attendanceRecords;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$attendanceRecords = attendanceRecords;
    _resultData['attendanceRecords'] = l$attendanceRecords?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$attendanceRecords = attendanceRecords;
    final l$$__typename = $__typename;
    return Object.hashAll([l$attendanceRecords, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_attendanceRecords || runtimeType != other.runtimeType) {
      return false;
    }
    final l$attendanceRecords = attendanceRecords;
    final lOther$attendanceRecords = other.attendanceRecords;
    if (l$attendanceRecords != lOther$attendanceRecords) {
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

extension UtilityExtension_Query_attendanceRecords on Query_attendanceRecords {
  CopyWith_Query_attendanceRecords<Query_attendanceRecords> get copyWith =>
      CopyWith_Query_attendanceRecords(this, (i) => i);
}

abstract class CopyWith_Query_attendanceRecords<TRes> {
  factory CopyWith_Query_attendanceRecords(
    Query_attendanceRecords instance,
    TRes Function(Query_attendanceRecords) then,
  ) = _CopyWithImpl_Query_attendanceRecords;

  factory CopyWith_Query_attendanceRecords.stub(TRes res) =
      _CopyWithStubImpl_Query_attendanceRecords;

  TRes call({
    Query_attendanceRecords_attendanceRecords? attendanceRecords,
    String? $__typename,
  });
  CopyWith_Query_attendanceRecords_attendanceRecords<TRes>
  get attendanceRecords;
}

class _CopyWithImpl_Query_attendanceRecords<TRes>
    implements CopyWith_Query_attendanceRecords<TRes> {
  _CopyWithImpl_Query_attendanceRecords(this._instance, this._then);

  final Query_attendanceRecords _instance;

  final TRes Function(Query_attendanceRecords) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? attendanceRecords = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query_attendanceRecords(
      attendanceRecords: attendanceRecords == _undefined
          ? _instance.attendanceRecords
          : (attendanceRecords as Query_attendanceRecords_attendanceRecords?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Query_attendanceRecords_attendanceRecords<TRes>
  get attendanceRecords {
    final local$attendanceRecords = _instance.attendanceRecords;
    return local$attendanceRecords == null
        ? CopyWith_Query_attendanceRecords_attendanceRecords.stub(
            _then(_instance),
          )
        : CopyWith_Query_attendanceRecords_attendanceRecords(
            local$attendanceRecords,
            (e) => call(attendanceRecords: e),
          );
  }
}

class _CopyWithStubImpl_Query_attendanceRecords<TRes>
    implements CopyWith_Query_attendanceRecords<TRes> {
  _CopyWithStubImpl_Query_attendanceRecords(this._res);

  TRes _res;

  call({
    Query_attendanceRecords_attendanceRecords? attendanceRecords,
    String? $__typename,
  }) => _res;

  CopyWith_Query_attendanceRecords_attendanceRecords<TRes>
  get attendanceRecords =>
      CopyWith_Query_attendanceRecords_attendanceRecords.stub(_res);
}

const documentNodeQueryattendanceRecords = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'attendanceRecords'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'filter')),
          type: NamedTypeNode(
            name: NameNode(value: 'AttendanceRecordFilterInput'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'sort')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'AttendanceRecordSortInput'),
              isNonNull: false,
            ),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'first')),
          type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: false),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'after')),
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'attendanceRecords'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'filter'),
                value: VariableNode(name: NameNode(value: 'filter')),
              ),
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: VariableNode(name: NameNode(value: 'sort')),
              ),
              ArgumentNode(
                name: NameNode(value: 'first'),
                value: VariableNode(name: NameNode(value: 'first')),
              ),
              ArgumentNode(
                name: NameNode(value: 'after'),
                value: VariableNode(name: NameNode(value: 'after')),
              ),
            ],
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
                  name: NameNode(value: 'endKeyset'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'results'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FragmentSpreadNode(
                        name: NameNode(value: 'AttendanceRecord'),
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
    fragmentDefinitionAttendanceRecord,
    fragmentDefinitionUser,
  ],
);

class Query_attendanceRecords_attendanceRecords {
  Query_attendanceRecords_attendanceRecords({
    this.count,
    this.endKeyset,
    this.results,
    this.$__typename = 'KeysetPageOfAttendanceRecord',
  });

  factory Query_attendanceRecords_attendanceRecords.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$count = json['count'];
    final l$endKeyset = json['endKeyset'];
    final l$results = json['results'];
    final l$$__typename = json['__typename'];
    return Query_attendanceRecords_attendanceRecords(
      count: (l$count as int?),
      endKeyset: (l$endKeyset as String?),
      results: (l$results as List<dynamic>?)
          ?.map(
            (e) =>
                Fragment_AttendanceRecord.fromJson((e as Map<String, dynamic>)),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int? count;

  final String? endKeyset;

  final List<Fragment_AttendanceRecord>? results;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$count = count;
    _resultData['count'] = l$count;
    final l$endKeyset = endKeyset;
    _resultData['endKeyset'] = l$endKeyset;
    final l$results = results;
    _resultData['results'] = l$results?.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$count = count;
    final l$endKeyset = endKeyset;
    final l$results = results;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$count,
      l$endKeyset,
      l$results == null ? null : Object.hashAll(l$results.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_attendanceRecords_attendanceRecords ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
      return false;
    }
    final l$endKeyset = endKeyset;
    final lOther$endKeyset = other.endKeyset;
    if (l$endKeyset != lOther$endKeyset) {
      return false;
    }
    final l$results = results;
    final lOther$results = other.results;
    if (l$results != null && lOther$results != null) {
      if (l$results.length != lOther$results.length) {
        return false;
      }
      for (int i = 0; i < l$results.length; i++) {
        final l$results$entry = l$results[i];
        final lOther$results$entry = lOther$results[i];
        if (l$results$entry != lOther$results$entry) {
          return false;
        }
      }
    } else if (l$results != lOther$results) {
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

extension UtilityExtension_Query_attendanceRecords_attendanceRecords
    on Query_attendanceRecords_attendanceRecords {
  CopyWith_Query_attendanceRecords_attendanceRecords<
    Query_attendanceRecords_attendanceRecords
  >
  get copyWith =>
      CopyWith_Query_attendanceRecords_attendanceRecords(this, (i) => i);
}

abstract class CopyWith_Query_attendanceRecords_attendanceRecords<TRes> {
  factory CopyWith_Query_attendanceRecords_attendanceRecords(
    Query_attendanceRecords_attendanceRecords instance,
    TRes Function(Query_attendanceRecords_attendanceRecords) then,
  ) = _CopyWithImpl_Query_attendanceRecords_attendanceRecords;

  factory CopyWith_Query_attendanceRecords_attendanceRecords.stub(TRes res) =
      _CopyWithStubImpl_Query_attendanceRecords_attendanceRecords;

  TRes call({
    int? count,
    String? endKeyset,
    List<Fragment_AttendanceRecord>? results,
    String? $__typename,
  });
  TRes results(
    Iterable<Fragment_AttendanceRecord>? Function(
      Iterable<CopyWith_Fragment_AttendanceRecord<Fragment_AttendanceRecord>>?,
    )
    _fn,
  );
}

class _CopyWithImpl_Query_attendanceRecords_attendanceRecords<TRes>
    implements CopyWith_Query_attendanceRecords_attendanceRecords<TRes> {
  _CopyWithImpl_Query_attendanceRecords_attendanceRecords(
    this._instance,
    this._then,
  );

  final Query_attendanceRecords_attendanceRecords _instance;

  final TRes Function(Query_attendanceRecords_attendanceRecords) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? endKeyset = _undefined,
    Object? results = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query_attendanceRecords_attendanceRecords(
      count: count == _undefined ? _instance.count : (count as int?),
      endKeyset: endKeyset == _undefined
          ? _instance.endKeyset
          : (endKeyset as String?),
      results: results == _undefined
          ? _instance.results
          : (results as List<Fragment_AttendanceRecord>?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes results(
    Iterable<Fragment_AttendanceRecord>? Function(
      Iterable<CopyWith_Fragment_AttendanceRecord<Fragment_AttendanceRecord>>?,
    )
    _fn,
  ) => call(
    results: _fn(
      _instance.results?.map(
        (e) => CopyWith_Fragment_AttendanceRecord(e, (i) => i),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl_Query_attendanceRecords_attendanceRecords<TRes>
    implements CopyWith_Query_attendanceRecords_attendanceRecords<TRes> {
  _CopyWithStubImpl_Query_attendanceRecords_attendanceRecords(this._res);

  TRes _res;

  call({
    int? count,
    String? endKeyset,
    List<Fragment_AttendanceRecord>? results,
    String? $__typename,
  }) => _res;

  results(_fn) => _res;
}

class Variables_Query_rosterEntries {
  factory Variables_Query_rosterEntries({
    Input_RosterEntryFilterInput? filter,
    List<Input_RosterEntrySortInput?>? sort,
    int? first,
    String? after,
  }) => Variables_Query_rosterEntries._({
    if (filter != null) r'filter': filter,
    if (sort != null) r'sort': sort,
    if (first != null) r'first': first,
    if (after != null) r'after': after,
  });

  Variables_Query_rosterEntries._(this._$data);

  factory Variables_Query_rosterEntries.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('filter')) {
      final l$filter = data['filter'];
      result$data['filter'] = l$filter == null
          ? null
          : Input_RosterEntryFilterInput.fromJson(
              (l$filter as Map<String, dynamic>),
            );
    }
    if (data.containsKey('sort')) {
      final l$sort = data['sort'];
      result$data['sort'] = (l$sort as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Input_RosterEntrySortInput.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList();
    }
    if (data.containsKey('first')) {
      final l$first = data['first'];
      result$data['first'] = (l$first as int?);
    }
    if (data.containsKey('after')) {
      final l$after = data['after'];
      result$data['after'] = (l$after as String?);
    }
    return Variables_Query_rosterEntries._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_RosterEntryFilterInput? get filter =>
      (_$data['filter'] as Input_RosterEntryFilterInput?);

  List<Input_RosterEntrySortInput?>? get sort =>
      (_$data['sort'] as List<Input_RosterEntrySortInput?>?);

  int? get first => (_$data['first'] as int?);

  String? get after => (_$data['after'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('filter')) {
      final l$filter = filter;
      result$data['filter'] = l$filter?.toJson();
    }
    if (_$data.containsKey('sort')) {
      final l$sort = sort;
      result$data['sort'] = l$sort?.map((e) => e?.toJson()).toList();
    }
    if (_$data.containsKey('first')) {
      final l$first = first;
      result$data['first'] = l$first;
    }
    if (_$data.containsKey('after')) {
      final l$after = after;
      result$data['after'] = l$after;
    }
    return result$data;
  }

  CopyWith_Variables_Query_rosterEntries<Variables_Query_rosterEntries>
  get copyWith => CopyWith_Variables_Query_rosterEntries(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Query_rosterEntries ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$filter = filter;
    final lOther$filter = other.filter;
    if (_$data.containsKey('filter') != other._$data.containsKey('filter')) {
      return false;
    }
    if (l$filter != lOther$filter) {
      return false;
    }
    final l$sort = sort;
    final lOther$sort = other.sort;
    if (_$data.containsKey('sort') != other._$data.containsKey('sort')) {
      return false;
    }
    if (l$sort != null && lOther$sort != null) {
      if (l$sort.length != lOther$sort.length) {
        return false;
      }
      for (int i = 0; i < l$sort.length; i++) {
        final l$sort$entry = l$sort[i];
        final lOther$sort$entry = lOther$sort[i];
        if (l$sort$entry != lOther$sort$entry) {
          return false;
        }
      }
    } else if (l$sort != lOther$sort) {
      return false;
    }
    final l$first = first;
    final lOther$first = other.first;
    if (_$data.containsKey('first') != other._$data.containsKey('first')) {
      return false;
    }
    if (l$first != lOther$first) {
      return false;
    }
    final l$after = after;
    final lOther$after = other.after;
    if (_$data.containsKey('after') != other._$data.containsKey('after')) {
      return false;
    }
    if (l$after != lOther$after) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$filter = filter;
    final l$sort = sort;
    final l$first = first;
    final l$after = after;
    return Object.hashAll([
      _$data.containsKey('filter') ? l$filter : const {},
      _$data.containsKey('sort')
          ? l$sort == null
                ? null
                : Object.hashAll(l$sort.map((v) => v))
          : const {},
      _$data.containsKey('first') ? l$first : const {},
      _$data.containsKey('after') ? l$after : const {},
    ]);
  }
}

abstract class CopyWith_Variables_Query_rosterEntries<TRes> {
  factory CopyWith_Variables_Query_rosterEntries(
    Variables_Query_rosterEntries instance,
    TRes Function(Variables_Query_rosterEntries) then,
  ) = _CopyWithImpl_Variables_Query_rosterEntries;

  factory CopyWith_Variables_Query_rosterEntries.stub(TRes res) =
      _CopyWithStubImpl_Variables_Query_rosterEntries;

  TRes call({
    Input_RosterEntryFilterInput? filter,
    List<Input_RosterEntrySortInput?>? sort,
    int? first,
    String? after,
  });
}

class _CopyWithImpl_Variables_Query_rosterEntries<TRes>
    implements CopyWith_Variables_Query_rosterEntries<TRes> {
  _CopyWithImpl_Variables_Query_rosterEntries(this._instance, this._then);

  final Variables_Query_rosterEntries _instance;

  final TRes Function(Variables_Query_rosterEntries) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? filter = _undefined,
    Object? sort = _undefined,
    Object? first = _undefined,
    Object? after = _undefined,
  }) => _then(
    Variables_Query_rosterEntries._({
      ..._instance._$data,
      if (filter != _undefined)
        'filter': (filter as Input_RosterEntryFilterInput?),
      if (sort != _undefined)
        'sort': (sort as List<Input_RosterEntrySortInput?>?),
      if (first != _undefined) 'first': (first as int?),
      if (after != _undefined) 'after': (after as String?),
    }),
  );
}

class _CopyWithStubImpl_Variables_Query_rosterEntries<TRes>
    implements CopyWith_Variables_Query_rosterEntries<TRes> {
  _CopyWithStubImpl_Variables_Query_rosterEntries(this._res);

  TRes _res;

  call({
    Input_RosterEntryFilterInput? filter,
    List<Input_RosterEntrySortInput?>? sort,
    int? first,
    String? after,
  }) => _res;
}

class Query_rosterEntries {
  Query_rosterEntries({this.rosterEntries, this.$__typename = 'RootQueryType'});

  factory Query_rosterEntries.fromJson(Map<String, dynamic> json) {
    final l$rosterEntries = json['rosterEntries'];
    final l$$__typename = json['__typename'];
    return Query_rosterEntries(
      rosterEntries: l$rosterEntries == null
          ? null
          : Query_rosterEntries_rosterEntries.fromJson(
              (l$rosterEntries as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query_rosterEntries_rosterEntries? rosterEntries;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$rosterEntries = rosterEntries;
    _resultData['rosterEntries'] = l$rosterEntries?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$rosterEntries = rosterEntries;
    final l$$__typename = $__typename;
    return Object.hashAll([l$rosterEntries, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_rosterEntries || runtimeType != other.runtimeType) {
      return false;
    }
    final l$rosterEntries = rosterEntries;
    final lOther$rosterEntries = other.rosterEntries;
    if (l$rosterEntries != lOther$rosterEntries) {
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

extension UtilityExtension_Query_rosterEntries on Query_rosterEntries {
  CopyWith_Query_rosterEntries<Query_rosterEntries> get copyWith =>
      CopyWith_Query_rosterEntries(this, (i) => i);
}

abstract class CopyWith_Query_rosterEntries<TRes> {
  factory CopyWith_Query_rosterEntries(
    Query_rosterEntries instance,
    TRes Function(Query_rosterEntries) then,
  ) = _CopyWithImpl_Query_rosterEntries;

  factory CopyWith_Query_rosterEntries.stub(TRes res) =
      _CopyWithStubImpl_Query_rosterEntries;

  TRes call({
    Query_rosterEntries_rosterEntries? rosterEntries,
    String? $__typename,
  });
  CopyWith_Query_rosterEntries_rosterEntries<TRes> get rosterEntries;
}

class _CopyWithImpl_Query_rosterEntries<TRes>
    implements CopyWith_Query_rosterEntries<TRes> {
  _CopyWithImpl_Query_rosterEntries(this._instance, this._then);

  final Query_rosterEntries _instance;

  final TRes Function(Query_rosterEntries) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? rosterEntries = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query_rosterEntries(
      rosterEntries: rosterEntries == _undefined
          ? _instance.rosterEntries
          : (rosterEntries as Query_rosterEntries_rosterEntries?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Query_rosterEntries_rosterEntries<TRes> get rosterEntries {
    final local$rosterEntries = _instance.rosterEntries;
    return local$rosterEntries == null
        ? CopyWith_Query_rosterEntries_rosterEntries.stub(_then(_instance))
        : CopyWith_Query_rosterEntries_rosterEntries(
            local$rosterEntries,
            (e) => call(rosterEntries: e),
          );
  }
}

class _CopyWithStubImpl_Query_rosterEntries<TRes>
    implements CopyWith_Query_rosterEntries<TRes> {
  _CopyWithStubImpl_Query_rosterEntries(this._res);

  TRes _res;

  call({
    Query_rosterEntries_rosterEntries? rosterEntries,
    String? $__typename,
  }) => _res;

  CopyWith_Query_rosterEntries_rosterEntries<TRes> get rosterEntries =>
      CopyWith_Query_rosterEntries_rosterEntries.stub(_res);
}

const documentNodeQueryrosterEntries = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'rosterEntries'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'filter')),
          type: NamedTypeNode(
            name: NameNode(value: 'RosterEntryFilterInput'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'sort')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'RosterEntrySortInput'),
              isNonNull: false,
            ),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'first')),
          type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: false),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'after')),
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'rosterEntries'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'filter'),
                value: VariableNode(name: NameNode(value: 'filter')),
              ),
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: VariableNode(name: NameNode(value: 'sort')),
              ),
              ArgumentNode(
                name: NameNode(value: 'first'),
                value: VariableNode(name: NameNode(value: 'first')),
              ),
              ArgumentNode(
                name: NameNode(value: 'after'),
                value: VariableNode(name: NameNode(value: 'after')),
              ),
            ],
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
                  name: NameNode(value: 'endKeyset'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'results'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FragmentSpreadNode(
                        name: NameNode(value: 'RosterEntry'),
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
    fragmentDefinitionRosterEntry,
  ],
);

class Query_rosterEntries_rosterEntries {
  Query_rosterEntries_rosterEntries({
    this.count,
    this.endKeyset,
    this.results,
    this.$__typename = 'KeysetPageOfRosterEntry',
  });

  factory Query_rosterEntries_rosterEntries.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$count = json['count'];
    final l$endKeyset = json['endKeyset'];
    final l$results = json['results'];
    final l$$__typename = json['__typename'];
    return Query_rosterEntries_rosterEntries(
      count: (l$count as int?),
      endKeyset: (l$endKeyset as String?),
      results: (l$results as List<dynamic>?)
          ?.map(
            (e) => Fragment_RosterEntry.fromJson((e as Map<String, dynamic>)),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int? count;

  final String? endKeyset;

  final List<Fragment_RosterEntry>? results;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$count = count;
    _resultData['count'] = l$count;
    final l$endKeyset = endKeyset;
    _resultData['endKeyset'] = l$endKeyset;
    final l$results = results;
    _resultData['results'] = l$results?.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$count = count;
    final l$endKeyset = endKeyset;
    final l$results = results;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$count,
      l$endKeyset,
      l$results == null ? null : Object.hashAll(l$results.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_rosterEntries_rosterEntries ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
      return false;
    }
    final l$endKeyset = endKeyset;
    final lOther$endKeyset = other.endKeyset;
    if (l$endKeyset != lOther$endKeyset) {
      return false;
    }
    final l$results = results;
    final lOther$results = other.results;
    if (l$results != null && lOther$results != null) {
      if (l$results.length != lOther$results.length) {
        return false;
      }
      for (int i = 0; i < l$results.length; i++) {
        final l$results$entry = l$results[i];
        final lOther$results$entry = lOther$results[i];
        if (l$results$entry != lOther$results$entry) {
          return false;
        }
      }
    } else if (l$results != lOther$results) {
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

extension UtilityExtension_Query_rosterEntries_rosterEntries
    on Query_rosterEntries_rosterEntries {
  CopyWith_Query_rosterEntries_rosterEntries<Query_rosterEntries_rosterEntries>
  get copyWith => CopyWith_Query_rosterEntries_rosterEntries(this, (i) => i);
}

abstract class CopyWith_Query_rosterEntries_rosterEntries<TRes> {
  factory CopyWith_Query_rosterEntries_rosterEntries(
    Query_rosterEntries_rosterEntries instance,
    TRes Function(Query_rosterEntries_rosterEntries) then,
  ) = _CopyWithImpl_Query_rosterEntries_rosterEntries;

  factory CopyWith_Query_rosterEntries_rosterEntries.stub(TRes res) =
      _CopyWithStubImpl_Query_rosterEntries_rosterEntries;

  TRes call({
    int? count,
    String? endKeyset,
    List<Fragment_RosterEntry>? results,
    String? $__typename,
  });
  TRes results(
    Iterable<Fragment_RosterEntry>? Function(
      Iterable<CopyWith_Fragment_RosterEntry<Fragment_RosterEntry>>?,
    )
    _fn,
  );
}

class _CopyWithImpl_Query_rosterEntries_rosterEntries<TRes>
    implements CopyWith_Query_rosterEntries_rosterEntries<TRes> {
  _CopyWithImpl_Query_rosterEntries_rosterEntries(this._instance, this._then);

  final Query_rosterEntries_rosterEntries _instance;

  final TRes Function(Query_rosterEntries_rosterEntries) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? endKeyset = _undefined,
    Object? results = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query_rosterEntries_rosterEntries(
      count: count == _undefined ? _instance.count : (count as int?),
      endKeyset: endKeyset == _undefined
          ? _instance.endKeyset
          : (endKeyset as String?),
      results: results == _undefined
          ? _instance.results
          : (results as List<Fragment_RosterEntry>?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes results(
    Iterable<Fragment_RosterEntry>? Function(
      Iterable<CopyWith_Fragment_RosterEntry<Fragment_RosterEntry>>?,
    )
    _fn,
  ) => call(
    results: _fn(
      _instance.results?.map((e) => CopyWith_Fragment_RosterEntry(e, (i) => i)),
    )?.toList(),
  );
}

class _CopyWithStubImpl_Query_rosterEntries_rosterEntries<TRes>
    implements CopyWith_Query_rosterEntries_rosterEntries<TRes> {
  _CopyWithStubImpl_Query_rosterEntries_rosterEntries(this._res);

  TRes _res;

  call({
    int? count,
    String? endKeyset,
    List<Fragment_RosterEntry>? results,
    String? $__typename,
  }) => _res;

  results(_fn) => _res;
}

class Variables_Query_meetingsHeldDays {
  factory Variables_Query_meetingsHeldDays({
    Input_MeetingFilterInput? filter,
    required DateTime from,
    required DateTime to,
    int? first,
    String? after,
  }) => Variables_Query_meetingsHeldDays._({
    if (filter != null) r'filter': filter,
    r'from': from,
    r'to': to,
    if (first != null) r'first': first,
    if (after != null) r'after': after,
  });

  Variables_Query_meetingsHeldDays._(this._$data);

  factory Variables_Query_meetingsHeldDays.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('filter')) {
      final l$filter = data['filter'];
      result$data['filter'] = l$filter == null
          ? null
          : Input_MeetingFilterInput.fromJson(
              (l$filter as Map<String, dynamic>),
            );
    }
    final l$from = data['from'];
    result$data['from'] = dateFromString(l$from);
    final l$to = data['to'];
    result$data['to'] = dateFromString(l$to);
    if (data.containsKey('first')) {
      final l$first = data['first'];
      result$data['first'] = (l$first as int?);
    }
    if (data.containsKey('after')) {
      final l$after = data['after'];
      result$data['after'] = (l$after as String?);
    }
    return Variables_Query_meetingsHeldDays._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_MeetingFilterInput? get filter =>
      (_$data['filter'] as Input_MeetingFilterInput?);

  DateTime get from => (_$data['from'] as DateTime);

  DateTime get to => (_$data['to'] as DateTime);

  int? get first => (_$data['first'] as int?);

  String? get after => (_$data['after'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('filter')) {
      final l$filter = filter;
      result$data['filter'] = l$filter?.toJson();
    }
    final l$from = from;
    result$data['from'] = dateToString(l$from);
    final l$to = to;
    result$data['to'] = dateToString(l$to);
    if (_$data.containsKey('first')) {
      final l$first = first;
      result$data['first'] = l$first;
    }
    if (_$data.containsKey('after')) {
      final l$after = after;
      result$data['after'] = l$after;
    }
    return result$data;
  }

  CopyWith_Variables_Query_meetingsHeldDays<Variables_Query_meetingsHeldDays>
  get copyWith => CopyWith_Variables_Query_meetingsHeldDays(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Query_meetingsHeldDays ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$filter = filter;
    final lOther$filter = other.filter;
    if (_$data.containsKey('filter') != other._$data.containsKey('filter')) {
      return false;
    }
    if (l$filter != lOther$filter) {
      return false;
    }
    final l$from = from;
    final lOther$from = other.from;
    if (l$from != lOther$from) {
      return false;
    }
    final l$to = to;
    final lOther$to = other.to;
    if (l$to != lOther$to) {
      return false;
    }
    final l$first = first;
    final lOther$first = other.first;
    if (_$data.containsKey('first') != other._$data.containsKey('first')) {
      return false;
    }
    if (l$first != lOther$first) {
      return false;
    }
    final l$after = after;
    final lOther$after = other.after;
    if (_$data.containsKey('after') != other._$data.containsKey('after')) {
      return false;
    }
    if (l$after != lOther$after) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$filter = filter;
    final l$from = from;
    final l$to = to;
    final l$first = first;
    final l$after = after;
    return Object.hashAll([
      _$data.containsKey('filter') ? l$filter : const {},
      l$from,
      l$to,
      _$data.containsKey('first') ? l$first : const {},
      _$data.containsKey('after') ? l$after : const {},
    ]);
  }
}

abstract class CopyWith_Variables_Query_meetingsHeldDays<TRes> {
  factory CopyWith_Variables_Query_meetingsHeldDays(
    Variables_Query_meetingsHeldDays instance,
    TRes Function(Variables_Query_meetingsHeldDays) then,
  ) = _CopyWithImpl_Variables_Query_meetingsHeldDays;

  factory CopyWith_Variables_Query_meetingsHeldDays.stub(TRes res) =
      _CopyWithStubImpl_Variables_Query_meetingsHeldDays;

  TRes call({
    Input_MeetingFilterInput? filter,
    DateTime? from,
    DateTime? to,
    int? first,
    String? after,
  });
}

class _CopyWithImpl_Variables_Query_meetingsHeldDays<TRes>
    implements CopyWith_Variables_Query_meetingsHeldDays<TRes> {
  _CopyWithImpl_Variables_Query_meetingsHeldDays(this._instance, this._then);

  final Variables_Query_meetingsHeldDays _instance;

  final TRes Function(Variables_Query_meetingsHeldDays) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? filter = _undefined,
    Object? from = _undefined,
    Object? to = _undefined,
    Object? first = _undefined,
    Object? after = _undefined,
  }) => _then(
    Variables_Query_meetingsHeldDays._({
      ..._instance._$data,
      if (filter != _undefined) 'filter': (filter as Input_MeetingFilterInput?),
      if (from != _undefined && from != null) 'from': (from as DateTime),
      if (to != _undefined && to != null) 'to': (to as DateTime),
      if (first != _undefined) 'first': (first as int?),
      if (after != _undefined) 'after': (after as String?),
    }),
  );
}

class _CopyWithStubImpl_Variables_Query_meetingsHeldDays<TRes>
    implements CopyWith_Variables_Query_meetingsHeldDays<TRes> {
  _CopyWithStubImpl_Variables_Query_meetingsHeldDays(this._res);

  TRes _res;

  call({
    Input_MeetingFilterInput? filter,
    DateTime? from,
    DateTime? to,
    int? first,
    String? after,
  }) => _res;
}

class Query_meetingsHeldDays {
  Query_meetingsHeldDays({this.meetings, this.$__typename = 'RootQueryType'});

  factory Query_meetingsHeldDays.fromJson(Map<String, dynamic> json) {
    final l$meetings = json['meetings'];
    final l$$__typename = json['__typename'];
    return Query_meetingsHeldDays(
      meetings: l$meetings == null
          ? null
          : Query_meetingsHeldDays_meetings.fromJson(
              (l$meetings as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query_meetingsHeldDays_meetings? meetings;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$meetings = meetings;
    _resultData['meetings'] = l$meetings?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$meetings = meetings;
    final l$$__typename = $__typename;
    return Object.hashAll([l$meetings, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_meetingsHeldDays || runtimeType != other.runtimeType) {
      return false;
    }
    final l$meetings = meetings;
    final lOther$meetings = other.meetings;
    if (l$meetings != lOther$meetings) {
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

extension UtilityExtension_Query_meetingsHeldDays on Query_meetingsHeldDays {
  CopyWith_Query_meetingsHeldDays<Query_meetingsHeldDays> get copyWith =>
      CopyWith_Query_meetingsHeldDays(this, (i) => i);
}

abstract class CopyWith_Query_meetingsHeldDays<TRes> {
  factory CopyWith_Query_meetingsHeldDays(
    Query_meetingsHeldDays instance,
    TRes Function(Query_meetingsHeldDays) then,
  ) = _CopyWithImpl_Query_meetingsHeldDays;

  factory CopyWith_Query_meetingsHeldDays.stub(TRes res) =
      _CopyWithStubImpl_Query_meetingsHeldDays;

  TRes call({Query_meetingsHeldDays_meetings? meetings, String? $__typename});
  CopyWith_Query_meetingsHeldDays_meetings<TRes> get meetings;
}

class _CopyWithImpl_Query_meetingsHeldDays<TRes>
    implements CopyWith_Query_meetingsHeldDays<TRes> {
  _CopyWithImpl_Query_meetingsHeldDays(this._instance, this._then);

  final Query_meetingsHeldDays _instance;

  final TRes Function(Query_meetingsHeldDays) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? meetings = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query_meetingsHeldDays(
      meetings: meetings == _undefined
          ? _instance.meetings
          : (meetings as Query_meetingsHeldDays_meetings?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Query_meetingsHeldDays_meetings<TRes> get meetings {
    final local$meetings = _instance.meetings;
    return local$meetings == null
        ? CopyWith_Query_meetingsHeldDays_meetings.stub(_then(_instance))
        : CopyWith_Query_meetingsHeldDays_meetings(
            local$meetings,
            (e) => call(meetings: e),
          );
  }
}

class _CopyWithStubImpl_Query_meetingsHeldDays<TRes>
    implements CopyWith_Query_meetingsHeldDays<TRes> {
  _CopyWithStubImpl_Query_meetingsHeldDays(this._res);

  TRes _res;

  call({Query_meetingsHeldDays_meetings? meetings, String? $__typename}) =>
      _res;

  CopyWith_Query_meetingsHeldDays_meetings<TRes> get meetings =>
      CopyWith_Query_meetingsHeldDays_meetings.stub(_res);
}

const documentNodeQuerymeetingsHeldDays = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'meetingsHeldDays'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'filter')),
          type: NamedTypeNode(
            name: NameNode(value: 'MeetingFilterInput'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'from')),
          type: NamedTypeNode(name: NameNode(value: 'Date'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'to')),
          type: NamedTypeNode(name: NameNode(value: 'Date'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'first')),
          type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: false),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'after')),
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'meetings'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'filter'),
                value: VariableNode(name: NameNode(value: 'filter')),
              ),
              ArgumentNode(
                name: NameNode(value: 'first'),
                value: VariableNode(name: NameNode(value: 'first')),
              ),
              ArgumentNode(
                name: NameNode(value: 'after'),
                value: VariableNode(name: NameNode(value: 'after')),
              ),
            ],
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
                  name: NameNode(value: 'endKeyset'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'results'),
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
                        name: NameNode(value: 'heldDays'),
                        alias: null,
                        arguments: [
                          ArgumentNode(
                            name: NameNode(value: 'from'),
                            value: VariableNode(name: NameNode(value: 'from')),
                          ),
                          ArgumentNode(
                            name: NameNode(value: 'to'),
                            value: VariableNode(name: NameNode(value: 'to')),
                          ),
                        ],
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

class Query_meetingsHeldDays_meetings {
  Query_meetingsHeldDays_meetings({
    this.count,
    this.endKeyset,
    this.results,
    this.$__typename = 'KeysetPageOfMeeting',
  });

  factory Query_meetingsHeldDays_meetings.fromJson(Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$endKeyset = json['endKeyset'];
    final l$results = json['results'];
    final l$$__typename = json['__typename'];
    return Query_meetingsHeldDays_meetings(
      count: (l$count as int?),
      endKeyset: (l$endKeyset as String?),
      results: (l$results as List<dynamic>?)
          ?.map(
            (e) => Query_meetingsHeldDays_meetings_results.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int? count;

  final String? endKeyset;

  final List<Query_meetingsHeldDays_meetings_results>? results;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$count = count;
    _resultData['count'] = l$count;
    final l$endKeyset = endKeyset;
    _resultData['endKeyset'] = l$endKeyset;
    final l$results = results;
    _resultData['results'] = l$results?.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$count = count;
    final l$endKeyset = endKeyset;
    final l$results = results;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$count,
      l$endKeyset,
      l$results == null ? null : Object.hashAll(l$results.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_meetingsHeldDays_meetings ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
      return false;
    }
    final l$endKeyset = endKeyset;
    final lOther$endKeyset = other.endKeyset;
    if (l$endKeyset != lOther$endKeyset) {
      return false;
    }
    final l$results = results;
    final lOther$results = other.results;
    if (l$results != null && lOther$results != null) {
      if (l$results.length != lOther$results.length) {
        return false;
      }
      for (int i = 0; i < l$results.length; i++) {
        final l$results$entry = l$results[i];
        final lOther$results$entry = lOther$results[i];
        if (l$results$entry != lOther$results$entry) {
          return false;
        }
      }
    } else if (l$results != lOther$results) {
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

extension UtilityExtension_Query_meetingsHeldDays_meetings
    on Query_meetingsHeldDays_meetings {
  CopyWith_Query_meetingsHeldDays_meetings<Query_meetingsHeldDays_meetings>
  get copyWith => CopyWith_Query_meetingsHeldDays_meetings(this, (i) => i);
}

abstract class CopyWith_Query_meetingsHeldDays_meetings<TRes> {
  factory CopyWith_Query_meetingsHeldDays_meetings(
    Query_meetingsHeldDays_meetings instance,
    TRes Function(Query_meetingsHeldDays_meetings) then,
  ) = _CopyWithImpl_Query_meetingsHeldDays_meetings;

  factory CopyWith_Query_meetingsHeldDays_meetings.stub(TRes res) =
      _CopyWithStubImpl_Query_meetingsHeldDays_meetings;

  TRes call({
    int? count,
    String? endKeyset,
    List<Query_meetingsHeldDays_meetings_results>? results,
    String? $__typename,
  });
  TRes results(
    Iterable<Query_meetingsHeldDays_meetings_results>? Function(
      Iterable<
        CopyWith_Query_meetingsHeldDays_meetings_results<
          Query_meetingsHeldDays_meetings_results
        >
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl_Query_meetingsHeldDays_meetings<TRes>
    implements CopyWith_Query_meetingsHeldDays_meetings<TRes> {
  _CopyWithImpl_Query_meetingsHeldDays_meetings(this._instance, this._then);

  final Query_meetingsHeldDays_meetings _instance;

  final TRes Function(Query_meetingsHeldDays_meetings) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? endKeyset = _undefined,
    Object? results = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query_meetingsHeldDays_meetings(
      count: count == _undefined ? _instance.count : (count as int?),
      endKeyset: endKeyset == _undefined
          ? _instance.endKeyset
          : (endKeyset as String?),
      results: results == _undefined
          ? _instance.results
          : (results as List<Query_meetingsHeldDays_meetings_results>?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes results(
    Iterable<Query_meetingsHeldDays_meetings_results>? Function(
      Iterable<
        CopyWith_Query_meetingsHeldDays_meetings_results<
          Query_meetingsHeldDays_meetings_results
        >
      >?,
    )
    _fn,
  ) => call(
    results: _fn(
      _instance.results?.map(
        (e) => CopyWith_Query_meetingsHeldDays_meetings_results(e, (i) => i),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl_Query_meetingsHeldDays_meetings<TRes>
    implements CopyWith_Query_meetingsHeldDays_meetings<TRes> {
  _CopyWithStubImpl_Query_meetingsHeldDays_meetings(this._res);

  TRes _res;

  call({
    int? count,
    String? endKeyset,
    List<Query_meetingsHeldDays_meetings_results>? results,
    String? $__typename,
  }) => _res;

  results(_fn) => _res;
}

class Query_meetingsHeldDays_meetings_results {
  Query_meetingsHeldDays_meetings_results({
    required this.id,
    this.heldDays,
    this.$__typename = 'Meeting',
  });

  factory Query_meetingsHeldDays_meetings_results.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$heldDays = json['heldDays'];
    final l$$__typename = json['__typename'];
    return Query_meetingsHeldDays_meetings_results(
      id: (l$id as String),
      heldDays: (l$heldDays as List<dynamic>?)
          ?.map((e) => dateFromString(e))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final List<DateTime>? heldDays;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$heldDays = heldDays;
    _resultData['heldDays'] = l$heldDays?.map((e) => dateToString(e)).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$heldDays = heldDays;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$heldDays == null ? null : Object.hashAll(l$heldDays.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_meetingsHeldDays_meetings_results ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$heldDays = heldDays;
    final lOther$heldDays = other.heldDays;
    if (l$heldDays != null && lOther$heldDays != null) {
      if (l$heldDays.length != lOther$heldDays.length) {
        return false;
      }
      for (int i = 0; i < l$heldDays.length; i++) {
        final l$heldDays$entry = l$heldDays[i];
        final lOther$heldDays$entry = lOther$heldDays[i];
        if (l$heldDays$entry != lOther$heldDays$entry) {
          return false;
        }
      }
    } else if (l$heldDays != lOther$heldDays) {
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

extension UtilityExtension_Query_meetingsHeldDays_meetings_results
    on Query_meetingsHeldDays_meetings_results {
  CopyWith_Query_meetingsHeldDays_meetings_results<
    Query_meetingsHeldDays_meetings_results
  >
  get copyWith =>
      CopyWith_Query_meetingsHeldDays_meetings_results(this, (i) => i);
}

abstract class CopyWith_Query_meetingsHeldDays_meetings_results<TRes> {
  factory CopyWith_Query_meetingsHeldDays_meetings_results(
    Query_meetingsHeldDays_meetings_results instance,
    TRes Function(Query_meetingsHeldDays_meetings_results) then,
  ) = _CopyWithImpl_Query_meetingsHeldDays_meetings_results;

  factory CopyWith_Query_meetingsHeldDays_meetings_results.stub(TRes res) =
      _CopyWithStubImpl_Query_meetingsHeldDays_meetings_results;

  TRes call({String? id, List<DateTime>? heldDays, String? $__typename});
}

class _CopyWithImpl_Query_meetingsHeldDays_meetings_results<TRes>
    implements CopyWith_Query_meetingsHeldDays_meetings_results<TRes> {
  _CopyWithImpl_Query_meetingsHeldDays_meetings_results(
    this._instance,
    this._then,
  );

  final Query_meetingsHeldDays_meetings_results _instance;

  final TRes Function(Query_meetingsHeldDays_meetings_results) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? heldDays = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query_meetingsHeldDays_meetings_results(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      heldDays: heldDays == _undefined
          ? _instance.heldDays
          : (heldDays as List<DateTime>?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Query_meetingsHeldDays_meetings_results<TRes>
    implements CopyWith_Query_meetingsHeldDays_meetings_results<TRes> {
  _CopyWithStubImpl_Query_meetingsHeldDays_meetings_results(this._res);

  TRes _res;

  call({String? id, List<DateTime>? heldDays, String? $__typename}) => _res;
}

class Variables_Query_rosterAttendance {
  factory Variables_Query_rosterAttendance({
    Input_RosterEntryFilterInput? filter,
    List<Input_RosterEntrySortInput?>? sort,
    Input_AttendanceRecordFilterInput? attendedFilter,
    int? first,
    String? after,
  }) => Variables_Query_rosterAttendance._({
    if (filter != null) r'filter': filter,
    if (sort != null) r'sort': sort,
    if (attendedFilter != null) r'attendedFilter': attendedFilter,
    if (first != null) r'first': first,
    if (after != null) r'after': after,
  });

  Variables_Query_rosterAttendance._(this._$data);

  factory Variables_Query_rosterAttendance.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('filter')) {
      final l$filter = data['filter'];
      result$data['filter'] = l$filter == null
          ? null
          : Input_RosterEntryFilterInput.fromJson(
              (l$filter as Map<String, dynamic>),
            );
    }
    if (data.containsKey('sort')) {
      final l$sort = data['sort'];
      result$data['sort'] = (l$sort as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Input_RosterEntrySortInput.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList();
    }
    if (data.containsKey('attendedFilter')) {
      final l$attendedFilter = data['attendedFilter'];
      result$data['attendedFilter'] = l$attendedFilter == null
          ? null
          : Input_AttendanceRecordFilterInput.fromJson(
              (l$attendedFilter as Map<String, dynamic>),
            );
    }
    if (data.containsKey('first')) {
      final l$first = data['first'];
      result$data['first'] = (l$first as int?);
    }
    if (data.containsKey('after')) {
      final l$after = data['after'];
      result$data['after'] = (l$after as String?);
    }
    return Variables_Query_rosterAttendance._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_RosterEntryFilterInput? get filter =>
      (_$data['filter'] as Input_RosterEntryFilterInput?);

  List<Input_RosterEntrySortInput?>? get sort =>
      (_$data['sort'] as List<Input_RosterEntrySortInput?>?);

  Input_AttendanceRecordFilterInput? get attendedFilter =>
      (_$data['attendedFilter'] as Input_AttendanceRecordFilterInput?);

  int? get first => (_$data['first'] as int?);

  String? get after => (_$data['after'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('filter')) {
      final l$filter = filter;
      result$data['filter'] = l$filter?.toJson();
    }
    if (_$data.containsKey('sort')) {
      final l$sort = sort;
      result$data['sort'] = l$sort?.map((e) => e?.toJson()).toList();
    }
    if (_$data.containsKey('attendedFilter')) {
      final l$attendedFilter = attendedFilter;
      result$data['attendedFilter'] = l$attendedFilter?.toJson();
    }
    if (_$data.containsKey('first')) {
      final l$first = first;
      result$data['first'] = l$first;
    }
    if (_$data.containsKey('after')) {
      final l$after = after;
      result$data['after'] = l$after;
    }
    return result$data;
  }

  CopyWith_Variables_Query_rosterAttendance<Variables_Query_rosterAttendance>
  get copyWith => CopyWith_Variables_Query_rosterAttendance(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Query_rosterAttendance ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$filter = filter;
    final lOther$filter = other.filter;
    if (_$data.containsKey('filter') != other._$data.containsKey('filter')) {
      return false;
    }
    if (l$filter != lOther$filter) {
      return false;
    }
    final l$sort = sort;
    final lOther$sort = other.sort;
    if (_$data.containsKey('sort') != other._$data.containsKey('sort')) {
      return false;
    }
    if (l$sort != null && lOther$sort != null) {
      if (l$sort.length != lOther$sort.length) {
        return false;
      }
      for (int i = 0; i < l$sort.length; i++) {
        final l$sort$entry = l$sort[i];
        final lOther$sort$entry = lOther$sort[i];
        if (l$sort$entry != lOther$sort$entry) {
          return false;
        }
      }
    } else if (l$sort != lOther$sort) {
      return false;
    }
    final l$attendedFilter = attendedFilter;
    final lOther$attendedFilter = other.attendedFilter;
    if (_$data.containsKey('attendedFilter') !=
        other._$data.containsKey('attendedFilter')) {
      return false;
    }
    if (l$attendedFilter != lOther$attendedFilter) {
      return false;
    }
    final l$first = first;
    final lOther$first = other.first;
    if (_$data.containsKey('first') != other._$data.containsKey('first')) {
      return false;
    }
    if (l$first != lOther$first) {
      return false;
    }
    final l$after = after;
    final lOther$after = other.after;
    if (_$data.containsKey('after') != other._$data.containsKey('after')) {
      return false;
    }
    if (l$after != lOther$after) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$filter = filter;
    final l$sort = sort;
    final l$attendedFilter = attendedFilter;
    final l$first = first;
    final l$after = after;
    return Object.hashAll([
      _$data.containsKey('filter') ? l$filter : const {},
      _$data.containsKey('sort')
          ? l$sort == null
                ? null
                : Object.hashAll(l$sort.map((v) => v))
          : const {},
      _$data.containsKey('attendedFilter') ? l$attendedFilter : const {},
      _$data.containsKey('first') ? l$first : const {},
      _$data.containsKey('after') ? l$after : const {},
    ]);
  }
}

abstract class CopyWith_Variables_Query_rosterAttendance<TRes> {
  factory CopyWith_Variables_Query_rosterAttendance(
    Variables_Query_rosterAttendance instance,
    TRes Function(Variables_Query_rosterAttendance) then,
  ) = _CopyWithImpl_Variables_Query_rosterAttendance;

  factory CopyWith_Variables_Query_rosterAttendance.stub(TRes res) =
      _CopyWithStubImpl_Variables_Query_rosterAttendance;

  TRes call({
    Input_RosterEntryFilterInput? filter,
    List<Input_RosterEntrySortInput?>? sort,
    Input_AttendanceRecordFilterInput? attendedFilter,
    int? first,
    String? after,
  });
}

class _CopyWithImpl_Variables_Query_rosterAttendance<TRes>
    implements CopyWith_Variables_Query_rosterAttendance<TRes> {
  _CopyWithImpl_Variables_Query_rosterAttendance(this._instance, this._then);

  final Variables_Query_rosterAttendance _instance;

  final TRes Function(Variables_Query_rosterAttendance) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? filter = _undefined,
    Object? sort = _undefined,
    Object? attendedFilter = _undefined,
    Object? first = _undefined,
    Object? after = _undefined,
  }) => _then(
    Variables_Query_rosterAttendance._({
      ..._instance._$data,
      if (filter != _undefined)
        'filter': (filter as Input_RosterEntryFilterInput?),
      if (sort != _undefined)
        'sort': (sort as List<Input_RosterEntrySortInput?>?),
      if (attendedFilter != _undefined)
        'attendedFilter':
            (attendedFilter as Input_AttendanceRecordFilterInput?),
      if (first != _undefined) 'first': (first as int?),
      if (after != _undefined) 'after': (after as String?),
    }),
  );
}

class _CopyWithStubImpl_Variables_Query_rosterAttendance<TRes>
    implements CopyWith_Variables_Query_rosterAttendance<TRes> {
  _CopyWithStubImpl_Variables_Query_rosterAttendance(this._res);

  TRes _res;

  call({
    Input_RosterEntryFilterInput? filter,
    List<Input_RosterEntrySortInput?>? sort,
    Input_AttendanceRecordFilterInput? attendedFilter,
    int? first,
    String? after,
  }) => _res;
}

class Query_rosterAttendance {
  Query_rosterAttendance({
    this.rosterEntries,
    this.$__typename = 'RootQueryType',
  });

  factory Query_rosterAttendance.fromJson(Map<String, dynamic> json) {
    final l$rosterEntries = json['rosterEntries'];
    final l$$__typename = json['__typename'];
    return Query_rosterAttendance(
      rosterEntries: l$rosterEntries == null
          ? null
          : Query_rosterAttendance_rosterEntries.fromJson(
              (l$rosterEntries as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query_rosterAttendance_rosterEntries? rosterEntries;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$rosterEntries = rosterEntries;
    _resultData['rosterEntries'] = l$rosterEntries?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$rosterEntries = rosterEntries;
    final l$$__typename = $__typename;
    return Object.hashAll([l$rosterEntries, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_rosterAttendance || runtimeType != other.runtimeType) {
      return false;
    }
    final l$rosterEntries = rosterEntries;
    final lOther$rosterEntries = other.rosterEntries;
    if (l$rosterEntries != lOther$rosterEntries) {
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

extension UtilityExtension_Query_rosterAttendance on Query_rosterAttendance {
  CopyWith_Query_rosterAttendance<Query_rosterAttendance> get copyWith =>
      CopyWith_Query_rosterAttendance(this, (i) => i);
}

abstract class CopyWith_Query_rosterAttendance<TRes> {
  factory CopyWith_Query_rosterAttendance(
    Query_rosterAttendance instance,
    TRes Function(Query_rosterAttendance) then,
  ) = _CopyWithImpl_Query_rosterAttendance;

  factory CopyWith_Query_rosterAttendance.stub(TRes res) =
      _CopyWithStubImpl_Query_rosterAttendance;

  TRes call({
    Query_rosterAttendance_rosterEntries? rosterEntries,
    String? $__typename,
  });
  CopyWith_Query_rosterAttendance_rosterEntries<TRes> get rosterEntries;
}

class _CopyWithImpl_Query_rosterAttendance<TRes>
    implements CopyWith_Query_rosterAttendance<TRes> {
  _CopyWithImpl_Query_rosterAttendance(this._instance, this._then);

  final Query_rosterAttendance _instance;

  final TRes Function(Query_rosterAttendance) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? rosterEntries = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query_rosterAttendance(
      rosterEntries: rosterEntries == _undefined
          ? _instance.rosterEntries
          : (rosterEntries as Query_rosterAttendance_rosterEntries?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Query_rosterAttendance_rosterEntries<TRes> get rosterEntries {
    final local$rosterEntries = _instance.rosterEntries;
    return local$rosterEntries == null
        ? CopyWith_Query_rosterAttendance_rosterEntries.stub(_then(_instance))
        : CopyWith_Query_rosterAttendance_rosterEntries(
            local$rosterEntries,
            (e) => call(rosterEntries: e),
          );
  }
}

class _CopyWithStubImpl_Query_rosterAttendance<TRes>
    implements CopyWith_Query_rosterAttendance<TRes> {
  _CopyWithStubImpl_Query_rosterAttendance(this._res);

  TRes _res;

  call({
    Query_rosterAttendance_rosterEntries? rosterEntries,
    String? $__typename,
  }) => _res;

  CopyWith_Query_rosterAttendance_rosterEntries<TRes> get rosterEntries =>
      CopyWith_Query_rosterAttendance_rosterEntries.stub(_res);
}

const documentNodeQueryrosterAttendance = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'rosterAttendance'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'filter')),
          type: NamedTypeNode(
            name: NameNode(value: 'RosterEntryFilterInput'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'sort')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'RosterEntrySortInput'),
              isNonNull: false,
            ),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'attendedFilter')),
          type: NamedTypeNode(
            name: NameNode(value: 'AttendanceRecordFilterInput'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'first')),
          type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: false),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'after')),
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'rosterEntries'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'filter'),
                value: VariableNode(name: NameNode(value: 'filter')),
              ),
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: VariableNode(name: NameNode(value: 'sort')),
              ),
              ArgumentNode(
                name: NameNode(value: 'first'),
                value: VariableNode(name: NameNode(value: 'first')),
              ),
              ArgumentNode(
                name: NameNode(value: 'after'),
                value: VariableNode(name: NameNode(value: 'after')),
              ),
            ],
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
                  name: NameNode(value: 'endKeyset'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'results'),
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
                        name: NameNode(value: 'asServant'),
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
                        name: NameNode(value: 'attendanceRecords'),
                        alias: null,
                        arguments: [
                          ArgumentNode(
                            name: NameNode(value: 'filter'),
                            value: VariableNode(
                              name: NameNode(value: 'attendedFilter'),
                            ),
                          ),
                          ArgumentNode(
                            name: NameNode(value: 'sort'),
                            value: ListValueNode(
                              values: [
                                ObjectValueNode(
                                  fields: [
                                    ObjectFieldNode(
                                      name: NameNode(value: 'field'),
                                      value: EnumValueNode(
                                        name: NameNode(value: 'DAY'),
                                      ),
                                    ),
                                    ObjectFieldNode(
                                      name: NameNode(value: 'order'),
                                      value: EnumValueNode(
                                        name: NameNode(value: 'ASC'),
                                      ),
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

class Query_rosterAttendance_rosterEntries {
  Query_rosterAttendance_rosterEntries({
    this.count,
    this.endKeyset,
    this.results,
    this.$__typename = 'KeysetPageOfRosterEntry',
  });

  factory Query_rosterAttendance_rosterEntries.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$count = json['count'];
    final l$endKeyset = json['endKeyset'];
    final l$results = json['results'];
    final l$$__typename = json['__typename'];
    return Query_rosterAttendance_rosterEntries(
      count: (l$count as int?),
      endKeyset: (l$endKeyset as String?),
      results: (l$results as List<dynamic>?)
          ?.map(
            (e) => Query_rosterAttendance_rosterEntries_results.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int? count;

  final String? endKeyset;

  final List<Query_rosterAttendance_rosterEntries_results>? results;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$count = count;
    _resultData['count'] = l$count;
    final l$endKeyset = endKeyset;
    _resultData['endKeyset'] = l$endKeyset;
    final l$results = results;
    _resultData['results'] = l$results?.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$count = count;
    final l$endKeyset = endKeyset;
    final l$results = results;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$count,
      l$endKeyset,
      l$results == null ? null : Object.hashAll(l$results.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_rosterAttendance_rosterEntries ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
      return false;
    }
    final l$endKeyset = endKeyset;
    final lOther$endKeyset = other.endKeyset;
    if (l$endKeyset != lOther$endKeyset) {
      return false;
    }
    final l$results = results;
    final lOther$results = other.results;
    if (l$results != null && lOther$results != null) {
      if (l$results.length != lOther$results.length) {
        return false;
      }
      for (int i = 0; i < l$results.length; i++) {
        final l$results$entry = l$results[i];
        final lOther$results$entry = lOther$results[i];
        if (l$results$entry != lOther$results$entry) {
          return false;
        }
      }
    } else if (l$results != lOther$results) {
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

extension UtilityExtension_Query_rosterAttendance_rosterEntries
    on Query_rosterAttendance_rosterEntries {
  CopyWith_Query_rosterAttendance_rosterEntries<
    Query_rosterAttendance_rosterEntries
  >
  get copyWith => CopyWith_Query_rosterAttendance_rosterEntries(this, (i) => i);
}

abstract class CopyWith_Query_rosterAttendance_rosterEntries<TRes> {
  factory CopyWith_Query_rosterAttendance_rosterEntries(
    Query_rosterAttendance_rosterEntries instance,
    TRes Function(Query_rosterAttendance_rosterEntries) then,
  ) = _CopyWithImpl_Query_rosterAttendance_rosterEntries;

  factory CopyWith_Query_rosterAttendance_rosterEntries.stub(TRes res) =
      _CopyWithStubImpl_Query_rosterAttendance_rosterEntries;

  TRes call({
    int? count,
    String? endKeyset,
    List<Query_rosterAttendance_rosterEntries_results>? results,
    String? $__typename,
  });
  TRes results(
    Iterable<Query_rosterAttendance_rosterEntries_results>? Function(
      Iterable<
        CopyWith_Query_rosterAttendance_rosterEntries_results<
          Query_rosterAttendance_rosterEntries_results
        >
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl_Query_rosterAttendance_rosterEntries<TRes>
    implements CopyWith_Query_rosterAttendance_rosterEntries<TRes> {
  _CopyWithImpl_Query_rosterAttendance_rosterEntries(
    this._instance,
    this._then,
  );

  final Query_rosterAttendance_rosterEntries _instance;

  final TRes Function(Query_rosterAttendance_rosterEntries) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? endKeyset = _undefined,
    Object? results = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query_rosterAttendance_rosterEntries(
      count: count == _undefined ? _instance.count : (count as int?),
      endKeyset: endKeyset == _undefined
          ? _instance.endKeyset
          : (endKeyset as String?),
      results: results == _undefined
          ? _instance.results
          : (results as List<Query_rosterAttendance_rosterEntries_results>?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes results(
    Iterable<Query_rosterAttendance_rosterEntries_results>? Function(
      Iterable<
        CopyWith_Query_rosterAttendance_rosterEntries_results<
          Query_rosterAttendance_rosterEntries_results
        >
      >?,
    )
    _fn,
  ) => call(
    results: _fn(
      _instance.results?.map(
        (e) =>
            CopyWith_Query_rosterAttendance_rosterEntries_results(e, (i) => i),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl_Query_rosterAttendance_rosterEntries<TRes>
    implements CopyWith_Query_rosterAttendance_rosterEntries<TRes> {
  _CopyWithStubImpl_Query_rosterAttendance_rosterEntries(this._res);

  TRes _res;

  call({
    int? count,
    String? endKeyset,
    List<Query_rosterAttendance_rosterEntries_results>? results,
    String? $__typename,
  }) => _res;

  results(_fn) => _res;
}

class Query_rosterAttendance_rosterEntries_results {
  Query_rosterAttendance_rosterEntries_results({
    required this.id,
    required this.meetingId,
    required this.personId,
    required this.asServant,
    this.studyYearId,
    this.studyYearName,
    this.gender,
    required this.attendanceRecords,
    this.$__typename = 'RosterEntry',
  });

  factory Query_rosterAttendance_rosterEntries_results.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$meetingId = json['meetingId'];
    final l$personId = json['personId'];
    final l$asServant = json['asServant'];
    final l$studyYearId = json['studyYearId'];
    final l$studyYearName = json['studyYearName'];
    final l$gender = json['gender'];
    final l$attendanceRecords = json['attendanceRecords'];
    final l$$__typename = json['__typename'];
    return Query_rosterAttendance_rosterEntries_results(
      id: (l$id as String),
      meetingId: (l$meetingId as String),
      personId: (l$personId as String),
      asServant: (l$asServant as bool),
      studyYearId: (l$studyYearId as int?),
      studyYearName: (l$studyYearName as String?),
      gender: (l$gender as bool?),
      attendanceRecords: (l$attendanceRecords as List<dynamic>)
          .map(
            (e) =>
                Query_rosterAttendance_rosterEntries_results_attendanceRecords.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String meetingId;

  final String personId;

  final bool asServant;

  final int? studyYearId;

  final String? studyYearName;

  final bool? gender;

  final List<Query_rosterAttendance_rosterEntries_results_attendanceRecords>
  attendanceRecords;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$meetingId = meetingId;
    _resultData['meetingId'] = l$meetingId;
    final l$personId = personId;
    _resultData['personId'] = l$personId;
    final l$asServant = asServant;
    _resultData['asServant'] = l$asServant;
    final l$studyYearId = studyYearId;
    _resultData['studyYearId'] = l$studyYearId;
    final l$studyYearName = studyYearName;
    _resultData['studyYearName'] = l$studyYearName;
    final l$gender = gender;
    _resultData['gender'] = l$gender;
    final l$attendanceRecords = attendanceRecords;
    _resultData['attendanceRecords'] = l$attendanceRecords
        .map((e) => e.toJson())
        .toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$meetingId = meetingId;
    final l$personId = personId;
    final l$asServant = asServant;
    final l$studyYearId = studyYearId;
    final l$studyYearName = studyYearName;
    final l$gender = gender;
    final l$attendanceRecords = attendanceRecords;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$meetingId,
      l$personId,
      l$asServant,
      l$studyYearId,
      l$studyYearName,
      l$gender,
      Object.hashAll(l$attendanceRecords.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_rosterAttendance_rosterEntries_results ||
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
    final l$asServant = asServant;
    final lOther$asServant = other.asServant;
    if (l$asServant != lOther$asServant) {
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
    final l$attendanceRecords = attendanceRecords;
    final lOther$attendanceRecords = other.attendanceRecords;
    if (l$attendanceRecords.length != lOther$attendanceRecords.length) {
      return false;
    }
    for (int i = 0; i < l$attendanceRecords.length; i++) {
      final l$attendanceRecords$entry = l$attendanceRecords[i];
      final lOther$attendanceRecords$entry = lOther$attendanceRecords[i];
      if (l$attendanceRecords$entry != lOther$attendanceRecords$entry) {
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

extension UtilityExtension_Query_rosterAttendance_rosterEntries_results
    on Query_rosterAttendance_rosterEntries_results {
  CopyWith_Query_rosterAttendance_rosterEntries_results<
    Query_rosterAttendance_rosterEntries_results
  >
  get copyWith =>
      CopyWith_Query_rosterAttendance_rosterEntries_results(this, (i) => i);
}

abstract class CopyWith_Query_rosterAttendance_rosterEntries_results<TRes> {
  factory CopyWith_Query_rosterAttendance_rosterEntries_results(
    Query_rosterAttendance_rosterEntries_results instance,
    TRes Function(Query_rosterAttendance_rosterEntries_results) then,
  ) = _CopyWithImpl_Query_rosterAttendance_rosterEntries_results;

  factory CopyWith_Query_rosterAttendance_rosterEntries_results.stub(TRes res) =
      _CopyWithStubImpl_Query_rosterAttendance_rosterEntries_results;

  TRes call({
    String? id,
    String? meetingId,
    String? personId,
    bool? asServant,
    int? studyYearId,
    String? studyYearName,
    bool? gender,
    List<Query_rosterAttendance_rosterEntries_results_attendanceRecords>?
    attendanceRecords,
    String? $__typename,
  });
  TRes attendanceRecords(
    Iterable<Query_rosterAttendance_rosterEntries_results_attendanceRecords>
    Function(
      Iterable<
        CopyWith_Query_rosterAttendance_rosterEntries_results_attendanceRecords<
          Query_rosterAttendance_rosterEntries_results_attendanceRecords
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl_Query_rosterAttendance_rosterEntries_results<TRes>
    implements CopyWith_Query_rosterAttendance_rosterEntries_results<TRes> {
  _CopyWithImpl_Query_rosterAttendance_rosterEntries_results(
    this._instance,
    this._then,
  );

  final Query_rosterAttendance_rosterEntries_results _instance;

  final TRes Function(Query_rosterAttendance_rosterEntries_results) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? meetingId = _undefined,
    Object? personId = _undefined,
    Object? asServant = _undefined,
    Object? studyYearId = _undefined,
    Object? studyYearName = _undefined,
    Object? gender = _undefined,
    Object? attendanceRecords = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query_rosterAttendance_rosterEntries_results(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      meetingId: meetingId == _undefined || meetingId == null
          ? _instance.meetingId
          : (meetingId as String),
      personId: personId == _undefined || personId == null
          ? _instance.personId
          : (personId as String),
      asServant: asServant == _undefined || asServant == null
          ? _instance.asServant
          : (asServant as bool),
      studyYearId: studyYearId == _undefined
          ? _instance.studyYearId
          : (studyYearId as int?),
      studyYearName: studyYearName == _undefined
          ? _instance.studyYearName
          : (studyYearName as String?),
      gender: gender == _undefined ? _instance.gender : (gender as bool?),
      attendanceRecords:
          attendanceRecords == _undefined || attendanceRecords == null
          ? _instance.attendanceRecords
          : (attendanceRecords
                as List<
                  Query_rosterAttendance_rosterEntries_results_attendanceRecords
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes attendanceRecords(
    Iterable<Query_rosterAttendance_rosterEntries_results_attendanceRecords>
    Function(
      Iterable<
        CopyWith_Query_rosterAttendance_rosterEntries_results_attendanceRecords<
          Query_rosterAttendance_rosterEntries_results_attendanceRecords
        >
      >,
    )
    _fn,
  ) => call(
    attendanceRecords: _fn(
      _instance.attendanceRecords.map(
        (e) =>
            CopyWith_Query_rosterAttendance_rosterEntries_results_attendanceRecords(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl_Query_rosterAttendance_rosterEntries_results<TRes>
    implements CopyWith_Query_rosterAttendance_rosterEntries_results<TRes> {
  _CopyWithStubImpl_Query_rosterAttendance_rosterEntries_results(this._res);

  TRes _res;

  call({
    String? id,
    String? meetingId,
    String? personId,
    bool? asServant,
    int? studyYearId,
    String? studyYearName,
    bool? gender,
    List<Query_rosterAttendance_rosterEntries_results_attendanceRecords>?
    attendanceRecords,
    String? $__typename,
  }) => _res;

  attendanceRecords(_fn) => _res;
}

class Query_rosterAttendance_rosterEntries_results_attendanceRecords {
  Query_rosterAttendance_rosterEntries_results_attendanceRecords({
    required this.id,
    this.day,
    this.$__typename = 'AttendanceRecord',
  });

  factory Query_rosterAttendance_rosterEntries_results_attendanceRecords.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$day = json['day'];
    final l$$__typename = json['__typename'];
    return Query_rosterAttendance_rosterEntries_results_attendanceRecords(
      id: (l$id as String),
      day: l$day == null ? null : dateFromString(l$day),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final DateTime? day;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
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
            is! Query_rosterAttendance_rosterEntries_results_attendanceRecords ||
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

extension UtilityExtension_Query_rosterAttendance_rosterEntries_results_attendanceRecords
    on Query_rosterAttendance_rosterEntries_results_attendanceRecords {
  CopyWith_Query_rosterAttendance_rosterEntries_results_attendanceRecords<
    Query_rosterAttendance_rosterEntries_results_attendanceRecords
  >
  get copyWith =>
      CopyWith_Query_rosterAttendance_rosterEntries_results_attendanceRecords(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Query_rosterAttendance_rosterEntries_results_attendanceRecords<
  TRes
> {
  factory CopyWith_Query_rosterAttendance_rosterEntries_results_attendanceRecords(
    Query_rosterAttendance_rosterEntries_results_attendanceRecords instance,
    TRes Function(
      Query_rosterAttendance_rosterEntries_results_attendanceRecords,
    )
    then,
  ) = _CopyWithImpl_Query_rosterAttendance_rosterEntries_results_attendanceRecords;

  factory CopyWith_Query_rosterAttendance_rosterEntries_results_attendanceRecords.stub(
    TRes res,
  ) = _CopyWithStubImpl_Query_rosterAttendance_rosterEntries_results_attendanceRecords;

  TRes call({String? id, DateTime? day, String? $__typename});
}

class _CopyWithImpl_Query_rosterAttendance_rosterEntries_results_attendanceRecords<
  TRes
>
    implements
        CopyWith_Query_rosterAttendance_rosterEntries_results_attendanceRecords<
          TRes
        > {
  _CopyWithImpl_Query_rosterAttendance_rosterEntries_results_attendanceRecords(
    this._instance,
    this._then,
  );

  final Query_rosterAttendance_rosterEntries_results_attendanceRecords
  _instance;

  final TRes Function(
    Query_rosterAttendance_rosterEntries_results_attendanceRecords,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? day = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query_rosterAttendance_rosterEntries_results_attendanceRecords(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      day: day == _undefined ? _instance.day : (day as DateTime?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Query_rosterAttendance_rosterEntries_results_attendanceRecords<
  TRes
>
    implements
        CopyWith_Query_rosterAttendance_rosterEntries_results_attendanceRecords<
          TRes
        > {
  _CopyWithStubImpl_Query_rosterAttendance_rosterEntries_results_attendanceRecords(
    this._res,
  );

  TRes _res;

  call({String? id, DateTime? day, String? $__typename}) => _res;
}

class Variables_Query_meetingsWithDays {
  factory Variables_Query_meetingsWithDays({
    Input_MeetingFilterInput? filter,
    List<Input_MeetingSortInput?>? sort,
    Input_MeetingDayFilterInput? daysFilter,
    int? first,
    String? after,
  }) => Variables_Query_meetingsWithDays._({
    if (filter != null) r'filter': filter,
    if (sort != null) r'sort': sort,
    if (daysFilter != null) r'daysFilter': daysFilter,
    if (first != null) r'first': first,
    if (after != null) r'after': after,
  });

  Variables_Query_meetingsWithDays._(this._$data);

  factory Variables_Query_meetingsWithDays.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('filter')) {
      final l$filter = data['filter'];
      result$data['filter'] = l$filter == null
          ? null
          : Input_MeetingFilterInput.fromJson(
              (l$filter as Map<String, dynamic>),
            );
    }
    if (data.containsKey('sort')) {
      final l$sort = data['sort'];
      result$data['sort'] = (l$sort as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Input_MeetingSortInput.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    if (data.containsKey('daysFilter')) {
      final l$daysFilter = data['daysFilter'];
      result$data['daysFilter'] = l$daysFilter == null
          ? null
          : Input_MeetingDayFilterInput.fromJson(
              (l$daysFilter as Map<String, dynamic>),
            );
    }
    if (data.containsKey('first')) {
      final l$first = data['first'];
      result$data['first'] = (l$first as int?);
    }
    if (data.containsKey('after')) {
      final l$after = data['after'];
      result$data['after'] = (l$after as String?);
    }
    return Variables_Query_meetingsWithDays._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_MeetingFilterInput? get filter =>
      (_$data['filter'] as Input_MeetingFilterInput?);

  List<Input_MeetingSortInput?>? get sort =>
      (_$data['sort'] as List<Input_MeetingSortInput?>?);

  Input_MeetingDayFilterInput? get daysFilter =>
      (_$data['daysFilter'] as Input_MeetingDayFilterInput?);

  int? get first => (_$data['first'] as int?);

  String? get after => (_$data['after'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('filter')) {
      final l$filter = filter;
      result$data['filter'] = l$filter?.toJson();
    }
    if (_$data.containsKey('sort')) {
      final l$sort = sort;
      result$data['sort'] = l$sort?.map((e) => e?.toJson()).toList();
    }
    if (_$data.containsKey('daysFilter')) {
      final l$daysFilter = daysFilter;
      result$data['daysFilter'] = l$daysFilter?.toJson();
    }
    if (_$data.containsKey('first')) {
      final l$first = first;
      result$data['first'] = l$first;
    }
    if (_$data.containsKey('after')) {
      final l$after = after;
      result$data['after'] = l$after;
    }
    return result$data;
  }

  CopyWith_Variables_Query_meetingsWithDays<Variables_Query_meetingsWithDays>
  get copyWith => CopyWith_Variables_Query_meetingsWithDays(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Query_meetingsWithDays ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$filter = filter;
    final lOther$filter = other.filter;
    if (_$data.containsKey('filter') != other._$data.containsKey('filter')) {
      return false;
    }
    if (l$filter != lOther$filter) {
      return false;
    }
    final l$sort = sort;
    final lOther$sort = other.sort;
    if (_$data.containsKey('sort') != other._$data.containsKey('sort')) {
      return false;
    }
    if (l$sort != null && lOther$sort != null) {
      if (l$sort.length != lOther$sort.length) {
        return false;
      }
      for (int i = 0; i < l$sort.length; i++) {
        final l$sort$entry = l$sort[i];
        final lOther$sort$entry = lOther$sort[i];
        if (l$sort$entry != lOther$sort$entry) {
          return false;
        }
      }
    } else if (l$sort != lOther$sort) {
      return false;
    }
    final l$daysFilter = daysFilter;
    final lOther$daysFilter = other.daysFilter;
    if (_$data.containsKey('daysFilter') !=
        other._$data.containsKey('daysFilter')) {
      return false;
    }
    if (l$daysFilter != lOther$daysFilter) {
      return false;
    }
    final l$first = first;
    final lOther$first = other.first;
    if (_$data.containsKey('first') != other._$data.containsKey('first')) {
      return false;
    }
    if (l$first != lOther$first) {
      return false;
    }
    final l$after = after;
    final lOther$after = other.after;
    if (_$data.containsKey('after') != other._$data.containsKey('after')) {
      return false;
    }
    if (l$after != lOther$after) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$filter = filter;
    final l$sort = sort;
    final l$daysFilter = daysFilter;
    final l$first = first;
    final l$after = after;
    return Object.hashAll([
      _$data.containsKey('filter') ? l$filter : const {},
      _$data.containsKey('sort')
          ? l$sort == null
                ? null
                : Object.hashAll(l$sort.map((v) => v))
          : const {},
      _$data.containsKey('daysFilter') ? l$daysFilter : const {},
      _$data.containsKey('first') ? l$first : const {},
      _$data.containsKey('after') ? l$after : const {},
    ]);
  }
}

abstract class CopyWith_Variables_Query_meetingsWithDays<TRes> {
  factory CopyWith_Variables_Query_meetingsWithDays(
    Variables_Query_meetingsWithDays instance,
    TRes Function(Variables_Query_meetingsWithDays) then,
  ) = _CopyWithImpl_Variables_Query_meetingsWithDays;

  factory CopyWith_Variables_Query_meetingsWithDays.stub(TRes res) =
      _CopyWithStubImpl_Variables_Query_meetingsWithDays;

  TRes call({
    Input_MeetingFilterInput? filter,
    List<Input_MeetingSortInput?>? sort,
    Input_MeetingDayFilterInput? daysFilter,
    int? first,
    String? after,
  });
}

class _CopyWithImpl_Variables_Query_meetingsWithDays<TRes>
    implements CopyWith_Variables_Query_meetingsWithDays<TRes> {
  _CopyWithImpl_Variables_Query_meetingsWithDays(this._instance, this._then);

  final Variables_Query_meetingsWithDays _instance;

  final TRes Function(Variables_Query_meetingsWithDays) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? filter = _undefined,
    Object? sort = _undefined,
    Object? daysFilter = _undefined,
    Object? first = _undefined,
    Object? after = _undefined,
  }) => _then(
    Variables_Query_meetingsWithDays._({
      ..._instance._$data,
      if (filter != _undefined) 'filter': (filter as Input_MeetingFilterInput?),
      if (sort != _undefined) 'sort': (sort as List<Input_MeetingSortInput?>?),
      if (daysFilter != _undefined)
        'daysFilter': (daysFilter as Input_MeetingDayFilterInput?),
      if (first != _undefined) 'first': (first as int?),
      if (after != _undefined) 'after': (after as String?),
    }),
  );
}

class _CopyWithStubImpl_Variables_Query_meetingsWithDays<TRes>
    implements CopyWith_Variables_Query_meetingsWithDays<TRes> {
  _CopyWithStubImpl_Variables_Query_meetingsWithDays(this._res);

  TRes _res;

  call({
    Input_MeetingFilterInput? filter,
    List<Input_MeetingSortInput?>? sort,
    Input_MeetingDayFilterInput? daysFilter,
    int? first,
    String? after,
  }) => _res;
}

class Query_meetingsWithDays {
  Query_meetingsWithDays({this.meetings, this.$__typename = 'RootQueryType'});

  factory Query_meetingsWithDays.fromJson(Map<String, dynamic> json) {
    final l$meetings = json['meetings'];
    final l$$__typename = json['__typename'];
    return Query_meetingsWithDays(
      meetings: l$meetings == null
          ? null
          : Query_meetingsWithDays_meetings.fromJson(
              (l$meetings as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query_meetingsWithDays_meetings? meetings;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$meetings = meetings;
    _resultData['meetings'] = l$meetings?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$meetings = meetings;
    final l$$__typename = $__typename;
    return Object.hashAll([l$meetings, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_meetingsWithDays || runtimeType != other.runtimeType) {
      return false;
    }
    final l$meetings = meetings;
    final lOther$meetings = other.meetings;
    if (l$meetings != lOther$meetings) {
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

extension UtilityExtension_Query_meetingsWithDays on Query_meetingsWithDays {
  CopyWith_Query_meetingsWithDays<Query_meetingsWithDays> get copyWith =>
      CopyWith_Query_meetingsWithDays(this, (i) => i);
}

abstract class CopyWith_Query_meetingsWithDays<TRes> {
  factory CopyWith_Query_meetingsWithDays(
    Query_meetingsWithDays instance,
    TRes Function(Query_meetingsWithDays) then,
  ) = _CopyWithImpl_Query_meetingsWithDays;

  factory CopyWith_Query_meetingsWithDays.stub(TRes res) =
      _CopyWithStubImpl_Query_meetingsWithDays;

  TRes call({Query_meetingsWithDays_meetings? meetings, String? $__typename});
  CopyWith_Query_meetingsWithDays_meetings<TRes> get meetings;
}

class _CopyWithImpl_Query_meetingsWithDays<TRes>
    implements CopyWith_Query_meetingsWithDays<TRes> {
  _CopyWithImpl_Query_meetingsWithDays(this._instance, this._then);

  final Query_meetingsWithDays _instance;

  final TRes Function(Query_meetingsWithDays) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? meetings = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query_meetingsWithDays(
      meetings: meetings == _undefined
          ? _instance.meetings
          : (meetings as Query_meetingsWithDays_meetings?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Query_meetingsWithDays_meetings<TRes> get meetings {
    final local$meetings = _instance.meetings;
    return local$meetings == null
        ? CopyWith_Query_meetingsWithDays_meetings.stub(_then(_instance))
        : CopyWith_Query_meetingsWithDays_meetings(
            local$meetings,
            (e) => call(meetings: e),
          );
  }
}

class _CopyWithStubImpl_Query_meetingsWithDays<TRes>
    implements CopyWith_Query_meetingsWithDays<TRes> {
  _CopyWithStubImpl_Query_meetingsWithDays(this._res);

  TRes _res;

  call({Query_meetingsWithDays_meetings? meetings, String? $__typename}) =>
      _res;

  CopyWith_Query_meetingsWithDays_meetings<TRes> get meetings =>
      CopyWith_Query_meetingsWithDays_meetings.stub(_res);
}

const documentNodeQuerymeetingsWithDays = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'meetingsWithDays'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'filter')),
          type: NamedTypeNode(
            name: NameNode(value: 'MeetingFilterInput'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'sort')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'MeetingSortInput'),
              isNonNull: false,
            ),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'daysFilter')),
          type: NamedTypeNode(
            name: NameNode(value: 'MeetingDayFilterInput'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'first')),
          type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: false),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'after')),
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'meetings'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'filter'),
                value: VariableNode(name: NameNode(value: 'filter')),
              ),
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: VariableNode(name: NameNode(value: 'sort')),
              ),
              ArgumentNode(
                name: NameNode(value: 'first'),
                value: VariableNode(name: NameNode(value: 'first')),
              ),
              ArgumentNode(
                name: NameNode(value: 'after'),
                value: VariableNode(name: NameNode(value: 'after')),
              ),
            ],
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
                  name: NameNode(value: 'endKeyset'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'results'),
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
                        name: NameNode(value: 'days'),
                        alias: null,
                        arguments: [
                          ArgumentNode(
                            name: NameNode(value: 'filter'),
                            value: VariableNode(
                              name: NameNode(value: 'daysFilter'),
                            ),
                          ),
                          ArgumentNode(
                            name: NameNode(value: 'sort'),
                            value: ListValueNode(
                              values: [
                                ObjectValueNode(
                                  fields: [
                                    ObjectFieldNode(
                                      name: NameNode(value: 'field'),
                                      value: EnumValueNode(
                                        name: NameNode(value: 'DAY'),
                                      ),
                                    ),
                                    ObjectFieldNode(
                                      name: NameNode(value: 'order'),
                                      value: EnumValueNode(
                                        name: NameNode(value: 'ASC'),
                                      ),
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
                              name: NameNode(value: 'studyYearId'),
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
    fragmentDefinitionMeeting,
    fragmentDefinitionMeetingService,
    fragmentDefinitionStudyYear,
    fragmentDefinitionMeetingGroup,
  ],
);

class Query_meetingsWithDays_meetings {
  Query_meetingsWithDays_meetings({
    this.count,
    this.endKeyset,
    this.results,
    this.$__typename = 'KeysetPageOfMeeting',
  });

  factory Query_meetingsWithDays_meetings.fromJson(Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$endKeyset = json['endKeyset'];
    final l$results = json['results'];
    final l$$__typename = json['__typename'];
    return Query_meetingsWithDays_meetings(
      count: (l$count as int?),
      endKeyset: (l$endKeyset as String?),
      results: (l$results as List<dynamic>?)
          ?.map(
            (e) => Query_meetingsWithDays_meetings_results.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int? count;

  final String? endKeyset;

  final List<Query_meetingsWithDays_meetings_results>? results;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$count = count;
    _resultData['count'] = l$count;
    final l$endKeyset = endKeyset;
    _resultData['endKeyset'] = l$endKeyset;
    final l$results = results;
    _resultData['results'] = l$results?.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$count = count;
    final l$endKeyset = endKeyset;
    final l$results = results;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$count,
      l$endKeyset,
      l$results == null ? null : Object.hashAll(l$results.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_meetingsWithDays_meetings ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
      return false;
    }
    final l$endKeyset = endKeyset;
    final lOther$endKeyset = other.endKeyset;
    if (l$endKeyset != lOther$endKeyset) {
      return false;
    }
    final l$results = results;
    final lOther$results = other.results;
    if (l$results != null && lOther$results != null) {
      if (l$results.length != lOther$results.length) {
        return false;
      }
      for (int i = 0; i < l$results.length; i++) {
        final l$results$entry = l$results[i];
        final lOther$results$entry = lOther$results[i];
        if (l$results$entry != lOther$results$entry) {
          return false;
        }
      }
    } else if (l$results != lOther$results) {
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

extension UtilityExtension_Query_meetingsWithDays_meetings
    on Query_meetingsWithDays_meetings {
  CopyWith_Query_meetingsWithDays_meetings<Query_meetingsWithDays_meetings>
  get copyWith => CopyWith_Query_meetingsWithDays_meetings(this, (i) => i);
}

abstract class CopyWith_Query_meetingsWithDays_meetings<TRes> {
  factory CopyWith_Query_meetingsWithDays_meetings(
    Query_meetingsWithDays_meetings instance,
    TRes Function(Query_meetingsWithDays_meetings) then,
  ) = _CopyWithImpl_Query_meetingsWithDays_meetings;

  factory CopyWith_Query_meetingsWithDays_meetings.stub(TRes res) =
      _CopyWithStubImpl_Query_meetingsWithDays_meetings;

  TRes call({
    int? count,
    String? endKeyset,
    List<Query_meetingsWithDays_meetings_results>? results,
    String? $__typename,
  });
  TRes results(
    Iterable<Query_meetingsWithDays_meetings_results>? Function(
      Iterable<
        CopyWith_Query_meetingsWithDays_meetings_results<
          Query_meetingsWithDays_meetings_results
        >
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl_Query_meetingsWithDays_meetings<TRes>
    implements CopyWith_Query_meetingsWithDays_meetings<TRes> {
  _CopyWithImpl_Query_meetingsWithDays_meetings(this._instance, this._then);

  final Query_meetingsWithDays_meetings _instance;

  final TRes Function(Query_meetingsWithDays_meetings) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? endKeyset = _undefined,
    Object? results = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query_meetingsWithDays_meetings(
      count: count == _undefined ? _instance.count : (count as int?),
      endKeyset: endKeyset == _undefined
          ? _instance.endKeyset
          : (endKeyset as String?),
      results: results == _undefined
          ? _instance.results
          : (results as List<Query_meetingsWithDays_meetings_results>?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes results(
    Iterable<Query_meetingsWithDays_meetings_results>? Function(
      Iterable<
        CopyWith_Query_meetingsWithDays_meetings_results<
          Query_meetingsWithDays_meetings_results
        >
      >?,
    )
    _fn,
  ) => call(
    results: _fn(
      _instance.results?.map(
        (e) => CopyWith_Query_meetingsWithDays_meetings_results(e, (i) => i),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl_Query_meetingsWithDays_meetings<TRes>
    implements CopyWith_Query_meetingsWithDays_meetings<TRes> {
  _CopyWithStubImpl_Query_meetingsWithDays_meetings(this._res);

  TRes _res;

  call({
    int? count,
    String? endKeyset,
    List<Query_meetingsWithDays_meetings_results>? results,
    String? $__typename,
  }) => _res;

  results(_fn) => _res;
}

class Query_meetingsWithDays_meetings_results implements Fragment_Meeting {
  Query_meetingsWithDays_meetings_results({
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
    this.$__typename = 'Meeting',
    required this.days,
  });

  factory Query_meetingsWithDays_meetings_results.fromJson(
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
    return Query_meetingsWithDays_meetings_results(
      id: (l$id as String),
      name: (l$name as String),
      audience: fromJson_Enum_MeetingAudience((l$audience as String)),
      color: (l$color as int?),
      isArchived: (l$isArchived as bool),
      showKodasCheckbox: (l$showKodasCheckbox as bool),
      serviceId: (l$serviceId as String?),
      serviceGender: (l$serviceGender as bool?),
      serviceStudyYear: (l$serviceStudyYear as int?),
      groupId: (l$groupId as String?),
      service: l$service == null
          ? null
          : Fragment_MeetingService.fromJson(
              (l$service as Map<String, dynamic>),
            ),
      studyYear: l$studyYear == null
          ? null
          : Fragment_StudyYear.fromJson((l$studyYear as Map<String, dynamic>)),
      group: l$group == null
          ? null
          : Fragment_MeetingGroup.fromJson((l$group as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
      days: (l$days as List<dynamic>)
          .map(
            (e) => Query_meetingsWithDays_meetings_results_days.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
    );
  }

  final String id;

  final String name;

  final Enum_MeetingAudience audience;

  final int? color;

  final bool isArchived;

  final bool showKodasCheckbox;

  final String? serviceId;

  final bool? serviceGender;

  final int? serviceStudyYear;

  final String? groupId;

  final Fragment_MeetingService? service;

  final Fragment_StudyYear? studyYear;

  final Fragment_MeetingGroup? group;

  final String $__typename;

  final List<Query_meetingsWithDays_meetings_results_days> days;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$audience = audience;
    _resultData['audience'] = toJson_Enum_MeetingAudience(l$audience);
    final l$color = color;
    _resultData['color'] = l$color;
    final l$isArchived = isArchived;
    _resultData['isArchived'] = l$isArchived;
    final l$showKodasCheckbox = showKodasCheckbox;
    _resultData['showKodasCheckbox'] = l$showKodasCheckbox;
    final l$serviceId = serviceId;
    _resultData['serviceId'] = l$serviceId;
    final l$serviceGender = serviceGender;
    _resultData['serviceGender'] = l$serviceGender;
    final l$serviceStudyYear = serviceStudyYear;
    _resultData['serviceStudyYear'] = l$serviceStudyYear;
    final l$groupId = groupId;
    _resultData['groupId'] = l$groupId;
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
    if (other is! Query_meetingsWithDays_meetings_results ||
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

extension UtilityExtension_Query_meetingsWithDays_meetings_results
    on Query_meetingsWithDays_meetings_results {
  CopyWith_Query_meetingsWithDays_meetings_results<
    Query_meetingsWithDays_meetings_results
  >
  get copyWith =>
      CopyWith_Query_meetingsWithDays_meetings_results(this, (i) => i);
}

abstract class CopyWith_Query_meetingsWithDays_meetings_results<TRes> {
  factory CopyWith_Query_meetingsWithDays_meetings_results(
    Query_meetingsWithDays_meetings_results instance,
    TRes Function(Query_meetingsWithDays_meetings_results) then,
  ) = _CopyWithImpl_Query_meetingsWithDays_meetings_results;

  factory CopyWith_Query_meetingsWithDays_meetings_results.stub(TRes res) =
      _CopyWithStubImpl_Query_meetingsWithDays_meetings_results;

  TRes call({
    String? id,
    String? name,
    Enum_MeetingAudience? audience,
    int? color,
    bool? isArchived,
    bool? showKodasCheckbox,
    String? serviceId,
    bool? serviceGender,
    int? serviceStudyYear,
    String? groupId,
    Fragment_MeetingService? service,
    Fragment_StudyYear? studyYear,
    Fragment_MeetingGroup? group,
    String? $__typename,
    List<Query_meetingsWithDays_meetings_results_days>? days,
  });
  CopyWith_Fragment_MeetingService<TRes> get service;
  CopyWith_Fragment_StudyYear<TRes> get studyYear;
  CopyWith_Fragment_MeetingGroup<TRes> get group;
  TRes days(
    Iterable<Query_meetingsWithDays_meetings_results_days> Function(
      Iterable<
        CopyWith_Query_meetingsWithDays_meetings_results_days<
          Query_meetingsWithDays_meetings_results_days
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl_Query_meetingsWithDays_meetings_results<TRes>
    implements CopyWith_Query_meetingsWithDays_meetings_results<TRes> {
  _CopyWithImpl_Query_meetingsWithDays_meetings_results(
    this._instance,
    this._then,
  );

  final Query_meetingsWithDays_meetings_results _instance;

  final TRes Function(Query_meetingsWithDays_meetings_results) _then;

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
    Query_meetingsWithDays_meetings_results(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      audience: audience == _undefined || audience == null
          ? _instance.audience
          : (audience as Enum_MeetingAudience),
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
          : (serviceId as String?),
      serviceGender: serviceGender == _undefined
          ? _instance.serviceGender
          : (serviceGender as bool?),
      serviceStudyYear: serviceStudyYear == _undefined
          ? _instance.serviceStudyYear
          : (serviceStudyYear as int?),
      groupId: groupId == _undefined ? _instance.groupId : (groupId as String?),
      service: service == _undefined
          ? _instance.service
          : (service as Fragment_MeetingService?),
      studyYear: studyYear == _undefined
          ? _instance.studyYear
          : (studyYear as Fragment_StudyYear?),
      group: group == _undefined
          ? _instance.group
          : (group as Fragment_MeetingGroup?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
      days: days == _undefined || days == null
          ? _instance.days
          : (days as List<Query_meetingsWithDays_meetings_results_days>),
    ),
  );

  CopyWith_Fragment_MeetingService<TRes> get service {
    final local$service = _instance.service;
    return local$service == null
        ? CopyWith_Fragment_MeetingService.stub(_then(_instance))
        : CopyWith_Fragment_MeetingService(
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

  CopyWith_Fragment_MeetingGroup<TRes> get group {
    final local$group = _instance.group;
    return local$group == null
        ? CopyWith_Fragment_MeetingGroup.stub(_then(_instance))
        : CopyWith_Fragment_MeetingGroup(local$group, (e) => call(group: e));
  }

  TRes days(
    Iterable<Query_meetingsWithDays_meetings_results_days> Function(
      Iterable<
        CopyWith_Query_meetingsWithDays_meetings_results_days<
          Query_meetingsWithDays_meetings_results_days
        >
      >,
    )
    _fn,
  ) => call(
    days: _fn(
      _instance.days.map(
        (e) =>
            CopyWith_Query_meetingsWithDays_meetings_results_days(e, (i) => i),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl_Query_meetingsWithDays_meetings_results<TRes>
    implements CopyWith_Query_meetingsWithDays_meetings_results<TRes> {
  _CopyWithStubImpl_Query_meetingsWithDays_meetings_results(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    Enum_MeetingAudience? audience,
    int? color,
    bool? isArchived,
    bool? showKodasCheckbox,
    String? serviceId,
    bool? serviceGender,
    int? serviceStudyYear,
    String? groupId,
    Fragment_MeetingService? service,
    Fragment_StudyYear? studyYear,
    Fragment_MeetingGroup? group,
    String? $__typename,
    List<Query_meetingsWithDays_meetings_results_days>? days,
  }) => _res;

  CopyWith_Fragment_MeetingService<TRes> get service =>
      CopyWith_Fragment_MeetingService.stub(_res);

  CopyWith_Fragment_StudyYear<TRes> get studyYear =>
      CopyWith_Fragment_StudyYear.stub(_res);

  CopyWith_Fragment_MeetingGroup<TRes> get group =>
      CopyWith_Fragment_MeetingGroup.stub(_res);

  days(_fn) => _res;
}

class Query_meetingsWithDays_meetings_results_days {
  Query_meetingsWithDays_meetings_results_days({
    required this.id,
    required this.day,
    this.studyYearId,
    required this.gender,
    this.personsCount,
    this.servantsCount,
    this.totalCount,
    this.$__typename = 'MeetingDay',
  });

  factory Query_meetingsWithDays_meetings_results_days.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$day = json['day'];
    final l$studyYearId = json['studyYearId'];
    final l$gender = json['gender'];
    final l$personsCount = json['personsCount'];
    final l$servantsCount = json['servantsCount'];
    final l$totalCount = json['totalCount'];
    final l$$__typename = json['__typename'];
    return Query_meetingsWithDays_meetings_results_days(
      id: (l$id as String),
      day: dateFromString(l$day),
      studyYearId: (l$studyYearId as int?),
      gender: (l$gender as bool),
      personsCount: (l$personsCount as int?),
      servantsCount: (l$servantsCount as int?),
      totalCount: (l$totalCount as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final DateTime day;

  final int? studyYearId;

  final bool gender;

  final int? personsCount;

  final int? servantsCount;

  final int? totalCount;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$day = day;
    _resultData['day'] = dateToString(l$day);
    final l$studyYearId = studyYearId;
    _resultData['studyYearId'] = l$studyYearId;
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
    final l$id = id;
    final l$day = day;
    final l$studyYearId = studyYearId;
    final l$gender = gender;
    final l$personsCount = personsCount;
    final l$servantsCount = servantsCount;
    final l$totalCount = totalCount;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$day,
      l$studyYearId,
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
    if (other is! Query_meetingsWithDays_meetings_results_days ||
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
    final l$studyYearId = studyYearId;
    final lOther$studyYearId = other.studyYearId;
    if (l$studyYearId != lOther$studyYearId) {
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

extension UtilityExtension_Query_meetingsWithDays_meetings_results_days
    on Query_meetingsWithDays_meetings_results_days {
  CopyWith_Query_meetingsWithDays_meetings_results_days<
    Query_meetingsWithDays_meetings_results_days
  >
  get copyWith =>
      CopyWith_Query_meetingsWithDays_meetings_results_days(this, (i) => i);
}

abstract class CopyWith_Query_meetingsWithDays_meetings_results_days<TRes> {
  factory CopyWith_Query_meetingsWithDays_meetings_results_days(
    Query_meetingsWithDays_meetings_results_days instance,
    TRes Function(Query_meetingsWithDays_meetings_results_days) then,
  ) = _CopyWithImpl_Query_meetingsWithDays_meetings_results_days;

  factory CopyWith_Query_meetingsWithDays_meetings_results_days.stub(TRes res) =
      _CopyWithStubImpl_Query_meetingsWithDays_meetings_results_days;

  TRes call({
    String? id,
    DateTime? day,
    int? studyYearId,
    bool? gender,
    int? personsCount,
    int? servantsCount,
    int? totalCount,
    String? $__typename,
  });
}

class _CopyWithImpl_Query_meetingsWithDays_meetings_results_days<TRes>
    implements CopyWith_Query_meetingsWithDays_meetings_results_days<TRes> {
  _CopyWithImpl_Query_meetingsWithDays_meetings_results_days(
    this._instance,
    this._then,
  );

  final Query_meetingsWithDays_meetings_results_days _instance;

  final TRes Function(Query_meetingsWithDays_meetings_results_days) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? day = _undefined,
    Object? studyYearId = _undefined,
    Object? gender = _undefined,
    Object? personsCount = _undefined,
    Object? servantsCount = _undefined,
    Object? totalCount = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query_meetingsWithDays_meetings_results_days(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      day: day == _undefined || day == null ? _instance.day : (day as DateTime),
      studyYearId: studyYearId == _undefined
          ? _instance.studyYearId
          : (studyYearId as int?),
      gender: gender == _undefined || gender == null
          ? _instance.gender
          : (gender as bool),
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
}

class _CopyWithStubImpl_Query_meetingsWithDays_meetings_results_days<TRes>
    implements CopyWith_Query_meetingsWithDays_meetings_results_days<TRes> {
  _CopyWithStubImpl_Query_meetingsWithDays_meetings_results_days(this._res);

  TRes _res;

  call({
    String? id,
    DateTime? day,
    int? studyYearId,
    bool? gender,
    int? personsCount,
    int? servantsCount,
    int? totalCount,
    String? $__typename,
  }) => _res;
}

class Variables_Query_personMeetingEntries {
  factory Variables_Query_personMeetingEntries({
    Input_RosterEntryFilterInput? filter,
    List<Input_RosterEntrySortInput?>? sort,
    int? first,
    String? after,
  }) => Variables_Query_personMeetingEntries._({
    if (filter != null) r'filter': filter,
    if (sort != null) r'sort': sort,
    if (first != null) r'first': first,
    if (after != null) r'after': after,
  });

  Variables_Query_personMeetingEntries._(this._$data);

  factory Variables_Query_personMeetingEntries.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('filter')) {
      final l$filter = data['filter'];
      result$data['filter'] = l$filter == null
          ? null
          : Input_RosterEntryFilterInput.fromJson(
              (l$filter as Map<String, dynamic>),
            );
    }
    if (data.containsKey('sort')) {
      final l$sort = data['sort'];
      result$data['sort'] = (l$sort as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Input_RosterEntrySortInput.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList();
    }
    if (data.containsKey('first')) {
      final l$first = data['first'];
      result$data['first'] = (l$first as int?);
    }
    if (data.containsKey('after')) {
      final l$after = data['after'];
      result$data['after'] = (l$after as String?);
    }
    return Variables_Query_personMeetingEntries._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_RosterEntryFilterInput? get filter =>
      (_$data['filter'] as Input_RosterEntryFilterInput?);

  List<Input_RosterEntrySortInput?>? get sort =>
      (_$data['sort'] as List<Input_RosterEntrySortInput?>?);

  int? get first => (_$data['first'] as int?);

  String? get after => (_$data['after'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('filter')) {
      final l$filter = filter;
      result$data['filter'] = l$filter?.toJson();
    }
    if (_$data.containsKey('sort')) {
      final l$sort = sort;
      result$data['sort'] = l$sort?.map((e) => e?.toJson()).toList();
    }
    if (_$data.containsKey('first')) {
      final l$first = first;
      result$data['first'] = l$first;
    }
    if (_$data.containsKey('after')) {
      final l$after = after;
      result$data['after'] = l$after;
    }
    return result$data;
  }

  CopyWith_Variables_Query_personMeetingEntries<
    Variables_Query_personMeetingEntries
  >
  get copyWith => CopyWith_Variables_Query_personMeetingEntries(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Query_personMeetingEntries ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$filter = filter;
    final lOther$filter = other.filter;
    if (_$data.containsKey('filter') != other._$data.containsKey('filter')) {
      return false;
    }
    if (l$filter != lOther$filter) {
      return false;
    }
    final l$sort = sort;
    final lOther$sort = other.sort;
    if (_$data.containsKey('sort') != other._$data.containsKey('sort')) {
      return false;
    }
    if (l$sort != null && lOther$sort != null) {
      if (l$sort.length != lOther$sort.length) {
        return false;
      }
      for (int i = 0; i < l$sort.length; i++) {
        final l$sort$entry = l$sort[i];
        final lOther$sort$entry = lOther$sort[i];
        if (l$sort$entry != lOther$sort$entry) {
          return false;
        }
      }
    } else if (l$sort != lOther$sort) {
      return false;
    }
    final l$first = first;
    final lOther$first = other.first;
    if (_$data.containsKey('first') != other._$data.containsKey('first')) {
      return false;
    }
    if (l$first != lOther$first) {
      return false;
    }
    final l$after = after;
    final lOther$after = other.after;
    if (_$data.containsKey('after') != other._$data.containsKey('after')) {
      return false;
    }
    if (l$after != lOther$after) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$filter = filter;
    final l$sort = sort;
    final l$first = first;
    final l$after = after;
    return Object.hashAll([
      _$data.containsKey('filter') ? l$filter : const {},
      _$data.containsKey('sort')
          ? l$sort == null
                ? null
                : Object.hashAll(l$sort.map((v) => v))
          : const {},
      _$data.containsKey('first') ? l$first : const {},
      _$data.containsKey('after') ? l$after : const {},
    ]);
  }
}

abstract class CopyWith_Variables_Query_personMeetingEntries<TRes> {
  factory CopyWith_Variables_Query_personMeetingEntries(
    Variables_Query_personMeetingEntries instance,
    TRes Function(Variables_Query_personMeetingEntries) then,
  ) = _CopyWithImpl_Variables_Query_personMeetingEntries;

  factory CopyWith_Variables_Query_personMeetingEntries.stub(TRes res) =
      _CopyWithStubImpl_Variables_Query_personMeetingEntries;

  TRes call({
    Input_RosterEntryFilterInput? filter,
    List<Input_RosterEntrySortInput?>? sort,
    int? first,
    String? after,
  });
}

class _CopyWithImpl_Variables_Query_personMeetingEntries<TRes>
    implements CopyWith_Variables_Query_personMeetingEntries<TRes> {
  _CopyWithImpl_Variables_Query_personMeetingEntries(
    this._instance,
    this._then,
  );

  final Variables_Query_personMeetingEntries _instance;

  final TRes Function(Variables_Query_personMeetingEntries) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? filter = _undefined,
    Object? sort = _undefined,
    Object? first = _undefined,
    Object? after = _undefined,
  }) => _then(
    Variables_Query_personMeetingEntries._({
      ..._instance._$data,
      if (filter != _undefined)
        'filter': (filter as Input_RosterEntryFilterInput?),
      if (sort != _undefined)
        'sort': (sort as List<Input_RosterEntrySortInput?>?),
      if (first != _undefined) 'first': (first as int?),
      if (after != _undefined) 'after': (after as String?),
    }),
  );
}

class _CopyWithStubImpl_Variables_Query_personMeetingEntries<TRes>
    implements CopyWith_Variables_Query_personMeetingEntries<TRes> {
  _CopyWithStubImpl_Variables_Query_personMeetingEntries(this._res);

  TRes _res;

  call({
    Input_RosterEntryFilterInput? filter,
    List<Input_RosterEntrySortInput?>? sort,
    int? first,
    String? after,
  }) => _res;
}

class Query_personMeetingEntries {
  Query_personMeetingEntries({
    this.rosterEntries,
    this.$__typename = 'RootQueryType',
  });

  factory Query_personMeetingEntries.fromJson(Map<String, dynamic> json) {
    final l$rosterEntries = json['rosterEntries'];
    final l$$__typename = json['__typename'];
    return Query_personMeetingEntries(
      rosterEntries: l$rosterEntries == null
          ? null
          : Query_personMeetingEntries_rosterEntries.fromJson(
              (l$rosterEntries as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query_personMeetingEntries_rosterEntries? rosterEntries;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$rosterEntries = rosterEntries;
    _resultData['rosterEntries'] = l$rosterEntries?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$rosterEntries = rosterEntries;
    final l$$__typename = $__typename;
    return Object.hashAll([l$rosterEntries, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_personMeetingEntries ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$rosterEntries = rosterEntries;
    final lOther$rosterEntries = other.rosterEntries;
    if (l$rosterEntries != lOther$rosterEntries) {
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

extension UtilityExtension_Query_personMeetingEntries
    on Query_personMeetingEntries {
  CopyWith_Query_personMeetingEntries<Query_personMeetingEntries>
  get copyWith => CopyWith_Query_personMeetingEntries(this, (i) => i);
}

abstract class CopyWith_Query_personMeetingEntries<TRes> {
  factory CopyWith_Query_personMeetingEntries(
    Query_personMeetingEntries instance,
    TRes Function(Query_personMeetingEntries) then,
  ) = _CopyWithImpl_Query_personMeetingEntries;

  factory CopyWith_Query_personMeetingEntries.stub(TRes res) =
      _CopyWithStubImpl_Query_personMeetingEntries;

  TRes call({
    Query_personMeetingEntries_rosterEntries? rosterEntries,
    String? $__typename,
  });
  CopyWith_Query_personMeetingEntries_rosterEntries<TRes> get rosterEntries;
}

class _CopyWithImpl_Query_personMeetingEntries<TRes>
    implements CopyWith_Query_personMeetingEntries<TRes> {
  _CopyWithImpl_Query_personMeetingEntries(this._instance, this._then);

  final Query_personMeetingEntries _instance;

  final TRes Function(Query_personMeetingEntries) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? rosterEntries = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query_personMeetingEntries(
      rosterEntries: rosterEntries == _undefined
          ? _instance.rosterEntries
          : (rosterEntries as Query_personMeetingEntries_rosterEntries?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Query_personMeetingEntries_rosterEntries<TRes> get rosterEntries {
    final local$rosterEntries = _instance.rosterEntries;
    return local$rosterEntries == null
        ? CopyWith_Query_personMeetingEntries_rosterEntries.stub(
            _then(_instance),
          )
        : CopyWith_Query_personMeetingEntries_rosterEntries(
            local$rosterEntries,
            (e) => call(rosterEntries: e),
          );
  }
}

class _CopyWithStubImpl_Query_personMeetingEntries<TRes>
    implements CopyWith_Query_personMeetingEntries<TRes> {
  _CopyWithStubImpl_Query_personMeetingEntries(this._res);

  TRes _res;

  call({
    Query_personMeetingEntries_rosterEntries? rosterEntries,
    String? $__typename,
  }) => _res;

  CopyWith_Query_personMeetingEntries_rosterEntries<TRes> get rosterEntries =>
      CopyWith_Query_personMeetingEntries_rosterEntries.stub(_res);
}

const documentNodeQuerypersonMeetingEntries = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'personMeetingEntries'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'filter')),
          type: NamedTypeNode(
            name: NameNode(value: 'RosterEntryFilterInput'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'sort')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'RosterEntrySortInput'),
              isNonNull: false,
            ),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'first')),
          type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: false),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'after')),
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'rosterEntries'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'filter'),
                value: VariableNode(name: NameNode(value: 'filter')),
              ),
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: VariableNode(name: NameNode(value: 'sort')),
              ),
              ArgumentNode(
                name: NameNode(value: 'first'),
                value: VariableNode(name: NameNode(value: 'first')),
              ),
              ArgumentNode(
                name: NameNode(value: 'after'),
                value: VariableNode(name: NameNode(value: 'after')),
              ),
            ],
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
                  name: NameNode(value: 'endKeyset'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'results'),
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
    fragmentDefinitionMeeting,
    fragmentDefinitionMeetingService,
    fragmentDefinitionStudyYear,
    fragmentDefinitionMeetingGroup,
  ],
);

class Query_personMeetingEntries_rosterEntries {
  Query_personMeetingEntries_rosterEntries({
    this.count,
    this.endKeyset,
    this.results,
    this.$__typename = 'KeysetPageOfRosterEntry',
  });

  factory Query_personMeetingEntries_rosterEntries.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$count = json['count'];
    final l$endKeyset = json['endKeyset'];
    final l$results = json['results'];
    final l$$__typename = json['__typename'];
    return Query_personMeetingEntries_rosterEntries(
      count: (l$count as int?),
      endKeyset: (l$endKeyset as String?),
      results: (l$results as List<dynamic>?)
          ?.map(
            (e) => Query_personMeetingEntries_rosterEntries_results.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int? count;

  final String? endKeyset;

  final List<Query_personMeetingEntries_rosterEntries_results>? results;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$count = count;
    _resultData['count'] = l$count;
    final l$endKeyset = endKeyset;
    _resultData['endKeyset'] = l$endKeyset;
    final l$results = results;
    _resultData['results'] = l$results?.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$count = count;
    final l$endKeyset = endKeyset;
    final l$results = results;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$count,
      l$endKeyset,
      l$results == null ? null : Object.hashAll(l$results.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_personMeetingEntries_rosterEntries ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
      return false;
    }
    final l$endKeyset = endKeyset;
    final lOther$endKeyset = other.endKeyset;
    if (l$endKeyset != lOther$endKeyset) {
      return false;
    }
    final l$results = results;
    final lOther$results = other.results;
    if (l$results != null && lOther$results != null) {
      if (l$results.length != lOther$results.length) {
        return false;
      }
      for (int i = 0; i < l$results.length; i++) {
        final l$results$entry = l$results[i];
        final lOther$results$entry = lOther$results[i];
        if (l$results$entry != lOther$results$entry) {
          return false;
        }
      }
    } else if (l$results != lOther$results) {
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

extension UtilityExtension_Query_personMeetingEntries_rosterEntries
    on Query_personMeetingEntries_rosterEntries {
  CopyWith_Query_personMeetingEntries_rosterEntries<
    Query_personMeetingEntries_rosterEntries
  >
  get copyWith =>
      CopyWith_Query_personMeetingEntries_rosterEntries(this, (i) => i);
}

abstract class CopyWith_Query_personMeetingEntries_rosterEntries<TRes> {
  factory CopyWith_Query_personMeetingEntries_rosterEntries(
    Query_personMeetingEntries_rosterEntries instance,
    TRes Function(Query_personMeetingEntries_rosterEntries) then,
  ) = _CopyWithImpl_Query_personMeetingEntries_rosterEntries;

  factory CopyWith_Query_personMeetingEntries_rosterEntries.stub(TRes res) =
      _CopyWithStubImpl_Query_personMeetingEntries_rosterEntries;

  TRes call({
    int? count,
    String? endKeyset,
    List<Query_personMeetingEntries_rosterEntries_results>? results,
    String? $__typename,
  });
  TRes results(
    Iterable<Query_personMeetingEntries_rosterEntries_results>? Function(
      Iterable<
        CopyWith_Query_personMeetingEntries_rosterEntries_results<
          Query_personMeetingEntries_rosterEntries_results
        >
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl_Query_personMeetingEntries_rosterEntries<TRes>
    implements CopyWith_Query_personMeetingEntries_rosterEntries<TRes> {
  _CopyWithImpl_Query_personMeetingEntries_rosterEntries(
    this._instance,
    this._then,
  );

  final Query_personMeetingEntries_rosterEntries _instance;

  final TRes Function(Query_personMeetingEntries_rosterEntries) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? endKeyset = _undefined,
    Object? results = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query_personMeetingEntries_rosterEntries(
      count: count == _undefined ? _instance.count : (count as int?),
      endKeyset: endKeyset == _undefined
          ? _instance.endKeyset
          : (endKeyset as String?),
      results: results == _undefined
          ? _instance.results
          : (results
                as List<Query_personMeetingEntries_rosterEntries_results>?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes results(
    Iterable<Query_personMeetingEntries_rosterEntries_results>? Function(
      Iterable<
        CopyWith_Query_personMeetingEntries_rosterEntries_results<
          Query_personMeetingEntries_rosterEntries_results
        >
      >?,
    )
    _fn,
  ) => call(
    results: _fn(
      _instance.results?.map(
        (e) => CopyWith_Query_personMeetingEntries_rosterEntries_results(
          e,
          (i) => i,
        ),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl_Query_personMeetingEntries_rosterEntries<TRes>
    implements CopyWith_Query_personMeetingEntries_rosterEntries<TRes> {
  _CopyWithStubImpl_Query_personMeetingEntries_rosterEntries(this._res);

  TRes _res;

  call({
    int? count,
    String? endKeyset,
    List<Query_personMeetingEntries_rosterEntries_results>? results,
    String? $__typename,
  }) => _res;

  results(_fn) => _res;
}

class Query_personMeetingEntries_rosterEntries_results {
  Query_personMeetingEntries_rosterEntries_results({
    required this.id,
    required this.personId,
    required this.asServant,
    required this.meetingId,
    this.meeting,
    this.$__typename = 'RosterEntry',
  });

  factory Query_personMeetingEntries_rosterEntries_results.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$personId = json['personId'];
    final l$asServant = json['asServant'];
    final l$meetingId = json['meetingId'];
    final l$meeting = json['meeting'];
    final l$$__typename = json['__typename'];
    return Query_personMeetingEntries_rosterEntries_results(
      id: (l$id as String),
      personId: (l$personId as String),
      asServant: (l$asServant as bool),
      meetingId: (l$meetingId as String),
      meeting: l$meeting == null
          ? null
          : Fragment_Meeting.fromJson((l$meeting as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String personId;

  final bool asServant;

  final String meetingId;

  final Fragment_Meeting? meeting;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$personId = personId;
    _resultData['personId'] = l$personId;
    final l$asServant = asServant;
    _resultData['asServant'] = l$asServant;
    final l$meetingId = meetingId;
    _resultData['meetingId'] = l$meetingId;
    final l$meeting = meeting;
    _resultData['meeting'] = l$meeting?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$personId = personId;
    final l$asServant = asServant;
    final l$meetingId = meetingId;
    final l$meeting = meeting;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
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
    if (other is! Query_personMeetingEntries_rosterEntries_results ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension_Query_personMeetingEntries_rosterEntries_results
    on Query_personMeetingEntries_rosterEntries_results {
  CopyWith_Query_personMeetingEntries_rosterEntries_results<
    Query_personMeetingEntries_rosterEntries_results
  >
  get copyWith =>
      CopyWith_Query_personMeetingEntries_rosterEntries_results(this, (i) => i);
}

abstract class CopyWith_Query_personMeetingEntries_rosterEntries_results<TRes> {
  factory CopyWith_Query_personMeetingEntries_rosterEntries_results(
    Query_personMeetingEntries_rosterEntries_results instance,
    TRes Function(Query_personMeetingEntries_rosterEntries_results) then,
  ) = _CopyWithImpl_Query_personMeetingEntries_rosterEntries_results;

  factory CopyWith_Query_personMeetingEntries_rosterEntries_results.stub(
    TRes res,
  ) = _CopyWithStubImpl_Query_personMeetingEntries_rosterEntries_results;

  TRes call({
    String? id,
    String? personId,
    bool? asServant,
    String? meetingId,
    Fragment_Meeting? meeting,
    String? $__typename,
  });
  CopyWith_Fragment_Meeting<TRes> get meeting;
}

class _CopyWithImpl_Query_personMeetingEntries_rosterEntries_results<TRes>
    implements CopyWith_Query_personMeetingEntries_rosterEntries_results<TRes> {
  _CopyWithImpl_Query_personMeetingEntries_rosterEntries_results(
    this._instance,
    this._then,
  );

  final Query_personMeetingEntries_rosterEntries_results _instance;

  final TRes Function(Query_personMeetingEntries_rosterEntries_results) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? personId = _undefined,
    Object? asServant = _undefined,
    Object? meetingId = _undefined,
    Object? meeting = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query_personMeetingEntries_rosterEntries_results(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      personId: personId == _undefined || personId == null
          ? _instance.personId
          : (personId as String),
      asServant: asServant == _undefined || asServant == null
          ? _instance.asServant
          : (asServant as bool),
      meetingId: meetingId == _undefined || meetingId == null
          ? _instance.meetingId
          : (meetingId as String),
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

class _CopyWithStubImpl_Query_personMeetingEntries_rosterEntries_results<TRes>
    implements CopyWith_Query_personMeetingEntries_rosterEntries_results<TRes> {
  _CopyWithStubImpl_Query_personMeetingEntries_rosterEntries_results(this._res);

  TRes _res;

  call({
    String? id,
    String? personId,
    bool? asServant,
    String? meetingId,
    Fragment_Meeting? meeting,
    String? $__typename,
  }) => _res;

  CopyWith_Fragment_Meeting<TRes> get meeting =>
      CopyWith_Fragment_Meeting.stub(_res);
}
