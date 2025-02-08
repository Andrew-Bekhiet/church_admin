import '../../../../../graphql/__generated__/schema.graphql.dart';
import 'fragments.gql.dart';
import 'package:church_admin/src/core/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Variables_Mutation_deletePerson {
  factory Variables_Mutation_deletePerson({required UuidValue personId}) =>
      Variables_Mutation_deletePerson._({
        r'personId': personId,
      });

  Variables_Mutation_deletePerson._(this._$data);

  factory Variables_Mutation_deletePerson.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$personId = data['personId'];
    result$data['personId'] = stringToUuid(l$personId);
    return Variables_Mutation_deletePerson._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get personId => (_$data['personId'] as UuidValue);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$personId = personId;
    result$data['personId'] = uuidToString(l$personId);
    return result$data;
  }

  CopyWith_Variables_Mutation_deletePerson<Variables_Mutation_deletePerson>
      get copyWith => CopyWith_Variables_Mutation_deletePerson(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Mutation_deletePerson ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$personId = personId;
    final lOther$personId = other.personId;
    if (l$personId != lOther$personId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$personId = personId;
    return Object.hashAll([l$personId]);
  }
}

abstract class CopyWith_Variables_Mutation_deletePerson<TRes> {
  factory CopyWith_Variables_Mutation_deletePerson(
    Variables_Mutation_deletePerson instance,
    TRes Function(Variables_Mutation_deletePerson) then,
  ) = _CopyWithImpl_Variables_Mutation_deletePerson;

  factory CopyWith_Variables_Mutation_deletePerson.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_deletePerson;

  TRes call({UuidValue? personId});
}

class _CopyWithImpl_Variables_Mutation_deletePerson<TRes>
    implements CopyWith_Variables_Mutation_deletePerson<TRes> {
  _CopyWithImpl_Variables_Mutation_deletePerson(
    this._instance,
    this._then,
  );

  final Variables_Mutation_deletePerson _instance;

  final TRes Function(Variables_Mutation_deletePerson) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? personId = _undefined}) =>
      _then(Variables_Mutation_deletePerson._({
        ..._instance._$data,
        if (personId != _undefined && personId != null)
          'personId': (personId as UuidValue),
      }));
}

class _CopyWithStubImpl_Variables_Mutation_deletePerson<TRes>
    implements CopyWith_Variables_Mutation_deletePerson<TRes> {
  _CopyWithStubImpl_Variables_Mutation_deletePerson(this._res);

  TRes _res;

  call({UuidValue? personId}) => _res;
}

class Mutation_deletePerson {
  Mutation_deletePerson({
    this.deletePersonsByPk,
    this.$__typename = 'mutation_root',
  });

