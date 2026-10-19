import '../../../../../graphql/__generated__/schema.graphql.dart';
import '../../gql/__generated__/fragments.graphql.dart';
import '../../metadata/study_years/__generated__/fragments.graphql.dart';
import 'fragments.graphql.dart';

import 'package:gql/ast.dart';

class Variables_Mutation_createMeeting {
  factory Variables_Mutation_createMeeting({
    required Input_CreateMeetingInput input,
  }) => Variables_Mutation_createMeeting._({r'input': input});

  Variables_Mutation_createMeeting._(this._$data);

  factory Variables_Mutation_createMeeting.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input_CreateMeetingInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables_Mutation_createMeeting._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_CreateMeetingInput get input =>
      (_$data['input'] as Input_CreateMeetingInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith_Variables_Mutation_createMeeting<Variables_Mutation_createMeeting>
  get copyWith => CopyWith_Variables_Mutation_createMeeting(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Mutation_createMeeting ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$input = input;
    return Object.hashAll([l$input]);
  }
}

abstract class CopyWith_Variables_Mutation_createMeeting<TRes> {
  factory CopyWith_Variables_Mutation_createMeeting(
    Variables_Mutation_createMeeting instance,
    TRes Function(Variables_Mutation_createMeeting) then,
  ) = _CopyWithImpl_Variables_Mutation_createMeeting;

  factory CopyWith_Variables_Mutation_createMeeting.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_createMeeting;

  TRes call({Input_CreateMeetingInput? input});
}

class _CopyWithImpl_Variables_Mutation_createMeeting<TRes>
    implements CopyWith_Variables_Mutation_createMeeting<TRes> {
  _CopyWithImpl_Variables_Mutation_createMeeting(this._instance, this._then);

  final Variables_Mutation_createMeeting _instance;

  final TRes Function(Variables_Mutation_createMeeting) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables_Mutation_createMeeting._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input_CreateMeetingInput),
    }),
  );
}

class _CopyWithStubImpl_Variables_Mutation_createMeeting<TRes>
    implements CopyWith_Variables_Mutation_createMeeting<TRes> {
  _CopyWithStubImpl_Variables_Mutation_createMeeting(this._res);

  TRes _res;

  call({Input_CreateMeetingInput? input}) => _res;
}

class Mutation_createMeeting {
  Mutation_createMeeting({
    this.createMeeting,
    this.$__typename = 'RootMutationType',
  });

