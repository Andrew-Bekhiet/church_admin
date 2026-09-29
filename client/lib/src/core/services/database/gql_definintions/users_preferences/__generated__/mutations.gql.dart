import '../../../../../graphql/__generated__/schema.graphql.dart';
import 'fragments.gql.dart';
import 'package:church_admin/src/core/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Variables_Mutation_updateUserPreferences {
  factory Variables_Mutation_updateUserPreferences({
    required UuidValue uid,
    Input_UsersPreferencesSetInput? $set,
    Input_UsersPreferencesAppendInput? append,
  }) => Variables_Mutation_updateUserPreferences._({
    r'uid': uid,
    if ($set != null) r'set': $set,
    if (append != null) r'append': append,
  });

  Variables_Mutation_updateUserPreferences._(this._$data);

  factory Variables_Mutation_updateUserPreferences.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$uid = data['uid'];
    result$data['uid'] = stringToUuid(l$uid);
    if (data.containsKey('set')) {
      final l$$set = data['set'];
      result$data['set'] = l$$set == null
          ? null
          : Input_UsersPreferencesSetInput.fromJson(
              (l$$set as Map<String, dynamic>),
            );
    }
    if (data.containsKey('append')) {
      final l$append = data['append'];
      result$data['append'] = l$append == null
          ? null
          : Input_UsersPreferencesAppendInput.fromJson(
              (l$append as Map<String, dynamic>),
            );
    }
    return Variables_Mutation_updateUserPreferences._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get uid => (_$data['uid'] as UuidValue);

  Input_UsersPreferencesSetInput? get $set =>
      (_$data['set'] as Input_UsersPreferencesSetInput?);

  Input_UsersPreferencesAppendInput? get append =>
      (_$data['append'] as Input_UsersPreferencesAppendInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$uid = uid;
    result$data['uid'] = uuidToString(l$uid);
    if (_$data.containsKey('set')) {
      final l$$set = $set;
      result$data['set'] = l$$set?.toJson();
    }
    if (_$data.containsKey('append')) {
      final l$append = append;
      result$data['append'] = l$append?.toJson();
    }
    return result$data;
  }

  CopyWith_Variables_Mutation_updateUserPreferences<
    Variables_Mutation_updateUserPreferences
  >
  get copyWith =>
      CopyWith_Variables_Mutation_updateUserPreferences(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Mutation_updateUserPreferences ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$uid = uid;
    final lOther$uid = other.uid;
    if (l$uid != lOther$uid) {
      return false;
    }
    final l$$set = $set;
    final lOther$$set = other.$set;
    if (_$data.containsKey('set') != other._$data.containsKey('set')) {
      return false;
    }
    if (l$$set != lOther$$set) {
      return false;
    }
    final l$append = append;
    final lOther$append = other.append;
    if (_$data.containsKey('append') != other._$data.containsKey('append')) {
      return false;
    }
    if (l$append != lOther$append) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$uid = uid;
    final l$$set = $set;
    final l$append = append;
    return Object.hashAll([
      l$uid,
      _$data.containsKey('set') ? l$$set : const {},
      _$data.containsKey('append') ? l$append : const {},
    ]);
  }
}

abstract class CopyWith_Variables_Mutation_updateUserPreferences<TRes> {
  factory CopyWith_Variables_Mutation_updateUserPreferences(
    Variables_Mutation_updateUserPreferences instance,
    TRes Function(Variables_Mutation_updateUserPreferences) then,
  ) = _CopyWithImpl_Variables_Mutation_updateUserPreferences;

  factory CopyWith_Variables_Mutation_updateUserPreferences.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_updateUserPreferences;

  TRes call({
    UuidValue? uid,
    Input_UsersPreferencesSetInput? $set,
    Input_UsersPreferencesAppendInput? append,
  });
}

class _CopyWithImpl_Variables_Mutation_updateUserPreferences<TRes>
    implements CopyWith_Variables_Mutation_updateUserPreferences<TRes> {
  _CopyWithImpl_Variables_Mutation_updateUserPreferences(
    this._instance,
    this._then,
  );

  final Variables_Mutation_updateUserPreferences _instance;

  final TRes Function(Variables_Mutation_updateUserPreferences) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? uid = _undefined,
    Object? $set = _undefined,
    Object? append = _undefined,
  }) => _then(
    Variables_Mutation_updateUserPreferences._({
      ..._instance._$data,
      if (uid != _undefined && uid != null) 'uid': (uid as UuidValue),
      if ($set != _undefined) 'set': ($set as Input_UsersPreferencesSetInput?),
      if (append != _undefined)
        'append': (append as Input_UsersPreferencesAppendInput?),
    }),
  );
}

class _CopyWithStubImpl_Variables_Mutation_updateUserPreferences<TRes>
    implements CopyWith_Variables_Mutation_updateUserPreferences<TRes> {
  _CopyWithStubImpl_Variables_Mutation_updateUserPreferences(this._res);

  TRes _res;

  call({
    UuidValue? uid,
    Input_UsersPreferencesSetInput? $set,
    Input_UsersPreferencesAppendInput? append,
  }) => _res;
}

