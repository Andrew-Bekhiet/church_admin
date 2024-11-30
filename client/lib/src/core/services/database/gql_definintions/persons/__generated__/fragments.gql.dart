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
    this.$__typename = 'Persons',
    this.photoUpdatedAt,
    this.blurhash,
  });

  factory Fragment_Person.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$blurhash = json['blurhash'];
    return Fragment_Person(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      $__typename: (l$$__typename as String),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
      blurhash: (l$blurhash as String?),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

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
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$photoUpdatedAt = photoUpdatedAt;
    _resultData['photoUpdatedAt'] =
        l$photoUpdatedAt == null ? null : tstzToString(l$photoUpdatedAt);
    final l$blurhash = blurhash;
    _resultData['blurhash'] = l$blurhash;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$$__typename = $__typename;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$blurhash = blurhash;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
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
    if (!(other is Fragment_Person) || runtimeType != other.runtimeType) {
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
      CopyWith_Fragment_Person(
        this,
        (i) => i,
      );
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
    String? $__typename,
    DateTime? photoUpdatedAt,
    String? blurhash,
  });
}

class _CopyWithImpl_Fragment_Person<TRes>
    implements CopyWith_Fragment_Person<TRes> {
  _CopyWithImpl_Fragment_Person(
    this._instance,
    this._then,
  );

  final Fragment_Person _instance;

  final TRes Function(Fragment_Person) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? blurhash = _undefined,
  }) =>
      _then(Fragment_Person(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        color: color == _undefined ? _instance.color : (color as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        photoUpdatedAt: photoUpdatedAt == _undefined
            ? _instance.photoUpdatedAt
            : (photoUpdatedAt as DateTime?),
        blurhash:
            blurhash == _undefined ? _instance.blurhash : (blurhash as String?),
      ));
}

class _CopyWithStubImpl_Fragment_Person<TRes>
    implements CopyWith_Fragment_Person<TRes> {
  _CopyWithStubImpl_Fragment_Person(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    DateTime? photoUpdatedAt,
    String? blurhash,
  }) =>
      _res;
}

const fragmentDefinitionPerson = FragmentDefinitionNode(
  name: NameNode(value: 'Person'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Persons'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
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
  ]),
);
const documentNodeFragmentPerson = DocumentNode(definitions: [
  fragmentDefinitionPerson,
  fragmentDefinitionPersonNoPhoto,
]);

class Fragment_PersonNoPhoto {
  Fragment_PersonNoPhoto({
    required this.id,
    required this.name,
    this.color,
    this.$__typename = 'Persons',
  });

  factory Fragment_PersonNoPhoto.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    return Fragment_PersonNoPhoto(
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
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment_PersonNoPhoto) ||
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

extension UtilityExtension_Fragment_PersonNoPhoto on Fragment_PersonNoPhoto {
  CopyWith_Fragment_PersonNoPhoto<Fragment_PersonNoPhoto> get copyWith =>
      CopyWith_Fragment_PersonNoPhoto(
        this,
        (i) => i,
      );
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
    String? $__typename,
  });
}