  factory Mutation_createMeeting.fromJson(Map<String, dynamic> json) {
    final l$createMeeting = json['createMeeting'];
    final l$$__typename = json['__typename'];
    return Mutation_createMeeting(
      createMeeting: l$createMeeting == null
          ? null
          : Mutation_createMeeting_createMeeting.fromJson(
              (l$createMeeting as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation_createMeeting_createMeeting? createMeeting;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createMeeting = createMeeting;
    _resultData['createMeeting'] = l$createMeeting?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createMeeting = createMeeting;
    final l$$__typename = $__typename;
    return Object.hashAll([l$createMeeting, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_createMeeting || runtimeType != other.runtimeType) {
      return false;
    }
    final l$createMeeting = createMeeting;
    final lOther$createMeeting = other.createMeeting;
    if (l$createMeeting != lOther$createMeeting) {
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

extension UtilityExtension_Mutation_createMeeting on Mutation_createMeeting {
  CopyWith_Mutation_createMeeting<Mutation_createMeeting> get copyWith =>
      CopyWith_Mutation_createMeeting(this, (i) => i);
}

abstract class CopyWith_Mutation_createMeeting<TRes> {
  factory CopyWith_Mutation_createMeeting(
    Mutation_createMeeting instance,
    TRes Function(Mutation_createMeeting) then,
  ) = _CopyWithImpl_Mutation_createMeeting;

  factory CopyWith_Mutation_createMeeting.stub(TRes res) =
      _CopyWithStubImpl_Mutation_createMeeting;

  TRes call({
    Mutation_createMeeting_createMeeting? createMeeting,
    String? $__typename,
  });
  CopyWith_Mutation_createMeeting_createMeeting<TRes> get createMeeting;
}

class _CopyWithImpl_Mutation_createMeeting<TRes>
    implements CopyWith_Mutation_createMeeting<TRes> {
  _CopyWithImpl_Mutation_createMeeting(this._instance, this._then);

  final Mutation_createMeeting _instance;

  final TRes Function(Mutation_createMeeting) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createMeeting = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_createMeeting(
      createMeeting: createMeeting == _undefined
          ? _instance.createMeeting
          : (createMeeting as Mutation_createMeeting_createMeeting?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Mutation_createMeeting_createMeeting<TRes> get createMeeting {
    final local$createMeeting = _instance.createMeeting;
    return local$createMeeting == null
        ? CopyWith_Mutation_createMeeting_createMeeting.stub(_then(_instance))
        : CopyWith_Mutation_createMeeting_createMeeting(
            local$createMeeting,
            (e) => call(createMeeting: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_createMeeting<TRes>
    implements CopyWith_Mutation_createMeeting<TRes> {
  _CopyWithStubImpl_Mutation_createMeeting(this._res);

  TRes _res;

  call({
    Mutation_createMeeting_createMeeting? createMeeting,
    String? $__typename,
  }) => _res;

  CopyWith_Mutation_createMeeting_createMeeting<TRes> get createMeeting =>
      CopyWith_Mutation_createMeeting_createMeeting.stub(_res);
}

const documentNodeMutationcreateMeeting = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'createMeeting'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'CreateMeetingInput'),
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
            name: NameNode(value: 'createMeeting'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: VariableNode(name: NameNode(value: 'input')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'result'),
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

class Mutation_createMeeting_createMeeting {
  Mutation_createMeeting_createMeeting({
    this.result,
    this.$__typename = 'CreateMeetingResult',
  });

  factory Mutation_createMeeting_createMeeting.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$result = json['result'];
    final l$$__typename = json['__typename'];
    return Mutation_createMeeting_createMeeting(
      result: l$result == null
          ? null
          : Fragment_Meeting.fromJson((l$result as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_Meeting? result;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$result = result;
    _resultData['result'] = l$result?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$result = result;
    final l$$__typename = $__typename;
    return Object.hashAll([l$result, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_createMeeting_createMeeting ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$result = result;
    final lOther$result = other.result;
    if (l$result != lOther$result) {
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

extension UtilityExtension_Mutation_createMeeting_createMeeting
    on Mutation_createMeeting_createMeeting {
  CopyWith_Mutation_createMeeting_createMeeting<
    Mutation_createMeeting_createMeeting
  >
  get copyWith => CopyWith_Mutation_createMeeting_createMeeting(this, (i) => i);
}

abstract class CopyWith_Mutation_createMeeting_createMeeting<TRes> {
  factory CopyWith_Mutation_createMeeting_createMeeting(
    Mutation_createMeeting_createMeeting instance,
    TRes Function(Mutation_createMeeting_createMeeting) then,
  ) = _CopyWithImpl_Mutation_createMeeting_createMeeting;

  factory CopyWith_Mutation_createMeeting_createMeeting.stub(TRes res) =
      _CopyWithStubImpl_Mutation_createMeeting_createMeeting;

  TRes call({Fragment_Meeting? result, String? $__typename});
  CopyWith_Fragment_Meeting<TRes> get result;
}

class _CopyWithImpl_Mutation_createMeeting_createMeeting<TRes>
    implements CopyWith_Mutation_createMeeting_createMeeting<TRes> {
  _CopyWithImpl_Mutation_createMeeting_createMeeting(
    this._instance,
    this._then,
  );

  final Mutation_createMeeting_createMeeting _instance;

  final TRes Function(Mutation_createMeeting_createMeeting) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? result = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation_createMeeting_createMeeting(
          result: result == _undefined
              ? _instance.result
              : (result as Fragment_Meeting?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith_Fragment_Meeting<TRes> get result {
    final local$result = _instance.result;
    return local$result == null
        ? CopyWith_Fragment_Meeting.stub(_then(_instance))
        : CopyWith_Fragment_Meeting(local$result, (e) => call(result: e));
  }
}

class _CopyWithStubImpl_Mutation_createMeeting_createMeeting<TRes>
    implements CopyWith_Mutation_createMeeting_createMeeting<TRes> {
  _CopyWithStubImpl_Mutation_createMeeting_createMeeting(this._res);

  TRes _res;

  call({Fragment_Meeting? result, String? $__typename}) => _res;

  CopyWith_Fragment_Meeting<TRes> get result =>
      CopyWith_Fragment_Meeting.stub(_res);
}

class Variables_Mutation_updateMeeting {
  factory Variables_Mutation_updateMeeting({
    required String id,
    Input_UpdateMeetingInput? input,
  }) => Variables_Mutation_updateMeeting._({
    r'id': id,
    if (input != null) r'input': input,
  });

  Variables_Mutation_updateMeeting._(this._$data);

  factory Variables_Mutation_updateMeeting.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    if (data.containsKey('input')) {
      final l$input = data['input'];
      result$data['input'] = l$input == null
          ? null
          : Input_UpdateMeetingInput.fromJson(
              (l$input as Map<String, dynamic>),
            );
    }
    return Variables_Mutation_updateMeeting._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Input_UpdateMeetingInput? get input =>
      (_$data['input'] as Input_UpdateMeetingInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    if (_$data.containsKey('input')) {
      final l$input = input;
      result$data['input'] = l$input?.toJson();
    }
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
    final l$input = input;
    final lOther$input = other.input;
    if (_$data.containsKey('input') != other._$data.containsKey('input')) {
      return false;
    }
    if (l$input != lOther$input) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$input = input;
    return Object.hashAll([
      l$id,
      _$data.containsKey('input') ? l$input : const {},
    ]);
  }
}

abstract class CopyWith_Variables_Mutation_updateMeeting<TRes> {
  factory CopyWith_Variables_Mutation_updateMeeting(
    Variables_Mutation_updateMeeting instance,
    TRes Function(Variables_Mutation_updateMeeting) then,
  ) = _CopyWithImpl_Variables_Mutation_updateMeeting;

  factory CopyWith_Variables_Mutation_updateMeeting.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_updateMeeting;

  TRes call({String? id, Input_UpdateMeetingInput? input});
}

class _CopyWithImpl_Variables_Mutation_updateMeeting<TRes>
    implements CopyWith_Variables_Mutation_updateMeeting<TRes> {
  _CopyWithImpl_Variables_Mutation_updateMeeting(this._instance, this._then);

  final Variables_Mutation_updateMeeting _instance;

  final TRes Function(Variables_Mutation_updateMeeting) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined, Object? input = _undefined}) => _then(
    Variables_Mutation_updateMeeting._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as String),
      if (input != _undefined) 'input': (input as Input_UpdateMeetingInput?),
    }),
  );
}

class _CopyWithStubImpl_Variables_Mutation_updateMeeting<TRes>
    implements CopyWith_Variables_Mutation_updateMeeting<TRes> {
  _CopyWithStubImpl_Variables_Mutation_updateMeeting(this._res);

  TRes _res;

  call({String? id, Input_UpdateMeetingInput? input}) => _res;
}

class Mutation_updateMeeting {
  Mutation_updateMeeting({
    this.updateMeeting,
    this.$__typename = 'RootMutationType',
  });

  factory Mutation_updateMeeting.fromJson(Map<String, dynamic> json) {
    final l$updateMeeting = json['updateMeeting'];
    final l$$__typename = json['__typename'];
    return Mutation_updateMeeting(
      updateMeeting: l$updateMeeting == null
          ? null
          : Mutation_updateMeeting_updateMeeting.fromJson(
              (l$updateMeeting as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation_updateMeeting_updateMeeting? updateMeeting;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateMeeting = updateMeeting;
    _resultData['updateMeeting'] = l$updateMeeting?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateMeeting = updateMeeting;
    final l$$__typename = $__typename;
    return Object.hashAll([l$updateMeeting, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_updateMeeting || runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateMeeting = updateMeeting;
    final lOther$updateMeeting = other.updateMeeting;
    if (l$updateMeeting != lOther$updateMeeting) {
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

  TRes call({
    Mutation_updateMeeting_updateMeeting? updateMeeting,
    String? $__typename,
  });
  CopyWith_Mutation_updateMeeting_updateMeeting<TRes> get updateMeeting;
}

class _CopyWithImpl_Mutation_updateMeeting<TRes>
    implements CopyWith_Mutation_updateMeeting<TRes> {
  _CopyWithImpl_Mutation_updateMeeting(this._instance, this._then);

  final Mutation_updateMeeting _instance;

  final TRes Function(Mutation_updateMeeting) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateMeeting = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_updateMeeting(
      updateMeeting: updateMeeting == _undefined
          ? _instance.updateMeeting
          : (updateMeeting as Mutation_updateMeeting_updateMeeting?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Mutation_updateMeeting_updateMeeting<TRes> get updateMeeting {
    final local$updateMeeting = _instance.updateMeeting;
    return local$updateMeeting == null
        ? CopyWith_Mutation_updateMeeting_updateMeeting.stub(_then(_instance))
        : CopyWith_Mutation_updateMeeting_updateMeeting(
            local$updateMeeting,
            (e) => call(updateMeeting: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_updateMeeting<TRes>
    implements CopyWith_Mutation_updateMeeting<TRes> {
  _CopyWithStubImpl_Mutation_updateMeeting(this._res);

  TRes _res;

  call({
    Mutation_updateMeeting_updateMeeting? updateMeeting,
    String? $__typename,
  }) => _res;

  CopyWith_Mutation_updateMeeting_updateMeeting<TRes> get updateMeeting =>
      CopyWith_Mutation_updateMeeting_updateMeeting.stub(_res);
}

const documentNodeMutationupdateMeeting = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'updateMeeting'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'id')),
          type: NamedTypeNode(name: NameNode(value: 'ID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'UpdateMeetingInput'),
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
            name: NameNode(value: 'updateMeeting'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'id'),
                value: VariableNode(name: NameNode(value: 'id')),
              ),
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: VariableNode(name: NameNode(value: 'input')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'result'),
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

class Mutation_updateMeeting_updateMeeting {
  Mutation_updateMeeting_updateMeeting({
    this.result,
    this.$__typename = 'UpdateMeetingResult',
  });

  factory Mutation_updateMeeting_updateMeeting.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$result = json['result'];
    final l$$__typename = json['__typename'];
    return Mutation_updateMeeting_updateMeeting(
      result: l$result == null
          ? null
          : Fragment_Meeting.fromJson((l$result as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_Meeting? result;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$result = result;
    _resultData['result'] = l$result?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$result = result;
    final l$$__typename = $__typename;
    return Object.hashAll([l$result, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_updateMeeting_updateMeeting ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$result = result;
    final lOther$result = other.result;
    if (l$result != lOther$result) {
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

extension UtilityExtension_Mutation_updateMeeting_updateMeeting
    on Mutation_updateMeeting_updateMeeting {
  CopyWith_Mutation_updateMeeting_updateMeeting<
    Mutation_updateMeeting_updateMeeting
  >
  get copyWith => CopyWith_Mutation_updateMeeting_updateMeeting(this, (i) => i);
}

abstract class CopyWith_Mutation_updateMeeting_updateMeeting<TRes> {
  factory CopyWith_Mutation_updateMeeting_updateMeeting(
    Mutation_updateMeeting_updateMeeting instance,
    TRes Function(Mutation_updateMeeting_updateMeeting) then,
  ) = _CopyWithImpl_Mutation_updateMeeting_updateMeeting;

  factory CopyWith_Mutation_updateMeeting_updateMeeting.stub(TRes res) =
      _CopyWithStubImpl_Mutation_updateMeeting_updateMeeting;

  TRes call({Fragment_Meeting? result, String? $__typename});
  CopyWith_Fragment_Meeting<TRes> get result;
}

class _CopyWithImpl_Mutation_updateMeeting_updateMeeting<TRes>
    implements CopyWith_Mutation_updateMeeting_updateMeeting<TRes> {
  _CopyWithImpl_Mutation_updateMeeting_updateMeeting(
    this._instance,
    this._then,
  );

  final Mutation_updateMeeting_updateMeeting _instance;

  final TRes Function(Mutation_updateMeeting_updateMeeting) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? result = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation_updateMeeting_updateMeeting(
          result: result == _undefined
              ? _instance.result
              : (result as Fragment_Meeting?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith_Fragment_Meeting<TRes> get result {
    final local$result = _instance.result;
    return local$result == null
        ? CopyWith_Fragment_Meeting.stub(_then(_instance))
        : CopyWith_Fragment_Meeting(local$result, (e) => call(result: e));
  }
}

class _CopyWithStubImpl_Mutation_updateMeeting_updateMeeting<TRes>
    implements CopyWith_Mutation_updateMeeting_updateMeeting<TRes> {
  _CopyWithStubImpl_Mutation_updateMeeting_updateMeeting(this._res);

  TRes _res;

  call({Fragment_Meeting? result, String? $__typename}) => _res;

  CopyWith_Fragment_Meeting<TRes> get result =>
      CopyWith_Fragment_Meeting.stub(_res);
}

class Variables_Mutation_markAttendance {
  factory Variables_Mutation_markAttendance({
    required Input_MarkAttendanceInput input,
  }) => Variables_Mutation_markAttendance._({r'input': input});

  Variables_Mutation_markAttendance._(this._$data);

  factory Variables_Mutation_markAttendance.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input_MarkAttendanceInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables_Mutation_markAttendance._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_MarkAttendanceInput get input =>
      (_$data['input'] as Input_MarkAttendanceInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
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
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$input = input;
    return Object.hashAll([l$input]);
  }
}

abstract class CopyWith_Variables_Mutation_markAttendance<TRes> {
  factory CopyWith_Variables_Mutation_markAttendance(
    Variables_Mutation_markAttendance instance,
    TRes Function(Variables_Mutation_markAttendance) then,
  ) = _CopyWithImpl_Variables_Mutation_markAttendance;

  factory CopyWith_Variables_Mutation_markAttendance.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_markAttendance;

  TRes call({Input_MarkAttendanceInput? input});
}

class _CopyWithImpl_Variables_Mutation_markAttendance<TRes>
    implements CopyWith_Variables_Mutation_markAttendance<TRes> {
  _CopyWithImpl_Variables_Mutation_markAttendance(this._instance, this._then);

  final Variables_Mutation_markAttendance _instance;

  final TRes Function(Variables_Mutation_markAttendance) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables_Mutation_markAttendance._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input_MarkAttendanceInput),
    }),
  );
}

class _CopyWithStubImpl_Variables_Mutation_markAttendance<TRes>
    implements CopyWith_Variables_Mutation_markAttendance<TRes> {
  _CopyWithStubImpl_Variables_Mutation_markAttendance(this._res);

  TRes _res;

  call({Input_MarkAttendanceInput? input}) => _res;
}

class Mutation_markAttendance {
  Mutation_markAttendance({
    this.markAttendance,
    this.$__typename = 'RootMutationType',
  });

  factory Mutation_markAttendance.fromJson(Map<String, dynamic> json) {
    final l$markAttendance = json['markAttendance'];
    final l$$__typename = json['__typename'];
    return Mutation_markAttendance(
      markAttendance: l$markAttendance == null
          ? null
          : Mutation_markAttendance_markAttendance.fromJson(
              (l$markAttendance as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation_markAttendance_markAttendance? markAttendance;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$markAttendance = markAttendance;
    _resultData['markAttendance'] = l$markAttendance?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$markAttendance = markAttendance;
    final l$$__typename = $__typename;
    return Object.hashAll([l$markAttendance, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_markAttendance || runtimeType != other.runtimeType) {
      return false;
    }
    final l$markAttendance = markAttendance;
    final lOther$markAttendance = other.markAttendance;
    if (l$markAttendance != lOther$markAttendance) {
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
    Mutation_markAttendance_markAttendance? markAttendance,
    String? $__typename,
  });
  CopyWith_Mutation_markAttendance_markAttendance<TRes> get markAttendance;
}

class _CopyWithImpl_Mutation_markAttendance<TRes>
    implements CopyWith_Mutation_markAttendance<TRes> {
  _CopyWithImpl_Mutation_markAttendance(this._instance, this._then);

  final Mutation_markAttendance _instance;

  final TRes Function(Mutation_markAttendance) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? markAttendance = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_markAttendance(
      markAttendance: markAttendance == _undefined
          ? _instance.markAttendance
          : (markAttendance as Mutation_markAttendance_markAttendance?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Mutation_markAttendance_markAttendance<TRes> get markAttendance {
    final local$markAttendance = _instance.markAttendance;
    return local$markAttendance == null
        ? CopyWith_Mutation_markAttendance_markAttendance.stub(_then(_instance))
        : CopyWith_Mutation_markAttendance_markAttendance(
            local$markAttendance,
            (e) => call(markAttendance: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_markAttendance<TRes>
    implements CopyWith_Mutation_markAttendance<TRes> {
  _CopyWithStubImpl_Mutation_markAttendance(this._res);

  TRes _res;

  call({
    Mutation_markAttendance_markAttendance? markAttendance,
    String? $__typename,
  }) => _res;

  CopyWith_Mutation_markAttendance_markAttendance<TRes> get markAttendance =>
      CopyWith_Mutation_markAttendance_markAttendance.stub(_res);
}

const documentNodeMutationmarkAttendance = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'markAttendance'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'MarkAttendanceInput'),
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
            name: NameNode(value: 'markAttendance'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: VariableNode(name: NameNode(value: 'input')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'result'),
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

class Mutation_markAttendance_markAttendance {
  Mutation_markAttendance_markAttendance({
    this.result,
    this.$__typename = 'MarkAttendanceResult',
  });

  factory Mutation_markAttendance_markAttendance.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$result = json['result'];
    final l$$__typename = json['__typename'];
    return Mutation_markAttendance_markAttendance(
      result: l$result == null
          ? null
          : Fragment_AttendanceRecord.fromJson(
              (l$result as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_AttendanceRecord? result;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$result = result;
    _resultData['result'] = l$result?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$result = result;
    final l$$__typename = $__typename;
    return Object.hashAll([l$result, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_markAttendance_markAttendance ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$result = result;
    final lOther$result = other.result;
    if (l$result != lOther$result) {
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

extension UtilityExtension_Mutation_markAttendance_markAttendance
    on Mutation_markAttendance_markAttendance {
  CopyWith_Mutation_markAttendance_markAttendance<
    Mutation_markAttendance_markAttendance
  >
  get copyWith =>
      CopyWith_Mutation_markAttendance_markAttendance(this, (i) => i);
}

abstract class CopyWith_Mutation_markAttendance_markAttendance<TRes> {
  factory CopyWith_Mutation_markAttendance_markAttendance(
    Mutation_markAttendance_markAttendance instance,
    TRes Function(Mutation_markAttendance_markAttendance) then,
  ) = _CopyWithImpl_Mutation_markAttendance_markAttendance;

  factory CopyWith_Mutation_markAttendance_markAttendance.stub(TRes res) =
      _CopyWithStubImpl_Mutation_markAttendance_markAttendance;

  TRes call({Fragment_AttendanceRecord? result, String? $__typename});
  CopyWith_Fragment_AttendanceRecord<TRes> get result;
}

class _CopyWithImpl_Mutation_markAttendance_markAttendance<TRes>
    implements CopyWith_Mutation_markAttendance_markAttendance<TRes> {
  _CopyWithImpl_Mutation_markAttendance_markAttendance(
    this._instance,
    this._then,
  );

  final Mutation_markAttendance_markAttendance _instance;

  final TRes Function(Mutation_markAttendance_markAttendance) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? result = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation_markAttendance_markAttendance(
          result: result == _undefined
              ? _instance.result
              : (result as Fragment_AttendanceRecord?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith_Fragment_AttendanceRecord<TRes> get result {
    final local$result = _instance.result;
    return local$result == null
        ? CopyWith_Fragment_AttendanceRecord.stub(_then(_instance))
        : CopyWith_Fragment_AttendanceRecord(
            local$result,
            (e) => call(result: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_markAttendance_markAttendance<TRes>
    implements CopyWith_Mutation_markAttendance_markAttendance<TRes> {
  _CopyWithStubImpl_Mutation_markAttendance_markAttendance(this._res);

  TRes _res;

  call({Fragment_AttendanceRecord? result, String? $__typename}) => _res;

  CopyWith_Fragment_AttendanceRecord<TRes> get result =>
      CopyWith_Fragment_AttendanceRecord.stub(_res);
}

class Variables_Mutation_updateAttendanceTime {
  factory Variables_Mutation_updateAttendanceTime({
    required String id,
    Input_UpdateAttendanceTimeInput? input,
  }) => Variables_Mutation_updateAttendanceTime._({
    r'id': id,
    if (input != null) r'input': input,
  });

  Variables_Mutation_updateAttendanceTime._(this._$data);

  factory Variables_Mutation_updateAttendanceTime.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    if (data.containsKey('input')) {
      final l$input = data['input'];
      result$data['input'] = l$input == null
          ? null
          : Input_UpdateAttendanceTimeInput.fromJson(
              (l$input as Map<String, dynamic>),
            );
    }
    return Variables_Mutation_updateAttendanceTime._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Input_UpdateAttendanceTimeInput? get input =>
      (_$data['input'] as Input_UpdateAttendanceTimeInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    if (_$data.containsKey('input')) {
      final l$input = input;
      result$data['input'] = l$input?.toJson();
    }
    return result$data;
  }

  CopyWith_Variables_Mutation_updateAttendanceTime<
    Variables_Mutation_updateAttendanceTime
  >
  get copyWith =>
      CopyWith_Variables_Mutation_updateAttendanceTime(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Mutation_updateAttendanceTime ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (_$data.containsKey('input') != other._$data.containsKey('input')) {
      return false;
    }
    if (l$input != lOther$input) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$input = input;
    return Object.hashAll([
      l$id,
      _$data.containsKey('input') ? l$input : const {},
    ]);
  }
}

abstract class CopyWith_Variables_Mutation_updateAttendanceTime<TRes> {
  factory CopyWith_Variables_Mutation_updateAttendanceTime(
    Variables_Mutation_updateAttendanceTime instance,
    TRes Function(Variables_Mutation_updateAttendanceTime) then,
  ) = _CopyWithImpl_Variables_Mutation_updateAttendanceTime;

  factory CopyWith_Variables_Mutation_updateAttendanceTime.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_updateAttendanceTime;

  TRes call({String? id, Input_UpdateAttendanceTimeInput? input});
}

class _CopyWithImpl_Variables_Mutation_updateAttendanceTime<TRes>
    implements CopyWith_Variables_Mutation_updateAttendanceTime<TRes> {
  _CopyWithImpl_Variables_Mutation_updateAttendanceTime(
    this._instance,
    this._then,
  );

  final Variables_Mutation_updateAttendanceTime _instance;

  final TRes Function(Variables_Mutation_updateAttendanceTime) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined, Object? input = _undefined}) => _then(
    Variables_Mutation_updateAttendanceTime._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as String),
      if (input != _undefined)
        'input': (input as Input_UpdateAttendanceTimeInput?),
    }),
  );
}

class _CopyWithStubImpl_Variables_Mutation_updateAttendanceTime<TRes>
    implements CopyWith_Variables_Mutation_updateAttendanceTime<TRes> {
  _CopyWithStubImpl_Variables_Mutation_updateAttendanceTime(this._res);

  TRes _res;

  call({String? id, Input_UpdateAttendanceTimeInput? input}) => _res;
}

class Mutation_updateAttendanceTime {
  Mutation_updateAttendanceTime({
    this.updateAttendanceTime,
    this.$__typename = 'RootMutationType',
  });

  factory Mutation_updateAttendanceTime.fromJson(Map<String, dynamic> json) {
    final l$updateAttendanceTime = json['updateAttendanceTime'];
    final l$$__typename = json['__typename'];
    return Mutation_updateAttendanceTime(
      updateAttendanceTime: l$updateAttendanceTime == null
          ? null
          : Mutation_updateAttendanceTime_updateAttendanceTime.fromJson(
              (l$updateAttendanceTime as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation_updateAttendanceTime_updateAttendanceTime?
  updateAttendanceTime;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateAttendanceTime = updateAttendanceTime;
    _resultData['updateAttendanceTime'] = l$updateAttendanceTime?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateAttendanceTime = updateAttendanceTime;
    final l$$__typename = $__typename;
    return Object.hashAll([l$updateAttendanceTime, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_updateAttendanceTime ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateAttendanceTime = updateAttendanceTime;
    final lOther$updateAttendanceTime = other.updateAttendanceTime;
    if (l$updateAttendanceTime != lOther$updateAttendanceTime) {
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

extension UtilityExtension_Mutation_updateAttendanceTime
    on Mutation_updateAttendanceTime {
  CopyWith_Mutation_updateAttendanceTime<Mutation_updateAttendanceTime>
  get copyWith => CopyWith_Mutation_updateAttendanceTime(this, (i) => i);
}

abstract class CopyWith_Mutation_updateAttendanceTime<TRes> {
  factory CopyWith_Mutation_updateAttendanceTime(
    Mutation_updateAttendanceTime instance,
    TRes Function(Mutation_updateAttendanceTime) then,
  ) = _CopyWithImpl_Mutation_updateAttendanceTime;

  factory CopyWith_Mutation_updateAttendanceTime.stub(TRes res) =
      _CopyWithStubImpl_Mutation_updateAttendanceTime;

  TRes call({
    Mutation_updateAttendanceTime_updateAttendanceTime? updateAttendanceTime,
    String? $__typename,
  });
  CopyWith_Mutation_updateAttendanceTime_updateAttendanceTime<TRes>
  get updateAttendanceTime;
}

class _CopyWithImpl_Mutation_updateAttendanceTime<TRes>
    implements CopyWith_Mutation_updateAttendanceTime<TRes> {
  _CopyWithImpl_Mutation_updateAttendanceTime(this._instance, this._then);

  final Mutation_updateAttendanceTime _instance;

  final TRes Function(Mutation_updateAttendanceTime) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateAttendanceTime = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_updateAttendanceTime(
      updateAttendanceTime: updateAttendanceTime == _undefined
          ? _instance.updateAttendanceTime
          : (updateAttendanceTime
                as Mutation_updateAttendanceTime_updateAttendanceTime?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Mutation_updateAttendanceTime_updateAttendanceTime<TRes>
  get updateAttendanceTime {
    final local$updateAttendanceTime = _instance.updateAttendanceTime;
    return local$updateAttendanceTime == null
        ? CopyWith_Mutation_updateAttendanceTime_updateAttendanceTime.stub(
            _then(_instance),
          )
        : CopyWith_Mutation_updateAttendanceTime_updateAttendanceTime(
            local$updateAttendanceTime,
            (e) => call(updateAttendanceTime: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_updateAttendanceTime<TRes>
    implements CopyWith_Mutation_updateAttendanceTime<TRes> {
  _CopyWithStubImpl_Mutation_updateAttendanceTime(this._res);

  TRes _res;

  call({
    Mutation_updateAttendanceTime_updateAttendanceTime? updateAttendanceTime,
    String? $__typename,
  }) => _res;

  CopyWith_Mutation_updateAttendanceTime_updateAttendanceTime<TRes>
  get updateAttendanceTime =>
      CopyWith_Mutation_updateAttendanceTime_updateAttendanceTime.stub(_res);
}

const documentNodeMutationupdateAttendanceTime = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'updateAttendanceTime'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'id')),
          type: NamedTypeNode(name: NameNode(value: 'ID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'UpdateAttendanceTimeInput'),
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
            name: NameNode(value: 'updateAttendanceTime'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'id'),
                value: VariableNode(name: NameNode(value: 'id')),
              ),
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: VariableNode(name: NameNode(value: 'input')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'result'),
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

class Mutation_updateAttendanceTime_updateAttendanceTime {
  Mutation_updateAttendanceTime_updateAttendanceTime({
    this.result,
    this.$__typename = 'UpdateAttendanceTimeResult',
  });

  factory Mutation_updateAttendanceTime_updateAttendanceTime.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$result = json['result'];
    final l$$__typename = json['__typename'];
    return Mutation_updateAttendanceTime_updateAttendanceTime(
      result: l$result == null
          ? null
          : Fragment_AttendanceRecord.fromJson(
              (l$result as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_AttendanceRecord? result;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$result = result;
    _resultData['result'] = l$result?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$result = result;
    final l$$__typename = $__typename;
    return Object.hashAll([l$result, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_updateAttendanceTime_updateAttendanceTime ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$result = result;
    final lOther$result = other.result;
    if (l$result != lOther$result) {
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

extension UtilityExtension_Mutation_updateAttendanceTime_updateAttendanceTime
    on Mutation_updateAttendanceTime_updateAttendanceTime {
  CopyWith_Mutation_updateAttendanceTime_updateAttendanceTime<
    Mutation_updateAttendanceTime_updateAttendanceTime
  >
  get copyWith => CopyWith_Mutation_updateAttendanceTime_updateAttendanceTime(
    this,
    (i) => i,
  );
}

abstract class CopyWith_Mutation_updateAttendanceTime_updateAttendanceTime<
  TRes
> {
  factory CopyWith_Mutation_updateAttendanceTime_updateAttendanceTime(
    Mutation_updateAttendanceTime_updateAttendanceTime instance,
    TRes Function(Mutation_updateAttendanceTime_updateAttendanceTime) then,
  ) = _CopyWithImpl_Mutation_updateAttendanceTime_updateAttendanceTime;

  factory CopyWith_Mutation_updateAttendanceTime_updateAttendanceTime.stub(
    TRes res,
  ) = _CopyWithStubImpl_Mutation_updateAttendanceTime_updateAttendanceTime;

  TRes call({Fragment_AttendanceRecord? result, String? $__typename});
  CopyWith_Fragment_AttendanceRecord<TRes> get result;
}

class _CopyWithImpl_Mutation_updateAttendanceTime_updateAttendanceTime<TRes>
    implements
        CopyWith_Mutation_updateAttendanceTime_updateAttendanceTime<TRes> {
  _CopyWithImpl_Mutation_updateAttendanceTime_updateAttendanceTime(
    this._instance,
    this._then,
  );

  final Mutation_updateAttendanceTime_updateAttendanceTime _instance;

  final TRes Function(Mutation_updateAttendanceTime_updateAttendanceTime) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? result = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation_updateAttendanceTime_updateAttendanceTime(
          result: result == _undefined
              ? _instance.result
              : (result as Fragment_AttendanceRecord?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith_Fragment_AttendanceRecord<TRes> get result {
    final local$result = _instance.result;
    return local$result == null
        ? CopyWith_Fragment_AttendanceRecord.stub(_then(_instance))
        : CopyWith_Fragment_AttendanceRecord(
            local$result,
            (e) => call(result: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_updateAttendanceTime_updateAttendanceTime<TRes>
    implements
        CopyWith_Mutation_updateAttendanceTime_updateAttendanceTime<TRes> {
  _CopyWithStubImpl_Mutation_updateAttendanceTime_updateAttendanceTime(
    this._res,
  );

  TRes _res;

  call({Fragment_AttendanceRecord? result, String? $__typename}) => _res;

  CopyWith_Fragment_AttendanceRecord<TRes> get result =>
      CopyWith_Fragment_AttendanceRecord.stub(_res);
}

class Variables_Mutation_unmarkAttendance {
  factory Variables_Mutation_unmarkAttendance({required String id}) =>
      Variables_Mutation_unmarkAttendance._({r'id': id});

  Variables_Mutation_unmarkAttendance._(this._$data);

  factory Variables_Mutation_unmarkAttendance.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables_Mutation_unmarkAttendance._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
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

  TRes call({String? id});
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
      if (id != _undefined && id != null) 'id': (id as String),
    }),
  );
}

class _CopyWithStubImpl_Variables_Mutation_unmarkAttendance<TRes>
    implements CopyWith_Variables_Mutation_unmarkAttendance<TRes> {
  _CopyWithStubImpl_Variables_Mutation_unmarkAttendance(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Mutation_unmarkAttendance {
  Mutation_unmarkAttendance({
    this.unmarkAttendance,
    this.$__typename = 'RootMutationType',
  });

  factory Mutation_unmarkAttendance.fromJson(Map<String, dynamic> json) {
    final l$unmarkAttendance = json['unmarkAttendance'];
    final l$$__typename = json['__typename'];
    return Mutation_unmarkAttendance(
      unmarkAttendance: l$unmarkAttendance == null
          ? null
          : Mutation_unmarkAttendance_unmarkAttendance.fromJson(
              (l$unmarkAttendance as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation_unmarkAttendance_unmarkAttendance? unmarkAttendance;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$unmarkAttendance = unmarkAttendance;
    _resultData['unmarkAttendance'] = l$unmarkAttendance?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$unmarkAttendance = unmarkAttendance;
    final l$$__typename = $__typename;
    return Object.hashAll([l$unmarkAttendance, l$$__typename]);
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
    final l$unmarkAttendance = unmarkAttendance;
    final lOther$unmarkAttendance = other.unmarkAttendance;
    if (l$unmarkAttendance != lOther$unmarkAttendance) {
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
    Mutation_unmarkAttendance_unmarkAttendance? unmarkAttendance,
    String? $__typename,
  });
  CopyWith_Mutation_unmarkAttendance_unmarkAttendance<TRes>
  get unmarkAttendance;
}

class _CopyWithImpl_Mutation_unmarkAttendance<TRes>
    implements CopyWith_Mutation_unmarkAttendance<TRes> {
  _CopyWithImpl_Mutation_unmarkAttendance(this._instance, this._then);

  final Mutation_unmarkAttendance _instance;

  final TRes Function(Mutation_unmarkAttendance) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? unmarkAttendance = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_unmarkAttendance(
      unmarkAttendance: unmarkAttendance == _undefined
          ? _instance.unmarkAttendance
          : (unmarkAttendance as Mutation_unmarkAttendance_unmarkAttendance?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Mutation_unmarkAttendance_unmarkAttendance<TRes>
  get unmarkAttendance {
    final local$unmarkAttendance = _instance.unmarkAttendance;
    return local$unmarkAttendance == null
        ? CopyWith_Mutation_unmarkAttendance_unmarkAttendance.stub(
            _then(_instance),
          )
        : CopyWith_Mutation_unmarkAttendance_unmarkAttendance(
            local$unmarkAttendance,
            (e) => call(unmarkAttendance: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_unmarkAttendance<TRes>
    implements CopyWith_Mutation_unmarkAttendance<TRes> {
  _CopyWithStubImpl_Mutation_unmarkAttendance(this._res);

  TRes _res;

  call({
    Mutation_unmarkAttendance_unmarkAttendance? unmarkAttendance,
    String? $__typename,
  }) => _res;

  CopyWith_Mutation_unmarkAttendance_unmarkAttendance<TRes>
  get unmarkAttendance =>
      CopyWith_Mutation_unmarkAttendance_unmarkAttendance.stub(_res);
}

const documentNodeMutationunmarkAttendance = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'unmarkAttendance'),
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
            name: NameNode(value: 'unmarkAttendance'),
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
                  name: NameNode(value: 'result'),
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

class Mutation_unmarkAttendance_unmarkAttendance {
  Mutation_unmarkAttendance_unmarkAttendance({
    this.result,
    this.$__typename = 'UnmarkAttendanceResult',
  });

  factory Mutation_unmarkAttendance_unmarkAttendance.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$result = json['result'];
    final l$$__typename = json['__typename'];
    return Mutation_unmarkAttendance_unmarkAttendance(
      result: l$result == null
          ? null
          : Fragment_AttendanceRecord.fromJson(
              (l$result as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_AttendanceRecord? result;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$result = result;
    _resultData['result'] = l$result?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$result = result;
    final l$$__typename = $__typename;
    return Object.hashAll([l$result, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_unmarkAttendance_unmarkAttendance ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$result = result;
    final lOther$result = other.result;
    if (l$result != lOther$result) {
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

extension UtilityExtension_Mutation_unmarkAttendance_unmarkAttendance
    on Mutation_unmarkAttendance_unmarkAttendance {
  CopyWith_Mutation_unmarkAttendance_unmarkAttendance<
    Mutation_unmarkAttendance_unmarkAttendance
  >
  get copyWith =>
      CopyWith_Mutation_unmarkAttendance_unmarkAttendance(this, (i) => i);
}

abstract class CopyWith_Mutation_unmarkAttendance_unmarkAttendance<TRes> {
  factory CopyWith_Mutation_unmarkAttendance_unmarkAttendance(
    Mutation_unmarkAttendance_unmarkAttendance instance,
    TRes Function(Mutation_unmarkAttendance_unmarkAttendance) then,
  ) = _CopyWithImpl_Mutation_unmarkAttendance_unmarkAttendance;

  factory CopyWith_Mutation_unmarkAttendance_unmarkAttendance.stub(TRes res) =
      _CopyWithStubImpl_Mutation_unmarkAttendance_unmarkAttendance;

  TRes call({Fragment_AttendanceRecord? result, String? $__typename});
  CopyWith_Fragment_AttendanceRecord<TRes> get result;
}

class _CopyWithImpl_Mutation_unmarkAttendance_unmarkAttendance<TRes>
    implements CopyWith_Mutation_unmarkAttendance_unmarkAttendance<TRes> {
  _CopyWithImpl_Mutation_unmarkAttendance_unmarkAttendance(
    this._instance,
    this._then,
  );

  final Mutation_unmarkAttendance_unmarkAttendance _instance;

  final TRes Function(Mutation_unmarkAttendance_unmarkAttendance) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? result = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation_unmarkAttendance_unmarkAttendance(
          result: result == _undefined
              ? _instance.result
              : (result as Fragment_AttendanceRecord?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith_Fragment_AttendanceRecord<TRes> get result {
    final local$result = _instance.result;
    return local$result == null
        ? CopyWith_Fragment_AttendanceRecord.stub(_then(_instance))
        : CopyWith_Fragment_AttendanceRecord(
            local$result,
            (e) => call(result: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_unmarkAttendance_unmarkAttendance<TRes>
    implements CopyWith_Mutation_unmarkAttendance_unmarkAttendance<TRes> {
  _CopyWithStubImpl_Mutation_unmarkAttendance_unmarkAttendance(this._res);

  TRes _res;

  call({Fragment_AttendanceRecord? result, String? $__typename}) => _res;

  CopyWith_Fragment_AttendanceRecord<TRes> get result =>
      CopyWith_Fragment_AttendanceRecord.stub(_res);
}
