import '../../../../../../graphql/__generated__/schema.graphql.dart';
import 'fragments.gql.dart';
import 'package:church_admin/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$deletePerson {
  factory Variables$Mutation$deletePerson({required UuidValue personId}) =>
      Variables$Mutation$deletePerson._({
        r'personId': personId,
      });

  Variables$Mutation$deletePerson._(this._$data);

  factory Variables$Mutation$deletePerson.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$personId = data['personId'];
    result$data['personId'] = stringToUuid(l$personId);
    return Variables$Mutation$deletePerson._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get personId => (_$data['personId'] as UuidValue);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$personId = personId;
    result$data['personId'] = uuidToString(l$personId);
    return result$data;
  }

  CopyWith$Variables$Mutation$deletePerson<Variables$Mutation$deletePerson>
      get copyWith => CopyWith$Variables$Mutation$deletePerson(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$deletePerson) ||
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

abstract class CopyWith$Variables$Mutation$deletePerson<TRes> {
  factory CopyWith$Variables$Mutation$deletePerson(
    Variables$Mutation$deletePerson instance,
    TRes Function(Variables$Mutation$deletePerson) then,
  ) = _CopyWithImpl$Variables$Mutation$deletePerson;

  factory CopyWith$Variables$Mutation$deletePerson.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$deletePerson;

  TRes call({UuidValue? personId});
}