  factory Mutation_deletePerson.fromJson(Map<String, dynamic> json) {
    final l$deletePersonsByPk = json['deletePersonsByPk'];
    final l$$__typename = json['__typename'];
    return Mutation_deletePerson(
      deletePersonsByPk: l$deletePersonsByPk == null
          ? null
          : Fragment_Person.fromJson(
              (l$deletePersonsByPk as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_Person? deletePersonsByPk;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deletePersonsByPk = deletePersonsByPk;
    _resultData['deletePersonsByPk'] = l$deletePersonsByPk?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deletePersonsByPk = deletePersonsByPk;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$deletePersonsByPk,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_deletePerson || runtimeType != other.runtimeType) {
      return false;
    }
    final l$deletePersonsByPk = deletePersonsByPk;
    final lOther$deletePersonsByPk = other.deletePersonsByPk;
    if (l$deletePersonsByPk != lOther$deletePersonsByPk) {
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

extension UtilityExtension_Mutation_deletePerson on Mutation_deletePerson {
  CopyWith_Mutation_deletePerson<Mutation_deletePerson> get copyWith =>
      CopyWith_Mutation_deletePerson(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Mutation_deletePerson<TRes> {
  factory CopyWith_Mutation_deletePerson(
    Mutation_deletePerson instance,
    TRes Function(Mutation_deletePerson) then,
  ) = _CopyWithImpl_Mutation_deletePerson;

  factory CopyWith_Mutation_deletePerson.stub(TRes res) =
      _CopyWithStubImpl_Mutation_deletePerson;

  TRes call({
    Fragment_Person? deletePersonsByPk,
    String? $__typename,
  });
  CopyWith_Fragment_Person<TRes> get deletePersonsByPk;
}

class _CopyWithImpl_Mutation_deletePerson<TRes>
    implements CopyWith_Mutation_deletePerson<TRes> {
  _CopyWithImpl_Mutation_deletePerson(
    this._instance,
    this._then,
  );

  final Mutation_deletePerson _instance;

  final TRes Function(Mutation_deletePerson) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deletePersonsByPk = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation_deletePerson(
        deletePersonsByPk: deletePersonsByPk == _undefined
            ? _instance.deletePersonsByPk
            : (deletePersonsByPk as Fragment_Person?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith_Fragment_Person<TRes> get deletePersonsByPk {
    final local$deletePersonsByPk = _instance.deletePersonsByPk;
    return local$deletePersonsByPk == null
        ? CopyWith_Fragment_Person.stub(_then(_instance))
        : CopyWith_Fragment_Person(
            local$deletePersonsByPk, (e) => call(deletePersonsByPk: e));
  }
}

class _CopyWithStubImpl_Mutation_deletePerson<TRes>
    implements CopyWith_Mutation_deletePerson<TRes> {
  _CopyWithStubImpl_Mutation_deletePerson(this._res);

  TRes _res;

  call({
    Fragment_Person? deletePersonsByPk,
    String? $__typename,
  }) =>
      _res;

  CopyWith_Fragment_Person<TRes> get deletePersonsByPk =>
      CopyWith_Fragment_Person.stub(_res);
}

const documentNodeMutationdeletePerson = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'deletePerson'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'personId')),
        type: NamedTypeNode(
          name: NameNode(value: 'Uuid'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'deletePersonsByPk'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'personId')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'Person'),
            directives: [],
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  fragmentDefinitionPerson,
  fragmentDefinitionPersonNoPhoto,
]);

class Variables_Mutation_updatePerson {
  factory Variables_Mutation_updatePerson({
    required UuidValue personId,
    required Input_PersonsSetInput newPerson,
    List<Input_PersonsGroupsInsertInput>? newGroups,
    List<UuidValue>? deleteGroups,
    List<Input_PersonsServicesInsertInput>? newServices,
    List<UuidValue>? deleteServices,
    List<Input_PersonsHobbiesInsertInput>? newHobbies,
    List<UuidValue>? deleteHobbies,
    List<Input_PersonsTagsInsertInput>? newTags,
    List<UuidValue>? deleteTags,
    DateTime? lastConfession,
    DateTime? lastKodas,
    DateTime? lastCall,
    DateTime? lastVisit,
    bool? updatePersonsByPk,
    bool? insertPersonsServices,
    bool? insertPersonsGroups,
    bool? insertPersonsHobbies,
    bool? insertPersonsTags,
    bool? deletePersonsTags,
    bool? deletePersonsHobbies,
    bool? deletePersonsGroups,
    bool? deletePersonsServices,
    bool? insertHistoryConfessionHistoryOne,
    bool? insertHistoryKodasHistoryOne,
    bool? insertHistoryCallHistoryOne,
    bool? insertHistoryVisitHistoryOne,
  }) =>
      Variables_Mutation_updatePerson._({
        r'personId': personId,
        r'newPerson': newPerson,
        if (newGroups != null) r'newGroups': newGroups,
        if (deleteGroups != null) r'deleteGroups': deleteGroups,
        if (newServices != null) r'newServices': newServices,
        if (deleteServices != null) r'deleteServices': deleteServices,
        if (newHobbies != null) r'newHobbies': newHobbies,
        if (deleteHobbies != null) r'deleteHobbies': deleteHobbies,
        if (newTags != null) r'newTags': newTags,
        if (deleteTags != null) r'deleteTags': deleteTags,
        if (lastConfession != null) r'lastConfession': lastConfession,
        if (lastKodas != null) r'lastKodas': lastKodas,
        if (lastCall != null) r'lastCall': lastCall,
        if (lastVisit != null) r'lastVisit': lastVisit,
        if (updatePersonsByPk != null) r'updatePersonsByPk': updatePersonsByPk,
        if (insertPersonsServices != null)
          r'insertPersonsServices': insertPersonsServices,
        if (insertPersonsGroups != null)
          r'insertPersonsGroups': insertPersonsGroups,
        if (insertPersonsHobbies != null)
          r'insertPersonsHobbies': insertPersonsHobbies,
        if (insertPersonsTags != null) r'insertPersonsTags': insertPersonsTags,
        if (deletePersonsTags != null) r'deletePersonsTags': deletePersonsTags,
        if (deletePersonsHobbies != null)
          r'deletePersonsHobbies': deletePersonsHobbies,
        if (deletePersonsGroups != null)
          r'deletePersonsGroups': deletePersonsGroups,
        if (deletePersonsServices != null)
          r'deletePersonsServices': deletePersonsServices,
        if (insertHistoryConfessionHistoryOne != null)
          r'insertHistoryConfessionHistoryOne':
              insertHistoryConfessionHistoryOne,
        if (insertHistoryKodasHistoryOne != null)
          r'insertHistoryKodasHistoryOne': insertHistoryKodasHistoryOne,
        if (insertHistoryCallHistoryOne != null)
          r'insertHistoryCallHistoryOne': insertHistoryCallHistoryOne,
        if (insertHistoryVisitHistoryOne != null)
          r'insertHistoryVisitHistoryOne': insertHistoryVisitHistoryOne,
      });

  Variables_Mutation_updatePerson._(this._$data);

  factory Variables_Mutation_updatePerson.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$personId = data['personId'];
    result$data['personId'] = stringToUuid(l$personId);
    final l$newPerson = data['newPerson'];
    result$data['newPerson'] =
        Input_PersonsSetInput.fromJson((l$newPerson as Map<String, dynamic>));
    if (data.containsKey('newGroups')) {
      final l$newGroups = data['newGroups'];
      result$data['newGroups'] = (l$newGroups as List<dynamic>)
          .map((e) => Input_PersonsGroupsInsertInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('deleteGroups')) {
      final l$deleteGroups = data['deleteGroups'];
      result$data['deleteGroups'] = (l$deleteGroups as List<dynamic>?)
          ?.map((e) => stringToUuid(e))
          .toList();
    }
    if (data.containsKey('newServices')) {
      final l$newServices = data['newServices'];
      result$data['newServices'] = (l$newServices as List<dynamic>)
          .map((e) => Input_PersonsServicesInsertInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('deleteServices')) {
      final l$deleteServices = data['deleteServices'];
      result$data['deleteServices'] = (l$deleteServices as List<dynamic>?)
          ?.map((e) => stringToUuid(e))
          .toList();
    }
    if (data.containsKey('newHobbies')) {
      final l$newHobbies = data['newHobbies'];
      result$data['newHobbies'] = (l$newHobbies as List<dynamic>)
          .map((e) => Input_PersonsHobbiesInsertInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('deleteHobbies')) {
      final l$deleteHobbies = data['deleteHobbies'];
      result$data['deleteHobbies'] = (l$deleteHobbies as List<dynamic>?)
          ?.map((e) => stringToUuid(e))
          .toList();
    }
    if (data.containsKey('newTags')) {
      final l$newTags = data['newTags'];
      result$data['newTags'] = (l$newTags as List<dynamic>)
          .map((e) => Input_PersonsTagsInsertInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('deleteTags')) {
      final l$deleteTags = data['deleteTags'];
      result$data['deleteTags'] = (l$deleteTags as List<dynamic>?)
          ?.map((e) => stringToUuid(e))
          .toList();
    }
    if (data.containsKey('lastConfession')) {
      final l$lastConfession = data['lastConfession'];
      result$data['lastConfession'] =
          l$lastConfession == null ? null : dateFromString(l$lastConfession);
    }
    if (data.containsKey('lastKodas')) {
      final l$lastKodas = data['lastKodas'];
      result$data['lastKodas'] =
          l$lastKodas == null ? null : dateFromString(l$lastKodas);
    }
    if (data.containsKey('lastCall')) {
      final l$lastCall = data['lastCall'];
      result$data['lastCall'] =
          l$lastCall == null ? null : tstzFromString(l$lastCall);
    }
    if (data.containsKey('lastVisit')) {
      final l$lastVisit = data['lastVisit'];
      result$data['lastVisit'] =
          l$lastVisit == null ? null : tstzFromString(l$lastVisit);
    }
    if (data.containsKey('updatePersonsByPk')) {
      final l$updatePersonsByPk = data['updatePersonsByPk'];
      result$data['updatePersonsByPk'] = (l$updatePersonsByPk as bool);
    }
    if (data.containsKey('insertPersonsServices')) {
      final l$insertPersonsServices = data['insertPersonsServices'];
      result$data['insertPersonsServices'] = (l$insertPersonsServices as bool);
    }
    if (data.containsKey('insertPersonsGroups')) {
      final l$insertPersonsGroups = data['insertPersonsGroups'];
      result$data['insertPersonsGroups'] = (l$insertPersonsGroups as bool);
    }
    if (data.containsKey('insertPersonsHobbies')) {
      final l$insertPersonsHobbies = data['insertPersonsHobbies'];
      result$data['insertPersonsHobbies'] = (l$insertPersonsHobbies as bool);
    }
    if (data.containsKey('insertPersonsTags')) {
      final l$insertPersonsTags = data['insertPersonsTags'];
      result$data['insertPersonsTags'] = (l$insertPersonsTags as bool);
    }
    if (data.containsKey('deletePersonsTags')) {
      final l$deletePersonsTags = data['deletePersonsTags'];
      result$data['deletePersonsTags'] = (l$deletePersonsTags as bool);
    }
    if (data.containsKey('deletePersonsHobbies')) {
      final l$deletePersonsHobbies = data['deletePersonsHobbies'];
      result$data['deletePersonsHobbies'] = (l$deletePersonsHobbies as bool);
    }
    if (data.containsKey('deletePersonsGroups')) {
      final l$deletePersonsGroups = data['deletePersonsGroups'];
      result$data['deletePersonsGroups'] = (l$deletePersonsGroups as bool);
    }
    if (data.containsKey('deletePersonsServices')) {
      final l$deletePersonsServices = data['deletePersonsServices'];
      result$data['deletePersonsServices'] = (l$deletePersonsServices as bool);
    }
    if (data.containsKey('insertHistoryConfessionHistoryOne')) {
      final l$insertHistoryConfessionHistoryOne =
          data['insertHistoryConfessionHistoryOne'];
      result$data['insertHistoryConfessionHistoryOne'] =
          (l$insertHistoryConfessionHistoryOne as bool);
    }
    if (data.containsKey('insertHistoryKodasHistoryOne')) {
      final l$insertHistoryKodasHistoryOne =
          data['insertHistoryKodasHistoryOne'];
      result$data['insertHistoryKodasHistoryOne'] =
          (l$insertHistoryKodasHistoryOne as bool);
    }
    if (data.containsKey('insertHistoryCallHistoryOne')) {
      final l$insertHistoryCallHistoryOne = data['insertHistoryCallHistoryOne'];
      result$data['insertHistoryCallHistoryOne'] =
          (l$insertHistoryCallHistoryOne as bool);
    }
    if (data.containsKey('insertHistoryVisitHistoryOne')) {
      final l$insertHistoryVisitHistoryOne =
          data['insertHistoryVisitHistoryOne'];
      result$data['insertHistoryVisitHistoryOne'] =
          (l$insertHistoryVisitHistoryOne as bool);
    }
    return Variables_Mutation_updatePerson._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get personId => (_$data['personId'] as UuidValue);

  Input_PersonsSetInput get newPerson =>
      (_$data['newPerson'] as Input_PersonsSetInput);

  List<Input_PersonsGroupsInsertInput>? get newGroups =>
      (_$data['newGroups'] as List<Input_PersonsGroupsInsertInput>?);

  List<UuidValue>? get deleteGroups =>
      (_$data['deleteGroups'] as List<UuidValue>?);

  List<Input_PersonsServicesInsertInput>? get newServices =>
      (_$data['newServices'] as List<Input_PersonsServicesInsertInput>?);

  List<UuidValue>? get deleteServices =>
      (_$data['deleteServices'] as List<UuidValue>?);

  List<Input_PersonsHobbiesInsertInput>? get newHobbies =>
      (_$data['newHobbies'] as List<Input_PersonsHobbiesInsertInput>?);

  List<UuidValue>? get deleteHobbies =>
      (_$data['deleteHobbies'] as List<UuidValue>?);

  List<Input_PersonsTagsInsertInput>? get newTags =>
      (_$data['newTags'] as List<Input_PersonsTagsInsertInput>?);

  List<UuidValue>? get deleteTags => (_$data['deleteTags'] as List<UuidValue>?);

  DateTime? get lastConfession => (_$data['lastConfession'] as DateTime?);

  DateTime? get lastKodas => (_$data['lastKodas'] as DateTime?);

  DateTime? get lastCall => (_$data['lastCall'] as DateTime?);

  DateTime? get lastVisit => (_$data['lastVisit'] as DateTime?);

  bool? get updatePersonsByPk => (_$data['updatePersonsByPk'] as bool?);

  bool? get insertPersonsServices => (_$data['insertPersonsServices'] as bool?);

  bool? get insertPersonsGroups => (_$data['insertPersonsGroups'] as bool?);

  bool? get insertPersonsHobbies => (_$data['insertPersonsHobbies'] as bool?);

  bool? get insertPersonsTags => (_$data['insertPersonsTags'] as bool?);

  bool? get deletePersonsTags => (_$data['deletePersonsTags'] as bool?);

  bool? get deletePersonsHobbies => (_$data['deletePersonsHobbies'] as bool?);

  bool? get deletePersonsGroups => (_$data['deletePersonsGroups'] as bool?);

  bool? get deletePersonsServices => (_$data['deletePersonsServices'] as bool?);

  bool? get insertHistoryConfessionHistoryOne =>
      (_$data['insertHistoryConfessionHistoryOne'] as bool?);

  bool? get insertHistoryKodasHistoryOne =>
      (_$data['insertHistoryKodasHistoryOne'] as bool?);

  bool? get insertHistoryCallHistoryOne =>
      (_$data['insertHistoryCallHistoryOne'] as bool?);

  bool? get insertHistoryVisitHistoryOne =>
      (_$data['insertHistoryVisitHistoryOne'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$personId = personId;
    result$data['personId'] = uuidToString(l$personId);
    final l$newPerson = newPerson;
    result$data['newPerson'] = l$newPerson.toJson();
    if (_$data.containsKey('newGroups')) {
      final l$newGroups = newGroups;
      result$data['newGroups'] =
          (l$newGroups as List<Input_PersonsGroupsInsertInput>)
              .map((e) => e.toJson())
              .toList();
    }
    if (_$data.containsKey('deleteGroups')) {
      final l$deleteGroups = deleteGroups;
      result$data['deleteGroups'] =
          l$deleteGroups?.map((e) => uuidToString(e)).toList();
    }
    if (_$data.containsKey('newServices')) {
      final l$newServices = newServices;
      result$data['newServices'] =
          (l$newServices as List<Input_PersonsServicesInsertInput>)
              .map((e) => e.toJson())
              .toList();
    }
    if (_$data.containsKey('deleteServices')) {
      final l$deleteServices = deleteServices;
      result$data['deleteServices'] =
          l$deleteServices?.map((e) => uuidToString(e)).toList();
    }
    if (_$data.containsKey('newHobbies')) {
      final l$newHobbies = newHobbies;
      result$data['newHobbies'] =
          (l$newHobbies as List<Input_PersonsHobbiesInsertInput>)
              .map((e) => e.toJson())
              .toList();
    }
    if (_$data.containsKey('deleteHobbies')) {
      final l$deleteHobbies = deleteHobbies;
      result$data['deleteHobbies'] =
          l$deleteHobbies?.map((e) => uuidToString(e)).toList();
    }
    if (_$data.containsKey('newTags')) {
      final l$newTags = newTags;
      result$data['newTags'] = (l$newTags as List<Input_PersonsTagsInsertInput>)
          .map((e) => e.toJson())
          .toList();
    }
    if (_$data.containsKey('deleteTags')) {
      final l$deleteTags = deleteTags;
      result$data['deleteTags'] =
          l$deleteTags?.map((e) => uuidToString(e)).toList();
    }
    if (_$data.containsKey('lastConfession')) {
      final l$lastConfession = lastConfession;
      result$data['lastConfession'] =
          l$lastConfession == null ? null : dateToString(l$lastConfession);
    }
    if (_$data.containsKey('lastKodas')) {
      final l$lastKodas = lastKodas;
      result$data['lastKodas'] =
          l$lastKodas == null ? null : dateToString(l$lastKodas);
    }
    if (_$data.containsKey('lastCall')) {
      final l$lastCall = lastCall;
      result$data['lastCall'] =
          l$lastCall == null ? null : tstzToString(l$lastCall);
    }
    if (_$data.containsKey('lastVisit')) {
      final l$lastVisit = lastVisit;
      result$data['lastVisit'] =
          l$lastVisit == null ? null : tstzToString(l$lastVisit);
    }
    if (_$data.containsKey('updatePersonsByPk')) {
      final l$updatePersonsByPk = updatePersonsByPk;
      result$data['updatePersonsByPk'] = (l$updatePersonsByPk as bool);
    }
    if (_$data.containsKey('insertPersonsServices')) {
      final l$insertPersonsServices = insertPersonsServices;
      result$data['insertPersonsServices'] = (l$insertPersonsServices as bool);
    }
    if (_$data.containsKey('insertPersonsGroups')) {
      final l$insertPersonsGroups = insertPersonsGroups;
      result$data['insertPersonsGroups'] = (l$insertPersonsGroups as bool);
    }
    if (_$data.containsKey('insertPersonsHobbies')) {
      final l$insertPersonsHobbies = insertPersonsHobbies;
      result$data['insertPersonsHobbies'] = (l$insertPersonsHobbies as bool);
    }
    if (_$data.containsKey('insertPersonsTags')) {
      final l$insertPersonsTags = insertPersonsTags;
      result$data['insertPersonsTags'] = (l$insertPersonsTags as bool);
    }
    if (_$data.containsKey('deletePersonsTags')) {
      final l$deletePersonsTags = deletePersonsTags;
      result$data['deletePersonsTags'] = (l$deletePersonsTags as bool);
    }
    if (_$data.containsKey('deletePersonsHobbies')) {
      final l$deletePersonsHobbies = deletePersonsHobbies;
      result$data['deletePersonsHobbies'] = (l$deletePersonsHobbies as bool);
    }
    if (_$data.containsKey('deletePersonsGroups')) {
      final l$deletePersonsGroups = deletePersonsGroups;
      result$data['deletePersonsGroups'] = (l$deletePersonsGroups as bool);
    }
    if (_$data.containsKey('deletePersonsServices')) {
      final l$deletePersonsServices = deletePersonsServices;
      result$data['deletePersonsServices'] = (l$deletePersonsServices as bool);
    }
    if (_$data.containsKey('insertHistoryConfessionHistoryOne')) {
      final l$insertHistoryConfessionHistoryOne =
          insertHistoryConfessionHistoryOne;
      result$data['insertHistoryConfessionHistoryOne'] =
          (l$insertHistoryConfessionHistoryOne as bool);
    }
    if (_$data.containsKey('insertHistoryKodasHistoryOne')) {
      final l$insertHistoryKodasHistoryOne = insertHistoryKodasHistoryOne;
      result$data['insertHistoryKodasHistoryOne'] =
          (l$insertHistoryKodasHistoryOne as bool);
    }
    if (_$data.containsKey('insertHistoryCallHistoryOne')) {
      final l$insertHistoryCallHistoryOne = insertHistoryCallHistoryOne;
      result$data['insertHistoryCallHistoryOne'] =
          (l$insertHistoryCallHistoryOne as bool);
    }
    if (_$data.containsKey('insertHistoryVisitHistoryOne')) {
      final l$insertHistoryVisitHistoryOne = insertHistoryVisitHistoryOne;
      result$data['insertHistoryVisitHistoryOne'] =
          (l$insertHistoryVisitHistoryOne as bool);
    }
    return result$data;
  }

  CopyWith_Variables_Mutation_updatePerson<Variables_Mutation_updatePerson>
      get copyWith => CopyWith_Variables_Mutation_updatePerson(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Mutation_updatePerson ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$personId = personId;
    final lOther$personId = other.personId;
    if (l$personId != lOther$personId) {
      return false;
    }
    final l$newPerson = newPerson;
    final lOther$newPerson = other.newPerson;
    if (l$newPerson != lOther$newPerson) {
      return false;
    }
    final l$newGroups = newGroups;
    final lOther$newGroups = other.newGroups;
    if (_$data.containsKey('newGroups') !=
        other._$data.containsKey('newGroups')) {
      return false;
    }
    if (l$newGroups != null && lOther$newGroups != null) {
      if (l$newGroups.length != lOther$newGroups.length) {
        return false;
      }
      for (int i = 0; i < l$newGroups.length; i++) {
        final l$newGroups$entry = l$newGroups[i];
        final lOther$newGroups$entry = lOther$newGroups[i];
        if (l$newGroups$entry != lOther$newGroups$entry) {
          return false;
        }
      }
    } else if (l$newGroups != lOther$newGroups) {
      return false;
    }
    final l$deleteGroups = deleteGroups;
    final lOther$deleteGroups = other.deleteGroups;
    if (_$data.containsKey('deleteGroups') !=
        other._$data.containsKey('deleteGroups')) {
      return false;
    }
    if (l$deleteGroups != null && lOther$deleteGroups != null) {
      if (l$deleteGroups.length != lOther$deleteGroups.length) {
        return false;
      }
      for (int i = 0; i < l$deleteGroups.length; i++) {
        final l$deleteGroups$entry = l$deleteGroups[i];
        final lOther$deleteGroups$entry = lOther$deleteGroups[i];
        if (l$deleteGroups$entry != lOther$deleteGroups$entry) {
          return false;
        }
      }
    } else if (l$deleteGroups != lOther$deleteGroups) {
      return false;
    }
    final l$newServices = newServices;
    final lOther$newServices = other.newServices;
    if (_$data.containsKey('newServices') !=
        other._$data.containsKey('newServices')) {
      return false;
    }
    if (l$newServices != null && lOther$newServices != null) {
      if (l$newServices.length != lOther$newServices.length) {
        return false;
      }
      for (int i = 0; i < l$newServices.length; i++) {
        final l$newServices$entry = l$newServices[i];
        final lOther$newServices$entry = lOther$newServices[i];
        if (l$newServices$entry != lOther$newServices$entry) {
          return false;
        }
      }
    } else if (l$newServices != lOther$newServices) {
      return false;
    }
    final l$deleteServices = deleteServices;
    final lOther$deleteServices = other.deleteServices;
    if (_$data.containsKey('deleteServices') !=
        other._$data.containsKey('deleteServices')) {
      return false;
    }
    if (l$deleteServices != null && lOther$deleteServices != null) {
      if (l$deleteServices.length != lOther$deleteServices.length) {
        return false;
      }
      for (int i = 0; i < l$deleteServices.length; i++) {
        final l$deleteServices$entry = l$deleteServices[i];
        final lOther$deleteServices$entry = lOther$deleteServices[i];
        if (l$deleteServices$entry != lOther$deleteServices$entry) {
          return false;
        }
      }
    } else if (l$deleteServices != lOther$deleteServices) {
      return false;
    }
    final l$newHobbies = newHobbies;
    final lOther$newHobbies = other.newHobbies;
    if (_$data.containsKey('newHobbies') !=
        other._$data.containsKey('newHobbies')) {
      return false;
    }
    if (l$newHobbies != null && lOther$newHobbies != null) {
      if (l$newHobbies.length != lOther$newHobbies.length) {
        return false;
      }
      for (int i = 0; i < l$newHobbies.length; i++) {
        final l$newHobbies$entry = l$newHobbies[i];
        final lOther$newHobbies$entry = lOther$newHobbies[i];
        if (l$newHobbies$entry != lOther$newHobbies$entry) {
          return false;
        }
      }
    } else if (l$newHobbies != lOther$newHobbies) {
      return false;
    }
    final l$deleteHobbies = deleteHobbies;
    final lOther$deleteHobbies = other.deleteHobbies;
    if (_$data.containsKey('deleteHobbies') !=
        other._$data.containsKey('deleteHobbies')) {
      return false;
    }
    if (l$deleteHobbies != null && lOther$deleteHobbies != null) {
      if (l$deleteHobbies.length != lOther$deleteHobbies.length) {
        return false;
      }
      for (int i = 0; i < l$deleteHobbies.length; i++) {
        final l$deleteHobbies$entry = l$deleteHobbies[i];
        final lOther$deleteHobbies$entry = lOther$deleteHobbies[i];
        if (l$deleteHobbies$entry != lOther$deleteHobbies$entry) {
          return false;
        }
      }
    } else if (l$deleteHobbies != lOther$deleteHobbies) {
      return false;
    }
    final l$newTags = newTags;
    final lOther$newTags = other.newTags;
    if (_$data.containsKey('newTags') != other._$data.containsKey('newTags')) {
      return false;
    }
    if (l$newTags != null && lOther$newTags != null) {
      if (l$newTags.length != lOther$newTags.length) {
        return false;
      }
      for (int i = 0; i < l$newTags.length; i++) {
        final l$newTags$entry = l$newTags[i];
        final lOther$newTags$entry = lOther$newTags[i];
        if (l$newTags$entry != lOther$newTags$entry) {
          return false;
        }
      }
    } else if (l$newTags != lOther$newTags) {
      return false;
    }
    final l$deleteTags = deleteTags;
    final lOther$deleteTags = other.deleteTags;
    if (_$data.containsKey('deleteTags') !=
        other._$data.containsKey('deleteTags')) {
      return false;
    }
    if (l$deleteTags != null && lOther$deleteTags != null) {
      if (l$deleteTags.length != lOther$deleteTags.length) {
        return false;
      }
      for (int i = 0; i < l$deleteTags.length; i++) {
        final l$deleteTags$entry = l$deleteTags[i];
        final lOther$deleteTags$entry = lOther$deleteTags[i];
        if (l$deleteTags$entry != lOther$deleteTags$entry) {
          return false;
        }
      }
    } else if (l$deleteTags != lOther$deleteTags) {
      return false;
    }
    final l$lastConfession = lastConfession;
    final lOther$lastConfession = other.lastConfession;
    if (_$data.containsKey('lastConfession') !=
        other._$data.containsKey('lastConfession')) {
      return false;
    }
    if (l$lastConfession != lOther$lastConfession) {
      return false;
    }
    final l$lastKodas = lastKodas;
    final lOther$lastKodas = other.lastKodas;
    if (_$data.containsKey('lastKodas') !=
        other._$data.containsKey('lastKodas')) {
      return false;
    }
    if (l$lastKodas != lOther$lastKodas) {
      return false;
    }
    final l$lastCall = lastCall;
    final lOther$lastCall = other.lastCall;
    if (_$data.containsKey('lastCall') !=
        other._$data.containsKey('lastCall')) {
      return false;
    }
    if (l$lastCall != lOther$lastCall) {
      return false;
    }
    final l$lastVisit = lastVisit;
    final lOther$lastVisit = other.lastVisit;
    if (_$data.containsKey('lastVisit') !=
        other._$data.containsKey('lastVisit')) {
      return false;
    }
    if (l$lastVisit != lOther$lastVisit) {
      return false;
    }
    final l$updatePersonsByPk = updatePersonsByPk;
    final lOther$updatePersonsByPk = other.updatePersonsByPk;
    if (_$data.containsKey('updatePersonsByPk') !=
        other._$data.containsKey('updatePersonsByPk')) {
      return false;
    }
    if (l$updatePersonsByPk != lOther$updatePersonsByPk) {
      return false;
    }
    final l$insertPersonsServices = insertPersonsServices;
    final lOther$insertPersonsServices = other.insertPersonsServices;
    if (_$data.containsKey('insertPersonsServices') !=
        other._$data.containsKey('insertPersonsServices')) {
      return false;
    }
    if (l$insertPersonsServices != lOther$insertPersonsServices) {
      return false;
    }
    final l$insertPersonsGroups = insertPersonsGroups;
    final lOther$insertPersonsGroups = other.insertPersonsGroups;
    if (_$data.containsKey('insertPersonsGroups') !=
        other._$data.containsKey('insertPersonsGroups')) {
      return false;
    }
    if (l$insertPersonsGroups != lOther$insertPersonsGroups) {
      return false;
    }
    final l$insertPersonsHobbies = insertPersonsHobbies;
    final lOther$insertPersonsHobbies = other.insertPersonsHobbies;
    if (_$data.containsKey('insertPersonsHobbies') !=
        other._$data.containsKey('insertPersonsHobbies')) {
      return false;
    }
    if (l$insertPersonsHobbies != lOther$insertPersonsHobbies) {
      return false;
    }
    final l$insertPersonsTags = insertPersonsTags;
    final lOther$insertPersonsTags = other.insertPersonsTags;
    if (_$data.containsKey('insertPersonsTags') !=
        other._$data.containsKey('insertPersonsTags')) {
      return false;
    }
    if (l$insertPersonsTags != lOther$insertPersonsTags) {
      return false;
    }
    final l$deletePersonsTags = deletePersonsTags;
    final lOther$deletePersonsTags = other.deletePersonsTags;
    if (_$data.containsKey('deletePersonsTags') !=
        other._$data.containsKey('deletePersonsTags')) {
      return false;
    }
    if (l$deletePersonsTags != lOther$deletePersonsTags) {
      return false;
    }
    final l$deletePersonsHobbies = deletePersonsHobbies;
    final lOther$deletePersonsHobbies = other.deletePersonsHobbies;
    if (_$data.containsKey('deletePersonsHobbies') !=
        other._$data.containsKey('deletePersonsHobbies')) {
      return false;
    }
    if (l$deletePersonsHobbies != lOther$deletePersonsHobbies) {
      return false;
    }
    final l$deletePersonsGroups = deletePersonsGroups;
    final lOther$deletePersonsGroups = other.deletePersonsGroups;
    if (_$data.containsKey('deletePersonsGroups') !=
        other._$data.containsKey('deletePersonsGroups')) {
      return false;
    }
    if (l$deletePersonsGroups != lOther$deletePersonsGroups) {
      return false;
    }
    final l$deletePersonsServices = deletePersonsServices;
    final lOther$deletePersonsServices = other.deletePersonsServices;
    if (_$data.containsKey('deletePersonsServices') !=
        other._$data.containsKey('deletePersonsServices')) {
      return false;
    }
    if (l$deletePersonsServices != lOther$deletePersonsServices) {
      return false;
    }
    final l$insertHistoryConfessionHistoryOne =
        insertHistoryConfessionHistoryOne;
    final lOther$insertHistoryConfessionHistoryOne =
        other.insertHistoryConfessionHistoryOne;
    if (_$data.containsKey('insertHistoryConfessionHistoryOne') !=
        other._$data.containsKey('insertHistoryConfessionHistoryOne')) {
      return false;
    }
    if (l$insertHistoryConfessionHistoryOne !=
        lOther$insertHistoryConfessionHistoryOne) {
      return false;
    }
    final l$insertHistoryKodasHistoryOne = insertHistoryKodasHistoryOne;
    final lOther$insertHistoryKodasHistoryOne =
        other.insertHistoryKodasHistoryOne;
    if (_$data.containsKey('insertHistoryKodasHistoryOne') !=
        other._$data.containsKey('insertHistoryKodasHistoryOne')) {
      return false;
    }
    if (l$insertHistoryKodasHistoryOne != lOther$insertHistoryKodasHistoryOne) {
      return false;
    }
    final l$insertHistoryCallHistoryOne = insertHistoryCallHistoryOne;
    final lOther$insertHistoryCallHistoryOne =
        other.insertHistoryCallHistoryOne;
    if (_$data.containsKey('insertHistoryCallHistoryOne') !=
        other._$data.containsKey('insertHistoryCallHistoryOne')) {
      return false;
    }
    if (l$insertHistoryCallHistoryOne != lOther$insertHistoryCallHistoryOne) {
      return false;
    }
    final l$insertHistoryVisitHistoryOne = insertHistoryVisitHistoryOne;
    final lOther$insertHistoryVisitHistoryOne =
        other.insertHistoryVisitHistoryOne;
    if (_$data.containsKey('insertHistoryVisitHistoryOne') !=
        other._$data.containsKey('insertHistoryVisitHistoryOne')) {
      return false;
    }
    if (l$insertHistoryVisitHistoryOne != lOther$insertHistoryVisitHistoryOne) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$personId = personId;
    final l$newPerson = newPerson;
    final l$newGroups = newGroups;
    final l$deleteGroups = deleteGroups;
    final l$newServices = newServices;
    final l$deleteServices = deleteServices;
    final l$newHobbies = newHobbies;
    final l$deleteHobbies = deleteHobbies;
    final l$newTags = newTags;
    final l$deleteTags = deleteTags;
    final l$lastConfession = lastConfession;
    final l$lastKodas = lastKodas;
    final l$lastCall = lastCall;
    final l$lastVisit = lastVisit;
    final l$updatePersonsByPk = updatePersonsByPk;
    final l$insertPersonsServices = insertPersonsServices;
    final l$insertPersonsGroups = insertPersonsGroups;
    final l$insertPersonsHobbies = insertPersonsHobbies;
    final l$insertPersonsTags = insertPersonsTags;
    final l$deletePersonsTags = deletePersonsTags;
    final l$deletePersonsHobbies = deletePersonsHobbies;
    final l$deletePersonsGroups = deletePersonsGroups;
    final l$deletePersonsServices = deletePersonsServices;
    final l$insertHistoryConfessionHistoryOne =
        insertHistoryConfessionHistoryOne;
    final l$insertHistoryKodasHistoryOne = insertHistoryKodasHistoryOne;
    final l$insertHistoryCallHistoryOne = insertHistoryCallHistoryOne;
    final l$insertHistoryVisitHistoryOne = insertHistoryVisitHistoryOne;
    return Object.hashAll([
      l$personId,
      l$newPerson,
      _$data.containsKey('newGroups')
          ? l$newGroups == null
              ? null
              : Object.hashAll(l$newGroups.map((v) => v))
          : const {},
      _$data.containsKey('deleteGroups')
          ? l$deleteGroups == null
              ? null
              : Object.hashAll(l$deleteGroups.map((v) => v))
          : const {},
      _$data.containsKey('newServices')
          ? l$newServices == null
              ? null
              : Object.hashAll(l$newServices.map((v) => v))
          : const {},
      _$data.containsKey('deleteServices')
          ? l$deleteServices == null
              ? null
              : Object.hashAll(l$deleteServices.map((v) => v))
          : const {},
      _$data.containsKey('newHobbies')
          ? l$newHobbies == null
              ? null
              : Object.hashAll(l$newHobbies.map((v) => v))
          : const {},
      _$data.containsKey('deleteHobbies')
          ? l$deleteHobbies == null
              ? null
              : Object.hashAll(l$deleteHobbies.map((v) => v))
          : const {},
      _$data.containsKey('newTags')
          ? l$newTags == null
              ? null
              : Object.hashAll(l$newTags.map((v) => v))
          : const {},
      _$data.containsKey('deleteTags')
          ? l$deleteTags == null
              ? null
              : Object.hashAll(l$deleteTags.map((v) => v))
          : const {},
      _$data.containsKey('lastConfession') ? l$lastConfession : const {},
      _$data.containsKey('lastKodas') ? l$lastKodas : const {},
      _$data.containsKey('lastCall') ? l$lastCall : const {},
      _$data.containsKey('lastVisit') ? l$lastVisit : const {},
      _$data.containsKey('updatePersonsByPk') ? l$updatePersonsByPk : const {},
      _$data.containsKey('insertPersonsServices')
          ? l$insertPersonsServices
          : const {},
      _$data.containsKey('insertPersonsGroups')
          ? l$insertPersonsGroups
          : const {},
      _$data.containsKey('insertPersonsHobbies')
          ? l$insertPersonsHobbies
          : const {},
      _$data.containsKey('insertPersonsTags') ? l$insertPersonsTags : const {},
      _$data.containsKey('deletePersonsTags') ? l$deletePersonsTags : const {},
      _$data.containsKey('deletePersonsHobbies')
          ? l$deletePersonsHobbies
          : const {},
      _$data.containsKey('deletePersonsGroups')
          ? l$deletePersonsGroups
          : const {},
      _$data.containsKey('deletePersonsServices')
          ? l$deletePersonsServices
          : const {},
      _$data.containsKey('insertHistoryConfessionHistoryOne')
          ? l$insertHistoryConfessionHistoryOne
          : const {},
      _$data.containsKey('insertHistoryKodasHistoryOne')
          ? l$insertHistoryKodasHistoryOne
          : const {},
      _$data.containsKey('insertHistoryCallHistoryOne')
          ? l$insertHistoryCallHistoryOne
          : const {},
      _$data.containsKey('insertHistoryVisitHistoryOne')
          ? l$insertHistoryVisitHistoryOne
          : const {},
    ]);
  }
}

abstract class CopyWith_Variables_Mutation_updatePerson<TRes> {
  factory CopyWith_Variables_Mutation_updatePerson(
    Variables_Mutation_updatePerson instance,
    TRes Function(Variables_Mutation_updatePerson) then,
  ) = _CopyWithImpl_Variables_Mutation_updatePerson;

  factory CopyWith_Variables_Mutation_updatePerson.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_updatePerson;

  TRes call({
    UuidValue? personId,
    Input_PersonsSetInput? newPerson,
    List<Input_PersonsGroupsInsertInput>? newGroups,
    List<UuidValue>? deleteGroups,
    List<Input_PersonsServicesInsertInput>? newServices,
    List<UuidValue>? deleteServices,
    List<Input_PersonsHobbiesInsertInput>? newHobbies,
    List<UuidValue>? deleteHobbies,
    List<Input_PersonsTagsInsertInput>? newTags,
    List<UuidValue>? deleteTags,
    DateTime? lastConfession,
    DateTime? lastKodas,
    DateTime? lastCall,
    DateTime? lastVisit,
    bool? updatePersonsByPk,
    bool? insertPersonsServices,
    bool? insertPersonsGroups,
    bool? insertPersonsHobbies,
    bool? insertPersonsTags,
    bool? deletePersonsTags,
    bool? deletePersonsHobbies,
    bool? deletePersonsGroups,
    bool? deletePersonsServices,
    bool? insertHistoryConfessionHistoryOne,
    bool? insertHistoryKodasHistoryOne,
    bool? insertHistoryCallHistoryOne,
    bool? insertHistoryVisitHistoryOne,
  });
}

class _CopyWithImpl_Variables_Mutation_updatePerson<TRes>
    implements CopyWith_Variables_Mutation_updatePerson<TRes> {
  _CopyWithImpl_Variables_Mutation_updatePerson(
    this._instance,
    this._then,
  );

  final Variables_Mutation_updatePerson _instance;

  final TRes Function(Variables_Mutation_updatePerson) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? personId = _undefined,
    Object? newPerson = _undefined,
    Object? newGroups = _undefined,
    Object? deleteGroups = _undefined,
    Object? newServices = _undefined,
    Object? deleteServices = _undefined,
    Object? newHobbies = _undefined,
    Object? deleteHobbies = _undefined,
    Object? newTags = _undefined,
    Object? deleteTags = _undefined,
    Object? lastConfession = _undefined,
    Object? lastKodas = _undefined,
    Object? lastCall = _undefined,
    Object? lastVisit = _undefined,
    Object? updatePersonsByPk = _undefined,
    Object? insertPersonsServices = _undefined,
    Object? insertPersonsGroups = _undefined,
    Object? insertPersonsHobbies = _undefined,
    Object? insertPersonsTags = _undefined,
    Object? deletePersonsTags = _undefined,
    Object? deletePersonsHobbies = _undefined,
    Object? deletePersonsGroups = _undefined,
    Object? deletePersonsServices = _undefined,
    Object? insertHistoryConfessionHistoryOne = _undefined,
    Object? insertHistoryKodasHistoryOne = _undefined,
    Object? insertHistoryCallHistoryOne = _undefined,
    Object? insertHistoryVisitHistoryOne = _undefined,
  }) =>
      _then(Variables_Mutation_updatePerson._({
        ..._instance._$data,
        if (personId != _undefined && personId != null)
          'personId': (personId as UuidValue),
        if (newPerson != _undefined && newPerson != null)
          'newPerson': (newPerson as Input_PersonsSetInput),
        if (newGroups != _undefined && newGroups != null)
          'newGroups': (newGroups as List<Input_PersonsGroupsInsertInput>),
        if (deleteGroups != _undefined)
          'deleteGroups': (deleteGroups as List<UuidValue>?),
        if (newServices != _undefined && newServices != null)
          'newServices':
              (newServices as List<Input_PersonsServicesInsertInput>),
        if (deleteServices != _undefined)
          'deleteServices': (deleteServices as List<UuidValue>?),
        if (newHobbies != _undefined && newHobbies != null)
          'newHobbies': (newHobbies as List<Input_PersonsHobbiesInsertInput>),
        if (deleteHobbies != _undefined)
          'deleteHobbies': (deleteHobbies as List<UuidValue>?),
        if (newTags != _undefined && newTags != null)
          'newTags': (newTags as List<Input_PersonsTagsInsertInput>),
        if (deleteTags != _undefined)
          'deleteTags': (deleteTags as List<UuidValue>?),
        if (lastConfession != _undefined)
          'lastConfession': (lastConfession as DateTime?),
        if (lastKodas != _undefined) 'lastKodas': (lastKodas as DateTime?),
        if (lastCall != _undefined) 'lastCall': (lastCall as DateTime?),
        if (lastVisit != _undefined) 'lastVisit': (lastVisit as DateTime?),
        if (updatePersonsByPk != _undefined && updatePersonsByPk != null)
          'updatePersonsByPk': (updatePersonsByPk as bool),
        if (insertPersonsServices != _undefined &&
            insertPersonsServices != null)
          'insertPersonsServices': (insertPersonsServices as bool),
        if (insertPersonsGroups != _undefined && insertPersonsGroups != null)
          'insertPersonsGroups': (insertPersonsGroups as bool),
        if (insertPersonsHobbies != _undefined && insertPersonsHobbies != null)
          'insertPersonsHobbies': (insertPersonsHobbies as bool),
        if (insertPersonsTags != _undefined && insertPersonsTags != null)
          'insertPersonsTags': (insertPersonsTags as bool),
        if (deletePersonsTags != _undefined && deletePersonsTags != null)
          'deletePersonsTags': (deletePersonsTags as bool),
        if (deletePersonsHobbies != _undefined && deletePersonsHobbies != null)
          'deletePersonsHobbies': (deletePersonsHobbies as bool),
        if (deletePersonsGroups != _undefined && deletePersonsGroups != null)
          'deletePersonsGroups': (deletePersonsGroups as bool),
        if (deletePersonsServices != _undefined &&
            deletePersonsServices != null)
          'deletePersonsServices': (deletePersonsServices as bool),
        if (insertHistoryConfessionHistoryOne != _undefined &&
            insertHistoryConfessionHistoryOne != null)
          'insertHistoryConfessionHistoryOne':
              (insertHistoryConfessionHistoryOne as bool),
        if (insertHistoryKodasHistoryOne != _undefined &&
            insertHistoryKodasHistoryOne != null)
          'insertHistoryKodasHistoryOne':
              (insertHistoryKodasHistoryOne as bool),
        if (insertHistoryCallHistoryOne != _undefined &&
            insertHistoryCallHistoryOne != null)
          'insertHistoryCallHistoryOne': (insertHistoryCallHistoryOne as bool),
        if (insertHistoryVisitHistoryOne != _undefined &&
            insertHistoryVisitHistoryOne != null)
          'insertHistoryVisitHistoryOne':
              (insertHistoryVisitHistoryOne as bool),
      }));
}

class _CopyWithStubImpl_Variables_Mutation_updatePerson<TRes>
    implements CopyWith_Variables_Mutation_updatePerson<TRes> {
  _CopyWithStubImpl_Variables_Mutation_updatePerson(this._res);

  TRes _res;

  call({
    UuidValue? personId,
    Input_PersonsSetInput? newPerson,
    List<Input_PersonsGroupsInsertInput>? newGroups,
    List<UuidValue>? deleteGroups,
    List<Input_PersonsServicesInsertInput>? newServices,
    List<UuidValue>? deleteServices,
    List<Input_PersonsHobbiesInsertInput>? newHobbies,
    List<UuidValue>? deleteHobbies,
    List<Input_PersonsTagsInsertInput>? newTags,
    List<UuidValue>? deleteTags,
    DateTime? lastConfession,
    DateTime? lastKodas,
    DateTime? lastCall,
    DateTime? lastVisit,
    bool? updatePersonsByPk,
    bool? insertPersonsServices,
    bool? insertPersonsGroups,
    bool? insertPersonsHobbies,
    bool? insertPersonsTags,
    bool? deletePersonsTags,
    bool? deletePersonsHobbies,
    bool? deletePersonsGroups,
    bool? deletePersonsServices,
    bool? insertHistoryConfessionHistoryOne,
    bool? insertHistoryKodasHistoryOne,
    bool? insertHistoryCallHistoryOne,
    bool? insertHistoryVisitHistoryOne,
  }) =>
      _res;
}

class Mutation_updatePerson {
  Mutation_updatePerson({
    this.updatePersonsByPk,
    this.insertPersonsServices,
    this.insertPersonsGroups,
    this.insertPersonsHobbies,
    this.insertPersonsTags,
    this.deletePersonsTags,
    this.deletePersonsHobbies,
    this.deletePersonsGroups,
    this.deletePersonsServices,
    this.insertHistoryConfessionHistoryOne,
    this.insertHistoryKodasHistoryOne,
    this.insertHistoryCallHistoryOne,
    this.insertHistoryVisitHistoryOne,
    this.$__typename = 'mutation_root',
  });

  factory Mutation_updatePerson.fromJson(Map<String, dynamic> json) {
    final l$updatePersonsByPk = json['updatePersonsByPk'];
    final l$insertPersonsServices = json['insertPersonsServices'];
    final l$insertPersonsGroups = json['insertPersonsGroups'];
    final l$insertPersonsHobbies = json['insertPersonsHobbies'];
    final l$insertPersonsTags = json['insertPersonsTags'];
    final l$deletePersonsTags = json['deletePersonsTags'];
    final l$deletePersonsHobbies = json['deletePersonsHobbies'];
    final l$deletePersonsGroups = json['deletePersonsGroups'];
    final l$deletePersonsServices = json['deletePersonsServices'];
    final l$insertHistoryConfessionHistoryOne =
        json['insertHistoryConfessionHistoryOne'];
    final l$insertHistoryKodasHistoryOne = json['insertHistoryKodasHistoryOne'];
    final l$insertHistoryCallHistoryOne = json['insertHistoryCallHistoryOne'];
    final l$insertHistoryVisitHistoryOne = json['insertHistoryVisitHistoryOne'];
    final l$$__typename = json['__typename'];
    return Mutation_updatePerson(
      updatePersonsByPk: l$updatePersonsByPk == null
          ? null
          : Fragment_Person.fromJson(
              (l$updatePersonsByPk as Map<String, dynamic>)),
      insertPersonsServices: l$insertPersonsServices == null
          ? null
          : Mutation_updatePerson_insertPersonsServices.fromJson(
              (l$insertPersonsServices as Map<String, dynamic>)),
      insertPersonsGroups: l$insertPersonsGroups == null
          ? null
          : Mutation_updatePerson_insertPersonsGroups.fromJson(
              (l$insertPersonsGroups as Map<String, dynamic>)),
      insertPersonsHobbies: l$insertPersonsHobbies == null
          ? null
          : Mutation_updatePerson_insertPersonsHobbies.fromJson(
              (l$insertPersonsHobbies as Map<String, dynamic>)),
      insertPersonsTags: l$insertPersonsTags == null
          ? null
          : Mutation_updatePerson_insertPersonsTags.fromJson(
              (l$insertPersonsTags as Map<String, dynamic>)),
      deletePersonsTags: l$deletePersonsTags == null
          ? null
          : Mutation_updatePerson_deletePersonsTags.fromJson(
              (l$deletePersonsTags as Map<String, dynamic>)),
      deletePersonsHobbies: l$deletePersonsHobbies == null
          ? null
          : Mutation_updatePerson_deletePersonsHobbies.fromJson(
              (l$deletePersonsHobbies as Map<String, dynamic>)),
      deletePersonsGroups: l$deletePersonsGroups == null
          ? null
          : Mutation_updatePerson_deletePersonsGroups.fromJson(
              (l$deletePersonsGroups as Map<String, dynamic>)),
      deletePersonsServices: l$deletePersonsServices == null
          ? null
          : Mutation_updatePerson_deletePersonsServices.fromJson(
              (l$deletePersonsServices as Map<String, dynamic>)),
      insertHistoryConfessionHistoryOne: l$insertHistoryConfessionHistoryOne ==
              null
          ? null
          : Mutation_updatePerson_insertHistoryConfessionHistoryOne.fromJson(
              (l$insertHistoryConfessionHistoryOne as Map<String, dynamic>)),
      insertHistoryKodasHistoryOne: l$insertHistoryKodasHistoryOne == null
          ? null
          : Mutation_updatePerson_insertHistoryKodasHistoryOne.fromJson(
              (l$insertHistoryKodasHistoryOne as Map<String, dynamic>)),
      insertHistoryCallHistoryOne: l$insertHistoryCallHistoryOne == null
          ? null
          : Mutation_updatePerson_insertHistoryCallHistoryOne.fromJson(
              (l$insertHistoryCallHistoryOne as Map<String, dynamic>)),
      insertHistoryVisitHistoryOne: l$insertHistoryVisitHistoryOne == null
          ? null
          : Mutation_updatePerson_insertHistoryVisitHistoryOne.fromJson(
              (l$insertHistoryVisitHistoryOne as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_Person? updatePersonsByPk;

  final Mutation_updatePerson_insertPersonsServices? insertPersonsServices;

  final Mutation_updatePerson_insertPersonsGroups? insertPersonsGroups;

  final Mutation_updatePerson_insertPersonsHobbies? insertPersonsHobbies;

  final Mutation_updatePerson_insertPersonsTags? insertPersonsTags;

  final Mutation_updatePerson_deletePersonsTags? deletePersonsTags;

  final Mutation_updatePerson_deletePersonsHobbies? deletePersonsHobbies;

  final Mutation_updatePerson_deletePersonsGroups? deletePersonsGroups;

  final Mutation_updatePerson_deletePersonsServices? deletePersonsServices;

  final Mutation_updatePerson_insertHistoryConfessionHistoryOne?
      insertHistoryConfessionHistoryOne;

  final Mutation_updatePerson_insertHistoryKodasHistoryOne?
      insertHistoryKodasHistoryOne;

  final Mutation_updatePerson_insertHistoryCallHistoryOne?
      insertHistoryCallHistoryOne;

  final Mutation_updatePerson_insertHistoryVisitHistoryOne?
      insertHistoryVisitHistoryOne;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updatePersonsByPk = updatePersonsByPk;
    _resultData['updatePersonsByPk'] = l$updatePersonsByPk?.toJson();
    final l$insertPersonsServices = insertPersonsServices;
    _resultData['insertPersonsServices'] = l$insertPersonsServices?.toJson();
    final l$insertPersonsGroups = insertPersonsGroups;
    _resultData['insertPersonsGroups'] = l$insertPersonsGroups?.toJson();
    final l$insertPersonsHobbies = insertPersonsHobbies;
    _resultData['insertPersonsHobbies'] = l$insertPersonsHobbies?.toJson();
    final l$insertPersonsTags = insertPersonsTags;
    _resultData['insertPersonsTags'] = l$insertPersonsTags?.toJson();
    final l$deletePersonsTags = deletePersonsTags;
    _resultData['deletePersonsTags'] = l$deletePersonsTags?.toJson();
    final l$deletePersonsHobbies = deletePersonsHobbies;
    _resultData['deletePersonsHobbies'] = l$deletePersonsHobbies?.toJson();
    final l$deletePersonsGroups = deletePersonsGroups;
    _resultData['deletePersonsGroups'] = l$deletePersonsGroups?.toJson();
    final l$deletePersonsServices = deletePersonsServices;
    _resultData['deletePersonsServices'] = l$deletePersonsServices?.toJson();
    final l$insertHistoryConfessionHistoryOne =
        insertHistoryConfessionHistoryOne;
    _resultData['insertHistoryConfessionHistoryOne'] =
        l$insertHistoryConfessionHistoryOne?.toJson();
    final l$insertHistoryKodasHistoryOne = insertHistoryKodasHistoryOne;
    _resultData['insertHistoryKodasHistoryOne'] =
        l$insertHistoryKodasHistoryOne?.toJson();
    final l$insertHistoryCallHistoryOne = insertHistoryCallHistoryOne;
    _resultData['insertHistoryCallHistoryOne'] =
        l$insertHistoryCallHistoryOne?.toJson();
    final l$insertHistoryVisitHistoryOne = insertHistoryVisitHistoryOne;
    _resultData['insertHistoryVisitHistoryOne'] =
        l$insertHistoryVisitHistoryOne?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updatePersonsByPk = updatePersonsByPk;
    final l$insertPersonsServices = insertPersonsServices;
    final l$insertPersonsGroups = insertPersonsGroups;
    final l$insertPersonsHobbies = insertPersonsHobbies;
    final l$insertPersonsTags = insertPersonsTags;
    final l$deletePersonsTags = deletePersonsTags;
    final l$deletePersonsHobbies = deletePersonsHobbies;
    final l$deletePersonsGroups = deletePersonsGroups;
    final l$deletePersonsServices = deletePersonsServices;
    final l$insertHistoryConfessionHistoryOne =
        insertHistoryConfessionHistoryOne;
    final l$insertHistoryKodasHistoryOne = insertHistoryKodasHistoryOne;
    final l$insertHistoryCallHistoryOne = insertHistoryCallHistoryOne;
    final l$insertHistoryVisitHistoryOne = insertHistoryVisitHistoryOne;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updatePersonsByPk,
      l$insertPersonsServices,
      l$insertPersonsGroups,
      l$insertPersonsHobbies,
      l$insertPersonsTags,
      l$deletePersonsTags,
      l$deletePersonsHobbies,
      l$deletePersonsGroups,
      l$deletePersonsServices,
      l$insertHistoryConfessionHistoryOne,
      l$insertHistoryKodasHistoryOne,
      l$insertHistoryCallHistoryOne,
      l$insertHistoryVisitHistoryOne,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_updatePerson || runtimeType != other.runtimeType) {
      return false;
    }
    final l$updatePersonsByPk = updatePersonsByPk;
    final lOther$updatePersonsByPk = other.updatePersonsByPk;
    if (l$updatePersonsByPk != lOther$updatePersonsByPk) {
      return false;
    }
    final l$insertPersonsServices = insertPersonsServices;
    final lOther$insertPersonsServices = other.insertPersonsServices;
    if (l$insertPersonsServices != lOther$insertPersonsServices) {
      return false;
    }
    final l$insertPersonsGroups = insertPersonsGroups;
    final lOther$insertPersonsGroups = other.insertPersonsGroups;
    if (l$insertPersonsGroups != lOther$insertPersonsGroups) {
      return false;
    }
    final l$insertPersonsHobbies = insertPersonsHobbies;
    final lOther$insertPersonsHobbies = other.insertPersonsHobbies;
    if (l$insertPersonsHobbies != lOther$insertPersonsHobbies) {
      return false;
    }
    final l$insertPersonsTags = insertPersonsTags;
    final lOther$insertPersonsTags = other.insertPersonsTags;
    if (l$insertPersonsTags != lOther$insertPersonsTags) {
      return false;
    }
    final l$deletePersonsTags = deletePersonsTags;
    final lOther$deletePersonsTags = other.deletePersonsTags;
    if (l$deletePersonsTags != lOther$deletePersonsTags) {
      return false;
    }
    final l$deletePersonsHobbies = deletePersonsHobbies;
    final lOther$deletePersonsHobbies = other.deletePersonsHobbies;
    if (l$deletePersonsHobbies != lOther$deletePersonsHobbies) {
      return false;
    }
    final l$deletePersonsGroups = deletePersonsGroups;
    final lOther$deletePersonsGroups = other.deletePersonsGroups;
    if (l$deletePersonsGroups != lOther$deletePersonsGroups) {
      return false;
    }
    final l$deletePersonsServices = deletePersonsServices;
    final lOther$deletePersonsServices = other.deletePersonsServices;
    if (l$deletePersonsServices != lOther$deletePersonsServices) {
      return false;
    }
    final l$insertHistoryConfessionHistoryOne =
        insertHistoryConfessionHistoryOne;
    final lOther$insertHistoryConfessionHistoryOne =
        other.insertHistoryConfessionHistoryOne;
    if (l$insertHistoryConfessionHistoryOne !=
        lOther$insertHistoryConfessionHistoryOne) {
      return false;
    }
    final l$insertHistoryKodasHistoryOne = insertHistoryKodasHistoryOne;
    final lOther$insertHistoryKodasHistoryOne =
        other.insertHistoryKodasHistoryOne;
    if (l$insertHistoryKodasHistoryOne != lOther$insertHistoryKodasHistoryOne) {
      return false;
    }
    final l$insertHistoryCallHistoryOne = insertHistoryCallHistoryOne;
    final lOther$insertHistoryCallHistoryOne =
        other.insertHistoryCallHistoryOne;
    if (l$insertHistoryCallHistoryOne != lOther$insertHistoryCallHistoryOne) {
      return false;
    }
    final l$insertHistoryVisitHistoryOne = insertHistoryVisitHistoryOne;
    final lOther$insertHistoryVisitHistoryOne =
        other.insertHistoryVisitHistoryOne;
    if (l$insertHistoryVisitHistoryOne != lOther$insertHistoryVisitHistoryOne) {
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

extension UtilityExtension_Mutation_updatePerson on Mutation_updatePerson {
  CopyWith_Mutation_updatePerson<Mutation_updatePerson> get copyWith =>
      CopyWith_Mutation_updatePerson(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Mutation_updatePerson<TRes> {
  factory CopyWith_Mutation_updatePerson(
    Mutation_updatePerson instance,
    TRes Function(Mutation_updatePerson) then,
  ) = _CopyWithImpl_Mutation_updatePerson;

  factory CopyWith_Mutation_updatePerson.stub(TRes res) =
      _CopyWithStubImpl_Mutation_updatePerson;

  TRes call({
    Fragment_Person? updatePersonsByPk,
    Mutation_updatePerson_insertPersonsServices? insertPersonsServices,
    Mutation_updatePerson_insertPersonsGroups? insertPersonsGroups,
    Mutation_updatePerson_insertPersonsHobbies? insertPersonsHobbies,
    Mutation_updatePerson_insertPersonsTags? insertPersonsTags,
    Mutation_updatePerson_deletePersonsTags? deletePersonsTags,
    Mutation_updatePerson_deletePersonsHobbies? deletePersonsHobbies,
    Mutation_updatePerson_deletePersonsGroups? deletePersonsGroups,
    Mutation_updatePerson_deletePersonsServices? deletePersonsServices,
    Mutation_updatePerson_insertHistoryConfessionHistoryOne?
        insertHistoryConfessionHistoryOne,
    Mutation_updatePerson_insertHistoryKodasHistoryOne?
        insertHistoryKodasHistoryOne,
    Mutation_updatePerson_insertHistoryCallHistoryOne?
        insertHistoryCallHistoryOne,
    Mutation_updatePerson_insertHistoryVisitHistoryOne?
        insertHistoryVisitHistoryOne,
    String? $__typename,
  });
  CopyWith_Fragment_Person<TRes> get updatePersonsByPk;
  CopyWith_Mutation_updatePerson_insertPersonsServices<TRes>
      get insertPersonsServices;
  CopyWith_Mutation_updatePerson_insertPersonsGroups<TRes>
      get insertPersonsGroups;
  CopyWith_Mutation_updatePerson_insertPersonsHobbies<TRes>
      get insertPersonsHobbies;
  CopyWith_Mutation_updatePerson_insertPersonsTags<TRes> get insertPersonsTags;
  CopyWith_Mutation_updatePerson_deletePersonsTags<TRes> get deletePersonsTags;
  CopyWith_Mutation_updatePerson_deletePersonsHobbies<TRes>
      get deletePersonsHobbies;
  CopyWith_Mutation_updatePerson_deletePersonsGroups<TRes>
      get deletePersonsGroups;
  CopyWith_Mutation_updatePerson_deletePersonsServices<TRes>
      get deletePersonsServices;
  CopyWith_Mutation_updatePerson_insertHistoryConfessionHistoryOne<TRes>
      get insertHistoryConfessionHistoryOne;
  CopyWith_Mutation_updatePerson_insertHistoryKodasHistoryOne<TRes>
      get insertHistoryKodasHistoryOne;
  CopyWith_Mutation_updatePerson_insertHistoryCallHistoryOne<TRes>
      get insertHistoryCallHistoryOne;
  CopyWith_Mutation_updatePerson_insertHistoryVisitHistoryOne<TRes>
      get insertHistoryVisitHistoryOne;
}

class _CopyWithImpl_Mutation_updatePerson<TRes>
    implements CopyWith_Mutation_updatePerson<TRes> {
  _CopyWithImpl_Mutation_updatePerson(
    this._instance,
    this._then,
  );

  final Mutation_updatePerson _instance;

  final TRes Function(Mutation_updatePerson) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updatePersonsByPk = _undefined,
    Object? insertPersonsServices = _undefined,
    Object? insertPersonsGroups = _undefined,
    Object? insertPersonsHobbies = _undefined,
    Object? insertPersonsTags = _undefined,
    Object? deletePersonsTags = _undefined,
    Object? deletePersonsHobbies = _undefined,
    Object? deletePersonsGroups = _undefined,
    Object? deletePersonsServices = _undefined,
    Object? insertHistoryConfessionHistoryOne = _undefined,
    Object? insertHistoryKodasHistoryOne = _undefined,
    Object? insertHistoryCallHistoryOne = _undefined,
    Object? insertHistoryVisitHistoryOne = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation_updatePerson(
        updatePersonsByPk: updatePersonsByPk == _undefined
            ? _instance.updatePersonsByPk
            : (updatePersonsByPk as Fragment_Person?),
        insertPersonsServices: insertPersonsServices == _undefined
            ? _instance.insertPersonsServices
            : (insertPersonsServices
                as Mutation_updatePerson_insertPersonsServices?),
        insertPersonsGroups: insertPersonsGroups == _undefined
            ? _instance.insertPersonsGroups
            : (insertPersonsGroups
                as Mutation_updatePerson_insertPersonsGroups?),
        insertPersonsHobbies: insertPersonsHobbies == _undefined
            ? _instance.insertPersonsHobbies
            : (insertPersonsHobbies
                as Mutation_updatePerson_insertPersonsHobbies?),
        insertPersonsTags: insertPersonsTags == _undefined
            ? _instance.insertPersonsTags
            : (insertPersonsTags as Mutation_updatePerson_insertPersonsTags?),
        deletePersonsTags: deletePersonsTags == _undefined
            ? _instance.deletePersonsTags
            : (deletePersonsTags as Mutation_updatePerson_deletePersonsTags?),
        deletePersonsHobbies: deletePersonsHobbies == _undefined
            ? _instance.deletePersonsHobbies
            : (deletePersonsHobbies
                as Mutation_updatePerson_deletePersonsHobbies?),
        deletePersonsGroups: deletePersonsGroups == _undefined
            ? _instance.deletePersonsGroups
            : (deletePersonsGroups
                as Mutation_updatePerson_deletePersonsGroups?),
        deletePersonsServices: deletePersonsServices == _undefined
            ? _instance.deletePersonsServices
            : (deletePersonsServices
                as Mutation_updatePerson_deletePersonsServices?),
        insertHistoryConfessionHistoryOne: insertHistoryConfessionHistoryOne ==
                _undefined
            ? _instance.insertHistoryConfessionHistoryOne
            : (insertHistoryConfessionHistoryOne
                as Mutation_updatePerson_insertHistoryConfessionHistoryOne?),
        insertHistoryKodasHistoryOne: insertHistoryKodasHistoryOne == _undefined
            ? _instance.insertHistoryKodasHistoryOne
            : (insertHistoryKodasHistoryOne
                as Mutation_updatePerson_insertHistoryKodasHistoryOne?),
        insertHistoryCallHistoryOne: insertHistoryCallHistoryOne == _undefined
            ? _instance.insertHistoryCallHistoryOne
            : (insertHistoryCallHistoryOne
                as Mutation_updatePerson_insertHistoryCallHistoryOne?),
        insertHistoryVisitHistoryOne: insertHistoryVisitHistoryOne == _undefined
            ? _instance.insertHistoryVisitHistoryOne
            : (insertHistoryVisitHistoryOne
                as Mutation_updatePerson_insertHistoryVisitHistoryOne?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith_Fragment_Person<TRes> get updatePersonsByPk {
    final local$updatePersonsByPk = _instance.updatePersonsByPk;
    return local$updatePersonsByPk == null
        ? CopyWith_Fragment_Person.stub(_then(_instance))
        : CopyWith_Fragment_Person(
            local$updatePersonsByPk, (e) => call(updatePersonsByPk: e));
  }

  CopyWith_Mutation_updatePerson_insertPersonsServices<TRes>
      get insertPersonsServices {
    final local$insertPersonsServices = _instance.insertPersonsServices;
    return local$insertPersonsServices == null
        ? CopyWith_Mutation_updatePerson_insertPersonsServices.stub(
            _then(_instance))
        : CopyWith_Mutation_updatePerson_insertPersonsServices(
            local$insertPersonsServices, (e) => call(insertPersonsServices: e));
  }

  CopyWith_Mutation_updatePerson_insertPersonsGroups<TRes>
      get insertPersonsGroups {
    final local$insertPersonsGroups = _instance.insertPersonsGroups;
    return local$insertPersonsGroups == null
        ? CopyWith_Mutation_updatePerson_insertPersonsGroups.stub(
            _then(_instance))
        : CopyWith_Mutation_updatePerson_insertPersonsGroups(
            local$insertPersonsGroups, (e) => call(insertPersonsGroups: e));
  }

  CopyWith_Mutation_updatePerson_insertPersonsHobbies<TRes>
      get insertPersonsHobbies {
    final local$insertPersonsHobbies = _instance.insertPersonsHobbies;
    return local$insertPersonsHobbies == null
        ? CopyWith_Mutation_updatePerson_insertPersonsHobbies.stub(
            _then(_instance))
        : CopyWith_Mutation_updatePerson_insertPersonsHobbies(
            local$insertPersonsHobbies, (e) => call(insertPersonsHobbies: e));
  }

  CopyWith_Mutation_updatePerson_insertPersonsTags<TRes> get insertPersonsTags {
    final local$insertPersonsTags = _instance.insertPersonsTags;
    return local$insertPersonsTags == null
        ? CopyWith_Mutation_updatePerson_insertPersonsTags.stub(
            _then(_instance))
        : CopyWith_Mutation_updatePerson_insertPersonsTags(
            local$insertPersonsTags, (e) => call(insertPersonsTags: e));
  }

  CopyWith_Mutation_updatePerson_deletePersonsTags<TRes> get deletePersonsTags {
    final local$deletePersonsTags = _instance.deletePersonsTags;
    return local$deletePersonsTags == null
        ? CopyWith_Mutation_updatePerson_deletePersonsTags.stub(
            _then(_instance))
        : CopyWith_Mutation_updatePerson_deletePersonsTags(
            local$deletePersonsTags, (e) => call(deletePersonsTags: e));
  }

  CopyWith_Mutation_updatePerson_deletePersonsHobbies<TRes>
      get deletePersonsHobbies {
    final local$deletePersonsHobbies = _instance.deletePersonsHobbies;
    return local$deletePersonsHobbies == null
        ? CopyWith_Mutation_updatePerson_deletePersonsHobbies.stub(
            _then(_instance))
        : CopyWith_Mutation_updatePerson_deletePersonsHobbies(
            local$deletePersonsHobbies, (e) => call(deletePersonsHobbies: e));
  }

  CopyWith_Mutation_updatePerson_deletePersonsGroups<TRes>
      get deletePersonsGroups {
    final local$deletePersonsGroups = _instance.deletePersonsGroups;
    return local$deletePersonsGroups == null
        ? CopyWith_Mutation_updatePerson_deletePersonsGroups.stub(
            _then(_instance))
        : CopyWith_Mutation_updatePerson_deletePersonsGroups(
            local$deletePersonsGroups, (e) => call(deletePersonsGroups: e));
  }

  CopyWith_Mutation_updatePerson_deletePersonsServices<TRes>
      get deletePersonsServices {
    final local$deletePersonsServices = _instance.deletePersonsServices;
    return local$deletePersonsServices == null
        ? CopyWith_Mutation_updatePerson_deletePersonsServices.stub(
            _then(_instance))
        : CopyWith_Mutation_updatePerson_deletePersonsServices(
            local$deletePersonsServices, (e) => call(deletePersonsServices: e));
  }

  CopyWith_Mutation_updatePerson_insertHistoryConfessionHistoryOne<TRes>
      get insertHistoryConfessionHistoryOne {
    final local$insertHistoryConfessionHistoryOne =
        _instance.insertHistoryConfessionHistoryOne;
    return local$insertHistoryConfessionHistoryOne == null
        ? CopyWith_Mutation_updatePerson_insertHistoryConfessionHistoryOne.stub(
            _then(_instance))
        : CopyWith_Mutation_updatePerson_insertHistoryConfessionHistoryOne(
            local$insertHistoryConfessionHistoryOne,
            (e) => call(insertHistoryConfessionHistoryOne: e));
  }

  CopyWith_Mutation_updatePerson_insertHistoryKodasHistoryOne<TRes>
      get insertHistoryKodasHistoryOne {
    final local$insertHistoryKodasHistoryOne =
        _instance.insertHistoryKodasHistoryOne;
    return local$insertHistoryKodasHistoryOne == null
        ? CopyWith_Mutation_updatePerson_insertHistoryKodasHistoryOne.stub(
            _then(_instance))
        : CopyWith_Mutation_updatePerson_insertHistoryKodasHistoryOne(
            local$insertHistoryKodasHistoryOne,
            (e) => call(insertHistoryKodasHistoryOne: e));
  }

  CopyWith_Mutation_updatePerson_insertHistoryCallHistoryOne<TRes>
      get insertHistoryCallHistoryOne {
    final local$insertHistoryCallHistoryOne =
        _instance.insertHistoryCallHistoryOne;
    return local$insertHistoryCallHistoryOne == null
        ? CopyWith_Mutation_updatePerson_insertHistoryCallHistoryOne.stub(
            _then(_instance))
        : CopyWith_Mutation_updatePerson_insertHistoryCallHistoryOne(
            local$insertHistoryCallHistoryOne,
            (e) => call(insertHistoryCallHistoryOne: e));
  }

  CopyWith_Mutation_updatePerson_insertHistoryVisitHistoryOne<TRes>
      get insertHistoryVisitHistoryOne {
    final local$insertHistoryVisitHistoryOne =
        _instance.insertHistoryVisitHistoryOne;
    return local$insertHistoryVisitHistoryOne == null
        ? CopyWith_Mutation_updatePerson_insertHistoryVisitHistoryOne.stub(
            _then(_instance))
        : CopyWith_Mutation_updatePerson_insertHistoryVisitHistoryOne(
            local$insertHistoryVisitHistoryOne,
            (e) => call(insertHistoryVisitHistoryOne: e));
  }
}

class _CopyWithStubImpl_Mutation_updatePerson<TRes>
    implements CopyWith_Mutation_updatePerson<TRes> {
  _CopyWithStubImpl_Mutation_updatePerson(this._res);

  TRes _res;

  call({
    Fragment_Person? updatePersonsByPk,
    Mutation_updatePerson_insertPersonsServices? insertPersonsServices,
    Mutation_updatePerson_insertPersonsGroups? insertPersonsGroups,
    Mutation_updatePerson_insertPersonsHobbies? insertPersonsHobbies,
    Mutation_updatePerson_insertPersonsTags? insertPersonsTags,
    Mutation_updatePerson_deletePersonsTags? deletePersonsTags,
    Mutation_updatePerson_deletePersonsHobbies? deletePersonsHobbies,
    Mutation_updatePerson_deletePersonsGroups? deletePersonsGroups,
    Mutation_updatePerson_deletePersonsServices? deletePersonsServices,
    Mutation_updatePerson_insertHistoryConfessionHistoryOne?
        insertHistoryConfessionHistoryOne,
    Mutation_updatePerson_insertHistoryKodasHistoryOne?
        insertHistoryKodasHistoryOne,
    Mutation_updatePerson_insertHistoryCallHistoryOne?
        insertHistoryCallHistoryOne,
    Mutation_updatePerson_insertHistoryVisitHistoryOne?
        insertHistoryVisitHistoryOne,
    String? $__typename,
  }) =>
      _res;

  CopyWith_Fragment_Person<TRes> get updatePersonsByPk =>
      CopyWith_Fragment_Person.stub(_res);

  CopyWith_Mutation_updatePerson_insertPersonsServices<TRes>
      get insertPersonsServices =>
          CopyWith_Mutation_updatePerson_insertPersonsServices.stub(_res);

  CopyWith_Mutation_updatePerson_insertPersonsGroups<TRes>
      get insertPersonsGroups =>
          CopyWith_Mutation_updatePerson_insertPersonsGroups.stub(_res);

  CopyWith_Mutation_updatePerson_insertPersonsHobbies<TRes>
      get insertPersonsHobbies =>
          CopyWith_Mutation_updatePerson_insertPersonsHobbies.stub(_res);

  CopyWith_Mutation_updatePerson_insertPersonsTags<TRes>
      get insertPersonsTags =>
          CopyWith_Mutation_updatePerson_insertPersonsTags.stub(_res);

  CopyWith_Mutation_updatePerson_deletePersonsTags<TRes>
      get deletePersonsTags =>
          CopyWith_Mutation_updatePerson_deletePersonsTags.stub(_res);

  CopyWith_Mutation_updatePerson_deletePersonsHobbies<TRes>
      get deletePersonsHobbies =>
          CopyWith_Mutation_updatePerson_deletePersonsHobbies.stub(_res);

  CopyWith_Mutation_updatePerson_deletePersonsGroups<TRes>
      get deletePersonsGroups =>
          CopyWith_Mutation_updatePerson_deletePersonsGroups.stub(_res);

  CopyWith_Mutation_updatePerson_deletePersonsServices<TRes>
      get deletePersonsServices =>
          CopyWith_Mutation_updatePerson_deletePersonsServices.stub(_res);

  CopyWith_Mutation_updatePerson_insertHistoryConfessionHistoryOne<TRes>
      get insertHistoryConfessionHistoryOne =>
          CopyWith_Mutation_updatePerson_insertHistoryConfessionHistoryOne.stub(
              _res);

  CopyWith_Mutation_updatePerson_insertHistoryKodasHistoryOne<TRes>
      get insertHistoryKodasHistoryOne =>
          CopyWith_Mutation_updatePerson_insertHistoryKodasHistoryOne.stub(
              _res);

  CopyWith_Mutation_updatePerson_insertHistoryCallHistoryOne<TRes>
      get insertHistoryCallHistoryOne =>
          CopyWith_Mutation_updatePerson_insertHistoryCallHistoryOne.stub(_res);

  CopyWith_Mutation_updatePerson_insertHistoryVisitHistoryOne<TRes>
      get insertHistoryVisitHistoryOne =>
          CopyWith_Mutation_updatePerson_insertHistoryVisitHistoryOne.stub(
              _res);
}

const documentNodeMutationupdatePerson = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'updatePerson'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'personId')),
        type: NamedTypeNode(
          name: NameNode(value: 'Uuid'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'newPerson')),
        type: NamedTypeNode(
          name: NameNode(value: 'PersonsSetInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'newGroups')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'PersonsGroupsInsertInput'),
            isNonNull: true,
          ),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: ListValueNode(values: [])),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'deleteGroups')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'Uuid'),
            isNonNull: true,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'newServices')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'PersonsServicesInsertInput'),
            isNonNull: true,
          ),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: ListValueNode(values: [])),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'deleteServices')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'Uuid'),
            isNonNull: true,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'newHobbies')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'PersonsHobbiesInsertInput'),
            isNonNull: true,
          ),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: ListValueNode(values: [])),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'deleteHobbies')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'Uuid'),
            isNonNull: true,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'newTags')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'PersonsTagsInsertInput'),
            isNonNull: true,
          ),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: ListValueNode(values: [])),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'deleteTags')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'Uuid'),
            isNonNull: true,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'lastConfession')),
        type: NamedTypeNode(
          name: NameNode(value: 'Date'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'lastKodas')),
        type: NamedTypeNode(
          name: NameNode(value: 'Date'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'lastCall')),
        type: NamedTypeNode(
          name: NameNode(value: 'Timestamptz'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'lastVisit')),
        type: NamedTypeNode(
          name: NameNode(value: 'Timestamptz'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'updatePersonsByPk')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: BooleanValueNode(value: true)),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'insertPersonsServices')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: BooleanValueNode(value: true)),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'insertPersonsGroups')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: BooleanValueNode(value: true)),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'insertPersonsHobbies')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: BooleanValueNode(value: true)),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'insertPersonsTags')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: BooleanValueNode(value: true)),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'deletePersonsTags')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: BooleanValueNode(value: true)),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'deletePersonsHobbies')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: BooleanValueNode(value: true)),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'deletePersonsGroups')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: BooleanValueNode(value: true)),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'deletePersonsServices')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: BooleanValueNode(value: true)),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(
            name: NameNode(value: 'insertHistoryConfessionHistoryOne')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: BooleanValueNode(value: true)),
        directives: [],
      ),
      VariableDefinitionNode(
        variable:
            VariableNode(name: NameNode(value: 'insertHistoryKodasHistoryOne')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: BooleanValueNode(value: true)),
        directives: [],
      ),
      VariableDefinitionNode(
        variable:
            VariableNode(name: NameNode(value: 'insertHistoryCallHistoryOne')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: BooleanValueNode(value: true)),
        directives: [],
      ),
      VariableDefinitionNode(
        variable:
            VariableNode(name: NameNode(value: 'insertHistoryVisitHistoryOne')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: BooleanValueNode(value: true)),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'updatePersonsByPk'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'pkColumns'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'id'),
                value: VariableNode(name: NameNode(value: 'personId')),
              )
            ]),
          ),
          ArgumentNode(
            name: NameNode(value: '_set'),
            value: VariableNode(name: NameNode(value: 'newPerson')),
          ),
        ],
        directives: [
          DirectiveNode(
            name: NameNode(value: 'include'),
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'if'),
                value: VariableNode(name: NameNode(value: 'updatePersonsByPk')),
              )
            ],
          )
        ],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'Person'),
            directives: [],
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: 'insertPersonsServices'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'objects'),
            value: VariableNode(name: NameNode(value: 'newServices')),
          )
        ],
        directives: [
          DirectiveNode(
            name: NameNode(value: 'include'),
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'if'),
                value: VariableNode(
                    name: NameNode(value: 'insertPersonsServices')),
              )
            ],
          )
        ],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'affectedRows'),
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
        ]),
      ),
      FieldNode(
        name: NameNode(value: 'insertPersonsGroups'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'objects'),
            value: VariableNode(name: NameNode(value: 'newGroups')),
          )
        ],
        directives: [
          DirectiveNode(
            name: NameNode(value: 'include'),
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'if'),
                value:
                    VariableNode(name: NameNode(value: 'insertPersonsGroups')),
              )
            ],
          )
        ],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'affectedRows'),
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
        ]),
      ),
      FieldNode(
        name: NameNode(value: 'insertPersonsHobbies'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'objects'),
            value: VariableNode(name: NameNode(value: 'newHobbies')),
          )
        ],
        directives: [
          DirectiveNode(
            name: NameNode(value: 'include'),
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'if'),
                value:
                    VariableNode(name: NameNode(value: 'insertPersonsHobbies')),
              )
            ],
          )
        ],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'affectedRows'),
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
        ]),
      ),
      FieldNode(
        name: NameNode(value: 'insertPersonsTags'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'objects'),
            value: VariableNode(name: NameNode(value: 'newTags')),
          )
        ],
        directives: [
          DirectiveNode(
            name: NameNode(value: 'include'),
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'if'),
                value: VariableNode(name: NameNode(value: 'insertPersonsTags')),
              )
            ],
          )
        ],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'affectedRows'),
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
        ]),
      ),
      FieldNode(
        name: NameNode(value: 'deletePersonsTags'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'personId'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: '_eq'),
                    value: VariableNode(name: NameNode(value: 'personId')),
                  )
                ]),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'tagId'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: '_in'),
                    value: VariableNode(name: NameNode(value: 'deleteTags')),
                  )
                ]),
              ),
            ]),
          )
        ],
        directives: [
          DirectiveNode(
            name: NameNode(value: 'include'),
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'if'),
                value: VariableNode(name: NameNode(value: 'deletePersonsTags')),
              )
            ],
          )
        ],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'affectedRows'),
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
        ]),
      ),
      FieldNode(
        name: NameNode(value: 'deletePersonsHobbies'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'personId'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: '_eq'),
                    value: VariableNode(name: NameNode(value: 'personId')),
                  )
                ]),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'hobbyId'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: '_in'),
                    value: VariableNode(name: NameNode(value: 'deleteHobbies')),
                  )
                ]),
              ),
            ]),
          )
        ],
        directives: [
          DirectiveNode(
            name: NameNode(value: 'include'),
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'if'),
                value:
                    VariableNode(name: NameNode(value: 'deletePersonsHobbies')),
              )
            ],
          )
        ],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'affectedRows'),
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
        ]),
      ),
      FieldNode(
        name: NameNode(value: 'deletePersonsGroups'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'personId'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: '_eq'),
                    value: VariableNode(name: NameNode(value: 'personId')),
                  )
                ]),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'groupId'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: '_in'),
                    value: VariableNode(name: NameNode(value: 'deleteGroups')),
                  )
                ]),
              ),
            ]),
          )
        ],
        directives: [
          DirectiveNode(
            name: NameNode(value: 'include'),
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'if'),
                value:
                    VariableNode(name: NameNode(value: 'deletePersonsGroups')),
              )
            ],
          )
        ],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'affectedRows'),
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
        ]),
      ),
      FieldNode(
        name: NameNode(value: 'deletePersonsServices'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'personId'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: '_eq'),
                    value: VariableNode(name: NameNode(value: 'personId')),
                  )
                ]),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'serviceId'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: '_in'),
                    value:
                        VariableNode(name: NameNode(value: 'deleteServices')),
                  )
                ]),
              ),
            ]),
          )
        ],
        directives: [
          DirectiveNode(
            name: NameNode(value: 'include'),
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'if'),
                value: VariableNode(
                    name: NameNode(value: 'deletePersonsServices')),
              )
            ],
          )
        ],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'affectedRows'),
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
        ]),
      ),
      FieldNode(
        name: NameNode(value: 'insertHistoryConfessionHistoryOne'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'object'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'personId'),
                value: VariableNode(name: NameNode(value: 'personId')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'day'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'data'),
                    value: ObjectValueNode(fields: [
                      ObjectFieldNode(
                        name: NameNode(value: 'day'),
                        value: VariableNode(
                            name: NameNode(value: 'lastConfession')),
                      )
                    ]),
                  ),
                  ObjectFieldNode(
                    name: NameNode(value: 'onConflict'),
                    value: ObjectValueNode(fields: [
                      ObjectFieldNode(
                        name: NameNode(value: 'constraint'),
                        value: EnumValueNode(
                            name: NameNode(value: 'attendanceDaysPkey')),
                      ),
                      ObjectFieldNode(
                        name: NameNode(value: 'updateColumns'),
                        value: EnumValueNode(name: NameNode(value: 'day')),
                      ),
                    ]),
                  ),
                ]),
              ),
            ]),
          ),
          ArgumentNode(
            name: NameNode(value: 'onConflict'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'constraint'),
                value: EnumValueNode(
                    name: NameNode(value: 'confessionHistoryDayIdPersonIdKey')),
              )
            ]),
          ),
        ],
        directives: [
          DirectiveNode(
            name: NameNode(value: 'include'),
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'if'),
                value: VariableNode(
                    name: NameNode(value: 'insertHistoryConfessionHistoryOne')),
              )
            ],
          )
        ],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'person'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
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
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: 'insertHistoryKodasHistoryOne'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'object'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'personId'),
                value: VariableNode(name: NameNode(value: 'personId')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'day'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'data'),
                    value: ObjectValueNode(fields: [
                      ObjectFieldNode(
                        name: NameNode(value: 'day'),
                        value: VariableNode(name: NameNode(value: 'lastKodas')),
                      )
                    ]),
                  ),
                  ObjectFieldNode(
                    name: NameNode(value: 'onConflict'),
                    value: ObjectValueNode(fields: [
                      ObjectFieldNode(
                        name: NameNode(value: 'constraint'),
                        value: EnumValueNode(
                            name: NameNode(value: 'attendanceDaysPkey')),
                      ),
                      ObjectFieldNode(
                        name: NameNode(value: 'updateColumns'),
                        value: EnumValueNode(name: NameNode(value: 'day')),
                      ),
                    ]),
                  ),
                ]),
              ),
            ]),
          ),
          ArgumentNode(
            name: NameNode(value: 'onConflict'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'constraint'),
                value: EnumValueNode(
                    name: NameNode(value: 'kodasHistoryDayIdPersonIdKey')),
              )
            ]),
          ),
        ],
        directives: [
          DirectiveNode(
            name: NameNode(value: 'include'),
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'if'),
                value: VariableNode(
                    name: NameNode(value: 'insertHistoryKodasHistoryOne')),
              )
            ],
          )
        ],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'person'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
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
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: 'insertHistoryCallHistoryOne'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'object'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'personId'),
                value: VariableNode(name: NameNode(value: 'personId')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'time'),
                value: VariableNode(name: NameNode(value: 'lastCall')),
              ),
            ]),
          )
        ],
        directives: [
          DirectiveNode(
            name: NameNode(value: 'include'),
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'if'),
                value: VariableNode(
                    name: NameNode(value: 'insertHistoryCallHistoryOne')),
              )
            ],
          )
        ],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'person'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
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
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: 'insertHistoryVisitHistoryOne'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'object'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'table'),
                value: StringValueNode(
                  value: 'persons',
                  isBlock: false,
                ),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'recordId'),
                value: VariableNode(name: NameNode(value: 'personId')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'time'),
                value: VariableNode(name: NameNode(value: 'lastVisit')),
              ),
            ]),
          )
        ],
        directives: [
          DirectiveNode(
            name: NameNode(value: 'include'),
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'if'),
                value: VariableNode(
                    name: NameNode(value: 'insertHistoryVisitHistoryOne')),
              )
            ],
          )
        ],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'visitId'),
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
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  fragmentDefinitionPerson,
  fragmentDefinitionPersonNoPhoto,
]);

