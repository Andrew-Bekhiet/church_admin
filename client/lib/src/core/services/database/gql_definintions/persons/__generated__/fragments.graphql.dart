import '../../areas/__generated__/fragments.graphql.dart';
import '../../classes/__generated__/fragments.graphql.dart';
import '../../contacts/__generated__/fragments.graphql.dart';
import '../../data_checks/__generated__/fragments.graphql.dart';
import '../../gql/__generated__/fragments.graphql.dart';
import '../../groups/__generated__/fragments.graphql.dart';
import '../../metadata/churches/__generated__/fragments.graphql.dart';
import '../../metadata/colleges/__generated__/fragments.graphql.dart';
import '../../metadata/districts/__generated__/fragments.graphql.dart';
import '../../metadata/fathers/__generated__/fragments.graphql.dart';
import '../../metadata/hobbies/__generated__/fragments.graphql.dart';
import '../../metadata/jobs/__generated__/fragments.graphql.dart';
import '../../metadata/person_states/__generated__/fragments.graphql.dart';
import '../../metadata/person_types/__generated__/fragments.graphql.dart';
import '../../metadata/qualifications/__generated__/fragments.graphql.dart';
import '../../metadata/schools/__generated__/fragments.graphql.dart';
import '../../metadata/shammas_levels/__generated__/fragments.graphql.dart';
import '../../metadata/study_years/__generated__/fragments.graphql.dart';
import '../../metadata/tags/__generated__/fragments.graphql.dart';
import '../../services/__generated__/fragments.graphql.dart';
import '../../streets/__generated__/fragments.graphql.dart';

import 'package:church_admin/src/core/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Fragment_PersonNoPhoto {
  Fragment_PersonNoPhoto({
    required this.id,
    required this.name,
    this.color,
    required this.userCanEdit,
    this.$__typename = 'Person',
  });

  factory Fragment_PersonNoPhoto.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$userCanEdit = json['userCanEdit'];
    final l$$__typename = json['__typename'];
    return Fragment_PersonNoPhoto(
      id: (l$id as String),
      name: (l$name as String),
      color: (l$color as int?),
      userCanEdit: (l$userCanEdit as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final int? color;

  final bool userCanEdit;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$userCanEdit = userCanEdit;
    _resultData['userCanEdit'] = l$userCanEdit;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$userCanEdit = userCanEdit;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$userCanEdit,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_PersonNoPhoto || runtimeType != other.runtimeType) {
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
    final l$color = color;
    final lOther$color = other.color;
    if (l$color != lOther$color) {
      return false;
    }
    final l$userCanEdit = userCanEdit;
    final lOther$userCanEdit = other.userCanEdit;
    if (l$userCanEdit != lOther$userCanEdit) {
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

extension UtilityExtension_Fragment_PersonNoPhoto on Fragment_PersonNoPhoto {
  CopyWith_Fragment_PersonNoPhoto<Fragment_PersonNoPhoto> get copyWith =>
      CopyWith_Fragment_PersonNoPhoto(this, (i) => i);
}

abstract class CopyWith_Fragment_PersonNoPhoto<TRes> {
  factory CopyWith_Fragment_PersonNoPhoto(
    Fragment_PersonNoPhoto instance,
    TRes Function(Fragment_PersonNoPhoto) then,
  ) = _CopyWithImpl_Fragment_PersonNoPhoto;

  factory CopyWith_Fragment_PersonNoPhoto.stub(TRes res) =
      _CopyWithStubImpl_Fragment_PersonNoPhoto;

  TRes call({
    String? id,
    String? name,
    int? color,
    bool? userCanEdit,
    String? $__typename,
  });
}

class _CopyWithImpl_Fragment_PersonNoPhoto<TRes>
    implements CopyWith_Fragment_PersonNoPhoto<TRes> {
  _CopyWithImpl_Fragment_PersonNoPhoto(this._instance, this._then);

  final Fragment_PersonNoPhoto _instance;

  final TRes Function(Fragment_PersonNoPhoto) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? userCanEdit = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_PersonNoPhoto(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      color: color == _undefined ? _instance.color : (color as int?),
      userCanEdit: userCanEdit == _undefined || userCanEdit == null
          ? _instance.userCanEdit
          : (userCanEdit as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Fragment_PersonNoPhoto<TRes>
    implements CopyWith_Fragment_PersonNoPhoto<TRes> {
  _CopyWithStubImpl_Fragment_PersonNoPhoto(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    int? color,
    bool? userCanEdit,
    String? $__typename,
  }) => _res;
}

const fragmentDefinitionPersonNoPhoto = FragmentDefinitionNode(
  name: NameNode(value: 'PersonNoPhoto'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'Person'), isNonNull: false),
  ),
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
        name: NameNode(value: 'color'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'userCanEdit'),
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
);
const documentNodeFragmentPersonNoPhoto = DocumentNode(
  definitions: [fragmentDefinitionPersonNoPhoto],
);

class Fragment_Person implements Fragment_PersonNoPhoto {
  Fragment_Person({
    required this.id,
    required this.name,
    this.color,
    required this.userCanEdit,
    this.$__typename = 'Person',
    this.photoUpdatedAt,
    this.blurhash,
    this.dataCheck,
  });

  factory Fragment_Person.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$userCanEdit = json['userCanEdit'];
    final l$$__typename = json['__typename'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$blurhash = json['blurhash'];
    final l$dataCheck = json['dataCheck'];
    return Fragment_Person(
      id: (l$id as String),
      name: (l$name as String),
      color: (l$color as int?),
      userCanEdit: (l$userCanEdit as bool),
      $__typename: (l$$__typename as String),
      photoUpdatedAt: l$photoUpdatedAt == null
          ? null
          : tstzFromString(l$photoUpdatedAt),
      blurhash: (l$blurhash as String?),
      dataCheck: l$dataCheck == null
          ? null
          : Fragment_DataCheck.fromJson((l$dataCheck as Map<String, dynamic>)),
    );
  }

  final String id;

  final String name;

  final int? color;

  final bool userCanEdit;

  final String $__typename;

  final DateTime? photoUpdatedAt;

  final String? blurhash;

  final Fragment_DataCheck? dataCheck;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$userCanEdit = userCanEdit;
    _resultData['userCanEdit'] = l$userCanEdit;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$photoUpdatedAt = photoUpdatedAt;
    _resultData['photoUpdatedAt'] = l$photoUpdatedAt == null
        ? null
        : tstzToString(l$photoUpdatedAt);
    final l$blurhash = blurhash;
    _resultData['blurhash'] = l$blurhash;
    final l$dataCheck = dataCheck;
    _resultData['dataCheck'] = l$dataCheck?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$userCanEdit = userCanEdit;
    final l$$__typename = $__typename;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$blurhash = blurhash;
    final l$dataCheck = dataCheck;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$userCanEdit,
      l$$__typename,
      l$photoUpdatedAt,
      l$blurhash,
      l$dataCheck,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_Person || runtimeType != other.runtimeType) {
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
    final l$color = color;
    final lOther$color = other.color;
    if (l$color != lOther$color) {
      return false;
    }
    final l$userCanEdit = userCanEdit;
    final lOther$userCanEdit = other.userCanEdit;
    if (l$userCanEdit != lOther$userCanEdit) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
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
    final l$dataCheck = dataCheck;
    final lOther$dataCheck = other.dataCheck;
    if (l$dataCheck != lOther$dataCheck) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Fragment_Person on Fragment_Person {
  CopyWith_Fragment_Person<Fragment_Person> get copyWith =>
      CopyWith_Fragment_Person(this, (i) => i);
}

abstract class CopyWith_Fragment_Person<TRes> {
  factory CopyWith_Fragment_Person(
    Fragment_Person instance,
    TRes Function(Fragment_Person) then,
  ) = _CopyWithImpl_Fragment_Person;

  factory CopyWith_Fragment_Person.stub(TRes res) =
      _CopyWithStubImpl_Fragment_Person;

  TRes call({
    String? id,
    String? name,
    int? color,
    bool? userCanEdit,
    String? $__typename,
    DateTime? photoUpdatedAt,
    String? blurhash,
    Fragment_DataCheck? dataCheck,
  });
  CopyWith_Fragment_DataCheck<TRes> get dataCheck;
}

class _CopyWithImpl_Fragment_Person<TRes>
    implements CopyWith_Fragment_Person<TRes> {
  _CopyWithImpl_Fragment_Person(this._instance, this._then);

  final Fragment_Person _instance;

  final TRes Function(Fragment_Person) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? userCanEdit = _undefined,
    Object? $__typename = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? blurhash = _undefined,
    Object? dataCheck = _undefined,
  }) => _then(
    Fragment_Person(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      color: color == _undefined ? _instance.color : (color as int?),
      userCanEdit: userCanEdit == _undefined || userCanEdit == null
          ? _instance.userCanEdit
          : (userCanEdit as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
      photoUpdatedAt: photoUpdatedAt == _undefined
          ? _instance.photoUpdatedAt
          : (photoUpdatedAt as DateTime?),
      blurhash: blurhash == _undefined
          ? _instance.blurhash
          : (blurhash as String?),
      dataCheck: dataCheck == _undefined
          ? _instance.dataCheck
          : (dataCheck as Fragment_DataCheck?),
    ),
  );

  CopyWith_Fragment_DataCheck<TRes> get dataCheck {
    final local$dataCheck = _instance.dataCheck;
    return local$dataCheck == null
        ? CopyWith_Fragment_DataCheck.stub(_then(_instance))
        : CopyWith_Fragment_DataCheck(
            local$dataCheck,
            (e) => call(dataCheck: e),
          );
  }
}

class _CopyWithStubImpl_Fragment_Person<TRes>
    implements CopyWith_Fragment_Person<TRes> {
  _CopyWithStubImpl_Fragment_Person(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    int? color,
    bool? userCanEdit,
    String? $__typename,
    DateTime? photoUpdatedAt,
    String? blurhash,
    Fragment_DataCheck? dataCheck,
  }) => _res;

  CopyWith_Fragment_DataCheck<TRes> get dataCheck =>
      CopyWith_Fragment_DataCheck.stub(_res);
}

const fragmentDefinitionPerson = FragmentDefinitionNode(
  name: NameNode(value: 'Person'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'Person'), isNonNull: false),
  ),
  directives: [],
  selectionSet: SelectionSetNode(
    selections: [
      FragmentSpreadNode(
        name: NameNode(value: 'PersonNoPhoto'),
        directives: [],
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
        name: NameNode(value: 'dataCheck'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'DataCheck'),
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
);
const documentNodeFragmentPerson = DocumentNode(
  definitions: [
    fragmentDefinitionPerson,
    fragmentDefinitionPersonNoPhoto,
    fragmentDefinitionDataCheck,
  ],
);

class Variables_Fragment_PersonDetails {
  factory Variables_Fragment_PersonDetails({
    int? classesLimit,
    int? groupsLimit,
    int? servicesLimit,
  }) => Variables_Fragment_PersonDetails._({
    if (classesLimit != null) r'classesLimit': classesLimit,
    if (groupsLimit != null) r'groupsLimit': groupsLimit,
    if (servicesLimit != null) r'servicesLimit': servicesLimit,
  });

  Variables_Fragment_PersonDetails._(this._$data);

  factory Variables_Fragment_PersonDetails.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('classesLimit')) {
      final l$classesLimit = data['classesLimit'];
      result$data['classesLimit'] = (l$classesLimit as int?);
    }
    if (data.containsKey('groupsLimit')) {
      final l$groupsLimit = data['groupsLimit'];
      result$data['groupsLimit'] = (l$groupsLimit as int?);
    }
    if (data.containsKey('servicesLimit')) {
      final l$servicesLimit = data['servicesLimit'];
      result$data['servicesLimit'] = (l$servicesLimit as int?);
    }
    return Variables_Fragment_PersonDetails._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get classesLimit => (_$data['classesLimit'] as int?);

  int? get groupsLimit => (_$data['groupsLimit'] as int?);

  int? get servicesLimit => (_$data['servicesLimit'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('classesLimit')) {
      final l$classesLimit = classesLimit;
      result$data['classesLimit'] = l$classesLimit;
    }
    if (_$data.containsKey('groupsLimit')) {
      final l$groupsLimit = groupsLimit;
      result$data['groupsLimit'] = l$groupsLimit;
    }
    if (_$data.containsKey('servicesLimit')) {
      final l$servicesLimit = servicesLimit;
      result$data['servicesLimit'] = l$servicesLimit;
    }
    return result$data;
  }

  CopyWith_Variables_Fragment_PersonDetails<Variables_Fragment_PersonDetails>
  get copyWith => CopyWith_Variables_Fragment_PersonDetails(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Fragment_PersonDetails ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$classesLimit = classesLimit;
    final lOther$classesLimit = other.classesLimit;
    if (_$data.containsKey('classesLimit') !=
        other._$data.containsKey('classesLimit')) {
      return false;
    }
    if (l$classesLimit != lOther$classesLimit) {
      return false;
    }
    final l$groupsLimit = groupsLimit;
    final lOther$groupsLimit = other.groupsLimit;
    if (_$data.containsKey('groupsLimit') !=
        other._$data.containsKey('groupsLimit')) {
      return false;
    }
    if (l$groupsLimit != lOther$groupsLimit) {
      return false;
    }
    final l$servicesLimit = servicesLimit;
    final lOther$servicesLimit = other.servicesLimit;
    if (_$data.containsKey('servicesLimit') !=
        other._$data.containsKey('servicesLimit')) {
      return false;
    }
    if (l$servicesLimit != lOther$servicesLimit) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$classesLimit = classesLimit;
    final l$groupsLimit = groupsLimit;
    final l$servicesLimit = servicesLimit;
    return Object.hashAll([
      _$data.containsKey('classesLimit') ? l$classesLimit : const {},
      _$data.containsKey('groupsLimit') ? l$groupsLimit : const {},
      _$data.containsKey('servicesLimit') ? l$servicesLimit : const {},
    ]);
  }
}

abstract class CopyWith_Variables_Fragment_PersonDetails<TRes> {
  factory CopyWith_Variables_Fragment_PersonDetails(
    Variables_Fragment_PersonDetails instance,
    TRes Function(Variables_Fragment_PersonDetails) then,
  ) = _CopyWithImpl_Variables_Fragment_PersonDetails;

  factory CopyWith_Variables_Fragment_PersonDetails.stub(TRes res) =
      _CopyWithStubImpl_Variables_Fragment_PersonDetails;

  TRes call({int? classesLimit, int? groupsLimit, int? servicesLimit});
}

class _CopyWithImpl_Variables_Fragment_PersonDetails<TRes>
    implements CopyWith_Variables_Fragment_PersonDetails<TRes> {
  _CopyWithImpl_Variables_Fragment_PersonDetails(this._instance, this._then);

  final Variables_Fragment_PersonDetails _instance;

  final TRes Function(Variables_Fragment_PersonDetails) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? classesLimit = _undefined,
    Object? groupsLimit = _undefined,
    Object? servicesLimit = _undefined,
  }) => _then(
    Variables_Fragment_PersonDetails._({
      ..._instance._$data,
      if (classesLimit != _undefined) 'classesLimit': (classesLimit as int?),
      if (groupsLimit != _undefined) 'groupsLimit': (groupsLimit as int?),
      if (servicesLimit != _undefined) 'servicesLimit': (servicesLimit as int?),
    }),
  );
}

class _CopyWithStubImpl_Variables_Fragment_PersonDetails<TRes>
    implements CopyWith_Variables_Fragment_PersonDetails<TRes> {
  _CopyWithStubImpl_Variables_Fragment_PersonDetails(this._res);

  TRes _res;

  call({int? classesLimit, int? groupsLimit, int? servicesLimit}) => _res;
}