class _CopyWithImpl$Variables$Mutation$deletePerson<TRes>
    implements CopyWith$Variables$Mutation$deletePerson<TRes> {
  _CopyWithImpl$Variables$Mutation$deletePerson(
    this._instance,
    this._then,
  );

  final Variables$Mutation$deletePerson _instance;

  final TRes Function(Variables$Mutation$deletePerson) _then;

  static const _undefined = {};

  TRes call({Object? personId = _undefined}) =>
      _then(Variables$Mutation$deletePerson._({
        ..._instance._$data,
        if (personId != _undefined && personId != null)
          'personId': (personId as UuidValue),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$deletePerson<TRes>
    implements CopyWith$Variables$Mutation$deletePerson<TRes> {
  _CopyWithStubImpl$Variables$Mutation$deletePerson(this._res);

  TRes _res;

  call({UuidValue? personId}) => _res;
}

class Mutation$deletePerson {
  Mutation$deletePerson({
    this.deletePersonsByPk,
    required this.$__typename,
  });

  factory Mutation$deletePerson.fromJson(Map<String, dynamic> json) {
    final l$deletePersonsByPk = json['deletePersonsByPk'];
    final l$$__typename = json['__typename'];
    return Mutation$deletePerson(
      deletePersonsByPk: l$deletePersonsByPk == null
          ? null
          : Fragment$Person.fromJson(
              (l$deletePersonsByPk as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$Person? deletePersonsByPk;

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
    if (!(other is Mutation$deletePerson) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Mutation$deletePerson on Mutation$deletePerson {
  CopyWith$Mutation$deletePerson<Mutation$deletePerson> get copyWith =>
      CopyWith$Mutation$deletePerson(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$deletePerson<TRes> {
  factory CopyWith$Mutation$deletePerson(
    Mutation$deletePerson instance,
    TRes Function(Mutation$deletePerson) then,
  ) = _CopyWithImpl$Mutation$deletePerson;

  factory CopyWith$Mutation$deletePerson.stub(TRes res) =
      _CopyWithStubImpl$Mutation$deletePerson;

  TRes call({
    Fragment$Person? deletePersonsByPk,
    String? $__typename,
  });
  CopyWith$Fragment$Person<TRes> get deletePersonsByPk;
}

class _CopyWithImpl$Mutation$deletePerson<TRes>
    implements CopyWith$Mutation$deletePerson<TRes> {
  _CopyWithImpl$Mutation$deletePerson(
    this._instance,
    this._then,
  );

  final Mutation$deletePerson _instance;

  final TRes Function(Mutation$deletePerson) _then;

  static const _undefined = {};

  TRes call({
    Object? deletePersonsByPk = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$deletePerson(
        deletePersonsByPk: deletePersonsByPk == _undefined
            ? _instance.deletePersonsByPk
            : (deletePersonsByPk as Fragment$Person?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$Person<TRes> get deletePersonsByPk {
    final local$deletePersonsByPk = _instance.deletePersonsByPk;
    return local$deletePersonsByPk == null
        ? CopyWith$Fragment$Person.stub(_then(_instance))
        : CopyWith$Fragment$Person(
            local$deletePersonsByPk, (e) => call(deletePersonsByPk: e));
  }
}

class _CopyWithStubImpl$Mutation$deletePerson<TRes>
    implements CopyWith$Mutation$deletePerson<TRes> {
  _CopyWithStubImpl$Mutation$deletePerson(this._res);

  TRes _res;

  call({
    Fragment$Person? deletePersonsByPk,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$Person<TRes> get deletePersonsByPk =>
      CopyWith$Fragment$Person.stub(_res);
}

const documentNodeMutationdeletePerson = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'deletePerson'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'personId')),
        type: NamedTypeNode(
          name: NameNode(value: 'uuid'),
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

class Variables$Mutation$updatePerson {
  factory Variables$Mutation$updatePerson({
    required UuidValue personId,
    required Input$PersonsSetInput newPerson,
    required List<Input$PersonsGroupsInsertInput> newGroups,
    List<UuidValue>? deleteGroups,
    required List<Input$PersonsServicesInsertInput> newServices,
    List<UuidValue>? deleteServices,
    required List<Input$PersonsHobbiesInsertInput> newHobbies,
    List<UuidValue>? deleteHobbies,
    required List<Input$PersonsTagsInsertInput> newTags,
    List<UuidValue>? deleteTags,
    DateTime? lastConfession,
    DateTime? lastKodas,
    DateTime? lastCall,
    DateTime? lastVisit,
    required bool updatePersonsByPk,
    required bool insertPersonsServices,
    required bool insertPersonsGroups,
    required bool insertPersonsHobbies,
    required bool insertPersonsTags,
    required bool deletePersonsTags,
    required bool deletePersonsHobbies,
    required bool deletePersonsGroups,
    required bool deletePersonsServices,
    required bool insertHistoryConfessionHistoryOne,
    required bool insertHistoryKodasHistoryOne,
    required bool insertHistoryCallHistoryOne,
    required bool insertHistoryVisitHistoryOne,
  }) =>
      Variables$Mutation$updatePerson._({
        r'personId': personId,
        r'newPerson': newPerson,
        r'newGroups': newGroups,
        if (deleteGroups != null) r'deleteGroups': deleteGroups,
        r'newServices': newServices,
        if (deleteServices != null) r'deleteServices': deleteServices,
        r'newHobbies': newHobbies,
        if (deleteHobbies != null) r'deleteHobbies': deleteHobbies,
        r'newTags': newTags,
        if (deleteTags != null) r'deleteTags': deleteTags,
        if (lastConfession != null) r'lastConfession': lastConfession,
        if (lastKodas != null) r'lastKodas': lastKodas,
        if (lastCall != null) r'lastCall': lastCall,
        if (lastVisit != null) r'lastVisit': lastVisit,
        r'updatePersonsByPk': updatePersonsByPk,
        r'insertPersonsServices': insertPersonsServices,
        r'insertPersonsGroups': insertPersonsGroups,
        r'insertPersonsHobbies': insertPersonsHobbies,
        r'insertPersonsTags': insertPersonsTags,
        r'deletePersonsTags': deletePersonsTags,
        r'deletePersonsHobbies': deletePersonsHobbies,
        r'deletePersonsGroups': deletePersonsGroups,
        r'deletePersonsServices': deletePersonsServices,
        r'insertHistoryConfessionHistoryOne': insertHistoryConfessionHistoryOne,
        r'insertHistoryKodasHistoryOne': insertHistoryKodasHistoryOne,
        r'insertHistoryCallHistoryOne': insertHistoryCallHistoryOne,
        r'insertHistoryVisitHistoryOne': insertHistoryVisitHistoryOne,
      });

  Variables$Mutation$updatePerson._(this._$data);

  factory Variables$Mutation$updatePerson.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$personId = data['personId'];
    result$data['personId'] = stringToUuid(l$personId);
    final l$newPerson = data['newPerson'];
    result$data['newPerson'] =
        Input$PersonsSetInput.fromJson((l$newPerson as Map<String, dynamic>));
    final l$newGroups = data['newGroups'];
    result$data['newGroups'] = (l$newGroups as List<dynamic>)
        .map((e) => Input$PersonsGroupsInsertInput.fromJson(
            (e as Map<String, dynamic>)))
        .toList();
    if (data.containsKey('deleteGroups')) {
      final l$deleteGroups = data['deleteGroups'];
      result$data['deleteGroups'] = (l$deleteGroups as List<dynamic>?)
          ?.map((e) => stringToUuid(e))
          .toList();
    }
    final l$newServices = data['newServices'];
    result$data['newServices'] = (l$newServices as List<dynamic>)
        .map((e) => Input$PersonsServicesInsertInput.fromJson(
            (e as Map<String, dynamic>)))
        .toList();
    if (data.containsKey('deleteServices')) {
      final l$deleteServices = data['deleteServices'];
      result$data['deleteServices'] = (l$deleteServices as List<dynamic>?)
          ?.map((e) => stringToUuid(e))
          .toList();
    }
    final l$newHobbies = data['newHobbies'];
    result$data['newHobbies'] = (l$newHobbies as List<dynamic>)
        .map((e) => Input$PersonsHobbiesInsertInput.fromJson(
            (e as Map<String, dynamic>)))
        .toList();
    if (data.containsKey('deleteHobbies')) {
      final l$deleteHobbies = data['deleteHobbies'];
      result$data['deleteHobbies'] = (l$deleteHobbies as List<dynamic>?)
          ?.map((e) => stringToUuid(e))
          .toList();
    }
    final l$newTags = data['newTags'];
    result$data['newTags'] = (l$newTags as List<dynamic>)
        .map((e) =>
            Input$PersonsTagsInsertInput.fromJson((e as Map<String, dynamic>)))
        .toList();
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
    final l$updatePersonsByPk = data['updatePersonsByPk'];
    result$data['updatePersonsByPk'] = (l$updatePersonsByPk as bool);
    final l$insertPersonsServices = data['insertPersonsServices'];
    result$data['insertPersonsServices'] = (l$insertPersonsServices as bool);
    final l$insertPersonsGroups = data['insertPersonsGroups'];
    result$data['insertPersonsGroups'] = (l$insertPersonsGroups as bool);
    final l$insertPersonsHobbies = data['insertPersonsHobbies'];
    result$data['insertPersonsHobbies'] = (l$insertPersonsHobbies as bool);
    final l$insertPersonsTags = data['insertPersonsTags'];
    result$data['insertPersonsTags'] = (l$insertPersonsTags as bool);
    final l$deletePersonsTags = data['deletePersonsTags'];
    result$data['deletePersonsTags'] = (l$deletePersonsTags as bool);
    final l$deletePersonsHobbies = data['deletePersonsHobbies'];
    result$data['deletePersonsHobbies'] = (l$deletePersonsHobbies as bool);
    final l$deletePersonsGroups = data['deletePersonsGroups'];
    result$data['deletePersonsGroups'] = (l$deletePersonsGroups as bool);
    final l$deletePersonsServices = data['deletePersonsServices'];
    result$data['deletePersonsServices'] = (l$deletePersonsServices as bool);
    final l$insertHistoryConfessionHistoryOne =
        data['insertHistoryConfessionHistoryOne'];
    result$data['insertHistoryConfessionHistoryOne'] =
        (l$insertHistoryConfessionHistoryOne as bool);
    final l$insertHistoryKodasHistoryOne = data['insertHistoryKodasHistoryOne'];
    result$data['insertHistoryKodasHistoryOne'] =
        (l$insertHistoryKodasHistoryOne as bool);
    final l$insertHistoryCallHistoryOne = data['insertHistoryCallHistoryOne'];
    result$data['insertHistoryCallHistoryOne'] =
        (l$insertHistoryCallHistoryOne as bool);
    final l$insertHistoryVisitHistoryOne = data['insertHistoryVisitHistoryOne'];
    result$data['insertHistoryVisitHistoryOne'] =
        (l$insertHistoryVisitHistoryOne as bool);
    return Variables$Mutation$updatePerson._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get personId => (_$data['personId'] as UuidValue);
  Input$PersonsSetInput get newPerson =>
      (_$data['newPerson'] as Input$PersonsSetInput);
  List<Input$PersonsGroupsInsertInput> get newGroups =>
      (_$data['newGroups'] as List<Input$PersonsGroupsInsertInput>);
  List<UuidValue>? get deleteGroups =>
      (_$data['deleteGroups'] as List<UuidValue>?);
  List<Input$PersonsServicesInsertInput> get newServices =>
      (_$data['newServices'] as List<Input$PersonsServicesInsertInput>);
  List<UuidValue>? get deleteServices =>
      (_$data['deleteServices'] as List<UuidValue>?);
  List<Input$PersonsHobbiesInsertInput> get newHobbies =>
      (_$data['newHobbies'] as List<Input$PersonsHobbiesInsertInput>);
  List<UuidValue>? get deleteHobbies =>
      (_$data['deleteHobbies'] as List<UuidValue>?);
  List<Input$PersonsTagsInsertInput> get newTags =>
      (_$data['newTags'] as List<Input$PersonsTagsInsertInput>);
  List<UuidValue>? get deleteTags => (_$data['deleteTags'] as List<UuidValue>?);
  DateTime? get lastConfession => (_$data['lastConfession'] as DateTime?);
  DateTime? get lastKodas => (_$data['lastKodas'] as DateTime?);
  DateTime? get lastCall => (_$data['lastCall'] as DateTime?);
  DateTime? get lastVisit => (_$data['lastVisit'] as DateTime?);
  bool get updatePersonsByPk => (_$data['updatePersonsByPk'] as bool);
  bool get insertPersonsServices => (_$data['insertPersonsServices'] as bool);
  bool get insertPersonsGroups => (_$data['insertPersonsGroups'] as bool);
  bool get insertPersonsHobbies => (_$data['insertPersonsHobbies'] as bool);
  bool get insertPersonsTags => (_$data['insertPersonsTags'] as bool);
  bool get deletePersonsTags => (_$data['deletePersonsTags'] as bool);
  bool get deletePersonsHobbies => (_$data['deletePersonsHobbies'] as bool);
  bool get deletePersonsGroups => (_$data['deletePersonsGroups'] as bool);
  bool get deletePersonsServices => (_$data['deletePersonsServices'] as bool);
  bool get insertHistoryConfessionHistoryOne =>
      (_$data['insertHistoryConfessionHistoryOne'] as bool);
  bool get insertHistoryKodasHistoryOne =>
      (_$data['insertHistoryKodasHistoryOne'] as bool);
  bool get insertHistoryCallHistoryOne =>
      (_$data['insertHistoryCallHistoryOne'] as bool);
  bool get insertHistoryVisitHistoryOne =>
      (_$data['insertHistoryVisitHistoryOne'] as bool);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$personId = personId;
    result$data['personId'] = uuidToString(l$personId);
    final l$newPerson = newPerson;
    result$data['newPerson'] = l$newPerson.toJson();
    final l$newGroups = newGroups;
    result$data['newGroups'] = l$newGroups.map((e) => e.toJson()).toList();
    if (_$data.containsKey('deleteGroups')) {
      final l$deleteGroups = deleteGroups;
      result$data['deleteGroups'] =
          l$deleteGroups?.map((e) => uuidToString(e)).toList();
    }
    final l$newServices = newServices;
    result$data['newServices'] = l$newServices.map((e) => e.toJson()).toList();
    if (_$data.containsKey('deleteServices')) {
      final l$deleteServices = deleteServices;
      result$data['deleteServices'] =
          l$deleteServices?.map((e) => uuidToString(e)).toList();
    }
    final l$newHobbies = newHobbies;
    result$data['newHobbies'] = l$newHobbies.map((e) => e.toJson()).toList();
    if (_$data.containsKey('deleteHobbies')) {
      final l$deleteHobbies = deleteHobbies;
      result$data['deleteHobbies'] =
          l$deleteHobbies?.map((e) => uuidToString(e)).toList();
    }
    final l$newTags = newTags;
    result$data['newTags'] = l$newTags.map((e) => e.toJson()).toList();
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
    final l$updatePersonsByPk = updatePersonsByPk;
    result$data['updatePersonsByPk'] = l$updatePersonsByPk;
    final l$insertPersonsServices = insertPersonsServices;
    result$data['insertPersonsServices'] = l$insertPersonsServices;
    final l$insertPersonsGroups = insertPersonsGroups;
    result$data['insertPersonsGroups'] = l$insertPersonsGroups;
    final l$insertPersonsHobbies = insertPersonsHobbies;
    result$data['insertPersonsHobbies'] = l$insertPersonsHobbies;
    final l$insertPersonsTags = insertPersonsTags;
    result$data['insertPersonsTags'] = l$insertPersonsTags;
    final l$deletePersonsTags = deletePersonsTags;
    result$data['deletePersonsTags'] = l$deletePersonsTags;
    final l$deletePersonsHobbies = deletePersonsHobbies;
    result$data['deletePersonsHobbies'] = l$deletePersonsHobbies;
    final l$deletePersonsGroups = deletePersonsGroups;
    result$data['deletePersonsGroups'] = l$deletePersonsGroups;
    final l$deletePersonsServices = deletePersonsServices;
    result$data['deletePersonsServices'] = l$deletePersonsServices;
    final l$insertHistoryConfessionHistoryOne =
        insertHistoryConfessionHistoryOne;
    result$data['insertHistoryConfessionHistoryOne'] =
        l$insertHistoryConfessionHistoryOne;
    final l$insertHistoryKodasHistoryOne = insertHistoryKodasHistoryOne;
    result$data['insertHistoryKodasHistoryOne'] =
        l$insertHistoryKodasHistoryOne;
    final l$insertHistoryCallHistoryOne = insertHistoryCallHistoryOne;
    result$data['insertHistoryCallHistoryOne'] = l$insertHistoryCallHistoryOne;
    final l$insertHistoryVisitHistoryOne = insertHistoryVisitHistoryOne;
    result$data['insertHistoryVisitHistoryOne'] =
        l$insertHistoryVisitHistoryOne;
    return result$data;
  }

  CopyWith$Variables$Mutation$updatePerson<Variables$Mutation$updatePerson>
      get copyWith => CopyWith$Variables$Mutation$updatePerson(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$updatePerson) ||
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
      Object.hashAll(l$newGroups.map((v) => v)),
      _$data.containsKey('deleteGroups')
          ? l$deleteGroups == null
              ? null
              : Object.hashAll(l$deleteGroups.map((v) => v))
          : const {},
      Object.hashAll(l$newServices.map((v) => v)),
      _$data.containsKey('deleteServices')
          ? l$deleteServices == null
              ? null
              : Object.hashAll(l$deleteServices.map((v) => v))
          : const {},
      Object.hashAll(l$newHobbies.map((v) => v)),
      _$data.containsKey('deleteHobbies')
          ? l$deleteHobbies == null
              ? null
              : Object.hashAll(l$deleteHobbies.map((v) => v))
          : const {},
      Object.hashAll(l$newTags.map((v) => v)),
      _$data.containsKey('deleteTags')
          ? l$deleteTags == null
              ? null
              : Object.hashAll(l$deleteTags.map((v) => v))
          : const {},
      _$data.containsKey('lastConfession') ? l$lastConfession : const {},
      _$data.containsKey('lastKodas') ? l$lastKodas : const {},
      _$data.containsKey('lastCall') ? l$lastCall : const {},
      _$data.containsKey('lastVisit') ? l$lastVisit : const {},
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
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$updatePerson<TRes> {
  factory CopyWith$Variables$Mutation$updatePerson(
    Variables$Mutation$updatePerson instance,
    TRes Function(Variables$Mutation$updatePerson) then,
  ) = _CopyWithImpl$Variables$Mutation$updatePerson;

  factory CopyWith$Variables$Mutation$updatePerson.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$updatePerson;

  TRes call({
    UuidValue? personId,
    Input$PersonsSetInput? newPerson,
    List<Input$PersonsGroupsInsertInput>? newGroups,
    List<UuidValue>? deleteGroups,
    List<Input$PersonsServicesInsertInput>? newServices,
    List<UuidValue>? deleteServices,
    List<Input$PersonsHobbiesInsertInput>? newHobbies,
    List<UuidValue>? deleteHobbies,
    List<Input$PersonsTagsInsertInput>? newTags,
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

class _CopyWithImpl$Variables$Mutation$updatePerson<TRes>
    implements CopyWith$Variables$Mutation$updatePerson<TRes> {
  _CopyWithImpl$Variables$Mutation$updatePerson(
    this._instance,
    this._then,
  );

  final Variables$Mutation$updatePerson _instance;

  final TRes Function(Variables$Mutation$updatePerson) _then;

  static const _undefined = {};

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
      _then(Variables$Mutation$updatePerson._({
        ..._instance._$data,
        if (personId != _undefined && personId != null)
          'personId': (personId as UuidValue),
        if (newPerson != _undefined && newPerson != null)
          'newPerson': (newPerson as Input$PersonsSetInput),
        if (newGroups != _undefined && newGroups != null)
          'newGroups': (newGroups as List<Input$PersonsGroupsInsertInput>),
        if (deleteGroups != _undefined)
          'deleteGroups': (deleteGroups as List<UuidValue>?),
        if (newServices != _undefined && newServices != null)
          'newServices':
              (newServices as List<Input$PersonsServicesInsertInput>),
        if (deleteServices != _undefined)
          'deleteServices': (deleteServices as List<UuidValue>?),
        if (newHobbies != _undefined && newHobbies != null)
          'newHobbies': (newHobbies as List<Input$PersonsHobbiesInsertInput>),
        if (deleteHobbies != _undefined)
          'deleteHobbies': (deleteHobbies as List<UuidValue>?),
        if (newTags != _undefined && newTags != null)
          'newTags': (newTags as List<Input$PersonsTagsInsertInput>),
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

class _CopyWithStubImpl$Variables$Mutation$updatePerson<TRes>
    implements CopyWith$Variables$Mutation$updatePerson<TRes> {
  _CopyWithStubImpl$Variables$Mutation$updatePerson(this._res);

  TRes _res;

  call({
    UuidValue? personId,
    Input$PersonsSetInput? newPerson,
    List<Input$PersonsGroupsInsertInput>? newGroups,
    List<UuidValue>? deleteGroups,
    List<Input$PersonsServicesInsertInput>? newServices,
    List<UuidValue>? deleteServices,
    List<Input$PersonsHobbiesInsertInput>? newHobbies,
    List<UuidValue>? deleteHobbies,
    List<Input$PersonsTagsInsertInput>? newTags,
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

class Mutation$updatePerson {
  Mutation$updatePerson({
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
    required this.$__typename,
  });

  factory Mutation$updatePerson.fromJson(Map<String, dynamic> json) {
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
    return Mutation$updatePerson(
      updatePersonsByPk: l$updatePersonsByPk == null
          ? null
          : Fragment$Person.fromJson(
              (l$updatePersonsByPk as Map<String, dynamic>)),
      insertPersonsServices: l$insertPersonsServices == null
          ? null
          : Mutation$updatePerson$insertPersonsServices.fromJson(
              (l$insertPersonsServices as Map<String, dynamic>)),
      insertPersonsGroups: l$insertPersonsGroups == null
          ? null
          : Mutation$updatePerson$insertPersonsGroups.fromJson(
              (l$insertPersonsGroups as Map<String, dynamic>)),
      insertPersonsHobbies: l$insertPersonsHobbies == null
          ? null
          : Mutation$updatePerson$insertPersonsHobbies.fromJson(
              (l$insertPersonsHobbies as Map<String, dynamic>)),
      insertPersonsTags: l$insertPersonsTags == null
          ? null
          : Mutation$updatePerson$insertPersonsTags.fromJson(
              (l$insertPersonsTags as Map<String, dynamic>)),
      deletePersonsTags: l$deletePersonsTags == null
          ? null
          : Mutation$updatePerson$deletePersonsTags.fromJson(
              (l$deletePersonsTags as Map<String, dynamic>)),
      deletePersonsHobbies: l$deletePersonsHobbies == null
          ? null
          : Mutation$updatePerson$deletePersonsHobbies.fromJson(
              (l$deletePersonsHobbies as Map<String, dynamic>)),
      deletePersonsGroups: l$deletePersonsGroups == null
          ? null
          : Mutation$updatePerson$deletePersonsGroups.fromJson(
              (l$deletePersonsGroups as Map<String, dynamic>)),
      deletePersonsServices: l$deletePersonsServices == null
          ? null
          : Mutation$updatePerson$deletePersonsServices.fromJson(
              (l$deletePersonsServices as Map<String, dynamic>)),
      insertHistoryConfessionHistoryOne: l$insertHistoryConfessionHistoryOne ==
              null
          ? null
          : Mutation$updatePerson$insertHistoryConfessionHistoryOne.fromJson(
              (l$insertHistoryConfessionHistoryOne as Map<String, dynamic>)),
      insertHistoryKodasHistoryOne: l$insertHistoryKodasHistoryOne == null
          ? null
          : Mutation$updatePerson$insertHistoryKodasHistoryOne.fromJson(
              (l$insertHistoryKodasHistoryOne as Map<String, dynamic>)),
      insertHistoryCallHistoryOne: l$insertHistoryCallHistoryOne == null
          ? null
          : Mutation$updatePerson$insertHistoryCallHistoryOne.fromJson(
              (l$insertHistoryCallHistoryOne as Map<String, dynamic>)),
      insertHistoryVisitHistoryOne: l$insertHistoryVisitHistoryOne == null
          ? null
          : Mutation$updatePerson$insertHistoryVisitHistoryOne.fromJson(
              (l$insertHistoryVisitHistoryOne as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$Person? updatePersonsByPk;

  final Mutation$updatePerson$insertPersonsServices? insertPersonsServices;

  final Mutation$updatePerson$insertPersonsGroups? insertPersonsGroups;

  final Mutation$updatePerson$insertPersonsHobbies? insertPersonsHobbies;

  final Mutation$updatePerson$insertPersonsTags? insertPersonsTags;

  final Mutation$updatePerson$deletePersonsTags? deletePersonsTags;

  final Mutation$updatePerson$deletePersonsHobbies? deletePersonsHobbies;

  final Mutation$updatePerson$deletePersonsGroups? deletePersonsGroups;

  final Mutation$updatePerson$deletePersonsServices? deletePersonsServices;

  final Mutation$updatePerson$insertHistoryConfessionHistoryOne?
      insertHistoryConfessionHistoryOne;

  final Mutation$updatePerson$insertHistoryKodasHistoryOne?
      insertHistoryKodasHistoryOne;

  final Mutation$updatePerson$insertHistoryCallHistoryOne?
      insertHistoryCallHistoryOne;

  final Mutation$updatePerson$insertHistoryVisitHistoryOne?
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
    if (!(other is Mutation$updatePerson) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Mutation$updatePerson on Mutation$updatePerson {
  CopyWith$Mutation$updatePerson<Mutation$updatePerson> get copyWith =>
      CopyWith$Mutation$updatePerson(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$updatePerson<TRes> {
  factory CopyWith$Mutation$updatePerson(
    Mutation$updatePerson instance,
    TRes Function(Mutation$updatePerson) then,
  ) = _CopyWithImpl$Mutation$updatePerson;

  factory CopyWith$Mutation$updatePerson.stub(TRes res) =
      _CopyWithStubImpl$Mutation$updatePerson;

  TRes call({
    Fragment$Person? updatePersonsByPk,
    Mutation$updatePerson$insertPersonsServices? insertPersonsServices,
    Mutation$updatePerson$insertPersonsGroups? insertPersonsGroups,
    Mutation$updatePerson$insertPersonsHobbies? insertPersonsHobbies,
    Mutation$updatePerson$insertPersonsTags? insertPersonsTags,
    Mutation$updatePerson$deletePersonsTags? deletePersonsTags,
    Mutation$updatePerson$deletePersonsHobbies? deletePersonsHobbies,
    Mutation$updatePerson$deletePersonsGroups? deletePersonsGroups,
    Mutation$updatePerson$deletePersonsServices? deletePersonsServices,
    Mutation$updatePerson$insertHistoryConfessionHistoryOne?
        insertHistoryConfessionHistoryOne,
    Mutation$updatePerson$insertHistoryKodasHistoryOne?
        insertHistoryKodasHistoryOne,
    Mutation$updatePerson$insertHistoryCallHistoryOne?
        insertHistoryCallHistoryOne,
    Mutation$updatePerson$insertHistoryVisitHistoryOne?
        insertHistoryVisitHistoryOne,
    String? $__typename,
  });
  CopyWith$Fragment$Person<TRes> get updatePersonsByPk;
  CopyWith$Mutation$updatePerson$insertPersonsServices<TRes>
      get insertPersonsServices;
  CopyWith$Mutation$updatePerson$insertPersonsGroups<TRes>
      get insertPersonsGroups;
  CopyWith$Mutation$updatePerson$insertPersonsHobbies<TRes>
      get insertPersonsHobbies;
  CopyWith$Mutation$updatePerson$insertPersonsTags<TRes> get insertPersonsTags;
  CopyWith$Mutation$updatePerson$deletePersonsTags<TRes> get deletePersonsTags;
  CopyWith$Mutation$updatePerson$deletePersonsHobbies<TRes>
      get deletePersonsHobbies;
  CopyWith$Mutation$updatePerson$deletePersonsGroups<TRes>
      get deletePersonsGroups;
  CopyWith$Mutation$updatePerson$deletePersonsServices<TRes>
      get deletePersonsServices;
  CopyWith$Mutation$updatePerson$insertHistoryConfessionHistoryOne<TRes>
      get insertHistoryConfessionHistoryOne;
  CopyWith$Mutation$updatePerson$insertHistoryKodasHistoryOne<TRes>
      get insertHistoryKodasHistoryOne;
  CopyWith$Mutation$updatePerson$insertHistoryCallHistoryOne<TRes>
      get insertHistoryCallHistoryOne;
  CopyWith$Mutation$updatePerson$insertHistoryVisitHistoryOne<TRes>
      get insertHistoryVisitHistoryOne;
}

class _CopyWithImpl$Mutation$updatePerson<TRes>
    implements CopyWith$Mutation$updatePerson<TRes> {
  _CopyWithImpl$Mutation$updatePerson(
    this._instance,
    this._then,
  );

  final Mutation$updatePerson _instance;

  final TRes Function(Mutation$updatePerson) _then;

  static const _undefined = {};

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
      _then(Mutation$updatePerson(
        updatePersonsByPk: updatePersonsByPk == _undefined
            ? _instance.updatePersonsByPk
            : (updatePersonsByPk as Fragment$Person?),
        insertPersonsServices: insertPersonsServices == _undefined
            ? _instance.insertPersonsServices
            : (insertPersonsServices
                as Mutation$updatePerson$insertPersonsServices?),
        insertPersonsGroups: insertPersonsGroups == _undefined
            ? _instance.insertPersonsGroups
            : (insertPersonsGroups
                as Mutation$updatePerson$insertPersonsGroups?),
        insertPersonsHobbies: insertPersonsHobbies == _undefined
            ? _instance.insertPersonsHobbies
            : (insertPersonsHobbies
                as Mutation$updatePerson$insertPersonsHobbies?),
        insertPersonsTags: insertPersonsTags == _undefined
            ? _instance.insertPersonsTags
            : (insertPersonsTags as Mutation$updatePerson$insertPersonsTags?),
        deletePersonsTags: deletePersonsTags == _undefined
            ? _instance.deletePersonsTags
            : (deletePersonsTags as Mutation$updatePerson$deletePersonsTags?),
        deletePersonsHobbies: deletePersonsHobbies == _undefined
            ? _instance.deletePersonsHobbies
            : (deletePersonsHobbies
                as Mutation$updatePerson$deletePersonsHobbies?),
        deletePersonsGroups: deletePersonsGroups == _undefined
            ? _instance.deletePersonsGroups
            : (deletePersonsGroups
                as Mutation$updatePerson$deletePersonsGroups?),
        deletePersonsServices: deletePersonsServices == _undefined
            ? _instance.deletePersonsServices
            : (deletePersonsServices
                as Mutation$updatePerson$deletePersonsServices?),
        insertHistoryConfessionHistoryOne: insertHistoryConfessionHistoryOne ==
                _undefined
            ? _instance.insertHistoryConfessionHistoryOne
            : (insertHistoryConfessionHistoryOne
                as Mutation$updatePerson$insertHistoryConfessionHistoryOne?),
        insertHistoryKodasHistoryOne: insertHistoryKodasHistoryOne == _undefined
            ? _instance.insertHistoryKodasHistoryOne
            : (insertHistoryKodasHistoryOne
                as Mutation$updatePerson$insertHistoryKodasHistoryOne?),
        insertHistoryCallHistoryOne: insertHistoryCallHistoryOne == _undefined
            ? _instance.insertHistoryCallHistoryOne
            : (insertHistoryCallHistoryOne
                as Mutation$updatePerson$insertHistoryCallHistoryOne?),
        insertHistoryVisitHistoryOne: insertHistoryVisitHistoryOne == _undefined
            ? _instance.insertHistoryVisitHistoryOne
            : (insertHistoryVisitHistoryOne
                as Mutation$updatePerson$insertHistoryVisitHistoryOne?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$Person<TRes> get updatePersonsByPk {
    final local$updatePersonsByPk = _instance.updatePersonsByPk;
    return local$updatePersonsByPk == null
        ? CopyWith$Fragment$Person.stub(_then(_instance))
        : CopyWith$Fragment$Person(
            local$updatePersonsByPk, (e) => call(updatePersonsByPk: e));
  }

  CopyWith$Mutation$updatePerson$insertPersonsServices<TRes>
      get insertPersonsServices {
    final local$insertPersonsServices = _instance.insertPersonsServices;
    return local$insertPersonsServices == null
        ? CopyWith$Mutation$updatePerson$insertPersonsServices.stub(
            _then(_instance))
        : CopyWith$Mutation$updatePerson$insertPersonsServices(
            local$insertPersonsServices, (e) => call(insertPersonsServices: e));
  }

  CopyWith$Mutation$updatePerson$insertPersonsGroups<TRes>
      get insertPersonsGroups {
    final local$insertPersonsGroups = _instance.insertPersonsGroups;
    return local$insertPersonsGroups == null
        ? CopyWith$Mutation$updatePerson$insertPersonsGroups.stub(
            _then(_instance))
        : CopyWith$Mutation$updatePerson$insertPersonsGroups(
            local$insertPersonsGroups, (e) => call(insertPersonsGroups: e));
  }

  CopyWith$Mutation$updatePerson$insertPersonsHobbies<TRes>
      get insertPersonsHobbies {
    final local$insertPersonsHobbies = _instance.insertPersonsHobbies;
    return local$insertPersonsHobbies == null
        ? CopyWith$Mutation$updatePerson$insertPersonsHobbies.stub(
            _then(_instance))
        : CopyWith$Mutation$updatePerson$insertPersonsHobbies(
            local$insertPersonsHobbies, (e) => call(insertPersonsHobbies: e));
  }

  CopyWith$Mutation$updatePerson$insertPersonsTags<TRes> get insertPersonsTags {
    final local$insertPersonsTags = _instance.insertPersonsTags;
    return local$insertPersonsTags == null
        ? CopyWith$Mutation$updatePerson$insertPersonsTags.stub(
            _then(_instance))
        : CopyWith$Mutation$updatePerson$insertPersonsTags(
            local$insertPersonsTags, (e) => call(insertPersonsTags: e));
  }

  CopyWith$Mutation$updatePerson$deletePersonsTags<TRes> get deletePersonsTags {
    final local$deletePersonsTags = _instance.deletePersonsTags;
    return local$deletePersonsTags == null
        ? CopyWith$Mutation$updatePerson$deletePersonsTags.stub(
            _then(_instance))
        : CopyWith$Mutation$updatePerson$deletePersonsTags(
            local$deletePersonsTags, (e) => call(deletePersonsTags: e));
  }

  CopyWith$Mutation$updatePerson$deletePersonsHobbies<TRes>
      get deletePersonsHobbies {
    final local$deletePersonsHobbies = _instance.deletePersonsHobbies;
    return local$deletePersonsHobbies == null
        ? CopyWith$Mutation$updatePerson$deletePersonsHobbies.stub(
            _then(_instance))
        : CopyWith$Mutation$updatePerson$deletePersonsHobbies(
            local$deletePersonsHobbies, (e) => call(deletePersonsHobbies: e));
  }

  CopyWith$Mutation$updatePerson$deletePersonsGroups<TRes>
      get deletePersonsGroups {
    final local$deletePersonsGroups = _instance.deletePersonsGroups;
    return local$deletePersonsGroups == null
        ? CopyWith$Mutation$updatePerson$deletePersonsGroups.stub(
            _then(_instance))
        : CopyWith$Mutation$updatePerson$deletePersonsGroups(
            local$deletePersonsGroups, (e) => call(deletePersonsGroups: e));
  }

  CopyWith$Mutation$updatePerson$deletePersonsServices<TRes>
      get deletePersonsServices {
    final local$deletePersonsServices = _instance.deletePersonsServices;
    return local$deletePersonsServices == null
        ? CopyWith$Mutation$updatePerson$deletePersonsServices.stub(
            _then(_instance))
        : CopyWith$Mutation$updatePerson$deletePersonsServices(
            local$deletePersonsServices, (e) => call(deletePersonsServices: e));
  }

  CopyWith$Mutation$updatePerson$insertHistoryConfessionHistoryOne<TRes>
      get insertHistoryConfessionHistoryOne {
    final local$insertHistoryConfessionHistoryOne =
        _instance.insertHistoryConfessionHistoryOne;
    return local$insertHistoryConfessionHistoryOne == null
        ? CopyWith$Mutation$updatePerson$insertHistoryConfessionHistoryOne.stub(
            _then(_instance))
        : CopyWith$Mutation$updatePerson$insertHistoryConfessionHistoryOne(
            local$insertHistoryConfessionHistoryOne,
            (e) => call(insertHistoryConfessionHistoryOne: e));
  }

  CopyWith$Mutation$updatePerson$insertHistoryKodasHistoryOne<TRes>
      get insertHistoryKodasHistoryOne {
    final local$insertHistoryKodasHistoryOne =
        _instance.insertHistoryKodasHistoryOne;
    return local$insertHistoryKodasHistoryOne == null
        ? CopyWith$Mutation$updatePerson$insertHistoryKodasHistoryOne.stub(
            _then(_instance))
        : CopyWith$Mutation$updatePerson$insertHistoryKodasHistoryOne(
            local$insertHistoryKodasHistoryOne,
            (e) => call(insertHistoryKodasHistoryOne: e));
  }

  CopyWith$Mutation$updatePerson$insertHistoryCallHistoryOne<TRes>
      get insertHistoryCallHistoryOne {
    final local$insertHistoryCallHistoryOne =
        _instance.insertHistoryCallHistoryOne;
    return local$insertHistoryCallHistoryOne == null
        ? CopyWith$Mutation$updatePerson$insertHistoryCallHistoryOne.stub(
            _then(_instance))
        : CopyWith$Mutation$updatePerson$insertHistoryCallHistoryOne(
            local$insertHistoryCallHistoryOne,
            (e) => call(insertHistoryCallHistoryOne: e));
  }

  CopyWith$Mutation$updatePerson$insertHistoryVisitHistoryOne<TRes>
      get insertHistoryVisitHistoryOne {
    final local$insertHistoryVisitHistoryOne =
        _instance.insertHistoryVisitHistoryOne;
    return local$insertHistoryVisitHistoryOne == null
        ? CopyWith$Mutation$updatePerson$insertHistoryVisitHistoryOne.stub(
            _then(_instance))
        : CopyWith$Mutation$updatePerson$insertHistoryVisitHistoryOne(
            local$insertHistoryVisitHistoryOne,
            (e) => call(insertHistoryVisitHistoryOne: e));
  }
}

class _CopyWithStubImpl$Mutation$updatePerson<TRes>
    implements CopyWith$Mutation$updatePerson<TRes> {
  _CopyWithStubImpl$Mutation$updatePerson(this._res);

  TRes _res;

  call({
    Fragment$Person? updatePersonsByPk,
    Mutation$updatePerson$insertPersonsServices? insertPersonsServices,
    Mutation$updatePerson$insertPersonsGroups? insertPersonsGroups,
    Mutation$updatePerson$insertPersonsHobbies? insertPersonsHobbies,
    Mutation$updatePerson$insertPersonsTags? insertPersonsTags,
    Mutation$updatePerson$deletePersonsTags? deletePersonsTags,
    Mutation$updatePerson$deletePersonsHobbies? deletePersonsHobbies,
    Mutation$updatePerson$deletePersonsGroups? deletePersonsGroups,
    Mutation$updatePerson$deletePersonsServices? deletePersonsServices,
    Mutation$updatePerson$insertHistoryConfessionHistoryOne?
        insertHistoryConfessionHistoryOne,
    Mutation$updatePerson$insertHistoryKodasHistoryOne?
        insertHistoryKodasHistoryOne,
    Mutation$updatePerson$insertHistoryCallHistoryOne?
        insertHistoryCallHistoryOne,
    Mutation$updatePerson$insertHistoryVisitHistoryOne?
        insertHistoryVisitHistoryOne,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$Person<TRes> get updatePersonsByPk =>
      CopyWith$Fragment$Person.stub(_res);
  CopyWith$Mutation$updatePerson$insertPersonsServices<TRes>
      get insertPersonsServices =>
          CopyWith$Mutation$updatePerson$insertPersonsServices.stub(_res);
  CopyWith$Mutation$updatePerson$insertPersonsGroups<TRes>
      get insertPersonsGroups =>
          CopyWith$Mutation$updatePerson$insertPersonsGroups.stub(_res);
  CopyWith$Mutation$updatePerson$insertPersonsHobbies<TRes>
      get insertPersonsHobbies =>
          CopyWith$Mutation$updatePerson$insertPersonsHobbies.stub(_res);
  CopyWith$Mutation$updatePerson$insertPersonsTags<TRes>
      get insertPersonsTags =>
          CopyWith$Mutation$updatePerson$insertPersonsTags.stub(_res);
  CopyWith$Mutation$updatePerson$deletePersonsTags<TRes>
      get deletePersonsTags =>
          CopyWith$Mutation$updatePerson$deletePersonsTags.stub(_res);
  CopyWith$Mutation$updatePerson$deletePersonsHobbies<TRes>
      get deletePersonsHobbies =>
          CopyWith$Mutation$updatePerson$deletePersonsHobbies.stub(_res);
  CopyWith$Mutation$updatePerson$deletePersonsGroups<TRes>
      get deletePersonsGroups =>
          CopyWith$Mutation$updatePerson$deletePersonsGroups.stub(_res);
  CopyWith$Mutation$updatePerson$deletePersonsServices<TRes>
      get deletePersonsServices =>
          CopyWith$Mutation$updatePerson$deletePersonsServices.stub(_res);
  CopyWith$Mutation$updatePerson$insertHistoryConfessionHistoryOne<TRes>
      get insertHistoryConfessionHistoryOne =>
          CopyWith$Mutation$updatePerson$insertHistoryConfessionHistoryOne.stub(
              _res);
  CopyWith$Mutation$updatePerson$insertHistoryKodasHistoryOne<TRes>
      get insertHistoryKodasHistoryOne =>
          CopyWith$Mutation$updatePerson$insertHistoryKodasHistoryOne.stub(
              _res);
  CopyWith$Mutation$updatePerson$insertHistoryCallHistoryOne<TRes>
      get insertHistoryCallHistoryOne =>
          CopyWith$Mutation$updatePerson$insertHistoryCallHistoryOne.stub(_res);
  CopyWith$Mutation$updatePerson$insertHistoryVisitHistoryOne<TRes>
      get insertHistoryVisitHistoryOne =>
          CopyWith$Mutation$updatePerson$insertHistoryVisitHistoryOne.stub(
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
          name: NameNode(value: 'uuid'),
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
            name: NameNode(value: 'uuid'),
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
            name: NameNode(value: 'uuid'),
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
            name: NameNode(value: 'uuid'),
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
            name: NameNode(value: 'uuid'),
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
          name: NameNode(value: 'date'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'lastKodas')),
        type: NamedTypeNode(
          name: NameNode(value: 'date'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'lastCall')),
        type: NamedTypeNode(
          name: NameNode(value: 'timestamptz'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'lastVisit')),
        type: NamedTypeNode(
          name: NameNode(value: 'timestamptz'),
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
            name: NameNode(value: 'pk_columns'),
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
            name: NameNode(value: 'affected_rows'),
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
            name: NameNode(value: 'affected_rows'),
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
            name: NameNode(value: 'affected_rows'),
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
            name: NameNode(value: 'affected_rows'),
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
            name: NameNode(value: 'affected_rows'),
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
            name: NameNode(value: 'affected_rows'),
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
            name: NameNode(value: 'affected_rows'),
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
            name: NameNode(value: 'affected_rows'),
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
                            name: NameNode(value: 'attendance_days_pkey')),
                      ),
                      ObjectFieldNode(
                        name: NameNode(value: 'update_columns'),
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
                    name: NameNode(
                        value: 'confession_history_dayID_personID_key')),
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
                            name: NameNode(value: 'attendance_days_pkey')),
                      ),
                      ObjectFieldNode(
                        name: NameNode(value: 'update_columns'),
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
                    name: NameNode(value: 'kodas_history_dayID_personID_key')),
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
                name: NameNode(value: 'personId'),
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

class Mutation$updatePerson$insertPersonsServices {
  Mutation$updatePerson$insertPersonsServices({
    required this.affected_rows,
    required this.$__typename,
  });

  factory Mutation$updatePerson$insertPersonsServices.fromJson(
      Map<String, dynamic> json) {
    final l$affected_rows = json['affected_rows'];
    final l$$__typename = json['__typename'];
    return Mutation$updatePerson$insertPersonsServices(
      affected_rows: (l$affected_rows as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int affected_rows;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$affected_rows = affected_rows;
    _resultData['affected_rows'] = l$affected_rows;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$affected_rows = affected_rows;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$affected_rows,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$updatePerson$insertPersonsServices) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$affected_rows = affected_rows;
    final lOther$affected_rows = other.affected_rows;
    if (l$affected_rows != lOther$affected_rows) {
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

extension UtilityExtension$Mutation$updatePerson$insertPersonsServices
    on Mutation$updatePerson$insertPersonsServices {
  CopyWith$Mutation$updatePerson$insertPersonsServices<
          Mutation$updatePerson$insertPersonsServices>
      get copyWith => CopyWith$Mutation$updatePerson$insertPersonsServices(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$updatePerson$insertPersonsServices<TRes> {
  factory CopyWith$Mutation$updatePerson$insertPersonsServices(
    Mutation$updatePerson$insertPersonsServices instance,
    TRes Function(Mutation$updatePerson$insertPersonsServices) then,
  ) = _CopyWithImpl$Mutation$updatePerson$insertPersonsServices;

  factory CopyWith$Mutation$updatePerson$insertPersonsServices.stub(TRes res) =
      _CopyWithStubImpl$Mutation$updatePerson$insertPersonsServices;

  TRes call({
    int? affected_rows,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$updatePerson$insertPersonsServices<TRes>
    implements CopyWith$Mutation$updatePerson$insertPersonsServices<TRes> {
  _CopyWithImpl$Mutation$updatePerson$insertPersonsServices(
    this._instance,
    this._then,
  );

  final Mutation$updatePerson$insertPersonsServices _instance;

  final TRes Function(Mutation$updatePerson$insertPersonsServices) _then;

  static const _undefined = {};

  TRes call({
    Object? affected_rows = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$updatePerson$insertPersonsServices(
        affected_rows: affected_rows == _undefined || affected_rows == null
            ? _instance.affected_rows
            : (affected_rows as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$updatePerson$insertPersonsServices<TRes>
    implements CopyWith$Mutation$updatePerson$insertPersonsServices<TRes> {
  _CopyWithStubImpl$Mutation$updatePerson$insertPersonsServices(this._res);

  TRes _res;

  call({
    int? affected_rows,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$updatePerson$insertPersonsGroups {
  Mutation$updatePerson$insertPersonsGroups({
    required this.affected_rows,
    required this.$__typename,
  });

  factory Mutation$updatePerson$insertPersonsGroups.fromJson(
      Map<String, dynamic> json) {
    final l$affected_rows = json['affected_rows'];
    final l$$__typename = json['__typename'];
    return Mutation$updatePerson$insertPersonsGroups(
      affected_rows: (l$affected_rows as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int affected_rows;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$affected_rows = affected_rows;
    _resultData['affected_rows'] = l$affected_rows;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$affected_rows = affected_rows;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$affected_rows,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$updatePerson$insertPersonsGroups) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$affected_rows = affected_rows;
    final lOther$affected_rows = other.affected_rows;
    if (l$affected_rows != lOther$affected_rows) {
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

extension UtilityExtension$Mutation$updatePerson$insertPersonsGroups
    on Mutation$updatePerson$insertPersonsGroups {
  CopyWith$Mutation$updatePerson$insertPersonsGroups<
          Mutation$updatePerson$insertPersonsGroups>
      get copyWith => CopyWith$Mutation$updatePerson$insertPersonsGroups(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$updatePerson$insertPersonsGroups<TRes> {
  factory CopyWith$Mutation$updatePerson$insertPersonsGroups(
    Mutation$updatePerson$insertPersonsGroups instance,
    TRes Function(Mutation$updatePerson$insertPersonsGroups) then,
  ) = _CopyWithImpl$Mutation$updatePerson$insertPersonsGroups;

  factory CopyWith$Mutation$updatePerson$insertPersonsGroups.stub(TRes res) =
      _CopyWithStubImpl$Mutation$updatePerson$insertPersonsGroups;

  TRes call({
    int? affected_rows,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$updatePerson$insertPersonsGroups<TRes>
    implements CopyWith$Mutation$updatePerson$insertPersonsGroups<TRes> {
  _CopyWithImpl$Mutation$updatePerson$insertPersonsGroups(
    this._instance,
    this._then,
  );

  final Mutation$updatePerson$insertPersonsGroups _instance;

  final TRes Function(Mutation$updatePerson$insertPersonsGroups) _then;

  static const _undefined = {};

  TRes call({
    Object? affected_rows = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$updatePerson$insertPersonsGroups(
        affected_rows: affected_rows == _undefined || affected_rows == null
            ? _instance.affected_rows
            : (affected_rows as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$updatePerson$insertPersonsGroups<TRes>
    implements CopyWith$Mutation$updatePerson$insertPersonsGroups<TRes> {
  _CopyWithStubImpl$Mutation$updatePerson$insertPersonsGroups(this._res);

  TRes _res;

  call({
    int? affected_rows,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$updatePerson$insertPersonsHobbies {
  Mutation$updatePerson$insertPersonsHobbies({
    required this.affected_rows,
    required this.$__typename,
  });

  factory Mutation$updatePerson$insertPersonsHobbies.fromJson(
      Map<String, dynamic> json) {
    final l$affected_rows = json['affected_rows'];
    final l$$__typename = json['__typename'];
    return Mutation$updatePerson$insertPersonsHobbies(
      affected_rows: (l$affected_rows as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int affected_rows;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$affected_rows = affected_rows;
    _resultData['affected_rows'] = l$affected_rows;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$affected_rows = affected_rows;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$affected_rows,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$updatePerson$insertPersonsHobbies) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$affected_rows = affected_rows;
    final lOther$affected_rows = other.affected_rows;
    if (l$affected_rows != lOther$affected_rows) {
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

extension UtilityExtension$Mutation$updatePerson$insertPersonsHobbies
    on Mutation$updatePerson$insertPersonsHobbies {
  CopyWith$Mutation$updatePerson$insertPersonsHobbies<
          Mutation$updatePerson$insertPersonsHobbies>
      get copyWith => CopyWith$Mutation$updatePerson$insertPersonsHobbies(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$updatePerson$insertPersonsHobbies<TRes> {
  factory CopyWith$Mutation$updatePerson$insertPersonsHobbies(
    Mutation$updatePerson$insertPersonsHobbies instance,
    TRes Function(Mutation$updatePerson$insertPersonsHobbies) then,
  ) = _CopyWithImpl$Mutation$updatePerson$insertPersonsHobbies;

  factory CopyWith$Mutation$updatePerson$insertPersonsHobbies.stub(TRes res) =
      _CopyWithStubImpl$Mutation$updatePerson$insertPersonsHobbies;

  TRes call({
    int? affected_rows,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$updatePerson$insertPersonsHobbies<TRes>
    implements CopyWith$Mutation$updatePerson$insertPersonsHobbies<TRes> {
  _CopyWithImpl$Mutation$updatePerson$insertPersonsHobbies(
    this._instance,
    this._then,
  );

  final Mutation$updatePerson$insertPersonsHobbies _instance;

  final TRes Function(Mutation$updatePerson$insertPersonsHobbies) _then;

  static const _undefined = {};

  TRes call({
    Object? affected_rows = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$updatePerson$insertPersonsHobbies(
        affected_rows: affected_rows == _undefined || affected_rows == null
            ? _instance.affected_rows
            : (affected_rows as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$updatePerson$insertPersonsHobbies<TRes>
    implements CopyWith$Mutation$updatePerson$insertPersonsHobbies<TRes> {
  _CopyWithStubImpl$Mutation$updatePerson$insertPersonsHobbies(this._res);

  TRes _res;

  call({
    int? affected_rows,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$updatePerson$insertPersonsTags {
  Mutation$updatePerson$insertPersonsTags({
    required this.affected_rows,
    required this.$__typename,
  });

  factory Mutation$updatePerson$insertPersonsTags.fromJson(
      Map<String, dynamic> json) {
    final l$affected_rows = json['affected_rows'];
    final l$$__typename = json['__typename'];
    return Mutation$updatePerson$insertPersonsTags(
      affected_rows: (l$affected_rows as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int affected_rows;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$affected_rows = affected_rows;
    _resultData['affected_rows'] = l$affected_rows;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$affected_rows = affected_rows;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$affected_rows,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$updatePerson$insertPersonsTags) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$affected_rows = affected_rows;
    final lOther$affected_rows = other.affected_rows;
    if (l$affected_rows != lOther$affected_rows) {
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

extension UtilityExtension$Mutation$updatePerson$insertPersonsTags
    on Mutation$updatePerson$insertPersonsTags {
  CopyWith$Mutation$updatePerson$insertPersonsTags<
          Mutation$updatePerson$insertPersonsTags>
      get copyWith => CopyWith$Mutation$updatePerson$insertPersonsTags(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$updatePerson$insertPersonsTags<TRes> {
  factory CopyWith$Mutation$updatePerson$insertPersonsTags(
    Mutation$updatePerson$insertPersonsTags instance,
    TRes Function(Mutation$updatePerson$insertPersonsTags) then,
  ) = _CopyWithImpl$Mutation$updatePerson$insertPersonsTags;

  factory CopyWith$Mutation$updatePerson$insertPersonsTags.stub(TRes res) =
      _CopyWithStubImpl$Mutation$updatePerson$insertPersonsTags;

  TRes call({
    int? affected_rows,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$updatePerson$insertPersonsTags<TRes>
    implements CopyWith$Mutation$updatePerson$insertPersonsTags<TRes> {
  _CopyWithImpl$Mutation$updatePerson$insertPersonsTags(
    this._instance,
    this._then,
  );

  final Mutation$updatePerson$insertPersonsTags _instance;

  final TRes Function(Mutation$updatePerson$insertPersonsTags) _then;

  static const _undefined = {};

  TRes call({
    Object? affected_rows = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$updatePerson$insertPersonsTags(
        affected_rows: affected_rows == _undefined || affected_rows == null
            ? _instance.affected_rows
            : (affected_rows as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$updatePerson$insertPersonsTags<TRes>
    implements CopyWith$Mutation$updatePerson$insertPersonsTags<TRes> {
  _CopyWithStubImpl$Mutation$updatePerson$insertPersonsTags(this._res);

  TRes _res;

  call({
    int? affected_rows,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$updatePerson$deletePersonsTags {
  Mutation$updatePerson$deletePersonsTags({
    required this.affected_rows,
    required this.$__typename,
  });

  factory Mutation$updatePerson$deletePersonsTags.fromJson(
      Map<String, dynamic> json) {
    final l$affected_rows = json['affected_rows'];
    final l$$__typename = json['__typename'];
    return Mutation$updatePerson$deletePersonsTags(
      affected_rows: (l$affected_rows as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int affected_rows;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$affected_rows = affected_rows;
    _resultData['affected_rows'] = l$affected_rows;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$affected_rows = affected_rows;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$affected_rows,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$updatePerson$deletePersonsTags) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$affected_rows = affected_rows;
    final lOther$affected_rows = other.affected_rows;
    if (l$affected_rows != lOther$affected_rows) {
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

extension UtilityExtension$Mutation$updatePerson$deletePersonsTags
    on Mutation$updatePerson$deletePersonsTags {
  CopyWith$Mutation$updatePerson$deletePersonsTags<
          Mutation$updatePerson$deletePersonsTags>
      get copyWith => CopyWith$Mutation$updatePerson$deletePersonsTags(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$updatePerson$deletePersonsTags<TRes> {
  factory CopyWith$Mutation$updatePerson$deletePersonsTags(
    Mutation$updatePerson$deletePersonsTags instance,
    TRes Function(Mutation$updatePerson$deletePersonsTags) then,
  ) = _CopyWithImpl$Mutation$updatePerson$deletePersonsTags;

  factory CopyWith$Mutation$updatePerson$deletePersonsTags.stub(TRes res) =
      _CopyWithStubImpl$Mutation$updatePerson$deletePersonsTags;

  TRes call({
    int? affected_rows,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$updatePerson$deletePersonsTags<TRes>
    implements CopyWith$Mutation$updatePerson$deletePersonsTags<TRes> {
  _CopyWithImpl$Mutation$updatePerson$deletePersonsTags(
    this._instance,
    this._then,
  );

  final Mutation$updatePerson$deletePersonsTags _instance;

  final TRes Function(Mutation$updatePerson$deletePersonsTags) _then;

  static const _undefined = {};

  TRes call({
    Object? affected_rows = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$updatePerson$deletePersonsTags(
        affected_rows: affected_rows == _undefined || affected_rows == null
            ? _instance.affected_rows
            : (affected_rows as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$updatePerson$deletePersonsTags<TRes>
    implements CopyWith$Mutation$updatePerson$deletePersonsTags<TRes> {
  _CopyWithStubImpl$Mutation$updatePerson$deletePersonsTags(this._res);

  TRes _res;

  call({
    int? affected_rows,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$updatePerson$deletePersonsHobbies {
  Mutation$updatePerson$deletePersonsHobbies({
    required this.affected_rows,
    required this.$__typename,
  });

  factory Mutation$updatePerson$deletePersonsHobbies.fromJson(
      Map<String, dynamic> json) {
    final l$affected_rows = json['affected_rows'];
    final l$$__typename = json['__typename'];
    return Mutation$updatePerson$deletePersonsHobbies(
      affected_rows: (l$affected_rows as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int affected_rows;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$affected_rows = affected_rows;
    _resultData['affected_rows'] = l$affected_rows;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$affected_rows = affected_rows;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$affected_rows,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$updatePerson$deletePersonsHobbies) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$affected_rows = affected_rows;
    final lOther$affected_rows = other.affected_rows;
    if (l$affected_rows != lOther$affected_rows) {
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

extension UtilityExtension$Mutation$updatePerson$deletePersonsHobbies
    on Mutation$updatePerson$deletePersonsHobbies {
  CopyWith$Mutation$updatePerson$deletePersonsHobbies<
          Mutation$updatePerson$deletePersonsHobbies>
      get copyWith => CopyWith$Mutation$updatePerson$deletePersonsHobbies(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$updatePerson$deletePersonsHobbies<TRes> {
  factory CopyWith$Mutation$updatePerson$deletePersonsHobbies(
    Mutation$updatePerson$deletePersonsHobbies instance,
    TRes Function(Mutation$updatePerson$deletePersonsHobbies) then,
  ) = _CopyWithImpl$Mutation$updatePerson$deletePersonsHobbies;

  factory CopyWith$Mutation$updatePerson$deletePersonsHobbies.stub(TRes res) =
      _CopyWithStubImpl$Mutation$updatePerson$deletePersonsHobbies;

  TRes call({
    int? affected_rows,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$updatePerson$deletePersonsHobbies<TRes>
    implements CopyWith$Mutation$updatePerson$deletePersonsHobbies<TRes> {
  _CopyWithImpl$Mutation$updatePerson$deletePersonsHobbies(
    this._instance,
    this._then,
  );

  final Mutation$updatePerson$deletePersonsHobbies _instance;

  final TRes Function(Mutation$updatePerson$deletePersonsHobbies) _then;

  static const _undefined = {};

  TRes call({
    Object? affected_rows = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$updatePerson$deletePersonsHobbies(
        affected_rows: affected_rows == _undefined || affected_rows == null
            ? _instance.affected_rows
            : (affected_rows as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$updatePerson$deletePersonsHobbies<TRes>
    implements CopyWith$Mutation$updatePerson$deletePersonsHobbies<TRes> {
  _CopyWithStubImpl$Mutation$updatePerson$deletePersonsHobbies(this._res);

  TRes _res;

  call({
    int? affected_rows,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$updatePerson$deletePersonsGroups {
  Mutation$updatePerson$deletePersonsGroups({
    required this.affected_rows,
    required this.$__typename,
  });

  factory Mutation$updatePerson$deletePersonsGroups.fromJson(
      Map<String, dynamic> json) {
    final l$affected_rows = json['affected_rows'];
    final l$$__typename = json['__typename'];
    return Mutation$updatePerson$deletePersonsGroups(
      affected_rows: (l$affected_rows as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int affected_rows;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$affected_rows = affected_rows;
    _resultData['affected_rows'] = l$affected_rows;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$affected_rows = affected_rows;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$affected_rows,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$updatePerson$deletePersonsGroups) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$affected_rows = affected_rows;
    final lOther$affected_rows = other.affected_rows;
    if (l$affected_rows != lOther$affected_rows) {
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

extension UtilityExtension$Mutation$updatePerson$deletePersonsGroups
    on Mutation$updatePerson$deletePersonsGroups {
  CopyWith$Mutation$updatePerson$deletePersonsGroups<
          Mutation$updatePerson$deletePersonsGroups>
      get copyWith => CopyWith$Mutation$updatePerson$deletePersonsGroups(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$updatePerson$deletePersonsGroups<TRes> {
  factory CopyWith$Mutation$updatePerson$deletePersonsGroups(
    Mutation$updatePerson$deletePersonsGroups instance,
    TRes Function(Mutation$updatePerson$deletePersonsGroups) then,
  ) = _CopyWithImpl$Mutation$updatePerson$deletePersonsGroups;

  factory CopyWith$Mutation$updatePerson$deletePersonsGroups.stub(TRes res) =
      _CopyWithStubImpl$Mutation$updatePerson$deletePersonsGroups;

  TRes call({
    int? affected_rows,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$updatePerson$deletePersonsGroups<TRes>
    implements CopyWith$Mutation$updatePerson$deletePersonsGroups<TRes> {
  _CopyWithImpl$Mutation$updatePerson$deletePersonsGroups(
    this._instance,
    this._then,
  );

  final Mutation$updatePerson$deletePersonsGroups _instance;

  final TRes Function(Mutation$updatePerson$deletePersonsGroups) _then;

  static const _undefined = {};

  TRes call({
    Object? affected_rows = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$updatePerson$deletePersonsGroups(
        affected_rows: affected_rows == _undefined || affected_rows == null
            ? _instance.affected_rows
            : (affected_rows as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$updatePerson$deletePersonsGroups<TRes>
    implements CopyWith$Mutation$updatePerson$deletePersonsGroups<TRes> {
  _CopyWithStubImpl$Mutation$updatePerson$deletePersonsGroups(this._res);

  TRes _res;

  call({
    int? affected_rows,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$updatePerson$deletePersonsServices {
  Mutation$updatePerson$deletePersonsServices({
    required this.affected_rows,
    required this.$__typename,
  });

  factory Mutation$updatePerson$deletePersonsServices.fromJson(
      Map<String, dynamic> json) {
    final l$affected_rows = json['affected_rows'];
    final l$$__typename = json['__typename'];
    return Mutation$updatePerson$deletePersonsServices(
      affected_rows: (l$affected_rows as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int affected_rows;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$affected_rows = affected_rows;
    _resultData['affected_rows'] = l$affected_rows;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$affected_rows = affected_rows;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$affected_rows,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$updatePerson$deletePersonsServices) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$affected_rows = affected_rows;
    final lOther$affected_rows = other.affected_rows;
    if (l$affected_rows != lOther$affected_rows) {
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

extension UtilityExtension$Mutation$updatePerson$deletePersonsServices
    on Mutation$updatePerson$deletePersonsServices {
  CopyWith$Mutation$updatePerson$deletePersonsServices<
          Mutation$updatePerson$deletePersonsServices>
      get copyWith => CopyWith$Mutation$updatePerson$deletePersonsServices(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$updatePerson$deletePersonsServices<TRes> {
  factory CopyWith$Mutation$updatePerson$deletePersonsServices(
    Mutation$updatePerson$deletePersonsServices instance,
    TRes Function(Mutation$updatePerson$deletePersonsServices) then,
  ) = _CopyWithImpl$Mutation$updatePerson$deletePersonsServices;

  factory CopyWith$Mutation$updatePerson$deletePersonsServices.stub(TRes res) =
      _CopyWithStubImpl$Mutation$updatePerson$deletePersonsServices;

  TRes call({
    int? affected_rows,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$updatePerson$deletePersonsServices<TRes>
    implements CopyWith$Mutation$updatePerson$deletePersonsServices<TRes> {
  _CopyWithImpl$Mutation$updatePerson$deletePersonsServices(
    this._instance,
    this._then,
  );

  final Mutation$updatePerson$deletePersonsServices _instance;

  final TRes Function(Mutation$updatePerson$deletePersonsServices) _then;

  static const _undefined = {};

  TRes call({
    Object? affected_rows = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$updatePerson$deletePersonsServices(
        affected_rows: affected_rows == _undefined || affected_rows == null
            ? _instance.affected_rows
            : (affected_rows as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$updatePerson$deletePersonsServices<TRes>
    implements CopyWith$Mutation$updatePerson$deletePersonsServices<TRes> {
  _CopyWithStubImpl$Mutation$updatePerson$deletePersonsServices(this._res);

  TRes _res;

  call({
    int? affected_rows,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$updatePerson$insertHistoryConfessionHistoryOne {
  Mutation$updatePerson$insertHistoryConfessionHistoryOne({
    required this.person,
    required this.$__typename,
  });

  factory Mutation$updatePerson$insertHistoryConfessionHistoryOne.fromJson(
      Map<String, dynamic> json) {
    final l$person = json['person'];
    final l$$__typename = json['__typename'];
    return Mutation$updatePerson$insertHistoryConfessionHistoryOne(
      person: Mutation$updatePerson$insertHistoryConfessionHistoryOne$person
          .fromJson((l$person as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$updatePerson$insertHistoryConfessionHistoryOne$person person;

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
    if (!(other is Mutation$updatePerson$insertHistoryConfessionHistoryOne) ||
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

extension UtilityExtension$Mutation$updatePerson$insertHistoryConfessionHistoryOne
    on Mutation$updatePerson$insertHistoryConfessionHistoryOne {
  CopyWith$Mutation$updatePerson$insertHistoryConfessionHistoryOne<
          Mutation$updatePerson$insertHistoryConfessionHistoryOne>
      get copyWith =>
          CopyWith$Mutation$updatePerson$insertHistoryConfessionHistoryOne(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$updatePerson$insertHistoryConfessionHistoryOne<
    TRes> {
  factory CopyWith$Mutation$updatePerson$insertHistoryConfessionHistoryOne(
    Mutation$updatePerson$insertHistoryConfessionHistoryOne instance,
    TRes Function(Mutation$updatePerson$insertHistoryConfessionHistoryOne) then,
  ) = _CopyWithImpl$Mutation$updatePerson$insertHistoryConfessionHistoryOne;

  factory CopyWith$Mutation$updatePerson$insertHistoryConfessionHistoryOne.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$updatePerson$insertHistoryConfessionHistoryOne;

  TRes call({
    Mutation$updatePerson$insertHistoryConfessionHistoryOne$person? person,
    String? $__typename,
  });
  CopyWith$Mutation$updatePerson$insertHistoryConfessionHistoryOne$person<TRes>
      get person;
}

class _CopyWithImpl$Mutation$updatePerson$insertHistoryConfessionHistoryOne<
        TRes>
    implements
        CopyWith$Mutation$updatePerson$insertHistoryConfessionHistoryOne<TRes> {
  _CopyWithImpl$Mutation$updatePerson$insertHistoryConfessionHistoryOne(
    this._instance,
    this._then,
  );

  final Mutation$updatePerson$insertHistoryConfessionHistoryOne _instance;

  final TRes Function(Mutation$updatePerson$insertHistoryConfessionHistoryOne)
      _then;

  static const _undefined = {};

  TRes call({
    Object? person = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$updatePerson$insertHistoryConfessionHistoryOne(
        person: person == _undefined || person == null
            ? _instance.person
            : (person
                as Mutation$updatePerson$insertHistoryConfessionHistoryOne$person),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$updatePerson$insertHistoryConfessionHistoryOne$person<TRes>
      get person {
    final local$person = _instance.person;
    return CopyWith$Mutation$updatePerson$insertHistoryConfessionHistoryOne$person(
        local$person, (e) => call(person: e));
  }
}

class _CopyWithStubImpl$Mutation$updatePerson$insertHistoryConfessionHistoryOne<
        TRes>
    implements
        CopyWith$Mutation$updatePerson$insertHistoryConfessionHistoryOne<TRes> {
  _CopyWithStubImpl$Mutation$updatePerson$insertHistoryConfessionHistoryOne(
      this._res);

  TRes _res;

  call({
    Mutation$updatePerson$insertHistoryConfessionHistoryOne$person? person,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$updatePerson$insertHistoryConfessionHistoryOne$person<TRes>
      get person =>
          CopyWith$Mutation$updatePerson$insertHistoryConfessionHistoryOne$person
              .stub(_res);
}

class Mutation$updatePerson$insertHistoryConfessionHistoryOne$person {
  Mutation$updatePerson$insertHistoryConfessionHistoryOne$person({
    required this.id,
    required this.name,
    required this.$__typename,
  });

  factory Mutation$updatePerson$insertHistoryConfessionHistoryOne$person.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Mutation$updatePerson$insertHistoryConfessionHistoryOne$person(
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
    if (!(other
            is Mutation$updatePerson$insertHistoryConfessionHistoryOne$person) ||
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

extension UtilityExtension$Mutation$updatePerson$insertHistoryConfessionHistoryOne$person
    on Mutation$updatePerson$insertHistoryConfessionHistoryOne$person {
  CopyWith$Mutation$updatePerson$insertHistoryConfessionHistoryOne$person<
          Mutation$updatePerson$insertHistoryConfessionHistoryOne$person>
      get copyWith =>
          CopyWith$Mutation$updatePerson$insertHistoryConfessionHistoryOne$person(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$updatePerson$insertHistoryConfessionHistoryOne$person<
    TRes> {
  factory CopyWith$Mutation$updatePerson$insertHistoryConfessionHistoryOne$person(
    Mutation$updatePerson$insertHistoryConfessionHistoryOne$person instance,
    TRes Function(
            Mutation$updatePerson$insertHistoryConfessionHistoryOne$person)
        then,
  ) = _CopyWithImpl$Mutation$updatePerson$insertHistoryConfessionHistoryOne$person;

  factory CopyWith$Mutation$updatePerson$insertHistoryConfessionHistoryOne$person.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$updatePerson$insertHistoryConfessionHistoryOne$person;

  TRes call({
    UuidValue? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$updatePerson$insertHistoryConfessionHistoryOne$person<
        TRes>
    implements
        CopyWith$Mutation$updatePerson$insertHistoryConfessionHistoryOne$person<
            TRes> {
  _CopyWithImpl$Mutation$updatePerson$insertHistoryConfessionHistoryOne$person(
    this._instance,
    this._then,
  );

  final Mutation$updatePerson$insertHistoryConfessionHistoryOne$person
      _instance;

  final TRes Function(
      Mutation$updatePerson$insertHistoryConfessionHistoryOne$person) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$updatePerson$insertHistoryConfessionHistoryOne$person(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$updatePerson$insertHistoryConfessionHistoryOne$person<
        TRes>
    implements
        CopyWith$Mutation$updatePerson$insertHistoryConfessionHistoryOne$person<
            TRes> {
  _CopyWithStubImpl$Mutation$updatePerson$insertHistoryConfessionHistoryOne$person(
      this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$updatePerson$insertHistoryKodasHistoryOne {
  Mutation$updatePerson$insertHistoryKodasHistoryOne({
    required this.person,
    required this.$__typename,
  });

  factory Mutation$updatePerson$insertHistoryKodasHistoryOne.fromJson(
      Map<String, dynamic> json) {
    final l$person = json['person'];
    final l$$__typename = json['__typename'];
    return Mutation$updatePerson$insertHistoryKodasHistoryOne(
      person:
          Mutation$updatePerson$insertHistoryKodasHistoryOne$person.fromJson(
              (l$person as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$updatePerson$insertHistoryKodasHistoryOne$person person;

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
    if (!(other is Mutation$updatePerson$insertHistoryKodasHistoryOne) ||
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

extension UtilityExtension$Mutation$updatePerson$insertHistoryKodasHistoryOne
    on Mutation$updatePerson$insertHistoryKodasHistoryOne {
  CopyWith$Mutation$updatePerson$insertHistoryKodasHistoryOne<
          Mutation$updatePerson$insertHistoryKodasHistoryOne>
      get copyWith =>
          CopyWith$Mutation$updatePerson$insertHistoryKodasHistoryOne(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$updatePerson$insertHistoryKodasHistoryOne<
    TRes> {
  factory CopyWith$Mutation$updatePerson$insertHistoryKodasHistoryOne(
    Mutation$updatePerson$insertHistoryKodasHistoryOne instance,
    TRes Function(Mutation$updatePerson$insertHistoryKodasHistoryOne) then,
  ) = _CopyWithImpl$Mutation$updatePerson$insertHistoryKodasHistoryOne;

  factory CopyWith$Mutation$updatePerson$insertHistoryKodasHistoryOne.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$updatePerson$insertHistoryKodasHistoryOne;

  TRes call({
    Mutation$updatePerson$insertHistoryKodasHistoryOne$person? person,
    String? $__typename,
  });
  CopyWith$Mutation$updatePerson$insertHistoryKodasHistoryOne$person<TRes>
      get person;
}

class _CopyWithImpl$Mutation$updatePerson$insertHistoryKodasHistoryOne<TRes>
    implements
        CopyWith$Mutation$updatePerson$insertHistoryKodasHistoryOne<TRes> {
  _CopyWithImpl$Mutation$updatePerson$insertHistoryKodasHistoryOne(
    this._instance,
    this._then,
  );

  final Mutation$updatePerson$insertHistoryKodasHistoryOne _instance;

  final TRes Function(Mutation$updatePerson$insertHistoryKodasHistoryOne) _then;

  static const _undefined = {};

  TRes call({
    Object? person = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$updatePerson$insertHistoryKodasHistoryOne(
        person: person == _undefined || person == null
            ? _instance.person
            : (person
                as Mutation$updatePerson$insertHistoryKodasHistoryOne$person),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$updatePerson$insertHistoryKodasHistoryOne$person<TRes>
      get person {
    final local$person = _instance.person;
    return CopyWith$Mutation$updatePerson$insertHistoryKodasHistoryOne$person(
        local$person, (e) => call(person: e));
  }
}

class _CopyWithStubImpl$Mutation$updatePerson$insertHistoryKodasHistoryOne<TRes>
    implements
        CopyWith$Mutation$updatePerson$insertHistoryKodasHistoryOne<TRes> {
  _CopyWithStubImpl$Mutation$updatePerson$insertHistoryKodasHistoryOne(
      this._res);

  TRes _res;

  call({
    Mutation$updatePerson$insertHistoryKodasHistoryOne$person? person,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$updatePerson$insertHistoryKodasHistoryOne$person<TRes>
      get person =>
          CopyWith$Mutation$updatePerson$insertHistoryKodasHistoryOne$person
              .stub(_res);
}

class Mutation$updatePerson$insertHistoryKodasHistoryOne$person {
  Mutation$updatePerson$insertHistoryKodasHistoryOne$person({
    required this.id,
    required this.name,
    required this.$__typename,
  });

  factory Mutation$updatePerson$insertHistoryKodasHistoryOne$person.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Mutation$updatePerson$insertHistoryKodasHistoryOne$person(
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
    if (!(other is Mutation$updatePerson$insertHistoryKodasHistoryOne$person) ||
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

extension UtilityExtension$Mutation$updatePerson$insertHistoryKodasHistoryOne$person
    on Mutation$updatePerson$insertHistoryKodasHistoryOne$person {
  CopyWith$Mutation$updatePerson$insertHistoryKodasHistoryOne$person<
          Mutation$updatePerson$insertHistoryKodasHistoryOne$person>
      get copyWith =>
          CopyWith$Mutation$updatePerson$insertHistoryKodasHistoryOne$person(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$updatePerson$insertHistoryKodasHistoryOne$person<
    TRes> {
  factory CopyWith$Mutation$updatePerson$insertHistoryKodasHistoryOne$person(
    Mutation$updatePerson$insertHistoryKodasHistoryOne$person instance,
    TRes Function(Mutation$updatePerson$insertHistoryKodasHistoryOne$person)
        then,
  ) = _CopyWithImpl$Mutation$updatePerson$insertHistoryKodasHistoryOne$person;

  factory CopyWith$Mutation$updatePerson$insertHistoryKodasHistoryOne$person.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$updatePerson$insertHistoryKodasHistoryOne$person;

  TRes call({
    UuidValue? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$updatePerson$insertHistoryKodasHistoryOne$person<
        TRes>
    implements
        CopyWith$Mutation$updatePerson$insertHistoryKodasHistoryOne$person<
            TRes> {
  _CopyWithImpl$Mutation$updatePerson$insertHistoryKodasHistoryOne$person(
    this._instance,
    this._then,
  );

  final Mutation$updatePerson$insertHistoryKodasHistoryOne$person _instance;

  final TRes Function(Mutation$updatePerson$insertHistoryKodasHistoryOne$person)
      _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$updatePerson$insertHistoryKodasHistoryOne$person(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$updatePerson$insertHistoryKodasHistoryOne$person<
        TRes>
    implements
        CopyWith$Mutation$updatePerson$insertHistoryKodasHistoryOne$person<
            TRes> {
  _CopyWithStubImpl$Mutation$updatePerson$insertHistoryKodasHistoryOne$person(
      this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$updatePerson$insertHistoryCallHistoryOne {
  Mutation$updatePerson$insertHistoryCallHistoryOne({
    required this.person,
    required this.$__typename,
  });

  factory Mutation$updatePerson$insertHistoryCallHistoryOne.fromJson(
      Map<String, dynamic> json) {
    final l$person = json['person'];
    final l$$__typename = json['__typename'];
    return Mutation$updatePerson$insertHistoryCallHistoryOne(
      person: Mutation$updatePerson$insertHistoryCallHistoryOne$person.fromJson(
          (l$person as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$updatePerson$insertHistoryCallHistoryOne$person person;

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
    if (!(other is Mutation$updatePerson$insertHistoryCallHistoryOne) ||
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

extension UtilityExtension$Mutation$updatePerson$insertHistoryCallHistoryOne
    on Mutation$updatePerson$insertHistoryCallHistoryOne {
  CopyWith$Mutation$updatePerson$insertHistoryCallHistoryOne<
          Mutation$updatePerson$insertHistoryCallHistoryOne>
      get copyWith =>
          CopyWith$Mutation$updatePerson$insertHistoryCallHistoryOne(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$updatePerson$insertHistoryCallHistoryOne<
    TRes> {
  factory CopyWith$Mutation$updatePerson$insertHistoryCallHistoryOne(
    Mutation$updatePerson$insertHistoryCallHistoryOne instance,
    TRes Function(Mutation$updatePerson$insertHistoryCallHistoryOne) then,
  ) = _CopyWithImpl$Mutation$updatePerson$insertHistoryCallHistoryOne;

  factory CopyWith$Mutation$updatePerson$insertHistoryCallHistoryOne.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$updatePerson$insertHistoryCallHistoryOne;

  TRes call({
    Mutation$updatePerson$insertHistoryCallHistoryOne$person? person,
    String? $__typename,
  });
  CopyWith$Mutation$updatePerson$insertHistoryCallHistoryOne$person<TRes>
      get person;
}

class _CopyWithImpl$Mutation$updatePerson$insertHistoryCallHistoryOne<TRes>
    implements
        CopyWith$Mutation$updatePerson$insertHistoryCallHistoryOne<TRes> {
  _CopyWithImpl$Mutation$updatePerson$insertHistoryCallHistoryOne(
    this._instance,
    this._then,
  );

  final Mutation$updatePerson$insertHistoryCallHistoryOne _instance;

  final TRes Function(Mutation$updatePerson$insertHistoryCallHistoryOne) _then;

  static const _undefined = {};

  TRes call({
    Object? person = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$updatePerson$insertHistoryCallHistoryOne(
        person: person == _undefined || person == null
            ? _instance.person
            : (person
                as Mutation$updatePerson$insertHistoryCallHistoryOne$person),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$updatePerson$insertHistoryCallHistoryOne$person<TRes>
      get person {
    final local$person = _instance.person;
    return CopyWith$Mutation$updatePerson$insertHistoryCallHistoryOne$person(
        local$person, (e) => call(person: e));
  }
}

class _CopyWithStubImpl$Mutation$updatePerson$insertHistoryCallHistoryOne<TRes>
    implements
        CopyWith$Mutation$updatePerson$insertHistoryCallHistoryOne<TRes> {
  _CopyWithStubImpl$Mutation$updatePerson$insertHistoryCallHistoryOne(
      this._res);

  TRes _res;

  call({
    Mutation$updatePerson$insertHistoryCallHistoryOne$person? person,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$updatePerson$insertHistoryCallHistoryOne$person<TRes>
      get person =>
          CopyWith$Mutation$updatePerson$insertHistoryCallHistoryOne$person
              .stub(_res);
}

class Mutation$updatePerson$insertHistoryCallHistoryOne$person {
  Mutation$updatePerson$insertHistoryCallHistoryOne$person({
    required this.id,
    required this.name,
    required this.$__typename,
  });

  factory Mutation$updatePerson$insertHistoryCallHistoryOne$person.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Mutation$updatePerson$insertHistoryCallHistoryOne$person(
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
    if (!(other is Mutation$updatePerson$insertHistoryCallHistoryOne$person) ||
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

extension UtilityExtension$Mutation$updatePerson$insertHistoryCallHistoryOne$person
    on Mutation$updatePerson$insertHistoryCallHistoryOne$person {
  CopyWith$Mutation$updatePerson$insertHistoryCallHistoryOne$person<
          Mutation$updatePerson$insertHistoryCallHistoryOne$person>
      get copyWith =>
          CopyWith$Mutation$updatePerson$insertHistoryCallHistoryOne$person(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$updatePerson$insertHistoryCallHistoryOne$person<
    TRes> {
  factory CopyWith$Mutation$updatePerson$insertHistoryCallHistoryOne$person(
    Mutation$updatePerson$insertHistoryCallHistoryOne$person instance,
    TRes Function(Mutation$updatePerson$insertHistoryCallHistoryOne$person)
        then,
  ) = _CopyWithImpl$Mutation$updatePerson$insertHistoryCallHistoryOne$person;

  factory CopyWith$Mutation$updatePerson$insertHistoryCallHistoryOne$person.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$updatePerson$insertHistoryCallHistoryOne$person;

  TRes call({
    UuidValue? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$updatePerson$insertHistoryCallHistoryOne$person<
        TRes>
    implements
        CopyWith$Mutation$updatePerson$insertHistoryCallHistoryOne$person<
            TRes> {
  _CopyWithImpl$Mutation$updatePerson$insertHistoryCallHistoryOne$person(
    this._instance,
    this._then,
  );

  final Mutation$updatePerson$insertHistoryCallHistoryOne$person _instance;

  final TRes Function(Mutation$updatePerson$insertHistoryCallHistoryOne$person)
      _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$updatePerson$insertHistoryCallHistoryOne$person(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$updatePerson$insertHistoryCallHistoryOne$person<
        TRes>
    implements
        CopyWith$Mutation$updatePerson$insertHistoryCallHistoryOne$person<
            TRes> {
  _CopyWithStubImpl$Mutation$updatePerson$insertHistoryCallHistoryOne$person(
      this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$updatePerson$insertHistoryVisitHistoryOne {
  Mutation$updatePerson$insertHistoryVisitHistoryOne({
    required this.person,
    required this.$__typename,
  });

  factory Mutation$updatePerson$insertHistoryVisitHistoryOne.fromJson(
      Map<String, dynamic> json) {
    final l$person = json['person'];
    final l$$__typename = json['__typename'];
    return Mutation$updatePerson$insertHistoryVisitHistoryOne(
      person:
          Mutation$updatePerson$insertHistoryVisitHistoryOne$person.fromJson(
              (l$person as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$updatePerson$insertHistoryVisitHistoryOne$person person;

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
    if (!(other is Mutation$updatePerson$insertHistoryVisitHistoryOne) ||
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

extension UtilityExtension$Mutation$updatePerson$insertHistoryVisitHistoryOne
    on Mutation$updatePerson$insertHistoryVisitHistoryOne {
  CopyWith$Mutation$updatePerson$insertHistoryVisitHistoryOne<
          Mutation$updatePerson$insertHistoryVisitHistoryOne>
      get copyWith =>
          CopyWith$Mutation$updatePerson$insertHistoryVisitHistoryOne(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$updatePerson$insertHistoryVisitHistoryOne<
    TRes> {
  factory CopyWith$Mutation$updatePerson$insertHistoryVisitHistoryOne(
    Mutation$updatePerson$insertHistoryVisitHistoryOne instance,
    TRes Function(Mutation$updatePerson$insertHistoryVisitHistoryOne) then,
  ) = _CopyWithImpl$Mutation$updatePerson$insertHistoryVisitHistoryOne;

  factory CopyWith$Mutation$updatePerson$insertHistoryVisitHistoryOne.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$updatePerson$insertHistoryVisitHistoryOne;

  TRes call({
    Mutation$updatePerson$insertHistoryVisitHistoryOne$person? person,
    String? $__typename,
  });
  CopyWith$Mutation$updatePerson$insertHistoryVisitHistoryOne$person<TRes>
      get person;
}

class _CopyWithImpl$Mutation$updatePerson$insertHistoryVisitHistoryOne<TRes>
    implements
        CopyWith$Mutation$updatePerson$insertHistoryVisitHistoryOne<TRes> {
  _CopyWithImpl$Mutation$updatePerson$insertHistoryVisitHistoryOne(
    this._instance,
    this._then,
  );

  final Mutation$updatePerson$insertHistoryVisitHistoryOne _instance;

  final TRes Function(Mutation$updatePerson$insertHistoryVisitHistoryOne) _then;

  static const _undefined = {};

  TRes call({
    Object? person = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$updatePerson$insertHistoryVisitHistoryOne(
        person: person == _undefined || person == null
            ? _instance.person
            : (person
                as Mutation$updatePerson$insertHistoryVisitHistoryOne$person),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$updatePerson$insertHistoryVisitHistoryOne$person<TRes>
      get person {
    final local$person = _instance.person;
    return CopyWith$Mutation$updatePerson$insertHistoryVisitHistoryOne$person(
        local$person, (e) => call(person: e));
  }
}

class _CopyWithStubImpl$Mutation$updatePerson$insertHistoryVisitHistoryOne<TRes>
    implements
        CopyWith$Mutation$updatePerson$insertHistoryVisitHistoryOne<TRes> {
  _CopyWithStubImpl$Mutation$updatePerson$insertHistoryVisitHistoryOne(
      this._res);

  TRes _res;

  call({
    Mutation$updatePerson$insertHistoryVisitHistoryOne$person? person,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$updatePerson$insertHistoryVisitHistoryOne$person<TRes>
      get person =>
          CopyWith$Mutation$updatePerson$insertHistoryVisitHistoryOne$person
              .stub(_res);
}

class Mutation$updatePerson$insertHistoryVisitHistoryOne$person {
  Mutation$updatePerson$insertHistoryVisitHistoryOne$person({
    required this.id,
    required this.name,
    required this.$__typename,
  });

  factory Mutation$updatePerson$insertHistoryVisitHistoryOne$person.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Mutation$updatePerson$insertHistoryVisitHistoryOne$person(
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
    if (!(other is Mutation$updatePerson$insertHistoryVisitHistoryOne$person) ||
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

extension UtilityExtension$Mutation$updatePerson$insertHistoryVisitHistoryOne$person
    on Mutation$updatePerson$insertHistoryVisitHistoryOne$person {
  CopyWith$Mutation$updatePerson$insertHistoryVisitHistoryOne$person<
          Mutation$updatePerson$insertHistoryVisitHistoryOne$person>
      get copyWith =>
          CopyWith$Mutation$updatePerson$insertHistoryVisitHistoryOne$person(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$updatePerson$insertHistoryVisitHistoryOne$person<
    TRes> {
  factory CopyWith$Mutation$updatePerson$insertHistoryVisitHistoryOne$person(
    Mutation$updatePerson$insertHistoryVisitHistoryOne$person instance,
    TRes Function(Mutation$updatePerson$insertHistoryVisitHistoryOne$person)
        then,
  ) = _CopyWithImpl$Mutation$updatePerson$insertHistoryVisitHistoryOne$person;

  factory CopyWith$Mutation$updatePerson$insertHistoryVisitHistoryOne$person.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$updatePerson$insertHistoryVisitHistoryOne$person;

  TRes call({
    UuidValue? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$updatePerson$insertHistoryVisitHistoryOne$person<
        TRes>
    implements
        CopyWith$Mutation$updatePerson$insertHistoryVisitHistoryOne$person<
            TRes> {
  _CopyWithImpl$Mutation$updatePerson$insertHistoryVisitHistoryOne$person(
    this._instance,
    this._then,
  );

  final Mutation$updatePerson$insertHistoryVisitHistoryOne$person _instance;

  final TRes Function(Mutation$updatePerson$insertHistoryVisitHistoryOne$person)
      _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$updatePerson$insertHistoryVisitHistoryOne$person(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$updatePerson$insertHistoryVisitHistoryOne$person<
        TRes>
    implements
        CopyWith$Mutation$updatePerson$insertHistoryVisitHistoryOne$person<
            TRes> {
  _CopyWithStubImpl$Mutation$updatePerson$insertHistoryVisitHistoryOne$person(
      this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$insertPerson {
  factory Variables$Mutation$insertPerson(
          {required Input$PersonsInsertInput newPerson}) =>
      Variables$Mutation$insertPerson._({
        r'newPerson': newPerson,
      });

  Variables$Mutation$insertPerson._(this._$data);

  factory Variables$Mutation$insertPerson.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$newPerson = data['newPerson'];
    result$data['newPerson'] = Input$PersonsInsertInput.fromJson(
        (l$newPerson as Map<String, dynamic>));
    return Variables$Mutation$insertPerson._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$PersonsInsertInput get newPerson =>
      (_$data['newPerson'] as Input$PersonsInsertInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$newPerson = newPerson;
    result$data['newPerson'] = l$newPerson.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$insertPerson<Variables$Mutation$insertPerson>
      get copyWith => CopyWith$Variables$Mutation$insertPerson(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$insertPerson) ||
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

abstract class CopyWith$Variables$Mutation$insertPerson<TRes> {
  factory CopyWith$Variables$Mutation$insertPerson(
    Variables$Mutation$insertPerson instance,
    TRes Function(Variables$Mutation$insertPerson) then,
  ) = _CopyWithImpl$Variables$Mutation$insertPerson;

  factory CopyWith$Variables$Mutation$insertPerson.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$insertPerson;

  TRes call({Input$PersonsInsertInput? newPerson});
}

class _CopyWithImpl$Variables$Mutation$insertPerson<TRes>
    implements CopyWith$Variables$Mutation$insertPerson<TRes> {
  _CopyWithImpl$Variables$Mutation$insertPerson(
    this._instance,
    this._then,
  );

  final Variables$Mutation$insertPerson _instance;

  final TRes Function(Variables$Mutation$insertPerson) _then;

  static const _undefined = {};

  TRes call({Object? newPerson = _undefined}) =>
      _then(Variables$Mutation$insertPerson._({
        ..._instance._$data,
        if (newPerson != _undefined && newPerson != null)
          'newPerson': (newPerson as Input$PersonsInsertInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$insertPerson<TRes>
    implements CopyWith$Variables$Mutation$insertPerson<TRes> {
  _CopyWithStubImpl$Variables$Mutation$insertPerson(this._res);

  TRes _res;

  call({Input$PersonsInsertInput? newPerson}) => _res;
}

class Mutation$insertPerson {
  Mutation$insertPerson({
    this.insertPersonsOne,
    required this.$__typename,
  });

  factory Mutation$insertPerson.fromJson(Map<String, dynamic> json) {
    final l$insertPersonsOne = json['insertPersonsOne'];
    final l$$__typename = json['__typename'];
    return Mutation$insertPerson(
      insertPersonsOne: l$insertPersonsOne == null
          ? null
          : Fragment$Person.fromJson(
              (l$insertPersonsOne as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$Person? insertPersonsOne;

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
    if (!(other is Mutation$insertPerson) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Mutation$insertPerson on Mutation$insertPerson {
  CopyWith$Mutation$insertPerson<Mutation$insertPerson> get copyWith =>
      CopyWith$Mutation$insertPerson(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$insertPerson<TRes> {
  factory CopyWith$Mutation$insertPerson(
    Mutation$insertPerson instance,
    TRes Function(Mutation$insertPerson) then,
  ) = _CopyWithImpl$Mutation$insertPerson;

  factory CopyWith$Mutation$insertPerson.stub(TRes res) =
      _CopyWithStubImpl$Mutation$insertPerson;

  TRes call({
    Fragment$Person? insertPersonsOne,
    String? $__typename,
  });
  CopyWith$Fragment$Person<TRes> get insertPersonsOne;
}

class _CopyWithImpl$Mutation$insertPerson<TRes>
    implements CopyWith$Mutation$insertPerson<TRes> {
  _CopyWithImpl$Mutation$insertPerson(
    this._instance,
    this._then,
  );

  final Mutation$insertPerson _instance;

  final TRes Function(Mutation$insertPerson) _then;

  static const _undefined = {};

  TRes call({
    Object? insertPersonsOne = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$insertPerson(
        insertPersonsOne: insertPersonsOne == _undefined
            ? _instance.insertPersonsOne
            : (insertPersonsOne as Fragment$Person?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$Person<TRes> get insertPersonsOne {
    final local$insertPersonsOne = _instance.insertPersonsOne;
    return local$insertPersonsOne == null
        ? CopyWith$Fragment$Person.stub(_then(_instance))
        : CopyWith$Fragment$Person(
            local$insertPersonsOne, (e) => call(insertPersonsOne: e));
  }
}

class _CopyWithStubImpl$Mutation$insertPerson<TRes>
    implements CopyWith$Mutation$insertPerson<TRes> {
  _CopyWithStubImpl$Mutation$insertPerson(this._res);

  TRes _res;

  call({
    Fragment$Person? insertPersonsOne,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$Person<TRes> get insertPersonsOne =>
      CopyWith$Fragment$Person.stub(_res);
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

class Variables$Mutation$updatePersonSpiritData {
  factory Variables$Mutation$updatePersonSpiritData({
    required UuidValue personId,
    required DateTime lastConfession,
    required DateTime lastKodas,
  }) =>
      Variables$Mutation$updatePersonSpiritData._({
        r'personId': personId,
        r'lastConfession': lastConfession,
        r'lastKodas': lastKodas,
      });

  Variables$Mutation$updatePersonSpiritData._(this._$data);

  factory Variables$Mutation$updatePersonSpiritData.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$personId = data['personId'];
    result$data['personId'] = stringToUuid(l$personId);
    final l$lastConfession = data['lastConfession'];
    result$data['lastConfession'] = dateFromString(l$lastConfession);
    final l$lastKodas = data['lastKodas'];
    result$data['lastKodas'] = dateFromString(l$lastKodas);
    return Variables$Mutation$updatePersonSpiritData._(result$data);
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

  CopyWith$Variables$Mutation$updatePersonSpiritData<
          Variables$Mutation$updatePersonSpiritData>
      get copyWith => CopyWith$Variables$Mutation$updatePersonSpiritData(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$updatePersonSpiritData) ||
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

abstract class CopyWith$Variables$Mutation$updatePersonSpiritData<TRes> {
  factory CopyWith$Variables$Mutation$updatePersonSpiritData(
    Variables$Mutation$updatePersonSpiritData instance,
    TRes Function(Variables$Mutation$updatePersonSpiritData) then,
  ) = _CopyWithImpl$Variables$Mutation$updatePersonSpiritData;

  factory CopyWith$Variables$Mutation$updatePersonSpiritData.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$updatePersonSpiritData;

  TRes call({
    UuidValue? personId,
    DateTime? lastConfession,
    DateTime? lastKodas,
  });
}

class _CopyWithImpl$Variables$Mutation$updatePersonSpiritData<TRes>
    implements CopyWith$Variables$Mutation$updatePersonSpiritData<TRes> {
  _CopyWithImpl$Variables$Mutation$updatePersonSpiritData(
    this._instance,
    this._then,
  );

  final Variables$Mutation$updatePersonSpiritData _instance;

  final TRes Function(Variables$Mutation$updatePersonSpiritData) _then;

  static const _undefined = {};

  TRes call({
    Object? personId = _undefined,
    Object? lastConfession = _undefined,
    Object? lastKodas = _undefined,
  }) =>
      _then(Variables$Mutation$updatePersonSpiritData._({
        ..._instance._$data,
        if (personId != _undefined && personId != null)
          'personId': (personId as UuidValue),
        if (lastConfession != _undefined && lastConfession != null)
          'lastConfession': (lastConfession as DateTime),
        if (lastKodas != _undefined && lastKodas != null)
          'lastKodas': (lastKodas as DateTime),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$updatePersonSpiritData<TRes>
    implements CopyWith$Variables$Mutation$updatePersonSpiritData<TRes> {
  _CopyWithStubImpl$Variables$Mutation$updatePersonSpiritData(this._res);

  TRes _res;

  call({
    UuidValue? personId,
    DateTime? lastConfession,
    DateTime? lastKodas,
  }) =>
      _res;
}

class Mutation$updatePersonSpiritData {
  Mutation$updatePersonSpiritData({
    this.insertHistoryConfessionHistoryOne,
    this.insertHistoryKodasHistoryOne,
    required this.$__typename,
  });

  factory Mutation$updatePersonSpiritData.fromJson(Map<String, dynamic> json) {
    final l$insertHistoryConfessionHistoryOne =
        json['insertHistoryConfessionHistoryOne'];
    final l$insertHistoryKodasHistoryOne = json['insertHistoryKodasHistoryOne'];
    final l$$__typename = json['__typename'];
    return Mutation$updatePersonSpiritData(
      insertHistoryConfessionHistoryOne: l$insertHistoryConfessionHistoryOne ==
              null
          ? null
          : Mutation$updatePersonSpiritData$insertHistoryConfessionHistoryOne
              .fromJson((l$insertHistoryConfessionHistoryOne
                  as Map<String, dynamic>)),
      insertHistoryKodasHistoryOne: l$insertHistoryKodasHistoryOne == null
          ? null
          : Mutation$updatePersonSpiritData$insertHistoryKodasHistoryOne
              .fromJson(
                  (l$insertHistoryKodasHistoryOne as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$updatePersonSpiritData$insertHistoryConfessionHistoryOne?
      insertHistoryConfessionHistoryOne;

  final Mutation$updatePersonSpiritData$insertHistoryKodasHistoryOne?
      insertHistoryKodasHistoryOne;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
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
    final l$insertHistoryConfessionHistoryOne =
        insertHistoryConfessionHistoryOne;
    final l$insertHistoryKodasHistoryOne = insertHistoryKodasHistoryOne;
    final l$$__typename = $__typename;
    return Object.hashAll([
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
    if (!(other is Mutation$updatePersonSpiritData) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Mutation$updatePersonSpiritData
    on Mutation$updatePersonSpiritData {
  CopyWith$Mutation$updatePersonSpiritData<Mutation$updatePersonSpiritData>
      get copyWith => CopyWith$Mutation$updatePersonSpiritData(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$updatePersonSpiritData<TRes> {
  factory CopyWith$Mutation$updatePersonSpiritData(
    Mutation$updatePersonSpiritData instance,
    TRes Function(Mutation$updatePersonSpiritData) then,
  ) = _CopyWithImpl$Mutation$updatePersonSpiritData;

  factory CopyWith$Mutation$updatePersonSpiritData.stub(TRes res) =
      _CopyWithStubImpl$Mutation$updatePersonSpiritData;

  TRes call({
    Mutation$updatePersonSpiritData$insertHistoryConfessionHistoryOne?
        insertHistoryConfessionHistoryOne,
    Mutation$updatePersonSpiritData$insertHistoryKodasHistoryOne?
        insertHistoryKodasHistoryOne,
    String? $__typename,
  });
  CopyWith$Mutation$updatePersonSpiritData$insertHistoryConfessionHistoryOne<
      TRes> get insertHistoryConfessionHistoryOne;
  CopyWith$Mutation$updatePersonSpiritData$insertHistoryKodasHistoryOne<TRes>
      get insertHistoryKodasHistoryOne;
}

class _CopyWithImpl$Mutation$updatePersonSpiritData<TRes>
    implements CopyWith$Mutation$updatePersonSpiritData<TRes> {
  _CopyWithImpl$Mutation$updatePersonSpiritData(
    this._instance,
    this._then,
  );

  final Mutation$updatePersonSpiritData _instance;

  final TRes Function(Mutation$updatePersonSpiritData) _then;

  static const _undefined = {};

  TRes call({
    Object? insertHistoryConfessionHistoryOne = _undefined,
    Object? insertHistoryKodasHistoryOne = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$updatePersonSpiritData(
        insertHistoryConfessionHistoryOne: insertHistoryConfessionHistoryOne ==
                _undefined
            ? _instance.insertHistoryConfessionHistoryOne
            : (insertHistoryConfessionHistoryOne
                as Mutation$updatePersonSpiritData$insertHistoryConfessionHistoryOne?),
        insertHistoryKodasHistoryOne: insertHistoryKodasHistoryOne == _undefined
            ? _instance.insertHistoryKodasHistoryOne
            : (insertHistoryKodasHistoryOne
                as Mutation$updatePersonSpiritData$insertHistoryKodasHistoryOne?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$updatePersonSpiritData$insertHistoryConfessionHistoryOne<
      TRes> get insertHistoryConfessionHistoryOne {
    final local$insertHistoryConfessionHistoryOne =
        _instance.insertHistoryConfessionHistoryOne;
    return local$insertHistoryConfessionHistoryOne == null
        ? CopyWith$Mutation$updatePersonSpiritData$insertHistoryConfessionHistoryOne
            .stub(_then(_instance))
        : CopyWith$Mutation$updatePersonSpiritData$insertHistoryConfessionHistoryOne(
            local$insertHistoryConfessionHistoryOne,
            (e) => call(insertHistoryConfessionHistoryOne: e));
  }

  CopyWith$Mutation$updatePersonSpiritData$insertHistoryKodasHistoryOne<TRes>
      get insertHistoryKodasHistoryOne {
    final local$insertHistoryKodasHistoryOne =
        _instance.insertHistoryKodasHistoryOne;
    return local$insertHistoryKodasHistoryOne == null
        ? CopyWith$Mutation$updatePersonSpiritData$insertHistoryKodasHistoryOne
            .stub(_then(_instance))
        : CopyWith$Mutation$updatePersonSpiritData$insertHistoryKodasHistoryOne(
            local$insertHistoryKodasHistoryOne,
            (e) => call(insertHistoryKodasHistoryOne: e));
  }
}

class _CopyWithStubImpl$Mutation$updatePersonSpiritData<TRes>
    implements CopyWith$Mutation$updatePersonSpiritData<TRes> {
  _CopyWithStubImpl$Mutation$updatePersonSpiritData(this._res);

  TRes _res;

  call({
    Mutation$updatePersonSpiritData$insertHistoryConfessionHistoryOne?
        insertHistoryConfessionHistoryOne,
    Mutation$updatePersonSpiritData$insertHistoryKodasHistoryOne?
        insertHistoryKodasHistoryOne,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$updatePersonSpiritData$insertHistoryConfessionHistoryOne<
          TRes>
      get insertHistoryConfessionHistoryOne =>
          CopyWith$Mutation$updatePersonSpiritData$insertHistoryConfessionHistoryOne
              .stub(_res);
  CopyWith$Mutation$updatePersonSpiritData$insertHistoryKodasHistoryOne<TRes>
      get insertHistoryKodasHistoryOne =>
          CopyWith$Mutation$updatePersonSpiritData$insertHistoryKodasHistoryOne
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
          name: NameNode(value: 'uuid'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'lastConfession')),
        type: NamedTypeNode(
          name: NameNode(value: 'date'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'lastKodas')),
        type: NamedTypeNode(
          name: NameNode(value: 'date'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
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
                            name: NameNode(value: 'attendance_days_pkey')),
                      ),
                      ObjectFieldNode(
                        name: NameNode(value: 'update_columns'),
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
                    name: NameNode(
                        value: 'confession_history_dayID_personID_key')),
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
                            name: NameNode(value: 'attendance_days_pkey')),
                      ),
                      ObjectFieldNode(
                        name: NameNode(value: 'update_columns'),
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
                    name: NameNode(value: 'kodas_history_dayID_personID_key')),
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

class Mutation$updatePersonSpiritData$insertHistoryConfessionHistoryOne {
  Mutation$updatePersonSpiritData$insertHistoryConfessionHistoryOne({
    required this.person,
    required this.$__typename,
  });

  factory Mutation$updatePersonSpiritData$insertHistoryConfessionHistoryOne.fromJson(
      Map<String, dynamic> json) {
    final l$person = json['person'];
    final l$$__typename = json['__typename'];
    return Mutation$updatePersonSpiritData$insertHistoryConfessionHistoryOne(
      person: Fragment$Person.fromJson((l$person as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$Person person;

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
    if (!(other
            is Mutation$updatePersonSpiritData$insertHistoryConfessionHistoryOne) ||
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

extension UtilityExtension$Mutation$updatePersonSpiritData$insertHistoryConfessionHistoryOne
    on Mutation$updatePersonSpiritData$insertHistoryConfessionHistoryOne {
  CopyWith$Mutation$updatePersonSpiritData$insertHistoryConfessionHistoryOne<
          Mutation$updatePersonSpiritData$insertHistoryConfessionHistoryOne>
      get copyWith =>
          CopyWith$Mutation$updatePersonSpiritData$insertHistoryConfessionHistoryOne(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$updatePersonSpiritData$insertHistoryConfessionHistoryOne<
    TRes> {
  factory CopyWith$Mutation$updatePersonSpiritData$insertHistoryConfessionHistoryOne(
    Mutation$updatePersonSpiritData$insertHistoryConfessionHistoryOne instance,
    TRes Function(
            Mutation$updatePersonSpiritData$insertHistoryConfessionHistoryOne)
        then,
  ) = _CopyWithImpl$Mutation$updatePersonSpiritData$insertHistoryConfessionHistoryOne;

  factory CopyWith$Mutation$updatePersonSpiritData$insertHistoryConfessionHistoryOne.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$updatePersonSpiritData$insertHistoryConfessionHistoryOne;

  TRes call({
    Fragment$Person? person,
    String? $__typename,
  });
  CopyWith$Fragment$Person<TRes> get person;
}

class _CopyWithImpl$Mutation$updatePersonSpiritData$insertHistoryConfessionHistoryOne<
        TRes>
    implements
        CopyWith$Mutation$updatePersonSpiritData$insertHistoryConfessionHistoryOne<
            TRes> {
  _CopyWithImpl$Mutation$updatePersonSpiritData$insertHistoryConfessionHistoryOne(
    this._instance,
    this._then,
  );

  final Mutation$updatePersonSpiritData$insertHistoryConfessionHistoryOne
      _instance;

  final TRes Function(
      Mutation$updatePersonSpiritData$insertHistoryConfessionHistoryOne) _then;

  static const _undefined = {};

  TRes call({
    Object? person = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$updatePersonSpiritData$insertHistoryConfessionHistoryOne(
        person: person == _undefined || person == null
            ? _instance.person
            : (person as Fragment$Person),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$Person<TRes> get person {
    final local$person = _instance.person;
    return CopyWith$Fragment$Person(local$person, (e) => call(person: e));
  }
}

class _CopyWithStubImpl$Mutation$updatePersonSpiritData$insertHistoryConfessionHistoryOne<
        TRes>
    implements
        CopyWith$Mutation$updatePersonSpiritData$insertHistoryConfessionHistoryOne<
            TRes> {
  _CopyWithStubImpl$Mutation$updatePersonSpiritData$insertHistoryConfessionHistoryOne(
      this._res);

  TRes _res;

  call({
    Fragment$Person? person,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$Person<TRes> get person =>
      CopyWith$Fragment$Person.stub(_res);
}

class Mutation$updatePersonSpiritData$insertHistoryKodasHistoryOne {
  Mutation$updatePersonSpiritData$insertHistoryKodasHistoryOne({
    required this.person,
    required this.$__typename,
  });

  factory Mutation$updatePersonSpiritData$insertHistoryKodasHistoryOne.fromJson(
      Map<String, dynamic> json) {
    final l$person = json['person'];
    final l$$__typename = json['__typename'];
    return Mutation$updatePersonSpiritData$insertHistoryKodasHistoryOne(
      person: Fragment$Person.fromJson((l$person as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$Person person;

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
    if (!(other
            is Mutation$updatePersonSpiritData$insertHistoryKodasHistoryOne) ||
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

extension UtilityExtension$Mutation$updatePersonSpiritData$insertHistoryKodasHistoryOne
    on Mutation$updatePersonSpiritData$insertHistoryKodasHistoryOne {
  CopyWith$Mutation$updatePersonSpiritData$insertHistoryKodasHistoryOne<
          Mutation$updatePersonSpiritData$insertHistoryKodasHistoryOne>
      get copyWith =>
          CopyWith$Mutation$updatePersonSpiritData$insertHistoryKodasHistoryOne(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$updatePersonSpiritData$insertHistoryKodasHistoryOne<
    TRes> {
  factory CopyWith$Mutation$updatePersonSpiritData$insertHistoryKodasHistoryOne(
    Mutation$updatePersonSpiritData$insertHistoryKodasHistoryOne instance,
    TRes Function(Mutation$updatePersonSpiritData$insertHistoryKodasHistoryOne)
        then,
  ) = _CopyWithImpl$Mutation$updatePersonSpiritData$insertHistoryKodasHistoryOne;

  factory CopyWith$Mutation$updatePersonSpiritData$insertHistoryKodasHistoryOne.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$updatePersonSpiritData$insertHistoryKodasHistoryOne;

  TRes call({
    Fragment$Person? person,
    String? $__typename,
  });
  CopyWith$Fragment$Person<TRes> get person;
}

class _CopyWithImpl$Mutation$updatePersonSpiritData$insertHistoryKodasHistoryOne<
        TRes>
    implements
        CopyWith$Mutation$updatePersonSpiritData$insertHistoryKodasHistoryOne<
            TRes> {
  _CopyWithImpl$Mutation$updatePersonSpiritData$insertHistoryKodasHistoryOne(
    this._instance,
    this._then,
  );

  final Mutation$updatePersonSpiritData$insertHistoryKodasHistoryOne _instance;

  final TRes Function(
      Mutation$updatePersonSpiritData$insertHistoryKodasHistoryOne) _then;

  static const _undefined = {};

  TRes call({
    Object? person = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$updatePersonSpiritData$insertHistoryKodasHistoryOne(
        person: person == _undefined || person == null
            ? _instance.person
            : (person as Fragment$Person),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$Person<TRes> get person {
    final local$person = _instance.person;
    return CopyWith$Fragment$Person(local$person, (e) => call(person: e));
  }
}

class _CopyWithStubImpl$Mutation$updatePersonSpiritData$insertHistoryKodasHistoryOne<
        TRes>
    implements
        CopyWith$Mutation$updatePersonSpiritData$insertHistoryKodasHistoryOne<
            TRes> {
  _CopyWithStubImpl$Mutation$updatePersonSpiritData$insertHistoryKodasHistoryOne(
      this._res);

  TRes _res;

  call({
    Fragment$Person? person,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$Person<TRes> get person =>
      CopyWith$Fragment$Person.stub(_res);
}
