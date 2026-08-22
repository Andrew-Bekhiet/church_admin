import '../../areas/__generated__/fragments.gql.dart';
import '../../classes/__generated__/fragments.gql.dart';
import '../../families/__generated__/fragments.gql.dart';
import '../../gql/__generated__/fragments.gql.dart';
import '../../groups/__generated__/fragments.gql.dart';
import '../../services/__generated__/fragments.gql.dart';
import '../../streets/__generated__/fragments.gql.dart';
import '../../users/__generated__/fragments.gql.dart';
import 'package:church_admin/src/core/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Fragment_Person implements Fragment_PersonNoPhoto {
  Fragment_Person({
    required this.id,
    required this.name,
    this.color,
    this.userCanEdit,
    this.$__typename = 'Persons',
    this.photoUpdatedAt,
    this.blurhash,
  });

  factory Fragment_Person.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$userCanEdit = json['userCanEdit'];
    final l$$__typename = json['__typename'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$blurhash = json['blurhash'];
    return Fragment_Person(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      userCanEdit: (l$userCanEdit as bool?),
      $__typename: (l$$__typename as String),
      photoUpdatedAt: l$photoUpdatedAt == null
          ? null
          : tstzFromString(l$photoUpdatedAt),
      blurhash: (l$blurhash as String?),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final bool? userCanEdit;

  final String $__typename;

  final DateTime? photoUpdatedAt;

  final String? blurhash;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
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
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$userCanEdit,
      l$$__typename,
      l$photoUpdatedAt,
      l$blurhash,
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
    UuidValue? id,
    String? name,
    int? color,
    bool? userCanEdit,
    String? $__typename,
    DateTime? photoUpdatedAt,
    String? blurhash,
  });
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
  }) => _then(
    Fragment_Person(
      id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      color: color == _undefined ? _instance.color : (color as int?),
      userCanEdit: userCanEdit == _undefined
          ? _instance.userCanEdit
          : (userCanEdit as bool?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
      photoUpdatedAt: photoUpdatedAt == _undefined
          ? _instance.photoUpdatedAt
          : (photoUpdatedAt as DateTime?),
      blurhash: blurhash == _undefined
          ? _instance.blurhash
          : (blurhash as String?),
    ),
  );
}

class _CopyWithStubImpl_Fragment_Person<TRes>
    implements CopyWith_Fragment_Person<TRes> {
  _CopyWithStubImpl_Fragment_Person(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    bool? userCanEdit,
    String? $__typename,
    DateTime? photoUpdatedAt,
    String? blurhash,
  }) => _res;
}

const fragmentDefinitionPerson = FragmentDefinitionNode(
  name: NameNode(value: 'Person'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'Persons'), isNonNull: false),
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
  definitions: [fragmentDefinitionPerson, fragmentDefinitionPersonNoPhoto],
);

class Fragment_PersonNoPhoto {
  Fragment_PersonNoPhoto({
    required this.id,
    required this.name,
    this.color,
    this.userCanEdit,
    this.$__typename = 'Persons',
  });

  factory Fragment_PersonNoPhoto.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$userCanEdit = json['userCanEdit'];
    final l$$__typename = json['__typename'];
    return Fragment_PersonNoPhoto(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      userCanEdit: (l$userCanEdit as bool?),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final bool? userCanEdit;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
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
    UuidValue? id,
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
      id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      color: color == _undefined ? _instance.color : (color as int?),
      userCanEdit: userCanEdit == _undefined
          ? _instance.userCanEdit
          : (userCanEdit as bool?),
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
    UuidValue? id,
    String? name,
    int? color,
    bool? userCanEdit,
    String? $__typename,
  }) => _res;
}

const fragmentDefinitionPersonNoPhoto = FragmentDefinitionNode(
  name: NameNode(value: 'PersonNoPhoto'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'Persons'), isNonNull: false),
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

