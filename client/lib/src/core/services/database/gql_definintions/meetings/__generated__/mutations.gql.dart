import '../../../../../graphql/__generated__/schema.graphql.dart';
import '../../groups/__generated__/fragments.gql.dart';
import '../../services/__generated__/fragments.gql.dart';
import '../../users/__generated__/fragments.gql.dart';
import 'fragments.gql.dart';
import 'package:church_admin/src/core/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Variables_Mutation_insertMeeting {
  factory Variables_Mutation_insertMeeting({
    required Input_HistoryMeetingsInsertInput object,
  }) => Variables_Mutation_insertMeeting._({r'object': object});

  Variables_Mutation_insertMeeting._(this._$data);

  factory Variables_Mutation_insertMeeting.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$object = data['object'];
    result$data['object'] = Input_HistoryMeetingsInsertInput.fromJson(
      (l$object as Map<String, dynamic>),
    );
    return Variables_Mutation_insertMeeting._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_HistoryMeetingsInsertInput get object =>
      (_$data['object'] as Input_HistoryMeetingsInsertInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$object = object;
    result$data['object'] = l$object.toJson();
    return result$data;
  }

  CopyWith_Variables_Mutation_insertMeeting<Variables_Mutation_insertMeeting>
  get copyWith => CopyWith_Variables_Mutation_insertMeeting(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Mutation_insertMeeting ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$object = object;
    final lOther$object = other.object;
    if (l$object != lOther$object) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$object = object;
    return Object.hashAll([l$object]);
  }
}

abstract class CopyWith_Variables_Mutation_insertMeeting<TRes> {
  factory CopyWith_Variables_Mutation_insertMeeting(
    Variables_Mutation_insertMeeting instance,
    TRes Function(Variables_Mutation_insertMeeting) then,
  ) = _CopyWithImpl_Variables_Mutation_insertMeeting;

  factory CopyWith_Variables_Mutation_insertMeeting.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_insertMeeting;

  TRes call({Input_HistoryMeetingsInsertInput? object});
}

class _CopyWithImpl_Variables_Mutation_insertMeeting<TRes>
    implements CopyWith_Variables_Mutation_insertMeeting<TRes> {
  _CopyWithImpl_Variables_Mutation_insertMeeting(this._instance, this._then);

  final Variables_Mutation_insertMeeting _instance;

  final TRes Function(Variables_Mutation_insertMeeting) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? object = _undefined}) => _then(
    Variables_Mutation_insertMeeting._({
      ..._instance._$data,
      if (object != _undefined && object != null)
        'object': (object as Input_HistoryMeetingsInsertInput),
    }),
  );
}

class _CopyWithStubImpl_Variables_Mutation_insertMeeting<TRes>
    implements CopyWith_Variables_Mutation_insertMeeting<TRes> {
  _CopyWithStubImpl_Variables_Mutation_insertMeeting(this._res);

  TRes _res;

  call({Input_HistoryMeetingsInsertInput? object}) => _res;
}

class Mutation_insertMeeting {
  Mutation_insertMeeting({
    this.insertHistoryMeetingsOne,
    this.$__typename = 'mutation_root',
  });

