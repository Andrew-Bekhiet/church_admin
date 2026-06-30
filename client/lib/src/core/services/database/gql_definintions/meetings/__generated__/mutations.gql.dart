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
    required this.datetime,
    required this.asServant,
    required this.recordedBy,
    this.$__typename = 'HistoryAttendanceHistory',
  });

  factory Mutation_unmarkAttendance_deleteHistoryAttendanceHistoryByPk.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$meetingId = json['meetingId'];
    final l$personId = json['personId'];
    final l$datetime = json['datetime'];
    final l$asServant = json['asServant'];
    final l$recordedBy = json['recordedBy'];
    final l$$__typename = json['__typename'];
    return Mutation_unmarkAttendance_deleteHistoryAttendanceHistoryByPk(
      id: stringToUuid(l$id),
      meetingId: stringToUuid(l$meetingId),
      personId: stringToUuid(l$personId),
      datetime: tstzFromString(l$datetime),
      asServant: (l$asServant as bool),
      recordedBy: stringToUuid(l$recordedBy),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final UuidValue meetingId;

  final UuidValue personId;

  final DateTime datetime;

  final bool asServant;

  final UuidValue recordedBy;

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
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$meetingId,
      l$personId,
      l$datetime,
      l$asServant,
      l$recordedBy,
      l$$__typename,
    ]);
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
    DateTime? datetime,
    bool? asServant,
    UuidValue? recordedBy,
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
    Object? datetime = _undefined,
    Object? asServant = _undefined,
    Object? recordedBy = _undefined,
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
      datetime: datetime == _undefined || datetime == null
          ? _instance.datetime
          : (datetime as DateTime),
      asServant: asServant == _undefined || asServant == null
          ? _instance.asServant
          : (asServant as bool),
      recordedBy: recordedBy == _undefined || recordedBy == null
          ? _instance.recordedBy
          : (recordedBy as UuidValue),
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
    DateTime? datetime,
    bool? asServant,
    UuidValue? recordedBy,
    String? $__typename,
  }) => _res;
}