class Mutation_updateUserPreferences {
  Mutation_updateUserPreferences({this.updateUsersPreferencesByPk});

  factory Mutation_updateUserPreferences.fromJson(Map<String, dynamic> json) {
    final l$updateUsersPreferencesByPk = json['updateUsersPreferencesByPk'];
    return Mutation_updateUserPreferences(
      updateUsersPreferencesByPk: l$updateUsersPreferencesByPk == null
          ? null
          : Fragment_UserPreferences.fromJson(
              (l$updateUsersPreferencesByPk as Map<String, dynamic>),
            ),
    );
  }

  final Fragment_UserPreferences? updateUsersPreferencesByPk;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateUsersPreferencesByPk = updateUsersPreferencesByPk;
    _resultData['updateUsersPreferencesByPk'] = l$updateUsersPreferencesByPk
        ?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateUsersPreferencesByPk = updateUsersPreferencesByPk;
    return Object.hashAll([l$updateUsersPreferencesByPk]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_updateUserPreferences ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateUsersPreferencesByPk = updateUsersPreferencesByPk;
    final lOther$updateUsersPreferencesByPk = other.updateUsersPreferencesByPk;
    if (l$updateUsersPreferencesByPk != lOther$updateUsersPreferencesByPk) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Mutation_updateUserPreferences
    on Mutation_updateUserPreferences {
  CopyWith_Mutation_updateUserPreferences<Mutation_updateUserPreferences>
  get copyWith => CopyWith_Mutation_updateUserPreferences(this, (i) => i);
}

abstract class CopyWith_Mutation_updateUserPreferences<TRes> {
  factory CopyWith_Mutation_updateUserPreferences(
    Mutation_updateUserPreferences instance,
    TRes Function(Mutation_updateUserPreferences) then,
  ) = _CopyWithImpl_Mutation_updateUserPreferences;

  factory CopyWith_Mutation_updateUserPreferences.stub(TRes res) =
      _CopyWithStubImpl_Mutation_updateUserPreferences;

  TRes call({Fragment_UserPreferences? updateUsersPreferencesByPk});
  CopyWith_Fragment_UserPreferences<TRes> get updateUsersPreferencesByPk;
}

class _CopyWithImpl_Mutation_updateUserPreferences<TRes>
    implements CopyWith_Mutation_updateUserPreferences<TRes> {
  _CopyWithImpl_Mutation_updateUserPreferences(this._instance, this._then);

  final Mutation_updateUserPreferences _instance;

  final TRes Function(Mutation_updateUserPreferences) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? updateUsersPreferencesByPk = _undefined}) => _then(
    Mutation_updateUserPreferences(
      updateUsersPreferencesByPk: updateUsersPreferencesByPk == _undefined
          ? _instance.updateUsersPreferencesByPk
          : (updateUsersPreferencesByPk as Fragment_UserPreferences?),
    ),
  );

  CopyWith_Fragment_UserPreferences<TRes> get updateUsersPreferencesByPk {
    final local$updateUsersPreferencesByPk =
        _instance.updateUsersPreferencesByPk;
    return local$updateUsersPreferencesByPk == null
        ? CopyWith_Fragment_UserPreferences.stub(_then(_instance))
        : CopyWith_Fragment_UserPreferences(
            local$updateUsersPreferencesByPk,
            (e) => call(updateUsersPreferencesByPk: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_updateUserPreferences<TRes>
    implements CopyWith_Mutation_updateUserPreferences<TRes> {
  _CopyWithStubImpl_Mutation_updateUserPreferences(this._res);

  TRes _res;

  call({Fragment_UserPreferences? updateUsersPreferencesByPk}) => _res;

  CopyWith_Fragment_UserPreferences<TRes> get updateUsersPreferencesByPk =>
      CopyWith_Fragment_UserPreferences.stub(_res);
}

const documentNodeMutationupdateUserPreferences = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'updateUserPreferences'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'uid')),
          type: NamedTypeNode(name: NameNode(value: 'uuid'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'set')),
          type: NamedTypeNode(
            name: NameNode(value: 'UsersPreferencesSetInput'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'append')),
          type: NamedTypeNode(
            name: NameNode(value: 'UsersPreferencesAppendInput'),
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
            name: NameNode(value: 'updateUsersPreferencesByPk'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'pkColumns'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'uid'),
                      value: VariableNode(name: NameNode(value: 'uid')),
                    ),
                  ],
                ),
              ),
              ArgumentNode(
                name: NameNode(value: '_set'),
                value: VariableNode(name: NameNode(value: 'set')),
              ),
              ArgumentNode(
                name: NameNode(value: '_append'),
                value: VariableNode(name: NameNode(value: 'append')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FragmentSpreadNode(
                  name: NameNode(value: 'UserPreferences'),
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
    fragmentDefinitionUserPreferences,
  ],
);