  factory Mutation_insertMeeting.fromJson(Map<String, dynamic> json) {
    final l$insertHistoryMeetingsOne = json['insertHistoryMeetingsOne'];
    final l$$__typename = json['__typename'];
    return Mutation_insertMeeting(
      insertHistoryMeetingsOne: l$insertHistoryMeetingsOne == null
          ? null
          : Fragment_Meeting.fromJson(
              (l$insertHistoryMeetingsOne as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_Meeting? insertHistoryMeetingsOne;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$insertHistoryMeetingsOne = insertHistoryMeetingsOne;
    _resultData['insertHistoryMeetingsOne'] = l$insertHistoryMeetingsOne
        ?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$insertHistoryMeetingsOne = insertHistoryMeetingsOne;
    final l$$__typename = $__typename;
    return Object.hashAll([l$insertHistoryMeetingsOne, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_insertMeeting || runtimeType != other.runtimeType) {
      return false;
    }
    final l$insertHistoryMeetingsOne = insertHistoryMeetingsOne;
    final lOther$insertHistoryMeetingsOne = other.insertHistoryMeetingsOne;
    if (l$insertHistoryMeetingsOne != lOther$insertHistoryMeetingsOne) {
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

extension UtilityExtension_Mutation_insertMeeting on Mutation_insertMeeting {
  CopyWith_Mutation_insertMeeting<Mutation_insertMeeting> get copyWith =>
      CopyWith_Mutation_insertMeeting(this, (i) => i);
}

abstract class CopyWith_Mutation_insertMeeting<TRes> {
  factory CopyWith_Mutation_insertMeeting(
    Mutation_insertMeeting instance,
    TRes Function(Mutation_insertMeeting) then,
  ) = _CopyWithImpl_Mutation_insertMeeting;

  factory CopyWith_Mutation_insertMeeting.stub(TRes res) =
      _CopyWithStubImpl_Mutation_insertMeeting;

  TRes call({Fragment_Meeting? insertHistoryMeetingsOne, String? $__typename});
  CopyWith_Fragment_Meeting<TRes> get insertHistoryMeetingsOne;
}

class _CopyWithImpl_Mutation_insertMeeting<TRes>
    implements CopyWith_Mutation_insertMeeting<TRes> {
  _CopyWithImpl_Mutation_insertMeeting(this._instance, this._then);

  final Mutation_insertMeeting _instance;

  final TRes Function(Mutation_insertMeeting) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? insertHistoryMeetingsOne = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_insertMeeting(
      insertHistoryMeetingsOne: insertHistoryMeetingsOne == _undefined
          ? _instance.insertHistoryMeetingsOne
          : (insertHistoryMeetingsOne as Fragment_Meeting?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Fragment_Meeting<TRes> get insertHistoryMeetingsOne {
    final local$insertHistoryMeetingsOne = _instance.insertHistoryMeetingsOne;
    return local$insertHistoryMeetingsOne == null
        ? CopyWith_Fragment_Meeting.stub(_then(_instance))
        : CopyWith_Fragment_Meeting(
            local$insertHistoryMeetingsOne,
            (e) => call(insertHistoryMeetingsOne: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_insertMeeting<TRes>
    implements CopyWith_Mutation_insertMeeting<TRes> {
  _CopyWithStubImpl_Mutation_insertMeeting(this._res);

  TRes _res;

  call({Fragment_Meeting? insertHistoryMeetingsOne, String? $__typename}) =>
      _res;

  CopyWith_Fragment_Meeting<TRes> get insertHistoryMeetingsOne =>
      CopyWith_Fragment_Meeting.stub(_res);
}

const documentNodeMutationinsertMeeting = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'insertMeeting'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'object')),
          type: NamedTypeNode(
            name: NameNode(value: 'HistoryMeetingsInsertInput'),
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
            name: NameNode(value: 'insertHistoryMeetingsOne'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'object'),
                value: VariableNode(name: NameNode(value: 'object')),
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
    fragmentDefinitionServiceNoPhoto,
    fragmentDefinitionGroupNoPhoto,
  ],
);

class Variables_Mutation_updateMeeting {
  factory Variables_Mutation_updateMeeting({
    required UuidValue id,
    required Input_HistoryMeetingsSetInput $set,
  }) => Variables_Mutation_updateMeeting._({r'id': id, r'set': $set});

  Variables_Mutation_updateMeeting._(this._$data);

  factory Variables_Mutation_updateMeeting.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = stringToUuid(l$id);
    final l$$set = data['set'];
    result$data['set'] = Input_HistoryMeetingsSetInput.fromJson(
      (l$$set as Map<String, dynamic>),
    );
    return Variables_Mutation_updateMeeting._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get id => (_$data['id'] as UuidValue);

  Input_HistoryMeetingsSetInput get $set =>
      (_$data['set'] as Input_HistoryMeetingsSetInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = uuidToString(l$id);
    final l$$set = $set;
    result$data['set'] = l$$set.toJson();
    return result$data;
  }

  CopyWith_Variables_Mutation_updateMeeting<Variables_Mutation_updateMeeting>
  get copyWith => CopyWith_Variables_Mutation_updateMeeting(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Mutation_updateMeeting ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$$set = $set;
    final lOther$$set = other.$set;
    if (l$$set != lOther$$set) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$set = $set;
    return Object.hashAll([l$id, l$$set]);
  }
}

abstract class CopyWith_Variables_Mutation_updateMeeting<TRes> {
  factory CopyWith_Variables_Mutation_updateMeeting(
    Variables_Mutation_updateMeeting instance,
    TRes Function(Variables_Mutation_updateMeeting) then,
  ) = _CopyWithImpl_Variables_Mutation_updateMeeting;

  factory CopyWith_Variables_Mutation_updateMeeting.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_updateMeeting;

  TRes call({UuidValue? id, Input_HistoryMeetingsSetInput? $set});
}

class _CopyWithImpl_Variables_Mutation_updateMeeting<TRes>
    implements CopyWith_Variables_Mutation_updateMeeting<TRes> {
  _CopyWithImpl_Variables_Mutation_updateMeeting(this._instance, this._then);

  final Variables_Mutation_updateMeeting _instance;

  final TRes Function(Variables_Mutation_updateMeeting) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined, Object? $set = _undefined}) => _then(
    Variables_Mutation_updateMeeting._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as UuidValue),
      if ($set != _undefined && $set != null)
        'set': ($set as Input_HistoryMeetingsSetInput),
    }),
  );
}

class _CopyWithStubImpl_Variables_Mutation_updateMeeting<TRes>
    implements CopyWith_Variables_Mutation_updateMeeting<TRes> {
  _CopyWithStubImpl_Variables_Mutation_updateMeeting(this._res);

  TRes _res;

  call({UuidValue? id, Input_HistoryMeetingsSetInput? $set}) => _res;
}

class Mutation_updateMeeting {
  Mutation_updateMeeting({
    this.updateHistoryMeetingsByPk,
    this.$__typename = 'mutation_root',
  });

  factory Mutation_updateMeeting.fromJson(Map<String, dynamic> json) {
    final l$updateHistoryMeetingsByPk = json['updateHistoryMeetingsByPk'];
    final l$$__typename = json['__typename'];
    return Mutation_updateMeeting(
      updateHistoryMeetingsByPk: l$updateHistoryMeetingsByPk == null
          ? null
          : Fragment_Meeting.fromJson(
              (l$updateHistoryMeetingsByPk as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_Meeting? updateHistoryMeetingsByPk;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateHistoryMeetingsByPk = updateHistoryMeetingsByPk;
    _resultData['updateHistoryMeetingsByPk'] = l$updateHistoryMeetingsByPk
        ?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateHistoryMeetingsByPk = updateHistoryMeetingsByPk;
    final l$$__typename = $__typename;
    return Object.hashAll([l$updateHistoryMeetingsByPk, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_updateMeeting || runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateHistoryMeetingsByPk = updateHistoryMeetingsByPk;
    final lOther$updateHistoryMeetingsByPk = other.updateHistoryMeetingsByPk;
    if (l$updateHistoryMeetingsByPk != lOther$updateHistoryMeetingsByPk) {
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

extension UtilityExtension_Mutation_updateMeeting on Mutation_updateMeeting {
  CopyWith_Mutation_updateMeeting<Mutation_updateMeeting> get copyWith =>
      CopyWith_Mutation_updateMeeting(this, (i) => i);
}

abstract class CopyWith_Mutation_updateMeeting<TRes> {
  factory CopyWith_Mutation_updateMeeting(
    Mutation_updateMeeting instance,
    TRes Function(Mutation_updateMeeting) then,
  ) = _CopyWithImpl_Mutation_updateMeeting;

  factory CopyWith_Mutation_updateMeeting.stub(TRes res) =
      _CopyWithStubImpl_Mutation_updateMeeting;

  TRes call({Fragment_Meeting? updateHistoryMeetingsByPk, String? $__typename});
  CopyWith_Fragment_Meeting<TRes> get updateHistoryMeetingsByPk;
}

class _CopyWithImpl_Mutation_updateMeeting<TRes>
    implements CopyWith_Mutation_updateMeeting<TRes> {
  _CopyWithImpl_Mutation_updateMeeting(this._instance, this._then);

  final Mutation_updateMeeting _instance;

  final TRes Function(Mutation_updateMeeting) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateHistoryMeetingsByPk = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_updateMeeting(
      updateHistoryMeetingsByPk: updateHistoryMeetingsByPk == _undefined
          ? _instance.updateHistoryMeetingsByPk
          : (updateHistoryMeetingsByPk as Fragment_Meeting?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Fragment_Meeting<TRes> get updateHistoryMeetingsByPk {
    final local$updateHistoryMeetingsByPk = _instance.updateHistoryMeetingsByPk;
    return local$updateHistoryMeetingsByPk == null
        ? CopyWith_Fragment_Meeting.stub(_then(_instance))
        : CopyWith_Fragment_Meeting(
            local$updateHistoryMeetingsByPk,
            (e) => call(updateHistoryMeetingsByPk: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_updateMeeting<TRes>
    implements CopyWith_Mutation_updateMeeting<TRes> {
  _CopyWithStubImpl_Mutation_updateMeeting(this._res);

  TRes _res;

  call({Fragment_Meeting? updateHistoryMeetingsByPk, String? $__typename}) =>
      _res;

  CopyWith_Fragment_Meeting<TRes> get updateHistoryMeetingsByPk =>
      CopyWith_Fragment_Meeting.stub(_res);
}

const documentNodeMutationupdateMeeting = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'updateMeeting'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'id')),
          type: NamedTypeNode(name: NameNode(value: 'uuid'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'set')),
          type: NamedTypeNode(
            name: NameNode(value: 'HistoryMeetingsSetInput'),
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
            name: NameNode(value: 'updateHistoryMeetingsByPk'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'pkColumns'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'id'),
                      value: VariableNode(name: NameNode(value: 'id')),
                    ),
                  ],
                ),
              ),
              ArgumentNode(
                name: NameNode(value: '_set'),
                value: VariableNode(name: NameNode(value: 'set')),
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
    fragmentDefinitionServiceNoPhoto,
    fragmentDefinitionGroupNoPhoto,
  ],
);

class Variables_Mutation_markAttendance {
  factory Variables_Mutation_markAttendance({
    required Input_HistoryAttendanceHistoryInsertInput object,
  }) => Variables_Mutation_markAttendance._({r'object': object});

  Variables_Mutation_markAttendance._(this._$data);

  factory Variables_Mutation_markAttendance.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$object = data['object'];
    result$data['object'] = Input_HistoryAttendanceHistoryInsertInput.fromJson(
      (l$object as Map<String, dynamic>),
    );
    return Variables_Mutation_markAttendance._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_HistoryAttendanceHistoryInsertInput get object =>
      (_$data['object'] as Input_HistoryAttendanceHistoryInsertInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$object = object;
    result$data['object'] = l$object.toJson();
    return result$data;
  }

  CopyWith_Variables_Mutation_markAttendance<Variables_Mutation_markAttendance>
  get copyWith => CopyWith_Variables_Mutation_markAttendance(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Mutation_markAttendance ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$object = object;
    final lOther$object = other.object;
    if (l$object != lOther$object) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$object = object;
    return Object.hashAll([l$object]);
  }
}

abstract class CopyWith_Variables_Mutation_markAttendance<TRes> {
  factory CopyWith_Variables_Mutation_markAttendance(
    Variables_Mutation_markAttendance instance,
    TRes Function(Variables_Mutation_markAttendance) then,
  ) = _CopyWithImpl_Variables_Mutation_markAttendance;

  factory CopyWith_Variables_Mutation_markAttendance.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_markAttendance;

  TRes call({Input_HistoryAttendanceHistoryInsertInput? object});
}

class _CopyWithImpl_Variables_Mutation_markAttendance<TRes>
    implements CopyWith_Variables_Mutation_markAttendance<TRes> {
  _CopyWithImpl_Variables_Mutation_markAttendance(this._instance, this._then);

  final Variables_Mutation_markAttendance _instance;

  final TRes Function(Variables_Mutation_markAttendance) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? object = _undefined}) => _then(
    Variables_Mutation_markAttendance._({
      ..._instance._$data,
      if (object != _undefined && object != null)
        'object': (object as Input_HistoryAttendanceHistoryInsertInput),
    }),
  );
}

class _CopyWithStubImpl_Variables_Mutation_markAttendance<TRes>
    implements CopyWith_Variables_Mutation_markAttendance<TRes> {
  _CopyWithStubImpl_Variables_Mutation_markAttendance(this._res);

  TRes _res;

  call({Input_HistoryAttendanceHistoryInsertInput? object}) => _res;
}

class Mutation_markAttendance {
  Mutation_markAttendance({
    this.insertHistoryAttendanceHistoryOne,
    this.$__typename = 'mutation_root',
  });

  factory Mutation_markAttendance.fromJson(Map<String, dynamic> json) {
    final l$insertHistoryAttendanceHistoryOne =
        json['insertHistoryAttendanceHistoryOne'];
    final l$$__typename = json['__typename'];
    return Mutation_markAttendance(
      insertHistoryAttendanceHistoryOne:
          l$insertHistoryAttendanceHistoryOne == null
          ? null
          : Mutation_markAttendance_insertHistoryAttendanceHistoryOne.fromJson(
              (l$insertHistoryAttendanceHistoryOne as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation_markAttendance_insertHistoryAttendanceHistoryOne?
  insertHistoryAttendanceHistoryOne;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$insertHistoryAttendanceHistoryOne =
        insertHistoryAttendanceHistoryOne;
    _resultData['insertHistoryAttendanceHistoryOne'] =
        l$insertHistoryAttendanceHistoryOne?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$insertHistoryAttendanceHistoryOne =
        insertHistoryAttendanceHistoryOne;
    final l$$__typename = $__typename;
    return Object.hashAll([l$insertHistoryAttendanceHistoryOne, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_markAttendance || runtimeType != other.runtimeType) {
      return false;
    }
    final l$insertHistoryAttendanceHistoryOne =
        insertHistoryAttendanceHistoryOne;
    final lOther$insertHistoryAttendanceHistoryOne =
        other.insertHistoryAttendanceHistoryOne;
    if (l$insertHistoryAttendanceHistoryOne !=
        lOther$insertHistoryAttendanceHistoryOne) {
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

extension UtilityExtension_Mutation_markAttendance on Mutation_markAttendance {
  CopyWith_Mutation_markAttendance<Mutation_markAttendance> get copyWith =>
      CopyWith_Mutation_markAttendance(this, (i) => i);
}

abstract class CopyWith_Mutation_markAttendance<TRes> {
  factory CopyWith_Mutation_markAttendance(
    Mutation_markAttendance instance,
    TRes Function(Mutation_markAttendance) then,
  ) = _CopyWithImpl_Mutation_markAttendance;

  factory CopyWith_Mutation_markAttendance.stub(TRes res) =
      _CopyWithStubImpl_Mutation_markAttendance;

  TRes call({
    Mutation_markAttendance_insertHistoryAttendanceHistoryOne?
    insertHistoryAttendanceHistoryOne,
    String? $__typename,
  });
  CopyWith_Mutation_markAttendance_insertHistoryAttendanceHistoryOne<TRes>
  get insertHistoryAttendanceHistoryOne;
}

class _CopyWithImpl_Mutation_markAttendance<TRes>
    implements CopyWith_Mutation_markAttendance<TRes> {
  _CopyWithImpl_Mutation_markAttendance(this._instance, this._then);

  final Mutation_markAttendance _instance;

  final TRes Function(Mutation_markAttendance) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? insertHistoryAttendanceHistoryOne = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_markAttendance(
      insertHistoryAttendanceHistoryOne:
          insertHistoryAttendanceHistoryOne == _undefined
          ? _instance.insertHistoryAttendanceHistoryOne
          : (insertHistoryAttendanceHistoryOne
                as Mutation_markAttendance_insertHistoryAttendanceHistoryOne?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Mutation_markAttendance_insertHistoryAttendanceHistoryOne<TRes>
  get insertHistoryAttendanceHistoryOne {
    final local$insertHistoryAttendanceHistoryOne =
        _instance.insertHistoryAttendanceHistoryOne;
    return local$insertHistoryAttendanceHistoryOne == null
        ? CopyWith_Mutation_markAttendance_insertHistoryAttendanceHistoryOne.stub(
            _then(_instance),
          )
        : CopyWith_Mutation_markAttendance_insertHistoryAttendanceHistoryOne(
            local$insertHistoryAttendanceHistoryOne,
            (e) => call(insertHistoryAttendanceHistoryOne: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_markAttendance<TRes>
    implements CopyWith_Mutation_markAttendance<TRes> {
  _CopyWithStubImpl_Mutation_markAttendance(this._res);

  TRes _res;

  call({
    Mutation_markAttendance_insertHistoryAttendanceHistoryOne?
    insertHistoryAttendanceHistoryOne,
    String? $__typename,
  }) => _res;

  CopyWith_Mutation_markAttendance_insertHistoryAttendanceHistoryOne<TRes>
  get insertHistoryAttendanceHistoryOne =>
      CopyWith_Mutation_markAttendance_insertHistoryAttendanceHistoryOne.stub(
        _res,
      );
}

const documentNodeMutationmarkAttendance = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'markAttendance'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'object')),
          type: NamedTypeNode(
            name: NameNode(value: 'HistoryAttendanceHistoryInsertInput'),
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
            name: NameNode(value: 'insertHistoryAttendanceHistoryOne'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'object'),
                value: VariableNode(name: NameNode(value: 'object')),
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
                  name: NameNode(value: 'recordedBy'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'recordedByUser'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FragmentSpreadNode(
                        name: NameNode(value: 'User'),
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
    fragmentDefinitionUser,
    fragmentDefinitionUserNoPhoto,
  ],
);

class Mutation_markAttendance_insertHistoryAttendanceHistoryOne {
  Mutation_markAttendance_insertHistoryAttendanceHistoryOne({
    required this.id,
    required this.meetingId,
    required this.personId,
    required this.datetime,
    required this.asServant,
    required this.recordedBy,
    required this.recordedByUser,
    this.$__typename = 'HistoryAttendanceHistory',
  });

  factory Mutation_markAttendance_insertHistoryAttendanceHistoryOne.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$meetingId = json['meetingId'];
    final l$personId = json['personId'];
    final l$datetime = json['datetime'];
    final l$asServant = json['asServant'];
    final l$recordedBy = json['recordedBy'];
    final l$recordedByUser = json['recordedByUser'];
    final l$$__typename = json['__typename'];
    return Mutation_markAttendance_insertHistoryAttendanceHistoryOne(
      id: stringToUuid(l$id),
      meetingId: stringToUuid(l$meetingId),
      personId: stringToUuid(l$personId),
      datetime: tstzFromString(l$datetime),
      asServant: (l$asServant as bool),
      recordedBy: stringToUuid(l$recordedBy),
      recordedByUser: Fragment_User.fromJson(
        (l$recordedByUser as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final UuidValue meetingId;

  final UuidValue personId;

  final DateTime datetime;

  final bool asServant;

  final UuidValue recordedBy;

  final Fragment_User recordedByUser;

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
    final l$recordedBy = recordedBy;
    _resultData['recordedBy'] = uuidToString(l$recordedBy);
    final l$recordedByUser = recordedByUser;
    _resultData['recordedByUser'] = l$recordedByUser.toJson();
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
    final l$recordedBy = recordedBy;
    final l$recordedByUser = recordedByUser;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$meetingId,
      l$personId,
      l$datetime,
      l$asServant,
      l$recordedBy,
      l$recordedByUser,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_markAttendance_insertHistoryAttendanceHistoryOne ||
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
    final l$recordedBy = recordedBy;
    final lOther$recordedBy = other.recordedBy;
    if (l$recordedBy != lOther$recordedBy) {
      return false;
    }
    final l$recordedByUser = recordedByUser;
    final lOther$recordedByUser = other.recordedByUser;
    if (l$recordedByUser != lOther$recordedByUser) {
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

extension UtilityExtension_Mutation_markAttendance_insertHistoryAttendanceHistoryOne
    on Mutation_markAttendance_insertHistoryAttendanceHistoryOne {
  CopyWith_Mutation_markAttendance_insertHistoryAttendanceHistoryOne<
    Mutation_markAttendance_insertHistoryAttendanceHistoryOne
  >
  get copyWith =>
      CopyWith_Mutation_markAttendance_insertHistoryAttendanceHistoryOne(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Mutation_markAttendance_insertHistoryAttendanceHistoryOne<
  TRes
> {
  factory CopyWith_Mutation_markAttendance_insertHistoryAttendanceHistoryOne(
    Mutation_markAttendance_insertHistoryAttendanceHistoryOne instance,
    TRes Function(Mutation_markAttendance_insertHistoryAttendanceHistoryOne)
    then,
  ) = _CopyWithImpl_Mutation_markAttendance_insertHistoryAttendanceHistoryOne;

  factory CopyWith_Mutation_markAttendance_insertHistoryAttendanceHistoryOne.stub(
    TRes res,
  ) = _CopyWithStubImpl_Mutation_markAttendance_insertHistoryAttendanceHistoryOne;

  TRes call({
    UuidValue? id,
    UuidValue? meetingId,
    UuidValue? personId,
    DateTime? datetime,
    bool? asServant,
    UuidValue? recordedBy,
    Fragment_User? recordedByUser,
    String? $__typename,
  });
  CopyWith_Fragment_User<TRes> get recordedByUser;
}

class _CopyWithImpl_Mutation_markAttendance_insertHistoryAttendanceHistoryOne<
  TRes
>
    implements
        CopyWith_Mutation_markAttendance_insertHistoryAttendanceHistoryOne<
          TRes
        > {
  _CopyWithImpl_Mutation_markAttendance_insertHistoryAttendanceHistoryOne(
    this._instance,
    this._then,
  );

  final Mutation_markAttendance_insertHistoryAttendanceHistoryOne _instance;

  final TRes Function(Mutation_markAttendance_insertHistoryAttendanceHistoryOne)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? meetingId = _undefined,
    Object? personId = _undefined,
    Object? datetime = _undefined,
    Object? asServant = _undefined,
    Object? recordedBy = _undefined,
    Object? recordedByUser = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_markAttendance_insertHistoryAttendanceHistoryOne(
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
      recordedBy: recordedBy == _undefined || recordedBy == null
          ? _instance.recordedBy
          : (recordedBy as UuidValue),
      recordedByUser: recordedByUser == _undefined || recordedByUser == null
          ? _instance.recordedByUser
          : (recordedByUser as Fragment_User),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Fragment_User<TRes> get recordedByUser {
    final local$recordedByUser = _instance.recordedByUser;
    return CopyWith_Fragment_User(
      local$recordedByUser,
      (e) => call(recordedByUser: e),
    );
  }
}

class _CopyWithStubImpl_Mutation_markAttendance_insertHistoryAttendanceHistoryOne<
  TRes
>
    implements
        CopyWith_Mutation_markAttendance_insertHistoryAttendanceHistoryOne<
          TRes
        > {
  _CopyWithStubImpl_Mutation_markAttendance_insertHistoryAttendanceHistoryOne(
    this._res,
  );

  TRes _res;

  call({
    UuidValue? id,
    UuidValue? meetingId,
    UuidValue? personId,
    DateTime? datetime,
    bool? asServant,
    UuidValue? recordedBy,
    Fragment_User? recordedByUser,
    String? $__typename,
  }) => _res;

  CopyWith_Fragment_User<TRes> get recordedByUser =>
      CopyWith_Fragment_User.stub(_res);
}

class Variables_Mutation_markAttendanceMany {
  factory Variables_Mutation_markAttendanceMany({
    required List<Input_HistoryAttendanceHistoryInsertInput> objects,
  }) => Variables_Mutation_markAttendanceMany._({r'objects': objects});

  Variables_Mutation_markAttendanceMany._(this._$data);

  factory Variables_Mutation_markAttendanceMany.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$objects = data['objects'];
    result$data['objects'] = (l$objects as List<dynamic>)
        .map(
          (e) => Input_HistoryAttendanceHistoryInsertInput.fromJson(
            (e as Map<String, dynamic>),
          ),
        )
        .toList();
    return Variables_Mutation_markAttendanceMany._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_HistoryAttendanceHistoryInsertInput> get objects =>
      (_$data['objects'] as List<Input_HistoryAttendanceHistoryInsertInput>);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$objects = objects;
    result$data['objects'] = l$objects.map((e) => e.toJson()).toList();
    return result$data;
  }

  CopyWith_Variables_Mutation_markAttendanceMany<
    Variables_Mutation_markAttendanceMany
  >
  get copyWith =>
      CopyWith_Variables_Mutation_markAttendanceMany(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Mutation_markAttendanceMany ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$objects = objects;
    final lOther$objects = other.objects;
    if (l$objects.length != lOther$objects.length) {
      return false;
    }
    for (int i = 0; i < l$objects.length; i++) {
      final l$objects$entry = l$objects[i];
      final lOther$objects$entry = lOther$objects[i];
      if (l$objects$entry != lOther$objects$entry) {
        return false;
      }
    }
    return true;
  }

  @override
  int get hashCode {
    final l$objects = objects;
    return Object.hashAll([Object.hashAll(l$objects.map((v) => v))]);
  }
}

abstract class CopyWith_Variables_Mutation_markAttendanceMany<TRes> {
  factory CopyWith_Variables_Mutation_markAttendanceMany(
    Variables_Mutation_markAttendanceMany instance,
    TRes Function(Variables_Mutation_markAttendanceMany) then,
  ) = _CopyWithImpl_Variables_Mutation_markAttendanceMany;

  factory CopyWith_Variables_Mutation_markAttendanceMany.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_markAttendanceMany;

  TRes call({List<Input_HistoryAttendanceHistoryInsertInput>? objects});
}

class _CopyWithImpl_Variables_Mutation_markAttendanceMany<TRes>
    implements CopyWith_Variables_Mutation_markAttendanceMany<TRes> {
  _CopyWithImpl_Variables_Mutation_markAttendanceMany(
    this._instance,
    this._then,
  );

  final Variables_Mutation_markAttendanceMany _instance;

  final TRes Function(Variables_Mutation_markAttendanceMany) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? objects = _undefined}) => _then(
    Variables_Mutation_markAttendanceMany._({
      ..._instance._$data,
      if (objects != _undefined && objects != null)
        'objects': (objects as List<Input_HistoryAttendanceHistoryInsertInput>),
    }),
  );
}

class _CopyWithStubImpl_Variables_Mutation_markAttendanceMany<TRes>
    implements CopyWith_Variables_Mutation_markAttendanceMany<TRes> {
  _CopyWithStubImpl_Variables_Mutation_markAttendanceMany(this._res);

  TRes _res;

  call({List<Input_HistoryAttendanceHistoryInsertInput>? objects}) => _res;
}

class Mutation_markAttendanceMany {
  Mutation_markAttendanceMany({
    this.insertHistoryAttendanceHistory,
    this.$__typename = 'mutation_root',
  });

  factory Mutation_markAttendanceMany.fromJson(Map<String, dynamic> json) {
    final l$insertHistoryAttendanceHistory =
        json['insertHistoryAttendanceHistory'];
    final l$$__typename = json['__typename'];
    return Mutation_markAttendanceMany(
      insertHistoryAttendanceHistory: l$insertHistoryAttendanceHistory == null
          ? null
          : Mutation_markAttendanceMany_insertHistoryAttendanceHistory.fromJson(
              (l$insertHistoryAttendanceHistory as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation_markAttendanceMany_insertHistoryAttendanceHistory?
  insertHistoryAttendanceHistory;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$insertHistoryAttendanceHistory = insertHistoryAttendanceHistory;
    _resultData['insertHistoryAttendanceHistory'] =
        l$insertHistoryAttendanceHistory?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$insertHistoryAttendanceHistory = insertHistoryAttendanceHistory;
    final l$$__typename = $__typename;
    return Object.hashAll([l$insertHistoryAttendanceHistory, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_markAttendanceMany ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$insertHistoryAttendanceHistory = insertHistoryAttendanceHistory;
    final lOther$insertHistoryAttendanceHistory =
        other.insertHistoryAttendanceHistory;
    if (l$insertHistoryAttendanceHistory !=
        lOther$insertHistoryAttendanceHistory) {
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

extension UtilityExtension_Mutation_markAttendanceMany
    on Mutation_markAttendanceMany {
  CopyWith_Mutation_markAttendanceMany<Mutation_markAttendanceMany>
  get copyWith => CopyWith_Mutation_markAttendanceMany(this, (i) => i);
}

abstract class CopyWith_Mutation_markAttendanceMany<TRes> {
  factory CopyWith_Mutation_markAttendanceMany(
    Mutation_markAttendanceMany instance,
    TRes Function(Mutation_markAttendanceMany) then,
  ) = _CopyWithImpl_Mutation_markAttendanceMany;

  factory CopyWith_Mutation_markAttendanceMany.stub(TRes res) =
      _CopyWithStubImpl_Mutation_markAttendanceMany;

  TRes call({
    Mutation_markAttendanceMany_insertHistoryAttendanceHistory?
    insertHistoryAttendanceHistory,
    String? $__typename,
  });
  CopyWith_Mutation_markAttendanceMany_insertHistoryAttendanceHistory<TRes>
  get insertHistoryAttendanceHistory;
}

class _CopyWithImpl_Mutation_markAttendanceMany<TRes>
    implements CopyWith_Mutation_markAttendanceMany<TRes> {
  _CopyWithImpl_Mutation_markAttendanceMany(this._instance, this._then);

  final Mutation_markAttendanceMany _instance;

  final TRes Function(Mutation_markAttendanceMany) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? insertHistoryAttendanceHistory = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_markAttendanceMany(
      insertHistoryAttendanceHistory:
          insertHistoryAttendanceHistory == _undefined
          ? _instance.insertHistoryAttendanceHistory
          : (insertHistoryAttendanceHistory
                as Mutation_markAttendanceMany_insertHistoryAttendanceHistory?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Mutation_markAttendanceMany_insertHistoryAttendanceHistory<TRes>
  get insertHistoryAttendanceHistory {
    final local$insertHistoryAttendanceHistory =
        _instance.insertHistoryAttendanceHistory;
    return local$insertHistoryAttendanceHistory == null
        ? CopyWith_Mutation_markAttendanceMany_insertHistoryAttendanceHistory.stub(
            _then(_instance),
          )
        : CopyWith_Mutation_markAttendanceMany_insertHistoryAttendanceHistory(
            local$insertHistoryAttendanceHistory,
            (e) => call(insertHistoryAttendanceHistory: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_markAttendanceMany<TRes>
    implements CopyWith_Mutation_markAttendanceMany<TRes> {
  _CopyWithStubImpl_Mutation_markAttendanceMany(this._res);

  TRes _res;

  call({
    Mutation_markAttendanceMany_insertHistoryAttendanceHistory?
    insertHistoryAttendanceHistory,
    String? $__typename,
  }) => _res;

  CopyWith_Mutation_markAttendanceMany_insertHistoryAttendanceHistory<TRes>
  get insertHistoryAttendanceHistory =>
      CopyWith_Mutation_markAttendanceMany_insertHistoryAttendanceHistory.stub(
        _res,
      );
}

const documentNodeMutationmarkAttendanceMany = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'markAttendanceMany'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'objects')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'HistoryAttendanceHistoryInsertInput'),
              isNonNull: true,
            ),
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
            name: NameNode(value: 'insertHistoryAttendanceHistory'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'objects'),
                value: VariableNode(name: NameNode(value: 'objects')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'returning'),
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

class Mutation_markAttendanceMany_insertHistoryAttendanceHistory {
  Mutation_markAttendanceMany_insertHistoryAttendanceHistory({
    required this.returning,
    this.$__typename = 'HistoryAttendanceHistoryMutationResponse',
  });

  factory Mutation_markAttendanceMany_insertHistoryAttendanceHistory.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$returning = json['returning'];
    final l$$__typename = json['__typename'];
    return Mutation_markAttendanceMany_insertHistoryAttendanceHistory(
      returning: (l$returning as List<dynamic>)
          .map(
            (e) =>
                Mutation_markAttendanceMany_insertHistoryAttendanceHistory_returning.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation_markAttendanceMany_insertHistoryAttendanceHistory_returning
  >
  returning;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$returning = returning;
    _resultData['returning'] = l$returning.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$returning = returning;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$returning.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_markAttendanceMany_insertHistoryAttendanceHistory ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$returning = returning;
    final lOther$returning = other.returning;
    if (l$returning.length != lOther$returning.length) {
      return false;
    }
    for (int i = 0; i < l$returning.length; i++) {
      final l$returning$entry = l$returning[i];
      final lOther$returning$entry = lOther$returning[i];
      if (l$returning$entry != lOther$returning$entry) {
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

extension UtilityExtension_Mutation_markAttendanceMany_insertHistoryAttendanceHistory
    on Mutation_markAttendanceMany_insertHistoryAttendanceHistory {
  CopyWith_Mutation_markAttendanceMany_insertHistoryAttendanceHistory<
    Mutation_markAttendanceMany_insertHistoryAttendanceHistory
  >
  get copyWith =>
      CopyWith_Mutation_markAttendanceMany_insertHistoryAttendanceHistory(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Mutation_markAttendanceMany_insertHistoryAttendanceHistory<
  TRes
> {
  factory CopyWith_Mutation_markAttendanceMany_insertHistoryAttendanceHistory(
    Mutation_markAttendanceMany_insertHistoryAttendanceHistory instance,
    TRes Function(Mutation_markAttendanceMany_insertHistoryAttendanceHistory)
    then,
  ) = _CopyWithImpl_Mutation_markAttendanceMany_insertHistoryAttendanceHistory;

  factory CopyWith_Mutation_markAttendanceMany_insertHistoryAttendanceHistory.stub(
    TRes res,
  ) = _CopyWithStubImpl_Mutation_markAttendanceMany_insertHistoryAttendanceHistory;

  TRes call({
    List<Mutation_markAttendanceMany_insertHistoryAttendanceHistory_returning>?
    returning,
    String? $__typename,
  });
  TRes returning(
    Iterable<
      Mutation_markAttendanceMany_insertHistoryAttendanceHistory_returning
    >
    Function(
      Iterable<
        CopyWith_Mutation_markAttendanceMany_insertHistoryAttendanceHistory_returning<
          Mutation_markAttendanceMany_insertHistoryAttendanceHistory_returning
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl_Mutation_markAttendanceMany_insertHistoryAttendanceHistory<
  TRes
>
    implements
        CopyWith_Mutation_markAttendanceMany_insertHistoryAttendanceHistory<
          TRes
        > {
  _CopyWithImpl_Mutation_markAttendanceMany_insertHistoryAttendanceHistory(
    this._instance,
    this._then,
  );

  final Mutation_markAttendanceMany_insertHistoryAttendanceHistory _instance;

  final TRes Function(
    Mutation_markAttendanceMany_insertHistoryAttendanceHistory,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? returning = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_markAttendanceMany_insertHistoryAttendanceHistory(
      returning: returning == _undefined || returning == null
          ? _instance.returning
          : (returning
                as List<
                  Mutation_markAttendanceMany_insertHistoryAttendanceHistory_returning
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes returning(
    Iterable<
      Mutation_markAttendanceMany_insertHistoryAttendanceHistory_returning
    >
    Function(
      Iterable<
        CopyWith_Mutation_markAttendanceMany_insertHistoryAttendanceHistory_returning<
          Mutation_markAttendanceMany_insertHistoryAttendanceHistory_returning
        >
      >,
    )
    _fn,
  ) => call(
    returning: _fn(
      _instance.returning.map(
        (e) =>
            CopyWith_Mutation_markAttendanceMany_insertHistoryAttendanceHistory_returning(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl_Mutation_markAttendanceMany_insertHistoryAttendanceHistory<
  TRes
>
    implements
        CopyWith_Mutation_markAttendanceMany_insertHistoryAttendanceHistory<
          TRes
        > {
  _CopyWithStubImpl_Mutation_markAttendanceMany_insertHistoryAttendanceHistory(
    this._res,
  );

  TRes _res;

  call({
    List<Mutation_markAttendanceMany_insertHistoryAttendanceHistory_returning>?
    returning,
    String? $__typename,
  }) => _res;

  returning(_fn) => _res;
}

class Mutation_markAttendanceMany_insertHistoryAttendanceHistory_returning {
  Mutation_markAttendanceMany_insertHistoryAttendanceHistory_returning({
    required this.id,
    required this.meetingId,
    required this.personId,
    required this.datetime,
    required this.asServant,
    this.$__typename = 'HistoryAttendanceHistory',
  });

  factory Mutation_markAttendanceMany_insertHistoryAttendanceHistory_returning.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$meetingId = json['meetingId'];
    final l$personId = json['personId'];
    final l$datetime = json['datetime'];
    final l$asServant = json['asServant'];
    final l$$__typename = json['__typename'];
    return Mutation_markAttendanceMany_insertHistoryAttendanceHistory_returning(
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
            is! Mutation_markAttendanceMany_insertHistoryAttendanceHistory_returning ||
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

extension UtilityExtension_Mutation_markAttendanceMany_insertHistoryAttendanceHistory_returning
    on Mutation_markAttendanceMany_insertHistoryAttendanceHistory_returning {
  CopyWith_Mutation_markAttendanceMany_insertHistoryAttendanceHistory_returning<
    Mutation_markAttendanceMany_insertHistoryAttendanceHistory_returning
  >
  get copyWith =>
      CopyWith_Mutation_markAttendanceMany_insertHistoryAttendanceHistory_returning(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Mutation_markAttendanceMany_insertHistoryAttendanceHistory_returning<
  TRes
> {
  factory CopyWith_Mutation_markAttendanceMany_insertHistoryAttendanceHistory_returning(
    Mutation_markAttendanceMany_insertHistoryAttendanceHistory_returning
    instance,
    TRes Function(
      Mutation_markAttendanceMany_insertHistoryAttendanceHistory_returning,
    )
    then,
  ) = _CopyWithImpl_Mutation_markAttendanceMany_insertHistoryAttendanceHistory_returning;

  factory CopyWith_Mutation_markAttendanceMany_insertHistoryAttendanceHistory_returning.stub(
    TRes res,
  ) = _CopyWithStubImpl_Mutation_markAttendanceMany_insertHistoryAttendanceHistory_returning;

  TRes call({
    UuidValue? id,
    UuidValue? meetingId,
    UuidValue? personId,
    DateTime? datetime,
    bool? asServant,
    String? $__typename,
  });
}

class _CopyWithImpl_Mutation_markAttendanceMany_insertHistoryAttendanceHistory_returning<
  TRes
>
    implements
        CopyWith_Mutation_markAttendanceMany_insertHistoryAttendanceHistory_returning<
          TRes
        > {
  _CopyWithImpl_Mutation_markAttendanceMany_insertHistoryAttendanceHistory_returning(
    this._instance,
    this._then,
  );

  final Mutation_markAttendanceMany_insertHistoryAttendanceHistory_returning
  _instance;

  final TRes Function(
    Mutation_markAttendanceMany_insertHistoryAttendanceHistory_returning,
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
    Mutation_markAttendanceMany_insertHistoryAttendanceHistory_returning(
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

class _CopyWithStubImpl_Mutation_markAttendanceMany_insertHistoryAttendanceHistory_returning<
  TRes
>
    implements
        CopyWith_Mutation_markAttendanceMany_insertHistoryAttendanceHistory_returning<
          TRes
        > {
  _CopyWithStubImpl_Mutation_markAttendanceMany_insertHistoryAttendanceHistory_returning(
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

class Variables_Mutation_unmarkAttendance {
  factory Variables_Mutation_unmarkAttendance({required UuidValue id}) =>
      Variables_Mutation_unmarkAttendance._({r'id': id});

  Variables_Mutation_unmarkAttendance._(this._$data);

  factory Variables_Mutation_unmarkAttendance.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = stringToUuid(l$id);
    return Variables_Mutation_unmarkAttendance._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get id => (_$data['id'] as UuidValue);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = uuidToString(l$id);
    return result$data;
  }

  CopyWith_Variables_Mutation_unmarkAttendance<
    Variables_Mutation_unmarkAttendance
  >
  get copyWith => CopyWith_Variables_Mutation_unmarkAttendance(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Mutation_unmarkAttendance ||
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

abstract class CopyWith_Variables_Mutation_unmarkAttendance<TRes> {
  factory CopyWith_Variables_Mutation_unmarkAttendance(
    Variables_Mutation_unmarkAttendance instance,
    TRes Function(Variables_Mutation_unmarkAttendance) then,
  ) = _CopyWithImpl_Variables_Mutation_unmarkAttendance;

  factory CopyWith_Variables_Mutation_unmarkAttendance.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_unmarkAttendance;

  TRes call({UuidValue? id});
}

class _CopyWithImpl_Variables_Mutation_unmarkAttendance<TRes>
    implements CopyWith_Variables_Mutation_unmarkAttendance<TRes> {
  _CopyWithImpl_Variables_Mutation_unmarkAttendance(this._instance, this._then);

  final Variables_Mutation_unmarkAttendance _instance;

  final TRes Function(Variables_Mutation_unmarkAttendance) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(
    Variables_Mutation_unmarkAttendance._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as UuidValue),
    }),
  );
}

class _CopyWithStubImpl_Variables_Mutation_unmarkAttendance<TRes>
    implements CopyWith_Variables_Mutation_unmarkAttendance<TRes> {
  _CopyWithStubImpl_Variables_Mutation_unmarkAttendance(this._res);

  TRes _res;

  call({UuidValue? id}) => _res;
}

class Mutation_unmarkAttendance {
  Mutation_unmarkAttendance({
    this.deleteHistoryAttendanceHistoryByPk,
    this.$__typename = 'mutation_root',
  });

  factory Mutation_unmarkAttendance.fromJson(Map<String, dynamic> json) {
    final l$deleteHistoryAttendanceHistoryByPk =
        json['deleteHistoryAttendanceHistoryByPk'];
    final l$$__typename = json['__typename'];
    return Mutation_unmarkAttendance(
      deleteHistoryAttendanceHistoryByPk:
          l$deleteHistoryAttendanceHistoryByPk == null
          ? null
          : Mutation_unmarkAttendance_deleteHistoryAttendanceHistoryByPk.fromJson(
              (l$deleteHistoryAttendanceHistoryByPk as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation_unmarkAttendance_deleteHistoryAttendanceHistoryByPk?
  deleteHistoryAttendanceHistoryByPk;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleteHistoryAttendanceHistoryByPk =
        deleteHistoryAttendanceHistoryByPk;
    _resultData['deleteHistoryAttendanceHistoryByPk'] =
        l$deleteHistoryAttendanceHistoryByPk?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleteHistoryAttendanceHistoryByPk =
        deleteHistoryAttendanceHistoryByPk;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$deleteHistoryAttendanceHistoryByPk,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_unmarkAttendance ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteHistoryAttendanceHistoryByPk =
        deleteHistoryAttendanceHistoryByPk;
    final lOther$deleteHistoryAttendanceHistoryByPk =
        other.deleteHistoryAttendanceHistoryByPk;
    if (l$deleteHistoryAttendanceHistoryByPk !=
        lOther$deleteHistoryAttendanceHistoryByPk) {
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

extension UtilityExtension_Mutation_unmarkAttendance
    on Mutation_unmarkAttendance {
  CopyWith_Mutation_unmarkAttendance<Mutation_unmarkAttendance> get copyWith =>
      CopyWith_Mutation_unmarkAttendance(this, (i) => i);
}

abstract class CopyWith_Mutation_unmarkAttendance<TRes> {
  factory CopyWith_Mutation_unmarkAttendance(
    Mutation_unmarkAttendance instance,
    TRes Function(Mutation_unmarkAttendance) then,
  ) = _CopyWithImpl_Mutation_unmarkAttendance;

  factory CopyWith_Mutation_unmarkAttendance.stub(TRes res) =
      _CopyWithStubImpl_Mutation_unmarkAttendance;

  TRes call({
    Mutation_unmarkAttendance_deleteHistoryAttendanceHistoryByPk?
    deleteHistoryAttendanceHistoryByPk,
    String? $__typename,
  });
  CopyWith_Mutation_unmarkAttendance_deleteHistoryAttendanceHistoryByPk<TRes>
  get deleteHistoryAttendanceHistoryByPk;
}

class _CopyWithImpl_Mutation_unmarkAttendance<TRes>
    implements CopyWith_Mutation_unmarkAttendance<TRes> {
  _CopyWithImpl_Mutation_unmarkAttendance(this._instance, this._then);

  final Mutation_unmarkAttendance _instance;

  final TRes Function(Mutation_unmarkAttendance) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deleteHistoryAttendanceHistoryByPk = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_unmarkAttendance(
      deleteHistoryAttendanceHistoryByPk:
          deleteHistoryAttendanceHistoryByPk == _undefined
          ? _instance.deleteHistoryAttendanceHistoryByPk
          : (deleteHistoryAttendanceHistoryByPk
                as Mutation_unmarkAttendance_deleteHistoryAttendanceHistoryByPk?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Mutation_unmarkAttendance_deleteHistoryAttendanceHistoryByPk<TRes>
  get deleteHistoryAttendanceHistoryByPk {
    final local$deleteHistoryAttendanceHistoryByPk =
        _instance.deleteHistoryAttendanceHistoryByPk;
    return local$deleteHistoryAttendanceHistoryByPk == null
        ? CopyWith_Mutation_unmarkAttendance_deleteHistoryAttendanceHistoryByPk.stub(
            _then(_instance),
          )
        : CopyWith_Mutation_unmarkAttendance_deleteHistoryAttendanceHistoryByPk(
            local$deleteHistoryAttendanceHistoryByPk,
            (e) => call(deleteHistoryAttendanceHistoryByPk: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_unmarkAttendance<TRes>
    implements CopyWith_Mutation_unmarkAttendance<TRes> {
  _CopyWithStubImpl_Mutation_unmarkAttendance(this._res);

  TRes _res;

  call({
    Mutation_unmarkAttendance_deleteHistoryAttendanceHistoryByPk?
    deleteHistoryAttendanceHistoryByPk,
    String? $__typename,
  }) => _res;

  CopyWith_Mutation_unmarkAttendance_deleteHistoryAttendanceHistoryByPk<TRes>
  get deleteHistoryAttendanceHistoryByPk =>
      CopyWith_Mutation_unmarkAttendance_deleteHistoryAttendanceHistoryByPk.stub(
        _res,
      );
}

const documentNodeMutationunmarkAttendance = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'unmarkAttendance'),
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
            name: NameNode(value: 'deleteHistoryAttendanceHistoryByPk'),
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

class Mutation_unmarkAttendance_deleteHistoryAttendanceHistoryByPk {
  Mutation_unmarkAttendance_deleteHistoryAttendanceHistoryByPk({
    required this.id,
    required this.meetingId,
    required this.personId,
    this.$__typename = 'HistoryAttendanceHistory',
  });

  factory Mutation_unmarkAttendance_deleteHistoryAttendanceHistoryByPk.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$meetingId = json['meetingId'];
    final l$personId = json['personId'];
    final l$$__typename = json['__typename'];
    return Mutation_unmarkAttendance_deleteHistoryAttendanceHistoryByPk(
      id: stringToUuid(l$id),
      meetingId: stringToUuid(l$meetingId),
      personId: stringToUuid(l$personId),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final UuidValue meetingId;

  final UuidValue personId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$meetingId = meetingId;
    _resultData['meetingId'] = uuidToString(l$meetingId);
    final l$personId = personId;
    _resultData['personId'] = uuidToString(l$personId);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$meetingId = meetingId;
    final l$personId = personId;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$meetingId, l$personId, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation_unmarkAttendance_deleteHistoryAttendanceHistoryByPk ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Mutation_unmarkAttendance_deleteHistoryAttendanceHistoryByPk
    on Mutation_unmarkAttendance_deleteHistoryAttendanceHistoryByPk {
  CopyWith_Mutation_unmarkAttendance_deleteHistoryAttendanceHistoryByPk<
    Mutation_unmarkAttendance_deleteHistoryAttendanceHistoryByPk
  >
  get copyWith =>
      CopyWith_Mutation_unmarkAttendance_deleteHistoryAttendanceHistoryByPk(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Mutation_unmarkAttendance_deleteHistoryAttendanceHistoryByPk<
  TRes
> {
  factory CopyWith_Mutation_unmarkAttendance_deleteHistoryAttendanceHistoryByPk(
    Mutation_unmarkAttendance_deleteHistoryAttendanceHistoryByPk instance,
    TRes Function(Mutation_unmarkAttendance_deleteHistoryAttendanceHistoryByPk)
    then,
  ) = _CopyWithImpl_Mutation_unmarkAttendance_deleteHistoryAttendanceHistoryByPk;

  factory CopyWith_Mutation_unmarkAttendance_deleteHistoryAttendanceHistoryByPk.stub(
    TRes res,
  ) = _CopyWithStubImpl_Mutation_unmarkAttendance_deleteHistoryAttendanceHistoryByPk;

  TRes call({
    UuidValue? id,
    UuidValue? meetingId,
    UuidValue? personId,
    String? $__typename,
  });
}

class _CopyWithImpl_Mutation_unmarkAttendance_deleteHistoryAttendanceHistoryByPk<
  TRes
>
    implements
        CopyWith_Mutation_unmarkAttendance_deleteHistoryAttendanceHistoryByPk<
          TRes
        > {
  _CopyWithImpl_Mutation_unmarkAttendance_deleteHistoryAttendanceHistoryByPk(
    this._instance,
    this._then,
  );

  final Mutation_unmarkAttendance_deleteHistoryAttendanceHistoryByPk _instance;

  final TRes Function(
    Mutation_unmarkAttendance_deleteHistoryAttendanceHistoryByPk,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? meetingId = _undefined,
    Object? personId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_unmarkAttendance_deleteHistoryAttendanceHistoryByPk(
      id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
      meetingId: meetingId == _undefined || meetingId == null
          ? _instance.meetingId
          : (meetingId as UuidValue),
      personId: personId == _undefined || personId == null
          ? _instance.personId
          : (personId as UuidValue),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Mutation_unmarkAttendance_deleteHistoryAttendanceHistoryByPk<
  TRes
>
    implements
        CopyWith_Mutation_unmarkAttendance_deleteHistoryAttendanceHistoryByPk<
          TRes
        > {
  _CopyWithStubImpl_Mutation_unmarkAttendance_deleteHistoryAttendanceHistoryByPk(
    this._res,
  );

  TRes _res;

  call({
    UuidValue? id,
    UuidValue? meetingId,
    UuidValue? personId,
    String? $__typename,
  }) => _res;
}

class Variables_Mutation_unmarkAttendanceBy {
  factory Variables_Mutation_unmarkAttendanceBy({
    required UuidValue meetingId,
    required UuidValue personId,
    required bool asServant,
  }) => Variables_Mutation_unmarkAttendanceBy._({
    r'meetingId': meetingId,
    r'personId': personId,
    r'asServant': asServant,
  });

  Variables_Mutation_unmarkAttendanceBy._(this._$data);

  factory Variables_Mutation_unmarkAttendanceBy.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$meetingId = data['meetingId'];
    result$data['meetingId'] = stringToUuid(l$meetingId);
    final l$personId = data['personId'];
    result$data['personId'] = stringToUuid(l$personId);
    final l$asServant = data['asServant'];
    result$data['asServant'] = (l$asServant as bool);
    return Variables_Mutation_unmarkAttendanceBy._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get meetingId => (_$data['meetingId'] as UuidValue);

  UuidValue get personId => (_$data['personId'] as UuidValue);

  bool get asServant => (_$data['asServant'] as bool);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$meetingId = meetingId;
    result$data['meetingId'] = uuidToString(l$meetingId);
    final l$personId = personId;
    result$data['personId'] = uuidToString(l$personId);
    final l$asServant = asServant;
    result$data['asServant'] = l$asServant;
    return result$data;
  }

  CopyWith_Variables_Mutation_unmarkAttendanceBy<
    Variables_Mutation_unmarkAttendanceBy
  >
  get copyWith =>
      CopyWith_Variables_Mutation_unmarkAttendanceBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Mutation_unmarkAttendanceBy ||
        runtimeType != other.runtimeType) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$meetingId = meetingId;
    final l$personId = personId;
    final l$asServant = asServant;
    return Object.hashAll([l$meetingId, l$personId, l$asServant]);
  }
}

abstract class CopyWith_Variables_Mutation_unmarkAttendanceBy<TRes> {
  factory CopyWith_Variables_Mutation_unmarkAttendanceBy(
    Variables_Mutation_unmarkAttendanceBy instance,
    TRes Function(Variables_Mutation_unmarkAttendanceBy) then,
  ) = _CopyWithImpl_Variables_Mutation_unmarkAttendanceBy;

  factory CopyWith_Variables_Mutation_unmarkAttendanceBy.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_unmarkAttendanceBy;

  TRes call({UuidValue? meetingId, UuidValue? personId, bool? asServant});
}

class _CopyWithImpl_Variables_Mutation_unmarkAttendanceBy<TRes>
    implements CopyWith_Variables_Mutation_unmarkAttendanceBy<TRes> {
  _CopyWithImpl_Variables_Mutation_unmarkAttendanceBy(
    this._instance,
    this._then,
  );

  final Variables_Mutation_unmarkAttendanceBy _instance;

  final TRes Function(Variables_Mutation_unmarkAttendanceBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? meetingId = _undefined,
    Object? personId = _undefined,
    Object? asServant = _undefined,
  }) => _then(
    Variables_Mutation_unmarkAttendanceBy._({
      ..._instance._$data,
      if (meetingId != _undefined && meetingId != null)
        'meetingId': (meetingId as UuidValue),
      if (personId != _undefined && personId != null)
        'personId': (personId as UuidValue),
      if (asServant != _undefined && asServant != null)
        'asServant': (asServant as bool),
    }),
  );
}

class _CopyWithStubImpl_Variables_Mutation_unmarkAttendanceBy<TRes>
    implements CopyWith_Variables_Mutation_unmarkAttendanceBy<TRes> {
  _CopyWithStubImpl_Variables_Mutation_unmarkAttendanceBy(this._res);

  TRes _res;

  call({UuidValue? meetingId, UuidValue? personId, bool? asServant}) => _res;
}

class Mutation_unmarkAttendanceBy {
  Mutation_unmarkAttendanceBy({
    this.deleteHistoryAttendanceHistory,
    this.$__typename = 'mutation_root',
  });

  factory Mutation_unmarkAttendanceBy.fromJson(Map<String, dynamic> json) {
    final l$deleteHistoryAttendanceHistory =
        json['deleteHistoryAttendanceHistory'];
    final l$$__typename = json['__typename'];
    return Mutation_unmarkAttendanceBy(
      deleteHistoryAttendanceHistory: l$deleteHistoryAttendanceHistory == null
          ? null
          : Mutation_unmarkAttendanceBy_deleteHistoryAttendanceHistory.fromJson(
              (l$deleteHistoryAttendanceHistory as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation_unmarkAttendanceBy_deleteHistoryAttendanceHistory?
  deleteHistoryAttendanceHistory;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleteHistoryAttendanceHistory = deleteHistoryAttendanceHistory;
    _resultData['deleteHistoryAttendanceHistory'] =
        l$deleteHistoryAttendanceHistory?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleteHistoryAttendanceHistory = deleteHistoryAttendanceHistory;
    final l$$__typename = $__typename;
    return Object.hashAll([l$deleteHistoryAttendanceHistory, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_unmarkAttendanceBy ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteHistoryAttendanceHistory = deleteHistoryAttendanceHistory;
    final lOther$deleteHistoryAttendanceHistory =
        other.deleteHistoryAttendanceHistory;
    if (l$deleteHistoryAttendanceHistory !=
        lOther$deleteHistoryAttendanceHistory) {
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

extension UtilityExtension_Mutation_unmarkAttendanceBy
    on Mutation_unmarkAttendanceBy {
  CopyWith_Mutation_unmarkAttendanceBy<Mutation_unmarkAttendanceBy>
  get copyWith => CopyWith_Mutation_unmarkAttendanceBy(this, (i) => i);
}

abstract class CopyWith_Mutation_unmarkAttendanceBy<TRes> {
  factory CopyWith_Mutation_unmarkAttendanceBy(
    Mutation_unmarkAttendanceBy instance,
    TRes Function(Mutation_unmarkAttendanceBy) then,
  ) = _CopyWithImpl_Mutation_unmarkAttendanceBy;

  factory CopyWith_Mutation_unmarkAttendanceBy.stub(TRes res) =
      _CopyWithStubImpl_Mutation_unmarkAttendanceBy;

  TRes call({
    Mutation_unmarkAttendanceBy_deleteHistoryAttendanceHistory?
    deleteHistoryAttendanceHistory,
    String? $__typename,
  });
  CopyWith_Mutation_unmarkAttendanceBy_deleteHistoryAttendanceHistory<TRes>
  get deleteHistoryAttendanceHistory;
}

class _CopyWithImpl_Mutation_unmarkAttendanceBy<TRes>
    implements CopyWith_Mutation_unmarkAttendanceBy<TRes> {
  _CopyWithImpl_Mutation_unmarkAttendanceBy(this._instance, this._then);

  final Mutation_unmarkAttendanceBy _instance;

  final TRes Function(Mutation_unmarkAttendanceBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deleteHistoryAttendanceHistory = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_unmarkAttendanceBy(
      deleteHistoryAttendanceHistory:
          deleteHistoryAttendanceHistory == _undefined
          ? _instance.deleteHistoryAttendanceHistory
          : (deleteHistoryAttendanceHistory
                as Mutation_unmarkAttendanceBy_deleteHistoryAttendanceHistory?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Mutation_unmarkAttendanceBy_deleteHistoryAttendanceHistory<TRes>
  get deleteHistoryAttendanceHistory {
    final local$deleteHistoryAttendanceHistory =
        _instance.deleteHistoryAttendanceHistory;
    return local$deleteHistoryAttendanceHistory == null
        ? CopyWith_Mutation_unmarkAttendanceBy_deleteHistoryAttendanceHistory.stub(
            _then(_instance),
          )
        : CopyWith_Mutation_unmarkAttendanceBy_deleteHistoryAttendanceHistory(
            local$deleteHistoryAttendanceHistory,
            (e) => call(deleteHistoryAttendanceHistory: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_unmarkAttendanceBy<TRes>
    implements CopyWith_Mutation_unmarkAttendanceBy<TRes> {
  _CopyWithStubImpl_Mutation_unmarkAttendanceBy(this._res);

  TRes _res;

  call({
    Mutation_unmarkAttendanceBy_deleteHistoryAttendanceHistory?
    deleteHistoryAttendanceHistory,
    String? $__typename,
  }) => _res;

  CopyWith_Mutation_unmarkAttendanceBy_deleteHistoryAttendanceHistory<TRes>
  get deleteHistoryAttendanceHistory =>
      CopyWith_Mutation_unmarkAttendanceBy_deleteHistoryAttendanceHistory.stub(
        _res,
      );
}

const documentNodeMutationunmarkAttendanceBy = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'unmarkAttendanceBy'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'meetingId')),
          type: NamedTypeNode(name: NameNode(value: 'uuid'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'personId')),
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
            name: NameNode(value: 'deleteHistoryAttendanceHistory'),
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
                  name: NameNode(value: 'returning'),
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

class Mutation_unmarkAttendanceBy_deleteHistoryAttendanceHistory {
  Mutation_unmarkAttendanceBy_deleteHistoryAttendanceHistory({
    required this.returning,
    this.$__typename = 'HistoryAttendanceHistoryMutationResponse',
  });

  factory Mutation_unmarkAttendanceBy_deleteHistoryAttendanceHistory.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$returning = json['returning'];
    final l$$__typename = json['__typename'];
    return Mutation_unmarkAttendanceBy_deleteHistoryAttendanceHistory(
      returning: (l$returning as List<dynamic>)
          .map(
            (e) =>
                Mutation_unmarkAttendanceBy_deleteHistoryAttendanceHistory_returning.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation_unmarkAttendanceBy_deleteHistoryAttendanceHistory_returning
  >
  returning;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$returning = returning;
    _resultData['returning'] = l$returning.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$returning = returning;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$returning.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_unmarkAttendanceBy_deleteHistoryAttendanceHistory ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$returning = returning;
    final lOther$returning = other.returning;
    if (l$returning.length != lOther$returning.length) {
      return false;
    }
    for (int i = 0; i < l$returning.length; i++) {
      final l$returning$entry = l$returning[i];
      final lOther$returning$entry = lOther$returning[i];
      if (l$returning$entry != lOther$returning$entry) {
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

extension UtilityExtension_Mutation_unmarkAttendanceBy_deleteHistoryAttendanceHistory
    on Mutation_unmarkAttendanceBy_deleteHistoryAttendanceHistory {
  CopyWith_Mutation_unmarkAttendanceBy_deleteHistoryAttendanceHistory<
    Mutation_unmarkAttendanceBy_deleteHistoryAttendanceHistory
  >
  get copyWith =>
      CopyWith_Mutation_unmarkAttendanceBy_deleteHistoryAttendanceHistory(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Mutation_unmarkAttendanceBy_deleteHistoryAttendanceHistory<
  TRes
> {
  factory CopyWith_Mutation_unmarkAttendanceBy_deleteHistoryAttendanceHistory(
    Mutation_unmarkAttendanceBy_deleteHistoryAttendanceHistory instance,
    TRes Function(Mutation_unmarkAttendanceBy_deleteHistoryAttendanceHistory)
    then,
  ) = _CopyWithImpl_Mutation_unmarkAttendanceBy_deleteHistoryAttendanceHistory;

  factory CopyWith_Mutation_unmarkAttendanceBy_deleteHistoryAttendanceHistory.stub(
    TRes res,
  ) = _CopyWithStubImpl_Mutation_unmarkAttendanceBy_deleteHistoryAttendanceHistory;

  TRes call({
    List<Mutation_unmarkAttendanceBy_deleteHistoryAttendanceHistory_returning>?
    returning,
    String? $__typename,
  });
  TRes returning(
    Iterable<
      Mutation_unmarkAttendanceBy_deleteHistoryAttendanceHistory_returning
    >
    Function(
      Iterable<
        CopyWith_Mutation_unmarkAttendanceBy_deleteHistoryAttendanceHistory_returning<
          Mutation_unmarkAttendanceBy_deleteHistoryAttendanceHistory_returning
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl_Mutation_unmarkAttendanceBy_deleteHistoryAttendanceHistory<
  TRes
>
    implements
        CopyWith_Mutation_unmarkAttendanceBy_deleteHistoryAttendanceHistory<
          TRes
        > {
  _CopyWithImpl_Mutation_unmarkAttendanceBy_deleteHistoryAttendanceHistory(
    this._instance,
    this._then,
  );

  final Mutation_unmarkAttendanceBy_deleteHistoryAttendanceHistory _instance;

  final TRes Function(
    Mutation_unmarkAttendanceBy_deleteHistoryAttendanceHistory,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? returning = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_unmarkAttendanceBy_deleteHistoryAttendanceHistory(
      returning: returning == _undefined || returning == null
          ? _instance.returning
          : (returning
                as List<
                  Mutation_unmarkAttendanceBy_deleteHistoryAttendanceHistory_returning
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes returning(
    Iterable<
      Mutation_unmarkAttendanceBy_deleteHistoryAttendanceHistory_returning
    >
    Function(
      Iterable<
        CopyWith_Mutation_unmarkAttendanceBy_deleteHistoryAttendanceHistory_returning<
          Mutation_unmarkAttendanceBy_deleteHistoryAttendanceHistory_returning
        >
      >,
    )
    _fn,
  ) => call(
    returning: _fn(
      _instance.returning.map(
        (e) =>
            CopyWith_Mutation_unmarkAttendanceBy_deleteHistoryAttendanceHistory_returning(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl_Mutation_unmarkAttendanceBy_deleteHistoryAttendanceHistory<
  TRes
>
    implements
        CopyWith_Mutation_unmarkAttendanceBy_deleteHistoryAttendanceHistory<
          TRes
        > {
  _CopyWithStubImpl_Mutation_unmarkAttendanceBy_deleteHistoryAttendanceHistory(
    this._res,
  );

  TRes _res;

  call({
    List<Mutation_unmarkAttendanceBy_deleteHistoryAttendanceHistory_returning>?
    returning,
    String? $__typename,
  }) => _res;

  returning(_fn) => _res;
}

class Mutation_unmarkAttendanceBy_deleteHistoryAttendanceHistory_returning {
  Mutation_unmarkAttendanceBy_deleteHistoryAttendanceHistory_returning({
    required this.id,
    required this.meetingId,
    required this.personId,
    this.$__typename = 'HistoryAttendanceHistory',
  });

  factory Mutation_unmarkAttendanceBy_deleteHistoryAttendanceHistory_returning.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$meetingId = json['meetingId'];
    final l$personId = json['personId'];
    final l$$__typename = json['__typename'];
    return Mutation_unmarkAttendanceBy_deleteHistoryAttendanceHistory_returning(
      id: stringToUuid(l$id),
      meetingId: stringToUuid(l$meetingId),
      personId: stringToUuid(l$personId),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final UuidValue meetingId;

  final UuidValue personId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$meetingId = meetingId;
    _resultData['meetingId'] = uuidToString(l$meetingId);
    final l$personId = personId;
    _resultData['personId'] = uuidToString(l$personId);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$meetingId = meetingId;
    final l$personId = personId;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$meetingId, l$personId, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation_unmarkAttendanceBy_deleteHistoryAttendanceHistory_returning ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Mutation_unmarkAttendanceBy_deleteHistoryAttendanceHistory_returning
    on Mutation_unmarkAttendanceBy_deleteHistoryAttendanceHistory_returning {
  CopyWith_Mutation_unmarkAttendanceBy_deleteHistoryAttendanceHistory_returning<
    Mutation_unmarkAttendanceBy_deleteHistoryAttendanceHistory_returning
  >
  get copyWith =>
      CopyWith_Mutation_unmarkAttendanceBy_deleteHistoryAttendanceHistory_returning(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Mutation_unmarkAttendanceBy_deleteHistoryAttendanceHistory_returning<
  TRes
> {
  factory CopyWith_Mutation_unmarkAttendanceBy_deleteHistoryAttendanceHistory_returning(
    Mutation_unmarkAttendanceBy_deleteHistoryAttendanceHistory_returning
    instance,
    TRes Function(
      Mutation_unmarkAttendanceBy_deleteHistoryAttendanceHistory_returning,
    )
    then,
  ) = _CopyWithImpl_Mutation_unmarkAttendanceBy_deleteHistoryAttendanceHistory_returning;

  factory CopyWith_Mutation_unmarkAttendanceBy_deleteHistoryAttendanceHistory_returning.stub(
    TRes res,
  ) = _CopyWithStubImpl_Mutation_unmarkAttendanceBy_deleteHistoryAttendanceHistory_returning;

  TRes call({
    UuidValue? id,
    UuidValue? meetingId,
    UuidValue? personId,
    String? $__typename,
  });
}

class _CopyWithImpl_Mutation_unmarkAttendanceBy_deleteHistoryAttendanceHistory_returning<
  TRes
>
    implements
        CopyWith_Mutation_unmarkAttendanceBy_deleteHistoryAttendanceHistory_returning<
          TRes
        > {
  _CopyWithImpl_Mutation_unmarkAttendanceBy_deleteHistoryAttendanceHistory_returning(
    this._instance,
    this._then,
  );

  final Mutation_unmarkAttendanceBy_deleteHistoryAttendanceHistory_returning
  _instance;

  final TRes Function(
    Mutation_unmarkAttendanceBy_deleteHistoryAttendanceHistory_returning,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? meetingId = _undefined,
    Object? personId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_unmarkAttendanceBy_deleteHistoryAttendanceHistory_returning(
      id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
      meetingId: meetingId == _undefined || meetingId == null
          ? _instance.meetingId
          : (meetingId as UuidValue),
      personId: personId == _undefined || personId == null
          ? _instance.personId
          : (personId as UuidValue),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Mutation_unmarkAttendanceBy_deleteHistoryAttendanceHistory_returning<
  TRes
>
    implements
        CopyWith_Mutation_unmarkAttendanceBy_deleteHistoryAttendanceHistory_returning<
          TRes
        > {
  _CopyWithStubImpl_Mutation_unmarkAttendanceBy_deleteHistoryAttendanceHistory_returning(
    this._res,
  );

  TRes _res;

  call({
    UuidValue? id,
    UuidValue? meetingId,
    UuidValue? personId,
    String? $__typename,
  }) => _res;
}