class Fragment_PersonDetails
    implements Fragment_Person, Fragment_PersonNoPhoto {
  Fragment_PersonDetails({
    required this.id,
    required this.name,
    this.color,
    required this.userCanEdit,
    this.$__typename = 'Person',
    this.photoUpdatedAt,
    this.blurhash,
    this.dataCheck,
    this.address,
    this.birthdate,
    required this.classMemberships,
    this.church,
    required this.contacts,
    this.college,
    this.family,
    this.father,
    required this.gender,
    required this.groupMemberships,
    required this.isServant,
    this.servingChurch,
    this.serviceType,
    required this.isShammas,
    this.workStatus,
    this.job,
    this.jobDescription,
    this.latestCall,
    this.latestConfession,
    this.latestEdit,
    this.latestKodas,
    this.latestVisit,
    this.notes,
    required this.martialStatus,
    this.personType,
    this.qualification,
    this.school,
    required this.serviceMemberships,
    this.shammasLevel,
    this.state,
    this.studyYear,
    required this.hobbies,
    required this.tags,
    this.uid,
    this.user,
  });

  factory Fragment_PersonDetails.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$userCanEdit = json['userCanEdit'];
    final l$$__typename = json['__typename'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$blurhash = json['blurhash'];
    final l$dataCheck = json['dataCheck'];
    final l$address = json['address'];
    final l$birthdate = json['birthdate'];
    final l$classMemberships = json['classMemberships'];
    final l$church = json['church'];
    final l$contacts = json['contacts'];
    final l$college = json['college'];
    final l$family = json['family'];
    final l$father = json['father'];
    final l$gender = json['gender'];
    final l$groupMemberships = json['groupMemberships'];
    final l$isServant = json['isServant'];
    final l$servingChurch = json['servingChurch'];
    final l$serviceType = json['serviceType'];
    final l$isShammas = json['isShammas'];
    final l$workStatus = json['workStatus'];
    final l$job = json['job'];
    final l$jobDescription = json['jobDescription'];
    final l$latestCall = json['latestCall'];
    final l$latestConfession = json['latestConfession'];
    final l$latestEdit = json['latestEdit'];
    final l$latestKodas = json['latestKodas'];
    final l$latestVisit = json['latestVisit'];
    final l$notes = json['notes'];
    final l$martialStatus = json['martialStatus'];
    final l$personType = json['personType'];
    final l$qualification = json['qualification'];
    final l$school = json['school'];
    final l$serviceMemberships = json['serviceMemberships'];
    final l$shammasLevel = json['shammasLevel'];
    final l$state = json['state'];
    final l$studyYear = json['studyYear'];
    final l$hobbies = json['hobbies'];
    final l$tags = json['tags'];
    final l$uid = json['uid'];
    final l$user = json['user'];
    return Fragment_PersonDetails(
      id: (l$id as String),
      name: (l$name as String),
      color: (l$color as int?),
      userCanEdit: (l$userCanEdit as bool),
      $__typename: (l$$__typename as String),
      photoUpdatedAt: l$photoUpdatedAt == null
          ? null
          : tstzFromString(l$photoUpdatedAt),
      blurhash: (l$blurhash as String?),
      dataCheck: l$dataCheck == null
          ? null
          : Fragment_DataCheck.fromJson((l$dataCheck as Map<String, dynamic>)),
      address: l$address == null
          ? null
          : Fragment_Address.fromJson((l$address as Map<String, dynamic>)),
      birthdate: l$birthdate == null ? null : dateFromString(l$birthdate),
      classMemberships: (l$classMemberships as List<dynamic>)
          .map(
            (e) => Fragment_PersonDetails_classMemberships.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      church: l$church == null
          ? null
          : Fragment_Church.fromJson((l$church as Map<String, dynamic>)),
      contacts: (l$contacts as List<dynamic>)
          .map((e) => Fragment_Contact.fromJson((e as Map<String, dynamic>)))
          .toList(),
      college: l$college == null
          ? null
          : Fragment_College.fromJson((l$college as Map<String, dynamic>)),
      family: l$family == null
          ? null
          : Fragment_PersonFamily.fromJson((l$family as Map<String, dynamic>)),
      father: l$father == null
          ? null
          : Fragment_PersonDetails_father.fromJson(
              (l$father as Map<String, dynamic>),
            ),
      gender: (l$gender as bool),
      groupMemberships: (l$groupMemberships as List<dynamic>)
          .map(
            (e) => Fragment_PersonDetails_groupMemberships.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      isServant: (l$isServant as bool),
      servingChurch: l$servingChurch == null
          ? null
          : Fragment_Church.fromJson((l$servingChurch as Map<String, dynamic>)),
      serviceType: (l$serviceType as String?),
      isShammas: (l$isShammas as bool),
      workStatus: (l$workStatus as String?),
      job: l$job == null
          ? null
          : Fragment_Job.fromJson((l$job as Map<String, dynamic>)),
      jobDescription: (l$jobDescription as String?),
      latestCall: l$latestCall == null
          ? null
          : Fragment_LatestCall.fromJson(
              (l$latestCall as Map<String, dynamic>),
            ),
      latestConfession: l$latestConfession == null
          ? null
          : Fragment_LatestConfession.fromJson(
              (l$latestConfession as Map<String, dynamic>),
            ),
      latestEdit: l$latestEdit == null
          ? null
          : Fragment_LatestEdit.fromJson(
              (l$latestEdit as Map<String, dynamic>),
            ),
      latestKodas: l$latestKodas == null
          ? null
          : Fragment_LatestKodas.fromJson(
              (l$latestKodas as Map<String, dynamic>),
            ),
      latestVisit: l$latestVisit == null
          ? null
          : Fragment_LatestVisit.fromJson(
              (l$latestVisit as Map<String, dynamic>),
            ),
      notes: (l$notes as String?),
      martialStatus: (l$martialStatus as String),
      personType: l$personType == null
          ? null
          : Fragment_PersonType.fromJson(
              (l$personType as Map<String, dynamic>),
            ),
      qualification: l$qualification == null
          ? null
          : Fragment_Qualification.fromJson(
              (l$qualification as Map<String, dynamic>),
            ),
      school: l$school == null
          ? null
          : Fragment_School.fromJson((l$school as Map<String, dynamic>)),
      serviceMemberships: (l$serviceMemberships as List<dynamic>)
          .map(
            (e) => Fragment_PersonDetails_serviceMemberships.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      shammasLevel: l$shammasLevel == null
          ? null
          : Fragment_ShammasLevel.fromJson(
              (l$shammasLevel as Map<String, dynamic>),
            ),
      state: l$state == null
          ? null
          : Fragment_PersonState.fromJson((l$state as Map<String, dynamic>)),
      studyYear: l$studyYear == null
          ? null
          : Fragment_StudyYear.fromJson((l$studyYear as Map<String, dynamic>)),
      hobbies: (l$hobbies as List<dynamic>)
          .map((e) => Fragment_Hobby.fromJson((e as Map<String, dynamic>)))
          .toList(),
      tags: (l$tags as List<dynamic>)
          .map((e) => Fragment_Tag.fromJson((e as Map<String, dynamic>)))
          .toList(),
      uid: (l$uid as String?),
      user: l$user == null
          ? null
          : Fragment_User.fromJson((l$user as Map<String, dynamic>)),
    );
  }

  final String id;

  final String name;

  final int? color;

  final bool userCanEdit;

  final String $__typename;

  final DateTime? photoUpdatedAt;

  final String? blurhash;

  final Fragment_DataCheck? dataCheck;

  final Fragment_Address? address;

  final DateTime? birthdate;

  final List<Fragment_PersonDetails_classMemberships> classMemberships;

  final Fragment_Church? church;

  final List<Fragment_Contact> contacts;

  final Fragment_College? college;

  final Fragment_PersonFamily? family;

  final Fragment_PersonDetails_father? father;

  final bool gender;

  final List<Fragment_PersonDetails_groupMemberships> groupMemberships;

  final bool isServant;

  final Fragment_Church? servingChurch;

  final String? serviceType;

  final bool isShammas;

  final String? workStatus;

  final Fragment_Job? job;

  final String? jobDescription;

  final Fragment_LatestCall? latestCall;

  final Fragment_LatestConfession? latestConfession;

  final Fragment_LatestEdit? latestEdit;

  final Fragment_LatestKodas? latestKodas;

  final Fragment_LatestVisit? latestVisit;

  final String? notes;

  final String martialStatus;

  final Fragment_PersonType? personType;

  final Fragment_Qualification? qualification;

  final Fragment_School? school;

  final List<Fragment_PersonDetails_serviceMemberships> serviceMemberships;

  final Fragment_ShammasLevel? shammasLevel;

  final Fragment_PersonState? state;

  final Fragment_StudyYear? studyYear;

  final List<Fragment_Hobby> hobbies;

  final List<Fragment_Tag> tags;

  final String? uid;

  final Fragment_User? user;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$userCanEdit = userCanEdit;
    _resultData['userCanEdit'] = l$userCanEdit;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$photoUpdatedAt = photoUpdatedAt;
    _resultData['photoUpdatedAt'] = l$photoUpdatedAt == null
        ? null
        : tstzToString(l$photoUpdatedAt);
    final l$blurhash = blurhash;
    _resultData['blurhash'] = l$blurhash;
    final l$dataCheck = dataCheck;
    _resultData['dataCheck'] = l$dataCheck?.toJson();
    final l$address = address;
    _resultData['address'] = l$address?.toJson();
    final l$birthdate = birthdate;
    _resultData['birthdate'] = l$birthdate == null
        ? null
        : dateToString(l$birthdate);
    final l$classMemberships = classMemberships;
    _resultData['classMemberships'] = l$classMemberships
        .map((e) => e.toJson())
        .toList();
    final l$church = church;
    _resultData['church'] = l$church?.toJson();
    final l$contacts = contacts;
    _resultData['contacts'] = l$contacts.map((e) => e.toJson()).toList();
    final l$college = college;
    _resultData['college'] = l$college?.toJson();
    final l$family = family;
    _resultData['family'] = l$family?.toJson();
    final l$father = father;
    _resultData['father'] = l$father?.toJson();
    final l$gender = gender;
    _resultData['gender'] = l$gender;
    final l$groupMemberships = groupMemberships;
    _resultData['groupMemberships'] = l$groupMemberships
        .map((e) => e.toJson())
        .toList();
    final l$isServant = isServant;
    _resultData['isServant'] = l$isServant;
    final l$servingChurch = servingChurch;
    _resultData['servingChurch'] = l$servingChurch?.toJson();
    final l$serviceType = serviceType;
    _resultData['serviceType'] = l$serviceType;
    final l$isShammas = isShammas;
    _resultData['isShammas'] = l$isShammas;
    final l$workStatus = workStatus;
    _resultData['workStatus'] = l$workStatus;
    final l$job = job;
    _resultData['job'] = l$job?.toJson();
    final l$jobDescription = jobDescription;
    _resultData['jobDescription'] = l$jobDescription;
    final l$latestCall = latestCall;
    _resultData['latestCall'] = l$latestCall?.toJson();
    final l$latestConfession = latestConfession;
    _resultData['latestConfession'] = l$latestConfession?.toJson();
    final l$latestEdit = latestEdit;
    _resultData['latestEdit'] = l$latestEdit?.toJson();
    final l$latestKodas = latestKodas;
    _resultData['latestKodas'] = l$latestKodas?.toJson();
    final l$latestVisit = latestVisit;
    _resultData['latestVisit'] = l$latestVisit?.toJson();
    final l$notes = notes;
    _resultData['notes'] = l$notes;
    final l$martialStatus = martialStatus;
    _resultData['martialStatus'] = l$martialStatus;
    final l$personType = personType;
    _resultData['personType'] = l$personType?.toJson();
    final l$qualification = qualification;
    _resultData['qualification'] = l$qualification?.toJson();
    final l$school = school;
    _resultData['school'] = l$school?.toJson();
    final l$serviceMemberships = serviceMemberships;
    _resultData['serviceMemberships'] = l$serviceMemberships
        .map((e) => e.toJson())
        .toList();
    final l$shammasLevel = shammasLevel;
    _resultData['shammasLevel'] = l$shammasLevel?.toJson();
    final l$state = state;
    _resultData['state'] = l$state?.toJson();
    final l$studyYear = studyYear;
    _resultData['studyYear'] = l$studyYear?.toJson();
    final l$hobbies = hobbies;
    _resultData['hobbies'] = l$hobbies.map((e) => e.toJson()).toList();
    final l$tags = tags;
    _resultData['tags'] = l$tags.map((e) => e.toJson()).toList();
    final l$uid = uid;
    _resultData['uid'] = l$uid;
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$userCanEdit = userCanEdit;
    final l$$__typename = $__typename;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$blurhash = blurhash;
    final l$dataCheck = dataCheck;
    final l$address = address;
    final l$birthdate = birthdate;
    final l$classMemberships = classMemberships;
    final l$church = church;
    final l$contacts = contacts;
    final l$college = college;
    final l$family = family;
    final l$father = father;
    final l$gender = gender;
    final l$groupMemberships = groupMemberships;
    final l$isServant = isServant;
    final l$servingChurch = servingChurch;
    final l$serviceType = serviceType;
    final l$isShammas = isShammas;
    final l$workStatus = workStatus;
    final l$job = job;
    final l$jobDescription = jobDescription;
    final l$latestCall = latestCall;
    final l$latestConfession = latestConfession;
    final l$latestEdit = latestEdit;
    final l$latestKodas = latestKodas;
    final l$latestVisit = latestVisit;
    final l$notes = notes;
    final l$martialStatus = martialStatus;
    final l$personType = personType;
    final l$qualification = qualification;
    final l$school = school;
    final l$serviceMemberships = serviceMemberships;
    final l$shammasLevel = shammasLevel;
    final l$state = state;
    final l$studyYear = studyYear;
    final l$hobbies = hobbies;
    final l$tags = tags;
    final l$uid = uid;
    final l$user = user;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$userCanEdit,
      l$$__typename,
      l$photoUpdatedAt,
      l$blurhash,
      l$dataCheck,
      l$address,
      l$birthdate,
      Object.hashAll(l$classMemberships.map((v) => v)),
      l$church,
      Object.hashAll(l$contacts.map((v) => v)),
      l$college,
      l$family,
      l$father,
      l$gender,
      Object.hashAll(l$groupMemberships.map((v) => v)),
      l$isServant,
      l$servingChurch,
      l$serviceType,
      l$isShammas,
      l$workStatus,
      l$job,
      l$jobDescription,
      l$latestCall,
      l$latestConfession,
      l$latestEdit,
      l$latestKodas,
      l$latestVisit,
      l$notes,
      l$martialStatus,
      l$personType,
      l$qualification,
      l$school,
      Object.hashAll(l$serviceMemberships.map((v) => v)),
      l$shammasLevel,
      l$state,
      l$studyYear,
      Object.hashAll(l$hobbies.map((v) => v)),
      Object.hashAll(l$tags.map((v) => v)),
      l$uid,
      l$user,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_PersonDetails || runtimeType != other.runtimeType) {
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
    final l$color = color;
    final lOther$color = other.color;
    if (l$color != lOther$color) {
      return false;
    }
    final l$userCanEdit = userCanEdit;
    final lOther$userCanEdit = other.userCanEdit;
    if (l$userCanEdit != lOther$userCanEdit) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
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
    final l$dataCheck = dataCheck;
    final lOther$dataCheck = other.dataCheck;
    if (l$dataCheck != lOther$dataCheck) {
      return false;
    }
    final l$address = address;
    final lOther$address = other.address;
    if (l$address != lOther$address) {
      return false;
    }
    final l$birthdate = birthdate;
    final lOther$birthdate = other.birthdate;
    if (l$birthdate != lOther$birthdate) {
      return false;
    }
    final l$classMemberships = classMemberships;
    final lOther$classMemberships = other.classMemberships;
    if (l$classMemberships.length != lOther$classMemberships.length) {
      return false;
    }
    for (int i = 0; i < l$classMemberships.length; i++) {
      final l$classMemberships$entry = l$classMemberships[i];
      final lOther$classMemberships$entry = lOther$classMemberships[i];
      if (l$classMemberships$entry != lOther$classMemberships$entry) {
        return false;
      }
    }
    final l$church = church;
    final lOther$church = other.church;
    if (l$church != lOther$church) {
      return false;
    }
    final l$contacts = contacts;
    final lOther$contacts = other.contacts;
    if (l$contacts.length != lOther$contacts.length) {
      return false;
    }
    for (int i = 0; i < l$contacts.length; i++) {
      final l$contacts$entry = l$contacts[i];
      final lOther$contacts$entry = lOther$contacts[i];
      if (l$contacts$entry != lOther$contacts$entry) {
        return false;
      }
    }
    final l$college = college;
    final lOther$college = other.college;
    if (l$college != lOther$college) {
      return false;
    }
    final l$family = family;
    final lOther$family = other.family;
    if (l$family != lOther$family) {
      return false;
    }
    final l$father = father;
    final lOther$father = other.father;
    if (l$father != lOther$father) {
      return false;
    }
    final l$gender = gender;
    final lOther$gender = other.gender;
    if (l$gender != lOther$gender) {
      return false;
    }
    final l$groupMemberships = groupMemberships;
    final lOther$groupMemberships = other.groupMemberships;
    if (l$groupMemberships.length != lOther$groupMemberships.length) {
      return false;
    }
    for (int i = 0; i < l$groupMemberships.length; i++) {
      final l$groupMemberships$entry = l$groupMemberships[i];
      final lOther$groupMemberships$entry = lOther$groupMemberships[i];
      if (l$groupMemberships$entry != lOther$groupMemberships$entry) {
        return false;
      }
    }
    final l$isServant = isServant;
    final lOther$isServant = other.isServant;
    if (l$isServant != lOther$isServant) {
      return false;
    }
    final l$servingChurch = servingChurch;
    final lOther$servingChurch = other.servingChurch;
    if (l$servingChurch != lOther$servingChurch) {
      return false;
    }
    final l$serviceType = serviceType;
    final lOther$serviceType = other.serviceType;
    if (l$serviceType != lOther$serviceType) {
      return false;
    }
    final l$isShammas = isShammas;
    final lOther$isShammas = other.isShammas;
    if (l$isShammas != lOther$isShammas) {
      return false;
    }
    final l$workStatus = workStatus;
    final lOther$workStatus = other.workStatus;
    if (l$workStatus != lOther$workStatus) {
      return false;
    }
    final l$job = job;
    final lOther$job = other.job;
    if (l$job != lOther$job) {
      return false;
    }
    final l$jobDescription = jobDescription;
    final lOther$jobDescription = other.jobDescription;
    if (l$jobDescription != lOther$jobDescription) {
      return false;
    }
    final l$latestCall = latestCall;
    final lOther$latestCall = other.latestCall;
    if (l$latestCall != lOther$latestCall) {
      return false;
    }
    final l$latestConfession = latestConfession;
    final lOther$latestConfession = other.latestConfession;
    if (l$latestConfession != lOther$latestConfession) {
      return false;
    }
    final l$latestEdit = latestEdit;
    final lOther$latestEdit = other.latestEdit;
    if (l$latestEdit != lOther$latestEdit) {
      return false;
    }
    final l$latestKodas = latestKodas;
    final lOther$latestKodas = other.latestKodas;
    if (l$latestKodas != lOther$latestKodas) {
      return false;
    }
    final l$latestVisit = latestVisit;
    final lOther$latestVisit = other.latestVisit;
    if (l$latestVisit != lOther$latestVisit) {
      return false;
    }
    final l$notes = notes;
    final lOther$notes = other.notes;
    if (l$notes != lOther$notes) {
      return false;
    }
    final l$martialStatus = martialStatus;
    final lOther$martialStatus = other.martialStatus;
    if (l$martialStatus != lOther$martialStatus) {
      return false;
    }
    final l$personType = personType;
    final lOther$personType = other.personType;
    if (l$personType != lOther$personType) {
      return false;
    }
    final l$qualification = qualification;
    final lOther$qualification = other.qualification;
    if (l$qualification != lOther$qualification) {
      return false;
    }
    final l$school = school;
    final lOther$school = other.school;
    if (l$school != lOther$school) {
      return false;
    }
    final l$serviceMemberships = serviceMemberships;
    final lOther$serviceMemberships = other.serviceMemberships;
    if (l$serviceMemberships.length != lOther$serviceMemberships.length) {
      return false;
    }
    for (int i = 0; i < l$serviceMemberships.length; i++) {
      final l$serviceMemberships$entry = l$serviceMemberships[i];
      final lOther$serviceMemberships$entry = lOther$serviceMemberships[i];
      if (l$serviceMemberships$entry != lOther$serviceMemberships$entry) {
        return false;
      }
    }
    final l$shammasLevel = shammasLevel;
    final lOther$shammasLevel = other.shammasLevel;
    if (l$shammasLevel != lOther$shammasLevel) {
      return false;
    }
    final l$state = state;
    final lOther$state = other.state;
    if (l$state != lOther$state) {
      return false;
    }
    final l$studyYear = studyYear;
    final lOther$studyYear = other.studyYear;
    if (l$studyYear != lOther$studyYear) {
      return false;
    }
    final l$hobbies = hobbies;
    final lOther$hobbies = other.hobbies;
    if (l$hobbies.length != lOther$hobbies.length) {
      return false;
    }
    for (int i = 0; i < l$hobbies.length; i++) {
      final l$hobbies$entry = l$hobbies[i];
      final lOther$hobbies$entry = lOther$hobbies[i];
      if (l$hobbies$entry != lOther$hobbies$entry) {
        return false;
      }
    }
    final l$tags = tags;
    final lOther$tags = other.tags;
    if (l$tags.length != lOther$tags.length) {
      return false;
    }
    for (int i = 0; i < l$tags.length; i++) {
      final l$tags$entry = l$tags[i];
      final lOther$tags$entry = lOther$tags[i];
      if (l$tags$entry != lOther$tags$entry) {
        return false;
      }
    }
    final l$uid = uid;
    final lOther$uid = other.uid;
    if (l$uid != lOther$uid) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Fragment_PersonDetails on Fragment_PersonDetails {
  CopyWith_Fragment_PersonDetails<Fragment_PersonDetails> get copyWith =>
      CopyWith_Fragment_PersonDetails(this, (i) => i);
}

abstract class CopyWith_Fragment_PersonDetails<TRes> {
  factory CopyWith_Fragment_PersonDetails(
    Fragment_PersonDetails instance,
    TRes Function(Fragment_PersonDetails) then,
  ) = _CopyWithImpl_Fragment_PersonDetails;

  factory CopyWith_Fragment_PersonDetails.stub(TRes res) =
      _CopyWithStubImpl_Fragment_PersonDetails;

  TRes call({
    String? id,
    String? name,
    int? color,
    bool? userCanEdit,
    String? $__typename,
    DateTime? photoUpdatedAt,
    String? blurhash,
    Fragment_DataCheck? dataCheck,
    Fragment_Address? address,
    DateTime? birthdate,
    List<Fragment_PersonDetails_classMemberships>? classMemberships,
    Fragment_Church? church,
    List<Fragment_Contact>? contacts,
    Fragment_College? college,
    Fragment_PersonFamily? family,
    Fragment_PersonDetails_father? father,
    bool? gender,
    List<Fragment_PersonDetails_groupMemberships>? groupMemberships,
    bool? isServant,
    Fragment_Church? servingChurch,
    String? serviceType,
    bool? isShammas,
    String? workStatus,
    Fragment_Job? job,
    String? jobDescription,
    Fragment_LatestCall? latestCall,
    Fragment_LatestConfession? latestConfession,
    Fragment_LatestEdit? latestEdit,
    Fragment_LatestKodas? latestKodas,
    Fragment_LatestVisit? latestVisit,
    String? notes,
    String? martialStatus,
    Fragment_PersonType? personType,
    Fragment_Qualification? qualification,
    Fragment_School? school,
    List<Fragment_PersonDetails_serviceMemberships>? serviceMemberships,
    Fragment_ShammasLevel? shammasLevel,
    Fragment_PersonState? state,
    Fragment_StudyYear? studyYear,
    List<Fragment_Hobby>? hobbies,
    List<Fragment_Tag>? tags,
    String? uid,
    Fragment_User? user,
  });
  CopyWith_Fragment_DataCheck<TRes> get dataCheck;
  CopyWith_Fragment_Address<TRes> get address;
  TRes classMemberships(
    Iterable<Fragment_PersonDetails_classMemberships> Function(
      Iterable<
        CopyWith_Fragment_PersonDetails_classMemberships<
          Fragment_PersonDetails_classMemberships
        >
      >,
    )
    _fn,
  );
  CopyWith_Fragment_Church<TRes> get church;
  TRes contacts(
    Iterable<Fragment_Contact> Function(
      Iterable<CopyWith_Fragment_Contact<Fragment_Contact>>,
    )
    _fn,
  );
  CopyWith_Fragment_College<TRes> get college;
  CopyWith_Fragment_PersonFamily<TRes> get family;
  CopyWith_Fragment_PersonDetails_father<TRes> get father;
  TRes groupMemberships(
    Iterable<Fragment_PersonDetails_groupMemberships> Function(
      Iterable<
        CopyWith_Fragment_PersonDetails_groupMemberships<
          Fragment_PersonDetails_groupMemberships
        >
      >,
    )
    _fn,
  );
  CopyWith_Fragment_Church<TRes> get servingChurch;
  CopyWith_Fragment_Job<TRes> get job;
  CopyWith_Fragment_LatestCall<TRes> get latestCall;
  CopyWith_Fragment_LatestConfession<TRes> get latestConfession;
  CopyWith_Fragment_LatestEdit<TRes> get latestEdit;
  CopyWith_Fragment_LatestKodas<TRes> get latestKodas;
  CopyWith_Fragment_LatestVisit<TRes> get latestVisit;
  CopyWith_Fragment_PersonType<TRes> get personType;
  CopyWith_Fragment_Qualification<TRes> get qualification;
  CopyWith_Fragment_School<TRes> get school;
  TRes serviceMemberships(
    Iterable<Fragment_PersonDetails_serviceMemberships> Function(
      Iterable<
        CopyWith_Fragment_PersonDetails_serviceMemberships<
          Fragment_PersonDetails_serviceMemberships
        >
      >,
    )
    _fn,
  );
  CopyWith_Fragment_ShammasLevel<TRes> get shammasLevel;
  CopyWith_Fragment_PersonState<TRes> get state;
  CopyWith_Fragment_StudyYear<TRes> get studyYear;
  TRes hobbies(
    Iterable<Fragment_Hobby> Function(
      Iterable<CopyWith_Fragment_Hobby<Fragment_Hobby>>,
    )
    _fn,
  );
  TRes tags(
    Iterable<Fragment_Tag> Function(
      Iterable<CopyWith_Fragment_Tag<Fragment_Tag>>,
    )
    _fn,
  );
  CopyWith_Fragment_User<TRes> get user;
}

class _CopyWithImpl_Fragment_PersonDetails<TRes>
    implements CopyWith_Fragment_PersonDetails<TRes> {
  _CopyWithImpl_Fragment_PersonDetails(this._instance, this._then);

  final Fragment_PersonDetails _instance;

  final TRes Function(Fragment_PersonDetails) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? userCanEdit = _undefined,
    Object? $__typename = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? blurhash = _undefined,
    Object? dataCheck = _undefined,
    Object? address = _undefined,
    Object? birthdate = _undefined,
    Object? classMemberships = _undefined,
    Object? church = _undefined,
    Object? contacts = _undefined,
    Object? college = _undefined,
    Object? family = _undefined,
    Object? father = _undefined,
    Object? gender = _undefined,
    Object? groupMemberships = _undefined,
    Object? isServant = _undefined,
    Object? servingChurch = _undefined,
    Object? serviceType = _undefined,
    Object? isShammas = _undefined,
    Object? workStatus = _undefined,
    Object? job = _undefined,
    Object? jobDescription = _undefined,
    Object? latestCall = _undefined,
    Object? latestConfession = _undefined,
    Object? latestEdit = _undefined,
    Object? latestKodas = _undefined,
    Object? latestVisit = _undefined,
    Object? notes = _undefined,
    Object? martialStatus = _undefined,
    Object? personType = _undefined,
    Object? qualification = _undefined,
    Object? school = _undefined,
    Object? serviceMemberships = _undefined,
    Object? shammasLevel = _undefined,
    Object? state = _undefined,
    Object? studyYear = _undefined,
    Object? hobbies = _undefined,
    Object? tags = _undefined,
    Object? uid = _undefined,
    Object? user = _undefined,
  }) => _then(
    Fragment_PersonDetails(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      color: color == _undefined ? _instance.color : (color as int?),
      userCanEdit: userCanEdit == _undefined || userCanEdit == null
          ? _instance.userCanEdit
          : (userCanEdit as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
      photoUpdatedAt: photoUpdatedAt == _undefined
          ? _instance.photoUpdatedAt
          : (photoUpdatedAt as DateTime?),
      blurhash: blurhash == _undefined
          ? _instance.blurhash
          : (blurhash as String?),
      dataCheck: dataCheck == _undefined
          ? _instance.dataCheck
          : (dataCheck as Fragment_DataCheck?),
      address: address == _undefined
          ? _instance.address
          : (address as Fragment_Address?),
      birthdate: birthdate == _undefined
          ? _instance.birthdate
          : (birthdate as DateTime?),
      classMemberships:
          classMemberships == _undefined || classMemberships == null
          ? _instance.classMemberships
          : (classMemberships as List<Fragment_PersonDetails_classMemberships>),
      church: church == _undefined
          ? _instance.church
          : (church as Fragment_Church?),
      contacts: contacts == _undefined || contacts == null
          ? _instance.contacts
          : (contacts as List<Fragment_Contact>),
      college: college == _undefined
          ? _instance.college
          : (college as Fragment_College?),
      family: family == _undefined
          ? _instance.family
          : (family as Fragment_PersonFamily?),
      father: father == _undefined
          ? _instance.father
          : (father as Fragment_PersonDetails_father?),
      gender: gender == _undefined || gender == null
          ? _instance.gender
          : (gender as bool),
      groupMemberships:
          groupMemberships == _undefined || groupMemberships == null
          ? _instance.groupMemberships
          : (groupMemberships as List<Fragment_PersonDetails_groupMemberships>),
      isServant: isServant == _undefined || isServant == null
          ? _instance.isServant
          : (isServant as bool),
      servingChurch: servingChurch == _undefined
          ? _instance.servingChurch
          : (servingChurch as Fragment_Church?),
      serviceType: serviceType == _undefined
          ? _instance.serviceType
          : (serviceType as String?),
      isShammas: isShammas == _undefined || isShammas == null
          ? _instance.isShammas
          : (isShammas as bool),
      workStatus: workStatus == _undefined
          ? _instance.workStatus
          : (workStatus as String?),
      job: job == _undefined ? _instance.job : (job as Fragment_Job?),
      jobDescription: jobDescription == _undefined
          ? _instance.jobDescription
          : (jobDescription as String?),
      latestCall: latestCall == _undefined
          ? _instance.latestCall
          : (latestCall as Fragment_LatestCall?),
      latestConfession: latestConfession == _undefined
          ? _instance.latestConfession
          : (latestConfession as Fragment_LatestConfession?),
      latestEdit: latestEdit == _undefined
          ? _instance.latestEdit
          : (latestEdit as Fragment_LatestEdit?),
      latestKodas: latestKodas == _undefined
          ? _instance.latestKodas
          : (latestKodas as Fragment_LatestKodas?),
      latestVisit: latestVisit == _undefined
          ? _instance.latestVisit
          : (latestVisit as Fragment_LatestVisit?),
      notes: notes == _undefined ? _instance.notes : (notes as String?),
      martialStatus: martialStatus == _undefined || martialStatus == null
          ? _instance.martialStatus
          : (martialStatus as String),
      personType: personType == _undefined
          ? _instance.personType
          : (personType as Fragment_PersonType?),
      qualification: qualification == _undefined
          ? _instance.qualification
          : (qualification as Fragment_Qualification?),
      school: school == _undefined
          ? _instance.school
          : (school as Fragment_School?),
      serviceMemberships:
          serviceMemberships == _undefined || serviceMemberships == null
          ? _instance.serviceMemberships
          : (serviceMemberships
                as List<Fragment_PersonDetails_serviceMemberships>),
      shammasLevel: shammasLevel == _undefined
          ? _instance.shammasLevel
          : (shammasLevel as Fragment_ShammasLevel?),
      state: state == _undefined
          ? _instance.state
          : (state as Fragment_PersonState?),
      studyYear: studyYear == _undefined
          ? _instance.studyYear
          : (studyYear as Fragment_StudyYear?),
      hobbies: hobbies == _undefined || hobbies == null
          ? _instance.hobbies
          : (hobbies as List<Fragment_Hobby>),
      tags: tags == _undefined || tags == null
          ? _instance.tags
          : (tags as List<Fragment_Tag>),
      uid: uid == _undefined ? _instance.uid : (uid as String?),
      user: user == _undefined ? _instance.user : (user as Fragment_User?),
    ),
  );

  CopyWith_Fragment_DataCheck<TRes> get dataCheck {
    final local$dataCheck = _instance.dataCheck;
    return local$dataCheck == null
        ? CopyWith_Fragment_DataCheck.stub(_then(_instance))
        : CopyWith_Fragment_DataCheck(
            local$dataCheck,
            (e) => call(dataCheck: e),
          );
  }

  CopyWith_Fragment_Address<TRes> get address {
    final local$address = _instance.address;
    return local$address == null
        ? CopyWith_Fragment_Address.stub(_then(_instance))
        : CopyWith_Fragment_Address(local$address, (e) => call(address: e));
  }

  TRes classMemberships(
    Iterable<Fragment_PersonDetails_classMemberships> Function(
      Iterable<
        CopyWith_Fragment_PersonDetails_classMemberships<
          Fragment_PersonDetails_classMemberships
        >
      >,
    )
    _fn,
  ) => call(
    classMemberships: _fn(
      _instance.classMemberships.map(
        (e) => CopyWith_Fragment_PersonDetails_classMemberships(e, (i) => i),
      ),
    ).toList(),
  );

  CopyWith_Fragment_Church<TRes> get church {
    final local$church = _instance.church;
    return local$church == null
        ? CopyWith_Fragment_Church.stub(_then(_instance))
        : CopyWith_Fragment_Church(local$church, (e) => call(church: e));
  }

  TRes contacts(
    Iterable<Fragment_Contact> Function(
      Iterable<CopyWith_Fragment_Contact<Fragment_Contact>>,
    )
    _fn,
  ) => call(
    contacts: _fn(
      _instance.contacts.map((e) => CopyWith_Fragment_Contact(e, (i) => i)),
    ).toList(),
  );

  CopyWith_Fragment_College<TRes> get college {
    final local$college = _instance.college;
    return local$college == null
        ? CopyWith_Fragment_College.stub(_then(_instance))
        : CopyWith_Fragment_College(local$college, (e) => call(college: e));
  }

  CopyWith_Fragment_PersonFamily<TRes> get family {
    final local$family = _instance.family;
    return local$family == null
        ? CopyWith_Fragment_PersonFamily.stub(_then(_instance))
        : CopyWith_Fragment_PersonFamily(local$family, (e) => call(family: e));
  }

  CopyWith_Fragment_PersonDetails_father<TRes> get father {
    final local$father = _instance.father;
    return local$father == null
        ? CopyWith_Fragment_PersonDetails_father.stub(_then(_instance))
        : CopyWith_Fragment_PersonDetails_father(
            local$father,
            (e) => call(father: e),
          );
  }

  TRes groupMemberships(
    Iterable<Fragment_PersonDetails_groupMemberships> Function(
      Iterable<
        CopyWith_Fragment_PersonDetails_groupMemberships<
          Fragment_PersonDetails_groupMemberships
        >
      >,
    )
    _fn,
  ) => call(
    groupMemberships: _fn(
      _instance.groupMemberships.map(
        (e) => CopyWith_Fragment_PersonDetails_groupMemberships(e, (i) => i),
      ),
    ).toList(),
  );

  CopyWith_Fragment_Church<TRes> get servingChurch {
    final local$servingChurch = _instance.servingChurch;
    return local$servingChurch == null
        ? CopyWith_Fragment_Church.stub(_then(_instance))
        : CopyWith_Fragment_Church(
            local$servingChurch,
            (e) => call(servingChurch: e),
          );
  }

  CopyWith_Fragment_Job<TRes> get job {
    final local$job = _instance.job;
    return local$job == null
        ? CopyWith_Fragment_Job.stub(_then(_instance))
        : CopyWith_Fragment_Job(local$job, (e) => call(job: e));
  }

  CopyWith_Fragment_LatestCall<TRes> get latestCall {
    final local$latestCall = _instance.latestCall;
    return local$latestCall == null
        ? CopyWith_Fragment_LatestCall.stub(_then(_instance))
        : CopyWith_Fragment_LatestCall(
            local$latestCall,
            (e) => call(latestCall: e),
          );
  }

  CopyWith_Fragment_LatestConfession<TRes> get latestConfession {
    final local$latestConfession = _instance.latestConfession;
    return local$latestConfession == null
        ? CopyWith_Fragment_LatestConfession.stub(_then(_instance))
        : CopyWith_Fragment_LatestConfession(
            local$latestConfession,
            (e) => call(latestConfession: e),
          );
  }

  CopyWith_Fragment_LatestEdit<TRes> get latestEdit {
    final local$latestEdit = _instance.latestEdit;
    return local$latestEdit == null
        ? CopyWith_Fragment_LatestEdit.stub(_then(_instance))
        : CopyWith_Fragment_LatestEdit(
            local$latestEdit,
            (e) => call(latestEdit: e),
          );
  }

  CopyWith_Fragment_LatestKodas<TRes> get latestKodas {
    final local$latestKodas = _instance.latestKodas;
    return local$latestKodas == null
        ? CopyWith_Fragment_LatestKodas.stub(_then(_instance))
        : CopyWith_Fragment_LatestKodas(
            local$latestKodas,
            (e) => call(latestKodas: e),
          );
  }

  CopyWith_Fragment_LatestVisit<TRes> get latestVisit {
    final local$latestVisit = _instance.latestVisit;
    return local$latestVisit == null
        ? CopyWith_Fragment_LatestVisit.stub(_then(_instance))
        : CopyWith_Fragment_LatestVisit(
            local$latestVisit,
            (e) => call(latestVisit: e),
          );
  }

  CopyWith_Fragment_PersonType<TRes> get personType {
    final local$personType = _instance.personType;
    return local$personType == null
        ? CopyWith_Fragment_PersonType.stub(_then(_instance))
        : CopyWith_Fragment_PersonType(
            local$personType,
            (e) => call(personType: e),
          );
  }

  CopyWith_Fragment_Qualification<TRes> get qualification {
    final local$qualification = _instance.qualification;
    return local$qualification == null
        ? CopyWith_Fragment_Qualification.stub(_then(_instance))
        : CopyWith_Fragment_Qualification(
            local$qualification,
            (e) => call(qualification: e),
          );
  }

  CopyWith_Fragment_School<TRes> get school {
    final local$school = _instance.school;
    return local$school == null
        ? CopyWith_Fragment_School.stub(_then(_instance))
        : CopyWith_Fragment_School(local$school, (e) => call(school: e));
  }

  TRes serviceMemberships(
    Iterable<Fragment_PersonDetails_serviceMemberships> Function(
      Iterable<
        CopyWith_Fragment_PersonDetails_serviceMemberships<
          Fragment_PersonDetails_serviceMemberships
        >
      >,
    )
    _fn,
  ) => call(
    serviceMemberships: _fn(
      _instance.serviceMemberships.map(
        (e) => CopyWith_Fragment_PersonDetails_serviceMemberships(e, (i) => i),
      ),
    ).toList(),
  );

  CopyWith_Fragment_ShammasLevel<TRes> get shammasLevel {
    final local$shammasLevel = _instance.shammasLevel;
    return local$shammasLevel == null
        ? CopyWith_Fragment_ShammasLevel.stub(_then(_instance))
        : CopyWith_Fragment_ShammasLevel(
            local$shammasLevel,
            (e) => call(shammasLevel: e),
          );
  }

  CopyWith_Fragment_PersonState<TRes> get state {
    final local$state = _instance.state;
    return local$state == null
        ? CopyWith_Fragment_PersonState.stub(_then(_instance))
        : CopyWith_Fragment_PersonState(local$state, (e) => call(state: e));
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

  TRes hobbies(
    Iterable<Fragment_Hobby> Function(
      Iterable<CopyWith_Fragment_Hobby<Fragment_Hobby>>,
    )
    _fn,
  ) => call(
    hobbies: _fn(
      _instance.hobbies.map((e) => CopyWith_Fragment_Hobby(e, (i) => i)),
    ).toList(),
  );

  TRes tags(
    Iterable<Fragment_Tag> Function(
      Iterable<CopyWith_Fragment_Tag<Fragment_Tag>>,
    )
    _fn,
  ) => call(
    tags: _fn(_instance.tags.map((e) => CopyWith_Fragment_Tag(e, (i) => i)))
        .toList(),
  );

  CopyWith_Fragment_User<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith_Fragment_User.stub(_then(_instance))
        : CopyWith_Fragment_User(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl_Fragment_PersonDetails<TRes>
    implements CopyWith_Fragment_PersonDetails<TRes> {
  _CopyWithStubImpl_Fragment_PersonDetails(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    int? color,
    bool? userCanEdit,
    String? $__typename,
    DateTime? photoUpdatedAt,
    String? blurhash,
    Fragment_DataCheck? dataCheck,
    Fragment_Address? address,
    DateTime? birthdate,
    List<Fragment_PersonDetails_classMemberships>? classMemberships,
    Fragment_Church? church,
    List<Fragment_Contact>? contacts,
    Fragment_College? college,
    Fragment_PersonFamily? family,
    Fragment_PersonDetails_father? father,
    bool? gender,
    List<Fragment_PersonDetails_groupMemberships>? groupMemberships,
    bool? isServant,
    Fragment_Church? servingChurch,
    String? serviceType,
    bool? isShammas,
    String? workStatus,
    Fragment_Job? job,
    String? jobDescription,
    Fragment_LatestCall? latestCall,
    Fragment_LatestConfession? latestConfession,
    Fragment_LatestEdit? latestEdit,
    Fragment_LatestKodas? latestKodas,
    Fragment_LatestVisit? latestVisit,
    String? notes,
    String? martialStatus,
    Fragment_PersonType? personType,
    Fragment_Qualification? qualification,
    Fragment_School? school,
    List<Fragment_PersonDetails_serviceMemberships>? serviceMemberships,
    Fragment_ShammasLevel? shammasLevel,
    Fragment_PersonState? state,
    Fragment_StudyYear? studyYear,
    List<Fragment_Hobby>? hobbies,
    List<Fragment_Tag>? tags,
    String? uid,
    Fragment_User? user,
  }) => _res;

  CopyWith_Fragment_DataCheck<TRes> get dataCheck =>
      CopyWith_Fragment_DataCheck.stub(_res);

  CopyWith_Fragment_Address<TRes> get address =>
      CopyWith_Fragment_Address.stub(_res);

  classMemberships(_fn) => _res;

  CopyWith_Fragment_Church<TRes> get church =>
      CopyWith_Fragment_Church.stub(_res);

  contacts(_fn) => _res;

  CopyWith_Fragment_College<TRes> get college =>
      CopyWith_Fragment_College.stub(_res);

  CopyWith_Fragment_PersonFamily<TRes> get family =>
      CopyWith_Fragment_PersonFamily.stub(_res);

  CopyWith_Fragment_PersonDetails_father<TRes> get father =>
      CopyWith_Fragment_PersonDetails_father.stub(_res);

  groupMemberships(_fn) => _res;

  CopyWith_Fragment_Church<TRes> get servingChurch =>
      CopyWith_Fragment_Church.stub(_res);

  CopyWith_Fragment_Job<TRes> get job => CopyWith_Fragment_Job.stub(_res);

  CopyWith_Fragment_LatestCall<TRes> get latestCall =>
      CopyWith_Fragment_LatestCall.stub(_res);

  CopyWith_Fragment_LatestConfession<TRes> get latestConfession =>
      CopyWith_Fragment_LatestConfession.stub(_res);

  CopyWith_Fragment_LatestEdit<TRes> get latestEdit =>
      CopyWith_Fragment_LatestEdit.stub(_res);

  CopyWith_Fragment_LatestKodas<TRes> get latestKodas =>
      CopyWith_Fragment_LatestKodas.stub(_res);

  CopyWith_Fragment_LatestVisit<TRes> get latestVisit =>
      CopyWith_Fragment_LatestVisit.stub(_res);

  CopyWith_Fragment_PersonType<TRes> get personType =>
      CopyWith_Fragment_PersonType.stub(_res);

  CopyWith_Fragment_Qualification<TRes> get qualification =>
      CopyWith_Fragment_Qualification.stub(_res);

  CopyWith_Fragment_School<TRes> get school =>
      CopyWith_Fragment_School.stub(_res);

  serviceMemberships(_fn) => _res;

  CopyWith_Fragment_ShammasLevel<TRes> get shammasLevel =>
      CopyWith_Fragment_ShammasLevel.stub(_res);

  CopyWith_Fragment_PersonState<TRes> get state =>
      CopyWith_Fragment_PersonState.stub(_res);

  CopyWith_Fragment_StudyYear<TRes> get studyYear =>
      CopyWith_Fragment_StudyYear.stub(_res);

  hobbies(_fn) => _res;

  tags(_fn) => _res;

  CopyWith_Fragment_User<TRes> get user => CopyWith_Fragment_User.stub(_res);
}

const fragmentDefinitionPersonDetails = FragmentDefinitionNode(
  name: NameNode(value: 'PersonDetails'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'Person'), isNonNull: false),
  ),
  directives: [],
  selectionSet: SelectionSetNode(
    selections: [
      FragmentSpreadNode(
        name: NameNode(value: 'Person'),
        directives: [],
      ),
      FieldNode(
        name: NameNode(value: 'address'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'Address'),
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
        name: NameNode(value: 'birthdate'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'classMemberships'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'limit'),
            value: VariableNode(name: NameNode(value: 'classesLimit')),
          ),
          ArgumentNode(
            name: NameNode(value: 'sort'),
            value: ListValueNode(
              values: [
                ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'field'),
                      value: EnumValueNode(name: NameNode(value: 'CLASS_NAME')),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'order'),
                      value: EnumValueNode(name: NameNode(value: 'ASC')),
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
              name: NameNode(value: 'class'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(
                selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'Class'),
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
        name: NameNode(value: 'church'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'Church'),
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
        name: NameNode(value: 'contacts'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'sort'),
            value: ListValueNode(
              values: [
                ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'field'),
                      value: EnumValueNode(
                        name: NameNode(value: 'IS_MAIN_PHONE'),
                      ),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'order'),
                      value: EnumValueNode(name: NameNode(value: 'DESC')),
                    ),
                  ],
                ),
                ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'field'),
                      value: EnumValueNode(name: NameNode(value: 'CREATED_AT')),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'order'),
                      value: EnumValueNode(name: NameNode(value: 'ASC')),
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
            FragmentSpreadNode(
              name: NameNode(value: 'Contact'),
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
        name: NameNode(value: 'college'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'College'),
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
        name: NameNode(value: 'family'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'PersonFamily'),
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
        name: NameNode(value: 'father'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'Father'),
              directives: [],
            ),
            FieldNode(
              name: NameNode(value: 'church'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(
                selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'Church'),
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
        name: NameNode(value: 'gender'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'groupMemberships'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'limit'),
            value: VariableNode(name: NameNode(value: 'groupsLimit')),
          ),
          ArgumentNode(
            name: NameNode(value: 'sort'),
            value: ListValueNode(
              values: [
                ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'field'),
                      value: EnumValueNode(name: NameNode(value: 'GROUP_NAME')),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'order'),
                      value: EnumValueNode(name: NameNode(value: 'ASC')),
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
              name: NameNode(value: 'groupId'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'group'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(
                selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'Group'),
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
        name: NameNode(value: 'isServant'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'servingChurch'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'Church'),
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
        name: NameNode(value: 'serviceType'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'isShammas'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'workStatus'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'job'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'Job'),
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
        name: NameNode(value: 'jobDescription'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'latestCall'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'LatestCall'),
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
        name: NameNode(value: 'latestConfession'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'LatestConfession'),
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
        name: NameNode(value: 'latestEdit'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'LatestEdit'),
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
        name: NameNode(value: 'latestKodas'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'LatestKodas'),
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
        name: NameNode(value: 'latestVisit'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'LatestVisit'),
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
        name: NameNode(value: 'notes'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'martialStatus'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'personType'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'PersonType'),
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
        name: NameNode(value: 'qualification'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'Qualification'),
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
        name: NameNode(value: 'school'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'School'),
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
        name: NameNode(value: 'serviceMemberships'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'limit'),
            value: VariableNode(name: NameNode(value: 'servicesLimit')),
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
                        name: NameNode(value: 'SERVICE_NAME'),
                      ),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'order'),
                      value: EnumValueNode(name: NameNode(value: 'ASC')),
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
              name: NameNode(value: 'serviceId'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'service'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(
                selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'ServiceWithStudyYears'),
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
        name: NameNode(value: 'shammasLevel'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'ShammasLevel'),
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
        name: NameNode(value: 'state'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'PersonState'),
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
        name: NameNode(value: 'studyYear'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'StudyYear'),
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
        name: NameNode(value: 'hobbies'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'sort'),
            value: ListValueNode(
              values: [
                ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'field'),
                      value: EnumValueNode(name: NameNode(value: 'NAME')),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'order'),
                      value: EnumValueNode(name: NameNode(value: 'ASC')),
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
            FragmentSpreadNode(
              name: NameNode(value: 'Hobby'),
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
        name: NameNode(value: 'tags'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'sort'),
            value: ListValueNode(
              values: [
                ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'field'),
                      value: EnumValueNode(name: NameNode(value: 'NAME')),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'order'),
                      value: EnumValueNode(name: NameNode(value: 'ASC')),
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
            FragmentSpreadNode(
              name: NameNode(value: 'Tag'),
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
        name: NameNode(value: 'uid'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'user'),
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
);
const documentNodeFragmentPersonDetails = DocumentNode(
  definitions: [
    fragmentDefinitionPersonDetails,
    fragmentDefinitionPerson,
    fragmentDefinitionPersonNoPhoto,
    fragmentDefinitionDataCheck,
    fragmentDefinitionAddress,
    fragmentDefinitionArea,
    fragmentDefinitionDistrict,
    fragmentDefinitionStreet,
    fragmentDefinitionClass,
    fragmentDefinitionClassNoPhoto,
    fragmentDefinitionChurch,
    fragmentDefinitionContact,
    fragmentDefinitionCollege,
    fragmentDefinitionPersonFamily,
    fragmentDefinitionFather,
    fragmentDefinitionGroup,
    fragmentDefinitionGroupNoPhoto,
    fragmentDefinitionJob,
    fragmentDefinitionLatestCall,
    fragmentDefinitionUser,
    fragmentDefinitionLatestConfession,
    fragmentDefinitionLatestEdit,
    fragmentDefinitionLatestKodas,
    fragmentDefinitionLatestVisit,
    fragmentDefinitionPersonType,
    fragmentDefinitionQualification,
    fragmentDefinitionSchool,
    fragmentDefinitionServiceWithStudyYears,
    fragmentDefinitionService,
    fragmentDefinitionServiceNoPhoto,
    fragmentDefinitionStudyYear,
    fragmentDefinitionShammasLevel,
    fragmentDefinitionPersonState,
    fragmentDefinitionHobby,
    fragmentDefinitionTag,
  ],
);

class Fragment_PersonDetails_classMemberships {
  Fragment_PersonDetails_classMemberships({
    required this.id,
    this.$class,
    this.$__typename = 'ClassMembership',
  });

  factory Fragment_PersonDetails_classMemberships.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$$class = json['class'];
    final l$$__typename = json['__typename'];
    return Fragment_PersonDetails_classMemberships(
      id: (l$id as String),
      $class: l$$class == null
          ? null
          : Fragment_Class.fromJson((l$$class as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final Fragment_Class? $class;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$class = $class;
    _resultData['class'] = l$$class?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$class = $class;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$$class, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_PersonDetails_classMemberships ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$$class = $class;
    final lOther$$class = other.$class;
    if (l$$class != lOther$$class) {
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

extension UtilityExtension_Fragment_PersonDetails_classMemberships
    on Fragment_PersonDetails_classMemberships {
  CopyWith_Fragment_PersonDetails_classMemberships<
    Fragment_PersonDetails_classMemberships
  >
  get copyWith =>
      CopyWith_Fragment_PersonDetails_classMemberships(this, (i) => i);
}

abstract class CopyWith_Fragment_PersonDetails_classMemberships<TRes> {
  factory CopyWith_Fragment_PersonDetails_classMemberships(
    Fragment_PersonDetails_classMemberships instance,
    TRes Function(Fragment_PersonDetails_classMemberships) then,
  ) = _CopyWithImpl_Fragment_PersonDetails_classMemberships;

  factory CopyWith_Fragment_PersonDetails_classMemberships.stub(TRes res) =
      _CopyWithStubImpl_Fragment_PersonDetails_classMemberships;

  TRes call({String? id, Fragment_Class? $class, String? $__typename});
  CopyWith_Fragment_Class<TRes> get $class;
}

class _CopyWithImpl_Fragment_PersonDetails_classMemberships<TRes>
    implements CopyWith_Fragment_PersonDetails_classMemberships<TRes> {
  _CopyWithImpl_Fragment_PersonDetails_classMemberships(
    this._instance,
    this._then,
  );

  final Fragment_PersonDetails_classMemberships _instance;

  final TRes Function(Fragment_PersonDetails_classMemberships) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $class = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_PersonDetails_classMemberships(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      $class: $class == _undefined
          ? _instance.$class
          : ($class as Fragment_Class?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Fragment_Class<TRes> get $class {
    final local$$class = _instance.$class;
    return local$$class == null
        ? CopyWith_Fragment_Class.stub(_then(_instance))
        : CopyWith_Fragment_Class(local$$class, (e) => call($class: e));
  }
}

class _CopyWithStubImpl_Fragment_PersonDetails_classMemberships<TRes>
    implements CopyWith_Fragment_PersonDetails_classMemberships<TRes> {
  _CopyWithStubImpl_Fragment_PersonDetails_classMemberships(this._res);

  TRes _res;

  call({String? id, Fragment_Class? $class, String? $__typename}) => _res;

  CopyWith_Fragment_Class<TRes> get $class =>
      CopyWith_Fragment_Class.stub(_res);
}

class Fragment_PersonDetails_father implements Fragment_Father {
  Fragment_PersonDetails_father({
    required this.id,
    required this.name,
    this.churchId,
    required this.isHidden,
    this.$__typename = 'Father',
    this.church,
  });

  factory Fragment_PersonDetails_father.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$churchId = json['churchId'];
    final l$isHidden = json['isHidden'];
    final l$$__typename = json['__typename'];
    final l$church = json['church'];
    return Fragment_PersonDetails_father(
      id: (l$id as String),
      name: (l$name as String),
      churchId: (l$churchId as String?),
      isHidden: (l$isHidden as bool),
      $__typename: (l$$__typename as String),
      church: l$church == null
          ? null
          : Fragment_Church.fromJson((l$church as Map<String, dynamic>)),
    );
  }

  final String id;

  final String name;

  final String? churchId;

  final bool isHidden;

  final String $__typename;

  final Fragment_Church? church;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$churchId = churchId;
    _resultData['churchId'] = l$churchId;
    final l$isHidden = isHidden;
    _resultData['isHidden'] = l$isHidden;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$church = church;
    _resultData['church'] = l$church?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$churchId = churchId;
    final l$isHidden = isHidden;
    final l$$__typename = $__typename;
    final l$church = church;
    return Object.hashAll([
      l$id,
      l$name,
      l$churchId,
      l$isHidden,
      l$$__typename,
      l$church,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_PersonDetails_father ||
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
    final l$churchId = churchId;
    final lOther$churchId = other.churchId;
    if (l$churchId != lOther$churchId) {
      return false;
    }
    final l$isHidden = isHidden;
    final lOther$isHidden = other.isHidden;
    if (l$isHidden != lOther$isHidden) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$church = church;
    final lOther$church = other.church;
    if (l$church != lOther$church) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Fragment_PersonDetails_father
    on Fragment_PersonDetails_father {
  CopyWith_Fragment_PersonDetails_father<Fragment_PersonDetails_father>
  get copyWith => CopyWith_Fragment_PersonDetails_father(this, (i) => i);
}

abstract class CopyWith_Fragment_PersonDetails_father<TRes> {
  factory CopyWith_Fragment_PersonDetails_father(
    Fragment_PersonDetails_father instance,
    TRes Function(Fragment_PersonDetails_father) then,
  ) = _CopyWithImpl_Fragment_PersonDetails_father;

  factory CopyWith_Fragment_PersonDetails_father.stub(TRes res) =
      _CopyWithStubImpl_Fragment_PersonDetails_father;

  TRes call({
    String? id,
    String? name,
    String? churchId,
    bool? isHidden,
    String? $__typename,
    Fragment_Church? church,
  });
  CopyWith_Fragment_Church<TRes> get church;
}

class _CopyWithImpl_Fragment_PersonDetails_father<TRes>
    implements CopyWith_Fragment_PersonDetails_father<TRes> {
  _CopyWithImpl_Fragment_PersonDetails_father(this._instance, this._then);

  final Fragment_PersonDetails_father _instance;

  final TRes Function(Fragment_PersonDetails_father) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? churchId = _undefined,
    Object? isHidden = _undefined,
    Object? $__typename = _undefined,
    Object? church = _undefined,
  }) => _then(
    Fragment_PersonDetails_father(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      churchId: churchId == _undefined
          ? _instance.churchId
          : (churchId as String?),
      isHidden: isHidden == _undefined || isHidden == null
          ? _instance.isHidden
          : (isHidden as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
      church: church == _undefined
          ? _instance.church
          : (church as Fragment_Church?),
    ),
  );

  CopyWith_Fragment_Church<TRes> get church {
    final local$church = _instance.church;
    return local$church == null
        ? CopyWith_Fragment_Church.stub(_then(_instance))
        : CopyWith_Fragment_Church(local$church, (e) => call(church: e));
  }
}

class _CopyWithStubImpl_Fragment_PersonDetails_father<TRes>
    implements CopyWith_Fragment_PersonDetails_father<TRes> {
  _CopyWithStubImpl_Fragment_PersonDetails_father(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? churchId,
    bool? isHidden,
    String? $__typename,
    Fragment_Church? church,
  }) => _res;

  CopyWith_Fragment_Church<TRes> get church =>
      CopyWith_Fragment_Church.stub(_res);
}

class Fragment_PersonDetails_groupMemberships {
  Fragment_PersonDetails_groupMemberships({
    required this.groupId,
    this.group,
    this.$__typename = 'GroupMembership',
  });

  factory Fragment_PersonDetails_groupMemberships.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$groupId = json['groupId'];
    final l$group = json['group'];
    final l$$__typename = json['__typename'];
    return Fragment_PersonDetails_groupMemberships(
      groupId: (l$groupId as String),
      group: l$group == null
          ? null
          : Fragment_Group.fromJson((l$group as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String groupId;

  final Fragment_Group? group;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$groupId = groupId;
    _resultData['groupId'] = l$groupId;
    final l$group = group;
    _resultData['group'] = l$group?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$groupId = groupId;
    final l$group = group;
    final l$$__typename = $__typename;
    return Object.hashAll([l$groupId, l$group, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_PersonDetails_groupMemberships ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$groupId = groupId;
    final lOther$groupId = other.groupId;
    if (l$groupId != lOther$groupId) {
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
    return true;
  }
}

extension UtilityExtension_Fragment_PersonDetails_groupMemberships
    on Fragment_PersonDetails_groupMemberships {
  CopyWith_Fragment_PersonDetails_groupMemberships<
    Fragment_PersonDetails_groupMemberships
  >
  get copyWith =>
      CopyWith_Fragment_PersonDetails_groupMemberships(this, (i) => i);
}

abstract class CopyWith_Fragment_PersonDetails_groupMemberships<TRes> {
  factory CopyWith_Fragment_PersonDetails_groupMemberships(
    Fragment_PersonDetails_groupMemberships instance,
    TRes Function(Fragment_PersonDetails_groupMemberships) then,
  ) = _CopyWithImpl_Fragment_PersonDetails_groupMemberships;

  factory CopyWith_Fragment_PersonDetails_groupMemberships.stub(TRes res) =
      _CopyWithStubImpl_Fragment_PersonDetails_groupMemberships;

  TRes call({String? groupId, Fragment_Group? group, String? $__typename});
  CopyWith_Fragment_Group<TRes> get group;
}

class _CopyWithImpl_Fragment_PersonDetails_groupMemberships<TRes>
    implements CopyWith_Fragment_PersonDetails_groupMemberships<TRes> {
  _CopyWithImpl_Fragment_PersonDetails_groupMemberships(
    this._instance,
    this._then,
  );

  final Fragment_PersonDetails_groupMemberships _instance;

  final TRes Function(Fragment_PersonDetails_groupMemberships) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? groupId = _undefined,
    Object? group = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_PersonDetails_groupMemberships(
      groupId: groupId == _undefined || groupId == null
          ? _instance.groupId
          : (groupId as String),
      group: group == _undefined ? _instance.group : (group as Fragment_Group?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Fragment_Group<TRes> get group {
    final local$group = _instance.group;
    return local$group == null
        ? CopyWith_Fragment_Group.stub(_then(_instance))
        : CopyWith_Fragment_Group(local$group, (e) => call(group: e));
  }
}

class _CopyWithStubImpl_Fragment_PersonDetails_groupMemberships<TRes>
    implements CopyWith_Fragment_PersonDetails_groupMemberships<TRes> {
  _CopyWithStubImpl_Fragment_PersonDetails_groupMemberships(this._res);

  TRes _res;

  call({String? groupId, Fragment_Group? group, String? $__typename}) => _res;

  CopyWith_Fragment_Group<TRes> get group => CopyWith_Fragment_Group.stub(_res);
}

class Fragment_PersonDetails_serviceMemberships {
  Fragment_PersonDetails_serviceMemberships({
    required this.serviceId,
    this.service,
    this.$__typename = 'ServiceMembership',
  });

  factory Fragment_PersonDetails_serviceMemberships.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$serviceId = json['serviceId'];
    final l$service = json['service'];
    final l$$__typename = json['__typename'];
    return Fragment_PersonDetails_serviceMemberships(
      serviceId: (l$serviceId as String),
      service: l$service == null
          ? null
          : Fragment_ServiceWithStudyYears.fromJson(
              (l$service as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String serviceId;

  final Fragment_ServiceWithStudyYears? service;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$serviceId = serviceId;
    _resultData['serviceId'] = l$serviceId;
    final l$service = service;
    _resultData['service'] = l$service?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$serviceId = serviceId;
    final l$service = service;
    final l$$__typename = $__typename;
    return Object.hashAll([l$serviceId, l$service, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_PersonDetails_serviceMemberships ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$serviceId = serviceId;
    final lOther$serviceId = other.serviceId;
    if (l$serviceId != lOther$serviceId) {
      return false;
    }
    final l$service = service;
    final lOther$service = other.service;
    if (l$service != lOther$service) {
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

extension UtilityExtension_Fragment_PersonDetails_serviceMemberships
    on Fragment_PersonDetails_serviceMemberships {
  CopyWith_Fragment_PersonDetails_serviceMemberships<
    Fragment_PersonDetails_serviceMemberships
  >
  get copyWith =>
      CopyWith_Fragment_PersonDetails_serviceMemberships(this, (i) => i);
}

abstract class CopyWith_Fragment_PersonDetails_serviceMemberships<TRes> {
  factory CopyWith_Fragment_PersonDetails_serviceMemberships(
    Fragment_PersonDetails_serviceMemberships instance,
    TRes Function(Fragment_PersonDetails_serviceMemberships) then,
  ) = _CopyWithImpl_Fragment_PersonDetails_serviceMemberships;

  factory CopyWith_Fragment_PersonDetails_serviceMemberships.stub(TRes res) =
      _CopyWithStubImpl_Fragment_PersonDetails_serviceMemberships;

  TRes call({
    String? serviceId,
    Fragment_ServiceWithStudyYears? service,
    String? $__typename,
  });
  CopyWith_Fragment_ServiceWithStudyYears<TRes> get service;
}

class _CopyWithImpl_Fragment_PersonDetails_serviceMemberships<TRes>
    implements CopyWith_Fragment_PersonDetails_serviceMemberships<TRes> {
  _CopyWithImpl_Fragment_PersonDetails_serviceMemberships(
    this._instance,
    this._then,
  );

  final Fragment_PersonDetails_serviceMemberships _instance;

  final TRes Function(Fragment_PersonDetails_serviceMemberships) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? serviceId = _undefined,
    Object? service = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_PersonDetails_serviceMemberships(
      serviceId: serviceId == _undefined || serviceId == null
          ? _instance.serviceId
          : (serviceId as String),
      service: service == _undefined
          ? _instance.service
          : (service as Fragment_ServiceWithStudyYears?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Fragment_ServiceWithStudyYears<TRes> get service {
    final local$service = _instance.service;
    return local$service == null
        ? CopyWith_Fragment_ServiceWithStudyYears.stub(_then(_instance))
        : CopyWith_Fragment_ServiceWithStudyYears(
            local$service,
            (e) => call(service: e),
          );
  }
}

class _CopyWithStubImpl_Fragment_PersonDetails_serviceMemberships<TRes>
    implements CopyWith_Fragment_PersonDetails_serviceMemberships<TRes> {
  _CopyWithStubImpl_Fragment_PersonDetails_serviceMemberships(this._res);

  TRes _res;

  call({
    String? serviceId,
    Fragment_ServiceWithStudyYears? service,
    String? $__typename,
  }) => _res;

  CopyWith_Fragment_ServiceWithStudyYears<TRes> get service =>
      CopyWith_Fragment_ServiceWithStudyYears.stub(_res);
}

class Fragment_PersonFamily {
  Fragment_PersonFamily({
    required this.id,
    required this.name,
    this.color,
    required this.userCanEdit,
    this.photoUpdatedAt,
    this.blurhash,
    this.dataCheck,
    this.$__typename = 'Family',
  });

  factory Fragment_PersonFamily.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$userCanEdit = json['userCanEdit'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$blurhash = json['blurhash'];
    final l$dataCheck = json['dataCheck'];
    final l$$__typename = json['__typename'];
    return Fragment_PersonFamily(
      id: (l$id as String),
      name: (l$name as String),
      color: (l$color as int?),
      userCanEdit: (l$userCanEdit as bool),
      photoUpdatedAt: l$photoUpdatedAt == null
          ? null
          : tstzFromString(l$photoUpdatedAt),
      blurhash: (l$blurhash as String?),
      dataCheck: l$dataCheck == null
          ? null
          : Fragment_DataCheck.fromJson((l$dataCheck as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final int? color;

  final bool userCanEdit;

  final DateTime? photoUpdatedAt;

  final String? blurhash;

  final Fragment_DataCheck? dataCheck;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$userCanEdit = userCanEdit;
    _resultData['userCanEdit'] = l$userCanEdit;
    final l$photoUpdatedAt = photoUpdatedAt;
    _resultData['photoUpdatedAt'] = l$photoUpdatedAt == null
        ? null
        : tstzToString(l$photoUpdatedAt);
    final l$blurhash = blurhash;
    _resultData['blurhash'] = l$blurhash;
    final l$dataCheck = dataCheck;
    _resultData['dataCheck'] = l$dataCheck?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$userCanEdit = userCanEdit;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$blurhash = blurhash;
    final l$dataCheck = dataCheck;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$userCanEdit,
      l$photoUpdatedAt,
      l$blurhash,
      l$dataCheck,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_PersonFamily || runtimeType != other.runtimeType) {
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
    final l$color = color;
    final lOther$color = other.color;
    if (l$color != lOther$color) {
      return false;
    }
    final l$userCanEdit = userCanEdit;
    final lOther$userCanEdit = other.userCanEdit;
    if (l$userCanEdit != lOther$userCanEdit) {
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
    final l$dataCheck = dataCheck;
    final lOther$dataCheck = other.dataCheck;
    if (l$dataCheck != lOther$dataCheck) {
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

extension UtilityExtension_Fragment_PersonFamily on Fragment_PersonFamily {
  CopyWith_Fragment_PersonFamily<Fragment_PersonFamily> get copyWith =>
      CopyWith_Fragment_PersonFamily(this, (i) => i);
}

abstract class CopyWith_Fragment_PersonFamily<TRes> {
  factory CopyWith_Fragment_PersonFamily(
    Fragment_PersonFamily instance,
    TRes Function(Fragment_PersonFamily) then,
  ) = _CopyWithImpl_Fragment_PersonFamily;

  factory CopyWith_Fragment_PersonFamily.stub(TRes res) =
      _CopyWithStubImpl_Fragment_PersonFamily;

  TRes call({
    String? id,
    String? name,
    int? color,
    bool? userCanEdit,
    DateTime? photoUpdatedAt,
    String? blurhash,
    Fragment_DataCheck? dataCheck,
    String? $__typename,
  });
  CopyWith_Fragment_DataCheck<TRes> get dataCheck;
}

class _CopyWithImpl_Fragment_PersonFamily<TRes>
    implements CopyWith_Fragment_PersonFamily<TRes> {
  _CopyWithImpl_Fragment_PersonFamily(this._instance, this._then);

  final Fragment_PersonFamily _instance;

  final TRes Function(Fragment_PersonFamily) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? userCanEdit = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? blurhash = _undefined,
    Object? dataCheck = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_PersonFamily(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      color: color == _undefined ? _instance.color : (color as int?),
      userCanEdit: userCanEdit == _undefined || userCanEdit == null
          ? _instance.userCanEdit
          : (userCanEdit as bool),
      photoUpdatedAt: photoUpdatedAt == _undefined
          ? _instance.photoUpdatedAt
          : (photoUpdatedAt as DateTime?),
      blurhash: blurhash == _undefined
          ? _instance.blurhash
          : (blurhash as String?),
      dataCheck: dataCheck == _undefined
          ? _instance.dataCheck
          : (dataCheck as Fragment_DataCheck?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Fragment_DataCheck<TRes> get dataCheck {
    final local$dataCheck = _instance.dataCheck;
    return local$dataCheck == null
        ? CopyWith_Fragment_DataCheck.stub(_then(_instance))
        : CopyWith_Fragment_DataCheck(
            local$dataCheck,
            (e) => call(dataCheck: e),
          );
  }
}

class _CopyWithStubImpl_Fragment_PersonFamily<TRes>
    implements CopyWith_Fragment_PersonFamily<TRes> {
  _CopyWithStubImpl_Fragment_PersonFamily(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    int? color,
    bool? userCanEdit,
    DateTime? photoUpdatedAt,
    String? blurhash,
    Fragment_DataCheck? dataCheck,
    String? $__typename,
  }) => _res;

  CopyWith_Fragment_DataCheck<TRes> get dataCheck =>
      CopyWith_Fragment_DataCheck.stub(_res);
}

const fragmentDefinitionPersonFamily = FragmentDefinitionNode(
  name: NameNode(value: 'PersonFamily'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'Family'), isNonNull: false),
  ),
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
        name: NameNode(value: 'color'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'userCanEdit'),
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
        name: NameNode(value: 'dataCheck'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'DataCheck'),
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
);
const documentNodeFragmentPersonFamily = DocumentNode(
  definitions: [fragmentDefinitionPersonFamily, fragmentDefinitionDataCheck],
);

class Fragment_PersonMemberships {
  Fragment_PersonMemberships({
    required this.id,
    required this.name,
    required this.userCanEdit,
    required this.serviceMemberships,
    required this.classMemberships,
    required this.groupMemberships,
    this.$__typename = 'Person',
  });

  factory Fragment_PersonMemberships.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$userCanEdit = json['userCanEdit'];
    final l$serviceMemberships = json['serviceMemberships'];
    final l$classMemberships = json['classMemberships'];
    final l$groupMemberships = json['groupMemberships'];
    final l$$__typename = json['__typename'];
    return Fragment_PersonMemberships(
      id: (l$id as String),
      name: (l$name as String),
      userCanEdit: (l$userCanEdit as bool),
      serviceMemberships: (l$serviceMemberships as List<dynamic>)
          .map(
            (e) => Fragment_PersonMemberships_serviceMemberships.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      classMemberships: (l$classMemberships as List<dynamic>)
          .map(
            (e) => Fragment_PersonMemberships_classMemberships.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      groupMemberships: (l$groupMemberships as List<dynamic>)
          .map(
            (e) => Fragment_PersonMemberships_groupMemberships.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final bool userCanEdit;

  final List<Fragment_PersonMemberships_serviceMemberships> serviceMemberships;

  final List<Fragment_PersonMemberships_classMemberships> classMemberships;

  final List<Fragment_PersonMemberships_groupMemberships> groupMemberships;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$userCanEdit = userCanEdit;
    _resultData['userCanEdit'] = l$userCanEdit;
    final l$serviceMemberships = serviceMemberships;
    _resultData['serviceMemberships'] = l$serviceMemberships
        .map((e) => e.toJson())
        .toList();
    final l$classMemberships = classMemberships;
    _resultData['classMemberships'] = l$classMemberships
        .map((e) => e.toJson())
        .toList();
    final l$groupMemberships = groupMemberships;
    _resultData['groupMemberships'] = l$groupMemberships
        .map((e) => e.toJson())
        .toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$userCanEdit = userCanEdit;
    final l$serviceMemberships = serviceMemberships;
    final l$classMemberships = classMemberships;
    final l$groupMemberships = groupMemberships;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$userCanEdit,
      Object.hashAll(l$serviceMemberships.map((v) => v)),
      Object.hashAll(l$classMemberships.map((v) => v)),
      Object.hashAll(l$groupMemberships.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_PersonMemberships ||
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
    final l$userCanEdit = userCanEdit;
    final lOther$userCanEdit = other.userCanEdit;
    if (l$userCanEdit != lOther$userCanEdit) {
      return false;
    }
    final l$serviceMemberships = serviceMemberships;
    final lOther$serviceMemberships = other.serviceMemberships;
    if (l$serviceMemberships.length != lOther$serviceMemberships.length) {
      return false;
    }
    for (int i = 0; i < l$serviceMemberships.length; i++) {
      final l$serviceMemberships$entry = l$serviceMemberships[i];
      final lOther$serviceMemberships$entry = lOther$serviceMemberships[i];
      if (l$serviceMemberships$entry != lOther$serviceMemberships$entry) {
        return false;
      }
    }
    final l$classMemberships = classMemberships;
    final lOther$classMemberships = other.classMemberships;
    if (l$classMemberships.length != lOther$classMemberships.length) {
      return false;
    }
    for (int i = 0; i < l$classMemberships.length; i++) {
      final l$classMemberships$entry = l$classMemberships[i];
      final lOther$classMemberships$entry = lOther$classMemberships[i];
      if (l$classMemberships$entry != lOther$classMemberships$entry) {
        return false;
      }
    }
    final l$groupMemberships = groupMemberships;
    final lOther$groupMemberships = other.groupMemberships;
    if (l$groupMemberships.length != lOther$groupMemberships.length) {
      return false;
    }
    for (int i = 0; i < l$groupMemberships.length; i++) {
      final l$groupMemberships$entry = l$groupMemberships[i];
      final lOther$groupMemberships$entry = lOther$groupMemberships[i];
      if (l$groupMemberships$entry != lOther$groupMemberships$entry) {
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

extension UtilityExtension_Fragment_PersonMemberships
    on Fragment_PersonMemberships {
  CopyWith_Fragment_PersonMemberships<Fragment_PersonMemberships>
  get copyWith => CopyWith_Fragment_PersonMemberships(this, (i) => i);
}

abstract class CopyWith_Fragment_PersonMemberships<TRes> {
  factory CopyWith_Fragment_PersonMemberships(
    Fragment_PersonMemberships instance,
    TRes Function(Fragment_PersonMemberships) then,
  ) = _CopyWithImpl_Fragment_PersonMemberships;

  factory CopyWith_Fragment_PersonMemberships.stub(TRes res) =
      _CopyWithStubImpl_Fragment_PersonMemberships;

  TRes call({
    String? id,
    String? name,
    bool? userCanEdit,
    List<Fragment_PersonMemberships_serviceMemberships>? serviceMemberships,
    List<Fragment_PersonMemberships_classMemberships>? classMemberships,
    List<Fragment_PersonMemberships_groupMemberships>? groupMemberships,
    String? $__typename,
  });
  TRes serviceMemberships(
    Iterable<Fragment_PersonMemberships_serviceMemberships> Function(
      Iterable<
        CopyWith_Fragment_PersonMemberships_serviceMemberships<
          Fragment_PersonMemberships_serviceMemberships
        >
      >,
    )
    _fn,
  );
  TRes classMemberships(
    Iterable<Fragment_PersonMemberships_classMemberships> Function(
      Iterable<
        CopyWith_Fragment_PersonMemberships_classMemberships<
          Fragment_PersonMemberships_classMemberships
        >
      >,
    )
    _fn,
  );
  TRes groupMemberships(
    Iterable<Fragment_PersonMemberships_groupMemberships> Function(
      Iterable<
        CopyWith_Fragment_PersonMemberships_groupMemberships<
          Fragment_PersonMemberships_groupMemberships
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl_Fragment_PersonMemberships<TRes>
    implements CopyWith_Fragment_PersonMemberships<TRes> {
  _CopyWithImpl_Fragment_PersonMemberships(this._instance, this._then);

  final Fragment_PersonMemberships _instance;

  final TRes Function(Fragment_PersonMemberships) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? userCanEdit = _undefined,
    Object? serviceMemberships = _undefined,
    Object? classMemberships = _undefined,
    Object? groupMemberships = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_PersonMemberships(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      userCanEdit: userCanEdit == _undefined || userCanEdit == null
          ? _instance.userCanEdit
          : (userCanEdit as bool),
      serviceMemberships:
          serviceMemberships == _undefined || serviceMemberships == null
          ? _instance.serviceMemberships
          : (serviceMemberships
                as List<Fragment_PersonMemberships_serviceMemberships>),
      classMemberships:
          classMemberships == _undefined || classMemberships == null
          ? _instance.classMemberships
          : (classMemberships
                as List<Fragment_PersonMemberships_classMemberships>),
      groupMemberships:
          groupMemberships == _undefined || groupMemberships == null
          ? _instance.groupMemberships
          : (groupMemberships
                as List<Fragment_PersonMemberships_groupMemberships>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes serviceMemberships(
    Iterable<Fragment_PersonMemberships_serviceMemberships> Function(
      Iterable<
        CopyWith_Fragment_PersonMemberships_serviceMemberships<
          Fragment_PersonMemberships_serviceMemberships
        >
      >,
    )
    _fn,
  ) => call(
    serviceMemberships: _fn(
      _instance.serviceMemberships.map(
        (e) =>
            CopyWith_Fragment_PersonMemberships_serviceMemberships(e, (i) => i),
      ),
    ).toList(),
  );

  TRes classMemberships(
    Iterable<Fragment_PersonMemberships_classMemberships> Function(
      Iterable<
        CopyWith_Fragment_PersonMemberships_classMemberships<
          Fragment_PersonMemberships_classMemberships
        >
      >,
    )
    _fn,
  ) => call(
    classMemberships: _fn(
      _instance.classMemberships.map(
        (e) =>
            CopyWith_Fragment_PersonMemberships_classMemberships(e, (i) => i),
      ),
    ).toList(),
  );

  TRes groupMemberships(
    Iterable<Fragment_PersonMemberships_groupMemberships> Function(
      Iterable<
        CopyWith_Fragment_PersonMemberships_groupMemberships<
          Fragment_PersonMemberships_groupMemberships
        >
      >,
    )
    _fn,
  ) => call(
    groupMemberships: _fn(
      _instance.groupMemberships.map(
        (e) =>
            CopyWith_Fragment_PersonMemberships_groupMemberships(e, (i) => i),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl_Fragment_PersonMemberships<TRes>
    implements CopyWith_Fragment_PersonMemberships<TRes> {
  _CopyWithStubImpl_Fragment_PersonMemberships(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    bool? userCanEdit,
    List<Fragment_PersonMemberships_serviceMemberships>? serviceMemberships,
    List<Fragment_PersonMemberships_classMemberships>? classMemberships,
    List<Fragment_PersonMemberships_groupMemberships>? groupMemberships,
    String? $__typename,
  }) => _res;

  serviceMemberships(_fn) => _res;

  classMemberships(_fn) => _res;

  groupMemberships(_fn) => _res;
}

const fragmentDefinitionPersonMemberships = FragmentDefinitionNode(
  name: NameNode(value: 'PersonMemberships'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'Person'), isNonNull: false),
  ),
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
        name: NameNode(value: 'userCanEdit'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'serviceMemberships'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'sort'),
            value: ListValueNode(
              values: [
                ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'field'),
                      value: EnumValueNode(
                        name: NameNode(value: 'SERVICE_NAME'),
                      ),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'order'),
                      value: EnumValueNode(name: NameNode(value: 'ASC')),
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
              name: NameNode(value: 'serviceId'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'service'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(
                selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'ServiceWithStudyYears'),
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
        name: NameNode(value: 'classMemberships'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'sort'),
            value: ListValueNode(
              values: [
                ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'field'),
                      value: EnumValueNode(name: NameNode(value: 'CLASS_NAME')),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'order'),
                      value: EnumValueNode(name: NameNode(value: 'ASC')),
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
              name: NameNode(value: 'class'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(
                selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'Class'),
                    directives: [],
                  ),
                  FieldNode(
                    name: NameNode(value: 'service'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(
                      selections: [
                        FragmentSpreadNode(
                          name: NameNode(value: 'ServiceWithStudyYears'),
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
        name: NameNode(value: 'groupMemberships'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'sort'),
            value: ListValueNode(
              values: [
                ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'field'),
                      value: EnumValueNode(name: NameNode(value: 'GROUP_NAME')),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'order'),
                      value: EnumValueNode(name: NameNode(value: 'ASC')),
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
              name: NameNode(value: 'groupId'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'group'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(
                selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'Group'),
                    directives: [],
                  ),
                  FieldNode(
                    name: NameNode(value: 'service'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(
                      selections: [
                        FragmentSpreadNode(
                          name: NameNode(value: 'ServiceWithStudyYears'),
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
);
const documentNodeFragmentPersonMemberships = DocumentNode(
  definitions: [
    fragmentDefinitionPersonMemberships,
    fragmentDefinitionServiceWithStudyYears,
    fragmentDefinitionService,
    fragmentDefinitionServiceNoPhoto,
    fragmentDefinitionStudyYear,
    fragmentDefinitionClass,
    fragmentDefinitionClassNoPhoto,
    fragmentDefinitionGroup,
    fragmentDefinitionGroupNoPhoto,
  ],
);

class Fragment_PersonMemberships_serviceMemberships {
  Fragment_PersonMemberships_serviceMemberships({
    required this.serviceId,
    this.service,
    this.$__typename = 'ServiceMembership',
  });

  factory Fragment_PersonMemberships_serviceMemberships.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$serviceId = json['serviceId'];
    final l$service = json['service'];
    final l$$__typename = json['__typename'];
    return Fragment_PersonMemberships_serviceMemberships(
      serviceId: (l$serviceId as String),
      service: l$service == null
          ? null
          : Fragment_ServiceWithStudyYears.fromJson(
              (l$service as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String serviceId;

  final Fragment_ServiceWithStudyYears? service;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$serviceId = serviceId;
    _resultData['serviceId'] = l$serviceId;
    final l$service = service;
    _resultData['service'] = l$service?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$serviceId = serviceId;
    final l$service = service;
    final l$$__typename = $__typename;
    return Object.hashAll([l$serviceId, l$service, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_PersonMemberships_serviceMemberships ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$serviceId = serviceId;
    final lOther$serviceId = other.serviceId;
    if (l$serviceId != lOther$serviceId) {
      return false;
    }
    final l$service = service;
    final lOther$service = other.service;
    if (l$service != lOther$service) {
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

extension UtilityExtension_Fragment_PersonMemberships_serviceMemberships
    on Fragment_PersonMemberships_serviceMemberships {
  CopyWith_Fragment_PersonMemberships_serviceMemberships<
    Fragment_PersonMemberships_serviceMemberships
  >
  get copyWith =>
      CopyWith_Fragment_PersonMemberships_serviceMemberships(this, (i) => i);
}

abstract class CopyWith_Fragment_PersonMemberships_serviceMemberships<TRes> {
  factory CopyWith_Fragment_PersonMemberships_serviceMemberships(
    Fragment_PersonMemberships_serviceMemberships instance,
    TRes Function(Fragment_PersonMemberships_serviceMemberships) then,
  ) = _CopyWithImpl_Fragment_PersonMemberships_serviceMemberships;

  factory CopyWith_Fragment_PersonMemberships_serviceMemberships.stub(
    TRes res,
  ) = _CopyWithStubImpl_Fragment_PersonMemberships_serviceMemberships;

  TRes call({
    String? serviceId,
    Fragment_ServiceWithStudyYears? service,
    String? $__typename,
  });
  CopyWith_Fragment_ServiceWithStudyYears<TRes> get service;
}

class _CopyWithImpl_Fragment_PersonMemberships_serviceMemberships<TRes>
    implements CopyWith_Fragment_PersonMemberships_serviceMemberships<TRes> {
  _CopyWithImpl_Fragment_PersonMemberships_serviceMemberships(
    this._instance,
    this._then,
  );

  final Fragment_PersonMemberships_serviceMemberships _instance;

  final TRes Function(Fragment_PersonMemberships_serviceMemberships) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? serviceId = _undefined,
    Object? service = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_PersonMemberships_serviceMemberships(
      serviceId: serviceId == _undefined || serviceId == null
          ? _instance.serviceId
          : (serviceId as String),
      service: service == _undefined
          ? _instance.service
          : (service as Fragment_ServiceWithStudyYears?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Fragment_ServiceWithStudyYears<TRes> get service {
    final local$service = _instance.service;
    return local$service == null
        ? CopyWith_Fragment_ServiceWithStudyYears.stub(_then(_instance))
        : CopyWith_Fragment_ServiceWithStudyYears(
            local$service,
            (e) => call(service: e),
          );
  }
}

class _CopyWithStubImpl_Fragment_PersonMemberships_serviceMemberships<TRes>
    implements CopyWith_Fragment_PersonMemberships_serviceMemberships<TRes> {
  _CopyWithStubImpl_Fragment_PersonMemberships_serviceMemberships(this._res);

  TRes _res;

  call({
    String? serviceId,
    Fragment_ServiceWithStudyYears? service,
    String? $__typename,
  }) => _res;

  CopyWith_Fragment_ServiceWithStudyYears<TRes> get service =>
      CopyWith_Fragment_ServiceWithStudyYears.stub(_res);
}

class Fragment_PersonMemberships_classMemberships {
  Fragment_PersonMemberships_classMemberships({
    required this.id,
    this.$class,
    this.$__typename = 'ClassMembership',
  });

  factory Fragment_PersonMemberships_classMemberships.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$$class = json['class'];
    final l$$__typename = json['__typename'];
    return Fragment_PersonMemberships_classMemberships(
      id: (l$id as String),
      $class: l$$class == null
          ? null
          : Fragment_PersonMemberships_classMemberships_class.fromJson(
              (l$$class as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final Fragment_PersonMemberships_classMemberships_class? $class;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$class = $class;
    _resultData['class'] = l$$class?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$class = $class;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$$class, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_PersonMemberships_classMemberships ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$$class = $class;
    final lOther$$class = other.$class;
    if (l$$class != lOther$$class) {
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

extension UtilityExtension_Fragment_PersonMemberships_classMemberships
    on Fragment_PersonMemberships_classMemberships {
  CopyWith_Fragment_PersonMemberships_classMemberships<
    Fragment_PersonMemberships_classMemberships
  >
  get copyWith =>
      CopyWith_Fragment_PersonMemberships_classMemberships(this, (i) => i);
}

abstract class CopyWith_Fragment_PersonMemberships_classMemberships<TRes> {
  factory CopyWith_Fragment_PersonMemberships_classMemberships(
    Fragment_PersonMemberships_classMemberships instance,
    TRes Function(Fragment_PersonMemberships_classMemberships) then,
  ) = _CopyWithImpl_Fragment_PersonMemberships_classMemberships;

  factory CopyWith_Fragment_PersonMemberships_classMemberships.stub(TRes res) =
      _CopyWithStubImpl_Fragment_PersonMemberships_classMemberships;

  TRes call({
    String? id,
    Fragment_PersonMemberships_classMemberships_class? $class,
    String? $__typename,
  });
  CopyWith_Fragment_PersonMemberships_classMemberships_class<TRes> get $class;
}

class _CopyWithImpl_Fragment_PersonMemberships_classMemberships<TRes>
    implements CopyWith_Fragment_PersonMemberships_classMemberships<TRes> {
  _CopyWithImpl_Fragment_PersonMemberships_classMemberships(
    this._instance,
    this._then,
  );

  final Fragment_PersonMemberships_classMemberships _instance;

  final TRes Function(Fragment_PersonMemberships_classMemberships) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $class = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_PersonMemberships_classMemberships(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      $class: $class == _undefined
          ? _instance.$class
          : ($class as Fragment_PersonMemberships_classMemberships_class?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Fragment_PersonMemberships_classMemberships_class<TRes> get $class {
    final local$$class = _instance.$class;
    return local$$class == null
        ? CopyWith_Fragment_PersonMemberships_classMemberships_class.stub(
            _then(_instance),
          )
        : CopyWith_Fragment_PersonMemberships_classMemberships_class(
            local$$class,
            (e) => call($class: e),
          );
  }
}

class _CopyWithStubImpl_Fragment_PersonMemberships_classMemberships<TRes>
    implements CopyWith_Fragment_PersonMemberships_classMemberships<TRes> {
  _CopyWithStubImpl_Fragment_PersonMemberships_classMemberships(this._res);

  TRes _res;

  call({
    String? id,
    Fragment_PersonMemberships_classMemberships_class? $class,
    String? $__typename,
  }) => _res;

  CopyWith_Fragment_PersonMemberships_classMemberships_class<TRes> get $class =>
      CopyWith_Fragment_PersonMemberships_classMemberships_class.stub(_res);
}

class Fragment_PersonMemberships_classMemberships_class
    implements Fragment_Class, Fragment_ClassNoPhoto {
  Fragment_PersonMemberships_classMemberships_class({
    required this.id,
    required this.name,
    this.color,
    required this.userCanEdit,
    this.$__typename = 'Class',
    this.photoUpdatedAt,
    this.blurhash,
    this.service,
  });

  factory Fragment_PersonMemberships_classMemberships_class.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$userCanEdit = json['userCanEdit'];
    final l$$__typename = json['__typename'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$blurhash = json['blurhash'];
    final l$service = json['service'];
    return Fragment_PersonMemberships_classMemberships_class(
      id: (l$id as String),
      name: (l$name as String),
      color: (l$color as int?),
      userCanEdit: (l$userCanEdit as bool),
      $__typename: (l$$__typename as String),
      photoUpdatedAt: l$photoUpdatedAt == null
          ? null
          : tstzFromString(l$photoUpdatedAt),
      blurhash: (l$blurhash as String?),
      service: l$service == null
          ? null
          : Fragment_ServiceWithStudyYears.fromJson(
              (l$service as Map<String, dynamic>),
            ),
    );
  }

  final String id;

  final String name;

  final int? color;

  final bool userCanEdit;

  final String $__typename;

  final DateTime? photoUpdatedAt;

  final String? blurhash;

  final Fragment_ServiceWithStudyYears? service;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$userCanEdit = userCanEdit;
    _resultData['userCanEdit'] = l$userCanEdit;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$photoUpdatedAt = photoUpdatedAt;
    _resultData['photoUpdatedAt'] = l$photoUpdatedAt == null
        ? null
        : tstzToString(l$photoUpdatedAt);
    final l$blurhash = blurhash;
    _resultData['blurhash'] = l$blurhash;
    final l$service = service;
    _resultData['service'] = l$service?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$userCanEdit = userCanEdit;
    final l$$__typename = $__typename;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$blurhash = blurhash;
    final l$service = service;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$userCanEdit,
      l$$__typename,
      l$photoUpdatedAt,
      l$blurhash,
      l$service,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_PersonMemberships_classMemberships_class ||
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
    final l$color = color;
    final lOther$color = other.color;
    if (l$color != lOther$color) {
      return false;
    }
    final l$userCanEdit = userCanEdit;
    final lOther$userCanEdit = other.userCanEdit;
    if (l$userCanEdit != lOther$userCanEdit) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
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
    final l$service = service;
    final lOther$service = other.service;
    if (l$service != lOther$service) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Fragment_PersonMemberships_classMemberships_class
    on Fragment_PersonMemberships_classMemberships_class {
  CopyWith_Fragment_PersonMemberships_classMemberships_class<
    Fragment_PersonMemberships_classMemberships_class
  >
  get copyWith => CopyWith_Fragment_PersonMemberships_classMemberships_class(
    this,
    (i) => i,
  );
}

abstract class CopyWith_Fragment_PersonMemberships_classMemberships_class<
  TRes
> {
  factory CopyWith_Fragment_PersonMemberships_classMemberships_class(
    Fragment_PersonMemberships_classMemberships_class instance,
    TRes Function(Fragment_PersonMemberships_classMemberships_class) then,
  ) = _CopyWithImpl_Fragment_PersonMemberships_classMemberships_class;

  factory CopyWith_Fragment_PersonMemberships_classMemberships_class.stub(
    TRes res,
  ) = _CopyWithStubImpl_Fragment_PersonMemberships_classMemberships_class;

  TRes call({
    String? id,
    String? name,
    int? color,
    bool? userCanEdit,
    String? $__typename,
    DateTime? photoUpdatedAt,
    String? blurhash,
    Fragment_ServiceWithStudyYears? service,
  });
  CopyWith_Fragment_ServiceWithStudyYears<TRes> get service;
}

class _CopyWithImpl_Fragment_PersonMemberships_classMemberships_class<TRes>
    implements
        CopyWith_Fragment_PersonMemberships_classMemberships_class<TRes> {
  _CopyWithImpl_Fragment_PersonMemberships_classMemberships_class(
    this._instance,
    this._then,
  );

  final Fragment_PersonMemberships_classMemberships_class _instance;

  final TRes Function(Fragment_PersonMemberships_classMemberships_class) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? userCanEdit = _undefined,
    Object? $__typename = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? blurhash = _undefined,
    Object? service = _undefined,
  }) => _then(
    Fragment_PersonMemberships_classMemberships_class(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      color: color == _undefined ? _instance.color : (color as int?),
      userCanEdit: userCanEdit == _undefined || userCanEdit == null
          ? _instance.userCanEdit
          : (userCanEdit as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
      photoUpdatedAt: photoUpdatedAt == _undefined
          ? _instance.photoUpdatedAt
          : (photoUpdatedAt as DateTime?),
      blurhash: blurhash == _undefined
          ? _instance.blurhash
          : (blurhash as String?),
      service: service == _undefined
          ? _instance.service
          : (service as Fragment_ServiceWithStudyYears?),
    ),
  );

  CopyWith_Fragment_ServiceWithStudyYears<TRes> get service {
    final local$service = _instance.service;
    return local$service == null
        ? CopyWith_Fragment_ServiceWithStudyYears.stub(_then(_instance))
        : CopyWith_Fragment_ServiceWithStudyYears(
            local$service,
            (e) => call(service: e),
          );
  }
}

class _CopyWithStubImpl_Fragment_PersonMemberships_classMemberships_class<TRes>
    implements
        CopyWith_Fragment_PersonMemberships_classMemberships_class<TRes> {
  _CopyWithStubImpl_Fragment_PersonMemberships_classMemberships_class(
    this._res,
  );

  TRes _res;

  call({
    String? id,
    String? name,
    int? color,
    bool? userCanEdit,
    String? $__typename,
    DateTime? photoUpdatedAt,
    String? blurhash,
    Fragment_ServiceWithStudyYears? service,
  }) => _res;

  CopyWith_Fragment_ServiceWithStudyYears<TRes> get service =>
      CopyWith_Fragment_ServiceWithStudyYears.stub(_res);
}

class Fragment_PersonMemberships_groupMemberships {
  Fragment_PersonMemberships_groupMemberships({
    required this.groupId,
    this.group,
    this.$__typename = 'GroupMembership',
  });

  factory Fragment_PersonMemberships_groupMemberships.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$groupId = json['groupId'];
    final l$group = json['group'];
    final l$$__typename = json['__typename'];
    return Fragment_PersonMemberships_groupMemberships(
      groupId: (l$groupId as String),
      group: l$group == null
          ? null
          : Fragment_PersonMemberships_groupMemberships_group.fromJson(
              (l$group as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String groupId;

  final Fragment_PersonMemberships_groupMemberships_group? group;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$groupId = groupId;
    _resultData['groupId'] = l$groupId;
    final l$group = group;
    _resultData['group'] = l$group?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$groupId = groupId;
    final l$group = group;
    final l$$__typename = $__typename;
    return Object.hashAll([l$groupId, l$group, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_PersonMemberships_groupMemberships ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$groupId = groupId;
    final lOther$groupId = other.groupId;
    if (l$groupId != lOther$groupId) {
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
    return true;
  }
}

extension UtilityExtension_Fragment_PersonMemberships_groupMemberships
    on Fragment_PersonMemberships_groupMemberships {
  CopyWith_Fragment_PersonMemberships_groupMemberships<
    Fragment_PersonMemberships_groupMemberships
  >
  get copyWith =>
      CopyWith_Fragment_PersonMemberships_groupMemberships(this, (i) => i);
}

abstract class CopyWith_Fragment_PersonMemberships_groupMemberships<TRes> {
  factory CopyWith_Fragment_PersonMemberships_groupMemberships(
    Fragment_PersonMemberships_groupMemberships instance,
    TRes Function(Fragment_PersonMemberships_groupMemberships) then,
  ) = _CopyWithImpl_Fragment_PersonMemberships_groupMemberships;

  factory CopyWith_Fragment_PersonMemberships_groupMemberships.stub(TRes res) =
      _CopyWithStubImpl_Fragment_PersonMemberships_groupMemberships;

  TRes call({
    String? groupId,
    Fragment_PersonMemberships_groupMemberships_group? group,
    String? $__typename,
  });
  CopyWith_Fragment_PersonMemberships_groupMemberships_group<TRes> get group;
}

class _CopyWithImpl_Fragment_PersonMemberships_groupMemberships<TRes>
    implements CopyWith_Fragment_PersonMemberships_groupMemberships<TRes> {
  _CopyWithImpl_Fragment_PersonMemberships_groupMemberships(
    this._instance,
    this._then,
  );

  final Fragment_PersonMemberships_groupMemberships _instance;

  final TRes Function(Fragment_PersonMemberships_groupMemberships) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? groupId = _undefined,
    Object? group = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_PersonMemberships_groupMemberships(
      groupId: groupId == _undefined || groupId == null
          ? _instance.groupId
          : (groupId as String),
      group: group == _undefined
          ? _instance.group
          : (group as Fragment_PersonMemberships_groupMemberships_group?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Fragment_PersonMemberships_groupMemberships_group<TRes> get group {
    final local$group = _instance.group;
    return local$group == null
        ? CopyWith_Fragment_PersonMemberships_groupMemberships_group.stub(
            _then(_instance),
          )
        : CopyWith_Fragment_PersonMemberships_groupMemberships_group(
            local$group,
            (e) => call(group: e),
          );
  }
}

class _CopyWithStubImpl_Fragment_PersonMemberships_groupMemberships<TRes>
    implements CopyWith_Fragment_PersonMemberships_groupMemberships<TRes> {
  _CopyWithStubImpl_Fragment_PersonMemberships_groupMemberships(this._res);

  TRes _res;

  call({
    String? groupId,
    Fragment_PersonMemberships_groupMemberships_group? group,
    String? $__typename,
  }) => _res;

  CopyWith_Fragment_PersonMemberships_groupMemberships_group<TRes> get group =>
      CopyWith_Fragment_PersonMemberships_groupMemberships_group.stub(_res);
}

class Fragment_PersonMemberships_groupMemberships_group
    implements Fragment_Group, Fragment_GroupNoPhoto {
  Fragment_PersonMemberships_groupMemberships_group({
    required this.id,
    required this.name,
    this.color,
    required this.userCanEdit,
    this.$__typename = 'Group',
    this.photoUpdatedAt,
    this.blurhash,
    required this.serviceId,
    this.validity,
    this.service,
  });

  factory Fragment_PersonMemberships_groupMemberships_group.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$userCanEdit = json['userCanEdit'];
    final l$$__typename = json['__typename'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$blurhash = json['blurhash'];
    final l$serviceId = json['serviceId'];
    final l$validity = json['validity'];
    final l$service = json['service'];
    return Fragment_PersonMemberships_groupMemberships_group(
      id: (l$id as String),
      name: (l$name as String),
      color: (l$color as int?),
      userCanEdit: (l$userCanEdit as bool),
      $__typename: (l$$__typename as String),
      photoUpdatedAt: l$photoUpdatedAt == null
          ? null
          : tstzFromString(l$photoUpdatedAt),
      blurhash: (l$blurhash as String?),
      serviceId: (l$serviceId as String),
      validity: (l$validity as String?),
      service: l$service == null
          ? null
          : Fragment_ServiceWithStudyYears.fromJson(
              (l$service as Map<String, dynamic>),
            ),
    );
  }

  final String id;

  final String name;

  final int? color;

  final bool userCanEdit;

  final String $__typename;

  final DateTime? photoUpdatedAt;

  final String? blurhash;

  final String serviceId;

  final String? validity;

  final Fragment_ServiceWithStudyYears? service;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$userCanEdit = userCanEdit;
    _resultData['userCanEdit'] = l$userCanEdit;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$photoUpdatedAt = photoUpdatedAt;
    _resultData['photoUpdatedAt'] = l$photoUpdatedAt == null
        ? null
        : tstzToString(l$photoUpdatedAt);
    final l$blurhash = blurhash;
    _resultData['blurhash'] = l$blurhash;
    final l$serviceId = serviceId;
    _resultData['serviceId'] = l$serviceId;
    final l$validity = validity;
    _resultData['validity'] = l$validity;
    final l$service = service;
    _resultData['service'] = l$service?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$userCanEdit = userCanEdit;
    final l$$__typename = $__typename;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$blurhash = blurhash;
    final l$serviceId = serviceId;
    final l$validity = validity;
    final l$service = service;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$userCanEdit,
      l$$__typename,
      l$photoUpdatedAt,
      l$blurhash,
      l$serviceId,
      l$validity,
      l$service,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_PersonMemberships_groupMemberships_group ||
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
    final l$color = color;
    final lOther$color = other.color;
    if (l$color != lOther$color) {
      return false;
    }
    final l$userCanEdit = userCanEdit;
    final lOther$userCanEdit = other.userCanEdit;
    if (l$userCanEdit != lOther$userCanEdit) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
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
    final l$serviceId = serviceId;
    final lOther$serviceId = other.serviceId;
    if (l$serviceId != lOther$serviceId) {
      return false;
    }
    final l$validity = validity;
    final lOther$validity = other.validity;
    if (l$validity != lOther$validity) {
      return false;
    }
    final l$service = service;
    final lOther$service = other.service;
    if (l$service != lOther$service) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Fragment_PersonMemberships_groupMemberships_group
    on Fragment_PersonMemberships_groupMemberships_group {
  CopyWith_Fragment_PersonMemberships_groupMemberships_group<
    Fragment_PersonMemberships_groupMemberships_group
  >
  get copyWith => CopyWith_Fragment_PersonMemberships_groupMemberships_group(
    this,
    (i) => i,
  );
}

abstract class CopyWith_Fragment_PersonMemberships_groupMemberships_group<
  TRes
> {
  factory CopyWith_Fragment_PersonMemberships_groupMemberships_group(
    Fragment_PersonMemberships_groupMemberships_group instance,
    TRes Function(Fragment_PersonMemberships_groupMemberships_group) then,
  ) = _CopyWithImpl_Fragment_PersonMemberships_groupMemberships_group;

  factory CopyWith_Fragment_PersonMemberships_groupMemberships_group.stub(
    TRes res,
  ) = _CopyWithStubImpl_Fragment_PersonMemberships_groupMemberships_group;

  TRes call({
    String? id,
    String? name,
    int? color,
    bool? userCanEdit,
    String? $__typename,
    DateTime? photoUpdatedAt,
    String? blurhash,
    String? serviceId,
    String? validity,
    Fragment_ServiceWithStudyYears? service,
  });
  CopyWith_Fragment_ServiceWithStudyYears<TRes> get service;
}

class _CopyWithImpl_Fragment_PersonMemberships_groupMemberships_group<TRes>
    implements
        CopyWith_Fragment_PersonMemberships_groupMemberships_group<TRes> {
  _CopyWithImpl_Fragment_PersonMemberships_groupMemberships_group(
    this._instance,
    this._then,
  );

  final Fragment_PersonMemberships_groupMemberships_group _instance;

  final TRes Function(Fragment_PersonMemberships_groupMemberships_group) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? userCanEdit = _undefined,
    Object? $__typename = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? blurhash = _undefined,
    Object? serviceId = _undefined,
    Object? validity = _undefined,
    Object? service = _undefined,
  }) => _then(
    Fragment_PersonMemberships_groupMemberships_group(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      color: color == _undefined ? _instance.color : (color as int?),
      userCanEdit: userCanEdit == _undefined || userCanEdit == null
          ? _instance.userCanEdit
          : (userCanEdit as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
      photoUpdatedAt: photoUpdatedAt == _undefined
          ? _instance.photoUpdatedAt
          : (photoUpdatedAt as DateTime?),
      blurhash: blurhash == _undefined
          ? _instance.blurhash
          : (blurhash as String?),
      serviceId: serviceId == _undefined || serviceId == null
          ? _instance.serviceId
          : (serviceId as String),
      validity: validity == _undefined
          ? _instance.validity
          : (validity as String?),
      service: service == _undefined
          ? _instance.service
          : (service as Fragment_ServiceWithStudyYears?),
    ),
  );

  CopyWith_Fragment_ServiceWithStudyYears<TRes> get service {
    final local$service = _instance.service;
    return local$service == null
        ? CopyWith_Fragment_ServiceWithStudyYears.stub(_then(_instance))
        : CopyWith_Fragment_ServiceWithStudyYears(
            local$service,
            (e) => call(service: e),
          );
  }
}

class _CopyWithStubImpl_Fragment_PersonMemberships_groupMemberships_group<TRes>
    implements
        CopyWith_Fragment_PersonMemberships_groupMemberships_group<TRes> {
  _CopyWithStubImpl_Fragment_PersonMemberships_groupMemberships_group(
    this._res,
  );

  TRes _res;

  call({
    String? id,
    String? name,
    int? color,
    bool? userCanEdit,
    String? $__typename,
    DateTime? photoUpdatedAt,
    String? blurhash,
    String? serviceId,
    String? validity,
    Fragment_ServiceWithStudyYears? service,
  }) => _res;

  CopyWith_Fragment_ServiceWithStudyYears<TRes> get service =>
      CopyWith_Fragment_ServiceWithStudyYears.stub(_res);
}