class _CopyWithImpl_Fragment_PersonNoPhoto<TRes>
    implements CopyWith_Fragment_PersonNoPhoto<TRes> {
  _CopyWithImpl_Fragment_PersonNoPhoto(
    this._instance,
    this._then,
  );

  final Fragment_PersonNoPhoto _instance;

  final TRes Function(Fragment_PersonNoPhoto) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment_PersonNoPhoto(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        color: color == _undefined ? _instance.color : (color as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Fragment_PersonNoPhoto<TRes>
    implements CopyWith_Fragment_PersonNoPhoto<TRes> {
  _CopyWithStubImpl_Fragment_PersonNoPhoto(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionPersonNoPhoto = FragmentDefinitionNode(
  name: NameNode(value: 'PersonNoPhoto'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Persons'),
    isNonNull: false,
  )),
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
  ]),
);
const documentNodeFragmentPersonNoPhoto = DocumentNode(definitions: [
  fragmentDefinitionPersonNoPhoto,
]);

class Fragment_FullPersonData
    implements Fragment_Person, Fragment_PersonNoPhoto {
  Fragment_FullPersonData({
    required this.id,
    required this.name,
    this.color,
    this.$__typename = 'Persons',
    this.photoUpdatedAt,
    this.blurhash,
    this.address,
    this.birthdate,
    this.areas,
    this.classes,
    this.church,
    this.college,
    this.family,
    this.father,
    required this.gender,
    this.geolocation,
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
    this.streets,
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
    final l$$__typename = json['__typename'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$blurhash = json['blurhash'];
    final l$address = json['address'];
    final l$birthdate = json['birthdate'];
    final l$areas = json['areas'];
    final l$classes = json['classes'];
    final l$church = json['church'];
    final l$college = json['college'];
    final l$family = json['family'];
    final l$father = json['father'];
    final l$gender = json['gender'];
    final l$geolocation = json['geolocation'];
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
    final l$streets = json['streets'];
    final l$studyYear = json['studyYear'];
    final l$hobbies = json['hobbies'];
    final l$tags = json['tags'];
    final l$uid = json['uid'];
    final l$user = json['user'];
    return Fragment_FullPersonData(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      $__typename: (l$$__typename as String),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
      blurhash: (l$blurhash as String?),
      address: (l$address as String?),
      birthdate: l$birthdate == null ? null : dateFromString(l$birthdate),
      areas: (l$areas as List<dynamic>?)
          ?.map((e) => Fragment_Area.fromJson((e as Map<String, dynamic>)))
          .toList(),
      classes: (l$classes as List<dynamic>?)
          ?.map((e) => Fragment_Class.fromJson((e as Map<String, dynamic>)))
          .toList(),
      church: l$church == null
          ? null
          : Fragment_FullPersonData_church.fromJson(
              (l$church as Map<String, dynamic>)),
      college: l$college == null
          ? null
          : Fragment_FullPersonData_college.fromJson(
              (l$college as Map<String, dynamic>)),
      family: l$family == null
          ? null
          : Fragment_Family.fromJson((l$family as Map<String, dynamic>)),
      father: l$father == null
          ? null
          : Fragment_FullPersonData_father.fromJson(
              (l$father as Map<String, dynamic>)),
      gender: (l$gender as bool),
      geolocation: (l$geolocation as Map<String, dynamic>?),
      groups: (l$groups as List<dynamic>)
          .map((e) => Fragment_FullPersonData_groups.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      isServant: (l$isServant as bool),
      isShammas: (l$isShammas as bool),
      isStudent: (l$isStudent as bool?),
      job: l$job == null
          ? null
          : Fragment_FullPersonData_job.fromJson(
              (l$job as Map<String, dynamic>)),
      jobDescription: (l$jobDescription as String?),
      lastCall: l$lastCall == null
          ? null
          : Fragment_LatestCallHistory.fromJson(
              (l$lastCall as Map<String, dynamic>)),
      lastConfession: l$lastConfession == null
          ? null
          : Fragment_LatestConfessionHistory.fromJson(
              (l$lastConfession as Map<String, dynamic>)),
      lastEdit: l$lastEdit == null
          ? null
          : Fragment_LatestEditHistory.fromJson(
              (l$lastEdit as Map<String, dynamic>)),
      lastKodas: l$lastKodas == null
          ? null
          : Fragment_LatestKodasHistory.fromJson(
              (l$lastKodas as Map<String, dynamic>)),
      lastVisit: l$lastVisit == null
          ? null
          : Fragment_LatestVisitHistory.fromJson(
              (l$lastVisit as Map<String, dynamic>)),
      mainPhone: (l$mainPhone as String?),
      notes: (l$notes as String?),
      otherPhones: (l$otherPhones as Json),
      personType: l$personType == null
          ? null
          : Fragment_FullPersonData_personType.fromJson(
              (l$personType as Map<String, dynamic>)),
      qualification: l$qualification == null
          ? null
          : Fragment_FullPersonData_qualification.fromJson(
              (l$qualification as Map<String, dynamic>)),
      school: l$school == null
          ? null
          : Fragment_FullPersonData_school.fromJson(
              (l$school as Map<String, dynamic>)),
      services: (l$services as List<dynamic>)
          .map((e) => Fragment_FullPersonData_services.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      shammasLevel: l$shammasLevel == null
          ? null
          : Fragment_FullPersonData_shammasLevel.fromJson(
              (l$shammasLevel as Map<String, dynamic>)),
      state: l$state == null
          ? null
          : Fragment_FullPersonData_state.fromJson(
              (l$state as Map<String, dynamic>)),
      streets: (l$streets as List<dynamic>?)
          ?.map((e) => Fragment_Street.fromJson((e as Map<String, dynamic>)))
          .toList(),
      studyYear: l$studyYear == null
          ? null
          : Fragment_FullPersonData_studyYear.fromJson(
              (l$studyYear as Map<String, dynamic>)),
      hobbies: (l$hobbies as List<dynamic>)
          .map((e) => Fragment_FullPersonData_hobbies.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      tags: (l$tags as List<dynamic>)
          .map((e) => Fragment_FullPersonData_tags.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      uid: l$uid == null ? null : stringToUuid(l$uid),
      user: l$user == null
          ? null
          : Fragment_FullPersonData_user.fromJson(
              (l$user as Map<String, dynamic>)),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final String $__typename;

  final DateTime? photoUpdatedAt;

  final String? blurhash;

  final String? address;

  final DateTime? birthdate;

  final List<Fragment_Area>? areas;

  final List<Fragment_Class>? classes;

  final Fragment_FullPersonData_church? church;

  final Fragment_FullPersonData_college? college;

  final Fragment_Family? family;

  final Fragment_FullPersonData_father? father;

  final bool gender;

  final Map<String, dynamic>? geolocation;

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

  final List<Fragment_Street>? streets;

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
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$photoUpdatedAt = photoUpdatedAt;
    _resultData['photoUpdatedAt'] =
        l$photoUpdatedAt == null ? null : tstzToString(l$photoUpdatedAt);
    final l$blurhash = blurhash;
    _resultData['blurhash'] = l$blurhash;
    final l$address = address;
    _resultData['address'] = l$address;
    final l$birthdate = birthdate;
    _resultData['birthdate'] =
        l$birthdate == null ? null : dateToString(l$birthdate);
    final l$areas = areas;
    _resultData['areas'] = l$areas?.map((e) => e.toJson()).toList();
    final l$classes = classes;
    _resultData['classes'] = l$classes?.map((e) => e.toJson()).toList();
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
    final l$geolocation = geolocation;
    _resultData['geolocation'] = l$geolocation;
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
    final l$streets = streets;
    _resultData['streets'] = l$streets?.map((e) => e.toJson()).toList();
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
    final l$$__typename = $__typename;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$blurhash = blurhash;
    final l$address = address;
    final l$birthdate = birthdate;
    final l$areas = areas;
    final l$classes = classes;
    final l$church = church;
    final l$college = college;
    final l$family = family;
    final l$father = father;
    final l$gender = gender;
    final l$geolocation = geolocation;
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
    final l$streets = streets;
    final l$studyYear = studyYear;
    final l$hobbies = hobbies;
    final l$tags = tags;
    final l$uid = uid;
    final l$user = user;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$$__typename,
      l$photoUpdatedAt,
      l$blurhash,
      l$address,
      l$birthdate,
      l$areas == null ? null : Object.hashAll(l$areas.map((v) => v)),
      l$classes == null ? null : Object.hashAll(l$classes.map((v) => v)),
      l$church,
      l$college,
      l$family,
      l$father,
      l$gender,
      l$geolocation,
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
      l$streets == null ? null : Object.hashAll(l$streets.map((v) => v)),
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
    if (!(other is Fragment_FullPersonData) ||
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
    final l$areas = areas;
    final lOther$areas = other.areas;
    if (l$areas != null && lOther$areas != null) {
      if (l$areas.length != lOther$areas.length) {
        return false;
      }
      for (int i = 0; i < l$areas.length; i++) {
        final l$areas$entry = l$areas[i];
        final lOther$areas$entry = lOther$areas[i];
        if (l$areas$entry != lOther$areas$entry) {
          return false;
        }
      }
    } else if (l$areas != lOther$areas) {
      return false;
    }
    final l$classes = classes;
    final lOther$classes = other.classes;
    if (l$classes != null && lOther$classes != null) {
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
    } else if (l$classes != lOther$classes) {
      return false;
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
    final l$geolocation = geolocation;
    final lOther$geolocation = other.geolocation;
    if (l$geolocation != lOther$geolocation) {
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
    final l$streets = streets;
    final lOther$streets = other.streets;
    if (l$streets != null && lOther$streets != null) {
      if (l$streets.length != lOther$streets.length) {
        return false;
      }
      for (int i = 0; i < l$streets.length; i++) {
        final l$streets$entry = l$streets[i];
        final lOther$streets$entry = lOther$streets[i];
        if (l$streets$entry != lOther$streets$entry) {
          return false;
        }
      }
    } else if (l$streets != lOther$streets) {
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
      CopyWith_Fragment_FullPersonData(
        this,
        (i) => i,
      );
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
    String? $__typename,
    DateTime? photoUpdatedAt,
    String? blurhash,
    String? address,
    DateTime? birthdate,
    List<Fragment_Area>? areas,
    List<Fragment_Class>? classes,
    Fragment_FullPersonData_church? church,
    Fragment_FullPersonData_college? college,
    Fragment_Family? family,
    Fragment_FullPersonData_father? father,
    bool? gender,
    Map<String, dynamic>? geolocation,
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
    List<Fragment_Street>? streets,
    Fragment_FullPersonData_studyYear? studyYear,
    List<Fragment_FullPersonData_hobbies>? hobbies,
    List<Fragment_FullPersonData_tags>? tags,
    UuidValue? uid,
    Fragment_FullPersonData_user? user,
  });
  TRes areas(
      Iterable<Fragment_Area>? Function(
              Iterable<CopyWith_Fragment_Area<Fragment_Area>>?)
          _fn);
  TRes classes(
      Iterable<Fragment_Class>? Function(
              Iterable<CopyWith_Fragment_Class<Fragment_Class>>?)
          _fn);
  CopyWith_Fragment_FullPersonData_church<TRes> get church;
  CopyWith_Fragment_FullPersonData_college<TRes> get college;
  CopyWith_Fragment_Family<TRes> get family;
  CopyWith_Fragment_FullPersonData_father<TRes> get father;
  TRes groups(
      Iterable<Fragment_FullPersonData_groups> Function(
              Iterable<
                  CopyWith_Fragment_FullPersonData_groups<
                      Fragment_FullPersonData_groups>>)
          _fn);
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
                      Fragment_FullPersonData_services>>)
          _fn);
  CopyWith_Fragment_FullPersonData_shammasLevel<TRes> get shammasLevel;
  CopyWith_Fragment_FullPersonData_state<TRes> get state;
  TRes streets(
      Iterable<Fragment_Street>? Function(
              Iterable<CopyWith_Fragment_Street<Fragment_Street>>?)
          _fn);
  CopyWith_Fragment_FullPersonData_studyYear<TRes> get studyYear;
  TRes hobbies(
      Iterable<Fragment_FullPersonData_hobbies> Function(
              Iterable<
                  CopyWith_Fragment_FullPersonData_hobbies<
                      Fragment_FullPersonData_hobbies>>)
          _fn);
  TRes tags(
      Iterable<Fragment_FullPersonData_tags> Function(
              Iterable<
                  CopyWith_Fragment_FullPersonData_tags<
                      Fragment_FullPersonData_tags>>)
          _fn);
  CopyWith_Fragment_FullPersonData_user<TRes> get user;
}

class _CopyWithImpl_Fragment_FullPersonData<TRes>
    implements CopyWith_Fragment_FullPersonData<TRes> {
  _CopyWithImpl_Fragment_FullPersonData(
    this._instance,
    this._then,
  );

  final Fragment_FullPersonData _instance;

  final TRes Function(Fragment_FullPersonData) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? blurhash = _undefined,
    Object? address = _undefined,
    Object? birthdate = _undefined,
    Object? areas = _undefined,
    Object? classes = _undefined,
    Object? church = _undefined,
    Object? college = _undefined,
    Object? family = _undefined,
    Object? father = _undefined,
    Object? gender = _undefined,
    Object? geolocation = _undefined,
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
    Object? streets = _undefined,
    Object? studyYear = _undefined,
    Object? hobbies = _undefined,
    Object? tags = _undefined,
    Object? uid = _undefined,
    Object? user = _undefined,
  }) =>
      _then(Fragment_FullPersonData(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        color: color == _undefined ? _instance.color : (color as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        photoUpdatedAt: photoUpdatedAt == _undefined
            ? _instance.photoUpdatedAt
            : (photoUpdatedAt as DateTime?),
        blurhash:
            blurhash == _undefined ? _instance.blurhash : (blurhash as String?),
        address:
            address == _undefined ? _instance.address : (address as String?),
        birthdate: birthdate == _undefined
            ? _instance.birthdate
            : (birthdate as DateTime?),
        areas: areas == _undefined
            ? _instance.areas
            : (areas as List<Fragment_Area>?),
        classes: classes == _undefined
            ? _instance.classes
            : (classes as List<Fragment_Class>?),
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
        geolocation: geolocation == _undefined
            ? _instance.geolocation
            : (geolocation as Map<String, dynamic>?),
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
        streets: streets == _undefined
            ? _instance.streets
            : (streets as List<Fragment_Street>?),
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
      ));

  TRes areas(
          Iterable<Fragment_Area>? Function(
                  Iterable<CopyWith_Fragment_Area<Fragment_Area>>?)
              _fn) =>
      call(
          areas: _fn(_instance.areas?.map((e) => CopyWith_Fragment_Area(
                e,
                (i) => i,
              )))?.toList());

  TRes classes(
          Iterable<Fragment_Class>? Function(
                  Iterable<CopyWith_Fragment_Class<Fragment_Class>>?)
              _fn) =>
      call(
          classes: _fn(_instance.classes?.map((e) => CopyWith_Fragment_Class(
                e,
                (i) => i,
              )))?.toList());

  CopyWith_Fragment_FullPersonData_church<TRes> get church {
    final local$church = _instance.church;
    return local$church == null
        ? CopyWith_Fragment_FullPersonData_church.stub(_then(_instance))
        : CopyWith_Fragment_FullPersonData_church(
            local$church, (e) => call(church: e));
  }

  CopyWith_Fragment_FullPersonData_college<TRes> get college {
    final local$college = _instance.college;
    return local$college == null
        ? CopyWith_Fragment_FullPersonData_college.stub(_then(_instance))
        : CopyWith_Fragment_FullPersonData_college(
            local$college, (e) => call(college: e));
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
            local$father, (e) => call(father: e));
  }

  TRes groups(
          Iterable<Fragment_FullPersonData_groups> Function(
                  Iterable<
                      CopyWith_Fragment_FullPersonData_groups<
                          Fragment_FullPersonData_groups>>)
              _fn) =>
      call(
          groups: _fn(_instance.groups
              .map((e) => CopyWith_Fragment_FullPersonData_groups(
                    e,
                    (i) => i,
                  ))).toList());

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
            local$lastCall, (e) => call(lastCall: e));
  }

  CopyWith_Fragment_LatestConfessionHistory<TRes> get lastConfession {
    final local$lastConfession = _instance.lastConfession;
    return local$lastConfession == null
        ? CopyWith_Fragment_LatestConfessionHistory.stub(_then(_instance))
        : CopyWith_Fragment_LatestConfessionHistory(
            local$lastConfession, (e) => call(lastConfession: e));
  }

  CopyWith_Fragment_LatestEditHistory<TRes> get lastEdit {
    final local$lastEdit = _instance.lastEdit;
    return local$lastEdit == null
        ? CopyWith_Fragment_LatestEditHistory.stub(_then(_instance))
        : CopyWith_Fragment_LatestEditHistory(
            local$lastEdit, (e) => call(lastEdit: e));
  }

  CopyWith_Fragment_LatestKodasHistory<TRes> get lastKodas {
    final local$lastKodas = _instance.lastKodas;
    return local$lastKodas == null
        ? CopyWith_Fragment_LatestKodasHistory.stub(_then(_instance))
        : CopyWith_Fragment_LatestKodasHistory(
            local$lastKodas, (e) => call(lastKodas: e));
  }

  CopyWith_Fragment_LatestVisitHistory<TRes> get lastVisit {
    final local$lastVisit = _instance.lastVisit;
    return local$lastVisit == null
        ? CopyWith_Fragment_LatestVisitHistory.stub(_then(_instance))
        : CopyWith_Fragment_LatestVisitHistory(
            local$lastVisit, (e) => call(lastVisit: e));
  }

  CopyWith_Fragment_FullPersonData_personType<TRes> get personType {
    final local$personType = _instance.personType;
    return local$personType == null
        ? CopyWith_Fragment_FullPersonData_personType.stub(_then(_instance))
        : CopyWith_Fragment_FullPersonData_personType(
            local$personType, (e) => call(personType: e));
  }

  CopyWith_Fragment_FullPersonData_qualification<TRes> get qualification {
    final local$qualification = _instance.qualification;
    return local$qualification == null
        ? CopyWith_Fragment_FullPersonData_qualification.stub(_then(_instance))
        : CopyWith_Fragment_FullPersonData_qualification(
            local$qualification, (e) => call(qualification: e));
  }

  CopyWith_Fragment_FullPersonData_school<TRes> get school {
    final local$school = _instance.school;
    return local$school == null
        ? CopyWith_Fragment_FullPersonData_school.stub(_then(_instance))
        : CopyWith_Fragment_FullPersonData_school(
            local$school, (e) => call(school: e));
  }

  TRes services(
          Iterable<Fragment_FullPersonData_services> Function(
                  Iterable<
                      CopyWith_Fragment_FullPersonData_services<
                          Fragment_FullPersonData_services>>)
              _fn) =>
      call(
          services: _fn(_instance.services
              .map((e) => CopyWith_Fragment_FullPersonData_services(
                    e,
                    (i) => i,
                  ))).toList());

  CopyWith_Fragment_FullPersonData_shammasLevel<TRes> get shammasLevel {
    final local$shammasLevel = _instance.shammasLevel;
    return local$shammasLevel == null
        ? CopyWith_Fragment_FullPersonData_shammasLevel.stub(_then(_instance))
        : CopyWith_Fragment_FullPersonData_shammasLevel(
            local$shammasLevel, (e) => call(shammasLevel: e));
  }

  CopyWith_Fragment_FullPersonData_state<TRes> get state {
    final local$state = _instance.state;
    return local$state == null
        ? CopyWith_Fragment_FullPersonData_state.stub(_then(_instance))
        : CopyWith_Fragment_FullPersonData_state(
            local$state, (e) => call(state: e));
  }

  TRes streets(
          Iterable<Fragment_Street>? Function(
                  Iterable<CopyWith_Fragment_Street<Fragment_Street>>?)
              _fn) =>
      call(
          streets: _fn(_instance.streets?.map((e) => CopyWith_Fragment_Street(
                e,
                (i) => i,
              )))?.toList());

  CopyWith_Fragment_FullPersonData_studyYear<TRes> get studyYear {
    final local$studyYear = _instance.studyYear;
    return local$studyYear == null
        ? CopyWith_Fragment_FullPersonData_studyYear.stub(_then(_instance))
        : CopyWith_Fragment_FullPersonData_studyYear(
            local$studyYear, (e) => call(studyYear: e));
  }

  TRes hobbies(
          Iterable<Fragment_FullPersonData_hobbies> Function(
                  Iterable<
                      CopyWith_Fragment_FullPersonData_hobbies<
                          Fragment_FullPersonData_hobbies>>)
              _fn) =>
      call(
          hobbies: _fn(_instance.hobbies
              .map((e) => CopyWith_Fragment_FullPersonData_hobbies(
                    e,
                    (i) => i,
                  ))).toList());

  TRes tags(
          Iterable<Fragment_FullPersonData_tags> Function(
                  Iterable<
                      CopyWith_Fragment_FullPersonData_tags<
                          Fragment_FullPersonData_tags>>)
              _fn) =>
      call(
          tags: _fn(
              _instance.tags.map((e) => CopyWith_Fragment_FullPersonData_tags(
                    e,
                    (i) => i,
                  ))).toList());

  CopyWith_Fragment_FullPersonData_user<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith_Fragment_FullPersonData_user.stub(_then(_instance))
        : CopyWith_Fragment_FullPersonData_user(
            local$user, (e) => call(user: e));
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
    String? $__typename,
    DateTime? photoUpdatedAt,
    String? blurhash,
    String? address,
    DateTime? birthdate,
    List<Fragment_Area>? areas,
    List<Fragment_Class>? classes,
    Fragment_FullPersonData_church? church,
    Fragment_FullPersonData_college? college,
    Fragment_Family? family,
    Fragment_FullPersonData_father? father,
    bool? gender,
    Map<String, dynamic>? geolocation,
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
    List<Fragment_Street>? streets,
    Fragment_FullPersonData_studyYear? studyYear,
    List<Fragment_FullPersonData_hobbies>? hobbies,
    List<Fragment_FullPersonData_tags>? tags,
    UuidValue? uid,
    Fragment_FullPersonData_user? user,
  }) =>
      _res;

  areas(_fn) => _res;

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

  streets(_fn) => _res;

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
      on: NamedTypeNode(
    name: NameNode(value: 'Persons'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FragmentSpreadNode(
      name: NameNode(value: 'Person'),
      directives: [],
    ),
    FieldNode(
      name: NameNode(value: 'address'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'birthdate'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'areas'),
      alias: null,
      arguments: [
        ArgumentNode(
          name: NameNode(value: 'limit'),
          value: IntValueNode(value: '6'),
        ),
        ArgumentNode(
          name: NameNode(value: 'orderBy'),
          value: ObjectValueNode(fields: [
            ObjectFieldNode(
              name: NameNode(value: 'name'),
              value: EnumValueNode(name: NameNode(value: 'ASC')),
            )
          ]),
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'Area'),
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
      name: NameNode(value: 'classes'),
      alias: null,
      arguments: [
        ArgumentNode(
          name: NameNode(value: 'limit'),
          value: IntValueNode(value: '6'),
        ),
        ArgumentNode(
          name: NameNode(value: 'orderBy'),
          value: ObjectValueNode(fields: [
            ObjectFieldNode(
              name: NameNode(value: 'name'),
              value: EnumValueNode(name: NameNode(value: 'ASC')),
            )
          ]),
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
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
      ]),
    ),
    FieldNode(
      name: NameNode(value: 'church'),
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
      name: NameNode(value: 'college'),
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
      name: NameNode(value: 'family'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
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
      ]),
    ),
    FieldNode(
      name: NameNode(value: 'father'),
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
          name: NameNode(value: 'church'),
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
      name: NameNode(value: 'gender'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'geolocation'),
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
          value: ObjectValueNode(fields: [
            ObjectFieldNode(
              name: NameNode(value: 'group'),
              value: ObjectValueNode(fields: [
                ObjectFieldNode(
                  name: NameNode(value: 'name'),
                  value: EnumValueNode(name: NameNode(value: 'ASC')),
                )
              ]),
            )
          ]),
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'group'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
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
      selectionSet: SelectionSetNode(selections: [
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
      ]),
    ),
    FieldNode(
      name: NameNode(value: 'lastConfession'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
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
      ]),
    ),
    FieldNode(
      name: NameNode(value: 'lastEdit'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
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
      ]),
    ),
    FieldNode(
      name: NameNode(value: 'lastKodas'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
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
      ]),
    ),
    FieldNode(
      name: NameNode(value: 'lastVisit'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
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
      ]),
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
      name: NameNode(value: 'qualification'),
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
      name: NameNode(value: 'school'),
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
      name: NameNode(value: 'services'),
      alias: null,
      arguments: [
        ArgumentNode(
          name: NameNode(value: 'limit'),
          value: IntValueNode(value: '6'),
        ),
        ArgumentNode(
          name: NameNode(value: 'orderBy'),
          value: ObjectValueNode(fields: [
            ObjectFieldNode(
              name: NameNode(value: 'service'),
              value: ObjectValueNode(fields: [
                ObjectFieldNode(
                  name: NameNode(value: 'name'),
                  value: EnumValueNode(name: NameNode(value: 'ASC')),
                )
              ]),
            )
          ]),
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'service'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
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
      name: NameNode(value: 'shammasLevel'),
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
      ]),
    ),
    FieldNode(
      name: NameNode(value: 'state'),
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
      ]),
    ),
    FieldNode(
      name: NameNode(value: 'streets'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'Street'),
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
      name: NameNode(value: 'studyYear'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
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
      ]),
    ),
    FieldNode(
      name: NameNode(value: 'hobbies'),
      alias: null,
      arguments: [
        ArgumentNode(
          name: NameNode(value: 'orderBy'),
          value: ObjectValueNode(fields: [
            ObjectFieldNode(
              name: NameNode(value: 'hobby'),
              value: ObjectValueNode(fields: [
                ObjectFieldNode(
                  name: NameNode(value: 'name'),
                  value: EnumValueNode(name: NameNode(value: 'ASC')),
                )
              ]),
            )
          ]),
        )
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'hobby'),
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
      name: NameNode(value: 'tags'),
      alias: null,
      arguments: [
        ArgumentNode(
          name: NameNode(value: 'orderBy'),
          value: ObjectValueNode(fields: [
            ObjectFieldNode(
              name: NameNode(value: 'tag'),
              value: ObjectValueNode(fields: [
                ObjectFieldNode(
                  name: NameNode(value: 'name'),
                  value: EnumValueNode(name: NameNode(value: 'ASC')),
                )
              ]),
            )
          ]),
        )
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'tag'),
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
      selectionSet: SelectionSetNode(selections: [
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
);
const documentNodeFragmentFullPersonData = DocumentNode(definitions: [
  fragmentDefinitionFullPersonData,
  fragmentDefinitionPerson,
  fragmentDefinitionPersonNoPhoto,
  fragmentDefinitionArea,
  fragmentDefinitionAreaNoPhoto,
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
  fragmentDefinitionStreet,
  fragmentDefinitionStreetNoPhoto,
]);

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
    if (!(other is Fragment_FullPersonData_church) ||
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
      get copyWith => CopyWith_Fragment_FullPersonData_church(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Fragment_FullPersonData_church<TRes> {
  factory CopyWith_Fragment_FullPersonData_church(
    Fragment_FullPersonData_church instance,
    TRes Function(Fragment_FullPersonData_church) then,
  ) = _CopyWithImpl_Fragment_FullPersonData_church;

  factory CopyWith_Fragment_FullPersonData_church.stub(TRes res) =
      _CopyWithStubImpl_Fragment_FullPersonData_church;

  TRes call({
    UuidValue? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl_Fragment_FullPersonData_church<TRes>
    implements CopyWith_Fragment_FullPersonData_church<TRes> {
  _CopyWithImpl_Fragment_FullPersonData_church(
    this._instance,
    this._then,
  );

  final Fragment_FullPersonData_church _instance;

  final TRes Function(Fragment_FullPersonData_church) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment_FullPersonData_church(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Fragment_FullPersonData_church<TRes>
    implements CopyWith_Fragment_FullPersonData_church<TRes> {
  _CopyWithStubImpl_Fragment_FullPersonData_church(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
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
    if (!(other is Fragment_FullPersonData_college) ||
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
      get copyWith => CopyWith_Fragment_FullPersonData_college(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Fragment_FullPersonData_college<TRes> {
  factory CopyWith_Fragment_FullPersonData_college(
    Fragment_FullPersonData_college instance,
    TRes Function(Fragment_FullPersonData_college) then,
  ) = _CopyWithImpl_Fragment_FullPersonData_college;

  factory CopyWith_Fragment_FullPersonData_college.stub(TRes res) =
      _CopyWithStubImpl_Fragment_FullPersonData_college;

  TRes call({
    UuidValue? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl_Fragment_FullPersonData_college<TRes>
    implements CopyWith_Fragment_FullPersonData_college<TRes> {
  _CopyWithImpl_Fragment_FullPersonData_college(
    this._instance,
    this._then,
  );

  final Fragment_FullPersonData_college _instance;

  final TRes Function(Fragment_FullPersonData_college) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment_FullPersonData_college(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Fragment_FullPersonData_college<TRes>
    implements CopyWith_Fragment_FullPersonData_college<TRes> {
  _CopyWithStubImpl_Fragment_FullPersonData_college(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
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
              (l$church as Map<String, dynamic>)),
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
    return Object.hashAll([
      l$id,
      l$name,
      l$church,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment_FullPersonData_father) ||
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
      get copyWith => CopyWith_Fragment_FullPersonData_father(
            this,
            (i) => i,
          );
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
  _CopyWithImpl_Fragment_FullPersonData_father(
    this._instance,
    this._then,
  );

  final Fragment_FullPersonData_father _instance;

  final TRes Function(Fragment_FullPersonData_father) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? church = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment_FullPersonData_father(
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
      ));

  CopyWith_Fragment_FullPersonData_father_church<TRes> get church {
    final local$church = _instance.church;
    return local$church == null
        ? CopyWith_Fragment_FullPersonData_father_church.stub(_then(_instance))
        : CopyWith_Fragment_FullPersonData_father_church(
            local$church, (e) => call(church: e));
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
  }) =>
      _res;

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
      Map<String, dynamic> json) {
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
    if (!(other is Fragment_FullPersonData_father_church) ||
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
          Fragment_FullPersonData_father_church>
      get copyWith => CopyWith_Fragment_FullPersonData_father_church(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Fragment_FullPersonData_father_church<TRes> {
  factory CopyWith_Fragment_FullPersonData_father_church(
    Fragment_FullPersonData_father_church instance,
    TRes Function(Fragment_FullPersonData_father_church) then,
  ) = _CopyWithImpl_Fragment_FullPersonData_father_church;

  factory CopyWith_Fragment_FullPersonData_father_church.stub(TRes res) =
      _CopyWithStubImpl_Fragment_FullPersonData_father_church;

  TRes call({
    UuidValue? id,
    String? name,
    String? $__typename,
  });
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
  }) =>
      _then(Fragment_FullPersonData_father_church(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Fragment_FullPersonData_father_church<TRes>
    implements CopyWith_Fragment_FullPersonData_father_church<TRes> {
  _CopyWithStubImpl_Fragment_FullPersonData_father_church(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
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
    return Object.hashAll([
      l$group,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment_FullPersonData_groups) ||
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
      get copyWith => CopyWith_Fragment_FullPersonData_groups(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Fragment_FullPersonData_groups<TRes> {
  factory CopyWith_Fragment_FullPersonData_groups(
    Fragment_FullPersonData_groups instance,
    TRes Function(Fragment_FullPersonData_groups) then,
  ) = _CopyWithImpl_Fragment_FullPersonData_groups;

  factory CopyWith_Fragment_FullPersonData_groups.stub(TRes res) =
      _CopyWithStubImpl_Fragment_FullPersonData_groups;

  TRes call({
    Fragment_Group? group,
    String? $__typename,
  });
  CopyWith_Fragment_Group<TRes> get group;
}

class _CopyWithImpl_Fragment_FullPersonData_groups<TRes>
    implements CopyWith_Fragment_FullPersonData_groups<TRes> {
  _CopyWithImpl_Fragment_FullPersonData_groups(
    this._instance,
    this._then,
  );

  final Fragment_FullPersonData_groups _instance;

  final TRes Function(Fragment_FullPersonData_groups) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? group = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment_FullPersonData_groups(
        group: group == _undefined || group == null
            ? _instance.group
            : (group as Fragment_Group),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith_Fragment_Group<TRes> get group {
    final local$group = _instance.group;
    return CopyWith_Fragment_Group(local$group, (e) => call(group: e));
  }
}

class _CopyWithStubImpl_Fragment_FullPersonData_groups<TRes>
    implements CopyWith_Fragment_FullPersonData_groups<TRes> {
  _CopyWithStubImpl_Fragment_FullPersonData_groups(this._res);

  TRes _res;

  call({
    Fragment_Group? group,
    String? $__typename,
  }) =>
      _res;

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
    if (!(other is Fragment_FullPersonData_job) ||
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
      get copyWith => CopyWith_Fragment_FullPersonData_job(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Fragment_FullPersonData_job<TRes> {
  factory CopyWith_Fragment_FullPersonData_job(
    Fragment_FullPersonData_job instance,
    TRes Function(Fragment_FullPersonData_job) then,
  ) = _CopyWithImpl_Fragment_FullPersonData_job;

  factory CopyWith_Fragment_FullPersonData_job.stub(TRes res) =
      _CopyWithStubImpl_Fragment_FullPersonData_job;

  TRes call({
    UuidValue? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl_Fragment_FullPersonData_job<TRes>
    implements CopyWith_Fragment_FullPersonData_job<TRes> {
  _CopyWithImpl_Fragment_FullPersonData_job(
    this._instance,
    this._then,
  );

  final Fragment_FullPersonData_job _instance;

  final TRes Function(Fragment_FullPersonData_job) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment_FullPersonData_job(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Fragment_FullPersonData_job<TRes>
    implements CopyWith_Fragment_FullPersonData_job<TRes> {
  _CopyWithStubImpl_Fragment_FullPersonData_job(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Fragment_FullPersonData_personType {
  Fragment_FullPersonData_personType({
    required this.id,
    required this.name,
    this.$__typename = 'PersonTypes',
  });

  factory Fragment_FullPersonData_personType.fromJson(
      Map<String, dynamic> json) {
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
    if (!(other is Fragment_FullPersonData_personType) ||
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
          Fragment_FullPersonData_personType>
      get copyWith => CopyWith_Fragment_FullPersonData_personType(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Fragment_FullPersonData_personType<TRes> {
  factory CopyWith_Fragment_FullPersonData_personType(
    Fragment_FullPersonData_personType instance,
    TRes Function(Fragment_FullPersonData_personType) then,
  ) = _CopyWithImpl_Fragment_FullPersonData_personType;

  factory CopyWith_Fragment_FullPersonData_personType.stub(TRes res) =
      _CopyWithStubImpl_Fragment_FullPersonData_personType;

  TRes call({
    UuidValue? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl_Fragment_FullPersonData_personType<TRes>
    implements CopyWith_Fragment_FullPersonData_personType<TRes> {
  _CopyWithImpl_Fragment_FullPersonData_personType(
    this._instance,
    this._then,
  );

  final Fragment_FullPersonData_personType _instance;

  final TRes Function(Fragment_FullPersonData_personType) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment_FullPersonData_personType(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Fragment_FullPersonData_personType<TRes>
    implements CopyWith_Fragment_FullPersonData_personType<TRes> {
  _CopyWithStubImpl_Fragment_FullPersonData_personType(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Fragment_FullPersonData_qualification {
  Fragment_FullPersonData_qualification({
    required this.id,
    required this.name,
    this.$__typename = 'Qualifications',
  });

  factory Fragment_FullPersonData_qualification.fromJson(
      Map<String, dynamic> json) {
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
    if (!(other is Fragment_FullPersonData_qualification) ||
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
          Fragment_FullPersonData_qualification>
      get copyWith => CopyWith_Fragment_FullPersonData_qualification(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Fragment_FullPersonData_qualification<TRes> {
  factory CopyWith_Fragment_FullPersonData_qualification(
    Fragment_FullPersonData_qualification instance,
    TRes Function(Fragment_FullPersonData_qualification) then,
  ) = _CopyWithImpl_Fragment_FullPersonData_qualification;

  factory CopyWith_Fragment_FullPersonData_qualification.stub(TRes res) =
      _CopyWithStubImpl_Fragment_FullPersonData_qualification;

  TRes call({
    UuidValue? id,
    String? name,
    String? $__typename,
  });
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
  }) =>
      _then(Fragment_FullPersonData_qualification(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Fragment_FullPersonData_qualification<TRes>
    implements CopyWith_Fragment_FullPersonData_qualification<TRes> {
  _CopyWithStubImpl_Fragment_FullPersonData_qualification(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
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
    if (!(other is Fragment_FullPersonData_school) ||
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
      get copyWith => CopyWith_Fragment_FullPersonData_school(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Fragment_FullPersonData_school<TRes> {
  factory CopyWith_Fragment_FullPersonData_school(
    Fragment_FullPersonData_school instance,
    TRes Function(Fragment_FullPersonData_school) then,
  ) = _CopyWithImpl_Fragment_FullPersonData_school;

  factory CopyWith_Fragment_FullPersonData_school.stub(TRes res) =
      _CopyWithStubImpl_Fragment_FullPersonData_school;

  TRes call({
    UuidValue? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl_Fragment_FullPersonData_school<TRes>
    implements CopyWith_Fragment_FullPersonData_school<TRes> {
  _CopyWithImpl_Fragment_FullPersonData_school(
    this._instance,
    this._then,
  );

  final Fragment_FullPersonData_school _instance;

  final TRes Function(Fragment_FullPersonData_school) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment_FullPersonData_school(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Fragment_FullPersonData_school<TRes>
    implements CopyWith_Fragment_FullPersonData_school<TRes> {
  _CopyWithStubImpl_Fragment_FullPersonData_school(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
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
          (l$service as Map<String, dynamic>)),
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
    return Object.hashAll([
      l$service,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment_FullPersonData_services) ||
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
      get copyWith => CopyWith_Fragment_FullPersonData_services(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Fragment_FullPersonData_services<TRes> {
  factory CopyWith_Fragment_FullPersonData_services(
    Fragment_FullPersonData_services instance,
    TRes Function(Fragment_FullPersonData_services) then,
  ) = _CopyWithImpl_Fragment_FullPersonData_services;

  factory CopyWith_Fragment_FullPersonData_services.stub(TRes res) =
      _CopyWithStubImpl_Fragment_FullPersonData_services;

  TRes call({
    Fragment_ServiceWithStudyYears? service,
    String? $__typename,
  });
  CopyWith_Fragment_ServiceWithStudyYears<TRes> get service;
}

class _CopyWithImpl_Fragment_FullPersonData_services<TRes>
    implements CopyWith_Fragment_FullPersonData_services<TRes> {
  _CopyWithImpl_Fragment_FullPersonData_services(
    this._instance,
    this._then,
  );

  final Fragment_FullPersonData_services _instance;

  final TRes Function(Fragment_FullPersonData_services) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? service = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment_FullPersonData_services(
        service: service == _undefined || service == null
            ? _instance.service
            : (service as Fragment_ServiceWithStudyYears),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith_Fragment_ServiceWithStudyYears<TRes> get service {
    final local$service = _instance.service;
    return CopyWith_Fragment_ServiceWithStudyYears(
        local$service, (e) => call(service: e));
  }
}

class _CopyWithStubImpl_Fragment_FullPersonData_services<TRes>
    implements CopyWith_Fragment_FullPersonData_services<TRes> {
  _CopyWithStubImpl_Fragment_FullPersonData_services(this._res);

  TRes _res;

  call({
    Fragment_ServiceWithStudyYears? service,
    String? $__typename,
  }) =>
      _res;

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
      Map<String, dynamic> json) {
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
    return Object.hashAll([
      l$id,
      l$name,
      l$order,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment_FullPersonData_shammasLevel) ||
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
          Fragment_FullPersonData_shammasLevel>
      get copyWith => CopyWith_Fragment_FullPersonData_shammasLevel(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Fragment_FullPersonData_shammasLevel<TRes> {
  factory CopyWith_Fragment_FullPersonData_shammasLevel(
    Fragment_FullPersonData_shammasLevel instance,
    TRes Function(Fragment_FullPersonData_shammasLevel) then,
  ) = _CopyWithImpl_Fragment_FullPersonData_shammasLevel;

  factory CopyWith_Fragment_FullPersonData_shammasLevel.stub(TRes res) =
      _CopyWithStubImpl_Fragment_FullPersonData_shammasLevel;

  TRes call({
    UuidValue? id,
    String? name,
    int? order,
    String? $__typename,
  });
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
  }) =>
      _then(Fragment_FullPersonData_shammasLevel(
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
      ));
}

class _CopyWithStubImpl_Fragment_FullPersonData_shammasLevel<TRes>
    implements CopyWith_Fragment_FullPersonData_shammasLevel<TRes> {
  _CopyWithStubImpl_Fragment_FullPersonData_shammasLevel(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? order,
    String? $__typename,
  }) =>
      _res;
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
    return Object.hashAll([
      l$id,
      l$color,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment_FullPersonData_state) ||
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
      get copyWith => CopyWith_Fragment_FullPersonData_state(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Fragment_FullPersonData_state<TRes> {
  factory CopyWith_Fragment_FullPersonData_state(
    Fragment_FullPersonData_state instance,
    TRes Function(Fragment_FullPersonData_state) then,
  ) = _CopyWithImpl_Fragment_FullPersonData_state;

  factory CopyWith_Fragment_FullPersonData_state.stub(TRes res) =
      _CopyWithStubImpl_Fragment_FullPersonData_state;

  TRes call({
    UuidValue? id,
    int? color,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl_Fragment_FullPersonData_state<TRes>
    implements CopyWith_Fragment_FullPersonData_state<TRes> {
  _CopyWithImpl_Fragment_FullPersonData_state(
    this._instance,
    this._then,
  );

  final Fragment_FullPersonData_state _instance;

  final TRes Function(Fragment_FullPersonData_state) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? color = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment_FullPersonData_state(
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
      ));
}

class _CopyWithStubImpl_Fragment_FullPersonData_state<TRes>
    implements CopyWith_Fragment_FullPersonData_state<TRes> {
  _CopyWithStubImpl_Fragment_FullPersonData_state(this._res);

  TRes _res;

  call({
    UuidValue? id,
    int? color,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Fragment_FullPersonData_studyYear {
  Fragment_FullPersonData_studyYear({
    required this.name,
    required this.order,
    this.$__typename = 'StudyYears',
  });

  factory Fragment_FullPersonData_studyYear.fromJson(
      Map<String, dynamic> json) {
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
    return Object.hashAll([
      l$name,
      l$order,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment_FullPersonData_studyYear) ||
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
      get copyWith => CopyWith_Fragment_FullPersonData_studyYear(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Fragment_FullPersonData_studyYear<TRes> {
  factory CopyWith_Fragment_FullPersonData_studyYear(
    Fragment_FullPersonData_studyYear instance,
    TRes Function(Fragment_FullPersonData_studyYear) then,
  ) = _CopyWithImpl_Fragment_FullPersonData_studyYear;

  factory CopyWith_Fragment_FullPersonData_studyYear.stub(TRes res) =
      _CopyWithStubImpl_Fragment_FullPersonData_studyYear;

  TRes call({
    String? name,
    int? order,
    String? $__typename,
  });
}

class _CopyWithImpl_Fragment_FullPersonData_studyYear<TRes>
    implements CopyWith_Fragment_FullPersonData_studyYear<TRes> {
  _CopyWithImpl_Fragment_FullPersonData_studyYear(
    this._instance,
    this._then,
  );

  final Fragment_FullPersonData_studyYear _instance;

  final TRes Function(Fragment_FullPersonData_studyYear) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? order = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment_FullPersonData_studyYear(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        order: order == _undefined || order == null
            ? _instance.order
            : (order as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Fragment_FullPersonData_studyYear<TRes>
    implements CopyWith_Fragment_FullPersonData_studyYear<TRes> {
  _CopyWithStubImpl_Fragment_FullPersonData_studyYear(this._res);

  TRes _res;

  call({
    String? name,
    int? order,
    String? $__typename,
  }) =>
      _res;
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
          (l$hobby as Map<String, dynamic>)),
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
    return Object.hashAll([
      l$hobby,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment_FullPersonData_hobbies) ||
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
      get copyWith => CopyWith_Fragment_FullPersonData_hobbies(
            this,
            (i) => i,
          );
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
  _CopyWithImpl_Fragment_FullPersonData_hobbies(
    this._instance,
    this._then,
  );

  final Fragment_FullPersonData_hobbies _instance;

  final TRes Function(Fragment_FullPersonData_hobbies) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hobby = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment_FullPersonData_hobbies(
        hobby: hobby == _undefined || hobby == null
            ? _instance.hobby
            : (hobby as Fragment_FullPersonData_hobbies_hobby),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith_Fragment_FullPersonData_hobbies_hobby<TRes> get hobby {
    final local$hobby = _instance.hobby;
    return CopyWith_Fragment_FullPersonData_hobbies_hobby(
        local$hobby, (e) => call(hobby: e));
  }
}

class _CopyWithStubImpl_Fragment_FullPersonData_hobbies<TRes>
    implements CopyWith_Fragment_FullPersonData_hobbies<TRes> {
  _CopyWithStubImpl_Fragment_FullPersonData_hobbies(this._res);

  TRes _res;

  call({
    Fragment_FullPersonData_hobbies_hobby? hobby,
    String? $__typename,
  }) =>
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
      Map<String, dynamic> json) {
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
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment_FullPersonData_hobbies_hobby) ||
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
          Fragment_FullPersonData_hobbies_hobby>
      get copyWith => CopyWith_Fragment_FullPersonData_hobbies_hobby(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Fragment_FullPersonData_hobbies_hobby<TRes> {
  factory CopyWith_Fragment_FullPersonData_hobbies_hobby(
    Fragment_FullPersonData_hobbies_hobby instance,
    TRes Function(Fragment_FullPersonData_hobbies_hobby) then,
  ) = _CopyWithImpl_Fragment_FullPersonData_hobbies_hobby;

  factory CopyWith_Fragment_FullPersonData_hobbies_hobby.stub(TRes res) =
      _CopyWithStubImpl_Fragment_FullPersonData_hobbies_hobby;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
  });
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
  }) =>
      _then(Fragment_FullPersonData_hobbies_hobby(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        color: color == _undefined ? _instance.color : (color as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Fragment_FullPersonData_hobbies_hobby<TRes>
    implements CopyWith_Fragment_FullPersonData_hobbies_hobby<TRes> {
  _CopyWithStubImpl_Fragment_FullPersonData_hobbies_hobby(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
  }) =>
      _res;
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
          (l$tag as Map<String, dynamic>)),
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
    return Object.hashAll([
      l$tag,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment_FullPersonData_tags) ||
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
      get copyWith => CopyWith_Fragment_FullPersonData_tags(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Fragment_FullPersonData_tags<TRes> {
  factory CopyWith_Fragment_FullPersonData_tags(
    Fragment_FullPersonData_tags instance,
    TRes Function(Fragment_FullPersonData_tags) then,
  ) = _CopyWithImpl_Fragment_FullPersonData_tags;

  factory CopyWith_Fragment_FullPersonData_tags.stub(TRes res) =
      _CopyWithStubImpl_Fragment_FullPersonData_tags;

  TRes call({
    Fragment_FullPersonData_tags_tag? tag,
    String? $__typename,
  });
  CopyWith_Fragment_FullPersonData_tags_tag<TRes> get tag;
}

class _CopyWithImpl_Fragment_FullPersonData_tags<TRes>
    implements CopyWith_Fragment_FullPersonData_tags<TRes> {
  _CopyWithImpl_Fragment_FullPersonData_tags(
    this._instance,
    this._then,
  );

  final Fragment_FullPersonData_tags _instance;

  final TRes Function(Fragment_FullPersonData_tags) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? tag = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment_FullPersonData_tags(
        tag: tag == _undefined || tag == null
            ? _instance.tag
            : (tag as Fragment_FullPersonData_tags_tag),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith_Fragment_FullPersonData_tags_tag<TRes> get tag {
    final local$tag = _instance.tag;
    return CopyWith_Fragment_FullPersonData_tags_tag(
        local$tag, (e) => call(tag: e));
  }
}

class _CopyWithStubImpl_Fragment_FullPersonData_tags<TRes>
    implements CopyWith_Fragment_FullPersonData_tags<TRes> {
  _CopyWithStubImpl_Fragment_FullPersonData_tags(this._res);

  TRes _res;

  call({
    Fragment_FullPersonData_tags_tag? tag,
    String? $__typename,
  }) =>
      _res;

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
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment_FullPersonData_tags_tag) ||
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
      get copyWith => CopyWith_Fragment_FullPersonData_tags_tag(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Fragment_FullPersonData_tags_tag<TRes> {
  factory CopyWith_Fragment_FullPersonData_tags_tag(
    Fragment_FullPersonData_tags_tag instance,
    TRes Function(Fragment_FullPersonData_tags_tag) then,
  ) = _CopyWithImpl_Fragment_FullPersonData_tags_tag;

  factory CopyWith_Fragment_FullPersonData_tags_tag.stub(TRes res) =
      _CopyWithStubImpl_Fragment_FullPersonData_tags_tag;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
  });
}

class _CopyWithImpl_Fragment_FullPersonData_tags_tag<TRes>
    implements CopyWith_Fragment_FullPersonData_tags_tag<TRes> {
  _CopyWithImpl_Fragment_FullPersonData_tags_tag(
    this._instance,
    this._then,
  );

  final Fragment_FullPersonData_tags_tag _instance;

  final TRes Function(Fragment_FullPersonData_tags_tag) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment_FullPersonData_tags_tag(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        color: color == _undefined ? _instance.color : (color as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Fragment_FullPersonData_tags_tag<TRes>
    implements CopyWith_Fragment_FullPersonData_tags_tag<TRes> {
  _CopyWithStubImpl_Fragment_FullPersonData_tags_tag(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
  }) =>
      _res;
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
    return Object.hashAll([
      l$uid,
      l$name,
      l$email,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment_FullPersonData_user) ||
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
      get copyWith => CopyWith_Fragment_FullPersonData_user(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Fragment_FullPersonData_user<TRes> {
  factory CopyWith_Fragment_FullPersonData_user(
    Fragment_FullPersonData_user instance,
    TRes Function(Fragment_FullPersonData_user) then,
  ) = _CopyWithImpl_Fragment_FullPersonData_user;

  factory CopyWith_Fragment_FullPersonData_user.stub(TRes res) =
      _CopyWithStubImpl_Fragment_FullPersonData_user;

  TRes call({
    UuidValue? uid,
    String? name,
    String? email,
    String? $__typename,
  });
}

class _CopyWithImpl_Fragment_FullPersonData_user<TRes>
    implements CopyWith_Fragment_FullPersonData_user<TRes> {
  _CopyWithImpl_Fragment_FullPersonData_user(
    this._instance,
    this._then,
  );

  final Fragment_FullPersonData_user _instance;

  final TRes Function(Fragment_FullPersonData_user) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? uid = _undefined,
    Object? name = _undefined,
    Object? email = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment_FullPersonData_user(
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
      ));
}

class _CopyWithStubImpl_Fragment_FullPersonData_user<TRes>
    implements CopyWith_Fragment_FullPersonData_user<TRes> {
  _CopyWithStubImpl_Fragment_FullPersonData_user(this._res);

  TRes _res;

  call({
    UuidValue? uid,
    String? name,
    String? email,
    String? $__typename,
  }) =>
      _res;
}

class Variables_Fragment_FullPersonDataWithAttendance {
  factory Variables_Fragment_FullPersonDataWithAttendance(
          {UuidValue? personId}) =>
      Variables_Fragment_FullPersonDataWithAttendance._({
        if (personId != null) r'personId': personId,
      });

  Variables_Fragment_FullPersonDataWithAttendance._(this._$data);

  factory Variables_Fragment_FullPersonDataWithAttendance.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('personId')) {
      final l$personId = data['personId'];
      result$data['personId'] =
          l$personId == null ? null : stringToUuid(l$personId);
    }
    return Variables_Fragment_FullPersonDataWithAttendance._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue? get personId => (_$data['personId'] as UuidValue?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('personId')) {
      final l$personId = personId;
      result$data['personId'] =
          l$personId == null ? null : uuidToString(l$personId);
    }
    return result$data;
  }

  CopyWith_Variables_Fragment_FullPersonDataWithAttendance<
          Variables_Fragment_FullPersonDataWithAttendance>
      get copyWith => CopyWith_Variables_Fragment_FullPersonDataWithAttendance(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables_Fragment_FullPersonDataWithAttendance) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$personId = personId;
    final lOther$personId = other.personId;
    if (_$data.containsKey('personId') !=
        other._$data.containsKey('personId')) {
      return false;
    }
    if (l$personId != lOther$personId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$personId = personId;
    return Object.hashAll(
        [_$data.containsKey('personId') ? l$personId : const {}]);
  }
}

abstract class CopyWith_Variables_Fragment_FullPersonDataWithAttendance<TRes> {
  factory CopyWith_Variables_Fragment_FullPersonDataWithAttendance(
    Variables_Fragment_FullPersonDataWithAttendance instance,
    TRes Function(Variables_Fragment_FullPersonDataWithAttendance) then,
  ) = _CopyWithImpl_Variables_Fragment_FullPersonDataWithAttendance;

  factory CopyWith_Variables_Fragment_FullPersonDataWithAttendance.stub(
          TRes res) =
      _CopyWithStubImpl_Variables_Fragment_FullPersonDataWithAttendance;

  TRes call({UuidValue? personId});
}

class _CopyWithImpl_Variables_Fragment_FullPersonDataWithAttendance<TRes>
    implements CopyWith_Variables_Fragment_FullPersonDataWithAttendance<TRes> {
  _CopyWithImpl_Variables_Fragment_FullPersonDataWithAttendance(
    this._instance,
    this._then,
  );

  final Variables_Fragment_FullPersonDataWithAttendance _instance;

  final TRes Function(Variables_Fragment_FullPersonDataWithAttendance) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? personId = _undefined}) =>
      _then(Variables_Fragment_FullPersonDataWithAttendance._({
        ..._instance._$data,
        if (personId != _undefined) 'personId': (personId as UuidValue?),
      }));
}

class _CopyWithStubImpl_Variables_Fragment_FullPersonDataWithAttendance<TRes>
    implements CopyWith_Variables_Fragment_FullPersonDataWithAttendance<TRes> {
  _CopyWithStubImpl_Variables_Fragment_FullPersonDataWithAttendance(this._res);

  TRes _res;

  call({UuidValue? personId}) => _res;
}

class Fragment_FullPersonDataWithAttendance
    implements
        Fragment_FullPersonData,
        Fragment_Person,
        Fragment_PersonNoPhoto {
  Fragment_FullPersonDataWithAttendance({
    required this.id,
    required this.name,
    this.color,
    this.$__typename = 'Persons',
    this.photoUpdatedAt,
    this.blurhash,
    this.address,
    this.birthdate,
    this.areas,
    this.classes,
    this.church,
    this.college,
    this.family,
    this.father,
    required this.gender,
    this.geolocation,
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
    this.streets,
    this.studyYear,
    required this.hobbies,
    required this.tags,
    this.uid,
    this.user,
  });

  factory Fragment_FullPersonDataWithAttendance.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$blurhash = json['blurhash'];
    final l$address = json['address'];
    final l$birthdate = json['birthdate'];
    final l$areas = json['areas'];
    final l$classes = json['classes'];
    final l$church = json['church'];
    final l$college = json['college'];
    final l$family = json['family'];
    final l$father = json['father'];
    final l$gender = json['gender'];
    final l$geolocation = json['geolocation'];
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
    final l$streets = json['streets'];
    final l$studyYear = json['studyYear'];
    final l$hobbies = json['hobbies'];
    final l$tags = json['tags'];
    final l$uid = json['uid'];
    final l$user = json['user'];
    return Fragment_FullPersonDataWithAttendance(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      $__typename: (l$$__typename as String),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
      blurhash: (l$blurhash as String?),
      address: (l$address as String?),
      birthdate: l$birthdate == null ? null : dateFromString(l$birthdate),
      areas: (l$areas as List<dynamic>?)
          ?.map((e) => Fragment_Area.fromJson((e as Map<String, dynamic>)))
          .toList(),
      classes: (l$classes as List<dynamic>?)
          ?.map((e) => Fragment_FullPersonDataWithAttendance_classes.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      church: l$church == null
          ? null
          : Fragment_FullPersonDataWithAttendance_church.fromJson(
              (l$church as Map<String, dynamic>)),
      college: l$college == null
          ? null
          : Fragment_FullPersonDataWithAttendance_college.fromJson(
              (l$college as Map<String, dynamic>)),
      family: l$family == null
          ? null
          : Fragment_Family.fromJson((l$family as Map<String, dynamic>)),
      father: l$father == null
          ? null
          : Fragment_FullPersonDataWithAttendance_father.fromJson(
              (l$father as Map<String, dynamic>)),
      gender: (l$gender as bool),
      geolocation: (l$geolocation as Map<String, dynamic>?),
      groups: (l$groups as List<dynamic>)
          .map((e) => Fragment_FullPersonDataWithAttendance_groups.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      isServant: (l$isServant as bool),
      isShammas: (l$isShammas as bool),
      isStudent: (l$isStudent as bool?),
      job: l$job == null
          ? null
          : Fragment_FullPersonDataWithAttendance_job.fromJson(
              (l$job as Map<String, dynamic>)),
      jobDescription: (l$jobDescription as String?),
      lastCall: l$lastCall == null
          ? null
          : Fragment_LatestCallHistory.fromJson(
              (l$lastCall as Map<String, dynamic>)),
      lastConfession: l$lastConfession == null
          ? null
          : Fragment_LatestConfessionHistory.fromJson(
              (l$lastConfession as Map<String, dynamic>)),
      lastEdit: l$lastEdit == null
          ? null
          : Fragment_LatestEditHistory.fromJson(
              (l$lastEdit as Map<String, dynamic>)),
      lastKodas: l$lastKodas == null
          ? null
          : Fragment_LatestKodasHistory.fromJson(
              (l$lastKodas as Map<String, dynamic>)),
      lastVisit: l$lastVisit == null
          ? null
          : Fragment_LatestVisitHistory.fromJson(
              (l$lastVisit as Map<String, dynamic>)),
      mainPhone: (l$mainPhone as String?),
      notes: (l$notes as String?),
      otherPhones: (l$otherPhones as Json),
      personType: l$personType == null
          ? null
          : Fragment_FullPersonDataWithAttendance_personType.fromJson(
              (l$personType as Map<String, dynamic>)),
      qualification: l$qualification == null
          ? null
          : Fragment_FullPersonDataWithAttendance_qualification.fromJson(
              (l$qualification as Map<String, dynamic>)),
      school: l$school == null
          ? null
          : Fragment_FullPersonDataWithAttendance_school.fromJson(
              (l$school as Map<String, dynamic>)),
      services: (l$services as List<dynamic>)
          .map((e) => Fragment_FullPersonDataWithAttendance_services.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      shammasLevel: l$shammasLevel == null
          ? null
          : Fragment_FullPersonDataWithAttendance_shammasLevel.fromJson(
              (l$shammasLevel as Map<String, dynamic>)),
      state: l$state == null
          ? null
          : Fragment_FullPersonDataWithAttendance_state.fromJson(
              (l$state as Map<String, dynamic>)),
      streets: (l$streets as List<dynamic>?)
          ?.map((e) => Fragment_Street.fromJson((e as Map<String, dynamic>)))
          .toList(),
      studyYear: l$studyYear == null
          ? null
          : Fragment_FullPersonDataWithAttendance_studyYear.fromJson(
              (l$studyYear as Map<String, dynamic>)),
      hobbies: (l$hobbies as List<dynamic>)
          .map((e) => Fragment_FullPersonDataWithAttendance_hobbies.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      tags: (l$tags as List<dynamic>)
          .map((e) => Fragment_FullPersonDataWithAttendance_tags.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      uid: l$uid == null ? null : stringToUuid(l$uid),
      user: l$user == null
          ? null
          : Fragment_FullPersonDataWithAttendance_user.fromJson(
              (l$user as Map<String, dynamic>)),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final String $__typename;

  final DateTime? photoUpdatedAt;

  final String? blurhash;

  final String? address;

  final DateTime? birthdate;

  final List<Fragment_Area>? areas;

  final List<Fragment_FullPersonDataWithAttendance_classes>? classes;

  final Fragment_FullPersonDataWithAttendance_church? church;

  final Fragment_FullPersonDataWithAttendance_college? college;

  final Fragment_Family? family;

  final Fragment_FullPersonDataWithAttendance_father? father;

  final bool gender;

  final Map<String, dynamic>? geolocation;

  final List<Fragment_FullPersonDataWithAttendance_groups> groups;

  final bool isServant;

  final bool isShammas;

  final bool? isStudent;

  final Fragment_FullPersonDataWithAttendance_job? job;

  final String? jobDescription;

  final Fragment_LatestCallHistory? lastCall;

  final Fragment_LatestConfessionHistory? lastConfession;

  final Fragment_LatestEditHistory? lastEdit;

  final Fragment_LatestKodasHistory? lastKodas;

  final Fragment_LatestVisitHistory? lastVisit;

  final String? mainPhone;

  final String? notes;

  final Json otherPhones;

  final Fragment_FullPersonDataWithAttendance_personType? personType;

  final Fragment_FullPersonDataWithAttendance_qualification? qualification;

  final Fragment_FullPersonDataWithAttendance_school? school;

  final List<Fragment_FullPersonDataWithAttendance_services> services;

  final Fragment_FullPersonDataWithAttendance_shammasLevel? shammasLevel;

  final Fragment_FullPersonDataWithAttendance_state? state;

  final List<Fragment_Street>? streets;

  final Fragment_FullPersonDataWithAttendance_studyYear? studyYear;

  final List<Fragment_FullPersonDataWithAttendance_hobbies> hobbies;

  final List<Fragment_FullPersonDataWithAttendance_tags> tags;

  final UuidValue? uid;

  final Fragment_FullPersonDataWithAttendance_user? user;

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
    final l$photoUpdatedAt = photoUpdatedAt;
    _resultData['photoUpdatedAt'] =
        l$photoUpdatedAt == null ? null : tstzToString(l$photoUpdatedAt);
    final l$blurhash = blurhash;
    _resultData['blurhash'] = l$blurhash;
    final l$address = address;
    _resultData['address'] = l$address;
    final l$birthdate = birthdate;
    _resultData['birthdate'] =
        l$birthdate == null ? null : dateToString(l$birthdate);
    final l$areas = areas;
    _resultData['areas'] = l$areas?.map((e) => e.toJson()).toList();
    final l$classes = classes;
    _resultData['classes'] = l$classes?.map((e) => e.toJson()).toList();
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
    final l$geolocation = geolocation;
    _resultData['geolocation'] = l$geolocation;
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
    final l$streets = streets;
    _resultData['streets'] = l$streets?.map((e) => e.toJson()).toList();
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
    final l$$__typename = $__typename;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$blurhash = blurhash;
    final l$address = address;
    final l$birthdate = birthdate;
    final l$areas = areas;
    final l$classes = classes;
    final l$church = church;
    final l$college = college;
    final l$family = family;
    final l$father = father;
    final l$gender = gender;
    final l$geolocation = geolocation;
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
    final l$streets = streets;
    final l$studyYear = studyYear;
    final l$hobbies = hobbies;
    final l$tags = tags;
    final l$uid = uid;
    final l$user = user;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$$__typename,
      l$photoUpdatedAt,
      l$blurhash,
      l$address,
      l$birthdate,
      l$areas == null ? null : Object.hashAll(l$areas.map((v) => v)),
      l$classes == null ? null : Object.hashAll(l$classes.map((v) => v)),
      l$church,
      l$college,
      l$family,
      l$father,
      l$gender,
      l$geolocation,
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
      l$streets == null ? null : Object.hashAll(l$streets.map((v) => v)),
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
    if (!(other is Fragment_FullPersonDataWithAttendance) ||
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
    final l$areas = areas;
    final lOther$areas = other.areas;
    if (l$areas != null && lOther$areas != null) {
      if (l$areas.length != lOther$areas.length) {
        return false;
      }
      for (int i = 0; i < l$areas.length; i++) {
        final l$areas$entry = l$areas[i];
        final lOther$areas$entry = lOther$areas[i];
        if (l$areas$entry != lOther$areas$entry) {
          return false;
        }
      }
    } else if (l$areas != lOther$areas) {
      return false;
    }
    final l$classes = classes;
    final lOther$classes = other.classes;
    if (l$classes != null && lOther$classes != null) {
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
    } else if (l$classes != lOther$classes) {
      return false;
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
    final l$geolocation = geolocation;
    final lOther$geolocation = other.geolocation;
    if (l$geolocation != lOther$geolocation) {
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
    final l$streets = streets;
    final lOther$streets = other.streets;
    if (l$streets != null && lOther$streets != null) {
      if (l$streets.length != lOther$streets.length) {
        return false;
      }
      for (int i = 0; i < l$streets.length; i++) {
        final l$streets$entry = l$streets[i];
        final lOther$streets$entry = lOther$streets[i];
        if (l$streets$entry != lOther$streets$entry) {
          return false;
        }
      }
    } else if (l$streets != lOther$streets) {
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

extension UtilityExtension_Fragment_FullPersonDataWithAttendance
    on Fragment_FullPersonDataWithAttendance {
  CopyWith_Fragment_FullPersonDataWithAttendance<
          Fragment_FullPersonDataWithAttendance>
      get copyWith => CopyWith_Fragment_FullPersonDataWithAttendance(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Fragment_FullPersonDataWithAttendance<TRes> {
  factory CopyWith_Fragment_FullPersonDataWithAttendance(
    Fragment_FullPersonDataWithAttendance instance,
    TRes Function(Fragment_FullPersonDataWithAttendance) then,
  ) = _CopyWithImpl_Fragment_FullPersonDataWithAttendance;

  factory CopyWith_Fragment_FullPersonDataWithAttendance.stub(TRes res) =
      _CopyWithStubImpl_Fragment_FullPersonDataWithAttendance;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    DateTime? photoUpdatedAt,
    String? blurhash,
    String? address,
    DateTime? birthdate,
    List<Fragment_Area>? areas,
    List<Fragment_FullPersonDataWithAttendance_classes>? classes,
    Fragment_FullPersonDataWithAttendance_church? church,
    Fragment_FullPersonDataWithAttendance_college? college,
    Fragment_Family? family,
    Fragment_FullPersonDataWithAttendance_father? father,
    bool? gender,
    Map<String, dynamic>? geolocation,
    List<Fragment_FullPersonDataWithAttendance_groups>? groups,
    bool? isServant,
    bool? isShammas,
    bool? isStudent,
    Fragment_FullPersonDataWithAttendance_job? job,
    String? jobDescription,
    Fragment_LatestCallHistory? lastCall,
    Fragment_LatestConfessionHistory? lastConfession,
    Fragment_LatestEditHistory? lastEdit,
    Fragment_LatestKodasHistory? lastKodas,
    Fragment_LatestVisitHistory? lastVisit,
    String? mainPhone,
    String? notes,
    Json? otherPhones,
    Fragment_FullPersonDataWithAttendance_personType? personType,
    Fragment_FullPersonDataWithAttendance_qualification? qualification,
    Fragment_FullPersonDataWithAttendance_school? school,
    List<Fragment_FullPersonDataWithAttendance_services>? services,
    Fragment_FullPersonDataWithAttendance_shammasLevel? shammasLevel,
    Fragment_FullPersonDataWithAttendance_state? state,
    List<Fragment_Street>? streets,
    Fragment_FullPersonDataWithAttendance_studyYear? studyYear,
    List<Fragment_FullPersonDataWithAttendance_hobbies>? hobbies,
    List<Fragment_FullPersonDataWithAttendance_tags>? tags,
    UuidValue? uid,
    Fragment_FullPersonDataWithAttendance_user? user,
  });
  TRes areas(
      Iterable<Fragment_Area>? Function(
              Iterable<CopyWith_Fragment_Area<Fragment_Area>>?)
          _fn);
  TRes classes(
      Iterable<Fragment_FullPersonDataWithAttendance_classes>? Function(
              Iterable<
                  CopyWith_Fragment_FullPersonDataWithAttendance_classes<
                      Fragment_FullPersonDataWithAttendance_classes>>?)
          _fn);
  CopyWith_Fragment_FullPersonDataWithAttendance_church<TRes> get church;
  CopyWith_Fragment_FullPersonDataWithAttendance_college<TRes> get college;
  CopyWith_Fragment_Family<TRes> get family;
  CopyWith_Fragment_FullPersonDataWithAttendance_father<TRes> get father;
  TRes groups(
      Iterable<Fragment_FullPersonDataWithAttendance_groups> Function(
              Iterable<
                  CopyWith_Fragment_FullPersonDataWithAttendance_groups<
                      Fragment_FullPersonDataWithAttendance_groups>>)
          _fn);
  CopyWith_Fragment_FullPersonDataWithAttendance_job<TRes> get job;
  CopyWith_Fragment_LatestCallHistory<TRes> get lastCall;
  CopyWith_Fragment_LatestConfessionHistory<TRes> get lastConfession;
  CopyWith_Fragment_LatestEditHistory<TRes> get lastEdit;
  CopyWith_Fragment_LatestKodasHistory<TRes> get lastKodas;
  CopyWith_Fragment_LatestVisitHistory<TRes> get lastVisit;
  CopyWith_Fragment_FullPersonDataWithAttendance_personType<TRes>
      get personType;
  CopyWith_Fragment_FullPersonDataWithAttendance_qualification<TRes>
      get qualification;
  CopyWith_Fragment_FullPersonDataWithAttendance_school<TRes> get school;
  TRes services(
      Iterable<Fragment_FullPersonDataWithAttendance_services> Function(
              Iterable<
                  CopyWith_Fragment_FullPersonDataWithAttendance_services<
                      Fragment_FullPersonDataWithAttendance_services>>)
          _fn);
  CopyWith_Fragment_FullPersonDataWithAttendance_shammasLevel<TRes>
      get shammasLevel;
  CopyWith_Fragment_FullPersonDataWithAttendance_state<TRes> get state;
  TRes streets(
      Iterable<Fragment_Street>? Function(
              Iterable<CopyWith_Fragment_Street<Fragment_Street>>?)
          _fn);
  CopyWith_Fragment_FullPersonDataWithAttendance_studyYear<TRes> get studyYear;
  TRes hobbies(
      Iterable<Fragment_FullPersonDataWithAttendance_hobbies> Function(
              Iterable<
                  CopyWith_Fragment_FullPersonDataWithAttendance_hobbies<
                      Fragment_FullPersonDataWithAttendance_hobbies>>)
          _fn);
  TRes tags(
      Iterable<Fragment_FullPersonDataWithAttendance_tags> Function(
              Iterable<
                  CopyWith_Fragment_FullPersonDataWithAttendance_tags<
                      Fragment_FullPersonDataWithAttendance_tags>>)
          _fn);
  CopyWith_Fragment_FullPersonDataWithAttendance_user<TRes> get user;
}

class _CopyWithImpl_Fragment_FullPersonDataWithAttendance<TRes>
    implements CopyWith_Fragment_FullPersonDataWithAttendance<TRes> {
  _CopyWithImpl_Fragment_FullPersonDataWithAttendance(
    this._instance,
    this._then,
  );

  final Fragment_FullPersonDataWithAttendance _instance;

  final TRes Function(Fragment_FullPersonDataWithAttendance) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? blurhash = _undefined,
    Object? address = _undefined,
    Object? birthdate = _undefined,
    Object? areas = _undefined,
    Object? classes = _undefined,
    Object? church = _undefined,
    Object? college = _undefined,
    Object? family = _undefined,
    Object? father = _undefined,
    Object? gender = _undefined,
    Object? geolocation = _undefined,
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
    Object? streets = _undefined,
    Object? studyYear = _undefined,
    Object? hobbies = _undefined,
    Object? tags = _undefined,
    Object? uid = _undefined,
    Object? user = _undefined,
  }) =>
      _then(Fragment_FullPersonDataWithAttendance(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        color: color == _undefined ? _instance.color : (color as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        photoUpdatedAt: photoUpdatedAt == _undefined
            ? _instance.photoUpdatedAt
            : (photoUpdatedAt as DateTime?),
        blurhash:
            blurhash == _undefined ? _instance.blurhash : (blurhash as String?),
        address:
            address == _undefined ? _instance.address : (address as String?),
        birthdate: birthdate == _undefined
            ? _instance.birthdate
            : (birthdate as DateTime?),
        areas: areas == _undefined
            ? _instance.areas
            : (areas as List<Fragment_Area>?),
        classes: classes == _undefined
            ? _instance.classes
            : (classes as List<Fragment_FullPersonDataWithAttendance_classes>?),
        church: church == _undefined
            ? _instance.church
            : (church as Fragment_FullPersonDataWithAttendance_church?),
        college: college == _undefined
            ? _instance.college
            : (college as Fragment_FullPersonDataWithAttendance_college?),
        family: family == _undefined
            ? _instance.family
            : (family as Fragment_Family?),
        father: father == _undefined
            ? _instance.father
            : (father as Fragment_FullPersonDataWithAttendance_father?),
        gender: gender == _undefined || gender == null
            ? _instance.gender
            : (gender as bool),
        geolocation: geolocation == _undefined
            ? _instance.geolocation
            : (geolocation as Map<String, dynamic>?),
        groups: groups == _undefined || groups == null
            ? _instance.groups
            : (groups as List<Fragment_FullPersonDataWithAttendance_groups>),
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
            : (job as Fragment_FullPersonDataWithAttendance_job?),
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
            : (personType as Fragment_FullPersonDataWithAttendance_personType?),
        qualification: qualification == _undefined
            ? _instance.qualification
            : (qualification
                as Fragment_FullPersonDataWithAttendance_qualification?),
        school: school == _undefined
            ? _instance.school
            : (school as Fragment_FullPersonDataWithAttendance_school?),
        services: services == _undefined || services == null
            ? _instance.services
            : (services
                as List<Fragment_FullPersonDataWithAttendance_services>),
        shammasLevel: shammasLevel == _undefined
            ? _instance.shammasLevel
            : (shammasLevel
                as Fragment_FullPersonDataWithAttendance_shammasLevel?),
        state: state == _undefined
            ? _instance.state
            : (state as Fragment_FullPersonDataWithAttendance_state?),
        streets: streets == _undefined
            ? _instance.streets
            : (streets as List<Fragment_Street>?),
        studyYear: studyYear == _undefined
            ? _instance.studyYear
            : (studyYear as Fragment_FullPersonDataWithAttendance_studyYear?),
        hobbies: hobbies == _undefined || hobbies == null
            ? _instance.hobbies
            : (hobbies as List<Fragment_FullPersonDataWithAttendance_hobbies>),
        tags: tags == _undefined || tags == null
            ? _instance.tags
            : (tags as List<Fragment_FullPersonDataWithAttendance_tags>),
        uid: uid == _undefined ? _instance.uid : (uid as UuidValue?),
        user: user == _undefined
            ? _instance.user
            : (user as Fragment_FullPersonDataWithAttendance_user?),
      ));

  TRes areas(
          Iterable<Fragment_Area>? Function(
                  Iterable<CopyWith_Fragment_Area<Fragment_Area>>?)
              _fn) =>
      call(
          areas: _fn(_instance.areas?.map((e) => CopyWith_Fragment_Area(
                e,
                (i) => i,
              )))?.toList());

  TRes classes(
          Iterable<Fragment_FullPersonDataWithAttendance_classes>? Function(
                  Iterable<
                      CopyWith_Fragment_FullPersonDataWithAttendance_classes<
                          Fragment_FullPersonDataWithAttendance_classes>>?)
              _fn) =>
      call(
          classes: _fn(_instance.classes?.map(
              (e) => CopyWith_Fragment_FullPersonDataWithAttendance_classes(
                    e,
                    (i) => i,
                  )))?.toList());

  CopyWith_Fragment_FullPersonDataWithAttendance_church<TRes> get church {
    final local$church = _instance.church;
    return local$church == null
        ? CopyWith_Fragment_FullPersonDataWithAttendance_church.stub(
            _then(_instance))
        : CopyWith_Fragment_FullPersonDataWithAttendance_church(
            local$church, (e) => call(church: e));
  }

  CopyWith_Fragment_FullPersonDataWithAttendance_college<TRes> get college {
    final local$college = _instance.college;
    return local$college == null
        ? CopyWith_Fragment_FullPersonDataWithAttendance_college.stub(
            _then(_instance))
        : CopyWith_Fragment_FullPersonDataWithAttendance_college(
            local$college, (e) => call(college: e));
  }

  CopyWith_Fragment_Family<TRes> get family {
    final local$family = _instance.family;
    return local$family == null
        ? CopyWith_Fragment_Family.stub(_then(_instance))
        : CopyWith_Fragment_Family(local$family, (e) => call(family: e));
  }

  CopyWith_Fragment_FullPersonDataWithAttendance_father<TRes> get father {
    final local$father = _instance.father;
    return local$father == null
        ? CopyWith_Fragment_FullPersonDataWithAttendance_father.stub(
            _then(_instance))
        : CopyWith_Fragment_FullPersonDataWithAttendance_father(
            local$father, (e) => call(father: e));
  }

  TRes groups(
          Iterable<Fragment_FullPersonDataWithAttendance_groups> Function(
                  Iterable<
                      CopyWith_Fragment_FullPersonDataWithAttendance_groups<
                          Fragment_FullPersonDataWithAttendance_groups>>)
              _fn) =>
      call(
          groups: _fn(_instance.groups
              .map((e) => CopyWith_Fragment_FullPersonDataWithAttendance_groups(
                    e,
                    (i) => i,
                  ))).toList());

  CopyWith_Fragment_FullPersonDataWithAttendance_job<TRes> get job {
    final local$job = _instance.job;
    return local$job == null
        ? CopyWith_Fragment_FullPersonDataWithAttendance_job.stub(
            _then(_instance))
        : CopyWith_Fragment_FullPersonDataWithAttendance_job(
            local$job, (e) => call(job: e));
  }

  CopyWith_Fragment_LatestCallHistory<TRes> get lastCall {
    final local$lastCall = _instance.lastCall;
    return local$lastCall == null
        ? CopyWith_Fragment_LatestCallHistory.stub(_then(_instance))
        : CopyWith_Fragment_LatestCallHistory(
            local$lastCall, (e) => call(lastCall: e));
  }

  CopyWith_Fragment_LatestConfessionHistory<TRes> get lastConfession {
    final local$lastConfession = _instance.lastConfession;
    return local$lastConfession == null
        ? CopyWith_Fragment_LatestConfessionHistory.stub(_then(_instance))
        : CopyWith_Fragment_LatestConfessionHistory(
            local$lastConfession, (e) => call(lastConfession: e));
  }

  CopyWith_Fragment_LatestEditHistory<TRes> get lastEdit {
    final local$lastEdit = _instance.lastEdit;
    return local$lastEdit == null
        ? CopyWith_Fragment_LatestEditHistory.stub(_then(_instance))
        : CopyWith_Fragment_LatestEditHistory(
            local$lastEdit, (e) => call(lastEdit: e));
  }

  CopyWith_Fragment_LatestKodasHistory<TRes> get lastKodas {
    final local$lastKodas = _instance.lastKodas;
    return local$lastKodas == null
        ? CopyWith_Fragment_LatestKodasHistory.stub(_then(_instance))
        : CopyWith_Fragment_LatestKodasHistory(
            local$lastKodas, (e) => call(lastKodas: e));
  }

  CopyWith_Fragment_LatestVisitHistory<TRes> get lastVisit {
    final local$lastVisit = _instance.lastVisit;
    return local$lastVisit == null
        ? CopyWith_Fragment_LatestVisitHistory.stub(_then(_instance))
        : CopyWith_Fragment_LatestVisitHistory(
            local$lastVisit, (e) => call(lastVisit: e));
  }

  CopyWith_Fragment_FullPersonDataWithAttendance_personType<TRes>
      get personType {
    final local$personType = _instance.personType;
    return local$personType == null
        ? CopyWith_Fragment_FullPersonDataWithAttendance_personType.stub(
            _then(_instance))
        : CopyWith_Fragment_FullPersonDataWithAttendance_personType(
            local$personType, (e) => call(personType: e));
  }

  CopyWith_Fragment_FullPersonDataWithAttendance_qualification<TRes>
      get qualification {
    final local$qualification = _instance.qualification;
    return local$qualification == null
        ? CopyWith_Fragment_FullPersonDataWithAttendance_qualification.stub(
            _then(_instance))
        : CopyWith_Fragment_FullPersonDataWithAttendance_qualification(
            local$qualification, (e) => call(qualification: e));
  }

  CopyWith_Fragment_FullPersonDataWithAttendance_school<TRes> get school {
    final local$school = _instance.school;
    return local$school == null
        ? CopyWith_Fragment_FullPersonDataWithAttendance_school.stub(
            _then(_instance))
        : CopyWith_Fragment_FullPersonDataWithAttendance_school(
            local$school, (e) => call(school: e));
  }

  TRes services(
          Iterable<Fragment_FullPersonDataWithAttendance_services> Function(
                  Iterable<
                      CopyWith_Fragment_FullPersonDataWithAttendance_services<
                          Fragment_FullPersonDataWithAttendance_services>>)
              _fn) =>
      call(
          services: _fn(_instance.services.map(
              (e) => CopyWith_Fragment_FullPersonDataWithAttendance_services(
                    e,
                    (i) => i,
                  ))).toList());

  CopyWith_Fragment_FullPersonDataWithAttendance_shammasLevel<TRes>
      get shammasLevel {
    final local$shammasLevel = _instance.shammasLevel;
    return local$shammasLevel == null
        ? CopyWith_Fragment_FullPersonDataWithAttendance_shammasLevel.stub(
            _then(_instance))
        : CopyWith_Fragment_FullPersonDataWithAttendance_shammasLevel(
            local$shammasLevel, (e) => call(shammasLevel: e));
  }

  CopyWith_Fragment_FullPersonDataWithAttendance_state<TRes> get state {
    final local$state = _instance.state;
    return local$state == null
        ? CopyWith_Fragment_FullPersonDataWithAttendance_state.stub(
            _then(_instance))
        : CopyWith_Fragment_FullPersonDataWithAttendance_state(
            local$state, (e) => call(state: e));
  }

  TRes streets(
          Iterable<Fragment_Street>? Function(
                  Iterable<CopyWith_Fragment_Street<Fragment_Street>>?)
              _fn) =>
      call(
          streets: _fn(_instance.streets?.map((e) => CopyWith_Fragment_Street(
                e,
                (i) => i,
              )))?.toList());

  CopyWith_Fragment_FullPersonDataWithAttendance_studyYear<TRes> get studyYear {
    final local$studyYear = _instance.studyYear;
    return local$studyYear == null
        ? CopyWith_Fragment_FullPersonDataWithAttendance_studyYear.stub(
            _then(_instance))
        : CopyWith_Fragment_FullPersonDataWithAttendance_studyYear(
            local$studyYear, (e) => call(studyYear: e));
  }

  TRes hobbies(
          Iterable<Fragment_FullPersonDataWithAttendance_hobbies> Function(
                  Iterable<
                      CopyWith_Fragment_FullPersonDataWithAttendance_hobbies<
                          Fragment_FullPersonDataWithAttendance_hobbies>>)
              _fn) =>
      call(
          hobbies: _fn(_instance.hobbies.map(
              (e) => CopyWith_Fragment_FullPersonDataWithAttendance_hobbies(
                    e,
                    (i) => i,
                  ))).toList());

  TRes tags(
          Iterable<Fragment_FullPersonDataWithAttendance_tags> Function(
                  Iterable<
                      CopyWith_Fragment_FullPersonDataWithAttendance_tags<
                          Fragment_FullPersonDataWithAttendance_tags>>)
              _fn) =>
      call(
          tags: _fn(_instance.tags
              .map((e) => CopyWith_Fragment_FullPersonDataWithAttendance_tags(
                    e,
                    (i) => i,
                  ))).toList());

  CopyWith_Fragment_FullPersonDataWithAttendance_user<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith_Fragment_FullPersonDataWithAttendance_user.stub(
            _then(_instance))
        : CopyWith_Fragment_FullPersonDataWithAttendance_user(
            local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl_Fragment_FullPersonDataWithAttendance<TRes>
    implements CopyWith_Fragment_FullPersonDataWithAttendance<TRes> {
  _CopyWithStubImpl_Fragment_FullPersonDataWithAttendance(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    DateTime? photoUpdatedAt,
    String? blurhash,
    String? address,
    DateTime? birthdate,
    List<Fragment_Area>? areas,
    List<Fragment_FullPersonDataWithAttendance_classes>? classes,
    Fragment_FullPersonDataWithAttendance_church? church,
    Fragment_FullPersonDataWithAttendance_college? college,
    Fragment_Family? family,
    Fragment_FullPersonDataWithAttendance_father? father,
    bool? gender,
    Map<String, dynamic>? geolocation,
    List<Fragment_FullPersonDataWithAttendance_groups>? groups,
    bool? isServant,
    bool? isShammas,
    bool? isStudent,
    Fragment_FullPersonDataWithAttendance_job? job,
    String? jobDescription,
    Fragment_LatestCallHistory? lastCall,
    Fragment_LatestConfessionHistory? lastConfession,
    Fragment_LatestEditHistory? lastEdit,
    Fragment_LatestKodasHistory? lastKodas,
    Fragment_LatestVisitHistory? lastVisit,
    String? mainPhone,
    String? notes,
    Json? otherPhones,
    Fragment_FullPersonDataWithAttendance_personType? personType,
    Fragment_FullPersonDataWithAttendance_qualification? qualification,
    Fragment_FullPersonDataWithAttendance_school? school,
    List<Fragment_FullPersonDataWithAttendance_services>? services,
    Fragment_FullPersonDataWithAttendance_shammasLevel? shammasLevel,
    Fragment_FullPersonDataWithAttendance_state? state,
    List<Fragment_Street>? streets,
    Fragment_FullPersonDataWithAttendance_studyYear? studyYear,
    List<Fragment_FullPersonDataWithAttendance_hobbies>? hobbies,
    List<Fragment_FullPersonDataWithAttendance_tags>? tags,
    UuidValue? uid,
    Fragment_FullPersonDataWithAttendance_user? user,
  }) =>
      _res;

  areas(_fn) => _res;

  classes(_fn) => _res;

  CopyWith_Fragment_FullPersonDataWithAttendance_church<TRes> get church =>
      CopyWith_Fragment_FullPersonDataWithAttendance_church.stub(_res);

  CopyWith_Fragment_FullPersonDataWithAttendance_college<TRes> get college =>
      CopyWith_Fragment_FullPersonDataWithAttendance_college.stub(_res);

  CopyWith_Fragment_Family<TRes> get family =>
      CopyWith_Fragment_Family.stub(_res);

  CopyWith_Fragment_FullPersonDataWithAttendance_father<TRes> get father =>
      CopyWith_Fragment_FullPersonDataWithAttendance_father.stub(_res);

  groups(_fn) => _res;

  CopyWith_Fragment_FullPersonDataWithAttendance_job<TRes> get job =>
      CopyWith_Fragment_FullPersonDataWithAttendance_job.stub(_res);

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

  CopyWith_Fragment_FullPersonDataWithAttendance_personType<TRes>
      get personType =>
          CopyWith_Fragment_FullPersonDataWithAttendance_personType.stub(_res);

  CopyWith_Fragment_FullPersonDataWithAttendance_qualification<TRes>
      get qualification =>
          CopyWith_Fragment_FullPersonDataWithAttendance_qualification.stub(
              _res);

  CopyWith_Fragment_FullPersonDataWithAttendance_school<TRes> get school =>
      CopyWith_Fragment_FullPersonDataWithAttendance_school.stub(_res);

  services(_fn) => _res;

  CopyWith_Fragment_FullPersonDataWithAttendance_shammasLevel<TRes>
      get shammasLevel =>
          CopyWith_Fragment_FullPersonDataWithAttendance_shammasLevel.stub(
              _res);

  CopyWith_Fragment_FullPersonDataWithAttendance_state<TRes> get state =>
      CopyWith_Fragment_FullPersonDataWithAttendance_state.stub(_res);

  streets(_fn) => _res;

  CopyWith_Fragment_FullPersonDataWithAttendance_studyYear<TRes>
      get studyYear =>
          CopyWith_Fragment_FullPersonDataWithAttendance_studyYear.stub(_res);

  hobbies(_fn) => _res;

  tags(_fn) => _res;

  CopyWith_Fragment_FullPersonDataWithAttendance_user<TRes> get user =>
      CopyWith_Fragment_FullPersonDataWithAttendance_user.stub(_res);
}

const fragmentDefinitionFullPersonDataWithAttendance = FragmentDefinitionNode(
  name: NameNode(value: 'FullPersonDataWithAttendance'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Persons'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FragmentSpreadNode(
      name: NameNode(value: 'FullPersonData'),
      directives: [],
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
          value: ObjectValueNode(fields: [
            ObjectFieldNode(
              name: NameNode(value: 'name'),
              value: EnumValueNode(name: NameNode(value: 'ASC')),
            )
          ]),
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'Class'),
          directives: [],
        ),
        FieldNode(
          name: NameNode(value: 'attendanceHistoryAggregate'),
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
                )
              ]),
            )
          ],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
            FieldNode(
              name: NameNode(value: 'aggregate'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                  name: NameNode(value: 'max'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                      name: NameNode(value: 'time'),
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
      name: NameNode(value: 'groups'),
      alias: null,
      arguments: [
        ArgumentNode(
          name: NameNode(value: 'limit'),
          value: IntValueNode(value: '6'),
        ),
        ArgumentNode(
          name: NameNode(value: 'orderBy'),
          value: ObjectValueNode(fields: [
            ObjectFieldNode(
              name: NameNode(value: 'group'),
              value: ObjectValueNode(fields: [
                ObjectFieldNode(
                  name: NameNode(value: 'name'),
                  value: EnumValueNode(name: NameNode(value: 'ASC')),
                )
              ]),
            )
          ]),
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'group'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'Group'),
              directives: [],
            ),
            FieldNode(
              name: NameNode(value: 'attendanceHistoryAggregate'),
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
                          value:
                              VariableNode(name: NameNode(value: 'personId')),
                        )
                      ]),
                    )
                  ]),
                )
              ],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                  name: NameNode(value: 'aggregate'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                      name: NameNode(value: 'max'),
                      alias: null,
                      arguments: [],
                      directives: [],
                      selectionSet: SelectionSetNode(selections: [
                        FieldNode(
                          name: NameNode(value: 'time'),
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
      name: NameNode(value: 'services'),
      alias: null,
      arguments: [
        ArgumentNode(
          name: NameNode(value: 'limit'),
          value: IntValueNode(value: '6'),
        ),
        ArgumentNode(
          name: NameNode(value: 'orderBy'),
          value: ObjectValueNode(fields: [
            ObjectFieldNode(
              name: NameNode(value: 'service'),
              value: ObjectValueNode(fields: [
                ObjectFieldNode(
                  name: NameNode(value: 'name'),
                  value: EnumValueNode(name: NameNode(value: 'ASC')),
                )
              ]),
            )
          ]),
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'service'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'ServiceWithStudyYears'),
              directives: [],
            ),
            FieldNode(
              name: NameNode(value: 'attendanceHistoryAggregate'),
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
                          value:
                              VariableNode(name: NameNode(value: 'personId')),
                        )
                      ]),
                    )
                  ]),
                )
              ],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                  name: NameNode(value: 'aggregate'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                      name: NameNode(value: 'max'),
                      alias: null,
                      arguments: [],
                      directives: [],
                      selectionSet: SelectionSetNode(selections: [
                        FieldNode(
                          name: NameNode(value: 'time'),
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
);
const documentNodeFragmentFullPersonDataWithAttendance =
    DocumentNode(definitions: [
  fragmentDefinitionFullPersonDataWithAttendance,
  fragmentDefinitionFullPersonData,
  fragmentDefinitionPerson,
  fragmentDefinitionPersonNoPhoto,
  fragmentDefinitionArea,
  fragmentDefinitionAreaNoPhoto,
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
  fragmentDefinitionStreet,
  fragmentDefinitionStreetNoPhoto,
]);

class Fragment_FullPersonDataWithAttendance_classes
    implements Fragment_Class, Fragment_ClassNoPhoto {
  Fragment_FullPersonDataWithAttendance_classes({
    required this.id,
    required this.name,
    this.color,
    this.$__typename = 'Classes',
    this.photoUpdatedAt,
    this.blurhash,
    required this.attendanceHistoryAggregate,
  });

  factory Fragment_FullPersonDataWithAttendance_classes.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$blurhash = json['blurhash'];
    final l$attendanceHistoryAggregate = json['attendanceHistoryAggregate'];
    return Fragment_FullPersonDataWithAttendance_classes(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      $__typename: (l$$__typename as String),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
      blurhash: (l$blurhash as String?),
      attendanceHistoryAggregate:
          Fragment_FullPersonDataWithAttendance_classes_attendanceHistoryAggregate
              .fromJson((l$attendanceHistoryAggregate as Map<String, dynamic>)),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final String $__typename;

  final DateTime? photoUpdatedAt;

  final String? blurhash;

  final Fragment_FullPersonDataWithAttendance_classes_attendanceHistoryAggregate
      attendanceHistoryAggregate;

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
    final l$photoUpdatedAt = photoUpdatedAt;
    _resultData['photoUpdatedAt'] =
        l$photoUpdatedAt == null ? null : tstzToString(l$photoUpdatedAt);
    final l$blurhash = blurhash;
    _resultData['blurhash'] = l$blurhash;
    final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
    _resultData['attendanceHistoryAggregate'] =
        l$attendanceHistoryAggregate.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$$__typename = $__typename;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$blurhash = blurhash;
    final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$$__typename,
      l$photoUpdatedAt,
      l$blurhash,
      l$attendanceHistoryAggregate,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment_FullPersonDataWithAttendance_classes) ||
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
    final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
    final lOther$attendanceHistoryAggregate = other.attendanceHistoryAggregate;
    if (l$attendanceHistoryAggregate != lOther$attendanceHistoryAggregate) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Fragment_FullPersonDataWithAttendance_classes
    on Fragment_FullPersonDataWithAttendance_classes {
  CopyWith_Fragment_FullPersonDataWithAttendance_classes<
          Fragment_FullPersonDataWithAttendance_classes>
      get copyWith => CopyWith_Fragment_FullPersonDataWithAttendance_classes(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Fragment_FullPersonDataWithAttendance_classes<TRes> {
  factory CopyWith_Fragment_FullPersonDataWithAttendance_classes(
    Fragment_FullPersonDataWithAttendance_classes instance,
    TRes Function(Fragment_FullPersonDataWithAttendance_classes) then,
  ) = _CopyWithImpl_Fragment_FullPersonDataWithAttendance_classes;

  factory CopyWith_Fragment_FullPersonDataWithAttendance_classes.stub(
          TRes res) =
      _CopyWithStubImpl_Fragment_FullPersonDataWithAttendance_classes;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    DateTime? photoUpdatedAt,
    String? blurhash,
    Fragment_FullPersonDataWithAttendance_classes_attendanceHistoryAggregate?
        attendanceHistoryAggregate,
  });
  CopyWith_Fragment_FullPersonDataWithAttendance_classes_attendanceHistoryAggregate<
      TRes> get attendanceHistoryAggregate;
}

class _CopyWithImpl_Fragment_FullPersonDataWithAttendance_classes<TRes>
    implements CopyWith_Fragment_FullPersonDataWithAttendance_classes<TRes> {
  _CopyWithImpl_Fragment_FullPersonDataWithAttendance_classes(
    this._instance,
    this._then,
  );

  final Fragment_FullPersonDataWithAttendance_classes _instance;

  final TRes Function(Fragment_FullPersonDataWithAttendance_classes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? blurhash = _undefined,
    Object? attendanceHistoryAggregate = _undefined,
  }) =>
      _then(Fragment_FullPersonDataWithAttendance_classes(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        color: color == _undefined ? _instance.color : (color as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        photoUpdatedAt: photoUpdatedAt == _undefined
            ? _instance.photoUpdatedAt
            : (photoUpdatedAt as DateTime?),
        blurhash:
            blurhash == _undefined ? _instance.blurhash : (blurhash as String?),
        attendanceHistoryAggregate: attendanceHistoryAggregate == _undefined ||
                attendanceHistoryAggregate == null
            ? _instance.attendanceHistoryAggregate
            : (attendanceHistoryAggregate
                as Fragment_FullPersonDataWithAttendance_classes_attendanceHistoryAggregate),
      ));

  CopyWith_Fragment_FullPersonDataWithAttendance_classes_attendanceHistoryAggregate<
      TRes> get attendanceHistoryAggregate {
    final local$attendanceHistoryAggregate =
        _instance.attendanceHistoryAggregate;
    return CopyWith_Fragment_FullPersonDataWithAttendance_classes_attendanceHistoryAggregate(
        local$attendanceHistoryAggregate,
        (e) => call(attendanceHistoryAggregate: e));
  }
}

class _CopyWithStubImpl_Fragment_FullPersonDataWithAttendance_classes<TRes>
    implements CopyWith_Fragment_FullPersonDataWithAttendance_classes<TRes> {
  _CopyWithStubImpl_Fragment_FullPersonDataWithAttendance_classes(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    DateTime? photoUpdatedAt,
    String? blurhash,
    Fragment_FullPersonDataWithAttendance_classes_attendanceHistoryAggregate?
        attendanceHistoryAggregate,
  }) =>
      _res;

  CopyWith_Fragment_FullPersonDataWithAttendance_classes_attendanceHistoryAggregate<
          TRes>
      get attendanceHistoryAggregate =>
          CopyWith_Fragment_FullPersonDataWithAttendance_classes_attendanceHistoryAggregate
              .stub(_res);
}

class Fragment_FullPersonDataWithAttendance_church
    implements Fragment_FullPersonData_church {
  Fragment_FullPersonDataWithAttendance_church({
    required this.id,
    required this.name,
    this.$__typename = 'Churches',
  });

  factory Fragment_FullPersonDataWithAttendance_church.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Fragment_FullPersonDataWithAttendance_church(
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
    if (!(other is Fragment_FullPersonDataWithAttendance_church) ||
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

extension UtilityExtension_Fragment_FullPersonDataWithAttendance_church
    on Fragment_FullPersonDataWithAttendance_church {
  CopyWith_Fragment_FullPersonDataWithAttendance_church<
          Fragment_FullPersonDataWithAttendance_church>
      get copyWith => CopyWith_Fragment_FullPersonDataWithAttendance_church(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Fragment_FullPersonDataWithAttendance_church<TRes> {
  factory CopyWith_Fragment_FullPersonDataWithAttendance_church(
    Fragment_FullPersonDataWithAttendance_church instance,
    TRes Function(Fragment_FullPersonDataWithAttendance_church) then,
  ) = _CopyWithImpl_Fragment_FullPersonDataWithAttendance_church;

  factory CopyWith_Fragment_FullPersonDataWithAttendance_church.stub(TRes res) =
      _CopyWithStubImpl_Fragment_FullPersonDataWithAttendance_church;

  TRes call({
    UuidValue? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl_Fragment_FullPersonDataWithAttendance_church<TRes>
    implements CopyWith_Fragment_FullPersonDataWithAttendance_church<TRes> {
  _CopyWithImpl_Fragment_FullPersonDataWithAttendance_church(
    this._instance,
    this._then,
  );

  final Fragment_FullPersonDataWithAttendance_church _instance;

  final TRes Function(Fragment_FullPersonDataWithAttendance_church) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment_FullPersonDataWithAttendance_church(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Fragment_FullPersonDataWithAttendance_church<TRes>
    implements CopyWith_Fragment_FullPersonDataWithAttendance_church<TRes> {
  _CopyWithStubImpl_Fragment_FullPersonDataWithAttendance_church(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Fragment_FullPersonDataWithAttendance_college
    implements Fragment_FullPersonData_college {
  Fragment_FullPersonDataWithAttendance_college({
    required this.id,
    required this.name,
    this.$__typename = 'Colleges',
  });

  factory Fragment_FullPersonDataWithAttendance_college.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Fragment_FullPersonDataWithAttendance_college(
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
    if (!(other is Fragment_FullPersonDataWithAttendance_college) ||
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

extension UtilityExtension_Fragment_FullPersonDataWithAttendance_college
    on Fragment_FullPersonDataWithAttendance_college {
  CopyWith_Fragment_FullPersonDataWithAttendance_college<
          Fragment_FullPersonDataWithAttendance_college>
      get copyWith => CopyWith_Fragment_FullPersonDataWithAttendance_college(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Fragment_FullPersonDataWithAttendance_college<TRes> {
  factory CopyWith_Fragment_FullPersonDataWithAttendance_college(
    Fragment_FullPersonDataWithAttendance_college instance,
    TRes Function(Fragment_FullPersonDataWithAttendance_college) then,
  ) = _CopyWithImpl_Fragment_FullPersonDataWithAttendance_college;

  factory CopyWith_Fragment_FullPersonDataWithAttendance_college.stub(
          TRes res) =
      _CopyWithStubImpl_Fragment_FullPersonDataWithAttendance_college;

  TRes call({
    UuidValue? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl_Fragment_FullPersonDataWithAttendance_college<TRes>
    implements CopyWith_Fragment_FullPersonDataWithAttendance_college<TRes> {
  _CopyWithImpl_Fragment_FullPersonDataWithAttendance_college(
    this._instance,
    this._then,
  );

  final Fragment_FullPersonDataWithAttendance_college _instance;

  final TRes Function(Fragment_FullPersonDataWithAttendance_college) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment_FullPersonDataWithAttendance_college(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Fragment_FullPersonDataWithAttendance_college<TRes>
    implements CopyWith_Fragment_FullPersonDataWithAttendance_college<TRes> {
  _CopyWithStubImpl_Fragment_FullPersonDataWithAttendance_college(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Fragment_FullPersonDataWithAttendance_father
    implements Fragment_FullPersonData_father {
  Fragment_FullPersonDataWithAttendance_father({
    required this.id,
    required this.name,
    this.church,
    this.$__typename = 'Fathers',
  });

  factory Fragment_FullPersonDataWithAttendance_father.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$church = json['church'];
    final l$$__typename = json['__typename'];
    return Fragment_FullPersonDataWithAttendance_father(
      id: stringToUuid(l$id),
      name: (l$name as String),
      church: l$church == null
          ? null
          : Fragment_FullPersonDataWithAttendance_father_church.fromJson(
              (l$church as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final String name;

  final Fragment_FullPersonDataWithAttendance_father_church? church;

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
    return Object.hashAll([
      l$id,
      l$name,
      l$church,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment_FullPersonDataWithAttendance_father) ||
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

extension UtilityExtension_Fragment_FullPersonDataWithAttendance_father
    on Fragment_FullPersonDataWithAttendance_father {
  CopyWith_Fragment_FullPersonDataWithAttendance_father<
          Fragment_FullPersonDataWithAttendance_father>
      get copyWith => CopyWith_Fragment_FullPersonDataWithAttendance_father(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Fragment_FullPersonDataWithAttendance_father<TRes> {
  factory CopyWith_Fragment_FullPersonDataWithAttendance_father(
    Fragment_FullPersonDataWithAttendance_father instance,
    TRes Function(Fragment_FullPersonDataWithAttendance_father) then,
  ) = _CopyWithImpl_Fragment_FullPersonDataWithAttendance_father;

  factory CopyWith_Fragment_FullPersonDataWithAttendance_father.stub(TRes res) =
      _CopyWithStubImpl_Fragment_FullPersonDataWithAttendance_father;

  TRes call({
    UuidValue? id,
    String? name,
    Fragment_FullPersonDataWithAttendance_father_church? church,
    String? $__typename,
  });
  CopyWith_Fragment_FullPersonDataWithAttendance_father_church<TRes> get church;
}

class _CopyWithImpl_Fragment_FullPersonDataWithAttendance_father<TRes>
    implements CopyWith_Fragment_FullPersonDataWithAttendance_father<TRes> {
  _CopyWithImpl_Fragment_FullPersonDataWithAttendance_father(
    this._instance,
    this._then,
  );

  final Fragment_FullPersonDataWithAttendance_father _instance;

  final TRes Function(Fragment_FullPersonDataWithAttendance_father) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? church = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment_FullPersonDataWithAttendance_father(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        church: church == _undefined
            ? _instance.church
            : (church as Fragment_FullPersonDataWithAttendance_father_church?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith_Fragment_FullPersonDataWithAttendance_father_church<TRes>
      get church {
    final local$church = _instance.church;
    return local$church == null
        ? CopyWith_Fragment_FullPersonDataWithAttendance_father_church.stub(
            _then(_instance))
        : CopyWith_Fragment_FullPersonDataWithAttendance_father_church(
            local$church, (e) => call(church: e));
  }
}

class _CopyWithStubImpl_Fragment_FullPersonDataWithAttendance_father<TRes>
    implements CopyWith_Fragment_FullPersonDataWithAttendance_father<TRes> {
  _CopyWithStubImpl_Fragment_FullPersonDataWithAttendance_father(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    Fragment_FullPersonDataWithAttendance_father_church? church,
    String? $__typename,
  }) =>
      _res;

  CopyWith_Fragment_FullPersonDataWithAttendance_father_church<TRes>
      get church =>
          CopyWith_Fragment_FullPersonDataWithAttendance_father_church.stub(
              _res);
}

class Fragment_FullPersonDataWithAttendance_father_church
    implements Fragment_FullPersonData_father_church {
  Fragment_FullPersonDataWithAttendance_father_church({
    required this.id,
    required this.name,
    this.$__typename = 'Churches',
  });

  factory Fragment_FullPersonDataWithAttendance_father_church.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Fragment_FullPersonDataWithAttendance_father_church(
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
    if (!(other is Fragment_FullPersonDataWithAttendance_father_church) ||
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

extension UtilityExtension_Fragment_FullPersonDataWithAttendance_father_church
    on Fragment_FullPersonDataWithAttendance_father_church {
  CopyWith_Fragment_FullPersonDataWithAttendance_father_church<
          Fragment_FullPersonDataWithAttendance_father_church>
      get copyWith =>
          CopyWith_Fragment_FullPersonDataWithAttendance_father_church(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Fragment_FullPersonDataWithAttendance_father_church<
    TRes> {
  factory CopyWith_Fragment_FullPersonDataWithAttendance_father_church(
    Fragment_FullPersonDataWithAttendance_father_church instance,
    TRes Function(Fragment_FullPersonDataWithAttendance_father_church) then,
  ) = _CopyWithImpl_Fragment_FullPersonDataWithAttendance_father_church;

  factory CopyWith_Fragment_FullPersonDataWithAttendance_father_church.stub(
          TRes res) =
      _CopyWithStubImpl_Fragment_FullPersonDataWithAttendance_father_church;

  TRes call({
    UuidValue? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl_Fragment_FullPersonDataWithAttendance_father_church<TRes>
    implements
        CopyWith_Fragment_FullPersonDataWithAttendance_father_church<TRes> {
  _CopyWithImpl_Fragment_FullPersonDataWithAttendance_father_church(
    this._instance,
    this._then,
  );

  final Fragment_FullPersonDataWithAttendance_father_church _instance;

  final TRes Function(Fragment_FullPersonDataWithAttendance_father_church)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment_FullPersonDataWithAttendance_father_church(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Fragment_FullPersonDataWithAttendance_father_church<
        TRes>
    implements
        CopyWith_Fragment_FullPersonDataWithAttendance_father_church<TRes> {
  _CopyWithStubImpl_Fragment_FullPersonDataWithAttendance_father_church(
      this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Fragment_FullPersonDataWithAttendance_groups
    implements Fragment_FullPersonData_groups {
  Fragment_FullPersonDataWithAttendance_groups({
    required this.group,
    this.$__typename = 'PersonsGroups',
  });

  factory Fragment_FullPersonDataWithAttendance_groups.fromJson(
      Map<String, dynamic> json) {
    final l$group = json['group'];
    final l$$__typename = json['__typename'];
    return Fragment_FullPersonDataWithAttendance_groups(
      group: Fragment_FullPersonDataWithAttendance_groups_group.fromJson(
          (l$group as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_FullPersonDataWithAttendance_groups_group group;

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
    return Object.hashAll([
      l$group,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment_FullPersonDataWithAttendance_groups) ||
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

extension UtilityExtension_Fragment_FullPersonDataWithAttendance_groups
    on Fragment_FullPersonDataWithAttendance_groups {
  CopyWith_Fragment_FullPersonDataWithAttendance_groups<
          Fragment_FullPersonDataWithAttendance_groups>
      get copyWith => CopyWith_Fragment_FullPersonDataWithAttendance_groups(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Fragment_FullPersonDataWithAttendance_groups<TRes> {
  factory CopyWith_Fragment_FullPersonDataWithAttendance_groups(
    Fragment_FullPersonDataWithAttendance_groups instance,
    TRes Function(Fragment_FullPersonDataWithAttendance_groups) then,
  ) = _CopyWithImpl_Fragment_FullPersonDataWithAttendance_groups;

  factory CopyWith_Fragment_FullPersonDataWithAttendance_groups.stub(TRes res) =
      _CopyWithStubImpl_Fragment_FullPersonDataWithAttendance_groups;

  TRes call({
    Fragment_FullPersonDataWithAttendance_groups_group? group,
    String? $__typename,
  });
  CopyWith_Fragment_FullPersonDataWithAttendance_groups_group<TRes> get group;
}

class _CopyWithImpl_Fragment_FullPersonDataWithAttendance_groups<TRes>
    implements CopyWith_Fragment_FullPersonDataWithAttendance_groups<TRes> {
  _CopyWithImpl_Fragment_FullPersonDataWithAttendance_groups(
    this._instance,
    this._then,
  );

  final Fragment_FullPersonDataWithAttendance_groups _instance;

  final TRes Function(Fragment_FullPersonDataWithAttendance_groups) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? group = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment_FullPersonDataWithAttendance_groups(
        group: group == _undefined || group == null
            ? _instance.group
            : (group as Fragment_FullPersonDataWithAttendance_groups_group),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith_Fragment_FullPersonDataWithAttendance_groups_group<TRes> get group {
    final local$group = _instance.group;
    return CopyWith_Fragment_FullPersonDataWithAttendance_groups_group(
        local$group, (e) => call(group: e));
  }
}

class _CopyWithStubImpl_Fragment_FullPersonDataWithAttendance_groups<TRes>
    implements CopyWith_Fragment_FullPersonDataWithAttendance_groups<TRes> {
  _CopyWithStubImpl_Fragment_FullPersonDataWithAttendance_groups(this._res);

  TRes _res;

  call({
    Fragment_FullPersonDataWithAttendance_groups_group? group,
    String? $__typename,
  }) =>
      _res;

  CopyWith_Fragment_FullPersonDataWithAttendance_groups_group<TRes> get group =>
      CopyWith_Fragment_FullPersonDataWithAttendance_groups_group.stub(_res);
}

class Fragment_FullPersonDataWithAttendance_groups_group
    implements Fragment_Group, Fragment_GroupNoPhoto {
  Fragment_FullPersonDataWithAttendance_groups_group({
    required this.id,
    required this.name,
    this.color,
    this.$__typename = 'Groups',
    this.photoUpdatedAt,
    this.blurhash,
    required this.attendanceHistoryAggregate,
  });

  factory Fragment_FullPersonDataWithAttendance_groups_group.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$blurhash = json['blurhash'];
    final l$attendanceHistoryAggregate = json['attendanceHistoryAggregate'];
    return Fragment_FullPersonDataWithAttendance_groups_group(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      $__typename: (l$$__typename as String),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
      blurhash: (l$blurhash as String?),
      attendanceHistoryAggregate:
          Fragment_FullPersonDataWithAttendance_groups_group_attendanceHistoryAggregate
              .fromJson((l$attendanceHistoryAggregate as Map<String, dynamic>)),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final String $__typename;

  final DateTime? photoUpdatedAt;

  final String? blurhash;

  final Fragment_FullPersonDataWithAttendance_groups_group_attendanceHistoryAggregate
      attendanceHistoryAggregate;

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
    final l$photoUpdatedAt = photoUpdatedAt;
    _resultData['photoUpdatedAt'] =
        l$photoUpdatedAt == null ? null : tstzToString(l$photoUpdatedAt);
    final l$blurhash = blurhash;
    _resultData['blurhash'] = l$blurhash;
    final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
    _resultData['attendanceHistoryAggregate'] =
        l$attendanceHistoryAggregate.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$$__typename = $__typename;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$blurhash = blurhash;
    final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$$__typename,
      l$photoUpdatedAt,
      l$blurhash,
      l$attendanceHistoryAggregate,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment_FullPersonDataWithAttendance_groups_group) ||
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
    final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
    final lOther$attendanceHistoryAggregate = other.attendanceHistoryAggregate;
    if (l$attendanceHistoryAggregate != lOther$attendanceHistoryAggregate) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Fragment_FullPersonDataWithAttendance_groups_group
    on Fragment_FullPersonDataWithAttendance_groups_group {
  CopyWith_Fragment_FullPersonDataWithAttendance_groups_group<
          Fragment_FullPersonDataWithAttendance_groups_group>
      get copyWith =>
          CopyWith_Fragment_FullPersonDataWithAttendance_groups_group(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Fragment_FullPersonDataWithAttendance_groups_group<
    TRes> {
  factory CopyWith_Fragment_FullPersonDataWithAttendance_groups_group(
    Fragment_FullPersonDataWithAttendance_groups_group instance,
    TRes Function(Fragment_FullPersonDataWithAttendance_groups_group) then,
  ) = _CopyWithImpl_Fragment_FullPersonDataWithAttendance_groups_group;

  factory CopyWith_Fragment_FullPersonDataWithAttendance_groups_group.stub(
          TRes res) =
      _CopyWithStubImpl_Fragment_FullPersonDataWithAttendance_groups_group;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    DateTime? photoUpdatedAt,
    String? blurhash,
    Fragment_FullPersonDataWithAttendance_groups_group_attendanceHistoryAggregate?
        attendanceHistoryAggregate,
  });
  CopyWith_Fragment_FullPersonDataWithAttendance_groups_group_attendanceHistoryAggregate<
      TRes> get attendanceHistoryAggregate;
}

class _CopyWithImpl_Fragment_FullPersonDataWithAttendance_groups_group<TRes>
    implements
        CopyWith_Fragment_FullPersonDataWithAttendance_groups_group<TRes> {
  _CopyWithImpl_Fragment_FullPersonDataWithAttendance_groups_group(
    this._instance,
    this._then,
  );

  final Fragment_FullPersonDataWithAttendance_groups_group _instance;

  final TRes Function(Fragment_FullPersonDataWithAttendance_groups_group) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? blurhash = _undefined,
    Object? attendanceHistoryAggregate = _undefined,
  }) =>
      _then(Fragment_FullPersonDataWithAttendance_groups_group(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        color: color == _undefined ? _instance.color : (color as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        photoUpdatedAt: photoUpdatedAt == _undefined
            ? _instance.photoUpdatedAt
            : (photoUpdatedAt as DateTime?),
        blurhash:
            blurhash == _undefined ? _instance.blurhash : (blurhash as String?),
        attendanceHistoryAggregate: attendanceHistoryAggregate == _undefined ||
                attendanceHistoryAggregate == null
            ? _instance.attendanceHistoryAggregate
            : (attendanceHistoryAggregate
                as Fragment_FullPersonDataWithAttendance_groups_group_attendanceHistoryAggregate),
      ));

  CopyWith_Fragment_FullPersonDataWithAttendance_groups_group_attendanceHistoryAggregate<
      TRes> get attendanceHistoryAggregate {
    final local$attendanceHistoryAggregate =
        _instance.attendanceHistoryAggregate;
    return CopyWith_Fragment_FullPersonDataWithAttendance_groups_group_attendanceHistoryAggregate(
        local$attendanceHistoryAggregate,
        (e) => call(attendanceHistoryAggregate: e));
  }
}

class _CopyWithStubImpl_Fragment_FullPersonDataWithAttendance_groups_group<TRes>
    implements
        CopyWith_Fragment_FullPersonDataWithAttendance_groups_group<TRes> {
  _CopyWithStubImpl_Fragment_FullPersonDataWithAttendance_groups_group(
      this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    DateTime? photoUpdatedAt,
    String? blurhash,
    Fragment_FullPersonDataWithAttendance_groups_group_attendanceHistoryAggregate?
        attendanceHistoryAggregate,
  }) =>
      _res;

  CopyWith_Fragment_FullPersonDataWithAttendance_groups_group_attendanceHistoryAggregate<
          TRes>
      get attendanceHistoryAggregate =>
          CopyWith_Fragment_FullPersonDataWithAttendance_groups_group_attendanceHistoryAggregate
              .stub(_res);
}

class Fragment_FullPersonDataWithAttendance_job
    implements Fragment_FullPersonData_job {
  Fragment_FullPersonDataWithAttendance_job({
    required this.id,
    required this.name,
    this.$__typename = 'Jobs',
  });

  factory Fragment_FullPersonDataWithAttendance_job.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Fragment_FullPersonDataWithAttendance_job(
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
    if (!(other is Fragment_FullPersonDataWithAttendance_job) ||
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

extension UtilityExtension_Fragment_FullPersonDataWithAttendance_job
    on Fragment_FullPersonDataWithAttendance_job {
  CopyWith_Fragment_FullPersonDataWithAttendance_job<
          Fragment_FullPersonDataWithAttendance_job>
      get copyWith => CopyWith_Fragment_FullPersonDataWithAttendance_job(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Fragment_FullPersonDataWithAttendance_job<TRes> {
  factory CopyWith_Fragment_FullPersonDataWithAttendance_job(
    Fragment_FullPersonDataWithAttendance_job instance,
    TRes Function(Fragment_FullPersonDataWithAttendance_job) then,
  ) = _CopyWithImpl_Fragment_FullPersonDataWithAttendance_job;

  factory CopyWith_Fragment_FullPersonDataWithAttendance_job.stub(TRes res) =
      _CopyWithStubImpl_Fragment_FullPersonDataWithAttendance_job;

  TRes call({
    UuidValue? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl_Fragment_FullPersonDataWithAttendance_job<TRes>
    implements CopyWith_Fragment_FullPersonDataWithAttendance_job<TRes> {
  _CopyWithImpl_Fragment_FullPersonDataWithAttendance_job(
    this._instance,
    this._then,
  );

  final Fragment_FullPersonDataWithAttendance_job _instance;

  final TRes Function(Fragment_FullPersonDataWithAttendance_job) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment_FullPersonDataWithAttendance_job(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Fragment_FullPersonDataWithAttendance_job<TRes>
    implements CopyWith_Fragment_FullPersonDataWithAttendance_job<TRes> {
  _CopyWithStubImpl_Fragment_FullPersonDataWithAttendance_job(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Fragment_FullPersonDataWithAttendance_personType
    implements Fragment_FullPersonData_personType {
  Fragment_FullPersonDataWithAttendance_personType({
    required this.id,
    required this.name,
    this.$__typename = 'PersonTypes',
  });

  factory Fragment_FullPersonDataWithAttendance_personType.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Fragment_FullPersonDataWithAttendance_personType(
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
    if (!(other is Fragment_FullPersonDataWithAttendance_personType) ||
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

extension UtilityExtension_Fragment_FullPersonDataWithAttendance_personType
    on Fragment_FullPersonDataWithAttendance_personType {
  CopyWith_Fragment_FullPersonDataWithAttendance_personType<
          Fragment_FullPersonDataWithAttendance_personType>
      get copyWith => CopyWith_Fragment_FullPersonDataWithAttendance_personType(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Fragment_FullPersonDataWithAttendance_personType<TRes> {
  factory CopyWith_Fragment_FullPersonDataWithAttendance_personType(
    Fragment_FullPersonDataWithAttendance_personType instance,
    TRes Function(Fragment_FullPersonDataWithAttendance_personType) then,
  ) = _CopyWithImpl_Fragment_FullPersonDataWithAttendance_personType;

  factory CopyWith_Fragment_FullPersonDataWithAttendance_personType.stub(
          TRes res) =
      _CopyWithStubImpl_Fragment_FullPersonDataWithAttendance_personType;

  TRes call({
    UuidValue? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl_Fragment_FullPersonDataWithAttendance_personType<TRes>
    implements CopyWith_Fragment_FullPersonDataWithAttendance_personType<TRes> {
  _CopyWithImpl_Fragment_FullPersonDataWithAttendance_personType(
    this._instance,
    this._then,
  );

  final Fragment_FullPersonDataWithAttendance_personType _instance;

  final TRes Function(Fragment_FullPersonDataWithAttendance_personType) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment_FullPersonDataWithAttendance_personType(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Fragment_FullPersonDataWithAttendance_personType<TRes>
    implements CopyWith_Fragment_FullPersonDataWithAttendance_personType<TRes> {
  _CopyWithStubImpl_Fragment_FullPersonDataWithAttendance_personType(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Fragment_FullPersonDataWithAttendance_qualification
    implements Fragment_FullPersonData_qualification {
  Fragment_FullPersonDataWithAttendance_qualification({
    required this.id,
    required this.name,
    this.$__typename = 'Qualifications',
  });

  factory Fragment_FullPersonDataWithAttendance_qualification.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Fragment_FullPersonDataWithAttendance_qualification(
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
    if (!(other is Fragment_FullPersonDataWithAttendance_qualification) ||
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

extension UtilityExtension_Fragment_FullPersonDataWithAttendance_qualification
    on Fragment_FullPersonDataWithAttendance_qualification {
  CopyWith_Fragment_FullPersonDataWithAttendance_qualification<
          Fragment_FullPersonDataWithAttendance_qualification>
      get copyWith =>
          CopyWith_Fragment_FullPersonDataWithAttendance_qualification(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Fragment_FullPersonDataWithAttendance_qualification<
    TRes> {
  factory CopyWith_Fragment_FullPersonDataWithAttendance_qualification(
    Fragment_FullPersonDataWithAttendance_qualification instance,
    TRes Function(Fragment_FullPersonDataWithAttendance_qualification) then,
  ) = _CopyWithImpl_Fragment_FullPersonDataWithAttendance_qualification;

  factory CopyWith_Fragment_FullPersonDataWithAttendance_qualification.stub(
          TRes res) =
      _CopyWithStubImpl_Fragment_FullPersonDataWithAttendance_qualification;

  TRes call({
    UuidValue? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl_Fragment_FullPersonDataWithAttendance_qualification<TRes>
    implements
        CopyWith_Fragment_FullPersonDataWithAttendance_qualification<TRes> {
  _CopyWithImpl_Fragment_FullPersonDataWithAttendance_qualification(
    this._instance,
    this._then,
  );

  final Fragment_FullPersonDataWithAttendance_qualification _instance;

  final TRes Function(Fragment_FullPersonDataWithAttendance_qualification)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment_FullPersonDataWithAttendance_qualification(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Fragment_FullPersonDataWithAttendance_qualification<
        TRes>
    implements
        CopyWith_Fragment_FullPersonDataWithAttendance_qualification<TRes> {
  _CopyWithStubImpl_Fragment_FullPersonDataWithAttendance_qualification(
      this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Fragment_FullPersonDataWithAttendance_school
    implements Fragment_FullPersonData_school {
  Fragment_FullPersonDataWithAttendance_school({
    required this.id,
    required this.name,
    this.$__typename = 'Schools',
  });

  factory Fragment_FullPersonDataWithAttendance_school.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Fragment_FullPersonDataWithAttendance_school(
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
    if (!(other is Fragment_FullPersonDataWithAttendance_school) ||
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

extension UtilityExtension_Fragment_FullPersonDataWithAttendance_school
    on Fragment_FullPersonDataWithAttendance_school {
  CopyWith_Fragment_FullPersonDataWithAttendance_school<
          Fragment_FullPersonDataWithAttendance_school>
      get copyWith => CopyWith_Fragment_FullPersonDataWithAttendance_school(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Fragment_FullPersonDataWithAttendance_school<TRes> {
  factory CopyWith_Fragment_FullPersonDataWithAttendance_school(
    Fragment_FullPersonDataWithAttendance_school instance,
    TRes Function(Fragment_FullPersonDataWithAttendance_school) then,
  ) = _CopyWithImpl_Fragment_FullPersonDataWithAttendance_school;

  factory CopyWith_Fragment_FullPersonDataWithAttendance_school.stub(TRes res) =
      _CopyWithStubImpl_Fragment_FullPersonDataWithAttendance_school;

  TRes call({
    UuidValue? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl_Fragment_FullPersonDataWithAttendance_school<TRes>
    implements CopyWith_Fragment_FullPersonDataWithAttendance_school<TRes> {
  _CopyWithImpl_Fragment_FullPersonDataWithAttendance_school(
    this._instance,
    this._then,
  );

  final Fragment_FullPersonDataWithAttendance_school _instance;

  final TRes Function(Fragment_FullPersonDataWithAttendance_school) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment_FullPersonDataWithAttendance_school(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Fragment_FullPersonDataWithAttendance_school<TRes>
    implements CopyWith_Fragment_FullPersonDataWithAttendance_school<TRes> {
  _CopyWithStubImpl_Fragment_FullPersonDataWithAttendance_school(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Fragment_FullPersonDataWithAttendance_services
    implements Fragment_FullPersonData_services {
  Fragment_FullPersonDataWithAttendance_services({
    required this.service,
    this.$__typename = 'PersonsServices',
  });

  factory Fragment_FullPersonDataWithAttendance_services.fromJson(
      Map<String, dynamic> json) {
    final l$service = json['service'];
    final l$$__typename = json['__typename'];
    return Fragment_FullPersonDataWithAttendance_services(
      service: Fragment_FullPersonDataWithAttendance_services_service.fromJson(
          (l$service as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_FullPersonDataWithAttendance_services_service service;

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
    return Object.hashAll([
      l$service,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment_FullPersonDataWithAttendance_services) ||
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

extension UtilityExtension_Fragment_FullPersonDataWithAttendance_services
    on Fragment_FullPersonDataWithAttendance_services {
  CopyWith_Fragment_FullPersonDataWithAttendance_services<
          Fragment_FullPersonDataWithAttendance_services>
      get copyWith => CopyWith_Fragment_FullPersonDataWithAttendance_services(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Fragment_FullPersonDataWithAttendance_services<TRes> {
  factory CopyWith_Fragment_FullPersonDataWithAttendance_services(
    Fragment_FullPersonDataWithAttendance_services instance,
    TRes Function(Fragment_FullPersonDataWithAttendance_services) then,
  ) = _CopyWithImpl_Fragment_FullPersonDataWithAttendance_services;

  factory CopyWith_Fragment_FullPersonDataWithAttendance_services.stub(
          TRes res) =
      _CopyWithStubImpl_Fragment_FullPersonDataWithAttendance_services;

  TRes call({
    Fragment_FullPersonDataWithAttendance_services_service? service,
    String? $__typename,
  });
  CopyWith_Fragment_FullPersonDataWithAttendance_services_service<TRes>
      get service;
}

class _CopyWithImpl_Fragment_FullPersonDataWithAttendance_services<TRes>
    implements CopyWith_Fragment_FullPersonDataWithAttendance_services<TRes> {
  _CopyWithImpl_Fragment_FullPersonDataWithAttendance_services(
    this._instance,
    this._then,
  );

  final Fragment_FullPersonDataWithAttendance_services _instance;

  final TRes Function(Fragment_FullPersonDataWithAttendance_services) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? service = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment_FullPersonDataWithAttendance_services(
        service: service == _undefined || service == null
            ? _instance.service
            : (service
                as Fragment_FullPersonDataWithAttendance_services_service),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith_Fragment_FullPersonDataWithAttendance_services_service<TRes>
      get service {
    final local$service = _instance.service;
    return CopyWith_Fragment_FullPersonDataWithAttendance_services_service(
        local$service, (e) => call(service: e));
  }
}

class _CopyWithStubImpl_Fragment_FullPersonDataWithAttendance_services<TRes>
    implements CopyWith_Fragment_FullPersonDataWithAttendance_services<TRes> {
  _CopyWithStubImpl_Fragment_FullPersonDataWithAttendance_services(this._res);

  TRes _res;

  call({
    Fragment_FullPersonDataWithAttendance_services_service? service,
    String? $__typename,
  }) =>
      _res;

  CopyWith_Fragment_FullPersonDataWithAttendance_services_service<TRes>
      get service =>
          CopyWith_Fragment_FullPersonDataWithAttendance_services_service.stub(
              _res);
}

class Fragment_FullPersonDataWithAttendance_services_service
    implements Fragment_ServiceWithStudyYears, Fragment_ServiceNoPhoto {
  Fragment_FullPersonDataWithAttendance_services_service({
    required this.id,
    required this.name,
    this.color,
    this.$__typename = 'Services',
    this.studyYearFrom,
    this.studyYearTo,
    this.photoUpdatedAt,
    this.blurhash,
    required this.attendanceHistoryAggregate,
  });

  factory Fragment_FullPersonDataWithAttendance_services_service.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    final l$studyYearFrom = json['studyYearFrom'];
    final l$studyYearTo = json['studyYearTo'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$blurhash = json['blurhash'];
    final l$attendanceHistoryAggregate = json['attendanceHistoryAggregate'];
    return Fragment_FullPersonDataWithAttendance_services_service(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      $__typename: (l$$__typename as String),
      studyYearFrom: l$studyYearFrom == null
          ? null
          : Fragment_FullPersonDataWithAttendance_services_service_studyYearFrom
              .fromJson((l$studyYearFrom as Map<String, dynamic>)),
      studyYearTo: l$studyYearTo == null
          ? null
          : Fragment_FullPersonDataWithAttendance_services_service_studyYearTo
              .fromJson((l$studyYearTo as Map<String, dynamic>)),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
      blurhash: (l$blurhash as String?),
      attendanceHistoryAggregate:
          Fragment_FullPersonDataWithAttendance_services_service_attendanceHistoryAggregate
              .fromJson((l$attendanceHistoryAggregate as Map<String, dynamic>)),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final String $__typename;

  final Fragment_FullPersonDataWithAttendance_services_service_studyYearFrom?
      studyYearFrom;

  final Fragment_FullPersonDataWithAttendance_services_service_studyYearTo?
      studyYearTo;

  final DateTime? photoUpdatedAt;

  final String? blurhash;

  final Fragment_FullPersonDataWithAttendance_services_service_attendanceHistoryAggregate
      attendanceHistoryAggregate;

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
    final l$studyYearFrom = studyYearFrom;
    _resultData['studyYearFrom'] = l$studyYearFrom?.toJson();
    final l$studyYearTo = studyYearTo;
    _resultData['studyYearTo'] = l$studyYearTo?.toJson();
    final l$photoUpdatedAt = photoUpdatedAt;
    _resultData['photoUpdatedAt'] =
        l$photoUpdatedAt == null ? null : tstzToString(l$photoUpdatedAt);
    final l$blurhash = blurhash;
    _resultData['blurhash'] = l$blurhash;
    final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
    _resultData['attendanceHistoryAggregate'] =
        l$attendanceHistoryAggregate.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$$__typename = $__typename;
    final l$studyYearFrom = studyYearFrom;
    final l$studyYearTo = studyYearTo;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$blurhash = blurhash;
    final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$$__typename,
      l$studyYearFrom,
      l$studyYearTo,
      l$photoUpdatedAt,
      l$blurhash,
      l$attendanceHistoryAggregate,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment_FullPersonDataWithAttendance_services_service) ||
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
    final l$studyYearFrom = studyYearFrom;
    final lOther$studyYearFrom = other.studyYearFrom;
    if (l$studyYearFrom != lOther$studyYearFrom) {
      return false;
    }
    final l$studyYearTo = studyYearTo;
    final lOther$studyYearTo = other.studyYearTo;
    if (l$studyYearTo != lOther$studyYearTo) {
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
    final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
    final lOther$attendanceHistoryAggregate = other.attendanceHistoryAggregate;
    if (l$attendanceHistoryAggregate != lOther$attendanceHistoryAggregate) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Fragment_FullPersonDataWithAttendance_services_service
    on Fragment_FullPersonDataWithAttendance_services_service {
  CopyWith_Fragment_FullPersonDataWithAttendance_services_service<
          Fragment_FullPersonDataWithAttendance_services_service>
      get copyWith =>
          CopyWith_Fragment_FullPersonDataWithAttendance_services_service(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Fragment_FullPersonDataWithAttendance_services_service<
    TRes> {
  factory CopyWith_Fragment_FullPersonDataWithAttendance_services_service(
    Fragment_FullPersonDataWithAttendance_services_service instance,
    TRes Function(Fragment_FullPersonDataWithAttendance_services_service) then,
  ) = _CopyWithImpl_Fragment_FullPersonDataWithAttendance_services_service;

  factory CopyWith_Fragment_FullPersonDataWithAttendance_services_service.stub(
          TRes res) =
      _CopyWithStubImpl_Fragment_FullPersonDataWithAttendance_services_service;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    Fragment_FullPersonDataWithAttendance_services_service_studyYearFrom?
        studyYearFrom,
    Fragment_FullPersonDataWithAttendance_services_service_studyYearTo?
        studyYearTo,
    DateTime? photoUpdatedAt,
    String? blurhash,
    Fragment_FullPersonDataWithAttendance_services_service_attendanceHistoryAggregate?
        attendanceHistoryAggregate,
  });
  CopyWith_Fragment_FullPersonDataWithAttendance_services_service_studyYearFrom<
      TRes> get studyYearFrom;
  CopyWith_Fragment_FullPersonDataWithAttendance_services_service_studyYearTo<
      TRes> get studyYearTo;
  CopyWith_Fragment_FullPersonDataWithAttendance_services_service_attendanceHistoryAggregate<
      TRes> get attendanceHistoryAggregate;
}

class _CopyWithImpl_Fragment_FullPersonDataWithAttendance_services_service<TRes>
    implements
        CopyWith_Fragment_FullPersonDataWithAttendance_services_service<TRes> {
  _CopyWithImpl_Fragment_FullPersonDataWithAttendance_services_service(
    this._instance,
    this._then,
  );

  final Fragment_FullPersonDataWithAttendance_services_service _instance;

  final TRes Function(Fragment_FullPersonDataWithAttendance_services_service)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
    Object? studyYearFrom = _undefined,
    Object? studyYearTo = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? blurhash = _undefined,
    Object? attendanceHistoryAggregate = _undefined,
  }) =>
      _then(Fragment_FullPersonDataWithAttendance_services_service(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        color: color == _undefined ? _instance.color : (color as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        studyYearFrom: studyYearFrom == _undefined
            ? _instance.studyYearFrom
            : (studyYearFrom
                as Fragment_FullPersonDataWithAttendance_services_service_studyYearFrom?),
        studyYearTo: studyYearTo == _undefined
            ? _instance.studyYearTo
            : (studyYearTo
                as Fragment_FullPersonDataWithAttendance_services_service_studyYearTo?),
        photoUpdatedAt: photoUpdatedAt == _undefined
            ? _instance.photoUpdatedAt
            : (photoUpdatedAt as DateTime?),
        blurhash:
            blurhash == _undefined ? _instance.blurhash : (blurhash as String?),
        attendanceHistoryAggregate: attendanceHistoryAggregate == _undefined ||
                attendanceHistoryAggregate == null
            ? _instance.attendanceHistoryAggregate
            : (attendanceHistoryAggregate
                as Fragment_FullPersonDataWithAttendance_services_service_attendanceHistoryAggregate),
      ));

  CopyWith_Fragment_FullPersonDataWithAttendance_services_service_studyYearFrom<
      TRes> get studyYearFrom {
    final local$studyYearFrom = _instance.studyYearFrom;
    return local$studyYearFrom == null
        ? CopyWith_Fragment_FullPersonDataWithAttendance_services_service_studyYearFrom
            .stub(_then(_instance))
        : CopyWith_Fragment_FullPersonDataWithAttendance_services_service_studyYearFrom(
            local$studyYearFrom, (e) => call(studyYearFrom: e));
  }

  CopyWith_Fragment_FullPersonDataWithAttendance_services_service_studyYearTo<
      TRes> get studyYearTo {
    final local$studyYearTo = _instance.studyYearTo;
    return local$studyYearTo == null
        ? CopyWith_Fragment_FullPersonDataWithAttendance_services_service_studyYearTo
            .stub(_then(_instance))
        : CopyWith_Fragment_FullPersonDataWithAttendance_services_service_studyYearTo(
            local$studyYearTo, (e) => call(studyYearTo: e));
  }

  CopyWith_Fragment_FullPersonDataWithAttendance_services_service_attendanceHistoryAggregate<
      TRes> get attendanceHistoryAggregate {
    final local$attendanceHistoryAggregate =
        _instance.attendanceHistoryAggregate;
    return CopyWith_Fragment_FullPersonDataWithAttendance_services_service_attendanceHistoryAggregate(
        local$attendanceHistoryAggregate,
        (e) => call(attendanceHistoryAggregate: e));
  }
}

class _CopyWithStubImpl_Fragment_FullPersonDataWithAttendance_services_service<
        TRes>
    implements
        CopyWith_Fragment_FullPersonDataWithAttendance_services_service<TRes> {
  _CopyWithStubImpl_Fragment_FullPersonDataWithAttendance_services_service(
      this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    Fragment_FullPersonDataWithAttendance_services_service_studyYearFrom?
        studyYearFrom,
    Fragment_FullPersonDataWithAttendance_services_service_studyYearTo?
        studyYearTo,
    DateTime? photoUpdatedAt,
    String? blurhash,
    Fragment_FullPersonDataWithAttendance_services_service_attendanceHistoryAggregate?
        attendanceHistoryAggregate,
  }) =>
      _res;

  CopyWith_Fragment_FullPersonDataWithAttendance_services_service_studyYearFrom<
          TRes>
      get studyYearFrom =>
          CopyWith_Fragment_FullPersonDataWithAttendance_services_service_studyYearFrom
              .stub(_res);

  CopyWith_Fragment_FullPersonDataWithAttendance_services_service_studyYearTo<
          TRes>
      get studyYearTo =>
          CopyWith_Fragment_FullPersonDataWithAttendance_services_service_studyYearTo
              .stub(_res);

  CopyWith_Fragment_FullPersonDataWithAttendance_services_service_attendanceHistoryAggregate<
          TRes>
      get attendanceHistoryAggregate =>
          CopyWith_Fragment_FullPersonDataWithAttendance_services_service_attendanceHistoryAggregate
              .stub(_res);
}

class Fragment_FullPersonDataWithAttendance_services_service_studyYearFrom
    implements Fragment_ServiceWithStudyYears_studyYearFrom {
  Fragment_FullPersonDataWithAttendance_services_service_studyYearFrom({
    required this.order,
    required this.name,
    this.$__typename = 'StudyYears',
  });

  factory Fragment_FullPersonDataWithAttendance_services_service_studyYearFrom.fromJson(
      Map<String, dynamic> json) {
    final l$order = json['order'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Fragment_FullPersonDataWithAttendance_services_service_studyYearFrom(
      order: (l$order as int),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final int order;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$order = order;
    _resultData['order'] = l$order;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$order = order;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$order,
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
            is Fragment_FullPersonDataWithAttendance_services_service_studyYearFrom) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$order = order;
    final lOther$order = other.order;
    if (l$order != lOther$order) {
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

extension UtilityExtension_Fragment_FullPersonDataWithAttendance_services_service_studyYearFrom
    on Fragment_FullPersonDataWithAttendance_services_service_studyYearFrom {
  CopyWith_Fragment_FullPersonDataWithAttendance_services_service_studyYearFrom<
          Fragment_FullPersonDataWithAttendance_services_service_studyYearFrom>
      get copyWith =>
          CopyWith_Fragment_FullPersonDataWithAttendance_services_service_studyYearFrom(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Fragment_FullPersonDataWithAttendance_services_service_studyYearFrom<
    TRes> {
  factory CopyWith_Fragment_FullPersonDataWithAttendance_services_service_studyYearFrom(
    Fragment_FullPersonDataWithAttendance_services_service_studyYearFrom
        instance,
    TRes Function(
            Fragment_FullPersonDataWithAttendance_services_service_studyYearFrom)
        then,
  ) = _CopyWithImpl_Fragment_FullPersonDataWithAttendance_services_service_studyYearFrom;

  factory CopyWith_Fragment_FullPersonDataWithAttendance_services_service_studyYearFrom.stub(
          TRes res) =
      _CopyWithStubImpl_Fragment_FullPersonDataWithAttendance_services_service_studyYearFrom;

  TRes call({
    int? order,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl_Fragment_FullPersonDataWithAttendance_services_service_studyYearFrom<
        TRes>
    implements
        CopyWith_Fragment_FullPersonDataWithAttendance_services_service_studyYearFrom<
            TRes> {
  _CopyWithImpl_Fragment_FullPersonDataWithAttendance_services_service_studyYearFrom(
    this._instance,
    this._then,
  );

  final Fragment_FullPersonDataWithAttendance_services_service_studyYearFrom
      _instance;

  final TRes Function(
          Fragment_FullPersonDataWithAttendance_services_service_studyYearFrom)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? order = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Fragment_FullPersonDataWithAttendance_services_service_studyYearFrom(
        order: order == _undefined || order == null
            ? _instance.order
            : (order as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Fragment_FullPersonDataWithAttendance_services_service_studyYearFrom<
        TRes>
    implements
        CopyWith_Fragment_FullPersonDataWithAttendance_services_service_studyYearFrom<
            TRes> {
  _CopyWithStubImpl_Fragment_FullPersonDataWithAttendance_services_service_studyYearFrom(
      this._res);

  TRes _res;

  call({
    int? order,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Fragment_FullPersonDataWithAttendance_services_service_studyYearTo
    implements Fragment_ServiceWithStudyYears_studyYearTo {
  Fragment_FullPersonDataWithAttendance_services_service_studyYearTo({
    required this.order,
    required this.name,
    this.$__typename = 'StudyYears',
  });

  factory Fragment_FullPersonDataWithAttendance_services_service_studyYearTo.fromJson(
      Map<String, dynamic> json) {
    final l$order = json['order'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Fragment_FullPersonDataWithAttendance_services_service_studyYearTo(
      order: (l$order as int),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final int order;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$order = order;
    _resultData['order'] = l$order;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$order = order;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$order,
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
            is Fragment_FullPersonDataWithAttendance_services_service_studyYearTo) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$order = order;
    final lOther$order = other.order;
    if (l$order != lOther$order) {
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

extension UtilityExtension_Fragment_FullPersonDataWithAttendance_services_service_studyYearTo
    on Fragment_FullPersonDataWithAttendance_services_service_studyYearTo {
  CopyWith_Fragment_FullPersonDataWithAttendance_services_service_studyYearTo<
          Fragment_FullPersonDataWithAttendance_services_service_studyYearTo>
      get copyWith =>
          CopyWith_Fragment_FullPersonDataWithAttendance_services_service_studyYearTo(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Fragment_FullPersonDataWithAttendance_services_service_studyYearTo<
    TRes> {
  factory CopyWith_Fragment_FullPersonDataWithAttendance_services_service_studyYearTo(
    Fragment_FullPersonDataWithAttendance_services_service_studyYearTo instance,
    TRes Function(
            Fragment_FullPersonDataWithAttendance_services_service_studyYearTo)
        then,
  ) = _CopyWithImpl_Fragment_FullPersonDataWithAttendance_services_service_studyYearTo;

  factory CopyWith_Fragment_FullPersonDataWithAttendance_services_service_studyYearTo.stub(
          TRes res) =
      _CopyWithStubImpl_Fragment_FullPersonDataWithAttendance_services_service_studyYearTo;

  TRes call({
    int? order,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl_Fragment_FullPersonDataWithAttendance_services_service_studyYearTo<
        TRes>
    implements
        CopyWith_Fragment_FullPersonDataWithAttendance_services_service_studyYearTo<
            TRes> {
  _CopyWithImpl_Fragment_FullPersonDataWithAttendance_services_service_studyYearTo(
    this._instance,
    this._then,
  );

  final Fragment_FullPersonDataWithAttendance_services_service_studyYearTo
      _instance;

  final TRes Function(
      Fragment_FullPersonDataWithAttendance_services_service_studyYearTo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? order = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment_FullPersonDataWithAttendance_services_service_studyYearTo(
        order: order == _undefined || order == null
            ? _instance.order
            : (order as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Fragment_FullPersonDataWithAttendance_services_service_studyYearTo<
        TRes>
    implements
        CopyWith_Fragment_FullPersonDataWithAttendance_services_service_studyYearTo<
            TRes> {
  _CopyWithStubImpl_Fragment_FullPersonDataWithAttendance_services_service_studyYearTo(
      this._res);

  TRes _res;

  call({
    int? order,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Fragment_FullPersonDataWithAttendance_shammasLevel
    implements Fragment_FullPersonData_shammasLevel {
  Fragment_FullPersonDataWithAttendance_shammasLevel({
    required this.id,
    required this.name,
    required this.order,
    this.$__typename = 'ShammasLevels',
  });

  factory Fragment_FullPersonDataWithAttendance_shammasLevel.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$order = json['order'];
    final l$$__typename = json['__typename'];
    return Fragment_FullPersonDataWithAttendance_shammasLevel(
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
    return Object.hashAll([
      l$id,
      l$name,
      l$order,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment_FullPersonDataWithAttendance_shammasLevel) ||
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

extension UtilityExtension_Fragment_FullPersonDataWithAttendance_shammasLevel
    on Fragment_FullPersonDataWithAttendance_shammasLevel {
  CopyWith_Fragment_FullPersonDataWithAttendance_shammasLevel<
          Fragment_FullPersonDataWithAttendance_shammasLevel>
      get copyWith =>
          CopyWith_Fragment_FullPersonDataWithAttendance_shammasLevel(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Fragment_FullPersonDataWithAttendance_shammasLevel<
    TRes> {
  factory CopyWith_Fragment_FullPersonDataWithAttendance_shammasLevel(
    Fragment_FullPersonDataWithAttendance_shammasLevel instance,
    TRes Function(Fragment_FullPersonDataWithAttendance_shammasLevel) then,
  ) = _CopyWithImpl_Fragment_FullPersonDataWithAttendance_shammasLevel;

  factory CopyWith_Fragment_FullPersonDataWithAttendance_shammasLevel.stub(
          TRes res) =
      _CopyWithStubImpl_Fragment_FullPersonDataWithAttendance_shammasLevel;

  TRes call({
    UuidValue? id,
    String? name,
    int? order,
    String? $__typename,
  });
}

class _CopyWithImpl_Fragment_FullPersonDataWithAttendance_shammasLevel<TRes>
    implements
        CopyWith_Fragment_FullPersonDataWithAttendance_shammasLevel<TRes> {
  _CopyWithImpl_Fragment_FullPersonDataWithAttendance_shammasLevel(
    this._instance,
    this._then,
  );

  final Fragment_FullPersonDataWithAttendance_shammasLevel _instance;

  final TRes Function(Fragment_FullPersonDataWithAttendance_shammasLevel) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? order = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment_FullPersonDataWithAttendance_shammasLevel(
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
      ));
}

class _CopyWithStubImpl_Fragment_FullPersonDataWithAttendance_shammasLevel<TRes>
    implements
        CopyWith_Fragment_FullPersonDataWithAttendance_shammasLevel<TRes> {
  _CopyWithStubImpl_Fragment_FullPersonDataWithAttendance_shammasLevel(
      this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? order,
    String? $__typename,
  }) =>
      _res;
}

class Fragment_FullPersonDataWithAttendance_state
    implements Fragment_FullPersonData_state {
  Fragment_FullPersonDataWithAttendance_state({
    required this.id,
    required this.color,
    required this.name,
    this.$__typename = 'PersonStates',
  });

  factory Fragment_FullPersonDataWithAttendance_state.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$color = json['color'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Fragment_FullPersonDataWithAttendance_state(
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
    return Object.hashAll([
      l$id,
      l$color,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment_FullPersonDataWithAttendance_state) ||
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

extension UtilityExtension_Fragment_FullPersonDataWithAttendance_state
    on Fragment_FullPersonDataWithAttendance_state {
  CopyWith_Fragment_FullPersonDataWithAttendance_state<
          Fragment_FullPersonDataWithAttendance_state>
      get copyWith => CopyWith_Fragment_FullPersonDataWithAttendance_state(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Fragment_FullPersonDataWithAttendance_state<TRes> {
  factory CopyWith_Fragment_FullPersonDataWithAttendance_state(
    Fragment_FullPersonDataWithAttendance_state instance,
    TRes Function(Fragment_FullPersonDataWithAttendance_state) then,
  ) = _CopyWithImpl_Fragment_FullPersonDataWithAttendance_state;

  factory CopyWith_Fragment_FullPersonDataWithAttendance_state.stub(TRes res) =
      _CopyWithStubImpl_Fragment_FullPersonDataWithAttendance_state;

  TRes call({
    UuidValue? id,
    int? color,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl_Fragment_FullPersonDataWithAttendance_state<TRes>
    implements CopyWith_Fragment_FullPersonDataWithAttendance_state<TRes> {
  _CopyWithImpl_Fragment_FullPersonDataWithAttendance_state(
    this._instance,
    this._then,
  );

  final Fragment_FullPersonDataWithAttendance_state _instance;

  final TRes Function(Fragment_FullPersonDataWithAttendance_state) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? color = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment_FullPersonDataWithAttendance_state(
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
      ));
}

class _CopyWithStubImpl_Fragment_FullPersonDataWithAttendance_state<TRes>
    implements CopyWith_Fragment_FullPersonDataWithAttendance_state<TRes> {
  _CopyWithStubImpl_Fragment_FullPersonDataWithAttendance_state(this._res);

  TRes _res;

  call({
    UuidValue? id,
    int? color,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Fragment_FullPersonDataWithAttendance_studyYear
    implements Fragment_FullPersonData_studyYear {
  Fragment_FullPersonDataWithAttendance_studyYear({
    required this.name,
    required this.order,
    this.$__typename = 'StudyYears',
  });

  factory Fragment_FullPersonDataWithAttendance_studyYear.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$order = json['order'];
    final l$$__typename = json['__typename'];
    return Fragment_FullPersonDataWithAttendance_studyYear(
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
    return Object.hashAll([
      l$name,
      l$order,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment_FullPersonDataWithAttendance_studyYear) ||
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

extension UtilityExtension_Fragment_FullPersonDataWithAttendance_studyYear
    on Fragment_FullPersonDataWithAttendance_studyYear {
  CopyWith_Fragment_FullPersonDataWithAttendance_studyYear<
          Fragment_FullPersonDataWithAttendance_studyYear>
      get copyWith => CopyWith_Fragment_FullPersonDataWithAttendance_studyYear(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Fragment_FullPersonDataWithAttendance_studyYear<TRes> {
  factory CopyWith_Fragment_FullPersonDataWithAttendance_studyYear(
    Fragment_FullPersonDataWithAttendance_studyYear instance,
    TRes Function(Fragment_FullPersonDataWithAttendance_studyYear) then,
  ) = _CopyWithImpl_Fragment_FullPersonDataWithAttendance_studyYear;

  factory CopyWith_Fragment_FullPersonDataWithAttendance_studyYear.stub(
          TRes res) =
      _CopyWithStubImpl_Fragment_FullPersonDataWithAttendance_studyYear;

  TRes call({
    String? name,
    int? order,
    String? $__typename,
  });
}

class _CopyWithImpl_Fragment_FullPersonDataWithAttendance_studyYear<TRes>
    implements CopyWith_Fragment_FullPersonDataWithAttendance_studyYear<TRes> {
  _CopyWithImpl_Fragment_FullPersonDataWithAttendance_studyYear(
    this._instance,
    this._then,
  );

  final Fragment_FullPersonDataWithAttendance_studyYear _instance;

  final TRes Function(Fragment_FullPersonDataWithAttendance_studyYear) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? order = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment_FullPersonDataWithAttendance_studyYear(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        order: order == _undefined || order == null
            ? _instance.order
            : (order as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Fragment_FullPersonDataWithAttendance_studyYear<TRes>
    implements CopyWith_Fragment_FullPersonDataWithAttendance_studyYear<TRes> {
  _CopyWithStubImpl_Fragment_FullPersonDataWithAttendance_studyYear(this._res);

  TRes _res;

  call({
    String? name,
    int? order,
    String? $__typename,
  }) =>
      _res;
}

class Fragment_FullPersonDataWithAttendance_hobbies
    implements Fragment_FullPersonData_hobbies {
  Fragment_FullPersonDataWithAttendance_hobbies({
    required this.hobby,
    this.$__typename = 'PersonsHobbies',
  });

  factory Fragment_FullPersonDataWithAttendance_hobbies.fromJson(
      Map<String, dynamic> json) {
    final l$hobby = json['hobby'];
    final l$$__typename = json['__typename'];
    return Fragment_FullPersonDataWithAttendance_hobbies(
      hobby: Fragment_FullPersonDataWithAttendance_hobbies_hobby.fromJson(
          (l$hobby as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_FullPersonDataWithAttendance_hobbies_hobby hobby;

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
    return Object.hashAll([
      l$hobby,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment_FullPersonDataWithAttendance_hobbies) ||
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

extension UtilityExtension_Fragment_FullPersonDataWithAttendance_hobbies
    on Fragment_FullPersonDataWithAttendance_hobbies {
  CopyWith_Fragment_FullPersonDataWithAttendance_hobbies<
          Fragment_FullPersonDataWithAttendance_hobbies>
      get copyWith => CopyWith_Fragment_FullPersonDataWithAttendance_hobbies(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Fragment_FullPersonDataWithAttendance_hobbies<TRes> {
  factory CopyWith_Fragment_FullPersonDataWithAttendance_hobbies(
    Fragment_FullPersonDataWithAttendance_hobbies instance,
    TRes Function(Fragment_FullPersonDataWithAttendance_hobbies) then,
  ) = _CopyWithImpl_Fragment_FullPersonDataWithAttendance_hobbies;

  factory CopyWith_Fragment_FullPersonDataWithAttendance_hobbies.stub(
          TRes res) =
      _CopyWithStubImpl_Fragment_FullPersonDataWithAttendance_hobbies;

  TRes call({
    Fragment_FullPersonDataWithAttendance_hobbies_hobby? hobby,
    String? $__typename,
  });
  CopyWith_Fragment_FullPersonDataWithAttendance_hobbies_hobby<TRes> get hobby;
}

class _CopyWithImpl_Fragment_FullPersonDataWithAttendance_hobbies<TRes>
    implements CopyWith_Fragment_FullPersonDataWithAttendance_hobbies<TRes> {
  _CopyWithImpl_Fragment_FullPersonDataWithAttendance_hobbies(
    this._instance,
    this._then,
  );

  final Fragment_FullPersonDataWithAttendance_hobbies _instance;

  final TRes Function(Fragment_FullPersonDataWithAttendance_hobbies) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hobby = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment_FullPersonDataWithAttendance_hobbies(
        hobby: hobby == _undefined || hobby == null
            ? _instance.hobby
            : (hobby as Fragment_FullPersonDataWithAttendance_hobbies_hobby),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith_Fragment_FullPersonDataWithAttendance_hobbies_hobby<TRes> get hobby {
    final local$hobby = _instance.hobby;
    return CopyWith_Fragment_FullPersonDataWithAttendance_hobbies_hobby(
        local$hobby, (e) => call(hobby: e));
  }
}

class _CopyWithStubImpl_Fragment_FullPersonDataWithAttendance_hobbies<TRes>
    implements CopyWith_Fragment_FullPersonDataWithAttendance_hobbies<TRes> {
  _CopyWithStubImpl_Fragment_FullPersonDataWithAttendance_hobbies(this._res);

  TRes _res;

  call({
    Fragment_FullPersonDataWithAttendance_hobbies_hobby? hobby,
    String? $__typename,
  }) =>
      _res;

  CopyWith_Fragment_FullPersonDataWithAttendance_hobbies_hobby<TRes>
      get hobby =>
          CopyWith_Fragment_FullPersonDataWithAttendance_hobbies_hobby.stub(
              _res);
}

class Fragment_FullPersonDataWithAttendance_hobbies_hobby
    implements Fragment_FullPersonData_hobbies_hobby {
  Fragment_FullPersonDataWithAttendance_hobbies_hobby({
    required this.id,
    required this.name,
    this.color,
    this.$__typename = 'Hobbies',
  });

  factory Fragment_FullPersonDataWithAttendance_hobbies_hobby.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    return Fragment_FullPersonDataWithAttendance_hobbies_hobby(
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
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment_FullPersonDataWithAttendance_hobbies_hobby) ||
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

extension UtilityExtension_Fragment_FullPersonDataWithAttendance_hobbies_hobby
    on Fragment_FullPersonDataWithAttendance_hobbies_hobby {
  CopyWith_Fragment_FullPersonDataWithAttendance_hobbies_hobby<
          Fragment_FullPersonDataWithAttendance_hobbies_hobby>
      get copyWith =>
          CopyWith_Fragment_FullPersonDataWithAttendance_hobbies_hobby(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Fragment_FullPersonDataWithAttendance_hobbies_hobby<
    TRes> {
  factory CopyWith_Fragment_FullPersonDataWithAttendance_hobbies_hobby(
    Fragment_FullPersonDataWithAttendance_hobbies_hobby instance,
    TRes Function(Fragment_FullPersonDataWithAttendance_hobbies_hobby) then,
  ) = _CopyWithImpl_Fragment_FullPersonDataWithAttendance_hobbies_hobby;

  factory CopyWith_Fragment_FullPersonDataWithAttendance_hobbies_hobby.stub(
          TRes res) =
      _CopyWithStubImpl_Fragment_FullPersonDataWithAttendance_hobbies_hobby;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
  });
}

class _CopyWithImpl_Fragment_FullPersonDataWithAttendance_hobbies_hobby<TRes>
    implements
        CopyWith_Fragment_FullPersonDataWithAttendance_hobbies_hobby<TRes> {
  _CopyWithImpl_Fragment_FullPersonDataWithAttendance_hobbies_hobby(
    this._instance,
    this._then,
  );

  final Fragment_FullPersonDataWithAttendance_hobbies_hobby _instance;

  final TRes Function(Fragment_FullPersonDataWithAttendance_hobbies_hobby)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment_FullPersonDataWithAttendance_hobbies_hobby(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        color: color == _undefined ? _instance.color : (color as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Fragment_FullPersonDataWithAttendance_hobbies_hobby<
        TRes>
    implements
        CopyWith_Fragment_FullPersonDataWithAttendance_hobbies_hobby<TRes> {
  _CopyWithStubImpl_Fragment_FullPersonDataWithAttendance_hobbies_hobby(
      this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
  }) =>
      _res;
}

class Fragment_FullPersonDataWithAttendance_tags
    implements Fragment_FullPersonData_tags {
  Fragment_FullPersonDataWithAttendance_tags({
    required this.tag,
    this.$__typename = 'PersonsTags',
  });

  factory Fragment_FullPersonDataWithAttendance_tags.fromJson(
      Map<String, dynamic> json) {
    final l$tag = json['tag'];
    final l$$__typename = json['__typename'];
    return Fragment_FullPersonDataWithAttendance_tags(
      tag: Fragment_FullPersonDataWithAttendance_tags_tag.fromJson(
          (l$tag as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_FullPersonDataWithAttendance_tags_tag tag;

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
    return Object.hashAll([
      l$tag,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment_FullPersonDataWithAttendance_tags) ||
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

extension UtilityExtension_Fragment_FullPersonDataWithAttendance_tags
    on Fragment_FullPersonDataWithAttendance_tags {
  CopyWith_Fragment_FullPersonDataWithAttendance_tags<
          Fragment_FullPersonDataWithAttendance_tags>
      get copyWith => CopyWith_Fragment_FullPersonDataWithAttendance_tags(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Fragment_FullPersonDataWithAttendance_tags<TRes> {
  factory CopyWith_Fragment_FullPersonDataWithAttendance_tags(
    Fragment_FullPersonDataWithAttendance_tags instance,
    TRes Function(Fragment_FullPersonDataWithAttendance_tags) then,
  ) = _CopyWithImpl_Fragment_FullPersonDataWithAttendance_tags;

  factory CopyWith_Fragment_FullPersonDataWithAttendance_tags.stub(TRes res) =
      _CopyWithStubImpl_Fragment_FullPersonDataWithAttendance_tags;

  TRes call({
    Fragment_FullPersonDataWithAttendance_tags_tag? tag,
    String? $__typename,
  });
  CopyWith_Fragment_FullPersonDataWithAttendance_tags_tag<TRes> get tag;
}

class _CopyWithImpl_Fragment_FullPersonDataWithAttendance_tags<TRes>
    implements CopyWith_Fragment_FullPersonDataWithAttendance_tags<TRes> {
  _CopyWithImpl_Fragment_FullPersonDataWithAttendance_tags(
    this._instance,
    this._then,
  );

  final Fragment_FullPersonDataWithAttendance_tags _instance;

  final TRes Function(Fragment_FullPersonDataWithAttendance_tags) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? tag = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment_FullPersonDataWithAttendance_tags(
        tag: tag == _undefined || tag == null
            ? _instance.tag
            : (tag as Fragment_FullPersonDataWithAttendance_tags_tag),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith_Fragment_FullPersonDataWithAttendance_tags_tag<TRes> get tag {
    final local$tag = _instance.tag;
    return CopyWith_Fragment_FullPersonDataWithAttendance_tags_tag(
        local$tag, (e) => call(tag: e));
  }
}

class _CopyWithStubImpl_Fragment_FullPersonDataWithAttendance_tags<TRes>
    implements CopyWith_Fragment_FullPersonDataWithAttendance_tags<TRes> {
  _CopyWithStubImpl_Fragment_FullPersonDataWithAttendance_tags(this._res);

  TRes _res;

  call({
    Fragment_FullPersonDataWithAttendance_tags_tag? tag,
    String? $__typename,
  }) =>
      _res;

  CopyWith_Fragment_FullPersonDataWithAttendance_tags_tag<TRes> get tag =>
      CopyWith_Fragment_FullPersonDataWithAttendance_tags_tag.stub(_res);
}

class Fragment_FullPersonDataWithAttendance_tags_tag
    implements Fragment_FullPersonData_tags_tag {
  Fragment_FullPersonDataWithAttendance_tags_tag({
    required this.id,
    required this.name,
    this.color,
    this.$__typename = 'Tags',
  });

  factory Fragment_FullPersonDataWithAttendance_tags_tag.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    return Fragment_FullPersonDataWithAttendance_tags_tag(
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
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment_FullPersonDataWithAttendance_tags_tag) ||
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

extension UtilityExtension_Fragment_FullPersonDataWithAttendance_tags_tag
    on Fragment_FullPersonDataWithAttendance_tags_tag {
  CopyWith_Fragment_FullPersonDataWithAttendance_tags_tag<
          Fragment_FullPersonDataWithAttendance_tags_tag>
      get copyWith => CopyWith_Fragment_FullPersonDataWithAttendance_tags_tag(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Fragment_FullPersonDataWithAttendance_tags_tag<TRes> {
  factory CopyWith_Fragment_FullPersonDataWithAttendance_tags_tag(
    Fragment_FullPersonDataWithAttendance_tags_tag instance,
    TRes Function(Fragment_FullPersonDataWithAttendance_tags_tag) then,
  ) = _CopyWithImpl_Fragment_FullPersonDataWithAttendance_tags_tag;

  factory CopyWith_Fragment_FullPersonDataWithAttendance_tags_tag.stub(
          TRes res) =
      _CopyWithStubImpl_Fragment_FullPersonDataWithAttendance_tags_tag;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
  });
}

class _CopyWithImpl_Fragment_FullPersonDataWithAttendance_tags_tag<TRes>
    implements CopyWith_Fragment_FullPersonDataWithAttendance_tags_tag<TRes> {
  _CopyWithImpl_Fragment_FullPersonDataWithAttendance_tags_tag(
    this._instance,
    this._then,
  );

  final Fragment_FullPersonDataWithAttendance_tags_tag _instance;

  final TRes Function(Fragment_FullPersonDataWithAttendance_tags_tag) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment_FullPersonDataWithAttendance_tags_tag(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        color: color == _undefined ? _instance.color : (color as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Fragment_FullPersonDataWithAttendance_tags_tag<TRes>
    implements CopyWith_Fragment_FullPersonDataWithAttendance_tags_tag<TRes> {
  _CopyWithStubImpl_Fragment_FullPersonDataWithAttendance_tags_tag(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
  }) =>
      _res;
}

class Fragment_FullPersonDataWithAttendance_user
    implements Fragment_FullPersonData_user {
  Fragment_FullPersonDataWithAttendance_user({
    required this.uid,
    required this.name,
    required this.email,
    this.$__typename = 'AuthUsersData',
  });

  factory Fragment_FullPersonDataWithAttendance_user.fromJson(
      Map<String, dynamic> json) {
    final l$uid = json['uid'];
    final l$name = json['name'];
    final l$email = json['email'];
    final l$$__typename = json['__typename'];
    return Fragment_FullPersonDataWithAttendance_user(
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
    return Object.hashAll([
      l$uid,
      l$name,
      l$email,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment_FullPersonDataWithAttendance_user) ||
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

extension UtilityExtension_Fragment_FullPersonDataWithAttendance_user
    on Fragment_FullPersonDataWithAttendance_user {
  CopyWith_Fragment_FullPersonDataWithAttendance_user<
          Fragment_FullPersonDataWithAttendance_user>
      get copyWith => CopyWith_Fragment_FullPersonDataWithAttendance_user(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Fragment_FullPersonDataWithAttendance_user<TRes> {
  factory CopyWith_Fragment_FullPersonDataWithAttendance_user(
    Fragment_FullPersonDataWithAttendance_user instance,
    TRes Function(Fragment_FullPersonDataWithAttendance_user) then,
  ) = _CopyWithImpl_Fragment_FullPersonDataWithAttendance_user;

  factory CopyWith_Fragment_FullPersonDataWithAttendance_user.stub(TRes res) =
      _CopyWithStubImpl_Fragment_FullPersonDataWithAttendance_user;

  TRes call({
    UuidValue? uid,
    String? name,
    String? email,
    String? $__typename,
  });
}

class _CopyWithImpl_Fragment_FullPersonDataWithAttendance_user<TRes>
    implements CopyWith_Fragment_FullPersonDataWithAttendance_user<TRes> {
  _CopyWithImpl_Fragment_FullPersonDataWithAttendance_user(
    this._instance,
    this._then,
  );

  final Fragment_FullPersonDataWithAttendance_user _instance;

  final TRes Function(Fragment_FullPersonDataWithAttendance_user) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? uid = _undefined,
    Object? name = _undefined,
    Object? email = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment_FullPersonDataWithAttendance_user(
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
      ));
}

class _CopyWithStubImpl_Fragment_FullPersonDataWithAttendance_user<TRes>
    implements CopyWith_Fragment_FullPersonDataWithAttendance_user<TRes> {
  _CopyWithStubImpl_Fragment_FullPersonDataWithAttendance_user(this._res);

  TRes _res;

  call({
    UuidValue? uid,
    String? name,
    String? email,
    String? $__typename,
  }) =>
      _res;
}

class Fragment_FullPersonDataWithAttendance_classes_attendanceHistoryAggregate {
  Fragment_FullPersonDataWithAttendance_classes_attendanceHistoryAggregate({
    this.aggregate,
    this.$__typename = 'HistoryAttendanceHistoryAggregate',
  });

  factory Fragment_FullPersonDataWithAttendance_classes_attendanceHistoryAggregate.fromJson(
      Map<String, dynamic> json) {
    final l$aggregate = json['aggregate'];
    final l$$__typename = json['__typename'];
    return Fragment_FullPersonDataWithAttendance_classes_attendanceHistoryAggregate(
      aggregate: l$aggregate == null
          ? null
          : Fragment_FullPersonDataWithAttendance_classes_attendanceHistoryAggregate_aggregate
              .fromJson((l$aggregate as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_FullPersonDataWithAttendance_classes_attendanceHistoryAggregate_aggregate?
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
    return Object.hashAll([
      l$aggregate,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Fragment_FullPersonDataWithAttendance_classes_attendanceHistoryAggregate) ||
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

extension UtilityExtension_Fragment_FullPersonDataWithAttendance_classes_attendanceHistoryAggregate
    on Fragment_FullPersonDataWithAttendance_classes_attendanceHistoryAggregate {
  CopyWith_Fragment_FullPersonDataWithAttendance_classes_attendanceHistoryAggregate<
          Fragment_FullPersonDataWithAttendance_classes_attendanceHistoryAggregate>
      get copyWith =>
          CopyWith_Fragment_FullPersonDataWithAttendance_classes_attendanceHistoryAggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Fragment_FullPersonDataWithAttendance_classes_attendanceHistoryAggregate<
    TRes> {
  factory CopyWith_Fragment_FullPersonDataWithAttendance_classes_attendanceHistoryAggregate(
    Fragment_FullPersonDataWithAttendance_classes_attendanceHistoryAggregate
        instance,
    TRes Function(
            Fragment_FullPersonDataWithAttendance_classes_attendanceHistoryAggregate)
        then,
  ) = _CopyWithImpl_Fragment_FullPersonDataWithAttendance_classes_attendanceHistoryAggregate;

  factory CopyWith_Fragment_FullPersonDataWithAttendance_classes_attendanceHistoryAggregate.stub(
          TRes res) =
      _CopyWithStubImpl_Fragment_FullPersonDataWithAttendance_classes_attendanceHistoryAggregate;

  TRes call({
    Fragment_FullPersonDataWithAttendance_classes_attendanceHistoryAggregate_aggregate?
        aggregate,
    String? $__typename,
  });
  CopyWith_Fragment_FullPersonDataWithAttendance_classes_attendanceHistoryAggregate_aggregate<
      TRes> get aggregate;
}

class _CopyWithImpl_Fragment_FullPersonDataWithAttendance_classes_attendanceHistoryAggregate<
        TRes>
    implements
        CopyWith_Fragment_FullPersonDataWithAttendance_classes_attendanceHistoryAggregate<
            TRes> {
  _CopyWithImpl_Fragment_FullPersonDataWithAttendance_classes_attendanceHistoryAggregate(
    this._instance,
    this._then,
  );

  final Fragment_FullPersonDataWithAttendance_classes_attendanceHistoryAggregate
      _instance;

  final TRes Function(
          Fragment_FullPersonDataWithAttendance_classes_attendanceHistoryAggregate)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? aggregate = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Fragment_FullPersonDataWithAttendance_classes_attendanceHistoryAggregate(
        aggregate: aggregate == _undefined
            ? _instance.aggregate
            : (aggregate
                as Fragment_FullPersonDataWithAttendance_classes_attendanceHistoryAggregate_aggregate?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith_Fragment_FullPersonDataWithAttendance_classes_attendanceHistoryAggregate_aggregate<
      TRes> get aggregate {
    final local$aggregate = _instance.aggregate;
    return local$aggregate == null
        ? CopyWith_Fragment_FullPersonDataWithAttendance_classes_attendanceHistoryAggregate_aggregate
            .stub(_then(_instance))
        : CopyWith_Fragment_FullPersonDataWithAttendance_classes_attendanceHistoryAggregate_aggregate(
            local$aggregate, (e) => call(aggregate: e));
  }
}

class _CopyWithStubImpl_Fragment_FullPersonDataWithAttendance_classes_attendanceHistoryAggregate<
        TRes>
    implements
        CopyWith_Fragment_FullPersonDataWithAttendance_classes_attendanceHistoryAggregate<
            TRes> {
  _CopyWithStubImpl_Fragment_FullPersonDataWithAttendance_classes_attendanceHistoryAggregate(
      this._res);

  TRes _res;

  call({
    Fragment_FullPersonDataWithAttendance_classes_attendanceHistoryAggregate_aggregate?
        aggregate,
    String? $__typename,
  }) =>
      _res;

  CopyWith_Fragment_FullPersonDataWithAttendance_classes_attendanceHistoryAggregate_aggregate<
          TRes>
      get aggregate =>
          CopyWith_Fragment_FullPersonDataWithAttendance_classes_attendanceHistoryAggregate_aggregate
              .stub(_res);
}

class Fragment_FullPersonDataWithAttendance_classes_attendanceHistoryAggregate_aggregate {
  Fragment_FullPersonDataWithAttendance_classes_attendanceHistoryAggregate_aggregate({
    this.max,
    this.$__typename = 'HistoryAttendanceHistoryAggregateFields',
  });

  factory Fragment_FullPersonDataWithAttendance_classes_attendanceHistoryAggregate_aggregate.fromJson(
      Map<String, dynamic> json) {
    final l$max = json['max'];
    final l$$__typename = json['__typename'];
    return Fragment_FullPersonDataWithAttendance_classes_attendanceHistoryAggregate_aggregate(
      max: l$max == null
          ? null
          : Fragment_FullPersonDataWithAttendance_classes_attendanceHistoryAggregate_aggregate_max
              .fromJson((l$max as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_FullPersonDataWithAttendance_classes_attendanceHistoryAggregate_aggregate_max?
      max;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$max = max;
    _resultData['max'] = l$max?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$max = max;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$max,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Fragment_FullPersonDataWithAttendance_classes_attendanceHistoryAggregate_aggregate) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$max = max;
    final lOther$max = other.max;
    if (l$max != lOther$max) {
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

extension UtilityExtension_Fragment_FullPersonDataWithAttendance_classes_attendanceHistoryAggregate_aggregate
    on Fragment_FullPersonDataWithAttendance_classes_attendanceHistoryAggregate_aggregate {
  CopyWith_Fragment_FullPersonDataWithAttendance_classes_attendanceHistoryAggregate_aggregate<
          Fragment_FullPersonDataWithAttendance_classes_attendanceHistoryAggregate_aggregate>
      get copyWith =>
          CopyWith_Fragment_FullPersonDataWithAttendance_classes_attendanceHistoryAggregate_aggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Fragment_FullPersonDataWithAttendance_classes_attendanceHistoryAggregate_aggregate<
    TRes> {
  factory CopyWith_Fragment_FullPersonDataWithAttendance_classes_attendanceHistoryAggregate_aggregate(
    Fragment_FullPersonDataWithAttendance_classes_attendanceHistoryAggregate_aggregate
        instance,
    TRes Function(
            Fragment_FullPersonDataWithAttendance_classes_attendanceHistoryAggregate_aggregate)
        then,
  ) = _CopyWithImpl_Fragment_FullPersonDataWithAttendance_classes_attendanceHistoryAggregate_aggregate;

  factory CopyWith_Fragment_FullPersonDataWithAttendance_classes_attendanceHistoryAggregate_aggregate.stub(
          TRes res) =
      _CopyWithStubImpl_Fragment_FullPersonDataWithAttendance_classes_attendanceHistoryAggregate_aggregate;

  TRes call({
    Fragment_FullPersonDataWithAttendance_classes_attendanceHistoryAggregate_aggregate_max?
        max,
    String? $__typename,
  });
  CopyWith_Fragment_FullPersonDataWithAttendance_classes_attendanceHistoryAggregate_aggregate_max<
      TRes> get max;
}

class _CopyWithImpl_Fragment_FullPersonDataWithAttendance_classes_attendanceHistoryAggregate_aggregate<
        TRes>
    implements
        CopyWith_Fragment_FullPersonDataWithAttendance_classes_attendanceHistoryAggregate_aggregate<
            TRes> {
  _CopyWithImpl_Fragment_FullPersonDataWithAttendance_classes_attendanceHistoryAggregate_aggregate(
    this._instance,
    this._then,
  );

  final Fragment_FullPersonDataWithAttendance_classes_attendanceHistoryAggregate_aggregate
      _instance;

  final TRes Function(
          Fragment_FullPersonDataWithAttendance_classes_attendanceHistoryAggregate_aggregate)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? max = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Fragment_FullPersonDataWithAttendance_classes_attendanceHistoryAggregate_aggregate(
        max: max == _undefined
            ? _instance.max
            : (max
                as Fragment_FullPersonDataWithAttendance_classes_attendanceHistoryAggregate_aggregate_max?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith_Fragment_FullPersonDataWithAttendance_classes_attendanceHistoryAggregate_aggregate_max<
      TRes> get max {
    final local$max = _instance.max;
    return local$max == null
        ? CopyWith_Fragment_FullPersonDataWithAttendance_classes_attendanceHistoryAggregate_aggregate_max
            .stub(_then(_instance))
        : CopyWith_Fragment_FullPersonDataWithAttendance_classes_attendanceHistoryAggregate_aggregate_max(
            local$max, (e) => call(max: e));
  }
}

class _CopyWithStubImpl_Fragment_FullPersonDataWithAttendance_classes_attendanceHistoryAggregate_aggregate<
        TRes>
    implements
        CopyWith_Fragment_FullPersonDataWithAttendance_classes_attendanceHistoryAggregate_aggregate<
            TRes> {
  _CopyWithStubImpl_Fragment_FullPersonDataWithAttendance_classes_attendanceHistoryAggregate_aggregate(
      this._res);

  TRes _res;

  call({
    Fragment_FullPersonDataWithAttendance_classes_attendanceHistoryAggregate_aggregate_max?
        max,
    String? $__typename,
  }) =>
      _res;

  CopyWith_Fragment_FullPersonDataWithAttendance_classes_attendanceHistoryAggregate_aggregate_max<
          TRes>
      get max =>
          CopyWith_Fragment_FullPersonDataWithAttendance_classes_attendanceHistoryAggregate_aggregate_max
              .stub(_res);
}

class Fragment_FullPersonDataWithAttendance_classes_attendanceHistoryAggregate_aggregate_max {
  Fragment_FullPersonDataWithAttendance_classes_attendanceHistoryAggregate_aggregate_max({
    this.time,
    this.$__typename = 'HistoryAttendanceHistoryMaxFields',
  });

  factory Fragment_FullPersonDataWithAttendance_classes_attendanceHistoryAggregate_aggregate_max.fromJson(
      Map<String, dynamic> json) {
    final l$time = json['time'];
    final l$$__typename = json['__typename'];
    return Fragment_FullPersonDataWithAttendance_classes_attendanceHistoryAggregate_aggregate_max(
      time: l$time == null ? null : tstzFromString(l$time),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime? time;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$time = time;
    _resultData['time'] = l$time == null ? null : tstzToString(l$time);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$time = time;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$time,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Fragment_FullPersonDataWithAttendance_classes_attendanceHistoryAggregate_aggregate_max) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$time = time;
    final lOther$time = other.time;
    if (l$time != lOther$time) {
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

extension UtilityExtension_Fragment_FullPersonDataWithAttendance_classes_attendanceHistoryAggregate_aggregate_max
    on Fragment_FullPersonDataWithAttendance_classes_attendanceHistoryAggregate_aggregate_max {
  CopyWith_Fragment_FullPersonDataWithAttendance_classes_attendanceHistoryAggregate_aggregate_max<
          Fragment_FullPersonDataWithAttendance_classes_attendanceHistoryAggregate_aggregate_max>
      get copyWith =>
          CopyWith_Fragment_FullPersonDataWithAttendance_classes_attendanceHistoryAggregate_aggregate_max(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Fragment_FullPersonDataWithAttendance_classes_attendanceHistoryAggregate_aggregate_max<
    TRes> {
  factory CopyWith_Fragment_FullPersonDataWithAttendance_classes_attendanceHistoryAggregate_aggregate_max(
    Fragment_FullPersonDataWithAttendance_classes_attendanceHistoryAggregate_aggregate_max
        instance,
    TRes Function(
            Fragment_FullPersonDataWithAttendance_classes_attendanceHistoryAggregate_aggregate_max)
        then,
  ) = _CopyWithImpl_Fragment_FullPersonDataWithAttendance_classes_attendanceHistoryAggregate_aggregate_max;

  factory CopyWith_Fragment_FullPersonDataWithAttendance_classes_attendanceHistoryAggregate_aggregate_max.stub(
          TRes res) =
      _CopyWithStubImpl_Fragment_FullPersonDataWithAttendance_classes_attendanceHistoryAggregate_aggregate_max;

  TRes call({
    DateTime? time,
    String? $__typename,
  });
}

class _CopyWithImpl_Fragment_FullPersonDataWithAttendance_classes_attendanceHistoryAggregate_aggregate_max<
        TRes>
    implements
        CopyWith_Fragment_FullPersonDataWithAttendance_classes_attendanceHistoryAggregate_aggregate_max<
            TRes> {
  _CopyWithImpl_Fragment_FullPersonDataWithAttendance_classes_attendanceHistoryAggregate_aggregate_max(
    this._instance,
    this._then,
  );

  final Fragment_FullPersonDataWithAttendance_classes_attendanceHistoryAggregate_aggregate_max
      _instance;

  final TRes Function(
          Fragment_FullPersonDataWithAttendance_classes_attendanceHistoryAggregate_aggregate_max)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? time = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Fragment_FullPersonDataWithAttendance_classes_attendanceHistoryAggregate_aggregate_max(
        time: time == _undefined ? _instance.time : (time as DateTime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Fragment_FullPersonDataWithAttendance_classes_attendanceHistoryAggregate_aggregate_max<
        TRes>
    implements
        CopyWith_Fragment_FullPersonDataWithAttendance_classes_attendanceHistoryAggregate_aggregate_max<
            TRes> {
  _CopyWithStubImpl_Fragment_FullPersonDataWithAttendance_classes_attendanceHistoryAggregate_aggregate_max(
      this._res);

  TRes _res;

  call({
    DateTime? time,
    String? $__typename,
  }) =>
      _res;
}

class Fragment_FullPersonDataWithAttendance_groups_group_attendanceHistoryAggregate {
  Fragment_FullPersonDataWithAttendance_groups_group_attendanceHistoryAggregate({
    this.aggregate,
    this.$__typename = 'HistoryAttendanceHistoryAggregate',
  });

  factory Fragment_FullPersonDataWithAttendance_groups_group_attendanceHistoryAggregate.fromJson(
      Map<String, dynamic> json) {
    final l$aggregate = json['aggregate'];
    final l$$__typename = json['__typename'];
    return Fragment_FullPersonDataWithAttendance_groups_group_attendanceHistoryAggregate(
      aggregate: l$aggregate == null
          ? null
          : Fragment_FullPersonDataWithAttendance_groups_group_attendanceHistoryAggregate_aggregate
              .fromJson((l$aggregate as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_FullPersonDataWithAttendance_groups_group_attendanceHistoryAggregate_aggregate?
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
    return Object.hashAll([
      l$aggregate,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Fragment_FullPersonDataWithAttendance_groups_group_attendanceHistoryAggregate) ||
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

extension UtilityExtension_Fragment_FullPersonDataWithAttendance_groups_group_attendanceHistoryAggregate
    on Fragment_FullPersonDataWithAttendance_groups_group_attendanceHistoryAggregate {
  CopyWith_Fragment_FullPersonDataWithAttendance_groups_group_attendanceHistoryAggregate<
          Fragment_FullPersonDataWithAttendance_groups_group_attendanceHistoryAggregate>
      get copyWith =>
          CopyWith_Fragment_FullPersonDataWithAttendance_groups_group_attendanceHistoryAggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Fragment_FullPersonDataWithAttendance_groups_group_attendanceHistoryAggregate<
    TRes> {
  factory CopyWith_Fragment_FullPersonDataWithAttendance_groups_group_attendanceHistoryAggregate(
    Fragment_FullPersonDataWithAttendance_groups_group_attendanceHistoryAggregate
        instance,
    TRes Function(
            Fragment_FullPersonDataWithAttendance_groups_group_attendanceHistoryAggregate)
        then,
  ) = _CopyWithImpl_Fragment_FullPersonDataWithAttendance_groups_group_attendanceHistoryAggregate;

  factory CopyWith_Fragment_FullPersonDataWithAttendance_groups_group_attendanceHistoryAggregate.stub(
          TRes res) =
      _CopyWithStubImpl_Fragment_FullPersonDataWithAttendance_groups_group_attendanceHistoryAggregate;

  TRes call({
    Fragment_FullPersonDataWithAttendance_groups_group_attendanceHistoryAggregate_aggregate?
        aggregate,
    String? $__typename,
  });
  CopyWith_Fragment_FullPersonDataWithAttendance_groups_group_attendanceHistoryAggregate_aggregate<
      TRes> get aggregate;
}

class _CopyWithImpl_Fragment_FullPersonDataWithAttendance_groups_group_attendanceHistoryAggregate<
        TRes>
    implements
        CopyWith_Fragment_FullPersonDataWithAttendance_groups_group_attendanceHistoryAggregate<
            TRes> {
  _CopyWithImpl_Fragment_FullPersonDataWithAttendance_groups_group_attendanceHistoryAggregate(
    this._instance,
    this._then,
  );

  final Fragment_FullPersonDataWithAttendance_groups_group_attendanceHistoryAggregate
      _instance;

  final TRes Function(
          Fragment_FullPersonDataWithAttendance_groups_group_attendanceHistoryAggregate)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? aggregate = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Fragment_FullPersonDataWithAttendance_groups_group_attendanceHistoryAggregate(
        aggregate: aggregate == _undefined
            ? _instance.aggregate
            : (aggregate
                as Fragment_FullPersonDataWithAttendance_groups_group_attendanceHistoryAggregate_aggregate?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith_Fragment_FullPersonDataWithAttendance_groups_group_attendanceHistoryAggregate_aggregate<
      TRes> get aggregate {
    final local$aggregate = _instance.aggregate;
    return local$aggregate == null
        ? CopyWith_Fragment_FullPersonDataWithAttendance_groups_group_attendanceHistoryAggregate_aggregate
            .stub(_then(_instance))
        : CopyWith_Fragment_FullPersonDataWithAttendance_groups_group_attendanceHistoryAggregate_aggregate(
            local$aggregate, (e) => call(aggregate: e));
  }
}

class _CopyWithStubImpl_Fragment_FullPersonDataWithAttendance_groups_group_attendanceHistoryAggregate<
        TRes>
    implements
        CopyWith_Fragment_FullPersonDataWithAttendance_groups_group_attendanceHistoryAggregate<
            TRes> {
  _CopyWithStubImpl_Fragment_FullPersonDataWithAttendance_groups_group_attendanceHistoryAggregate(
      this._res);

  TRes _res;

  call({
    Fragment_FullPersonDataWithAttendance_groups_group_attendanceHistoryAggregate_aggregate?
        aggregate,
    String? $__typename,
  }) =>
      _res;

  CopyWith_Fragment_FullPersonDataWithAttendance_groups_group_attendanceHistoryAggregate_aggregate<
          TRes>
      get aggregate =>
          CopyWith_Fragment_FullPersonDataWithAttendance_groups_group_attendanceHistoryAggregate_aggregate
              .stub(_res);
}

class Fragment_FullPersonDataWithAttendance_groups_group_attendanceHistoryAggregate_aggregate {
  Fragment_FullPersonDataWithAttendance_groups_group_attendanceHistoryAggregate_aggregate({
    this.max,
    this.$__typename = 'HistoryAttendanceHistoryAggregateFields',
  });

  factory Fragment_FullPersonDataWithAttendance_groups_group_attendanceHistoryAggregate_aggregate.fromJson(
      Map<String, dynamic> json) {
    final l$max = json['max'];
    final l$$__typename = json['__typename'];
    return Fragment_FullPersonDataWithAttendance_groups_group_attendanceHistoryAggregate_aggregate(
      max: l$max == null
          ? null
          : Fragment_FullPersonDataWithAttendance_groups_group_attendanceHistoryAggregate_aggregate_max
              .fromJson((l$max as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_FullPersonDataWithAttendance_groups_group_attendanceHistoryAggregate_aggregate_max?
      max;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$max = max;
    _resultData['max'] = l$max?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$max = max;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$max,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Fragment_FullPersonDataWithAttendance_groups_group_attendanceHistoryAggregate_aggregate) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$max = max;
    final lOther$max = other.max;
    if (l$max != lOther$max) {
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

extension UtilityExtension_Fragment_FullPersonDataWithAttendance_groups_group_attendanceHistoryAggregate_aggregate
    on Fragment_FullPersonDataWithAttendance_groups_group_attendanceHistoryAggregate_aggregate {
  CopyWith_Fragment_FullPersonDataWithAttendance_groups_group_attendanceHistoryAggregate_aggregate<
          Fragment_FullPersonDataWithAttendance_groups_group_attendanceHistoryAggregate_aggregate>
      get copyWith =>
          CopyWith_Fragment_FullPersonDataWithAttendance_groups_group_attendanceHistoryAggregate_aggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Fragment_FullPersonDataWithAttendance_groups_group_attendanceHistoryAggregate_aggregate<
    TRes> {
  factory CopyWith_Fragment_FullPersonDataWithAttendance_groups_group_attendanceHistoryAggregate_aggregate(
    Fragment_FullPersonDataWithAttendance_groups_group_attendanceHistoryAggregate_aggregate
        instance,
    TRes Function(
            Fragment_FullPersonDataWithAttendance_groups_group_attendanceHistoryAggregate_aggregate)
        then,
  ) = _CopyWithImpl_Fragment_FullPersonDataWithAttendance_groups_group_attendanceHistoryAggregate_aggregate;

  factory CopyWith_Fragment_FullPersonDataWithAttendance_groups_group_attendanceHistoryAggregate_aggregate.stub(
          TRes res) =
      _CopyWithStubImpl_Fragment_FullPersonDataWithAttendance_groups_group_attendanceHistoryAggregate_aggregate;

  TRes call({
    Fragment_FullPersonDataWithAttendance_groups_group_attendanceHistoryAggregate_aggregate_max?
        max,
    String? $__typename,
  });
  CopyWith_Fragment_FullPersonDataWithAttendance_groups_group_attendanceHistoryAggregate_aggregate_max<
      TRes> get max;
}

class _CopyWithImpl_Fragment_FullPersonDataWithAttendance_groups_group_attendanceHistoryAggregate_aggregate<
        TRes>
    implements
        CopyWith_Fragment_FullPersonDataWithAttendance_groups_group_attendanceHistoryAggregate_aggregate<
            TRes> {
  _CopyWithImpl_Fragment_FullPersonDataWithAttendance_groups_group_attendanceHistoryAggregate_aggregate(
    this._instance,
    this._then,
  );

  final Fragment_FullPersonDataWithAttendance_groups_group_attendanceHistoryAggregate_aggregate
      _instance;

  final TRes Function(
          Fragment_FullPersonDataWithAttendance_groups_group_attendanceHistoryAggregate_aggregate)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? max = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Fragment_FullPersonDataWithAttendance_groups_group_attendanceHistoryAggregate_aggregate(
        max: max == _undefined
            ? _instance.max
            : (max
                as Fragment_FullPersonDataWithAttendance_groups_group_attendanceHistoryAggregate_aggregate_max?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith_Fragment_FullPersonDataWithAttendance_groups_group_attendanceHistoryAggregate_aggregate_max<
      TRes> get max {
    final local$max = _instance.max;
    return local$max == null
        ? CopyWith_Fragment_FullPersonDataWithAttendance_groups_group_attendanceHistoryAggregate_aggregate_max
            .stub(_then(_instance))
        : CopyWith_Fragment_FullPersonDataWithAttendance_groups_group_attendanceHistoryAggregate_aggregate_max(
            local$max, (e) => call(max: e));
  }
}

class _CopyWithStubImpl_Fragment_FullPersonDataWithAttendance_groups_group_attendanceHistoryAggregate_aggregate<
        TRes>
    implements
        CopyWith_Fragment_FullPersonDataWithAttendance_groups_group_attendanceHistoryAggregate_aggregate<
            TRes> {
  _CopyWithStubImpl_Fragment_FullPersonDataWithAttendance_groups_group_attendanceHistoryAggregate_aggregate(
      this._res);

  TRes _res;

  call({
    Fragment_FullPersonDataWithAttendance_groups_group_attendanceHistoryAggregate_aggregate_max?
        max,
    String? $__typename,
  }) =>
      _res;

  CopyWith_Fragment_FullPersonDataWithAttendance_groups_group_attendanceHistoryAggregate_aggregate_max<
          TRes>
      get max =>
          CopyWith_Fragment_FullPersonDataWithAttendance_groups_group_attendanceHistoryAggregate_aggregate_max
              .stub(_res);
}

class Fragment_FullPersonDataWithAttendance_groups_group_attendanceHistoryAggregate_aggregate_max {
  Fragment_FullPersonDataWithAttendance_groups_group_attendanceHistoryAggregate_aggregate_max({
    this.time,
    this.$__typename = 'HistoryAttendanceHistoryMaxFields',
  });

  factory Fragment_FullPersonDataWithAttendance_groups_group_attendanceHistoryAggregate_aggregate_max.fromJson(
      Map<String, dynamic> json) {
    final l$time = json['time'];
    final l$$__typename = json['__typename'];
    return Fragment_FullPersonDataWithAttendance_groups_group_attendanceHistoryAggregate_aggregate_max(
      time: l$time == null ? null : tstzFromString(l$time),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime? time;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$time = time;
    _resultData['time'] = l$time == null ? null : tstzToString(l$time);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$time = time;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$time,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Fragment_FullPersonDataWithAttendance_groups_group_attendanceHistoryAggregate_aggregate_max) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$time = time;
    final lOther$time = other.time;
    if (l$time != lOther$time) {
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

extension UtilityExtension_Fragment_FullPersonDataWithAttendance_groups_group_attendanceHistoryAggregate_aggregate_max
    on Fragment_FullPersonDataWithAttendance_groups_group_attendanceHistoryAggregate_aggregate_max {
  CopyWith_Fragment_FullPersonDataWithAttendance_groups_group_attendanceHistoryAggregate_aggregate_max<
          Fragment_FullPersonDataWithAttendance_groups_group_attendanceHistoryAggregate_aggregate_max>
      get copyWith =>
          CopyWith_Fragment_FullPersonDataWithAttendance_groups_group_attendanceHistoryAggregate_aggregate_max(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Fragment_FullPersonDataWithAttendance_groups_group_attendanceHistoryAggregate_aggregate_max<
    TRes> {
  factory CopyWith_Fragment_FullPersonDataWithAttendance_groups_group_attendanceHistoryAggregate_aggregate_max(
    Fragment_FullPersonDataWithAttendance_groups_group_attendanceHistoryAggregate_aggregate_max
        instance,
    TRes Function(
            Fragment_FullPersonDataWithAttendance_groups_group_attendanceHistoryAggregate_aggregate_max)
        then,
  ) = _CopyWithImpl_Fragment_FullPersonDataWithAttendance_groups_group_attendanceHistoryAggregate_aggregate_max;

  factory CopyWith_Fragment_FullPersonDataWithAttendance_groups_group_attendanceHistoryAggregate_aggregate_max.stub(
          TRes res) =
      _CopyWithStubImpl_Fragment_FullPersonDataWithAttendance_groups_group_attendanceHistoryAggregate_aggregate_max;

  TRes call({
    DateTime? time,
    String? $__typename,
  });
}

class _CopyWithImpl_Fragment_FullPersonDataWithAttendance_groups_group_attendanceHistoryAggregate_aggregate_max<
        TRes>
    implements
        CopyWith_Fragment_FullPersonDataWithAttendance_groups_group_attendanceHistoryAggregate_aggregate_max<
            TRes> {
  _CopyWithImpl_Fragment_FullPersonDataWithAttendance_groups_group_attendanceHistoryAggregate_aggregate_max(
    this._instance,
    this._then,
  );

  final Fragment_FullPersonDataWithAttendance_groups_group_attendanceHistoryAggregate_aggregate_max
      _instance;

  final TRes Function(
          Fragment_FullPersonDataWithAttendance_groups_group_attendanceHistoryAggregate_aggregate_max)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? time = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Fragment_FullPersonDataWithAttendance_groups_group_attendanceHistoryAggregate_aggregate_max(
        time: time == _undefined ? _instance.time : (time as DateTime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Fragment_FullPersonDataWithAttendance_groups_group_attendanceHistoryAggregate_aggregate_max<
        TRes>
    implements
        CopyWith_Fragment_FullPersonDataWithAttendance_groups_group_attendanceHistoryAggregate_aggregate_max<
            TRes> {
  _CopyWithStubImpl_Fragment_FullPersonDataWithAttendance_groups_group_attendanceHistoryAggregate_aggregate_max(
      this._res);

  TRes _res;

  call({
    DateTime? time,
    String? $__typename,
  }) =>
      _res;
}

class Fragment_FullPersonDataWithAttendance_services_service_attendanceHistoryAggregate {
  Fragment_FullPersonDataWithAttendance_services_service_attendanceHistoryAggregate({
    this.aggregate,
    this.$__typename = 'HistoryAttendanceHistoryAggregate',
  });

  factory Fragment_FullPersonDataWithAttendance_services_service_attendanceHistoryAggregate.fromJson(
      Map<String, dynamic> json) {
    final l$aggregate = json['aggregate'];
    final l$$__typename = json['__typename'];
    return Fragment_FullPersonDataWithAttendance_services_service_attendanceHistoryAggregate(
      aggregate: l$aggregate == null
          ? null
          : Fragment_FullPersonDataWithAttendance_services_service_attendanceHistoryAggregate_aggregate
              .fromJson((l$aggregate as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_FullPersonDataWithAttendance_services_service_attendanceHistoryAggregate_aggregate?
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
    return Object.hashAll([
      l$aggregate,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Fragment_FullPersonDataWithAttendance_services_service_attendanceHistoryAggregate) ||
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

extension UtilityExtension_Fragment_FullPersonDataWithAttendance_services_service_attendanceHistoryAggregate
    on Fragment_FullPersonDataWithAttendance_services_service_attendanceHistoryAggregate {
  CopyWith_Fragment_FullPersonDataWithAttendance_services_service_attendanceHistoryAggregate<
          Fragment_FullPersonDataWithAttendance_services_service_attendanceHistoryAggregate>
      get copyWith =>
          CopyWith_Fragment_FullPersonDataWithAttendance_services_service_attendanceHistoryAggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Fragment_FullPersonDataWithAttendance_services_service_attendanceHistoryAggregate<
    TRes> {
  factory CopyWith_Fragment_FullPersonDataWithAttendance_services_service_attendanceHistoryAggregate(
    Fragment_FullPersonDataWithAttendance_services_service_attendanceHistoryAggregate
        instance,
    TRes Function(
            Fragment_FullPersonDataWithAttendance_services_service_attendanceHistoryAggregate)
        then,
  ) = _CopyWithImpl_Fragment_FullPersonDataWithAttendance_services_service_attendanceHistoryAggregate;

  factory CopyWith_Fragment_FullPersonDataWithAttendance_services_service_attendanceHistoryAggregate.stub(
          TRes res) =
      _CopyWithStubImpl_Fragment_FullPersonDataWithAttendance_services_service_attendanceHistoryAggregate;

  TRes call({
    Fragment_FullPersonDataWithAttendance_services_service_attendanceHistoryAggregate_aggregate?
        aggregate,
    String? $__typename,
  });
  CopyWith_Fragment_FullPersonDataWithAttendance_services_service_attendanceHistoryAggregate_aggregate<
      TRes> get aggregate;
}

class _CopyWithImpl_Fragment_FullPersonDataWithAttendance_services_service_attendanceHistoryAggregate<
        TRes>
    implements
        CopyWith_Fragment_FullPersonDataWithAttendance_services_service_attendanceHistoryAggregate<
            TRes> {
  _CopyWithImpl_Fragment_FullPersonDataWithAttendance_services_service_attendanceHistoryAggregate(
    this._instance,
    this._then,
  );

  final Fragment_FullPersonDataWithAttendance_services_service_attendanceHistoryAggregate
      _instance;

  final TRes Function(
          Fragment_FullPersonDataWithAttendance_services_service_attendanceHistoryAggregate)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? aggregate = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Fragment_FullPersonDataWithAttendance_services_service_attendanceHistoryAggregate(
        aggregate: aggregate == _undefined
            ? _instance.aggregate
            : (aggregate
                as Fragment_FullPersonDataWithAttendance_services_service_attendanceHistoryAggregate_aggregate?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith_Fragment_FullPersonDataWithAttendance_services_service_attendanceHistoryAggregate_aggregate<
      TRes> get aggregate {
    final local$aggregate = _instance.aggregate;
    return local$aggregate == null
        ? CopyWith_Fragment_FullPersonDataWithAttendance_services_service_attendanceHistoryAggregate_aggregate
            .stub(_then(_instance))
        : CopyWith_Fragment_FullPersonDataWithAttendance_services_service_attendanceHistoryAggregate_aggregate(
            local$aggregate, (e) => call(aggregate: e));
  }
}

class _CopyWithStubImpl_Fragment_FullPersonDataWithAttendance_services_service_attendanceHistoryAggregate<
        TRes>
    implements
        CopyWith_Fragment_FullPersonDataWithAttendance_services_service_attendanceHistoryAggregate<
            TRes> {
  _CopyWithStubImpl_Fragment_FullPersonDataWithAttendance_services_service_attendanceHistoryAggregate(
      this._res);

  TRes _res;

  call({
    Fragment_FullPersonDataWithAttendance_services_service_attendanceHistoryAggregate_aggregate?
        aggregate,
    String? $__typename,
  }) =>
      _res;

  CopyWith_Fragment_FullPersonDataWithAttendance_services_service_attendanceHistoryAggregate_aggregate<
          TRes>
      get aggregate =>
          CopyWith_Fragment_FullPersonDataWithAttendance_services_service_attendanceHistoryAggregate_aggregate
              .stub(_res);
}

class Fragment_FullPersonDataWithAttendance_services_service_attendanceHistoryAggregate_aggregate {
  Fragment_FullPersonDataWithAttendance_services_service_attendanceHistoryAggregate_aggregate({
    this.max,
    this.$__typename = 'HistoryAttendanceHistoryAggregateFields',
  });

  factory Fragment_FullPersonDataWithAttendance_services_service_attendanceHistoryAggregate_aggregate.fromJson(
      Map<String, dynamic> json) {
    final l$max = json['max'];
    final l$$__typename = json['__typename'];
    return Fragment_FullPersonDataWithAttendance_services_service_attendanceHistoryAggregate_aggregate(
      max: l$max == null
          ? null
          : Fragment_FullPersonDataWithAttendance_services_service_attendanceHistoryAggregate_aggregate_max
              .fromJson((l$max as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_FullPersonDataWithAttendance_services_service_attendanceHistoryAggregate_aggregate_max?
      max;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$max = max;
    _resultData['max'] = l$max?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$max = max;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$max,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Fragment_FullPersonDataWithAttendance_services_service_attendanceHistoryAggregate_aggregate) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$max = max;
    final lOther$max = other.max;
    if (l$max != lOther$max) {
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

extension UtilityExtension_Fragment_FullPersonDataWithAttendance_services_service_attendanceHistoryAggregate_aggregate
    on Fragment_FullPersonDataWithAttendance_services_service_attendanceHistoryAggregate_aggregate {
  CopyWith_Fragment_FullPersonDataWithAttendance_services_service_attendanceHistoryAggregate_aggregate<
          Fragment_FullPersonDataWithAttendance_services_service_attendanceHistoryAggregate_aggregate>
      get copyWith =>
          CopyWith_Fragment_FullPersonDataWithAttendance_services_service_attendanceHistoryAggregate_aggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Fragment_FullPersonDataWithAttendance_services_service_attendanceHistoryAggregate_aggregate<
    TRes> {
  factory CopyWith_Fragment_FullPersonDataWithAttendance_services_service_attendanceHistoryAggregate_aggregate(
    Fragment_FullPersonDataWithAttendance_services_service_attendanceHistoryAggregate_aggregate
        instance,
    TRes Function(
            Fragment_FullPersonDataWithAttendance_services_service_attendanceHistoryAggregate_aggregate)
        then,
  ) = _CopyWithImpl_Fragment_FullPersonDataWithAttendance_services_service_attendanceHistoryAggregate_aggregate;

  factory CopyWith_Fragment_FullPersonDataWithAttendance_services_service_attendanceHistoryAggregate_aggregate.stub(
          TRes res) =
      _CopyWithStubImpl_Fragment_FullPersonDataWithAttendance_services_service_attendanceHistoryAggregate_aggregate;

  TRes call({
    Fragment_FullPersonDataWithAttendance_services_service_attendanceHistoryAggregate_aggregate_max?
        max,
    String? $__typename,
  });
  CopyWith_Fragment_FullPersonDataWithAttendance_services_service_attendanceHistoryAggregate_aggregate_max<
      TRes> get max;
}

class _CopyWithImpl_Fragment_FullPersonDataWithAttendance_services_service_attendanceHistoryAggregate_aggregate<
        TRes>
    implements
        CopyWith_Fragment_FullPersonDataWithAttendance_services_service_attendanceHistoryAggregate_aggregate<
            TRes> {
  _CopyWithImpl_Fragment_FullPersonDataWithAttendance_services_service_attendanceHistoryAggregate_aggregate(
    this._instance,
    this._then,
  );

  final Fragment_FullPersonDataWithAttendance_services_service_attendanceHistoryAggregate_aggregate
      _instance;

  final TRes Function(
          Fragment_FullPersonDataWithAttendance_services_service_attendanceHistoryAggregate_aggregate)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? max = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Fragment_FullPersonDataWithAttendance_services_service_attendanceHistoryAggregate_aggregate(
        max: max == _undefined
            ? _instance.max
            : (max
                as Fragment_FullPersonDataWithAttendance_services_service_attendanceHistoryAggregate_aggregate_max?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith_Fragment_FullPersonDataWithAttendance_services_service_attendanceHistoryAggregate_aggregate_max<
      TRes> get max {
    final local$max = _instance.max;
    return local$max == null
        ? CopyWith_Fragment_FullPersonDataWithAttendance_services_service_attendanceHistoryAggregate_aggregate_max
            .stub(_then(_instance))
        : CopyWith_Fragment_FullPersonDataWithAttendance_services_service_attendanceHistoryAggregate_aggregate_max(
            local$max, (e) => call(max: e));
  }
}

class _CopyWithStubImpl_Fragment_FullPersonDataWithAttendance_services_service_attendanceHistoryAggregate_aggregate<
        TRes>
    implements
        CopyWith_Fragment_FullPersonDataWithAttendance_services_service_attendanceHistoryAggregate_aggregate<
            TRes> {
  _CopyWithStubImpl_Fragment_FullPersonDataWithAttendance_services_service_attendanceHistoryAggregate_aggregate(
      this._res);

  TRes _res;

  call({
    Fragment_FullPersonDataWithAttendance_services_service_attendanceHistoryAggregate_aggregate_max?
        max,
    String? $__typename,
  }) =>
      _res;

  CopyWith_Fragment_FullPersonDataWithAttendance_services_service_attendanceHistoryAggregate_aggregate_max<
          TRes>
      get max =>
          CopyWith_Fragment_FullPersonDataWithAttendance_services_service_attendanceHistoryAggregate_aggregate_max
              .stub(_res);
}

class Fragment_FullPersonDataWithAttendance_services_service_attendanceHistoryAggregate_aggregate_max {
  Fragment_FullPersonDataWithAttendance_services_service_attendanceHistoryAggregate_aggregate_max({
    this.time,
    this.$__typename = 'HistoryAttendanceHistoryMaxFields',
  });

  factory Fragment_FullPersonDataWithAttendance_services_service_attendanceHistoryAggregate_aggregate_max.fromJson(
      Map<String, dynamic> json) {
    final l$time = json['time'];
    final l$$__typename = json['__typename'];
    return Fragment_FullPersonDataWithAttendance_services_service_attendanceHistoryAggregate_aggregate_max(
      time: l$time == null ? null : tstzFromString(l$time),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime? time;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$time = time;
    _resultData['time'] = l$time == null ? null : tstzToString(l$time);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$time = time;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$time,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Fragment_FullPersonDataWithAttendance_services_service_attendanceHistoryAggregate_aggregate_max) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$time = time;
    final lOther$time = other.time;
    if (l$time != lOther$time) {
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

extension UtilityExtension_Fragment_FullPersonDataWithAttendance_services_service_attendanceHistoryAggregate_aggregate_max
    on Fragment_FullPersonDataWithAttendance_services_service_attendanceHistoryAggregate_aggregate_max {
  CopyWith_Fragment_FullPersonDataWithAttendance_services_service_attendanceHistoryAggregate_aggregate_max<
          Fragment_FullPersonDataWithAttendance_services_service_attendanceHistoryAggregate_aggregate_max>
      get copyWith =>
          CopyWith_Fragment_FullPersonDataWithAttendance_services_service_attendanceHistoryAggregate_aggregate_max(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Fragment_FullPersonDataWithAttendance_services_service_attendanceHistoryAggregate_aggregate_max<
    TRes> {
  factory CopyWith_Fragment_FullPersonDataWithAttendance_services_service_attendanceHistoryAggregate_aggregate_max(
    Fragment_FullPersonDataWithAttendance_services_service_attendanceHistoryAggregate_aggregate_max
        instance,
    TRes Function(
            Fragment_FullPersonDataWithAttendance_services_service_attendanceHistoryAggregate_aggregate_max)
        then,
  ) = _CopyWithImpl_Fragment_FullPersonDataWithAttendance_services_service_attendanceHistoryAggregate_aggregate_max;

  factory CopyWith_Fragment_FullPersonDataWithAttendance_services_service_attendanceHistoryAggregate_aggregate_max.stub(
          TRes res) =
      _CopyWithStubImpl_Fragment_FullPersonDataWithAttendance_services_service_attendanceHistoryAggregate_aggregate_max;

  TRes call({
    DateTime? time,
    String? $__typename,
  });
}

class _CopyWithImpl_Fragment_FullPersonDataWithAttendance_services_service_attendanceHistoryAggregate_aggregate_max<
        TRes>
    implements
        CopyWith_Fragment_FullPersonDataWithAttendance_services_service_attendanceHistoryAggregate_aggregate_max<
            TRes> {
  _CopyWithImpl_Fragment_FullPersonDataWithAttendance_services_service_attendanceHistoryAggregate_aggregate_max(
    this._instance,
    this._then,
  );

  final Fragment_FullPersonDataWithAttendance_services_service_attendanceHistoryAggregate_aggregate_max
      _instance;

  final TRes Function(
          Fragment_FullPersonDataWithAttendance_services_service_attendanceHistoryAggregate_aggregate_max)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? time = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Fragment_FullPersonDataWithAttendance_services_service_attendanceHistoryAggregate_aggregate_max(
        time: time == _undefined ? _instance.time : (time as DateTime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Fragment_FullPersonDataWithAttendance_services_service_attendanceHistoryAggregate_aggregate_max<
        TRes>
    implements
        CopyWith_Fragment_FullPersonDataWithAttendance_services_service_attendanceHistoryAggregate_aggregate_max<
            TRes> {
  _CopyWithStubImpl_Fragment_FullPersonDataWithAttendance_services_service_attendanceHistoryAggregate_aggregate_max(
      this._res);

  TRes _res;

  call({
    DateTime? time,
    String? $__typename,
  }) =>
      _res;
}