class Fragment_FullPersonData
    implements Fragment_Person, Fragment_PersonNoPhoto {
  Fragment_FullPersonData({
    required this.id,
    required this.name,
    this.color,
    this.userCanEdit,
    this.$__typename = 'Persons',
    this.photoUpdatedAt,
    this.blurhash,
    this.birthdate,
    this.address,
    required this.classes,
    this.church,
    this.college,
    this.family,
    this.father,
    required this.gender,
    required this.groups,
    required this.isServant,
    required this.isShammas,
    this.isStudent,
    this.job,
    this.jobDescription,
    this.lastCall,
    this.lastConfession,
    this.lastEdit,
    this.lastKodas,
    this.lastVisit,
    this.mainPhone,
    this.notes,
    required this.otherPhones,
    this.personType,
    this.qualification,
    this.school,
    required this.services,
    this.shammasLevel,
    this.state,
    this.studyYear,
    required this.hobbies,
    required this.tags,
    this.uid,
    this.user,
  });

  factory Fragment_FullPersonData.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$userCanEdit = json['userCanEdit'];
    final l$$__typename = json['__typename'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$blurhash = json['blurhash'];
    final l$birthdate = json['birthdate'];
    final l$address = json['address'];
    final l$classes = json['classes'];
    final l$church = json['church'];
    final l$college = json['college'];
    final l$family = json['family'];
    final l$father = json['father'];
    final l$gender = json['gender'];
    final l$groups = json['groups'];
    final l$isServant = json['isServant'];
    final l$isShammas = json['isShammas'];
    final l$isStudent = json['isStudent'];
    final l$job = json['job'];
    final l$jobDescription = json['jobDescription'];
    final l$lastCall = json['lastCall'];
    final l$lastConfession = json['lastConfession'];
    final l$lastEdit = json['lastEdit'];
    final l$lastKodas = json['lastKodas'];
    final l$lastVisit = json['lastVisit'];
    final l$mainPhone = json['mainPhone'];
    final l$notes = json['notes'];
    final l$otherPhones = json['otherPhones'];
    final l$personType = json['personType'];
    final l$qualification = json['qualification'];
    final l$school = json['school'];
    final l$services = json['services'];
    final l$shammasLevel = json['shammasLevel'];
    final l$state = json['state'];
    final l$studyYear = json['studyYear'];
    final l$hobbies = json['hobbies'];
    final l$tags = json['tags'];
    final l$uid = json['uid'];
    final l$user = json['user'];
    return Fragment_FullPersonData(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      userCanEdit: (l$userCanEdit as bool?),
      $__typename: (l$$__typename as String),
      photoUpdatedAt: l$photoUpdatedAt == null
          ? null
          : tstzFromString(l$photoUpdatedAt),
      blurhash: (l$blurhash as String?),
      birthdate: l$birthdate == null ? null : dateFromString(l$birthdate),
      address: l$address == null
          ? null
          : Fragment_Address.fromJson((l$address as Map<String, dynamic>)),
      classes: (l$classes as List<dynamic>)
          .map(
            (e) => Fragment_FullPersonData_classes.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      church: l$church == null
          ? null
          : Fragment_FullPersonData_church.fromJson(
              (l$church as Map<String, dynamic>),
            ),
      college: l$college == null
          ? null
          : Fragment_FullPersonData_college.fromJson(
              (l$college as Map<String, dynamic>),
            ),
      family: l$family == null
          ? null
          : Fragment_Family.fromJson((l$family as Map<String, dynamic>)),
      father: l$father == null
          ? null
          : Fragment_FullPersonData_father.fromJson(
              (l$father as Map<String, dynamic>),
            ),
      gender: (l$gender as bool),
      groups: (l$groups as List<dynamic>)
          .map(
            (e) => Fragment_FullPersonData_groups.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      isServant: (l$isServant as bool),
      isShammas: (l$isShammas as bool),
      isStudent: (l$isStudent as bool?),
      job: l$job == null
          ? null
          : Fragment_FullPersonData_job.fromJson(
              (l$job as Map<String, dynamic>),
            ),
      jobDescription: (l$jobDescription as String?),
      lastCall: l$lastCall == null
          ? null
          : Fragment_LatestCallHistory.fromJson(
              (l$lastCall as Map<String, dynamic>),
            ),
      lastConfession: l$lastConfession == null
          ? null
          : Fragment_LatestConfessionHistory.fromJson(
              (l$lastConfession as Map<String, dynamic>),
            ),
      lastEdit: l$lastEdit == null
          ? null
          : Fragment_LatestEditHistory.fromJson(
              (l$lastEdit as Map<String, dynamic>),
            ),
      lastKodas: l$lastKodas == null
          ? null
          : Fragment_LatestKodasHistory.fromJson(
              (l$lastKodas as Map<String, dynamic>),
            ),
      lastVisit: l$lastVisit == null
          ? null
          : Fragment_LatestVisitHistory.fromJson(
              (l$lastVisit as Map<String, dynamic>),
            ),
      mainPhone: (l$mainPhone as String?),
      notes: (l$notes as String?),
      otherPhones: (l$otherPhones as Json),
      personType: l$personType == null
          ? null
          : Fragment_FullPersonData_personType.fromJson(
              (l$personType as Map<String, dynamic>),
            ),
      qualification: l$qualification == null
          ? null
          : Fragment_FullPersonData_qualification.fromJson(
              (l$qualification as Map<String, dynamic>),
            ),
      school: l$school == null
          ? null
          : Fragment_FullPersonData_school.fromJson(
              (l$school as Map<String, dynamic>),
            ),
      services: (l$services as List<dynamic>)
          .map(
            (e) => Fragment_FullPersonData_services.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      shammasLevel: l$shammasLevel == null
          ? null
          : Fragment_FullPersonData_shammasLevel.fromJson(
              (l$shammasLevel as Map<String, dynamic>),
            ),
      state: l$state == null
          ? null
          : Fragment_FullPersonData_state.fromJson(
              (l$state as Map<String, dynamic>),
            ),
      studyYear: l$studyYear == null
          ? null
          : Fragment_FullPersonData_studyYear.fromJson(
              (l$studyYear as Map<String, dynamic>),
            ),
      hobbies: (l$hobbies as List<dynamic>)
          .map(
            (e) => Fragment_FullPersonData_hobbies.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      tags: (l$tags as List<dynamic>)
          .map(
            (e) => Fragment_FullPersonData_tags.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      uid: l$uid == null ? null : stringToUuid(l$uid),
      user: l$user == null
          ? null
          : Fragment_FullPersonData_user.fromJson(
              (l$user as Map<String, dynamic>),
            ),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final bool? userCanEdit;

  final String $__typename;

  final DateTime? photoUpdatedAt;

  final String? blurhash;

  final DateTime? birthdate;

  final Fragment_Address? address;

  final List<Fragment_FullPersonData_classes> classes;

  final Fragment_FullPersonData_church? church;

  final Fragment_FullPersonData_college? college;

  final Fragment_Family? family;

  final Fragment_FullPersonData_father? father;

  final bool gender;

  final List<Fragment_FullPersonData_groups> groups;

  final bool isServant;

  final bool isShammas;

  final bool? isStudent;

  final Fragment_FullPersonData_job? job;

  final String? jobDescription;

  final Fragment_LatestCallHistory? lastCall;

  final Fragment_LatestConfessionHistory? lastConfession;

  final Fragment_LatestEditHistory? lastEdit;

  final Fragment_LatestKodasHistory? lastKodas;

  final Fragment_LatestVisitHistory? lastVisit;

  final String? mainPhone;

  final String? notes;

  final Json otherPhones;

  final Fragment_FullPersonData_personType? personType;

  final Fragment_FullPersonData_qualification? qualification;

  final Fragment_FullPersonData_school? school;

  final List<Fragment_FullPersonData_services> services;

  final Fragment_FullPersonData_shammasLevel? shammasLevel;

  final Fragment_FullPersonData_state? state;

  final Fragment_FullPersonData_studyYear? studyYear;

  final List<Fragment_FullPersonData_hobbies> hobbies;

  final List<Fragment_FullPersonData_tags> tags;

  final UuidValue? uid;

  final Fragment_FullPersonData_user? user;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
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
    final l$birthdate = birthdate;
    _resultData['birthdate'] = l$birthdate == null
        ? null
        : dateToString(l$birthdate);
    final l$address = address;
    _resultData['address'] = l$address?.toJson();
    final l$classes = classes;
    _resultData['classes'] = l$classes.map((e) => e.toJson()).toList();
    final l$church = church;
    _resultData['church'] = l$church?.toJson();
    final l$college = college;
    _resultData['college'] = l$college?.toJson();
    final l$family = family;
    _resultData['family'] = l$family?.toJson();
    final l$father = father;
    _resultData['father'] = l$father?.toJson();
    final l$gender = gender;
    _resultData['gender'] = l$gender;
    final l$groups = groups;
    _resultData['groups'] = l$groups.map((e) => e.toJson()).toList();
    final l$isServant = isServant;
    _resultData['isServant'] = l$isServant;
    final l$isShammas = isShammas;
    _resultData['isShammas'] = l$isShammas;
    final l$isStudent = isStudent;
    _resultData['isStudent'] = l$isStudent;
    final l$job = job;
    _resultData['job'] = l$job?.toJson();
    final l$jobDescription = jobDescription;
    _resultData['jobDescription'] = l$jobDescription;
    final l$lastCall = lastCall;
    _resultData['lastCall'] = l$lastCall?.toJson();
    final l$lastConfession = lastConfession;
    _resultData['lastConfession'] = l$lastConfession?.toJson();
    final l$lastEdit = lastEdit;
    _resultData['lastEdit'] = l$lastEdit?.toJson();
    final l$lastKodas = lastKodas;
    _resultData['lastKodas'] = l$lastKodas?.toJson();
    final l$lastVisit = lastVisit;
    _resultData['lastVisit'] = l$lastVisit?.toJson();
    final l$mainPhone = mainPhone;
    _resultData['mainPhone'] = l$mainPhone;
    final l$notes = notes;
    _resultData['notes'] = l$notes;
    final l$otherPhones = otherPhones;
    _resultData['otherPhones'] = l$otherPhones;
    final l$personType = personType;
    _resultData['personType'] = l$personType?.toJson();
    final l$qualification = qualification;
    _resultData['qualification'] = l$qualification?.toJson();
    final l$school = school;
    _resultData['school'] = l$school?.toJson();
    final l$services = services;
    _resultData['services'] = l$services.map((e) => e.toJson()).toList();
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
    _resultData['uid'] = l$uid == null ? null : uuidToString(l$uid);
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
    final l$birthdate = birthdate;
    final l$address = address;
    final l$classes = classes;
    final l$church = church;
    final l$college = college;
    final l$family = family;
    final l$father = father;
    final l$gender = gender;
    final l$groups = groups;
    final l$isServant = isServant;
    final l$isShammas = isShammas;
    final l$isStudent = isStudent;
    final l$job = job;
    final l$jobDescription = jobDescription;
    final l$lastCall = lastCall;
    final l$lastConfession = lastConfession;
    final l$lastEdit = lastEdit;
    final l$lastKodas = lastKodas;
    final l$lastVisit = lastVisit;
    final l$mainPhone = mainPhone;
    final l$notes = notes;
    final l$otherPhones = otherPhones;
    final l$personType = personType;
    final l$qualification = qualification;
    final l$school = school;
    final l$services = services;
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
      l$birthdate,
      l$address,
      Object.hashAll(l$classes.map((v) => v)),
      l$church,
      l$college,
      l$family,
      l$father,
      l$gender,
      Object.hashAll(l$groups.map((v) => v)),
      l$isServant,
      l$isShammas,
      l$isStudent,
      l$job,
      l$jobDescription,
      l$lastCall,
      l$lastConfession,
      l$lastEdit,
      l$lastKodas,
      l$lastVisit,
      l$mainPhone,
      l$notes,
      l$otherPhones,
      l$personType,
      l$qualification,
      l$school,
      Object.hashAll(l$services.map((v) => v)),
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
    if (other is! Fragment_FullPersonData || runtimeType != other.runtimeType) {
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
    final l$birthdate = birthdate;
    final lOther$birthdate = other.birthdate;
    if (l$birthdate != lOther$birthdate) {
      return false;
    }
    final l$address = address;
    final lOther$address = other.address;
    if (l$address != lOther$address) {
      return false;
    }
    final l$classes = classes;
    final lOther$classes = other.classes;
    if (l$classes.length != lOther$classes.length) {
      return false;
    }
    for (int i = 0; i < l$classes.length; i++) {
      final l$classes$entry = l$classes[i];
      final lOther$classes$entry = lOther$classes[i];
      if (l$classes$entry != lOther$classes$entry) {
        return false;
      }
    }
    final l$church = church;
    final lOther$church = other.church;
    if (l$church != lOther$church) {
      return false;
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
    final l$groups = groups;
    final lOther$groups = other.groups;
    if (l$groups.length != lOther$groups.length) {
      return false;
    }
    for (int i = 0; i < l$groups.length; i++) {
      final l$groups$entry = l$groups[i];
      final lOther$groups$entry = lOther$groups[i];
      if (l$groups$entry != lOther$groups$entry) {
        return false;
      }
    }
    final l$isServant = isServant;
    final lOther$isServant = other.isServant;
    if (l$isServant != lOther$isServant) {
      return false;
    }
    final l$isShammas = isShammas;
    final lOther$isShammas = other.isShammas;
    if (l$isShammas != lOther$isShammas) {
      return false;
    }
    final l$isStudent = isStudent;
    final lOther$isStudent = other.isStudent;
    if (l$isStudent != lOther$isStudent) {
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
    final l$lastCall = lastCall;
    final lOther$lastCall = other.lastCall;
    if (l$lastCall != lOther$lastCall) {
      return false;
    }
    final l$lastConfession = lastConfession;
    final lOther$lastConfession = other.lastConfession;
    if (l$lastConfession != lOther$lastConfession) {
      return false;
    }
    final l$lastEdit = lastEdit;
    final lOther$lastEdit = other.lastEdit;
    if (l$lastEdit != lOther$lastEdit) {
      return false;
    }
    final l$lastKodas = lastKodas;
    final lOther$lastKodas = other.lastKodas;
    if (l$lastKodas != lOther$lastKodas) {
      return false;
    }
    final l$lastVisit = lastVisit;
    final lOther$lastVisit = other.lastVisit;
    if (l$lastVisit != lOther$lastVisit) {
      return false;
    }
    final l$mainPhone = mainPhone;
    final lOther$mainPhone = other.mainPhone;
    if (l$mainPhone != lOther$mainPhone) {
      return false;
    }
    final l$notes = notes;
    final lOther$notes = other.notes;
    if (l$notes != lOther$notes) {
      return false;
    }
    final l$otherPhones = otherPhones;
    final lOther$otherPhones = other.otherPhones;
    if (l$otherPhones != lOther$otherPhones) {
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
    final l$services = services;
    final lOther$services = other.services;
    if (l$services.length != lOther$services.length) {
      return false;
    }
    for (int i = 0; i < l$services.length; i++) {
      final l$services$entry = l$services[i];
      final lOther$services$entry = lOther$services[i];
      if (l$services$entry != lOther$services$entry) {
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

extension UtilityExtension_Fragment_FullPersonData on Fragment_FullPersonData {
  CopyWith_Fragment_FullPersonData<Fragment_FullPersonData> get copyWith =>
      CopyWith_Fragment_FullPersonData(this, (i) => i);
}

abstract class CopyWith_Fragment_FullPersonData<TRes> {
  factory CopyWith_Fragment_FullPersonData(
    Fragment_FullPersonData instance,
    TRes Function(Fragment_FullPersonData) then,
  ) = _CopyWithImpl_Fragment_FullPersonData;

  factory CopyWith_Fragment_FullPersonData.stub(TRes res) =
      _CopyWithStubImpl_Fragment_FullPersonData;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    bool? userCanEdit,
    String? $__typename,
    DateTime? photoUpdatedAt,
    String? blurhash,
    DateTime? birthdate,
    Fragment_Address? address,
    List<Fragment_FullPersonData_classes>? classes,
    Fragment_FullPersonData_church? church,
    Fragment_FullPersonData_college? college,
    Fragment_Family? family,
    Fragment_FullPersonData_father? father,
    bool? gender,
    List<Fragment_FullPersonData_groups>? groups,
    bool? isServant,
    bool? isShammas,
    bool? isStudent,
    Fragment_FullPersonData_job? job,
    String? jobDescription,
    Fragment_LatestCallHistory? lastCall,
    Fragment_LatestConfessionHistory? lastConfession,
    Fragment_LatestEditHistory? lastEdit,
    Fragment_LatestKodasHistory? lastKodas,
    Fragment_LatestVisitHistory? lastVisit,
    String? mainPhone,
    String? notes,
    Json? otherPhones,
    Fragment_FullPersonData_personType? personType,
    Fragment_FullPersonData_qualification? qualification,
    Fragment_FullPersonData_school? school,
    List<Fragment_FullPersonData_services>? services,
    Fragment_FullPersonData_shammasLevel? shammasLevel,
    Fragment_FullPersonData_state? state,
    Fragment_FullPersonData_studyYear? studyYear,
    List<Fragment_FullPersonData_hobbies>? hobbies,
    List<Fragment_FullPersonData_tags>? tags,
    UuidValue? uid,
    Fragment_FullPersonData_user? user,
  });
  CopyWith_Fragment_Address<TRes> get address;
  TRes classes(
    Iterable<Fragment_FullPersonData_classes> Function(
      Iterable<
        CopyWith_Fragment_FullPersonData_classes<
          Fragment_FullPersonData_classes
        >
      >,
    )
    _fn,
  );
  CopyWith_Fragment_FullPersonData_church<TRes> get church;
  CopyWith_Fragment_FullPersonData_college<TRes> get college;
  CopyWith_Fragment_Family<TRes> get family;
  CopyWith_Fragment_FullPersonData_father<TRes> get father;
  TRes groups(
    Iterable<Fragment_FullPersonData_groups> Function(
      Iterable<
        CopyWith_Fragment_FullPersonData_groups<Fragment_FullPersonData_groups>
      >,
    )
    _fn,
  );
  CopyWith_Fragment_FullPersonData_job<TRes> get job;
  CopyWith_Fragment_LatestCallHistory<TRes> get lastCall;
  CopyWith_Fragment_LatestConfessionHistory<TRes> get lastConfession;
  CopyWith_Fragment_LatestEditHistory<TRes> get lastEdit;
  CopyWith_Fragment_LatestKodasHistory<TRes> get lastKodas;
  CopyWith_Fragment_LatestVisitHistory<TRes> get lastVisit;
  CopyWith_Fragment_FullPersonData_personType<TRes> get personType;
  CopyWith_Fragment_FullPersonData_qualification<TRes> get qualification;
  CopyWith_Fragment_FullPersonData_school<TRes> get school;
  TRes services(
    Iterable<Fragment_FullPersonData_services> Function(
      Iterable<
        CopyWith_Fragment_FullPersonData_services<
          Fragment_FullPersonData_services
        >
      >,
    )
    _fn,
  );
  CopyWith_Fragment_FullPersonData_shammasLevel<TRes> get shammasLevel;
  CopyWith_Fragment_FullPersonData_state<TRes> get state;
  CopyWith_Fragment_FullPersonData_studyYear<TRes> get studyYear;
  TRes hobbies(
    Iterable<Fragment_FullPersonData_hobbies> Function(
      Iterable<
        CopyWith_Fragment_FullPersonData_hobbies<
          Fragment_FullPersonData_hobbies
        >
      >,
    )
    _fn,
  );
  TRes tags(
    Iterable<Fragment_FullPersonData_tags> Function(
      Iterable<
        CopyWith_Fragment_FullPersonData_tags<Fragment_FullPersonData_tags>
      >,
    )
    _fn,
  );
  CopyWith_Fragment_FullPersonData_user<TRes> get user;
}

class _CopyWithImpl_Fragment_FullPersonData<TRes>
    implements CopyWith_Fragment_FullPersonData<TRes> {
  _CopyWithImpl_Fragment_FullPersonData(this._instance, this._then);

  final Fragment_FullPersonData _instance;

  final TRes Function(Fragment_FullPersonData) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? userCanEdit = _undefined,
    Object? $__typename = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? blurhash = _undefined,
    Object? birthdate = _undefined,
    Object? address = _undefined,
    Object? classes = _undefined,
    Object? church = _undefined,
    Object? college = _undefined,
    Object? family = _undefined,
    Object? father = _undefined,
    Object? gender = _undefined,
    Object? groups = _undefined,
    Object? isServant = _undefined,
    Object? isShammas = _undefined,
    Object? isStudent = _undefined,
    Object? job = _undefined,
    Object? jobDescription = _undefined,
    Object? lastCall = _undefined,
    Object? lastConfession = _undefined,
    Object? lastEdit = _undefined,
    Object? lastKodas = _undefined,
    Object? lastVisit = _undefined,
    Object? mainPhone = _undefined,
    Object? notes = _undefined,
    Object? otherPhones = _undefined,
    Object? personType = _undefined,
    Object? qualification = _undefined,
    Object? school = _undefined,
    Object? services = _undefined,
    Object? shammasLevel = _undefined,
    Object? state = _undefined,
    Object? studyYear = _undefined,
    Object? hobbies = _undefined,
    Object? tags = _undefined,
    Object? uid = _undefined,
    Object? user = _undefined,
  }) => _then(
    Fragment_FullPersonData(
      id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      color: color == _undefined ? _instance.color : (color as int?),
      userCanEdit: userCanEdit == _undefined
          ? _instance.userCanEdit
          : (userCanEdit as bool?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
      photoUpdatedAt: photoUpdatedAt == _undefined
          ? _instance.photoUpdatedAt
          : (photoUpdatedAt as DateTime?),
      blurhash: blurhash == _undefined
          ? _instance.blurhash
          : (blurhash as String?),
      birthdate: birthdate == _undefined
          ? _instance.birthdate
          : (birthdate as DateTime?),
      address: address == _undefined
          ? _instance.address
          : (address as Fragment_Address?),
      classes: classes == _undefined || classes == null
          ? _instance.classes
          : (classes as List<Fragment_FullPersonData_classes>),
      church: church == _undefined
          ? _instance.church
          : (church as Fragment_FullPersonData_church?),
      college: college == _undefined
          ? _instance.college
          : (college as Fragment_FullPersonData_college?),
      family: family == _undefined
          ? _instance.family
          : (family as Fragment_Family?),
      father: father == _undefined
          ? _instance.father
          : (father as Fragment_FullPersonData_father?),
      gender: gender == _undefined || gender == null
          ? _instance.gender
          : (gender as bool),
      groups: groups == _undefined || groups == null
          ? _instance.groups
          : (groups as List<Fragment_FullPersonData_groups>),
      isServant: isServant == _undefined || isServant == null
          ? _instance.isServant
          : (isServant as bool),
      isShammas: isShammas == _undefined || isShammas == null
          ? _instance.isShammas
          : (isShammas as bool),
      isStudent: isStudent == _undefined
          ? _instance.isStudent
          : (isStudent as bool?),
      job: job == _undefined
          ? _instance.job
          : (job as Fragment_FullPersonData_job?),
      jobDescription: jobDescription == _undefined
          ? _instance.jobDescription
          : (jobDescription as String?),
      lastCall: lastCall == _undefined
          ? _instance.lastCall
          : (lastCall as Fragment_LatestCallHistory?),
      lastConfession: lastConfession == _undefined
          ? _instance.lastConfession
          : (lastConfession as Fragment_LatestConfessionHistory?),
      lastEdit: lastEdit == _undefined
          ? _instance.lastEdit
          : (lastEdit as Fragment_LatestEditHistory?),
      lastKodas: lastKodas == _undefined
          ? _instance.lastKodas
          : (lastKodas as Fragment_LatestKodasHistory?),
      lastVisit: lastVisit == _undefined
          ? _instance.lastVisit
          : (lastVisit as Fragment_LatestVisitHistory?),
      mainPhone: mainPhone == _undefined
          ? _instance.mainPhone
          : (mainPhone as String?),
      notes: notes == _undefined ? _instance.notes : (notes as String?),
      otherPhones: otherPhones == _undefined || otherPhones == null
          ? _instance.otherPhones
          : (otherPhones as Json),
      personType: personType == _undefined
          ? _instance.personType
          : (personType as Fragment_FullPersonData_personType?),
      qualification: qualification == _undefined
          ? _instance.qualification
          : (qualification as Fragment_FullPersonData_qualification?),
      school: school == _undefined
          ? _instance.school
          : (school as Fragment_FullPersonData_school?),
      services: services == _undefined || services == null
          ? _instance.services
          : (services as List<Fragment_FullPersonData_services>),
      shammasLevel: shammasLevel == _undefined
          ? _instance.shammasLevel
          : (shammasLevel as Fragment_FullPersonData_shammasLevel?),
      state: state == _undefined
          ? _instance.state
          : (state as Fragment_FullPersonData_state?),
      studyYear: studyYear == _undefined
          ? _instance.studyYear
          : (studyYear as Fragment_FullPersonData_studyYear?),
      hobbies: hobbies == _undefined || hobbies == null
          ? _instance.hobbies
          : (hobbies as List<Fragment_FullPersonData_hobbies>),
      tags: tags == _undefined || tags == null
          ? _instance.tags
          : (tags as List<Fragment_FullPersonData_tags>),
      uid: uid == _undefined ? _instance.uid : (uid as UuidValue?),
      user: user == _undefined
          ? _instance.user
          : (user as Fragment_FullPersonData_user?),
    ),
  );

  CopyWith_Fragment_Address<TRes> get address {
    final local$address = _instance.address;
    return local$address == null
        ? CopyWith_Fragment_Address.stub(_then(_instance))
        : CopyWith_Fragment_Address(local$address, (e) => call(address: e));
  }

  TRes classes(
    Iterable<Fragment_FullPersonData_classes> Function(
      Iterable<
        CopyWith_Fragment_FullPersonData_classes<
          Fragment_FullPersonData_classes
        >
      >,
    )
    _fn,
  ) => call(
    classes: _fn(
      _instance.classes.map(
        (e) => CopyWith_Fragment_FullPersonData_classes(e, (i) => i),
      ),
    ).toList(),
  );

  CopyWith_Fragment_FullPersonData_church<TRes> get church {
    final local$church = _instance.church;
    return local$church == null
        ? CopyWith_Fragment_FullPersonData_church.stub(_then(_instance))
        : CopyWith_Fragment_FullPersonData_church(
            local$church,
            (e) => call(church: e),
          );
  }

  CopyWith_Fragment_FullPersonData_college<TRes> get college {
    final local$college = _instance.college;
    return local$college == null
        ? CopyWith_Fragment_FullPersonData_college.stub(_then(_instance))
        : CopyWith_Fragment_FullPersonData_college(
            local$college,
            (e) => call(college: e),
          );
  }

  CopyWith_Fragment_Family<TRes> get family {
    final local$family = _instance.family;
    return local$family == null
        ? CopyWith_Fragment_Family.stub(_then(_instance))
        : CopyWith_Fragment_Family(local$family, (e) => call(family: e));
  }

  CopyWith_Fragment_FullPersonData_father<TRes> get father {
    final local$father = _instance.father;
    return local$father == null
        ? CopyWith_Fragment_FullPersonData_father.stub(_then(_instance))
        : CopyWith_Fragment_FullPersonData_father(
            local$father,
            (e) => call(father: e),
          );
  }

  TRes groups(
    Iterable<Fragment_FullPersonData_groups> Function(
      Iterable<
        CopyWith_Fragment_FullPersonData_groups<Fragment_FullPersonData_groups>
      >,
    )
    _fn,
  ) => call(
    groups: _fn(
      _instance.groups.map(
        (e) => CopyWith_Fragment_FullPersonData_groups(e, (i) => i),
      ),
    ).toList(),
  );

  CopyWith_Fragment_FullPersonData_job<TRes> get job {
    final local$job = _instance.job;
    return local$job == null
        ? CopyWith_Fragment_FullPersonData_job.stub(_then(_instance))
        : CopyWith_Fragment_FullPersonData_job(local$job, (e) => call(job: e));
  }

  CopyWith_Fragment_LatestCallHistory<TRes> get lastCall {
    final local$lastCall = _instance.lastCall;
    return local$lastCall == null
        ? CopyWith_Fragment_LatestCallHistory.stub(_then(_instance))
        : CopyWith_Fragment_LatestCallHistory(
            local$lastCall,
            (e) => call(lastCall: e),
          );
  }

  CopyWith_Fragment_LatestConfessionHistory<TRes> get lastConfession {
    final local$lastConfession = _instance.lastConfession;
    return local$lastConfession == null
        ? CopyWith_Fragment_LatestConfessionHistory.stub(_then(_instance))
        : CopyWith_Fragment_LatestConfessionHistory(
            local$lastConfession,
            (e) => call(lastConfession: e),
          );
  }

  CopyWith_Fragment_LatestEditHistory<TRes> get lastEdit {
    final local$lastEdit = _instance.lastEdit;
    return local$lastEdit == null
        ? CopyWith_Fragment_LatestEditHistory.stub(_then(_instance))
        : CopyWith_Fragment_LatestEditHistory(
            local$lastEdit,
            (e) => call(lastEdit: e),
          );
  }

  CopyWith_Fragment_LatestKodasHistory<TRes> get lastKodas {
    final local$lastKodas = _instance.lastKodas;
    return local$lastKodas == null
        ? CopyWith_Fragment_LatestKodasHistory.stub(_then(_instance))
        : CopyWith_Fragment_LatestKodasHistory(
            local$lastKodas,
            (e) => call(lastKodas: e),
          );
  }

  CopyWith_Fragment_LatestVisitHistory<TRes> get lastVisit {
    final local$lastVisit = _instance.lastVisit;
    return local$lastVisit == null
        ? CopyWith_Fragment_LatestVisitHistory.stub(_then(_instance))
        : CopyWith_Fragment_LatestVisitHistory(
            local$lastVisit,
            (e) => call(lastVisit: e),
          );
  }

  CopyWith_Fragment_FullPersonData_personType<TRes> get personType {
    final local$personType = _instance.personType;
    return local$personType == null
        ? CopyWith_Fragment_FullPersonData_personType.stub(_then(_instance))
        : CopyWith_Fragment_FullPersonData_personType(
            local$personType,
            (e) => call(personType: e),
          );
  }

  CopyWith_Fragment_FullPersonData_qualification<TRes> get qualification {
    final local$qualification = _instance.qualification;
    return local$qualification == null
        ? CopyWith_Fragment_FullPersonData_qualification.stub(_then(_instance))
        : CopyWith_Fragment_FullPersonData_qualification(
            local$qualification,
            (e) => call(qualification: e),
          );
  }

  CopyWith_Fragment_FullPersonData_school<TRes> get school {
    final local$school = _instance.school;
    return local$school == null
        ? CopyWith_Fragment_FullPersonData_school.stub(_then(_instance))
        : CopyWith_Fragment_FullPersonData_school(
            local$school,
            (e) => call(school: e),
          );
  }

  TRes services(
    Iterable<Fragment_FullPersonData_services> Function(
      Iterable<
        CopyWith_Fragment_FullPersonData_services<
          Fragment_FullPersonData_services
        >
      >,
    )
    _fn,
  ) => call(
    services: _fn(
      _instance.services.map(
        (e) => CopyWith_Fragment_FullPersonData_services(e, (i) => i),
      ),
    ).toList(),
  );

  CopyWith_Fragment_FullPersonData_shammasLevel<TRes> get shammasLevel {
    final local$shammasLevel = _instance.shammasLevel;
    return local$shammasLevel == null
        ? CopyWith_Fragment_FullPersonData_shammasLevel.stub(_then(_instance))
        : CopyWith_Fragment_FullPersonData_shammasLevel(
            local$shammasLevel,
            (e) => call(shammasLevel: e),
          );
  }

  CopyWith_Fragment_FullPersonData_state<TRes> get state {
    final local$state = _instance.state;
    return local$state == null
        ? CopyWith_Fragment_FullPersonData_state.stub(_then(_instance))
        : CopyWith_Fragment_FullPersonData_state(
            local$state,
            (e) => call(state: e),
          );
  }

  CopyWith_Fragment_FullPersonData_studyYear<TRes> get studyYear {
    final local$studyYear = _instance.studyYear;
    return local$studyYear == null
        ? CopyWith_Fragment_FullPersonData_studyYear.stub(_then(_instance))
        : CopyWith_Fragment_FullPersonData_studyYear(
            local$studyYear,
            (e) => call(studyYear: e),
          );
  }

  TRes hobbies(
    Iterable<Fragment_FullPersonData_hobbies> Function(
      Iterable<
        CopyWith_Fragment_FullPersonData_hobbies<
          Fragment_FullPersonData_hobbies
        >
      >,
    )
    _fn,
  ) => call(
    hobbies: _fn(
      _instance.hobbies.map(
        (e) => CopyWith_Fragment_FullPersonData_hobbies(e, (i) => i),
      ),
    ).toList(),
  );

  TRes tags(
    Iterable<Fragment_FullPersonData_tags> Function(
      Iterable<
        CopyWith_Fragment_FullPersonData_tags<Fragment_FullPersonData_tags>
      >,
    )
    _fn,
  ) => call(
    tags: _fn(
      _instance.tags.map(
        (e) => CopyWith_Fragment_FullPersonData_tags(e, (i) => i),
      ),
    ).toList(),
  );

  CopyWith_Fragment_FullPersonData_user<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith_Fragment_FullPersonData_user.stub(_then(_instance))
        : CopyWith_Fragment_FullPersonData_user(
            local$user,
            (e) => call(user: e),
          );
  }
}

class _CopyWithStubImpl_Fragment_FullPersonData<TRes>
    implements CopyWith_Fragment_FullPersonData<TRes> {
  _CopyWithStubImpl_Fragment_FullPersonData(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    bool? userCanEdit,
    String? $__typename,
    DateTime? photoUpdatedAt,
    String? blurhash,
    DateTime? birthdate,
    Fragment_Address? address,
    List<Fragment_FullPersonData_classes>? classes,
    Fragment_FullPersonData_church? church,
    Fragment_FullPersonData_college? college,
    Fragment_Family? family,
    Fragment_FullPersonData_father? father,
    bool? gender,
    List<Fragment_FullPersonData_groups>? groups,
    bool? isServant,
    bool? isShammas,
    bool? isStudent,
    Fragment_FullPersonData_job? job,
    String? jobDescription,
    Fragment_LatestCallHistory? lastCall,
    Fragment_LatestConfessionHistory? lastConfession,
    Fragment_LatestEditHistory? lastEdit,
    Fragment_LatestKodasHistory? lastKodas,
    Fragment_LatestVisitHistory? lastVisit,
    String? mainPhone,
    String? notes,
    Json? otherPhones,
    Fragment_FullPersonData_personType? personType,
    Fragment_FullPersonData_qualification? qualification,
    Fragment_FullPersonData_school? school,
    List<Fragment_FullPersonData_services>? services,
    Fragment_FullPersonData_shammasLevel? shammasLevel,
    Fragment_FullPersonData_state? state,
    Fragment_FullPersonData_studyYear? studyYear,
    List<Fragment_FullPersonData_hobbies>? hobbies,
    List<Fragment_FullPersonData_tags>? tags,
    UuidValue? uid,
    Fragment_FullPersonData_user? user,
  }) => _res;

  CopyWith_Fragment_Address<TRes> get address =>
      CopyWith_Fragment_Address.stub(_res);

  classes(_fn) => _res;

  CopyWith_Fragment_FullPersonData_church<TRes> get church =>
      CopyWith_Fragment_FullPersonData_church.stub(_res);

  CopyWith_Fragment_FullPersonData_college<TRes> get college =>
      CopyWith_Fragment_FullPersonData_college.stub(_res);

  CopyWith_Fragment_Family<TRes> get family =>
      CopyWith_Fragment_Family.stub(_res);

  CopyWith_Fragment_FullPersonData_father<TRes> get father =>
      CopyWith_Fragment_FullPersonData_father.stub(_res);

  groups(_fn) => _res;

  CopyWith_Fragment_FullPersonData_job<TRes> get job =>
      CopyWith_Fragment_FullPersonData_job.stub(_res);

  CopyWith_Fragment_LatestCallHistory<TRes> get lastCall =>
      CopyWith_Fragment_LatestCallHistory.stub(_res);

  CopyWith_Fragment_LatestConfessionHistory<TRes> get lastConfession =>
      CopyWith_Fragment_LatestConfessionHistory.stub(_res);

  CopyWith_Fragment_LatestEditHistory<TRes> get lastEdit =>
      CopyWith_Fragment_LatestEditHistory.stub(_res);

  CopyWith_Fragment_LatestKodasHistory<TRes> get lastKodas =>
      CopyWith_Fragment_LatestKodasHistory.stub(_res);

  CopyWith_Fragment_LatestVisitHistory<TRes> get lastVisit =>
      CopyWith_Fragment_LatestVisitHistory.stub(_res);

  CopyWith_Fragment_FullPersonData_personType<TRes> get personType =>
      CopyWith_Fragment_FullPersonData_personType.stub(_res);

  CopyWith_Fragment_FullPersonData_qualification<TRes> get qualification =>
      CopyWith_Fragment_FullPersonData_qualification.stub(_res);

  CopyWith_Fragment_FullPersonData_school<TRes> get school =>
      CopyWith_Fragment_FullPersonData_school.stub(_res);

  services(_fn) => _res;

  CopyWith_Fragment_FullPersonData_shammasLevel<TRes> get shammasLevel =>
      CopyWith_Fragment_FullPersonData_shammasLevel.stub(_res);

  CopyWith_Fragment_FullPersonData_state<TRes> get state =>
      CopyWith_Fragment_FullPersonData_state.stub(_res);

  CopyWith_Fragment_FullPersonData_studyYear<TRes> get studyYear =>
      CopyWith_Fragment_FullPersonData_studyYear.stub(_res);

  hobbies(_fn) => _res;

  tags(_fn) => _res;

  CopyWith_Fragment_FullPersonData_user<TRes> get user =>
      CopyWith_Fragment_FullPersonData_user.stub(_res);
}

const fragmentDefinitionFullPersonData = FragmentDefinitionNode(
  name: NameNode(value: 'FullPersonData'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'Persons'), isNonNull: false),
  ),
  directives: [],
  selectionSet: SelectionSetNode(
    selections: [
      FragmentSpreadNode(
        name: NameNode(value: 'Person'),
        directives: [],
      ),
      FieldNode(
        name: NameNode(value: 'birthdate'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
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
        name: NameNode(value: 'classes'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'limit'),
            value: IntValueNode(value: '6'),
          ),
          ArgumentNode(
            name: NameNode(value: 'orderBy'),
            value: ObjectValueNode(
              fields: [
                ObjectFieldNode(
                  name: NameNode(value: 'class'),
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
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
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
              name: NameNode(value: 'Family'),
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
              name: NameNode(value: 'church'),
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
        name: NameNode(value: 'groups'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'limit'),
            value: IntValueNode(value: '6'),
          ),
          ArgumentNode(
            name: NameNode(value: 'orderBy'),
            value: ObjectValueNode(
              fields: [
                ObjectFieldNode(
                  name: NameNode(value: 'group'),
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
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
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
        name: NameNode(value: 'isShammas'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'isStudent'),
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
        name: NameNode(value: 'lastCall'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'LatestCallHistory'),
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
        name: NameNode(value: 'lastConfession'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'LatestConfessionHistory'),
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
        name: NameNode(value: 'lastEdit'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'LatestEditHistory'),
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
        name: NameNode(value: 'lastKodas'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'LatestKodasHistory'),
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
        name: NameNode(value: 'lastVisit'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'LatestVisitHistory'),
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
        name: NameNode(value: 'mainPhone'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'notes'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'otherPhones'),
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
          ],
        ),
      ),
      FieldNode(
        name: NameNode(value: 'services'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'limit'),
            value: IntValueNode(value: '6'),
          ),
          ArgumentNode(
            name: NameNode(value: 'orderBy'),
            value: ObjectValueNode(
              fields: [
                ObjectFieldNode(
                  name: NameNode(value: 'service'),
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
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
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
              name: NameNode(value: 'order'),
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
        name: NameNode(value: 'state'),
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
              name: NameNode(value: 'color'),
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
            FieldNode(
              name: NameNode(value: 'name'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'order'),
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
        name: NameNode(value: 'hobbies'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'orderBy'),
            value: ObjectValueNode(
              fields: [
                ObjectFieldNode(
                  name: NameNode(value: 'hobby'),
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
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FieldNode(
              name: NameNode(value: 'hobby'),
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
                    name: NameNode(value: 'color'),
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
        name: NameNode(value: 'tags'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'orderBy'),
            value: ObjectValueNode(
              fields: [
                ObjectFieldNode(
                  name: NameNode(value: 'tag'),
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
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FieldNode(
              name: NameNode(value: 'tag'),
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
                    name: NameNode(value: 'color'),
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
            FieldNode(
              name: NameNode(value: 'uid'),
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
              name: NameNode(value: 'email'),
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
);
const documentNodeFragmentFullPersonData = DocumentNode(
  definitions: [
    fragmentDefinitionFullPersonData,
    fragmentDefinitionPerson,
    fragmentDefinitionPersonNoPhoto,
    fragmentDefinitionAddress,
    fragmentDefinitionArea,
    fragmentDefinitionAreaNoPhoto,
    fragmentDefinitionStreet,
    fragmentDefinitionStreetNoPhoto,
    fragmentDefinitionClass,
    fragmentDefinitionClassNoPhoto,
    fragmentDefinitionFamily,
    fragmentDefinitionFamilyNoPhoto,
    fragmentDefinitionGroup,
    fragmentDefinitionGroupNoPhoto,
    fragmentDefinitionLatestCallHistory,
    fragmentDefinitionUser,
    fragmentDefinitionUserNoPhoto,
    fragmentDefinitionLatestConfessionHistory,
    fragmentDefinitionLatestEditHistory,
    fragmentDefinitionLatestKodasHistory,
    fragmentDefinitionLatestVisitHistory,
    fragmentDefinitionServiceWithStudyYears,
    fragmentDefinitionServiceNoPhoto,
  ],
);

class Fragment_FullPersonData_classes {
  Fragment_FullPersonData_classes({
    this.$class,
    this.$__typename = 'ClassesPersons',
  });

  factory Fragment_FullPersonData_classes.fromJson(Map<String, dynamic> json) {
    final l$$class = json['class'];
    final l$$__typename = json['__typename'];
    return Fragment_FullPersonData_classes(
      $class: l$$class == null
          ? null
          : Fragment_Class.fromJson((l$$class as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_Class? $class;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$class = $class;
    _resultData['class'] = l$$class?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$class = $class;
    final l$$__typename = $__typename;
    return Object.hashAll([l$$class, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_FullPersonData_classes ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension_Fragment_FullPersonData_classes
    on Fragment_FullPersonData_classes {
  CopyWith_Fragment_FullPersonData_classes<Fragment_FullPersonData_classes>
  get copyWith => CopyWith_Fragment_FullPersonData_classes(this, (i) => i);
}

abstract class CopyWith_Fragment_FullPersonData_classes<TRes> {
  factory CopyWith_Fragment_FullPersonData_classes(
    Fragment_FullPersonData_classes instance,
    TRes Function(Fragment_FullPersonData_classes) then,
  ) = _CopyWithImpl_Fragment_FullPersonData_classes;

  factory CopyWith_Fragment_FullPersonData_classes.stub(TRes res) =
      _CopyWithStubImpl_Fragment_FullPersonData_classes;

  TRes call({Fragment_Class? $class, String? $__typename});
  CopyWith_Fragment_Class<TRes> get $class;
}

class _CopyWithImpl_Fragment_FullPersonData_classes<TRes>
    implements CopyWith_Fragment_FullPersonData_classes<TRes> {
  _CopyWithImpl_Fragment_FullPersonData_classes(this._instance, this._then);

  final Fragment_FullPersonData_classes _instance;

  final TRes Function(Fragment_FullPersonData_classes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $class = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Fragment_FullPersonData_classes(
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

class _CopyWithStubImpl_Fragment_FullPersonData_classes<TRes>
    implements CopyWith_Fragment_FullPersonData_classes<TRes> {
  _CopyWithStubImpl_Fragment_FullPersonData_classes(this._res);

  TRes _res;

  call({Fragment_Class? $class, String? $__typename}) => _res;

  CopyWith_Fragment_Class<TRes> get $class =>
      CopyWith_Fragment_Class.stub(_res);
}

class Fragment_FullPersonData_church {
  Fragment_FullPersonData_church({
    required this.id,
    required this.name,
    this.$__typename = 'Churches',
  });

  factory Fragment_FullPersonData_church.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Fragment_FullPersonData_church(
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
    return Object.hashAll([l$id, l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_FullPersonData_church ||
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

extension UtilityExtension_Fragment_FullPersonData_church
    on Fragment_FullPersonData_church {
  CopyWith_Fragment_FullPersonData_church<Fragment_FullPersonData_church>
  get copyWith => CopyWith_Fragment_FullPersonData_church(this, (i) => i);
}

abstract class CopyWith_Fragment_FullPersonData_church<TRes> {
  factory CopyWith_Fragment_FullPersonData_church(
    Fragment_FullPersonData_church instance,
    TRes Function(Fragment_FullPersonData_church) then,
  ) = _CopyWithImpl_Fragment_FullPersonData_church;

  factory CopyWith_Fragment_FullPersonData_church.stub(TRes res) =
      _CopyWithStubImpl_Fragment_FullPersonData_church;

  TRes call({UuidValue? id, String? name, String? $__typename});
}

class _CopyWithImpl_Fragment_FullPersonData_church<TRes>
    implements CopyWith_Fragment_FullPersonData_church<TRes> {
  _CopyWithImpl_Fragment_FullPersonData_church(this._instance, this._then);

  final Fragment_FullPersonData_church _instance;

  final TRes Function(Fragment_FullPersonData_church) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_FullPersonData_church(
      id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Fragment_FullPersonData_church<TRes>
    implements CopyWith_Fragment_FullPersonData_church<TRes> {
  _CopyWithStubImpl_Fragment_FullPersonData_church(this._res);

  TRes _res;

  call({UuidValue? id, String? name, String? $__typename}) => _res;
}

class Fragment_FullPersonData_college {
  Fragment_FullPersonData_college({
    required this.id,
    required this.name,
    this.$__typename = 'Colleges',
  });

  factory Fragment_FullPersonData_college.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Fragment_FullPersonData_college(
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
    return Object.hashAll([l$id, l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_FullPersonData_college ||
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

extension UtilityExtension_Fragment_FullPersonData_college
    on Fragment_FullPersonData_college {
  CopyWith_Fragment_FullPersonData_college<Fragment_FullPersonData_college>
  get copyWith => CopyWith_Fragment_FullPersonData_college(this, (i) => i);
}

abstract class CopyWith_Fragment_FullPersonData_college<TRes> {
  factory CopyWith_Fragment_FullPersonData_college(
    Fragment_FullPersonData_college instance,
    TRes Function(Fragment_FullPersonData_college) then,
  ) = _CopyWithImpl_Fragment_FullPersonData_college;

  factory CopyWith_Fragment_FullPersonData_college.stub(TRes res) =
      _CopyWithStubImpl_Fragment_FullPersonData_college;

  TRes call({UuidValue? id, String? name, String? $__typename});
}

class _CopyWithImpl_Fragment_FullPersonData_college<TRes>
    implements CopyWith_Fragment_FullPersonData_college<TRes> {
  _CopyWithImpl_Fragment_FullPersonData_college(this._instance, this._then);

  final Fragment_FullPersonData_college _instance;

  final TRes Function(Fragment_FullPersonData_college) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_FullPersonData_college(
      id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Fragment_FullPersonData_college<TRes>
    implements CopyWith_Fragment_FullPersonData_college<TRes> {
  _CopyWithStubImpl_Fragment_FullPersonData_college(this._res);

  TRes _res;

  call({UuidValue? id, String? name, String? $__typename}) => _res;
}

class Fragment_FullPersonData_father {
  Fragment_FullPersonData_father({
    required this.id,
    required this.name,
    this.church,
    this.$__typename = 'Fathers',
  });

  factory Fragment_FullPersonData_father.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$church = json['church'];
    final l$$__typename = json['__typename'];
    return Fragment_FullPersonData_father(
      id: stringToUuid(l$id),
      name: (l$name as String),
      church: l$church == null
          ? null
          : Fragment_FullPersonData_father_church.fromJson(
              (l$church as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final String name;

  final Fragment_FullPersonData_father_church? church;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$church = church;
    _resultData['church'] = l$church?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$church = church;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$name, l$church, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_FullPersonData_father ||
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
    final l$church = church;
    final lOther$church = other.church;
    if (l$church != lOther$church) {
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

extension UtilityExtension_Fragment_FullPersonData_father
    on Fragment_FullPersonData_father {
  CopyWith_Fragment_FullPersonData_father<Fragment_FullPersonData_father>
  get copyWith => CopyWith_Fragment_FullPersonData_father(this, (i) => i);
}

abstract class CopyWith_Fragment_FullPersonData_father<TRes> {
  factory CopyWith_Fragment_FullPersonData_father(
    Fragment_FullPersonData_father instance,
    TRes Function(Fragment_FullPersonData_father) then,
  ) = _CopyWithImpl_Fragment_FullPersonData_father;

  factory CopyWith_Fragment_FullPersonData_father.stub(TRes res) =
      _CopyWithStubImpl_Fragment_FullPersonData_father;

  TRes call({
    UuidValue? id,
    String? name,
    Fragment_FullPersonData_father_church? church,
    String? $__typename,
  });
  CopyWith_Fragment_FullPersonData_father_church<TRes> get church;
}

class _CopyWithImpl_Fragment_FullPersonData_father<TRes>
    implements CopyWith_Fragment_FullPersonData_father<TRes> {
  _CopyWithImpl_Fragment_FullPersonData_father(this._instance, this._then);

  final Fragment_FullPersonData_father _instance;

  final TRes Function(Fragment_FullPersonData_father) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? church = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_FullPersonData_father(
      id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      church: church == _undefined
          ? _instance.church
          : (church as Fragment_FullPersonData_father_church?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Fragment_FullPersonData_father_church<TRes> get church {
    final local$church = _instance.church;
    return local$church == null
        ? CopyWith_Fragment_FullPersonData_father_church.stub(_then(_instance))
        : CopyWith_Fragment_FullPersonData_father_church(
            local$church,
            (e) => call(church: e),
          );
  }
}

class _CopyWithStubImpl_Fragment_FullPersonData_father<TRes>
    implements CopyWith_Fragment_FullPersonData_father<TRes> {
  _CopyWithStubImpl_Fragment_FullPersonData_father(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    Fragment_FullPersonData_father_church? church,
    String? $__typename,
  }) => _res;

  CopyWith_Fragment_FullPersonData_father_church<TRes> get church =>
      CopyWith_Fragment_FullPersonData_father_church.stub(_res);
}

class Fragment_FullPersonData_father_church {
  Fragment_FullPersonData_father_church({
    required this.id,
    required this.name,
    this.$__typename = 'Churches',
  });

  factory Fragment_FullPersonData_father_church.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Fragment_FullPersonData_father_church(
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
    return Object.hashAll([l$id, l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_FullPersonData_father_church ||
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

extension UtilityExtension_Fragment_FullPersonData_father_church
    on Fragment_FullPersonData_father_church {
  CopyWith_Fragment_FullPersonData_father_church<
    Fragment_FullPersonData_father_church
  >
  get copyWith =>
      CopyWith_Fragment_FullPersonData_father_church(this, (i) => i);
}

abstract class CopyWith_Fragment_FullPersonData_father_church<TRes> {
  factory CopyWith_Fragment_FullPersonData_father_church(
    Fragment_FullPersonData_father_church instance,
    TRes Function(Fragment_FullPersonData_father_church) then,
  ) = _CopyWithImpl_Fragment_FullPersonData_father_church;

  factory CopyWith_Fragment_FullPersonData_father_church.stub(TRes res) =
      _CopyWithStubImpl_Fragment_FullPersonData_father_church;

  TRes call({UuidValue? id, String? name, String? $__typename});
}

class _CopyWithImpl_Fragment_FullPersonData_father_church<TRes>
    implements CopyWith_Fragment_FullPersonData_father_church<TRes> {
  _CopyWithImpl_Fragment_FullPersonData_father_church(
    this._instance,
    this._then,
  );

  final Fragment_FullPersonData_father_church _instance;

  final TRes Function(Fragment_FullPersonData_father_church) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_FullPersonData_father_church(
      id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Fragment_FullPersonData_father_church<TRes>
    implements CopyWith_Fragment_FullPersonData_father_church<TRes> {
  _CopyWithStubImpl_Fragment_FullPersonData_father_church(this._res);

  TRes _res;

  call({UuidValue? id, String? name, String? $__typename}) => _res;
}

class Fragment_FullPersonData_groups {
  Fragment_FullPersonData_groups({
    required this.group,
    this.$__typename = 'PersonsGroups',
  });

  factory Fragment_FullPersonData_groups.fromJson(Map<String, dynamic> json) {
    final l$group = json['group'];
    final l$$__typename = json['__typename'];
    return Fragment_FullPersonData_groups(
      group: Fragment_Group.fromJson((l$group as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_Group group;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$group = group;
    _resultData['group'] = l$group.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$group = group;
    final l$$__typename = $__typename;
    return Object.hashAll([l$group, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_FullPersonData_groups ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension_Fragment_FullPersonData_groups
    on Fragment_FullPersonData_groups {
  CopyWith_Fragment_FullPersonData_groups<Fragment_FullPersonData_groups>
  get copyWith => CopyWith_Fragment_FullPersonData_groups(this, (i) => i);
}

abstract class CopyWith_Fragment_FullPersonData_groups<TRes> {
  factory CopyWith_Fragment_FullPersonData_groups(
    Fragment_FullPersonData_groups instance,
    TRes Function(Fragment_FullPersonData_groups) then,
  ) = _CopyWithImpl_Fragment_FullPersonData_groups;

  factory CopyWith_Fragment_FullPersonData_groups.stub(TRes res) =
      _CopyWithStubImpl_Fragment_FullPersonData_groups;

  TRes call({Fragment_Group? group, String? $__typename});
  CopyWith_Fragment_Group<TRes> get group;
}

class _CopyWithImpl_Fragment_FullPersonData_groups<TRes>
    implements CopyWith_Fragment_FullPersonData_groups<TRes> {
  _CopyWithImpl_Fragment_FullPersonData_groups(this._instance, this._then);

  final Fragment_FullPersonData_groups _instance;

  final TRes Function(Fragment_FullPersonData_groups) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? group = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Fragment_FullPersonData_groups(
          group: group == _undefined || group == null
              ? _instance.group
              : (group as Fragment_Group),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith_Fragment_Group<TRes> get group {
    final local$group = _instance.group;
    return CopyWith_Fragment_Group(local$group, (e) => call(group: e));
  }
}

class _CopyWithStubImpl_Fragment_FullPersonData_groups<TRes>
    implements CopyWith_Fragment_FullPersonData_groups<TRes> {
  _CopyWithStubImpl_Fragment_FullPersonData_groups(this._res);

  TRes _res;

  call({Fragment_Group? group, String? $__typename}) => _res;

  CopyWith_Fragment_Group<TRes> get group => CopyWith_Fragment_Group.stub(_res);
}

class Fragment_FullPersonData_job {
  Fragment_FullPersonData_job({
    required this.id,
    required this.name,
    this.$__typename = 'Jobs',
  });

  factory Fragment_FullPersonData_job.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Fragment_FullPersonData_job(
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
    return Object.hashAll([l$id, l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_FullPersonData_job ||
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

extension UtilityExtension_Fragment_FullPersonData_job
    on Fragment_FullPersonData_job {
  CopyWith_Fragment_FullPersonData_job<Fragment_FullPersonData_job>
  get copyWith => CopyWith_Fragment_FullPersonData_job(this, (i) => i);
}

abstract class CopyWith_Fragment_FullPersonData_job<TRes> {
  factory CopyWith_Fragment_FullPersonData_job(
    Fragment_FullPersonData_job instance,
    TRes Function(Fragment_FullPersonData_job) then,
  ) = _CopyWithImpl_Fragment_FullPersonData_job;

  factory CopyWith_Fragment_FullPersonData_job.stub(TRes res) =
      _CopyWithStubImpl_Fragment_FullPersonData_job;

  TRes call({UuidValue? id, String? name, String? $__typename});
}

class _CopyWithImpl_Fragment_FullPersonData_job<TRes>
    implements CopyWith_Fragment_FullPersonData_job<TRes> {
  _CopyWithImpl_Fragment_FullPersonData_job(this._instance, this._then);

  final Fragment_FullPersonData_job _instance;

  final TRes Function(Fragment_FullPersonData_job) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_FullPersonData_job(
      id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Fragment_FullPersonData_job<TRes>
    implements CopyWith_Fragment_FullPersonData_job<TRes> {
  _CopyWithStubImpl_Fragment_FullPersonData_job(this._res);

  TRes _res;

  call({UuidValue? id, String? name, String? $__typename}) => _res;
}

class Fragment_FullPersonData_personType {
  Fragment_FullPersonData_personType({
    required this.id,
    required this.name,
    this.$__typename = 'PersonTypes',
  });

  factory Fragment_FullPersonData_personType.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Fragment_FullPersonData_personType(
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
    return Object.hashAll([l$id, l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_FullPersonData_personType ||
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

extension UtilityExtension_Fragment_FullPersonData_personType
    on Fragment_FullPersonData_personType {
  CopyWith_Fragment_FullPersonData_personType<
    Fragment_FullPersonData_personType
  >
  get copyWith => CopyWith_Fragment_FullPersonData_personType(this, (i) => i);
}

abstract class CopyWith_Fragment_FullPersonData_personType<TRes> {
  factory CopyWith_Fragment_FullPersonData_personType(
    Fragment_FullPersonData_personType instance,
    TRes Function(Fragment_FullPersonData_personType) then,
  ) = _CopyWithImpl_Fragment_FullPersonData_personType;

  factory CopyWith_Fragment_FullPersonData_personType.stub(TRes res) =
      _CopyWithStubImpl_Fragment_FullPersonData_personType;

  TRes call({UuidValue? id, String? name, String? $__typename});
}

class _CopyWithImpl_Fragment_FullPersonData_personType<TRes>
    implements CopyWith_Fragment_FullPersonData_personType<TRes> {
  _CopyWithImpl_Fragment_FullPersonData_personType(this._instance, this._then);

  final Fragment_FullPersonData_personType _instance;

  final TRes Function(Fragment_FullPersonData_personType) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_FullPersonData_personType(
      id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Fragment_FullPersonData_personType<TRes>
    implements CopyWith_Fragment_FullPersonData_personType<TRes> {
  _CopyWithStubImpl_Fragment_FullPersonData_personType(this._res);

  TRes _res;

  call({UuidValue? id, String? name, String? $__typename}) => _res;
}

class Fragment_FullPersonData_qualification {
  Fragment_FullPersonData_qualification({
    required this.id,
    required this.name,
    this.$__typename = 'Qualifications',
  });

  factory Fragment_FullPersonData_qualification.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Fragment_FullPersonData_qualification(
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
    return Object.hashAll([l$id, l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_FullPersonData_qualification ||
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

extension UtilityExtension_Fragment_FullPersonData_qualification
    on Fragment_FullPersonData_qualification {
  CopyWith_Fragment_FullPersonData_qualification<
    Fragment_FullPersonData_qualification
  >
  get copyWith =>
      CopyWith_Fragment_FullPersonData_qualification(this, (i) => i);
}

abstract class CopyWith_Fragment_FullPersonData_qualification<TRes> {
  factory CopyWith_Fragment_FullPersonData_qualification(
    Fragment_FullPersonData_qualification instance,
    TRes Function(Fragment_FullPersonData_qualification) then,
  ) = _CopyWithImpl_Fragment_FullPersonData_qualification;

  factory CopyWith_Fragment_FullPersonData_qualification.stub(TRes res) =
      _CopyWithStubImpl_Fragment_FullPersonData_qualification;

  TRes call({UuidValue? id, String? name, String? $__typename});
}

class _CopyWithImpl_Fragment_FullPersonData_qualification<TRes>
    implements CopyWith_Fragment_FullPersonData_qualification<TRes> {
  _CopyWithImpl_Fragment_FullPersonData_qualification(
    this._instance,
    this._then,
  );

  final Fragment_FullPersonData_qualification _instance;

  final TRes Function(Fragment_FullPersonData_qualification) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_FullPersonData_qualification(
      id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Fragment_FullPersonData_qualification<TRes>
    implements CopyWith_Fragment_FullPersonData_qualification<TRes> {
  _CopyWithStubImpl_Fragment_FullPersonData_qualification(this._res);

  TRes _res;

  call({UuidValue? id, String? name, String? $__typename}) => _res;
}

class Fragment_FullPersonData_school {
  Fragment_FullPersonData_school({
    required this.id,
    required this.name,
    this.$__typename = 'Schools',
  });

  factory Fragment_FullPersonData_school.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Fragment_FullPersonData_school(
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
    return Object.hashAll([l$id, l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_FullPersonData_school ||
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

extension UtilityExtension_Fragment_FullPersonData_school
    on Fragment_FullPersonData_school {
  CopyWith_Fragment_FullPersonData_school<Fragment_FullPersonData_school>
  get copyWith => CopyWith_Fragment_FullPersonData_school(this, (i) => i);
}

abstract class CopyWith_Fragment_FullPersonData_school<TRes> {
  factory CopyWith_Fragment_FullPersonData_school(
    Fragment_FullPersonData_school instance,
    TRes Function(Fragment_FullPersonData_school) then,
  ) = _CopyWithImpl_Fragment_FullPersonData_school;

  factory CopyWith_Fragment_FullPersonData_school.stub(TRes res) =
      _CopyWithStubImpl_Fragment_FullPersonData_school;

  TRes call({UuidValue? id, String? name, String? $__typename});
}

class _CopyWithImpl_Fragment_FullPersonData_school<TRes>
    implements CopyWith_Fragment_FullPersonData_school<TRes> {
  _CopyWithImpl_Fragment_FullPersonData_school(this._instance, this._then);

  final Fragment_FullPersonData_school _instance;

  final TRes Function(Fragment_FullPersonData_school) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_FullPersonData_school(
      id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Fragment_FullPersonData_school<TRes>
    implements CopyWith_Fragment_FullPersonData_school<TRes> {
  _CopyWithStubImpl_Fragment_FullPersonData_school(this._res);

  TRes _res;

  call({UuidValue? id, String? name, String? $__typename}) => _res;
}

class Fragment_FullPersonData_services {
  Fragment_FullPersonData_services({
    required this.service,
    this.$__typename = 'PersonsServices',
  });

  factory Fragment_FullPersonData_services.fromJson(Map<String, dynamic> json) {
    final l$service = json['service'];
    final l$$__typename = json['__typename'];
    return Fragment_FullPersonData_services(
      service: Fragment_ServiceWithStudyYears.fromJson(
        (l$service as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_ServiceWithStudyYears service;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$service = service;
    _resultData['service'] = l$service.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$service = service;
    final l$$__typename = $__typename;
    return Object.hashAll([l$service, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_FullPersonData_services ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension_Fragment_FullPersonData_services
    on Fragment_FullPersonData_services {
  CopyWith_Fragment_FullPersonData_services<Fragment_FullPersonData_services>
  get copyWith => CopyWith_Fragment_FullPersonData_services(this, (i) => i);
}

abstract class CopyWith_Fragment_FullPersonData_services<TRes> {
  factory CopyWith_Fragment_FullPersonData_services(
    Fragment_FullPersonData_services instance,
    TRes Function(Fragment_FullPersonData_services) then,
  ) = _CopyWithImpl_Fragment_FullPersonData_services;

  factory CopyWith_Fragment_FullPersonData_services.stub(TRes res) =
      _CopyWithStubImpl_Fragment_FullPersonData_services;

  TRes call({Fragment_ServiceWithStudyYears? service, String? $__typename});
  CopyWith_Fragment_ServiceWithStudyYears<TRes> get service;
}

class _CopyWithImpl_Fragment_FullPersonData_services<TRes>
    implements CopyWith_Fragment_FullPersonData_services<TRes> {
  _CopyWithImpl_Fragment_FullPersonData_services(this._instance, this._then);

  final Fragment_FullPersonData_services _instance;

  final TRes Function(Fragment_FullPersonData_services) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? service = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Fragment_FullPersonData_services(
          service: service == _undefined || service == null
              ? _instance.service
              : (service as Fragment_ServiceWithStudyYears),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith_Fragment_ServiceWithStudyYears<TRes> get service {
    final local$service = _instance.service;
    return CopyWith_Fragment_ServiceWithStudyYears(
      local$service,
      (e) => call(service: e),
    );
  }
}

class _CopyWithStubImpl_Fragment_FullPersonData_services<TRes>
    implements CopyWith_Fragment_FullPersonData_services<TRes> {
  _CopyWithStubImpl_Fragment_FullPersonData_services(this._res);

  TRes _res;

  call({Fragment_ServiceWithStudyYears? service, String? $__typename}) => _res;

  CopyWith_Fragment_ServiceWithStudyYears<TRes> get service =>
      CopyWith_Fragment_ServiceWithStudyYears.stub(_res);
}

class Fragment_FullPersonData_shammasLevel {
  Fragment_FullPersonData_shammasLevel({
    required this.id,
    required this.name,
    required this.order,
    this.$__typename = 'ShammasLevels',
  });

  factory Fragment_FullPersonData_shammasLevel.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$order = json['order'];
    final l$$__typename = json['__typename'];
    return Fragment_FullPersonData_shammasLevel(
      id: stringToUuid(l$id),
      name: (l$name as String),
      order: (l$order as int),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final String name;

  final int order;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$order = order;
    _resultData['order'] = l$order;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$order = order;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$name, l$order, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_FullPersonData_shammasLevel ||
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
    final l$order = order;
    final lOther$order = other.order;
    if (l$order != lOther$order) {
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

extension UtilityExtension_Fragment_FullPersonData_shammasLevel
    on Fragment_FullPersonData_shammasLevel {
  CopyWith_Fragment_FullPersonData_shammasLevel<
    Fragment_FullPersonData_shammasLevel
  >
  get copyWith => CopyWith_Fragment_FullPersonData_shammasLevel(this, (i) => i);
}

abstract class CopyWith_Fragment_FullPersonData_shammasLevel<TRes> {
  factory CopyWith_Fragment_FullPersonData_shammasLevel(
    Fragment_FullPersonData_shammasLevel instance,
    TRes Function(Fragment_FullPersonData_shammasLevel) then,
  ) = _CopyWithImpl_Fragment_FullPersonData_shammasLevel;

  factory CopyWith_Fragment_FullPersonData_shammasLevel.stub(TRes res) =
      _CopyWithStubImpl_Fragment_FullPersonData_shammasLevel;

  TRes call({UuidValue? id, String? name, int? order, String? $__typename});
}

class _CopyWithImpl_Fragment_FullPersonData_shammasLevel<TRes>
    implements CopyWith_Fragment_FullPersonData_shammasLevel<TRes> {
  _CopyWithImpl_Fragment_FullPersonData_shammasLevel(
    this._instance,
    this._then,
  );

  final Fragment_FullPersonData_shammasLevel _instance;

  final TRes Function(Fragment_FullPersonData_shammasLevel) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? order = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_FullPersonData_shammasLevel(
      id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      order: order == _undefined || order == null
          ? _instance.order
          : (order as int),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Fragment_FullPersonData_shammasLevel<TRes>
    implements CopyWith_Fragment_FullPersonData_shammasLevel<TRes> {
  _CopyWithStubImpl_Fragment_FullPersonData_shammasLevel(this._res);

  TRes _res;

  call({UuidValue? id, String? name, int? order, String? $__typename}) => _res;
}

class Fragment_FullPersonData_state {
  Fragment_FullPersonData_state({
    required this.id,
    required this.color,
    required this.name,
    this.$__typename = 'PersonStates',
  });

  factory Fragment_FullPersonData_state.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$color = json['color'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Fragment_FullPersonData_state(
      id: stringToUuid(l$id),
      color: (l$color as int),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final int color;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$color = color;
    _resultData['color'] = l$color;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$color = color;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$color, l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_FullPersonData_state ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$color = color;
    final lOther$color = other.color;
    if (l$color != lOther$color) {
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

extension UtilityExtension_Fragment_FullPersonData_state
    on Fragment_FullPersonData_state {
  CopyWith_Fragment_FullPersonData_state<Fragment_FullPersonData_state>
  get copyWith => CopyWith_Fragment_FullPersonData_state(this, (i) => i);
}

abstract class CopyWith_Fragment_FullPersonData_state<TRes> {
  factory CopyWith_Fragment_FullPersonData_state(
    Fragment_FullPersonData_state instance,
    TRes Function(Fragment_FullPersonData_state) then,
  ) = _CopyWithImpl_Fragment_FullPersonData_state;

  factory CopyWith_Fragment_FullPersonData_state.stub(TRes res) =
      _CopyWithStubImpl_Fragment_FullPersonData_state;

  TRes call({UuidValue? id, int? color, String? name, String? $__typename});
}

class _CopyWithImpl_Fragment_FullPersonData_state<TRes>
    implements CopyWith_Fragment_FullPersonData_state<TRes> {
  _CopyWithImpl_Fragment_FullPersonData_state(this._instance, this._then);

  final Fragment_FullPersonData_state _instance;

  final TRes Function(Fragment_FullPersonData_state) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? color = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_FullPersonData_state(
      id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
      color: color == _undefined || color == null
          ? _instance.color
          : (color as int),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Fragment_FullPersonData_state<TRes>
    implements CopyWith_Fragment_FullPersonData_state<TRes> {
  _CopyWithStubImpl_Fragment_FullPersonData_state(this._res);

  TRes _res;

  call({UuidValue? id, int? color, String? name, String? $__typename}) => _res;
}

class Fragment_FullPersonData_studyYear {
  Fragment_FullPersonData_studyYear({
    required this.name,
    required this.order,
    this.$__typename = 'StudyYears',
  });

  factory Fragment_FullPersonData_studyYear.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$name = json['name'];
    final l$order = json['order'];
    final l$$__typename = json['__typename'];
    return Fragment_FullPersonData_studyYear(
      name: (l$name as String),
      order: (l$order as int),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final int order;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$order = order;
    _resultData['order'] = l$order;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$order = order;
    final l$$__typename = $__typename;
    return Object.hashAll([l$name, l$order, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_FullPersonData_studyYear ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$order = order;
    final lOther$order = other.order;
    if (l$order != lOther$order) {
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

extension UtilityExtension_Fragment_FullPersonData_studyYear
    on Fragment_FullPersonData_studyYear {
  CopyWith_Fragment_FullPersonData_studyYear<Fragment_FullPersonData_studyYear>
  get copyWith => CopyWith_Fragment_FullPersonData_studyYear(this, (i) => i);
}

abstract class CopyWith_Fragment_FullPersonData_studyYear<TRes> {
  factory CopyWith_Fragment_FullPersonData_studyYear(
    Fragment_FullPersonData_studyYear instance,
    TRes Function(Fragment_FullPersonData_studyYear) then,
  ) = _CopyWithImpl_Fragment_FullPersonData_studyYear;

  factory CopyWith_Fragment_FullPersonData_studyYear.stub(TRes res) =
      _CopyWithStubImpl_Fragment_FullPersonData_studyYear;

  TRes call({String? name, int? order, String? $__typename});
}

class _CopyWithImpl_Fragment_FullPersonData_studyYear<TRes>
    implements CopyWith_Fragment_FullPersonData_studyYear<TRes> {
  _CopyWithImpl_Fragment_FullPersonData_studyYear(this._instance, this._then);

  final Fragment_FullPersonData_studyYear _instance;

  final TRes Function(Fragment_FullPersonData_studyYear) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? order = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_FullPersonData_studyYear(
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      order: order == _undefined || order == null
          ? _instance.order
          : (order as int),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Fragment_FullPersonData_studyYear<TRes>
    implements CopyWith_Fragment_FullPersonData_studyYear<TRes> {
  _CopyWithStubImpl_Fragment_FullPersonData_studyYear(this._res);

  TRes _res;

  call({String? name, int? order, String? $__typename}) => _res;
}

class Fragment_FullPersonData_hobbies {
  Fragment_FullPersonData_hobbies({
    required this.hobby,
    this.$__typename = 'PersonsHobbies',
  });

  factory Fragment_FullPersonData_hobbies.fromJson(Map<String, dynamic> json) {
    final l$hobby = json['hobby'];
    final l$$__typename = json['__typename'];
    return Fragment_FullPersonData_hobbies(
      hobby: Fragment_FullPersonData_hobbies_hobby.fromJson(
        (l$hobby as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_FullPersonData_hobbies_hobby hobby;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$hobby = hobby;
    _resultData['hobby'] = l$hobby.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$hobby = hobby;
    final l$$__typename = $__typename;
    return Object.hashAll([l$hobby, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_FullPersonData_hobbies ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$hobby = hobby;
    final lOther$hobby = other.hobby;
    if (l$hobby != lOther$hobby) {
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

extension UtilityExtension_Fragment_FullPersonData_hobbies
    on Fragment_FullPersonData_hobbies {
  CopyWith_Fragment_FullPersonData_hobbies<Fragment_FullPersonData_hobbies>
  get copyWith => CopyWith_Fragment_FullPersonData_hobbies(this, (i) => i);
}

abstract class CopyWith_Fragment_FullPersonData_hobbies<TRes> {
  factory CopyWith_Fragment_FullPersonData_hobbies(
    Fragment_FullPersonData_hobbies instance,
    TRes Function(Fragment_FullPersonData_hobbies) then,
  ) = _CopyWithImpl_Fragment_FullPersonData_hobbies;

  factory CopyWith_Fragment_FullPersonData_hobbies.stub(TRes res) =
      _CopyWithStubImpl_Fragment_FullPersonData_hobbies;

  TRes call({
    Fragment_FullPersonData_hobbies_hobby? hobby,
    String? $__typename,
  });
  CopyWith_Fragment_FullPersonData_hobbies_hobby<TRes> get hobby;
}

class _CopyWithImpl_Fragment_FullPersonData_hobbies<TRes>
    implements CopyWith_Fragment_FullPersonData_hobbies<TRes> {
  _CopyWithImpl_Fragment_FullPersonData_hobbies(this._instance, this._then);

  final Fragment_FullPersonData_hobbies _instance;

  final TRes Function(Fragment_FullPersonData_hobbies) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? hobby = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Fragment_FullPersonData_hobbies(
          hobby: hobby == _undefined || hobby == null
              ? _instance.hobby
              : (hobby as Fragment_FullPersonData_hobbies_hobby),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith_Fragment_FullPersonData_hobbies_hobby<TRes> get hobby {
    final local$hobby = _instance.hobby;
    return CopyWith_Fragment_FullPersonData_hobbies_hobby(
      local$hobby,
      (e) => call(hobby: e),
    );
  }
}

class _CopyWithStubImpl_Fragment_FullPersonData_hobbies<TRes>
    implements CopyWith_Fragment_FullPersonData_hobbies<TRes> {
  _CopyWithStubImpl_Fragment_FullPersonData_hobbies(this._res);

  TRes _res;

  call({Fragment_FullPersonData_hobbies_hobby? hobby, String? $__typename}) =>
      _res;

  CopyWith_Fragment_FullPersonData_hobbies_hobby<TRes> get hobby =>
      CopyWith_Fragment_FullPersonData_hobbies_hobby.stub(_res);
}

class Fragment_FullPersonData_hobbies_hobby {
  Fragment_FullPersonData_hobbies_hobby({
    required this.id,
    required this.name,
    this.color,
    this.$__typename = 'Hobbies',
  });

  factory Fragment_FullPersonData_hobbies_hobby.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    return Fragment_FullPersonData_hobbies_hobby(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$name, l$color, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_FullPersonData_hobbies_hobby ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Fragment_FullPersonData_hobbies_hobby
    on Fragment_FullPersonData_hobbies_hobby {
  CopyWith_Fragment_FullPersonData_hobbies_hobby<
    Fragment_FullPersonData_hobbies_hobby
  >
  get copyWith =>
      CopyWith_Fragment_FullPersonData_hobbies_hobby(this, (i) => i);
}

abstract class CopyWith_Fragment_FullPersonData_hobbies_hobby<TRes> {
  factory CopyWith_Fragment_FullPersonData_hobbies_hobby(
    Fragment_FullPersonData_hobbies_hobby instance,
    TRes Function(Fragment_FullPersonData_hobbies_hobby) then,
  ) = _CopyWithImpl_Fragment_FullPersonData_hobbies_hobby;

  factory CopyWith_Fragment_FullPersonData_hobbies_hobby.stub(TRes res) =
      _CopyWithStubImpl_Fragment_FullPersonData_hobbies_hobby;

  TRes call({UuidValue? id, String? name, int? color, String? $__typename});
}

class _CopyWithImpl_Fragment_FullPersonData_hobbies_hobby<TRes>
    implements CopyWith_Fragment_FullPersonData_hobbies_hobby<TRes> {
  _CopyWithImpl_Fragment_FullPersonData_hobbies_hobby(
    this._instance,
    this._then,
  );

  final Fragment_FullPersonData_hobbies_hobby _instance;

  final TRes Function(Fragment_FullPersonData_hobbies_hobby) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_FullPersonData_hobbies_hobby(
      id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      color: color == _undefined ? _instance.color : (color as int?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Fragment_FullPersonData_hobbies_hobby<TRes>
    implements CopyWith_Fragment_FullPersonData_hobbies_hobby<TRes> {
  _CopyWithStubImpl_Fragment_FullPersonData_hobbies_hobby(this._res);

  TRes _res;

  call({UuidValue? id, String? name, int? color, String? $__typename}) => _res;
}

class Fragment_FullPersonData_tags {
  Fragment_FullPersonData_tags({
    required this.tag,
    this.$__typename = 'PersonsTags',
  });

  factory Fragment_FullPersonData_tags.fromJson(Map<String, dynamic> json) {
    final l$tag = json['tag'];
    final l$$__typename = json['__typename'];
    return Fragment_FullPersonData_tags(
      tag: Fragment_FullPersonData_tags_tag.fromJson(
        (l$tag as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_FullPersonData_tags_tag tag;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$tag = tag;
    _resultData['tag'] = l$tag.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$tag = tag;
    final l$$__typename = $__typename;
    return Object.hashAll([l$tag, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_FullPersonData_tags ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$tag = tag;
    final lOther$tag = other.tag;
    if (l$tag != lOther$tag) {
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

extension UtilityExtension_Fragment_FullPersonData_tags
    on Fragment_FullPersonData_tags {
  CopyWith_Fragment_FullPersonData_tags<Fragment_FullPersonData_tags>
  get copyWith => CopyWith_Fragment_FullPersonData_tags(this, (i) => i);
}

abstract class CopyWith_Fragment_FullPersonData_tags<TRes> {
  factory CopyWith_Fragment_FullPersonData_tags(
    Fragment_FullPersonData_tags instance,
    TRes Function(Fragment_FullPersonData_tags) then,
  ) = _CopyWithImpl_Fragment_FullPersonData_tags;

  factory CopyWith_Fragment_FullPersonData_tags.stub(TRes res) =
      _CopyWithStubImpl_Fragment_FullPersonData_tags;

  TRes call({Fragment_FullPersonData_tags_tag? tag, String? $__typename});
  CopyWith_Fragment_FullPersonData_tags_tag<TRes> get tag;
}

class _CopyWithImpl_Fragment_FullPersonData_tags<TRes>
    implements CopyWith_Fragment_FullPersonData_tags<TRes> {
  _CopyWithImpl_Fragment_FullPersonData_tags(this._instance, this._then);

  final Fragment_FullPersonData_tags _instance;

  final TRes Function(Fragment_FullPersonData_tags) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? tag = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Fragment_FullPersonData_tags(
          tag: tag == _undefined || tag == null
              ? _instance.tag
              : (tag as Fragment_FullPersonData_tags_tag),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith_Fragment_FullPersonData_tags_tag<TRes> get tag {
    final local$tag = _instance.tag;
    return CopyWith_Fragment_FullPersonData_tags_tag(
      local$tag,
      (e) => call(tag: e),
    );
  }
}

class _CopyWithStubImpl_Fragment_FullPersonData_tags<TRes>
    implements CopyWith_Fragment_FullPersonData_tags<TRes> {
  _CopyWithStubImpl_Fragment_FullPersonData_tags(this._res);

  TRes _res;

  call({Fragment_FullPersonData_tags_tag? tag, String? $__typename}) => _res;

  CopyWith_Fragment_FullPersonData_tags_tag<TRes> get tag =>
      CopyWith_Fragment_FullPersonData_tags_tag.stub(_res);
}

class Fragment_FullPersonData_tags_tag {
  Fragment_FullPersonData_tags_tag({
    required this.id,
    required this.name,
    this.color,
    this.$__typename = 'Tags',
  });

  factory Fragment_FullPersonData_tags_tag.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    return Fragment_FullPersonData_tags_tag(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$name, l$color, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_FullPersonData_tags_tag ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Fragment_FullPersonData_tags_tag
    on Fragment_FullPersonData_tags_tag {
  CopyWith_Fragment_FullPersonData_tags_tag<Fragment_FullPersonData_tags_tag>
  get copyWith => CopyWith_Fragment_FullPersonData_tags_tag(this, (i) => i);
}

abstract class CopyWith_Fragment_FullPersonData_tags_tag<TRes> {
  factory CopyWith_Fragment_FullPersonData_tags_tag(
    Fragment_FullPersonData_tags_tag instance,
    TRes Function(Fragment_FullPersonData_tags_tag) then,
  ) = _CopyWithImpl_Fragment_FullPersonData_tags_tag;

  factory CopyWith_Fragment_FullPersonData_tags_tag.stub(TRes res) =
      _CopyWithStubImpl_Fragment_FullPersonData_tags_tag;

  TRes call({UuidValue? id, String? name, int? color, String? $__typename});
}

class _CopyWithImpl_Fragment_FullPersonData_tags_tag<TRes>
    implements CopyWith_Fragment_FullPersonData_tags_tag<TRes> {
  _CopyWithImpl_Fragment_FullPersonData_tags_tag(this._instance, this._then);

  final Fragment_FullPersonData_tags_tag _instance;

  final TRes Function(Fragment_FullPersonData_tags_tag) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_FullPersonData_tags_tag(
      id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      color: color == _undefined ? _instance.color : (color as int?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Fragment_FullPersonData_tags_tag<TRes>
    implements CopyWith_Fragment_FullPersonData_tags_tag<TRes> {
  _CopyWithStubImpl_Fragment_FullPersonData_tags_tag(this._res);

  TRes _res;

  call({UuidValue? id, String? name, int? color, String? $__typename}) => _res;
}

class Fragment_FullPersonData_user {
  Fragment_FullPersonData_user({
    required this.uid,
    required this.name,
    required this.email,
    this.$__typename = 'AuthUsersData',
  });

  factory Fragment_FullPersonData_user.fromJson(Map<String, dynamic> json) {
    final l$uid = json['uid'];
    final l$name = json['name'];
    final l$email = json['email'];
    final l$$__typename = json['__typename'];
    return Fragment_FullPersonData_user(
      uid: stringToUuid(l$uid),
      name: (l$name as String),
      email: (l$email as String),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue uid;

  final String name;

  final String email;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$uid = uid;
    _resultData['uid'] = uuidToString(l$uid);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$email = email;
    _resultData['email'] = l$email;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$uid = uid;
    final l$name = name;
    final l$email = email;
    final l$$__typename = $__typename;
    return Object.hashAll([l$uid, l$name, l$email, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_FullPersonData_user ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$uid = uid;
    final lOther$uid = other.uid;
    if (l$uid != lOther$uid) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
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

extension UtilityExtension_Fragment_FullPersonData_user
    on Fragment_FullPersonData_user {
  CopyWith_Fragment_FullPersonData_user<Fragment_FullPersonData_user>
  get copyWith => CopyWith_Fragment_FullPersonData_user(this, (i) => i);
}

abstract class CopyWith_Fragment_FullPersonData_user<TRes> {
  factory CopyWith_Fragment_FullPersonData_user(
    Fragment_FullPersonData_user instance,
    TRes Function(Fragment_FullPersonData_user) then,
  ) = _CopyWithImpl_Fragment_FullPersonData_user;

  factory CopyWith_Fragment_FullPersonData_user.stub(TRes res) =
      _CopyWithStubImpl_Fragment_FullPersonData_user;

  TRes call({UuidValue? uid, String? name, String? email, String? $__typename});
}

class _CopyWithImpl_Fragment_FullPersonData_user<TRes>
    implements CopyWith_Fragment_FullPersonData_user<TRes> {
  _CopyWithImpl_Fragment_FullPersonData_user(this._instance, this._then);

  final Fragment_FullPersonData_user _instance;

  final TRes Function(Fragment_FullPersonData_user) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? uid = _undefined,
    Object? name = _undefined,
    Object? email = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_FullPersonData_user(
      uid: uid == _undefined || uid == null
          ? _instance.uid
          : (uid as UuidValue),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      email: email == _undefined || email == null
          ? _instance.email
          : (email as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Fragment_FullPersonData_user<TRes>
    implements CopyWith_Fragment_FullPersonData_user<TRes> {
  _CopyWithStubImpl_Fragment_FullPersonData_user(this._res);

  TRes _res;

  call({UuidValue? uid, String? name, String? email, String? $__typename}) =>
      _res;
}