class Mutation_updatePerson_insertPersonsServices {
  Mutation_updatePerson_insertPersonsServices({
    required this.affectedRows,
    this.$__typename = 'PersonsServicesMutationResponse',
  });

  factory Mutation_updatePerson_insertPersonsServices.fromJson(
      Map<String, dynamic> json) {
    final l$affectedRows = json['affectedRows'];
    final l$$__typename = json['__typename'];
    return Mutation_updatePerson_insertPersonsServices(
      affectedRows: (l$affectedRows as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int affectedRows;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$affectedRows = affectedRows;
    _resultData['affectedRows'] = l$affectedRows;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$affectedRows = affectedRows;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$affectedRows,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_updatePerson_insertPersonsServices ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$affectedRows = affectedRows;
    final lOther$affectedRows = other.affectedRows;
    if (l$affectedRows != lOther$affectedRows) {
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

extension UtilityExtension_Mutation_updatePerson_insertPersonsServices
    on Mutation_updatePerson_insertPersonsServices {
  CopyWith_Mutation_updatePerson_insertPersonsServices<
          Mutation_updatePerson_insertPersonsServices>
      get copyWith => CopyWith_Mutation_updatePerson_insertPersonsServices(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Mutation_updatePerson_insertPersonsServices<TRes> {
  factory CopyWith_Mutation_updatePerson_insertPersonsServices(
    Mutation_updatePerson_insertPersonsServices instance,
    TRes Function(Mutation_updatePerson_insertPersonsServices) then,
  ) = _CopyWithImpl_Mutation_updatePerson_insertPersonsServices;

  factory CopyWith_Mutation_updatePerson_insertPersonsServices.stub(TRes res) =
      _CopyWithStubImpl_Mutation_updatePerson_insertPersonsServices;

  TRes call({
    int? affectedRows,
    String? $__typename,
  });
}

class _CopyWithImpl_Mutation_updatePerson_insertPersonsServices<TRes>
    implements CopyWith_Mutation_updatePerson_insertPersonsServices<TRes> {
  _CopyWithImpl_Mutation_updatePerson_insertPersonsServices(
    this._instance,
    this._then,
  );

  final Mutation_updatePerson_insertPersonsServices _instance;

  final TRes Function(Mutation_updatePerson_insertPersonsServices) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? affectedRows = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation_updatePerson_insertPersonsServices(
        affectedRows: affectedRows == _undefined || affectedRows == null
            ? _instance.affectedRows
            : (affectedRows as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Mutation_updatePerson_insertPersonsServices<TRes>
    implements CopyWith_Mutation_updatePerson_insertPersonsServices<TRes> {
  _CopyWithStubImpl_Mutation_updatePerson_insertPersonsServices(this._res);

  TRes _res;

  call({
    int? affectedRows,
    String? $__typename,
  }) =>
      _res;
}

class Mutation_updatePerson_insertPersonsGroups {
  Mutation_updatePerson_insertPersonsGroups({
    required this.affectedRows,
    this.$__typename = 'PersonsGroupsMutationResponse',
  });

  factory Mutation_updatePerson_insertPersonsGroups.fromJson(
      Map<String, dynamic> json) {
    final l$affectedRows = json['affectedRows'];
    final l$$__typename = json['__typename'];
    return Mutation_updatePerson_insertPersonsGroups(
      affectedRows: (l$affectedRows as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int affectedRows;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$affectedRows = affectedRows;
    _resultData['affectedRows'] = l$affectedRows;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$affectedRows = affectedRows;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$affectedRows,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_updatePerson_insertPersonsGroups ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$affectedRows = affectedRows;
    final lOther$affectedRows = other.affectedRows;
    if (l$affectedRows != lOther$affectedRows) {
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

extension UtilityExtension_Mutation_updatePerson_insertPersonsGroups
    on Mutation_updatePerson_insertPersonsGroups {
  CopyWith_Mutation_updatePerson_insertPersonsGroups<
          Mutation_updatePerson_insertPersonsGroups>
      get copyWith => CopyWith_Mutation_updatePerson_insertPersonsGroups(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Mutation_updatePerson_insertPersonsGroups<TRes> {
  factory CopyWith_Mutation_updatePerson_insertPersonsGroups(
    Mutation_updatePerson_insertPersonsGroups instance,
    TRes Function(Mutation_updatePerson_insertPersonsGroups) then,
  ) = _CopyWithImpl_Mutation_updatePerson_insertPersonsGroups;

  factory CopyWith_Mutation_updatePerson_insertPersonsGroups.stub(TRes res) =
      _CopyWithStubImpl_Mutation_updatePerson_insertPersonsGroups;

  TRes call({
    int? affectedRows,
    String? $__typename,
  });
}

class _CopyWithImpl_Mutation_updatePerson_insertPersonsGroups<TRes>
    implements CopyWith_Mutation_updatePerson_insertPersonsGroups<TRes> {
  _CopyWithImpl_Mutation_updatePerson_insertPersonsGroups(
    this._instance,
    this._then,
  );

  final Mutation_updatePerson_insertPersonsGroups _instance;

  final TRes Function(Mutation_updatePerson_insertPersonsGroups) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? affectedRows = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation_updatePerson_insertPersonsGroups(
        affectedRows: affectedRows == _undefined || affectedRows == null
            ? _instance.affectedRows
            : (affectedRows as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Mutation_updatePerson_insertPersonsGroups<TRes>
    implements CopyWith_Mutation_updatePerson_insertPersonsGroups<TRes> {
  _CopyWithStubImpl_Mutation_updatePerson_insertPersonsGroups(this._res);

  TRes _res;

  call({
    int? affectedRows,
    String? $__typename,
  }) =>
      _res;
}

class Mutation_updatePerson_insertPersonsHobbies {
  Mutation_updatePerson_insertPersonsHobbies({
    required this.affectedRows,
    this.$__typename = 'PersonsHobbiesMutationResponse',
  });

  factory Mutation_updatePerson_insertPersonsHobbies.fromJson(
      Map<String, dynamic> json) {
    final l$affectedRows = json['affectedRows'];
    final l$$__typename = json['__typename'];
    return Mutation_updatePerson_insertPersonsHobbies(
      affectedRows: (l$affectedRows as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int affectedRows;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$affectedRows = affectedRows;
    _resultData['affectedRows'] = l$affectedRows;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$affectedRows = affectedRows;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$affectedRows,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_updatePerson_insertPersonsHobbies ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$affectedRows = affectedRows;
    final lOther$affectedRows = other.affectedRows;
    if (l$affectedRows != lOther$affectedRows) {
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

extension UtilityExtension_Mutation_updatePerson_insertPersonsHobbies
    on Mutation_updatePerson_insertPersonsHobbies {
  CopyWith_Mutation_updatePerson_insertPersonsHobbies<
          Mutation_updatePerson_insertPersonsHobbies>
      get copyWith => CopyWith_Mutation_updatePerson_insertPersonsHobbies(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Mutation_updatePerson_insertPersonsHobbies<TRes> {
  factory CopyWith_Mutation_updatePerson_insertPersonsHobbies(
    Mutation_updatePerson_insertPersonsHobbies instance,
    TRes Function(Mutation_updatePerson_insertPersonsHobbies) then,
  ) = _CopyWithImpl_Mutation_updatePerson_insertPersonsHobbies;

  factory CopyWith_Mutation_updatePerson_insertPersonsHobbies.stub(TRes res) =
      _CopyWithStubImpl_Mutation_updatePerson_insertPersonsHobbies;

  TRes call({
    int? affectedRows,
    String? $__typename,
  });
}

class _CopyWithImpl_Mutation_updatePerson_insertPersonsHobbies<TRes>
    implements CopyWith_Mutation_updatePerson_insertPersonsHobbies<TRes> {
  _CopyWithImpl_Mutation_updatePerson_insertPersonsHobbies(
    this._instance,
    this._then,
  );

  final Mutation_updatePerson_insertPersonsHobbies _instance;

  final TRes Function(Mutation_updatePerson_insertPersonsHobbies) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? affectedRows = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation_updatePerson_insertPersonsHobbies(
        affectedRows: affectedRows == _undefined || affectedRows == null
            ? _instance.affectedRows
            : (affectedRows as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Mutation_updatePerson_insertPersonsHobbies<TRes>
    implements CopyWith_Mutation_updatePerson_insertPersonsHobbies<TRes> {
  _CopyWithStubImpl_Mutation_updatePerson_insertPersonsHobbies(this._res);

  TRes _res;

  call({
    int? affectedRows,
    String? $__typename,
  }) =>
      _res;
}

class Mutation_updatePerson_insertPersonsTags {
  Mutation_updatePerson_insertPersonsTags({
    required this.affectedRows,
    this.$__typename = 'PersonsTagsMutationResponse',
  });

  factory Mutation_updatePerson_insertPersonsTags.fromJson(
      Map<String, dynamic> json) {
    final l$affectedRows = json['affectedRows'];
    final l$$__typename = json['__typename'];
    return Mutation_updatePerson_insertPersonsTags(
      affectedRows: (l$affectedRows as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int affectedRows;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$affectedRows = affectedRows;
    _resultData['affectedRows'] = l$affectedRows;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$affectedRows = affectedRows;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$affectedRows,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_updatePerson_insertPersonsTags ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$affectedRows = affectedRows;
    final lOther$affectedRows = other.affectedRows;
    if (l$affectedRows != lOther$affectedRows) {
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

extension UtilityExtension_Mutation_updatePerson_insertPersonsTags
    on Mutation_updatePerson_insertPersonsTags {
  CopyWith_Mutation_updatePerson_insertPersonsTags<
          Mutation_updatePerson_insertPersonsTags>
      get copyWith => CopyWith_Mutation_updatePerson_insertPersonsTags(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Mutation_updatePerson_insertPersonsTags<TRes> {
  factory CopyWith_Mutation_updatePerson_insertPersonsTags(
    Mutation_updatePerson_insertPersonsTags instance,
    TRes Function(Mutation_updatePerson_insertPersonsTags) then,
  ) = _CopyWithImpl_Mutation_updatePerson_insertPersonsTags;

  factory CopyWith_Mutation_updatePerson_insertPersonsTags.stub(TRes res) =
      _CopyWithStubImpl_Mutation_updatePerson_insertPersonsTags;

  TRes call({
    int? affectedRows,
    String? $__typename,
  });
}

class _CopyWithImpl_Mutation_updatePerson_insertPersonsTags<TRes>
    implements CopyWith_Mutation_updatePerson_insertPersonsTags<TRes> {
  _CopyWithImpl_Mutation_updatePerson_insertPersonsTags(
    this._instance,
    this._then,
  );

  final Mutation_updatePerson_insertPersonsTags _instance;

  final TRes Function(Mutation_updatePerson_insertPersonsTags) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? affectedRows = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation_updatePerson_insertPersonsTags(
        affectedRows: affectedRows == _undefined || affectedRows == null
            ? _instance.affectedRows
            : (affectedRows as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Mutation_updatePerson_insertPersonsTags<TRes>
    implements CopyWith_Mutation_updatePerson_insertPersonsTags<TRes> {
  _CopyWithStubImpl_Mutation_updatePerson_insertPersonsTags(this._res);

  TRes _res;

  call({
    int? affectedRows,
    String? $__typename,
  }) =>
      _res;
}

class Mutation_updatePerson_deletePersonsTags {
  Mutation_updatePerson_deletePersonsTags({
    required this.affectedRows,
    this.$__typename = 'PersonsTagsMutationResponse',
  });

  factory Mutation_updatePerson_deletePersonsTags.fromJson(
      Map<String, dynamic> json) {
    final l$affectedRows = json['affectedRows'];
    final l$$__typename = json['__typename'];
    return Mutation_updatePerson_deletePersonsTags(
      affectedRows: (l$affectedRows as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int affectedRows;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$affectedRows = affectedRows;
    _resultData['affectedRows'] = l$affectedRows;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$affectedRows = affectedRows;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$affectedRows,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_updatePerson_deletePersonsTags ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$affectedRows = affectedRows;
    final lOther$affectedRows = other.affectedRows;
    if (l$affectedRows != lOther$affectedRows) {
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

extension UtilityExtension_Mutation_updatePerson_deletePersonsTags
    on Mutation_updatePerson_deletePersonsTags {
  CopyWith_Mutation_updatePerson_deletePersonsTags<
          Mutation_updatePerson_deletePersonsTags>
      get copyWith => CopyWith_Mutation_updatePerson_deletePersonsTags(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Mutation_updatePerson_deletePersonsTags<TRes> {
  factory CopyWith_Mutation_updatePerson_deletePersonsTags(
    Mutation_updatePerson_deletePersonsTags instance,
    TRes Function(Mutation_updatePerson_deletePersonsTags) then,
  ) = _CopyWithImpl_Mutation_updatePerson_deletePersonsTags;

  factory CopyWith_Mutation_updatePerson_deletePersonsTags.stub(TRes res) =
      _CopyWithStubImpl_Mutation_updatePerson_deletePersonsTags;

  TRes call({
    int? affectedRows,
    String? $__typename,
  });
}

class _CopyWithImpl_Mutation_updatePerson_deletePersonsTags<TRes>
    implements CopyWith_Mutation_updatePerson_deletePersonsTags<TRes> {
  _CopyWithImpl_Mutation_updatePerson_deletePersonsTags(
    this._instance,
    this._then,
  );

  final Mutation_updatePerson_deletePersonsTags _instance;

  final TRes Function(Mutation_updatePerson_deletePersonsTags) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? affectedRows = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation_updatePerson_deletePersonsTags(
        affectedRows: affectedRows == _undefined || affectedRows == null
            ? _instance.affectedRows
            : (affectedRows as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Mutation_updatePerson_deletePersonsTags<TRes>
    implements CopyWith_Mutation_updatePerson_deletePersonsTags<TRes> {
  _CopyWithStubImpl_Mutation_updatePerson_deletePersonsTags(this._res);

  TRes _res;

  call({
    int? affectedRows,
    String? $__typename,
  }) =>
      _res;
}

class Mutation_updatePerson_deletePersonsHobbies {
  Mutation_updatePerson_deletePersonsHobbies({
    required this.affectedRows,
    this.$__typename = 'PersonsHobbiesMutationResponse',
  });

  factory Mutation_updatePerson_deletePersonsHobbies.fromJson(
      Map<String, dynamic> json) {
    final l$affectedRows = json['affectedRows'];
    final l$$__typename = json['__typename'];
    return Mutation_updatePerson_deletePersonsHobbies(
      affectedRows: (l$affectedRows as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int affectedRows;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$affectedRows = affectedRows;
    _resultData['affectedRows'] = l$affectedRows;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$affectedRows = affectedRows;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$affectedRows,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_updatePerson_deletePersonsHobbies ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$affectedRows = affectedRows;
    final lOther$affectedRows = other.affectedRows;
    if (l$affectedRows != lOther$affectedRows) {
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

extension UtilityExtension_Mutation_updatePerson_deletePersonsHobbies
    on Mutation_updatePerson_deletePersonsHobbies {
  CopyWith_Mutation_updatePerson_deletePersonsHobbies<
          Mutation_updatePerson_deletePersonsHobbies>
      get copyWith => CopyWith_Mutation_updatePerson_deletePersonsHobbies(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Mutation_updatePerson_deletePersonsHobbies<TRes> {
  factory CopyWith_Mutation_updatePerson_deletePersonsHobbies(
    Mutation_updatePerson_deletePersonsHobbies instance,
    TRes Function(Mutation_updatePerson_deletePersonsHobbies) then,
  ) = _CopyWithImpl_Mutation_updatePerson_deletePersonsHobbies;

  factory CopyWith_Mutation_updatePerson_deletePersonsHobbies.stub(TRes res) =
      _CopyWithStubImpl_Mutation_updatePerson_deletePersonsHobbies;

  TRes call({
    int? affectedRows,
    String? $__typename,
  });
}

class _CopyWithImpl_Mutation_updatePerson_deletePersonsHobbies<TRes>
    implements CopyWith_Mutation_updatePerson_deletePersonsHobbies<TRes> {
  _CopyWithImpl_Mutation_updatePerson_deletePersonsHobbies(
    this._instance,
    this._then,
  );

  final Mutation_updatePerson_deletePersonsHobbies _instance;

  final TRes Function(Mutation_updatePerson_deletePersonsHobbies) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? affectedRows = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation_updatePerson_deletePersonsHobbies(
        affectedRows: affectedRows == _undefined || affectedRows == null
            ? _instance.affectedRows
            : (affectedRows as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Mutation_updatePerson_deletePersonsHobbies<TRes>
    implements CopyWith_Mutation_updatePerson_deletePersonsHobbies<TRes> {
  _CopyWithStubImpl_Mutation_updatePerson_deletePersonsHobbies(this._res);

  TRes _res;

  call({
    int? affectedRows,
    String? $__typename,
  }) =>
      _res;
}

class Mutation_updatePerson_deletePersonsGroups {
  Mutation_updatePerson_deletePersonsGroups({
    required this.affectedRows,
    this.$__typename = 'PersonsGroupsMutationResponse',
  });

  factory Mutation_updatePerson_deletePersonsGroups.fromJson(
      Map<String, dynamic> json) {
    final l$affectedRows = json['affectedRows'];
    final l$$__typename = json['__typename'];
    return Mutation_updatePerson_deletePersonsGroups(
      affectedRows: (l$affectedRows as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int affectedRows;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$affectedRows = affectedRows;
    _resultData['affectedRows'] = l$affectedRows;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$affectedRows = affectedRows;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$affectedRows,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_updatePerson_deletePersonsGroups ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$affectedRows = affectedRows;
    final lOther$affectedRows = other.affectedRows;
    if (l$affectedRows != lOther$affectedRows) {
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

extension UtilityExtension_Mutation_updatePerson_deletePersonsGroups
    on Mutation_updatePerson_deletePersonsGroups {
  CopyWith_Mutation_updatePerson_deletePersonsGroups<
          Mutation_updatePerson_deletePersonsGroups>
      get copyWith => CopyWith_Mutation_updatePerson_deletePersonsGroups(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Mutation_updatePerson_deletePersonsGroups<TRes> {
  factory CopyWith_Mutation_updatePerson_deletePersonsGroups(
    Mutation_updatePerson_deletePersonsGroups instance,
    TRes Function(Mutation_updatePerson_deletePersonsGroups) then,
  ) = _CopyWithImpl_Mutation_updatePerson_deletePersonsGroups;

  factory CopyWith_Mutation_updatePerson_deletePersonsGroups.stub(TRes res) =
      _CopyWithStubImpl_Mutation_updatePerson_deletePersonsGroups;

  TRes call({
    int? affectedRows,
    String? $__typename,
  });
}

class _CopyWithImpl_Mutation_updatePerson_deletePersonsGroups<TRes>
    implements CopyWith_Mutation_updatePerson_deletePersonsGroups<TRes> {
  _CopyWithImpl_Mutation_updatePerson_deletePersonsGroups(
    this._instance,
    this._then,
  );

  final Mutation_updatePerson_deletePersonsGroups _instance;

  final TRes Function(Mutation_updatePerson_deletePersonsGroups) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? affectedRows = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation_updatePerson_deletePersonsGroups(
        affectedRows: affectedRows == _undefined || affectedRows == null
            ? _instance.affectedRows
            : (affectedRows as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Mutation_updatePerson_deletePersonsGroups<TRes>
    implements CopyWith_Mutation_updatePerson_deletePersonsGroups<TRes> {
  _CopyWithStubImpl_Mutation_updatePerson_deletePersonsGroups(this._res);

  TRes _res;

  call({
    int? affectedRows,
    String? $__typename,
  }) =>
      _res;
}

class Mutation_updatePerson_deletePersonsServices {
  Mutation_updatePerson_deletePersonsServices({
    required this.affectedRows,
    this.$__typename = 'PersonsServicesMutationResponse',
  });

  factory Mutation_updatePerson_deletePersonsServices.fromJson(
      Map<String, dynamic> json) {
    final l$affectedRows = json['affectedRows'];
    final l$$__typename = json['__typename'];
    return Mutation_updatePerson_deletePersonsServices(
      affectedRows: (l$affectedRows as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int affectedRows;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$affectedRows = affectedRows;
    _resultData['affectedRows'] = l$affectedRows;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$affectedRows = affectedRows;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$affectedRows,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_updatePerson_deletePersonsServices ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$affectedRows = affectedRows;
    final lOther$affectedRows = other.affectedRows;
    if (l$affectedRows != lOther$affectedRows) {
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

extension UtilityExtension_Mutation_updatePerson_deletePersonsServices
    on Mutation_updatePerson_deletePersonsServices {
  CopyWith_Mutation_updatePerson_deletePersonsServices<
          Mutation_updatePerson_deletePersonsServices>
      get copyWith => CopyWith_Mutation_updatePerson_deletePersonsServices(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Mutation_updatePerson_deletePersonsServices<TRes> {
  factory CopyWith_Mutation_updatePerson_deletePersonsServices(
    Mutation_updatePerson_deletePersonsServices instance,
    TRes Function(Mutation_updatePerson_deletePersonsServices) then,
  ) = _CopyWithImpl_Mutation_updatePerson_deletePersonsServices;

  factory CopyWith_Mutation_updatePerson_deletePersonsServices.stub(TRes res) =
      _CopyWithStubImpl_Mutation_updatePerson_deletePersonsServices;

  TRes call({
    int? affectedRows,
    String? $__typename,
  });
}

class _CopyWithImpl_Mutation_updatePerson_deletePersonsServices<TRes>
    implements CopyWith_Mutation_updatePerson_deletePersonsServices<TRes> {
  _CopyWithImpl_Mutation_updatePerson_deletePersonsServices(
    this._instance,
    this._then,
  );

  final Mutation_updatePerson_deletePersonsServices _instance;

  final TRes Function(Mutation_updatePerson_deletePersonsServices) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? affectedRows = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation_updatePerson_deletePersonsServices(
        affectedRows: affectedRows == _undefined || affectedRows == null
            ? _instance.affectedRows
            : (affectedRows as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Mutation_updatePerson_deletePersonsServices<TRes>
    implements CopyWith_Mutation_updatePerson_deletePersonsServices<TRes> {
  _CopyWithStubImpl_Mutation_updatePerson_deletePersonsServices(this._res);

  TRes _res;

  call({
    int? affectedRows,
    String? $__typename,
  }) =>
      _res;
}

class Mutation_updatePerson_insertHistoryConfessionHistoryOne {
  Mutation_updatePerson_insertHistoryConfessionHistoryOne({
    required this.person,
    this.$__typename = 'HistoryConfessionHistory',
  });

  factory Mutation_updatePerson_insertHistoryConfessionHistoryOne.fromJson(
      Map<String, dynamic> json) {
    final l$person = json['person'];
    final l$$__typename = json['__typename'];
    return Mutation_updatePerson_insertHistoryConfessionHistoryOne(
      person: Mutation_updatePerson_insertHistoryConfessionHistoryOne_person
          .fromJson((l$person as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation_updatePerson_insertHistoryConfessionHistoryOne_person person;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$person = person;
    _resultData['person'] = l$person.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$person = person;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$person,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_updatePerson_insertHistoryConfessionHistoryOne ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$person = person;
    final lOther$person = other.person;
    if (l$person != lOther$person) {
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

extension UtilityExtension_Mutation_updatePerson_insertHistoryConfessionHistoryOne
    on Mutation_updatePerson_insertHistoryConfessionHistoryOne {
  CopyWith_Mutation_updatePerson_insertHistoryConfessionHistoryOne<
          Mutation_updatePerson_insertHistoryConfessionHistoryOne>
      get copyWith =>
          CopyWith_Mutation_updatePerson_insertHistoryConfessionHistoryOne(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Mutation_updatePerson_insertHistoryConfessionHistoryOne<
    TRes> {
  factory CopyWith_Mutation_updatePerson_insertHistoryConfessionHistoryOne(
    Mutation_updatePerson_insertHistoryConfessionHistoryOne instance,
    TRes Function(Mutation_updatePerson_insertHistoryConfessionHistoryOne) then,
  ) = _CopyWithImpl_Mutation_updatePerson_insertHistoryConfessionHistoryOne;

  factory CopyWith_Mutation_updatePerson_insertHistoryConfessionHistoryOne.stub(
          TRes res) =
      _CopyWithStubImpl_Mutation_updatePerson_insertHistoryConfessionHistoryOne;

  TRes call({
    Mutation_updatePerson_insertHistoryConfessionHistoryOne_person? person,
    String? $__typename,
  });
  CopyWith_Mutation_updatePerson_insertHistoryConfessionHistoryOne_person<TRes>
      get person;
}

class _CopyWithImpl_Mutation_updatePerson_insertHistoryConfessionHistoryOne<
        TRes>
    implements
        CopyWith_Mutation_updatePerson_insertHistoryConfessionHistoryOne<TRes> {
  _CopyWithImpl_Mutation_updatePerson_insertHistoryConfessionHistoryOne(
    this._instance,
    this._then,
  );

  final Mutation_updatePerson_insertHistoryConfessionHistoryOne _instance;

  final TRes Function(Mutation_updatePerson_insertHistoryConfessionHistoryOne)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? person = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation_updatePerson_insertHistoryConfessionHistoryOne(
        person: person == _undefined || person == null
            ? _instance.person
            : (person
                as Mutation_updatePerson_insertHistoryConfessionHistoryOne_person),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith_Mutation_updatePerson_insertHistoryConfessionHistoryOne_person<TRes>
      get person {
    final local$person = _instance.person;
    return CopyWith_Mutation_updatePerson_insertHistoryConfessionHistoryOne_person(
        local$person, (e) => call(person: e));
  }
}

class _CopyWithStubImpl_Mutation_updatePerson_insertHistoryConfessionHistoryOne<
        TRes>
    implements
        CopyWith_Mutation_updatePerson_insertHistoryConfessionHistoryOne<TRes> {
  _CopyWithStubImpl_Mutation_updatePerson_insertHistoryConfessionHistoryOne(
      this._res);

  TRes _res;

  call({
    Mutation_updatePerson_insertHistoryConfessionHistoryOne_person? person,
    String? $__typename,
  }) =>
      _res;

  CopyWith_Mutation_updatePerson_insertHistoryConfessionHistoryOne_person<TRes>
      get person =>
          CopyWith_Mutation_updatePerson_insertHistoryConfessionHistoryOne_person
              .stub(_res);
}

class Mutation_updatePerson_insertHistoryConfessionHistoryOne_person {
  Mutation_updatePerson_insertHistoryConfessionHistoryOne_person({
    required this.id,
    required this.name,
    this.$__typename = 'Persons',
  });

  factory Mutation_updatePerson_insertHistoryConfessionHistoryOne_person.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Mutation_updatePerson_insertHistoryConfessionHistoryOne_person(
      id: stringToUuid(l$id),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation_updatePerson_insertHistoryConfessionHistoryOne_person ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Mutation_updatePerson_insertHistoryConfessionHistoryOne_person
    on Mutation_updatePerson_insertHistoryConfessionHistoryOne_person {
  CopyWith_Mutation_updatePerson_insertHistoryConfessionHistoryOne_person<
          Mutation_updatePerson_insertHistoryConfessionHistoryOne_person>
      get copyWith =>
          CopyWith_Mutation_updatePerson_insertHistoryConfessionHistoryOne_person(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Mutation_updatePerson_insertHistoryConfessionHistoryOne_person<
    TRes> {
  factory CopyWith_Mutation_updatePerson_insertHistoryConfessionHistoryOne_person(
    Mutation_updatePerson_insertHistoryConfessionHistoryOne_person instance,
    TRes Function(
            Mutation_updatePerson_insertHistoryConfessionHistoryOne_person)
        then,
  ) = _CopyWithImpl_Mutation_updatePerson_insertHistoryConfessionHistoryOne_person;

  factory CopyWith_Mutation_updatePerson_insertHistoryConfessionHistoryOne_person.stub(
          TRes res) =
      _CopyWithStubImpl_Mutation_updatePerson_insertHistoryConfessionHistoryOne_person;

  TRes call({
    UuidValue? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl_Mutation_updatePerson_insertHistoryConfessionHistoryOne_person<
        TRes>
    implements
        CopyWith_Mutation_updatePerson_insertHistoryConfessionHistoryOne_person<
            TRes> {
  _CopyWithImpl_Mutation_updatePerson_insertHistoryConfessionHistoryOne_person(
    this._instance,
    this._then,
  );

  final Mutation_updatePerson_insertHistoryConfessionHistoryOne_person
      _instance;

  final TRes Function(
      Mutation_updatePerson_insertHistoryConfessionHistoryOne_person) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation_updatePerson_insertHistoryConfessionHistoryOne_person(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Mutation_updatePerson_insertHistoryConfessionHistoryOne_person<
        TRes>
    implements
        CopyWith_Mutation_updatePerson_insertHistoryConfessionHistoryOne_person<
            TRes> {
  _CopyWithStubImpl_Mutation_updatePerson_insertHistoryConfessionHistoryOne_person(
      this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Mutation_updatePerson_insertHistoryKodasHistoryOne {
  Mutation_updatePerson_insertHistoryKodasHistoryOne({
    required this.person,
    this.$__typename = 'HistoryKodasHistory',
  });

  factory Mutation_updatePerson_insertHistoryKodasHistoryOne.fromJson(
      Map<String, dynamic> json) {
    final l$person = json['person'];
    final l$$__typename = json['__typename'];
    return Mutation_updatePerson_insertHistoryKodasHistoryOne(
      person:
          Mutation_updatePerson_insertHistoryKodasHistoryOne_person.fromJson(
              (l$person as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation_updatePerson_insertHistoryKodasHistoryOne_person person;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$person = person;
    _resultData['person'] = l$person.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$person = person;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$person,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_updatePerson_insertHistoryKodasHistoryOne ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$person = person;
    final lOther$person = other.person;
    if (l$person != lOther$person) {
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

extension UtilityExtension_Mutation_updatePerson_insertHistoryKodasHistoryOne
    on Mutation_updatePerson_insertHistoryKodasHistoryOne {
  CopyWith_Mutation_updatePerson_insertHistoryKodasHistoryOne<
          Mutation_updatePerson_insertHistoryKodasHistoryOne>
      get copyWith =>
          CopyWith_Mutation_updatePerson_insertHistoryKodasHistoryOne(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Mutation_updatePerson_insertHistoryKodasHistoryOne<
    TRes> {
  factory CopyWith_Mutation_updatePerson_insertHistoryKodasHistoryOne(
    Mutation_updatePerson_insertHistoryKodasHistoryOne instance,
    TRes Function(Mutation_updatePerson_insertHistoryKodasHistoryOne) then,
  ) = _CopyWithImpl_Mutation_updatePerson_insertHistoryKodasHistoryOne;

  factory CopyWith_Mutation_updatePerson_insertHistoryKodasHistoryOne.stub(
          TRes res) =
      _CopyWithStubImpl_Mutation_updatePerson_insertHistoryKodasHistoryOne;

  TRes call({
    Mutation_updatePerson_insertHistoryKodasHistoryOne_person? person,
    String? $__typename,
  });
  CopyWith_Mutation_updatePerson_insertHistoryKodasHistoryOne_person<TRes>
      get person;
}

class _CopyWithImpl_Mutation_updatePerson_insertHistoryKodasHistoryOne<TRes>
    implements
        CopyWith_Mutation_updatePerson_insertHistoryKodasHistoryOne<TRes> {
  _CopyWithImpl_Mutation_updatePerson_insertHistoryKodasHistoryOne(
    this._instance,
    this._then,
  );

  final Mutation_updatePerson_insertHistoryKodasHistoryOne _instance;

  final TRes Function(Mutation_updatePerson_insertHistoryKodasHistoryOne) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? person = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation_updatePerson_insertHistoryKodasHistoryOne(
        person: person == _undefined || person == null
            ? _instance.person
            : (person
                as Mutation_updatePerson_insertHistoryKodasHistoryOne_person),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith_Mutation_updatePerson_insertHistoryKodasHistoryOne_person<TRes>
      get person {
    final local$person = _instance.person;
    return CopyWith_Mutation_updatePerson_insertHistoryKodasHistoryOne_person(
        local$person, (e) => call(person: e));
  }
}

class _CopyWithStubImpl_Mutation_updatePerson_insertHistoryKodasHistoryOne<TRes>
    implements
        CopyWith_Mutation_updatePerson_insertHistoryKodasHistoryOne<TRes> {
  _CopyWithStubImpl_Mutation_updatePerson_insertHistoryKodasHistoryOne(
      this._res);

  TRes _res;

  call({
    Mutation_updatePerson_insertHistoryKodasHistoryOne_person? person,
    String? $__typename,
  }) =>
      _res;

  CopyWith_Mutation_updatePerson_insertHistoryKodasHistoryOne_person<TRes>
      get person =>
          CopyWith_Mutation_updatePerson_insertHistoryKodasHistoryOne_person
              .stub(_res);
}

class Mutation_updatePerson_insertHistoryKodasHistoryOne_person {
  Mutation_updatePerson_insertHistoryKodasHistoryOne_person({
    required this.id,
    required this.name,
    this.$__typename = 'Persons',
  });

  factory Mutation_updatePerson_insertHistoryKodasHistoryOne_person.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Mutation_updatePerson_insertHistoryKodasHistoryOne_person(
      id: stringToUuid(l$id),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_updatePerson_insertHistoryKodasHistoryOne_person ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Mutation_updatePerson_insertHistoryKodasHistoryOne_person
    on Mutation_updatePerson_insertHistoryKodasHistoryOne_person {
  CopyWith_Mutation_updatePerson_insertHistoryKodasHistoryOne_person<
          Mutation_updatePerson_insertHistoryKodasHistoryOne_person>
      get copyWith =>
          CopyWith_Mutation_updatePerson_insertHistoryKodasHistoryOne_person(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Mutation_updatePerson_insertHistoryKodasHistoryOne_person<
    TRes> {
  factory CopyWith_Mutation_updatePerson_insertHistoryKodasHistoryOne_person(
    Mutation_updatePerson_insertHistoryKodasHistoryOne_person instance,
    TRes Function(Mutation_updatePerson_insertHistoryKodasHistoryOne_person)
        then,
  ) = _CopyWithImpl_Mutation_updatePerson_insertHistoryKodasHistoryOne_person;

  factory CopyWith_Mutation_updatePerson_insertHistoryKodasHistoryOne_person.stub(
          TRes res) =
      _CopyWithStubImpl_Mutation_updatePerson_insertHistoryKodasHistoryOne_person;

  TRes call({
    UuidValue? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl_Mutation_updatePerson_insertHistoryKodasHistoryOne_person<
        TRes>
    implements
        CopyWith_Mutation_updatePerson_insertHistoryKodasHistoryOne_person<
            TRes> {
  _CopyWithImpl_Mutation_updatePerson_insertHistoryKodasHistoryOne_person(
    this._instance,
    this._then,
  );

  final Mutation_updatePerson_insertHistoryKodasHistoryOne_person _instance;

  final TRes Function(Mutation_updatePerson_insertHistoryKodasHistoryOne_person)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation_updatePerson_insertHistoryKodasHistoryOne_person(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Mutation_updatePerson_insertHistoryKodasHistoryOne_person<
        TRes>
    implements
        CopyWith_Mutation_updatePerson_insertHistoryKodasHistoryOne_person<
            TRes> {
  _CopyWithStubImpl_Mutation_updatePerson_insertHistoryKodasHistoryOne_person(
      this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Mutation_updatePerson_insertHistoryCallHistoryOne {
  Mutation_updatePerson_insertHistoryCallHistoryOne({
    required this.person,
    this.$__typename = 'HistoryCallHistory',
  });

  factory Mutation_updatePerson_insertHistoryCallHistoryOne.fromJson(
      Map<String, dynamic> json) {
    final l$person = json['person'];
    final l$$__typename = json['__typename'];
    return Mutation_updatePerson_insertHistoryCallHistoryOne(
      person: Mutation_updatePerson_insertHistoryCallHistoryOne_person.fromJson(
          (l$person as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation_updatePerson_insertHistoryCallHistoryOne_person person;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$person = person;
    _resultData['person'] = l$person.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$person = person;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$person,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_updatePerson_insertHistoryCallHistoryOne ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$person = person;
    final lOther$person = other.person;
    if (l$person != lOther$person) {
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

extension UtilityExtension_Mutation_updatePerson_insertHistoryCallHistoryOne
    on Mutation_updatePerson_insertHistoryCallHistoryOne {
  CopyWith_Mutation_updatePerson_insertHistoryCallHistoryOne<
          Mutation_updatePerson_insertHistoryCallHistoryOne>
      get copyWith =>
          CopyWith_Mutation_updatePerson_insertHistoryCallHistoryOne(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Mutation_updatePerson_insertHistoryCallHistoryOne<
    TRes> {
  factory CopyWith_Mutation_updatePerson_insertHistoryCallHistoryOne(
    Mutation_updatePerson_insertHistoryCallHistoryOne instance,
    TRes Function(Mutation_updatePerson_insertHistoryCallHistoryOne) then,
  ) = _CopyWithImpl_Mutation_updatePerson_insertHistoryCallHistoryOne;

  factory CopyWith_Mutation_updatePerson_insertHistoryCallHistoryOne.stub(
          TRes res) =
      _CopyWithStubImpl_Mutation_updatePerson_insertHistoryCallHistoryOne;

  TRes call({
    Mutation_updatePerson_insertHistoryCallHistoryOne_person? person,
    String? $__typename,
  });
  CopyWith_Mutation_updatePerson_insertHistoryCallHistoryOne_person<TRes>
      get person;
}

class _CopyWithImpl_Mutation_updatePerson_insertHistoryCallHistoryOne<TRes>
    implements
        CopyWith_Mutation_updatePerson_insertHistoryCallHistoryOne<TRes> {
  _CopyWithImpl_Mutation_updatePerson_insertHistoryCallHistoryOne(
    this._instance,
    this._then,
  );

  final Mutation_updatePerson_insertHistoryCallHistoryOne _instance;

  final TRes Function(Mutation_updatePerson_insertHistoryCallHistoryOne) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? person = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation_updatePerson_insertHistoryCallHistoryOne(
        person: person == _undefined || person == null
            ? _instance.person
            : (person
                as Mutation_updatePerson_insertHistoryCallHistoryOne_person),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith_Mutation_updatePerson_insertHistoryCallHistoryOne_person<TRes>
      get person {
    final local$person = _instance.person;
    return CopyWith_Mutation_updatePerson_insertHistoryCallHistoryOne_person(
        local$person, (e) => call(person: e));
  }
}

class _CopyWithStubImpl_Mutation_updatePerson_insertHistoryCallHistoryOne<TRes>
    implements
        CopyWith_Mutation_updatePerson_insertHistoryCallHistoryOne<TRes> {
  _CopyWithStubImpl_Mutation_updatePerson_insertHistoryCallHistoryOne(
      this._res);

  TRes _res;

  call({
    Mutation_updatePerson_insertHistoryCallHistoryOne_person? person,
    String? $__typename,
  }) =>
      _res;

  CopyWith_Mutation_updatePerson_insertHistoryCallHistoryOne_person<TRes>
      get person =>
          CopyWith_Mutation_updatePerson_insertHistoryCallHistoryOne_person
              .stub(_res);
}

class Mutation_updatePerson_insertHistoryCallHistoryOne_person {
  Mutation_updatePerson_insertHistoryCallHistoryOne_person({
    required this.id,
    required this.name,
    this.$__typename = 'Persons',
  });

  factory Mutation_updatePerson_insertHistoryCallHistoryOne_person.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Mutation_updatePerson_insertHistoryCallHistoryOne_person(
      id: stringToUuid(l$id),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_updatePerson_insertHistoryCallHistoryOne_person ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Mutation_updatePerson_insertHistoryCallHistoryOne_person
    on Mutation_updatePerson_insertHistoryCallHistoryOne_person {
  CopyWith_Mutation_updatePerson_insertHistoryCallHistoryOne_person<
          Mutation_updatePerson_insertHistoryCallHistoryOne_person>
      get copyWith =>
          CopyWith_Mutation_updatePerson_insertHistoryCallHistoryOne_person(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Mutation_updatePerson_insertHistoryCallHistoryOne_person<
    TRes> {
  factory CopyWith_Mutation_updatePerson_insertHistoryCallHistoryOne_person(
    Mutation_updatePerson_insertHistoryCallHistoryOne_person instance,
    TRes Function(Mutation_updatePerson_insertHistoryCallHistoryOne_person)
        then,
  ) = _CopyWithImpl_Mutation_updatePerson_insertHistoryCallHistoryOne_person;

  factory CopyWith_Mutation_updatePerson_insertHistoryCallHistoryOne_person.stub(
          TRes res) =
      _CopyWithStubImpl_Mutation_updatePerson_insertHistoryCallHistoryOne_person;

  TRes call({
    UuidValue? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl_Mutation_updatePerson_insertHistoryCallHistoryOne_person<
        TRes>
    implements
        CopyWith_Mutation_updatePerson_insertHistoryCallHistoryOne_person<
            TRes> {
  _CopyWithImpl_Mutation_updatePerson_insertHistoryCallHistoryOne_person(
    this._instance,
    this._then,
  );

  final Mutation_updatePerson_insertHistoryCallHistoryOne_person _instance;

  final TRes Function(Mutation_updatePerson_insertHistoryCallHistoryOne_person)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation_updatePerson_insertHistoryCallHistoryOne_person(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Mutation_updatePerson_insertHistoryCallHistoryOne_person<
        TRes>
    implements
        CopyWith_Mutation_updatePerson_insertHistoryCallHistoryOne_person<
            TRes> {
  _CopyWithStubImpl_Mutation_updatePerson_insertHistoryCallHistoryOne_person(
      this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Mutation_updatePerson_insertHistoryVisitHistoryOne {
  Mutation_updatePerson_insertHistoryVisitHistoryOne({
    required this.visitId,
    this.$__typename = 'HistoryVisitHistory',
  });

  factory Mutation_updatePerson_insertHistoryVisitHistoryOne.fromJson(
      Map<String, dynamic> json) {
    final l$visitId = json['visitId'];
    final l$$__typename = json['__typename'];
    return Mutation_updatePerson_insertHistoryVisitHistoryOne(
      visitId: stringToUuid(l$visitId),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue visitId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$visitId = visitId;
    _resultData['visitId'] = uuidToString(l$visitId);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$visitId = visitId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$visitId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_updatePerson_insertHistoryVisitHistoryOne ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$visitId = visitId;
    final lOther$visitId = other.visitId;
    if (l$visitId != lOther$visitId) {
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

extension UtilityExtension_Mutation_updatePerson_insertHistoryVisitHistoryOne
    on Mutation_updatePerson_insertHistoryVisitHistoryOne {
  CopyWith_Mutation_updatePerson_insertHistoryVisitHistoryOne<
          Mutation_updatePerson_insertHistoryVisitHistoryOne>
      get copyWith =>
          CopyWith_Mutation_updatePerson_insertHistoryVisitHistoryOne(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Mutation_updatePerson_insertHistoryVisitHistoryOne<
    TRes> {
  factory CopyWith_Mutation_updatePerson_insertHistoryVisitHistoryOne(
    Mutation_updatePerson_insertHistoryVisitHistoryOne instance,
    TRes Function(Mutation_updatePerson_insertHistoryVisitHistoryOne) then,
  ) = _CopyWithImpl_Mutation_updatePerson_insertHistoryVisitHistoryOne;

  factory CopyWith_Mutation_updatePerson_insertHistoryVisitHistoryOne.stub(
          TRes res) =
      _CopyWithStubImpl_Mutation_updatePerson_insertHistoryVisitHistoryOne;

  TRes call({
    UuidValue? visitId,
    String? $__typename,
  });
}

class _CopyWithImpl_Mutation_updatePerson_insertHistoryVisitHistoryOne<TRes>
    implements
        CopyWith_Mutation_updatePerson_insertHistoryVisitHistoryOne<TRes> {
  _CopyWithImpl_Mutation_updatePerson_insertHistoryVisitHistoryOne(
    this._instance,
    this._then,
  );

  final Mutation_updatePerson_insertHistoryVisitHistoryOne _instance;

  final TRes Function(Mutation_updatePerson_insertHistoryVisitHistoryOne) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? visitId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation_updatePerson_insertHistoryVisitHistoryOne(
        visitId: visitId == _undefined || visitId == null
            ? _instance.visitId
            : (visitId as UuidValue),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Mutation_updatePerson_insertHistoryVisitHistoryOne<TRes>
    implements
        CopyWith_Mutation_updatePerson_insertHistoryVisitHistoryOne<TRes> {
  _CopyWithStubImpl_Mutation_updatePerson_insertHistoryVisitHistoryOne(
      this._res);

  TRes _res;

  call({
    UuidValue? visitId,
    String? $__typename,
  }) =>
      _res;
}

class Variables_Mutation_insertPerson {
  factory Variables_Mutation_insertPerson(
          {required Input_PersonsInsertInput newPerson}) =>
      Variables_Mutation_insertPerson._({
        r'newPerson': newPerson,
      });

  Variables_Mutation_insertPerson._(this._$data);

  factory Variables_Mutation_insertPerson.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$newPerson = data['newPerson'];
    result$data['newPerson'] = Input_PersonsInsertInput.fromJson(
        (l$newPerson as Map<String, dynamic>));
    return Variables_Mutation_insertPerson._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_PersonsInsertInput get newPerson =>
      (_$data['newPerson'] as Input_PersonsInsertInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$newPerson = newPerson;
    result$data['newPerson'] = l$newPerson.toJson();
    return result$data;
  }

  CopyWith_Variables_Mutation_insertPerson<Variables_Mutation_insertPerson>
      get copyWith => CopyWith_Variables_Mutation_insertPerson(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Mutation_insertPerson ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$newPerson = newPerson;
    final lOther$newPerson = other.newPerson;
    if (l$newPerson != lOther$newPerson) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$newPerson = newPerson;
    return Object.hashAll([l$newPerson]);
  }
}

abstract class CopyWith_Variables_Mutation_insertPerson<TRes> {
  factory CopyWith_Variables_Mutation_insertPerson(
    Variables_Mutation_insertPerson instance,
    TRes Function(Variables_Mutation_insertPerson) then,
  ) = _CopyWithImpl_Variables_Mutation_insertPerson;

  factory CopyWith_Variables_Mutation_insertPerson.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_insertPerson;

  TRes call({Input_PersonsInsertInput? newPerson});
}

class _CopyWithImpl_Variables_Mutation_insertPerson<TRes>
    implements CopyWith_Variables_Mutation_insertPerson<TRes> {
  _CopyWithImpl_Variables_Mutation_insertPerson(
    this._instance,
    this._then,
  );

  final Variables_Mutation_insertPerson _instance;

  final TRes Function(Variables_Mutation_insertPerson) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? newPerson = _undefined}) =>
      _then(Variables_Mutation_insertPerson._({
        ..._instance._$data,
        if (newPerson != _undefined && newPerson != null)
          'newPerson': (newPerson as Input_PersonsInsertInput),
      }));
}

class _CopyWithStubImpl_Variables_Mutation_insertPerson<TRes>
    implements CopyWith_Variables_Mutation_insertPerson<TRes> {
  _CopyWithStubImpl_Variables_Mutation_insertPerson(this._res);

  TRes _res;

  call({Input_PersonsInsertInput? newPerson}) => _res;
}

class Mutation_insertPerson {
  Mutation_insertPerson({
    this.insertPersonsOne,
    this.$__typename = 'mutation_root',
  });

  factory Mutation_insertPerson.fromJson(Map<String, dynamic> json) {
    final l$insertPersonsOne = json['insertPersonsOne'];
    final l$$__typename = json['__typename'];
    return Mutation_insertPerson(
      insertPersonsOne: l$insertPersonsOne == null
          ? null
          : Fragment_Person.fromJson(
              (l$insertPersonsOne as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_Person? insertPersonsOne;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$insertPersonsOne = insertPersonsOne;
    _resultData['insertPersonsOne'] = l$insertPersonsOne?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$insertPersonsOne = insertPersonsOne;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$insertPersonsOne,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_insertPerson || runtimeType != other.runtimeType) {
      return false;
    }
    final l$insertPersonsOne = insertPersonsOne;
    final lOther$insertPersonsOne = other.insertPersonsOne;
    if (l$insertPersonsOne != lOther$insertPersonsOne) {
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

extension UtilityExtension_Mutation_insertPerson on Mutation_insertPerson {
  CopyWith_Mutation_insertPerson<Mutation_insertPerson> get copyWith =>
      CopyWith_Mutation_insertPerson(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Mutation_insertPerson<TRes> {
  factory CopyWith_Mutation_insertPerson(
    Mutation_insertPerson instance,
    TRes Function(Mutation_insertPerson) then,
  ) = _CopyWithImpl_Mutation_insertPerson;

  factory CopyWith_Mutation_insertPerson.stub(TRes res) =
      _CopyWithStubImpl_Mutation_insertPerson;

  TRes call({
    Fragment_Person? insertPersonsOne,
    String? $__typename,
  });
  CopyWith_Fragment_Person<TRes> get insertPersonsOne;
}

class _CopyWithImpl_Mutation_insertPerson<TRes>
    implements CopyWith_Mutation_insertPerson<TRes> {
  _CopyWithImpl_Mutation_insertPerson(
    this._instance,
    this._then,
  );

  final Mutation_insertPerson _instance;

  final TRes Function(Mutation_insertPerson) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? insertPersonsOne = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation_insertPerson(
        insertPersonsOne: insertPersonsOne == _undefined
            ? _instance.insertPersonsOne
            : (insertPersonsOne as Fragment_Person?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith_Fragment_Person<TRes> get insertPersonsOne {
    final local$insertPersonsOne = _instance.insertPersonsOne;
    return local$insertPersonsOne == null
        ? CopyWith_Fragment_Person.stub(_then(_instance))
        : CopyWith_Fragment_Person(
            local$insertPersonsOne, (e) => call(insertPersonsOne: e));
  }
}

class _CopyWithStubImpl_Mutation_insertPerson<TRes>
    implements CopyWith_Mutation_insertPerson<TRes> {
  _CopyWithStubImpl_Mutation_insertPerson(this._res);

  TRes _res;

  call({
    Fragment_Person? insertPersonsOne,
    String? $__typename,
  }) =>
      _res;

  CopyWith_Fragment_Person<TRes> get insertPersonsOne =>
      CopyWith_Fragment_Person.stub(_res);
}

const documentNodeMutationinsertPerson = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'insertPerson'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'newPerson')),
        type: NamedTypeNode(
          name: NameNode(value: 'PersonsInsertInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'insertPersonsOne'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'object'),
            value: VariableNode(name: NameNode(value: 'newPerson')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'Person'),
            directives: [],
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  fragmentDefinitionPerson,
  fragmentDefinitionPersonNoPhoto,
]);

class Variables_Mutation_updatePersonSpiritData {
  factory Variables_Mutation_updatePersonSpiritData({
    required UuidValue personId,
    required DateTime lastConfession,
    required DateTime lastKodas,
  }) =>
      Variables_Mutation_updatePersonSpiritData._({
        r'personId': personId,
        r'lastConfession': lastConfession,
        r'lastKodas': lastKodas,
      });

  Variables_Mutation_updatePersonSpiritData._(this._$data);

  factory Variables_Mutation_updatePersonSpiritData.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$personId = data['personId'];
    result$data['personId'] = stringToUuid(l$personId);
    final l$lastConfession = data['lastConfession'];
    result$data['lastConfession'] = dateFromString(l$lastConfession);
    final l$lastKodas = data['lastKodas'];
    result$data['lastKodas'] = dateFromString(l$lastKodas);
    return Variables_Mutation_updatePersonSpiritData._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get personId => (_$data['personId'] as UuidValue);

  DateTime get lastConfession => (_$data['lastConfession'] as DateTime);

  DateTime get lastKodas => (_$data['lastKodas'] as DateTime);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$personId = personId;
    result$data['personId'] = uuidToString(l$personId);
    final l$lastConfession = lastConfession;
    result$data['lastConfession'] = dateToString(l$lastConfession);
    final l$lastKodas = lastKodas;
    result$data['lastKodas'] = dateToString(l$lastKodas);
    return result$data;
  }

  CopyWith_Variables_Mutation_updatePersonSpiritData<
          Variables_Mutation_updatePersonSpiritData>
      get copyWith => CopyWith_Variables_Mutation_updatePersonSpiritData(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Mutation_updatePersonSpiritData ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$personId = personId;
    final lOther$personId = other.personId;
    if (l$personId != lOther$personId) {
      return false;
    }
    final l$lastConfession = lastConfession;
    final lOther$lastConfession = other.lastConfession;
    if (l$lastConfession != lOther$lastConfession) {
      return false;
    }
    final l$lastKodas = lastKodas;
    final lOther$lastKodas = other.lastKodas;
    if (l$lastKodas != lOther$lastKodas) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$personId = personId;
    final l$lastConfession = lastConfession;
    final l$lastKodas = lastKodas;
    return Object.hashAll([
      l$personId,
      l$lastConfession,
      l$lastKodas,
    ]);
  }
}

abstract class CopyWith_Variables_Mutation_updatePersonSpiritData<TRes> {
  factory CopyWith_Variables_Mutation_updatePersonSpiritData(
    Variables_Mutation_updatePersonSpiritData instance,
    TRes Function(Variables_Mutation_updatePersonSpiritData) then,
  ) = _CopyWithImpl_Variables_Mutation_updatePersonSpiritData;

  factory CopyWith_Variables_Mutation_updatePersonSpiritData.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_updatePersonSpiritData;

  TRes call({
    UuidValue? personId,
    DateTime? lastConfession,
    DateTime? lastKodas,
  });
}

class _CopyWithImpl_Variables_Mutation_updatePersonSpiritData<TRes>
    implements CopyWith_Variables_Mutation_updatePersonSpiritData<TRes> {
  _CopyWithImpl_Variables_Mutation_updatePersonSpiritData(
    this._instance,
    this._then,
  );

  final Variables_Mutation_updatePersonSpiritData _instance;

  final TRes Function(Variables_Mutation_updatePersonSpiritData) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? personId = _undefined,
    Object? lastConfession = _undefined,
    Object? lastKodas = _undefined,
  }) =>
      _then(Variables_Mutation_updatePersonSpiritData._({
        ..._instance._$data,
        if (personId != _undefined && personId != null)
          'personId': (personId as UuidValue),
        if (lastConfession != _undefined && lastConfession != null)
          'lastConfession': (lastConfession as DateTime),
        if (lastKodas != _undefined && lastKodas != null)
          'lastKodas': (lastKodas as DateTime),
      }));
}

class _CopyWithStubImpl_Variables_Mutation_updatePersonSpiritData<TRes>
    implements CopyWith_Variables_Mutation_updatePersonSpiritData<TRes> {
  _CopyWithStubImpl_Variables_Mutation_updatePersonSpiritData(this._res);

  TRes _res;

  call({
    UuidValue? personId,
    DateTime? lastConfession,
    DateTime? lastKodas,
  }) =>
      _res;
}

class Mutation_updatePersonSpiritData {
  Mutation_updatePersonSpiritData({
    this.$_c,
    this.$_k,
    this.insertHistoryConfessionHistoryOne,
    this.insertHistoryKodasHistoryOne,
    this.$__typename = 'mutation_root',
  });

  factory Mutation_updatePersonSpiritData.fromJson(Map<String, dynamic> json) {
    final l$$_c = json['_c'];
    final l$$_k = json['_k'];
    final l$insertHistoryConfessionHistoryOne =
        json['insertHistoryConfessionHistoryOne'];
    final l$insertHistoryKodasHistoryOne = json['insertHistoryKodasHistoryOne'];
    final l$$__typename = json['__typename'];
    return Mutation_updatePersonSpiritData(
      $_c: l$$_c == null
          ? null
          : Mutation_updatePersonSpiritData__c.fromJson(
              (l$$_c as Map<String, dynamic>)),
      $_k: l$$_k == null
          ? null
          : Mutation_updatePersonSpiritData__k.fromJson(
              (l$$_k as Map<String, dynamic>)),
      insertHistoryConfessionHistoryOne: l$insertHistoryConfessionHistoryOne ==
              null
          ? null
          : Mutation_updatePersonSpiritData_insertHistoryConfessionHistoryOne
              .fromJson((l$insertHistoryConfessionHistoryOne
                  as Map<String, dynamic>)),
      insertHistoryKodasHistoryOne: l$insertHistoryKodasHistoryOne == null
          ? null
          : Mutation_updatePersonSpiritData_insertHistoryKodasHistoryOne
              .fromJson(
                  (l$insertHistoryKodasHistoryOne as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation_updatePersonSpiritData__c? $_c;

  final Mutation_updatePersonSpiritData__k? $_k;

  final Mutation_updatePersonSpiritData_insertHistoryConfessionHistoryOne?
      insertHistoryConfessionHistoryOne;

  final Mutation_updatePersonSpiritData_insertHistoryKodasHistoryOne?
      insertHistoryKodasHistoryOne;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$_c = $_c;
    _resultData['_c'] = l$$_c?.toJson();
    final l$$_k = $_k;
    _resultData['_k'] = l$$_k?.toJson();
    final l$insertHistoryConfessionHistoryOne =
        insertHistoryConfessionHistoryOne;
    _resultData['insertHistoryConfessionHistoryOne'] =
        l$insertHistoryConfessionHistoryOne?.toJson();
    final l$insertHistoryKodasHistoryOne = insertHistoryKodasHistoryOne;
    _resultData['insertHistoryKodasHistoryOne'] =
        l$insertHistoryKodasHistoryOne?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$_c = $_c;
    final l$$_k = $_k;
    final l$insertHistoryConfessionHistoryOne =
        insertHistoryConfessionHistoryOne;
    final l$insertHistoryKodasHistoryOne = insertHistoryKodasHistoryOne;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$$_c,
      l$$_k,
      l$insertHistoryConfessionHistoryOne,
      l$insertHistoryKodasHistoryOne,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_updatePersonSpiritData ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$_c = $_c;
    final lOther$$_c = other.$_c;
    if (l$$_c != lOther$$_c) {
      return false;
    }
    final l$$_k = $_k;
    final lOther$$_k = other.$_k;
    if (l$$_k != lOther$$_k) {
      return false;
    }
    final l$insertHistoryConfessionHistoryOne =
        insertHistoryConfessionHistoryOne;
    final lOther$insertHistoryConfessionHistoryOne =
        other.insertHistoryConfessionHistoryOne;
    if (l$insertHistoryConfessionHistoryOne !=
        lOther$insertHistoryConfessionHistoryOne) {
      return false;
    }
    final l$insertHistoryKodasHistoryOne = insertHistoryKodasHistoryOne;
    final lOther$insertHistoryKodasHistoryOne =
        other.insertHistoryKodasHistoryOne;
    if (l$insertHistoryKodasHistoryOne != lOther$insertHistoryKodasHistoryOne) {
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

extension UtilityExtension_Mutation_updatePersonSpiritData
    on Mutation_updatePersonSpiritData {
  CopyWith_Mutation_updatePersonSpiritData<Mutation_updatePersonSpiritData>
      get copyWith => CopyWith_Mutation_updatePersonSpiritData(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Mutation_updatePersonSpiritData<TRes> {
  factory CopyWith_Mutation_updatePersonSpiritData(
    Mutation_updatePersonSpiritData instance,
    TRes Function(Mutation_updatePersonSpiritData) then,
  ) = _CopyWithImpl_Mutation_updatePersonSpiritData;

  factory CopyWith_Mutation_updatePersonSpiritData.stub(TRes res) =
      _CopyWithStubImpl_Mutation_updatePersonSpiritData;

  TRes call({
    Mutation_updatePersonSpiritData__c? $_c,
    Mutation_updatePersonSpiritData__k? $_k,
    Mutation_updatePersonSpiritData_insertHistoryConfessionHistoryOne?
        insertHistoryConfessionHistoryOne,
    Mutation_updatePersonSpiritData_insertHistoryKodasHistoryOne?
        insertHistoryKodasHistoryOne,
    String? $__typename,
  });
  CopyWith_Mutation_updatePersonSpiritData__c<TRes> get $_c;
  CopyWith_Mutation_updatePersonSpiritData__k<TRes> get $_k;
  CopyWith_Mutation_updatePersonSpiritData_insertHistoryConfessionHistoryOne<
      TRes> get insertHistoryConfessionHistoryOne;
  CopyWith_Mutation_updatePersonSpiritData_insertHistoryKodasHistoryOne<TRes>
      get insertHistoryKodasHistoryOne;
}

class _CopyWithImpl_Mutation_updatePersonSpiritData<TRes>
    implements CopyWith_Mutation_updatePersonSpiritData<TRes> {
  _CopyWithImpl_Mutation_updatePersonSpiritData(
    this._instance,
    this._then,
  );

  final Mutation_updatePersonSpiritData _instance;

  final TRes Function(Mutation_updatePersonSpiritData) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_c = _undefined,
    Object? $_k = _undefined,
    Object? insertHistoryConfessionHistoryOne = _undefined,
    Object? insertHistoryKodasHistoryOne = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation_updatePersonSpiritData(
        $_c: $_c == _undefined
            ? _instance.$_c
            : ($_c as Mutation_updatePersonSpiritData__c?),
        $_k: $_k == _undefined
            ? _instance.$_k
            : ($_k as Mutation_updatePersonSpiritData__k?),
        insertHistoryConfessionHistoryOne: insertHistoryConfessionHistoryOne ==
                _undefined
            ? _instance.insertHistoryConfessionHistoryOne
            : (insertHistoryConfessionHistoryOne
                as Mutation_updatePersonSpiritData_insertHistoryConfessionHistoryOne?),
        insertHistoryKodasHistoryOne: insertHistoryKodasHistoryOne == _undefined
            ? _instance.insertHistoryKodasHistoryOne
            : (insertHistoryKodasHistoryOne
                as Mutation_updatePersonSpiritData_insertHistoryKodasHistoryOne?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith_Mutation_updatePersonSpiritData__c<TRes> get $_c {
    final local$$_c = _instance.$_c;
    return local$$_c == null
        ? CopyWith_Mutation_updatePersonSpiritData__c.stub(_then(_instance))
        : CopyWith_Mutation_updatePersonSpiritData__c(
            local$$_c, (e) => call($_c: e));
  }

  CopyWith_Mutation_updatePersonSpiritData__k<TRes> get $_k {
    final local$$_k = _instance.$_k;
    return local$$_k == null
        ? CopyWith_Mutation_updatePersonSpiritData__k.stub(_then(_instance))
        : CopyWith_Mutation_updatePersonSpiritData__k(
            local$$_k, (e) => call($_k: e));
  }

  CopyWith_Mutation_updatePersonSpiritData_insertHistoryConfessionHistoryOne<
      TRes> get insertHistoryConfessionHistoryOne {
    final local$insertHistoryConfessionHistoryOne =
        _instance.insertHistoryConfessionHistoryOne;
    return local$insertHistoryConfessionHistoryOne == null
        ? CopyWith_Mutation_updatePersonSpiritData_insertHistoryConfessionHistoryOne
            .stub(_then(_instance))
        : CopyWith_Mutation_updatePersonSpiritData_insertHistoryConfessionHistoryOne(
            local$insertHistoryConfessionHistoryOne,
            (e) => call(insertHistoryConfessionHistoryOne: e));
  }

  CopyWith_Mutation_updatePersonSpiritData_insertHistoryKodasHistoryOne<TRes>
      get insertHistoryKodasHistoryOne {
    final local$insertHistoryKodasHistoryOne =
        _instance.insertHistoryKodasHistoryOne;
    return local$insertHistoryKodasHistoryOne == null
        ? CopyWith_Mutation_updatePersonSpiritData_insertHistoryKodasHistoryOne
            .stub(_then(_instance))
        : CopyWith_Mutation_updatePersonSpiritData_insertHistoryKodasHistoryOne(
            local$insertHistoryKodasHistoryOne,
            (e) => call(insertHistoryKodasHistoryOne: e));
  }
}

class _CopyWithStubImpl_Mutation_updatePersonSpiritData<TRes>
    implements CopyWith_Mutation_updatePersonSpiritData<TRes> {
  _CopyWithStubImpl_Mutation_updatePersonSpiritData(this._res);

  TRes _res;

  call({
    Mutation_updatePersonSpiritData__c? $_c,
    Mutation_updatePersonSpiritData__k? $_k,
    Mutation_updatePersonSpiritData_insertHistoryConfessionHistoryOne?
        insertHistoryConfessionHistoryOne,
    Mutation_updatePersonSpiritData_insertHistoryKodasHistoryOne?
        insertHistoryKodasHistoryOne,
    String? $__typename,
  }) =>
      _res;

  CopyWith_Mutation_updatePersonSpiritData__c<TRes> get $_c =>
      CopyWith_Mutation_updatePersonSpiritData__c.stub(_res);

  CopyWith_Mutation_updatePersonSpiritData__k<TRes> get $_k =>
      CopyWith_Mutation_updatePersonSpiritData__k.stub(_res);

  CopyWith_Mutation_updatePersonSpiritData_insertHistoryConfessionHistoryOne<
          TRes>
      get insertHistoryConfessionHistoryOne =>
          CopyWith_Mutation_updatePersonSpiritData_insertHistoryConfessionHistoryOne
              .stub(_res);

  CopyWith_Mutation_updatePersonSpiritData_insertHistoryKodasHistoryOne<TRes>
      get insertHistoryKodasHistoryOne =>
          CopyWith_Mutation_updatePersonSpiritData_insertHistoryKodasHistoryOne
              .stub(_res);
}

const documentNodeMutationupdatePersonSpiritData = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'updatePersonSpiritData'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'personId')),
        type: NamedTypeNode(
          name: NameNode(value: 'Uuid'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'lastConfession')),
        type: NamedTypeNode(
          name: NameNode(value: 'Date'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'lastKodas')),
        type: NamedTypeNode(
          name: NameNode(value: 'Date'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'insertHistoryAttendanceDaysOne'),
        alias: NameNode(value: '_c'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'object'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'day'),
                value: VariableNode(name: NameNode(value: 'lastConfession')),
              )
            ]),
          ),
          ArgumentNode(
            name: NameNode(value: 'onConflict'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'constraint'),
                value:
                    EnumValueNode(name: NameNode(value: 'attendanceDaysPkey')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'updateColumns'),
                value: EnumValueNode(name: NameNode(value: 'day')),
              ),
            ]),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
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
        ]),
      ),
      FieldNode(
        name: NameNode(value: 'insertHistoryAttendanceDaysOne'),
        alias: NameNode(value: '_k'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'object'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'day'),
                value: VariableNode(name: NameNode(value: 'lastKodas')),
              )
            ]),
          ),
          ArgumentNode(
            name: NameNode(value: 'onConflict'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'constraint'),
                value:
                    EnumValueNode(name: NameNode(value: 'attendanceDaysPkey')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'updateColumns'),
                value: EnumValueNode(name: NameNode(value: 'day')),
              ),
            ]),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
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
        ]),
      ),
      FieldNode(
        name: NameNode(value: 'insertHistoryConfessionHistoryOne'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'object'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'personId'),
                value: VariableNode(name: NameNode(value: 'personId')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'dayId'),
                value: VariableNode(name: NameNode(value: 'lastConfession')),
              ),
            ]),
          ),
          ArgumentNode(
            name: NameNode(value: 'onConflict'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'constraint'),
                value: EnumValueNode(
                    name: NameNode(value: 'confessionHistoryDayIdPersonIdKey')),
              )
            ]),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'person'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'Person'),
                directives: [],
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: 'insertHistoryKodasHistoryOne'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'object'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'personId'),
                value: VariableNode(name: NameNode(value: 'personId')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'dayId'),
                value: VariableNode(name: NameNode(value: 'lastKodas')),
              ),
            ]),
          ),
          ArgumentNode(
            name: NameNode(value: 'onConflict'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'constraint'),
                value: EnumValueNode(
                    name: NameNode(value: 'kodasHistoryDayIdPersonIdKey')),
              )
            ]),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'person'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'Person'),
                directives: [],
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  fragmentDefinitionPerson,
  fragmentDefinitionPersonNoPhoto,
]);

class Mutation_updatePersonSpiritData__c {
  Mutation_updatePersonSpiritData__c({
    required this.day,
    this.$__typename = 'HistoryAttendanceDays',
  });

  factory Mutation_updatePersonSpiritData__c.fromJson(
      Map<String, dynamic> json) {
    final l$day = json['day'];
    final l$$__typename = json['__typename'];
    return Mutation_updatePersonSpiritData__c(
      day: dateFromString(l$day),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime day;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$day = day;
    _resultData['day'] = dateToString(l$day);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$day = day;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$day,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_updatePersonSpiritData__c ||
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

extension UtilityExtension_Mutation_updatePersonSpiritData__c
    on Mutation_updatePersonSpiritData__c {
  CopyWith_Mutation_updatePersonSpiritData__c<
          Mutation_updatePersonSpiritData__c>
      get copyWith => CopyWith_Mutation_updatePersonSpiritData__c(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Mutation_updatePersonSpiritData__c<TRes> {
  factory CopyWith_Mutation_updatePersonSpiritData__c(
    Mutation_updatePersonSpiritData__c instance,
    TRes Function(Mutation_updatePersonSpiritData__c) then,
  ) = _CopyWithImpl_Mutation_updatePersonSpiritData__c;

  factory CopyWith_Mutation_updatePersonSpiritData__c.stub(TRes res) =
      _CopyWithStubImpl_Mutation_updatePersonSpiritData__c;

  TRes call({
    DateTime? day,
    String? $__typename,
  });
}

class _CopyWithImpl_Mutation_updatePersonSpiritData__c<TRes>
    implements CopyWith_Mutation_updatePersonSpiritData__c<TRes> {
  _CopyWithImpl_Mutation_updatePersonSpiritData__c(
    this._instance,
    this._then,
  );

  final Mutation_updatePersonSpiritData__c _instance;

  final TRes Function(Mutation_updatePersonSpiritData__c) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? day = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation_updatePersonSpiritData__c(
        day: day == _undefined || day == null
            ? _instance.day
            : (day as DateTime),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Mutation_updatePersonSpiritData__c<TRes>
    implements CopyWith_Mutation_updatePersonSpiritData__c<TRes> {
  _CopyWithStubImpl_Mutation_updatePersonSpiritData__c(this._res);

  TRes _res;

  call({
    DateTime? day,
    String? $__typename,
  }) =>
      _res;
}

class Mutation_updatePersonSpiritData__k {
  Mutation_updatePersonSpiritData__k({
    required this.day,
    this.$__typename = 'HistoryAttendanceDays',
  });

  factory Mutation_updatePersonSpiritData__k.fromJson(
      Map<String, dynamic> json) {
    final l$day = json['day'];
    final l$$__typename = json['__typename'];
    return Mutation_updatePersonSpiritData__k(
      day: dateFromString(l$day),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime day;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$day = day;
    _resultData['day'] = dateToString(l$day);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$day = day;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$day,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_updatePersonSpiritData__k ||
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

extension UtilityExtension_Mutation_updatePersonSpiritData__k
    on Mutation_updatePersonSpiritData__k {
  CopyWith_Mutation_updatePersonSpiritData__k<
          Mutation_updatePersonSpiritData__k>
      get copyWith => CopyWith_Mutation_updatePersonSpiritData__k(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Mutation_updatePersonSpiritData__k<TRes> {
  factory CopyWith_Mutation_updatePersonSpiritData__k(
    Mutation_updatePersonSpiritData__k instance,
    TRes Function(Mutation_updatePersonSpiritData__k) then,
  ) = _CopyWithImpl_Mutation_updatePersonSpiritData__k;

  factory CopyWith_Mutation_updatePersonSpiritData__k.stub(TRes res) =
      _CopyWithStubImpl_Mutation_updatePersonSpiritData__k;

  TRes call({
    DateTime? day,
    String? $__typename,
  });
}

class _CopyWithImpl_Mutation_updatePersonSpiritData__k<TRes>
    implements CopyWith_Mutation_updatePersonSpiritData__k<TRes> {
  _CopyWithImpl_Mutation_updatePersonSpiritData__k(
    this._instance,
    this._then,
  );

  final Mutation_updatePersonSpiritData__k _instance;

  final TRes Function(Mutation_updatePersonSpiritData__k) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? day = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation_updatePersonSpiritData__k(
        day: day == _undefined || day == null
            ? _instance.day
            : (day as DateTime),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Mutation_updatePersonSpiritData__k<TRes>
    implements CopyWith_Mutation_updatePersonSpiritData__k<TRes> {
  _CopyWithStubImpl_Mutation_updatePersonSpiritData__k(this._res);

  TRes _res;

  call({
    DateTime? day,
    String? $__typename,
  }) =>
      _res;
}

class Mutation_updatePersonSpiritData_insertHistoryConfessionHistoryOne {
  Mutation_updatePersonSpiritData_insertHistoryConfessionHistoryOne({
    required this.person,
    this.$__typename = 'HistoryConfessionHistory',
  });

  factory Mutation_updatePersonSpiritData_insertHistoryConfessionHistoryOne.fromJson(
      Map<String, dynamic> json) {
    final l$person = json['person'];
    final l$$__typename = json['__typename'];
    return Mutation_updatePersonSpiritData_insertHistoryConfessionHistoryOne(
      person: Fragment_Person.fromJson((l$person as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_Person person;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$person = person;
    _resultData['person'] = l$person.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$person = person;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$person,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation_updatePersonSpiritData_insertHistoryConfessionHistoryOne ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$person = person;
    final lOther$person = other.person;
    if (l$person != lOther$person) {
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

extension UtilityExtension_Mutation_updatePersonSpiritData_insertHistoryConfessionHistoryOne
    on Mutation_updatePersonSpiritData_insertHistoryConfessionHistoryOne {
  CopyWith_Mutation_updatePersonSpiritData_insertHistoryConfessionHistoryOne<
          Mutation_updatePersonSpiritData_insertHistoryConfessionHistoryOne>
      get copyWith =>
          CopyWith_Mutation_updatePersonSpiritData_insertHistoryConfessionHistoryOne(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Mutation_updatePersonSpiritData_insertHistoryConfessionHistoryOne<
    TRes> {
  factory CopyWith_Mutation_updatePersonSpiritData_insertHistoryConfessionHistoryOne(
    Mutation_updatePersonSpiritData_insertHistoryConfessionHistoryOne instance,
    TRes Function(
            Mutation_updatePersonSpiritData_insertHistoryConfessionHistoryOne)
        then,
  ) = _CopyWithImpl_Mutation_updatePersonSpiritData_insertHistoryConfessionHistoryOne;

  factory CopyWith_Mutation_updatePersonSpiritData_insertHistoryConfessionHistoryOne.stub(
          TRes res) =
      _CopyWithStubImpl_Mutation_updatePersonSpiritData_insertHistoryConfessionHistoryOne;

  TRes call({
    Fragment_Person? person,
    String? $__typename,
  });
  CopyWith_Fragment_Person<TRes> get person;
}

class _CopyWithImpl_Mutation_updatePersonSpiritData_insertHistoryConfessionHistoryOne<
        TRes>
    implements
        CopyWith_Mutation_updatePersonSpiritData_insertHistoryConfessionHistoryOne<
            TRes> {
  _CopyWithImpl_Mutation_updatePersonSpiritData_insertHistoryConfessionHistoryOne(
    this._instance,
    this._then,
  );

  final Mutation_updatePersonSpiritData_insertHistoryConfessionHistoryOne
      _instance;

  final TRes Function(
      Mutation_updatePersonSpiritData_insertHistoryConfessionHistoryOne) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? person = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation_updatePersonSpiritData_insertHistoryConfessionHistoryOne(
        person: person == _undefined || person == null
            ? _instance.person
            : (person as Fragment_Person),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith_Fragment_Person<TRes> get person {
    final local$person = _instance.person;
    return CopyWith_Fragment_Person(local$person, (e) => call(person: e));
  }
}

class _CopyWithStubImpl_Mutation_updatePersonSpiritData_insertHistoryConfessionHistoryOne<
        TRes>
    implements
        CopyWith_Mutation_updatePersonSpiritData_insertHistoryConfessionHistoryOne<
            TRes> {
  _CopyWithStubImpl_Mutation_updatePersonSpiritData_insertHistoryConfessionHistoryOne(
      this._res);

  TRes _res;

  call({
    Fragment_Person? person,
    String? $__typename,
  }) =>
      _res;

  CopyWith_Fragment_Person<TRes> get person =>
      CopyWith_Fragment_Person.stub(_res);
}

class Mutation_updatePersonSpiritData_insertHistoryKodasHistoryOne {
  Mutation_updatePersonSpiritData_insertHistoryKodasHistoryOne({
    required this.person,
    this.$__typename = 'HistoryKodasHistory',
  });

  factory Mutation_updatePersonSpiritData_insertHistoryKodasHistoryOne.fromJson(
      Map<String, dynamic> json) {
    final l$person = json['person'];
    final l$$__typename = json['__typename'];
    return Mutation_updatePersonSpiritData_insertHistoryKodasHistoryOne(
      person: Fragment_Person.fromJson((l$person as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_Person person;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$person = person;
    _resultData['person'] = l$person.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$person = person;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$person,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation_updatePersonSpiritData_insertHistoryKodasHistoryOne ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$person = person;
    final lOther$person = other.person;
    if (l$person != lOther$person) {
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

extension UtilityExtension_Mutation_updatePersonSpiritData_insertHistoryKodasHistoryOne
    on Mutation_updatePersonSpiritData_insertHistoryKodasHistoryOne {
  CopyWith_Mutation_updatePersonSpiritData_insertHistoryKodasHistoryOne<
          Mutation_updatePersonSpiritData_insertHistoryKodasHistoryOne>
      get copyWith =>
          CopyWith_Mutation_updatePersonSpiritData_insertHistoryKodasHistoryOne(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Mutation_updatePersonSpiritData_insertHistoryKodasHistoryOne<
    TRes> {
  factory CopyWith_Mutation_updatePersonSpiritData_insertHistoryKodasHistoryOne(
    Mutation_updatePersonSpiritData_insertHistoryKodasHistoryOne instance,
    TRes Function(Mutation_updatePersonSpiritData_insertHistoryKodasHistoryOne)
        then,
  ) = _CopyWithImpl_Mutation_updatePersonSpiritData_insertHistoryKodasHistoryOne;

  factory CopyWith_Mutation_updatePersonSpiritData_insertHistoryKodasHistoryOne.stub(
          TRes res) =
      _CopyWithStubImpl_Mutation_updatePersonSpiritData_insertHistoryKodasHistoryOne;

  TRes call({
    Fragment_Person? person,
    String? $__typename,
  });
  CopyWith_Fragment_Person<TRes> get person;
}

class _CopyWithImpl_Mutation_updatePersonSpiritData_insertHistoryKodasHistoryOne<
        TRes>
    implements
        CopyWith_Mutation_updatePersonSpiritData_insertHistoryKodasHistoryOne<
            TRes> {
  _CopyWithImpl_Mutation_updatePersonSpiritData_insertHistoryKodasHistoryOne(
    this._instance,
    this._then,
  );

  final Mutation_updatePersonSpiritData_insertHistoryKodasHistoryOne _instance;

  final TRes Function(
      Mutation_updatePersonSpiritData_insertHistoryKodasHistoryOne) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? person = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation_updatePersonSpiritData_insertHistoryKodasHistoryOne(
        person: person == _undefined || person == null
            ? _instance.person
            : (person as Fragment_Person),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith_Fragment_Person<TRes> get person {
    final local$person = _instance.person;
    return CopyWith_Fragment_Person(local$person, (e) => call(person: e));
  }
}

class _CopyWithStubImpl_Mutation_updatePersonSpiritData_insertHistoryKodasHistoryOne<
        TRes>
    implements
        CopyWith_Mutation_updatePersonSpiritData_insertHistoryKodasHistoryOne<
            TRes> {
  _CopyWithStubImpl_Mutation_updatePersonSpiritData_insertHistoryKodasHistoryOne(
      this._res);

  TRes _res;

  call({
    Fragment_Person? person,
    String? $__typename,
  }) =>
      _res;

  CopyWith_Fragment_Person<TRes> get person =>
      CopyWith_Fragment_Person.stub(_res);
}
