import '../../areas/__generated__/fragments.gql.dart';
import '../../classes/__generated__/fragments.gql.dart';
import '../../families/__generated__/fragments.gql.dart';
import '../../groups/__generated__/fragments.gql.dart';
import '../../services/__generated__/fragments.gql.dart';
import '../../streets/__generated__/fragments.gql.dart';
import 'package:church_admin/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Fragment$Person implements Fragment$PersonNoPhoto {
  Fragment$Person({
    required this.id,
    required this.name,
    this.color,
    this.$__typename = 'Persons',
    this.photoUpdatedAt,
  });

  factory Fragment$Person.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    return Fragment$Person(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      $__typename: (l$$__typename as String),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final String $__typename;

  final DateTime? photoUpdatedAt;

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
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$$__typename = $__typename;
    final l$photoUpdatedAt = photoUpdatedAt;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$$__typename,
      l$photoUpdatedAt,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$Person) || runtimeType != other.runtimeType) {
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
    return true;
  }
}

extension UtilityExtension$Fragment$Person on Fragment$Person {
  CopyWith$Fragment$Person<Fragment$Person> get copyWith =>
      CopyWith$Fragment$Person(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$Person<TRes> {
  factory CopyWith$Fragment$Person(
    Fragment$Person instance,
    TRes Function(Fragment$Person) then,
  ) = _CopyWithImpl$Fragment$Person;

  factory CopyWith$Fragment$Person.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Person;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    DateTime? photoUpdatedAt,
  });
}

class _CopyWithImpl$Fragment$Person<TRes>
    implements CopyWith$Fragment$Person<TRes> {
  _CopyWithImpl$Fragment$Person(
    this._instance,
    this._then,
  );

  final Fragment$Person _instance;

  final TRes Function(Fragment$Person) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
    Object? photoUpdatedAt = _undefined,
  }) =>
      _then(Fragment$Person(
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
      ));
}

class _CopyWithStubImpl$Fragment$Person<TRes>
    implements CopyWith$Fragment$Person<TRes> {
  _CopyWithStubImpl$Fragment$Person(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    DateTime? photoUpdatedAt,
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

class Fragment$PersonNoPhoto {
  Fragment$PersonNoPhoto({
    required this.id,
    required this.name,
    this.color,
    this.$__typename = 'Persons',
  });

  factory Fragment$PersonNoPhoto.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    return Fragment$PersonNoPhoto(
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
    if (!(other is Fragment$PersonNoPhoto) ||
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

extension UtilityExtension$Fragment$PersonNoPhoto on Fragment$PersonNoPhoto {
  CopyWith$Fragment$PersonNoPhoto<Fragment$PersonNoPhoto> get copyWith =>
      CopyWith$Fragment$PersonNoPhoto(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$PersonNoPhoto<TRes> {
  factory CopyWith$Fragment$PersonNoPhoto(
    Fragment$PersonNoPhoto instance,
    TRes Function(Fragment$PersonNoPhoto) then,
  ) = _CopyWithImpl$Fragment$PersonNoPhoto;

  factory CopyWith$Fragment$PersonNoPhoto.stub(TRes res) =
      _CopyWithStubImpl$Fragment$PersonNoPhoto;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$PersonNoPhoto<TRes>
    implements CopyWith$Fragment$PersonNoPhoto<TRes> {
  _CopyWithImpl$Fragment$PersonNoPhoto(
    this._instance,
    this._then,
  );

  final Fragment$PersonNoPhoto _instance;

  final TRes Function(Fragment$PersonNoPhoto) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$PersonNoPhoto(
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

class _CopyWithStubImpl$Fragment$PersonNoPhoto<TRes>
    implements CopyWith$Fragment$PersonNoPhoto<TRes> {
  _CopyWithStubImpl$Fragment$PersonNoPhoto(this._res);

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

class Fragment$FullPersonData
    implements Fragment$Person, Fragment$PersonNoPhoto {
  Fragment$FullPersonData({
    required this.id,
    required this.name,
    this.color,
    this.$__typename = 'Persons',
    this.photoUpdatedAt,
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

  factory Fragment$FullPersonData.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
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
    return Fragment$FullPersonData(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      $__typename: (l$$__typename as String),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
      address: (l$address as String?),
      birthdate: l$birthdate == null ? null : dateFromString(l$birthdate),
      areas: (l$areas as List<dynamic>?)
          ?.map((e) => Fragment$Area.fromJson((e as Map<String, dynamic>)))
          .toList(),
      classes: (l$classes as List<dynamic>?)
          ?.map((e) => Fragment$Class.fromJson((e as Map<String, dynamic>)))
          .toList(),
      church: l$church == null
          ? null
          : Fragment$FullPersonData$church.fromJson(
              (l$church as Map<String, dynamic>)),
      college: l$college == null
          ? null
          : Fragment$FullPersonData$college.fromJson(
              (l$college as Map<String, dynamic>)),
      family: l$family == null
          ? null
          : Fragment$Family.fromJson((l$family as Map<String, dynamic>)),
      father: l$father == null
          ? null
          : Fragment$FullPersonData$father.fromJson(
              (l$father as Map<String, dynamic>)),
      gender: (l$gender as bool),
      geolocation: (l$geolocation as Map<String, dynamic>?),
      groups: (l$groups as List<dynamic>)
          .map((e) => Fragment$FullPersonData$groups.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      isServant: (l$isServant as bool),
      isShammas: (l$isShammas as bool),
      isStudent: (l$isStudent as bool?),
      job: l$job == null
          ? null
          : Fragment$FullPersonData$job.fromJson(
              (l$job as Map<String, dynamic>)),
      jobDescription: (l$jobDescription as String?),
      lastCall: (l$lastCall as Json?),
      lastConfession: (l$lastConfession as Json?),
      lastEdit: (l$lastEdit as Json?),
      lastKodas: (l$lastKodas as Json?),
      lastVisit: (l$lastVisit as Json?),
      mainPhone: (l$mainPhone as String?),
      notes: (l$notes as String?),
      otherPhones: (l$otherPhones as Json),
      personType: l$personType == null
          ? null
          : Fragment$FullPersonData$personType.fromJson(
              (l$personType as Map<String, dynamic>)),
      qualification: l$qualification == null
          ? null
          : Fragment$FullPersonData$qualification.fromJson(
              (l$qualification as Map<String, dynamic>)),
      school: l$school == null
          ? null
          : Fragment$FullPersonData$school.fromJson(
              (l$school as Map<String, dynamic>)),
      services: (l$services as List<dynamic>)
          .map((e) => Fragment$FullPersonData$services.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      shammasLevel: l$shammasLevel == null
          ? null
          : Fragment$FullPersonData$shammasLevel.fromJson(
              (l$shammasLevel as Map<String, dynamic>)),
      state: l$state == null
          ? null
          : Fragment$FullPersonData$state.fromJson(
              (l$state as Map<String, dynamic>)),
      streets: (l$streets as List<dynamic>?)
          ?.map((e) => Fragment$Street.fromJson((e as Map<String, dynamic>)))
          .toList(),
      studyYear: l$studyYear == null
          ? null
          : Fragment$FullPersonData$studyYear.fromJson(
              (l$studyYear as Map<String, dynamic>)),
      hobbies: (l$hobbies as List<dynamic>)
          .map((e) => Fragment$FullPersonData$hobbies.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      tags: (l$tags as List<dynamic>)
          .map((e) => Fragment$FullPersonData$tags.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      uid: l$uid == null ? null : stringToUuid(l$uid),
      user: l$user == null
          ? null
          : Fragment$FullPersonData$user.fromJson(
              (l$user as Map<String, dynamic>)),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final String $__typename;

  final DateTime? photoUpdatedAt;

  final String? address;

  final DateTime? birthdate;

  final List<Fragment$Area>? areas;

  final List<Fragment$Class>? classes;

  final Fragment$FullPersonData$church? church;

  final Fragment$FullPersonData$college? college;

  final Fragment$Family? family;

  final Fragment$FullPersonData$father? father;

  final bool gender;

  final Map<String, dynamic>? geolocation;

  final List<Fragment$FullPersonData$groups> groups;

  final bool isServant;

  final bool isShammas;

  final bool? isStudent;

  final Fragment$FullPersonData$job? job;

  final String? jobDescription;

  final Json? lastCall;

  final Json? lastConfession;

  final Json? lastEdit;

  final Json? lastKodas;

  final Json? lastVisit;

  final String? mainPhone;

  final String? notes;

  final Json otherPhones;

  final Fragment$FullPersonData$personType? personType;

  final Fragment$FullPersonData$qualification? qualification;

  final Fragment$FullPersonData$school? school;

  final List<Fragment$FullPersonData$services> services;

  final Fragment$FullPersonData$shammasLevel? shammasLevel;

  final Fragment$FullPersonData$state? state;

  final List<Fragment$Street>? streets;

  final Fragment$FullPersonData$studyYear? studyYear;

  final List<Fragment$FullPersonData$hobbies> hobbies;

  final List<Fragment$FullPersonData$tags> tags;

  final UuidValue? uid;

  final Fragment$FullPersonData$user? user;

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
    _resultData['lastCall'] = l$lastCall;
    final l$lastConfession = lastConfession;
    _resultData['lastConfession'] = l$lastConfession;
    final l$lastEdit = lastEdit;
    _resultData['lastEdit'] = l$lastEdit;
    final l$lastKodas = lastKodas;
    _resultData['lastKodas'] = l$lastKodas;
    final l$lastVisit = lastVisit;
    _resultData['lastVisit'] = l$lastVisit;
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
    if (!(other is Fragment$FullPersonData) ||
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

extension UtilityExtension$Fragment$FullPersonData on Fragment$FullPersonData {
  CopyWith$Fragment$FullPersonData<Fragment$FullPersonData> get copyWith =>
      CopyWith$Fragment$FullPersonData(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$FullPersonData<TRes> {
  factory CopyWith$Fragment$FullPersonData(
    Fragment$FullPersonData instance,
    TRes Function(Fragment$FullPersonData) then,
  ) = _CopyWithImpl$Fragment$FullPersonData;

  factory CopyWith$Fragment$FullPersonData.stub(TRes res) =
      _CopyWithStubImpl$Fragment$FullPersonData;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    DateTime? photoUpdatedAt,
    String? address,
    DateTime? birthdate,
    List<Fragment$Area>? areas,
    List<Fragment$Class>? classes,
    Fragment$FullPersonData$church? church,
    Fragment$FullPersonData$college? college,
    Fragment$Family? family,
    Fragment$FullPersonData$father? father,
    bool? gender,
    Map<String, dynamic>? geolocation,
    List<Fragment$FullPersonData$groups>? groups,
    bool? isServant,
    bool? isShammas,
    bool? isStudent,
    Fragment$FullPersonData$job? job,
    String? jobDescription,
    Json? lastCall,
    Json? lastConfession,
    Json? lastEdit,
    Json? lastKodas,
    Json? lastVisit,
    String? mainPhone,
    String? notes,
    Json? otherPhones,
    Fragment$FullPersonData$personType? personType,
    Fragment$FullPersonData$qualification? qualification,
    Fragment$FullPersonData$school? school,
    List<Fragment$FullPersonData$services>? services,
    Fragment$FullPersonData$shammasLevel? shammasLevel,
    Fragment$FullPersonData$state? state,
    List<Fragment$Street>? streets,
    Fragment$FullPersonData$studyYear? studyYear,
    List<Fragment$FullPersonData$hobbies>? hobbies,
    List<Fragment$FullPersonData$tags>? tags,
    UuidValue? uid,
    Fragment$FullPersonData$user? user,
  });
  TRes areas(
      Iterable<Fragment$Area>? Function(
              Iterable<CopyWith$Fragment$Area<Fragment$Area>>?)
          _fn);
  TRes classes(
      Iterable<Fragment$Class>? Function(
              Iterable<CopyWith$Fragment$Class<Fragment$Class>>?)
          _fn);
  CopyWith$Fragment$FullPersonData$church<TRes> get church;
  CopyWith$Fragment$FullPersonData$college<TRes> get college;
  CopyWith$Fragment$Family<TRes> get family;
  CopyWith$Fragment$FullPersonData$father<TRes> get father;
  TRes groups(
      Iterable<Fragment$FullPersonData$groups> Function(
              Iterable<
                  CopyWith$Fragment$FullPersonData$groups<
                      Fragment$FullPersonData$groups>>)
          _fn);
  CopyWith$Fragment$FullPersonData$job<TRes> get job;
  CopyWith$Fragment$FullPersonData$personType<TRes> get personType;
  CopyWith$Fragment$FullPersonData$qualification<TRes> get qualification;
  CopyWith$Fragment$FullPersonData$school<TRes> get school;
  TRes services(
      Iterable<Fragment$FullPersonData$services> Function(
              Iterable<
                  CopyWith$Fragment$FullPersonData$services<
                      Fragment$FullPersonData$services>>)
          _fn);
  CopyWith$Fragment$FullPersonData$shammasLevel<TRes> get shammasLevel;
  CopyWith$Fragment$FullPersonData$state<TRes> get state;
  TRes streets(
      Iterable<Fragment$Street>? Function(
              Iterable<CopyWith$Fragment$Street<Fragment$Street>>?)
          _fn);
  CopyWith$Fragment$FullPersonData$studyYear<TRes> get studyYear;
  TRes hobbies(
      Iterable<Fragment$FullPersonData$hobbies> Function(
              Iterable<
                  CopyWith$Fragment$FullPersonData$hobbies<
                      Fragment$FullPersonData$hobbies>>)
          _fn);
  TRes tags(
      Iterable<Fragment$FullPersonData$tags> Function(
              Iterable<
                  CopyWith$Fragment$FullPersonData$tags<
                      Fragment$FullPersonData$tags>>)
          _fn);
  CopyWith$Fragment$FullPersonData$user<TRes> get user;
}

class _CopyWithImpl$Fragment$FullPersonData<TRes>
    implements CopyWith$Fragment$FullPersonData<TRes> {
  _CopyWithImpl$Fragment$FullPersonData(
    this._instance,
    this._then,
  );

  final Fragment$FullPersonData _instance;

  final TRes Function(Fragment$FullPersonData) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
    Object? photoUpdatedAt = _undefined,
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
      _then(Fragment$FullPersonData(
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
        address:
            address == _undefined ? _instance.address : (address as String?),
        birthdate: birthdate == _undefined
            ? _instance.birthdate
            : (birthdate as DateTime?),
        areas: areas == _undefined
            ? _instance.areas
            : (areas as List<Fragment$Area>?),
        classes: classes == _undefined
            ? _instance.classes
            : (classes as List<Fragment$Class>?),
        church: church == _undefined
            ? _instance.church
            : (church as Fragment$FullPersonData$church?),
        college: college == _undefined
            ? _instance.college
            : (college as Fragment$FullPersonData$college?),
        family: family == _undefined
            ? _instance.family
            : (family as Fragment$Family?),
        father: father == _undefined
            ? _instance.father
            : (father as Fragment$FullPersonData$father?),
        gender: gender == _undefined || gender == null
            ? _instance.gender
            : (gender as bool),
        geolocation: geolocation == _undefined
            ? _instance.geolocation
            : (geolocation as Map<String, dynamic>?),
        groups: groups == _undefined || groups == null
            ? _instance.groups
            : (groups as List<Fragment$FullPersonData$groups>),
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
            : (job as Fragment$FullPersonData$job?),
        jobDescription: jobDescription == _undefined
            ? _instance.jobDescription
            : (jobDescription as String?),
        lastCall:
            lastCall == _undefined ? _instance.lastCall : (lastCall as Json?),
        lastConfession: lastConfession == _undefined
            ? _instance.lastConfession
            : (lastConfession as Json?),
        lastEdit:
            lastEdit == _undefined ? _instance.lastEdit : (lastEdit as Json?),
        lastKodas: lastKodas == _undefined
            ? _instance.lastKodas
            : (lastKodas as Json?),
        lastVisit: lastVisit == _undefined
            ? _instance.lastVisit
            : (lastVisit as Json?),
        mainPhone: mainPhone == _undefined
            ? _instance.mainPhone
            : (mainPhone as String?),
        notes: notes == _undefined ? _instance.notes : (notes as String?),
        otherPhones: otherPhones == _undefined || otherPhones == null
            ? _instance.otherPhones
            : (otherPhones as Json),
        personType: personType == _undefined
            ? _instance.personType
            : (personType as Fragment$FullPersonData$personType?),
        qualification: qualification == _undefined
            ? _instance.qualification
            : (qualification as Fragment$FullPersonData$qualification?),
        school: school == _undefined
            ? _instance.school
            : (school as Fragment$FullPersonData$school?),
        services: services == _undefined || services == null
            ? _instance.services
            : (services as List<Fragment$FullPersonData$services>),
        shammasLevel: shammasLevel == _undefined
            ? _instance.shammasLevel
            : (shammasLevel as Fragment$FullPersonData$shammasLevel?),
        state: state == _undefined
            ? _instance.state
            : (state as Fragment$FullPersonData$state?),
        streets: streets == _undefined
            ? _instance.streets
            : (streets as List<Fragment$Street>?),
        studyYear: studyYear == _undefined
            ? _instance.studyYear
            : (studyYear as Fragment$FullPersonData$studyYear?),
        hobbies: hobbies == _undefined || hobbies == null
            ? _instance.hobbies
            : (hobbies as List<Fragment$FullPersonData$hobbies>),
        tags: tags == _undefined || tags == null
            ? _instance.tags
            : (tags as List<Fragment$FullPersonData$tags>),
        uid: uid == _undefined ? _instance.uid : (uid as UuidValue?),
        user: user == _undefined
            ? _instance.user
            : (user as Fragment$FullPersonData$user?),
      ));
  TRes areas(
          Iterable<Fragment$Area>? Function(
                  Iterable<CopyWith$Fragment$Area<Fragment$Area>>?)
              _fn) =>
      call(
          areas: _fn(_instance.areas?.map((e) => CopyWith$Fragment$Area(
                e,
                (i) => i,
              )))?.toList());
  TRes classes(
          Iterable<Fragment$Class>? Function(
                  Iterable<CopyWith$Fragment$Class<Fragment$Class>>?)
              _fn) =>
      call(
          classes: _fn(_instance.classes?.map((e) => CopyWith$Fragment$Class(
                e,
                (i) => i,
              )))?.toList());
  CopyWith$Fragment$FullPersonData$church<TRes> get church {
    final local$church = _instance.church;
    return local$church == null
        ? CopyWith$Fragment$FullPersonData$church.stub(_then(_instance))
        : CopyWith$Fragment$FullPersonData$church(
            local$church, (e) => call(church: e));
  }

  CopyWith$Fragment$FullPersonData$college<TRes> get college {
    final local$college = _instance.college;
    return local$college == null
        ? CopyWith$Fragment$FullPersonData$college.stub(_then(_instance))
        : CopyWith$Fragment$FullPersonData$college(
            local$college, (e) => call(college: e));
  }

  CopyWith$Fragment$Family<TRes> get family {
    final local$family = _instance.family;
    return local$family == null
        ? CopyWith$Fragment$Family.stub(_then(_instance))
        : CopyWith$Fragment$Family(local$family, (e) => call(family: e));
  }

  CopyWith$Fragment$FullPersonData$father<TRes> get father {
    final local$father = _instance.father;
    return local$father == null
        ? CopyWith$Fragment$FullPersonData$father.stub(_then(_instance))
        : CopyWith$Fragment$FullPersonData$father(
            local$father, (e) => call(father: e));
  }

  TRes groups(
          Iterable<Fragment$FullPersonData$groups> Function(
                  Iterable<
                      CopyWith$Fragment$FullPersonData$groups<
                          Fragment$FullPersonData$groups>>)
              _fn) =>
      call(
          groups: _fn(_instance.groups
              .map((e) => CopyWith$Fragment$FullPersonData$groups(
                    e,
                    (i) => i,
                  ))).toList());
  CopyWith$Fragment$FullPersonData$job<TRes> get job {
    final local$job = _instance.job;
    return local$job == null
        ? CopyWith$Fragment$FullPersonData$job.stub(_then(_instance))
        : CopyWith$Fragment$FullPersonData$job(local$job, (e) => call(job: e));
  }

  CopyWith$Fragment$FullPersonData$personType<TRes> get personType {
    final local$personType = _instance.personType;
    return local$personType == null
        ? CopyWith$Fragment$FullPersonData$personType.stub(_then(_instance))
        : CopyWith$Fragment$FullPersonData$personType(
            local$personType, (e) => call(personType: e));
  }

  CopyWith$Fragment$FullPersonData$qualification<TRes> get qualification {
    final local$qualification = _instance.qualification;
    return local$qualification == null
        ? CopyWith$Fragment$FullPersonData$qualification.stub(_then(_instance))
        : CopyWith$Fragment$FullPersonData$qualification(
            local$qualification, (e) => call(qualification: e));
  }

  CopyWith$Fragment$FullPersonData$school<TRes> get school {
    final local$school = _instance.school;
    return local$school == null
        ? CopyWith$Fragment$FullPersonData$school.stub(_then(_instance))
        : CopyWith$Fragment$FullPersonData$school(
            local$school, (e) => call(school: e));
  }

  TRes services(
          Iterable<Fragment$FullPersonData$services> Function(
                  Iterable<
                      CopyWith$Fragment$FullPersonData$services<
                          Fragment$FullPersonData$services>>)
              _fn) =>
      call(
          services: _fn(_instance.services
              .map((e) => CopyWith$Fragment$FullPersonData$services(
                    e,
                    (i) => i,
                  ))).toList());
  CopyWith$Fragment$FullPersonData$shammasLevel<TRes> get shammasLevel {
    final local$shammasLevel = _instance.shammasLevel;
    return local$shammasLevel == null
        ? CopyWith$Fragment$FullPersonData$shammasLevel.stub(_then(_instance))
        : CopyWith$Fragment$FullPersonData$shammasLevel(
            local$shammasLevel, (e) => call(shammasLevel: e));
  }

  CopyWith$Fragment$FullPersonData$state<TRes> get state {
    final local$state = _instance.state;
    return local$state == null
        ? CopyWith$Fragment$FullPersonData$state.stub(_then(_instance))
        : CopyWith$Fragment$FullPersonData$state(
            local$state, (e) => call(state: e));
  }

  TRes streets(
          Iterable<Fragment$Street>? Function(
                  Iterable<CopyWith$Fragment$Street<Fragment$Street>>?)
              _fn) =>
      call(
          streets: _fn(_instance.streets?.map((e) => CopyWith$Fragment$Street(
                e,
                (i) => i,
              )))?.toList());
  CopyWith$Fragment$FullPersonData$studyYear<TRes> get studyYear {
    final local$studyYear = _instance.studyYear;
    return local$studyYear == null
        ? CopyWith$Fragment$FullPersonData$studyYear.stub(_then(_instance))
        : CopyWith$Fragment$FullPersonData$studyYear(
            local$studyYear, (e) => call(studyYear: e));
  }

  TRes hobbies(
          Iterable<Fragment$FullPersonData$hobbies> Function(
                  Iterable<
                      CopyWith$Fragment$FullPersonData$hobbies<
                          Fragment$FullPersonData$hobbies>>)
              _fn) =>
      call(
          hobbies: _fn(_instance.hobbies
              .map((e) => CopyWith$Fragment$FullPersonData$hobbies(
                    e,
                    (i) => i,
                  ))).toList());
  TRes tags(
          Iterable<Fragment$FullPersonData$tags> Function(
                  Iterable<
                      CopyWith$Fragment$FullPersonData$tags<
                          Fragment$FullPersonData$tags>>)
              _fn) =>
      call(
          tags: _fn(
              _instance.tags.map((e) => CopyWith$Fragment$FullPersonData$tags(
                    e,
                    (i) => i,
                  ))).toList());
  CopyWith$Fragment$FullPersonData$user<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Fragment$FullPersonData$user.stub(_then(_instance))
        : CopyWith$Fragment$FullPersonData$user(
            local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Fragment$FullPersonData<TRes>
    implements CopyWith$Fragment$FullPersonData<TRes> {
  _CopyWithStubImpl$Fragment$FullPersonData(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    DateTime? photoUpdatedAt,
    String? address,
    DateTime? birthdate,
    List<Fragment$Area>? areas,
    List<Fragment$Class>? classes,
    Fragment$FullPersonData$church? church,
    Fragment$FullPersonData$college? college,
    Fragment$Family? family,
    Fragment$FullPersonData$father? father,
    bool? gender,
    Map<String, dynamic>? geolocation,
    List<Fragment$FullPersonData$groups>? groups,
    bool? isServant,
    bool? isShammas,
    bool? isStudent,
    Fragment$FullPersonData$job? job,
    String? jobDescription,
    Json? lastCall,
    Json? lastConfession,
    Json? lastEdit,
    Json? lastKodas,
    Json? lastVisit,
    String? mainPhone,
    String? notes,
    Json? otherPhones,
    Fragment$FullPersonData$personType? personType,
    Fragment$FullPersonData$qualification? qualification,
    Fragment$FullPersonData$school? school,
    List<Fragment$FullPersonData$services>? services,
    Fragment$FullPersonData$shammasLevel? shammasLevel,
    Fragment$FullPersonData$state? state,
    List<Fragment$Street>? streets,
    Fragment$FullPersonData$studyYear? studyYear,
    List<Fragment$FullPersonData$hobbies>? hobbies,
    List<Fragment$FullPersonData$tags>? tags,
    UuidValue? uid,
    Fragment$FullPersonData$user? user,
  }) =>
      _res;
  areas(_fn) => _res;
  classes(_fn) => _res;
  CopyWith$Fragment$FullPersonData$church<TRes> get church =>
      CopyWith$Fragment$FullPersonData$church.stub(_res);
  CopyWith$Fragment$FullPersonData$college<TRes> get college =>
      CopyWith$Fragment$FullPersonData$college.stub(_res);
  CopyWith$Fragment$Family<TRes> get family =>
      CopyWith$Fragment$Family.stub(_res);
  CopyWith$Fragment$FullPersonData$father<TRes> get father =>
      CopyWith$Fragment$FullPersonData$father.stub(_res);
  groups(_fn) => _res;
  CopyWith$Fragment$FullPersonData$job<TRes> get job =>
      CopyWith$Fragment$FullPersonData$job.stub(_res);
  CopyWith$Fragment$FullPersonData$personType<TRes> get personType =>
      CopyWith$Fragment$FullPersonData$personType.stub(_res);
  CopyWith$Fragment$FullPersonData$qualification<TRes> get qualification =>
      CopyWith$Fragment$FullPersonData$qualification.stub(_res);
  CopyWith$Fragment$FullPersonData$school<TRes> get school =>
      CopyWith$Fragment$FullPersonData$school.stub(_res);
  services(_fn) => _res;
  CopyWith$Fragment$FullPersonData$shammasLevel<TRes> get shammasLevel =>
      CopyWith$Fragment$FullPersonData$shammasLevel.stub(_res);
  CopyWith$Fragment$FullPersonData$state<TRes> get state =>
      CopyWith$Fragment$FullPersonData$state.stub(_res);
  streets(_fn) => _res;
  CopyWith$Fragment$FullPersonData$studyYear<TRes> get studyYear =>
      CopyWith$Fragment$FullPersonData$studyYear.stub(_res);
  hobbies(_fn) => _res;
  tags(_fn) => _res;
  CopyWith$Fragment$FullPersonData$user<TRes> get user =>
      CopyWith$Fragment$FullPersonData$user.stub(_res);
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
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'lastConfession'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'lastEdit'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'lastKodas'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'lastVisit'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
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
              name: NameNode(value: 'Service'),
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
  fragmentDefinitionService,
  fragmentDefinitionServiceNoPhoto,
  fragmentDefinitionStreet,
  fragmentDefinitionStreetNoPhoto,
]);

class Fragment$FullPersonData$church {
  Fragment$FullPersonData$church({
    required this.id,
    required this.name,
    this.$__typename = 'Churches',
  });

  factory Fragment$FullPersonData$church.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Fragment$FullPersonData$church(
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
    if (!(other is Fragment$FullPersonData$church) ||
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

extension UtilityExtension$Fragment$FullPersonData$church
    on Fragment$FullPersonData$church {
  CopyWith$Fragment$FullPersonData$church<Fragment$FullPersonData$church>
      get copyWith => CopyWith$Fragment$FullPersonData$church(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$FullPersonData$church<TRes> {
  factory CopyWith$Fragment$FullPersonData$church(
    Fragment$FullPersonData$church instance,
    TRes Function(Fragment$FullPersonData$church) then,
  ) = _CopyWithImpl$Fragment$FullPersonData$church;

  factory CopyWith$Fragment$FullPersonData$church.stub(TRes res) =
      _CopyWithStubImpl$Fragment$FullPersonData$church;

  TRes call({
    UuidValue? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$FullPersonData$church<TRes>
    implements CopyWith$Fragment$FullPersonData$church<TRes> {
  _CopyWithImpl$Fragment$FullPersonData$church(
    this._instance,
    this._then,
  );

  final Fragment$FullPersonData$church _instance;

  final TRes Function(Fragment$FullPersonData$church) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$FullPersonData$church(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$FullPersonData$church<TRes>
    implements CopyWith$Fragment$FullPersonData$church<TRes> {
  _CopyWithStubImpl$Fragment$FullPersonData$church(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$FullPersonData$college {
  Fragment$FullPersonData$college({
    required this.id,
    required this.name,
    this.$__typename = 'Colleges',
  });

  factory Fragment$FullPersonData$college.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Fragment$FullPersonData$college(
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
    if (!(other is Fragment$FullPersonData$college) ||
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

extension UtilityExtension$Fragment$FullPersonData$college
    on Fragment$FullPersonData$college {
  CopyWith$Fragment$FullPersonData$college<Fragment$FullPersonData$college>
      get copyWith => CopyWith$Fragment$FullPersonData$college(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$FullPersonData$college<TRes> {
  factory CopyWith$Fragment$FullPersonData$college(
    Fragment$FullPersonData$college instance,
    TRes Function(Fragment$FullPersonData$college) then,
  ) = _CopyWithImpl$Fragment$FullPersonData$college;

  factory CopyWith$Fragment$FullPersonData$college.stub(TRes res) =
      _CopyWithStubImpl$Fragment$FullPersonData$college;

  TRes call({
    UuidValue? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$FullPersonData$college<TRes>
    implements CopyWith$Fragment$FullPersonData$college<TRes> {
  _CopyWithImpl$Fragment$FullPersonData$college(
    this._instance,
    this._then,
  );

  final Fragment$FullPersonData$college _instance;

  final TRes Function(Fragment$FullPersonData$college) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$FullPersonData$college(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$FullPersonData$college<TRes>
    implements CopyWith$Fragment$FullPersonData$college<TRes> {
  _CopyWithStubImpl$Fragment$FullPersonData$college(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$FullPersonData$father {
  Fragment$FullPersonData$father({
    required this.id,
    required this.name,
    this.church,
    this.$__typename = 'Fathers',
  });

  factory Fragment$FullPersonData$father.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$church = json['church'];
    final l$$__typename = json['__typename'];
    return Fragment$FullPersonData$father(
      id: stringToUuid(l$id),
      name: (l$name as String),
      church: l$church == null
          ? null
          : Fragment$FullPersonData$father$church.fromJson(
              (l$church as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final String name;

  final Fragment$FullPersonData$father$church? church;

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
    if (!(other is Fragment$FullPersonData$father) ||
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

extension UtilityExtension$Fragment$FullPersonData$father
    on Fragment$FullPersonData$father {
  CopyWith$Fragment$FullPersonData$father<Fragment$FullPersonData$father>
      get copyWith => CopyWith$Fragment$FullPersonData$father(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$FullPersonData$father<TRes> {
  factory CopyWith$Fragment$FullPersonData$father(
    Fragment$FullPersonData$father instance,
    TRes Function(Fragment$FullPersonData$father) then,
  ) = _CopyWithImpl$Fragment$FullPersonData$father;

  factory CopyWith$Fragment$FullPersonData$father.stub(TRes res) =
      _CopyWithStubImpl$Fragment$FullPersonData$father;

  TRes call({
    UuidValue? id,
    String? name,
    Fragment$FullPersonData$father$church? church,
    String? $__typename,
  });
  CopyWith$Fragment$FullPersonData$father$church<TRes> get church;
}

class _CopyWithImpl$Fragment$FullPersonData$father<TRes>
    implements CopyWith$Fragment$FullPersonData$father<TRes> {
  _CopyWithImpl$Fragment$FullPersonData$father(
    this._instance,
    this._then,
  );

  final Fragment$FullPersonData$father _instance;

  final TRes Function(Fragment$FullPersonData$father) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? church = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$FullPersonData$father(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        church: church == _undefined
            ? _instance.church
            : (church as Fragment$FullPersonData$father$church?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$FullPersonData$father$church<TRes> get church {
    final local$church = _instance.church;
    return local$church == null
        ? CopyWith$Fragment$FullPersonData$father$church.stub(_then(_instance))
        : CopyWith$Fragment$FullPersonData$father$church(
            local$church, (e) => call(church: e));
  }
}

class _CopyWithStubImpl$Fragment$FullPersonData$father<TRes>
    implements CopyWith$Fragment$FullPersonData$father<TRes> {
  _CopyWithStubImpl$Fragment$FullPersonData$father(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    Fragment$FullPersonData$father$church? church,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$FullPersonData$father$church<TRes> get church =>
      CopyWith$Fragment$FullPersonData$father$church.stub(_res);
}

class Fragment$FullPersonData$father$church {
  Fragment$FullPersonData$father$church({
    required this.id,
    required this.name,
    this.$__typename = 'Churches',
  });

  factory Fragment$FullPersonData$father$church.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Fragment$FullPersonData$father$church(
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
    if (!(other is Fragment$FullPersonData$father$church) ||
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

extension UtilityExtension$Fragment$FullPersonData$father$church
    on Fragment$FullPersonData$father$church {
  CopyWith$Fragment$FullPersonData$father$church<
          Fragment$FullPersonData$father$church>
      get copyWith => CopyWith$Fragment$FullPersonData$father$church(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$FullPersonData$father$church<TRes> {
  factory CopyWith$Fragment$FullPersonData$father$church(
    Fragment$FullPersonData$father$church instance,
    TRes Function(Fragment$FullPersonData$father$church) then,
  ) = _CopyWithImpl$Fragment$FullPersonData$father$church;

  factory CopyWith$Fragment$FullPersonData$father$church.stub(TRes res) =
      _CopyWithStubImpl$Fragment$FullPersonData$father$church;

  TRes call({
    UuidValue? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$FullPersonData$father$church<TRes>
    implements CopyWith$Fragment$FullPersonData$father$church<TRes> {
  _CopyWithImpl$Fragment$FullPersonData$father$church(
    this._instance,
    this._then,
  );

  final Fragment$FullPersonData$father$church _instance;

  final TRes Function(Fragment$FullPersonData$father$church) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$FullPersonData$father$church(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$FullPersonData$father$church<TRes>
    implements CopyWith$Fragment$FullPersonData$father$church<TRes> {
  _CopyWithStubImpl$Fragment$FullPersonData$father$church(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$FullPersonData$groups {
  Fragment$FullPersonData$groups({
    required this.group,
    this.$__typename = 'PersonsGroups',
  });

  factory Fragment$FullPersonData$groups.fromJson(Map<String, dynamic> json) {
    final l$group = json['group'];
    final l$$__typename = json['__typename'];
    return Fragment$FullPersonData$groups(
      group: Fragment$Group.fromJson((l$group as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$Group group;

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
    if (!(other is Fragment$FullPersonData$groups) ||
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

extension UtilityExtension$Fragment$FullPersonData$groups
    on Fragment$FullPersonData$groups {
  CopyWith$Fragment$FullPersonData$groups<Fragment$FullPersonData$groups>
      get copyWith => CopyWith$Fragment$FullPersonData$groups(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$FullPersonData$groups<TRes> {
  factory CopyWith$Fragment$FullPersonData$groups(
    Fragment$FullPersonData$groups instance,
    TRes Function(Fragment$FullPersonData$groups) then,
  ) = _CopyWithImpl$Fragment$FullPersonData$groups;

  factory CopyWith$Fragment$FullPersonData$groups.stub(TRes res) =
      _CopyWithStubImpl$Fragment$FullPersonData$groups;

  TRes call({
    Fragment$Group? group,
    String? $__typename,
  });
  CopyWith$Fragment$Group<TRes> get group;
}

class _CopyWithImpl$Fragment$FullPersonData$groups<TRes>
    implements CopyWith$Fragment$FullPersonData$groups<TRes> {
  _CopyWithImpl$Fragment$FullPersonData$groups(
    this._instance,
    this._then,
  );

  final Fragment$FullPersonData$groups _instance;

  final TRes Function(Fragment$FullPersonData$groups) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? group = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$FullPersonData$groups(
        group: group == _undefined || group == null
            ? _instance.group
            : (group as Fragment$Group),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$Group<TRes> get group {
    final local$group = _instance.group;
    return CopyWith$Fragment$Group(local$group, (e) => call(group: e));
  }
}

class _CopyWithStubImpl$Fragment$FullPersonData$groups<TRes>
    implements CopyWith$Fragment$FullPersonData$groups<TRes> {
  _CopyWithStubImpl$Fragment$FullPersonData$groups(this._res);

  TRes _res;

  call({
    Fragment$Group? group,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$Group<TRes> get group => CopyWith$Fragment$Group.stub(_res);
}

class Fragment$FullPersonData$job {
  Fragment$FullPersonData$job({
    required this.id,
    required this.name,
    this.$__typename = 'Jobs',
  });

  factory Fragment$FullPersonData$job.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Fragment$FullPersonData$job(
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
    if (!(other is Fragment$FullPersonData$job) ||
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

extension UtilityExtension$Fragment$FullPersonData$job
    on Fragment$FullPersonData$job {
  CopyWith$Fragment$FullPersonData$job<Fragment$FullPersonData$job>
      get copyWith => CopyWith$Fragment$FullPersonData$job(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$FullPersonData$job<TRes> {
  factory CopyWith$Fragment$FullPersonData$job(
    Fragment$FullPersonData$job instance,
    TRes Function(Fragment$FullPersonData$job) then,
  ) = _CopyWithImpl$Fragment$FullPersonData$job;

  factory CopyWith$Fragment$FullPersonData$job.stub(TRes res) =
      _CopyWithStubImpl$Fragment$FullPersonData$job;

  TRes call({
    UuidValue? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$FullPersonData$job<TRes>
    implements CopyWith$Fragment$FullPersonData$job<TRes> {
  _CopyWithImpl$Fragment$FullPersonData$job(
    this._instance,
    this._then,
  );

  final Fragment$FullPersonData$job _instance;

  final TRes Function(Fragment$FullPersonData$job) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$FullPersonData$job(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$FullPersonData$job<TRes>
    implements CopyWith$Fragment$FullPersonData$job<TRes> {
  _CopyWithStubImpl$Fragment$FullPersonData$job(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$FullPersonData$personType {
  Fragment$FullPersonData$personType({
    required this.id,
    required this.name,
    this.$__typename = 'PersonTypes',
  });

  factory Fragment$FullPersonData$personType.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Fragment$FullPersonData$personType(
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
    if (!(other is Fragment$FullPersonData$personType) ||
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

extension UtilityExtension$Fragment$FullPersonData$personType
    on Fragment$FullPersonData$personType {
  CopyWith$Fragment$FullPersonData$personType<
          Fragment$FullPersonData$personType>
      get copyWith => CopyWith$Fragment$FullPersonData$personType(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$FullPersonData$personType<TRes> {
  factory CopyWith$Fragment$FullPersonData$personType(
    Fragment$FullPersonData$personType instance,
    TRes Function(Fragment$FullPersonData$personType) then,
  ) = _CopyWithImpl$Fragment$FullPersonData$personType;

  factory CopyWith$Fragment$FullPersonData$personType.stub(TRes res) =
      _CopyWithStubImpl$Fragment$FullPersonData$personType;

  TRes call({
    UuidValue? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$FullPersonData$personType<TRes>
    implements CopyWith$Fragment$FullPersonData$personType<TRes> {
  _CopyWithImpl$Fragment$FullPersonData$personType(
    this._instance,
    this._then,
  );

  final Fragment$FullPersonData$personType _instance;

  final TRes Function(Fragment$FullPersonData$personType) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$FullPersonData$personType(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$FullPersonData$personType<TRes>
    implements CopyWith$Fragment$FullPersonData$personType<TRes> {
  _CopyWithStubImpl$Fragment$FullPersonData$personType(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$FullPersonData$qualification {
  Fragment$FullPersonData$qualification({
    required this.id,
    required this.name,
    this.$__typename = 'Qualifications',
  });

  factory Fragment$FullPersonData$qualification.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Fragment$FullPersonData$qualification(
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
    if (!(other is Fragment$FullPersonData$qualification) ||
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

extension UtilityExtension$Fragment$FullPersonData$qualification
    on Fragment$FullPersonData$qualification {
  CopyWith$Fragment$FullPersonData$qualification<
          Fragment$FullPersonData$qualification>
      get copyWith => CopyWith$Fragment$FullPersonData$qualification(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$FullPersonData$qualification<TRes> {
  factory CopyWith$Fragment$FullPersonData$qualification(
    Fragment$FullPersonData$qualification instance,
    TRes Function(Fragment$FullPersonData$qualification) then,
  ) = _CopyWithImpl$Fragment$FullPersonData$qualification;

  factory CopyWith$Fragment$FullPersonData$qualification.stub(TRes res) =
      _CopyWithStubImpl$Fragment$FullPersonData$qualification;

  TRes call({
    UuidValue? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$FullPersonData$qualification<TRes>
    implements CopyWith$Fragment$FullPersonData$qualification<TRes> {
  _CopyWithImpl$Fragment$FullPersonData$qualification(
    this._instance,
    this._then,
  );

  final Fragment$FullPersonData$qualification _instance;

  final TRes Function(Fragment$FullPersonData$qualification) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$FullPersonData$qualification(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$FullPersonData$qualification<TRes>
    implements CopyWith$Fragment$FullPersonData$qualification<TRes> {
  _CopyWithStubImpl$Fragment$FullPersonData$qualification(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$FullPersonData$school {
  Fragment$FullPersonData$school({
    required this.id,
    required this.name,
    this.$__typename = 'Schools',
  });

  factory Fragment$FullPersonData$school.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Fragment$FullPersonData$school(
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
    if (!(other is Fragment$FullPersonData$school) ||
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

extension UtilityExtension$Fragment$FullPersonData$school
    on Fragment$FullPersonData$school {
  CopyWith$Fragment$FullPersonData$school<Fragment$FullPersonData$school>
      get copyWith => CopyWith$Fragment$FullPersonData$school(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$FullPersonData$school<TRes> {
  factory CopyWith$Fragment$FullPersonData$school(
    Fragment$FullPersonData$school instance,
    TRes Function(Fragment$FullPersonData$school) then,
  ) = _CopyWithImpl$Fragment$FullPersonData$school;

  factory CopyWith$Fragment$FullPersonData$school.stub(TRes res) =
      _CopyWithStubImpl$Fragment$FullPersonData$school;

  TRes call({
    UuidValue? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$FullPersonData$school<TRes>
    implements CopyWith$Fragment$FullPersonData$school<TRes> {
  _CopyWithImpl$Fragment$FullPersonData$school(
    this._instance,
    this._then,
  );

  final Fragment$FullPersonData$school _instance;

  final TRes Function(Fragment$FullPersonData$school) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$FullPersonData$school(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$FullPersonData$school<TRes>
    implements CopyWith$Fragment$FullPersonData$school<TRes> {
  _CopyWithStubImpl$Fragment$FullPersonData$school(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$FullPersonData$services {
  Fragment$FullPersonData$services({
    required this.service,
    this.$__typename = 'PersonsServices',
  });

  factory Fragment$FullPersonData$services.fromJson(Map<String, dynamic> json) {
    final l$service = json['service'];
    final l$$__typename = json['__typename'];
    return Fragment$FullPersonData$services(
      service: Fragment$Service.fromJson((l$service as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$Service service;

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
    if (!(other is Fragment$FullPersonData$services) ||
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

extension UtilityExtension$Fragment$FullPersonData$services
    on Fragment$FullPersonData$services {
  CopyWith$Fragment$FullPersonData$services<Fragment$FullPersonData$services>
      get copyWith => CopyWith$Fragment$FullPersonData$services(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$FullPersonData$services<TRes> {
  factory CopyWith$Fragment$FullPersonData$services(
    Fragment$FullPersonData$services instance,
    TRes Function(Fragment$FullPersonData$services) then,
  ) = _CopyWithImpl$Fragment$FullPersonData$services;

  factory CopyWith$Fragment$FullPersonData$services.stub(TRes res) =
      _CopyWithStubImpl$Fragment$FullPersonData$services;

  TRes call({
    Fragment$Service? service,
    String? $__typename,
  });
  CopyWith$Fragment$Service<TRes> get service;
}

class _CopyWithImpl$Fragment$FullPersonData$services<TRes>
    implements CopyWith$Fragment$FullPersonData$services<TRes> {
  _CopyWithImpl$Fragment$FullPersonData$services(
    this._instance,
    this._then,
  );

  final Fragment$FullPersonData$services _instance;

  final TRes Function(Fragment$FullPersonData$services) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? service = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$FullPersonData$services(
        service: service == _undefined || service == null
            ? _instance.service
            : (service as Fragment$Service),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$Service<TRes> get service {
    final local$service = _instance.service;
    return CopyWith$Fragment$Service(local$service, (e) => call(service: e));
  }
}

class _CopyWithStubImpl$Fragment$FullPersonData$services<TRes>
    implements CopyWith$Fragment$FullPersonData$services<TRes> {
  _CopyWithStubImpl$Fragment$FullPersonData$services(this._res);

  TRes _res;

  call({
    Fragment$Service? service,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$Service<TRes> get service =>
      CopyWith$Fragment$Service.stub(_res);
}

class Fragment$FullPersonData$shammasLevel {
  Fragment$FullPersonData$shammasLevel({
    required this.id,
    required this.name,
    required this.order,
    this.$__typename = 'ShammasLevels',
  });

  factory Fragment$FullPersonData$shammasLevel.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$order = json['order'];
    final l$$__typename = json['__typename'];
    return Fragment$FullPersonData$shammasLevel(
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
    if (!(other is Fragment$FullPersonData$shammasLevel) ||
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

extension UtilityExtension$Fragment$FullPersonData$shammasLevel
    on Fragment$FullPersonData$shammasLevel {
  CopyWith$Fragment$FullPersonData$shammasLevel<
          Fragment$FullPersonData$shammasLevel>
      get copyWith => CopyWith$Fragment$FullPersonData$shammasLevel(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$FullPersonData$shammasLevel<TRes> {
  factory CopyWith$Fragment$FullPersonData$shammasLevel(
    Fragment$FullPersonData$shammasLevel instance,
    TRes Function(Fragment$FullPersonData$shammasLevel) then,
  ) = _CopyWithImpl$Fragment$FullPersonData$shammasLevel;

  factory CopyWith$Fragment$FullPersonData$shammasLevel.stub(TRes res) =
      _CopyWithStubImpl$Fragment$FullPersonData$shammasLevel;

  TRes call({
    UuidValue? id,
    String? name,
    int? order,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$FullPersonData$shammasLevel<TRes>
    implements CopyWith$Fragment$FullPersonData$shammasLevel<TRes> {
  _CopyWithImpl$Fragment$FullPersonData$shammasLevel(
    this._instance,
    this._then,
  );

  final Fragment$FullPersonData$shammasLevel _instance;

  final TRes Function(Fragment$FullPersonData$shammasLevel) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? order = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$FullPersonData$shammasLevel(
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

class _CopyWithStubImpl$Fragment$FullPersonData$shammasLevel<TRes>
    implements CopyWith$Fragment$FullPersonData$shammasLevel<TRes> {
  _CopyWithStubImpl$Fragment$FullPersonData$shammasLevel(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? order,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$FullPersonData$state {
  Fragment$FullPersonData$state({
    required this.id,
    required this.color,
    required this.name,
    this.$__typename = 'PersonStates',
  });

  factory Fragment$FullPersonData$state.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$color = json['color'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Fragment$FullPersonData$state(
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
    if (!(other is Fragment$FullPersonData$state) ||
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

extension UtilityExtension$Fragment$FullPersonData$state
    on Fragment$FullPersonData$state {
  CopyWith$Fragment$FullPersonData$state<Fragment$FullPersonData$state>
      get copyWith => CopyWith$Fragment$FullPersonData$state(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$FullPersonData$state<TRes> {
  factory CopyWith$Fragment$FullPersonData$state(
    Fragment$FullPersonData$state instance,
    TRes Function(Fragment$FullPersonData$state) then,
  ) = _CopyWithImpl$Fragment$FullPersonData$state;

  factory CopyWith$Fragment$FullPersonData$state.stub(TRes res) =
      _CopyWithStubImpl$Fragment$FullPersonData$state;

  TRes call({
    UuidValue? id,
    int? color,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$FullPersonData$state<TRes>
    implements CopyWith$Fragment$FullPersonData$state<TRes> {
  _CopyWithImpl$Fragment$FullPersonData$state(
    this._instance,
    this._then,
  );

  final Fragment$FullPersonData$state _instance;

  final TRes Function(Fragment$FullPersonData$state) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? color = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$FullPersonData$state(
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

class _CopyWithStubImpl$Fragment$FullPersonData$state<TRes>
    implements CopyWith$Fragment$FullPersonData$state<TRes> {
  _CopyWithStubImpl$Fragment$FullPersonData$state(this._res);

  TRes _res;

  call({
    UuidValue? id,
    int? color,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$FullPersonData$studyYear {
  Fragment$FullPersonData$studyYear({
    required this.name,
    required this.order,
    this.$__typename = 'StudyYears',
  });

  factory Fragment$FullPersonData$studyYear.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$order = json['order'];
    final l$$__typename = json['__typename'];
    return Fragment$FullPersonData$studyYear(
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
    if (!(other is Fragment$FullPersonData$studyYear) ||
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

extension UtilityExtension$Fragment$FullPersonData$studyYear
    on Fragment$FullPersonData$studyYear {
  CopyWith$Fragment$FullPersonData$studyYear<Fragment$FullPersonData$studyYear>
      get copyWith => CopyWith$Fragment$FullPersonData$studyYear(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$FullPersonData$studyYear<TRes> {
  factory CopyWith$Fragment$FullPersonData$studyYear(
    Fragment$FullPersonData$studyYear instance,
    TRes Function(Fragment$FullPersonData$studyYear) then,
  ) = _CopyWithImpl$Fragment$FullPersonData$studyYear;

  factory CopyWith$Fragment$FullPersonData$studyYear.stub(TRes res) =
      _CopyWithStubImpl$Fragment$FullPersonData$studyYear;

  TRes call({
    String? name,
    int? order,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$FullPersonData$studyYear<TRes>
    implements CopyWith$Fragment$FullPersonData$studyYear<TRes> {
  _CopyWithImpl$Fragment$FullPersonData$studyYear(
    this._instance,
    this._then,
  );

  final Fragment$FullPersonData$studyYear _instance;

  final TRes Function(Fragment$FullPersonData$studyYear) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? order = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$FullPersonData$studyYear(
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

class _CopyWithStubImpl$Fragment$FullPersonData$studyYear<TRes>
    implements CopyWith$Fragment$FullPersonData$studyYear<TRes> {
  _CopyWithStubImpl$Fragment$FullPersonData$studyYear(this._res);

  TRes _res;

  call({
    String? name,
    int? order,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$FullPersonData$hobbies {
  Fragment$FullPersonData$hobbies({
    required this.hobby,
    this.$__typename = 'PersonsHobbies',
  });

  factory Fragment$FullPersonData$hobbies.fromJson(Map<String, dynamic> json) {
    final l$hobby = json['hobby'];
    final l$$__typename = json['__typename'];
    return Fragment$FullPersonData$hobbies(
      hobby: Fragment$FullPersonData$hobbies$hobby.fromJson(
          (l$hobby as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$FullPersonData$hobbies$hobby hobby;

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
    if (!(other is Fragment$FullPersonData$hobbies) ||
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

extension UtilityExtension$Fragment$FullPersonData$hobbies
    on Fragment$FullPersonData$hobbies {
  CopyWith$Fragment$FullPersonData$hobbies<Fragment$FullPersonData$hobbies>
      get copyWith => CopyWith$Fragment$FullPersonData$hobbies(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$FullPersonData$hobbies<TRes> {
  factory CopyWith$Fragment$FullPersonData$hobbies(
    Fragment$FullPersonData$hobbies instance,
    TRes Function(Fragment$FullPersonData$hobbies) then,
  ) = _CopyWithImpl$Fragment$FullPersonData$hobbies;

  factory CopyWith$Fragment$FullPersonData$hobbies.stub(TRes res) =
      _CopyWithStubImpl$Fragment$FullPersonData$hobbies;

  TRes call({
    Fragment$FullPersonData$hobbies$hobby? hobby,
    String? $__typename,
  });
  CopyWith$Fragment$FullPersonData$hobbies$hobby<TRes> get hobby;
}

class _CopyWithImpl$Fragment$FullPersonData$hobbies<TRes>
    implements CopyWith$Fragment$FullPersonData$hobbies<TRes> {
  _CopyWithImpl$Fragment$FullPersonData$hobbies(
    this._instance,
    this._then,
  );

  final Fragment$FullPersonData$hobbies _instance;

  final TRes Function(Fragment$FullPersonData$hobbies) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hobby = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$FullPersonData$hobbies(
        hobby: hobby == _undefined || hobby == null
            ? _instance.hobby
            : (hobby as Fragment$FullPersonData$hobbies$hobby),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$FullPersonData$hobbies$hobby<TRes> get hobby {
    final local$hobby = _instance.hobby;
    return CopyWith$Fragment$FullPersonData$hobbies$hobby(
        local$hobby, (e) => call(hobby: e));
  }
}

class _CopyWithStubImpl$Fragment$FullPersonData$hobbies<TRes>
    implements CopyWith$Fragment$FullPersonData$hobbies<TRes> {
  _CopyWithStubImpl$Fragment$FullPersonData$hobbies(this._res);

  TRes _res;

  call({
    Fragment$FullPersonData$hobbies$hobby? hobby,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$FullPersonData$hobbies$hobby<TRes> get hobby =>
      CopyWith$Fragment$FullPersonData$hobbies$hobby.stub(_res);
}

class Fragment$FullPersonData$hobbies$hobby {
  Fragment$FullPersonData$hobbies$hobby({
    required this.id,
    required this.name,
    this.color,
    this.$__typename = 'Hobbies',
  });

  factory Fragment$FullPersonData$hobbies$hobby.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    return Fragment$FullPersonData$hobbies$hobby(
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
    if (!(other is Fragment$FullPersonData$hobbies$hobby) ||
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

extension UtilityExtension$Fragment$FullPersonData$hobbies$hobby
    on Fragment$FullPersonData$hobbies$hobby {
  CopyWith$Fragment$FullPersonData$hobbies$hobby<
          Fragment$FullPersonData$hobbies$hobby>
      get copyWith => CopyWith$Fragment$FullPersonData$hobbies$hobby(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$FullPersonData$hobbies$hobby<TRes> {
  factory CopyWith$Fragment$FullPersonData$hobbies$hobby(
    Fragment$FullPersonData$hobbies$hobby instance,
    TRes Function(Fragment$FullPersonData$hobbies$hobby) then,
  ) = _CopyWithImpl$Fragment$FullPersonData$hobbies$hobby;

  factory CopyWith$Fragment$FullPersonData$hobbies$hobby.stub(TRes res) =
      _CopyWithStubImpl$Fragment$FullPersonData$hobbies$hobby;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$FullPersonData$hobbies$hobby<TRes>
    implements CopyWith$Fragment$FullPersonData$hobbies$hobby<TRes> {
  _CopyWithImpl$Fragment$FullPersonData$hobbies$hobby(
    this._instance,
    this._then,
  );

  final Fragment$FullPersonData$hobbies$hobby _instance;

  final TRes Function(Fragment$FullPersonData$hobbies$hobby) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$FullPersonData$hobbies$hobby(
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

class _CopyWithStubImpl$Fragment$FullPersonData$hobbies$hobby<TRes>
    implements CopyWith$Fragment$FullPersonData$hobbies$hobby<TRes> {
  _CopyWithStubImpl$Fragment$FullPersonData$hobbies$hobby(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$FullPersonData$tags {
  Fragment$FullPersonData$tags({
    required this.tag,
    this.$__typename = 'PersonsTags',
  });

  factory Fragment$FullPersonData$tags.fromJson(Map<String, dynamic> json) {
    final l$tag = json['tag'];
    final l$$__typename = json['__typename'];
    return Fragment$FullPersonData$tags(
      tag: Fragment$FullPersonData$tags$tag.fromJson(
          (l$tag as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$FullPersonData$tags$tag tag;

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
    if (!(other is Fragment$FullPersonData$tags) ||
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

extension UtilityExtension$Fragment$FullPersonData$tags
    on Fragment$FullPersonData$tags {
  CopyWith$Fragment$FullPersonData$tags<Fragment$FullPersonData$tags>
      get copyWith => CopyWith$Fragment$FullPersonData$tags(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$FullPersonData$tags<TRes> {
  factory CopyWith$Fragment$FullPersonData$tags(
    Fragment$FullPersonData$tags instance,
    TRes Function(Fragment$FullPersonData$tags) then,
  ) = _CopyWithImpl$Fragment$FullPersonData$tags;

  factory CopyWith$Fragment$FullPersonData$tags.stub(TRes res) =
      _CopyWithStubImpl$Fragment$FullPersonData$tags;

  TRes call({
    Fragment$FullPersonData$tags$tag? tag,
    String? $__typename,
  });
  CopyWith$Fragment$FullPersonData$tags$tag<TRes> get tag;
}

class _CopyWithImpl$Fragment$FullPersonData$tags<TRes>
    implements CopyWith$Fragment$FullPersonData$tags<TRes> {
  _CopyWithImpl$Fragment$FullPersonData$tags(
    this._instance,
    this._then,
  );

  final Fragment$FullPersonData$tags _instance;

  final TRes Function(Fragment$FullPersonData$tags) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? tag = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$FullPersonData$tags(
        tag: tag == _undefined || tag == null
            ? _instance.tag
            : (tag as Fragment$FullPersonData$tags$tag),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$FullPersonData$tags$tag<TRes> get tag {
    final local$tag = _instance.tag;
    return CopyWith$Fragment$FullPersonData$tags$tag(
        local$tag, (e) => call(tag: e));
  }
}

class _CopyWithStubImpl$Fragment$FullPersonData$tags<TRes>
    implements CopyWith$Fragment$FullPersonData$tags<TRes> {
  _CopyWithStubImpl$Fragment$FullPersonData$tags(this._res);

  TRes _res;

  call({
    Fragment$FullPersonData$tags$tag? tag,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$FullPersonData$tags$tag<TRes> get tag =>
      CopyWith$Fragment$FullPersonData$tags$tag.stub(_res);
}

class Fragment$FullPersonData$tags$tag {
  Fragment$FullPersonData$tags$tag({
    required this.id,
    required this.name,
    this.color,
    this.$__typename = 'Tags',
  });

  factory Fragment$FullPersonData$tags$tag.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    return Fragment$FullPersonData$tags$tag(
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
    if (!(other is Fragment$FullPersonData$tags$tag) ||
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

extension UtilityExtension$Fragment$FullPersonData$tags$tag
    on Fragment$FullPersonData$tags$tag {
  CopyWith$Fragment$FullPersonData$tags$tag<Fragment$FullPersonData$tags$tag>
      get copyWith => CopyWith$Fragment$FullPersonData$tags$tag(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$FullPersonData$tags$tag<TRes> {
  factory CopyWith$Fragment$FullPersonData$tags$tag(
    Fragment$FullPersonData$tags$tag instance,
    TRes Function(Fragment$FullPersonData$tags$tag) then,
  ) = _CopyWithImpl$Fragment$FullPersonData$tags$tag;

  factory CopyWith$Fragment$FullPersonData$tags$tag.stub(TRes res) =
      _CopyWithStubImpl$Fragment$FullPersonData$tags$tag;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$FullPersonData$tags$tag<TRes>
    implements CopyWith$Fragment$FullPersonData$tags$tag<TRes> {
  _CopyWithImpl$Fragment$FullPersonData$tags$tag(
    this._instance,
    this._then,
  );

  final Fragment$FullPersonData$tags$tag _instance;

  final TRes Function(Fragment$FullPersonData$tags$tag) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$FullPersonData$tags$tag(
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

class _CopyWithStubImpl$Fragment$FullPersonData$tags$tag<TRes>
    implements CopyWith$Fragment$FullPersonData$tags$tag<TRes> {
  _CopyWithStubImpl$Fragment$FullPersonData$tags$tag(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$FullPersonData$user {
  Fragment$FullPersonData$user({
    required this.uid,
    required this.name,
    required this.email,
    this.$__typename = 'AuthUsersData',
  });

  factory Fragment$FullPersonData$user.fromJson(Map<String, dynamic> json) {
    final l$uid = json['uid'];
    final l$name = json['name'];
    final l$email = json['email'];
    final l$$__typename = json['__typename'];
    return Fragment$FullPersonData$user(
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
    if (!(other is Fragment$FullPersonData$user) ||
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

extension UtilityExtension$Fragment$FullPersonData$user
    on Fragment$FullPersonData$user {
  CopyWith$Fragment$FullPersonData$user<Fragment$FullPersonData$user>
      get copyWith => CopyWith$Fragment$FullPersonData$user(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$FullPersonData$user<TRes> {
  factory CopyWith$Fragment$FullPersonData$user(
    Fragment$FullPersonData$user instance,
    TRes Function(Fragment$FullPersonData$user) then,
  ) = _CopyWithImpl$Fragment$FullPersonData$user;

  factory CopyWith$Fragment$FullPersonData$user.stub(TRes res) =
      _CopyWithStubImpl$Fragment$FullPersonData$user;

  TRes call({
    UuidValue? uid,
    String? name,
    String? email,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$FullPersonData$user<TRes>
    implements CopyWith$Fragment$FullPersonData$user<TRes> {
  _CopyWithImpl$Fragment$FullPersonData$user(
    this._instance,
    this._then,
  );

  final Fragment$FullPersonData$user _instance;

  final TRes Function(Fragment$FullPersonData$user) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? uid = _undefined,
    Object? name = _undefined,
    Object? email = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$FullPersonData$user(
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

class _CopyWithStubImpl$Fragment$FullPersonData$user<TRes>
    implements CopyWith$Fragment$FullPersonData$user<TRes> {
  _CopyWithStubImpl$Fragment$FullPersonData$user(this._res);

  TRes _res;

  call({
    UuidValue? uid,
    String? name,
    String? email,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Fragment$FullPersonDataWithAttendance {
  factory Variables$Fragment$FullPersonDataWithAttendance(
          {UuidValue? personId}) =>
      Variables$Fragment$FullPersonDataWithAttendance._({
        if (personId != null) r'personId': personId,
      });

  Variables$Fragment$FullPersonDataWithAttendance._(this._$data);

  factory Variables$Fragment$FullPersonDataWithAttendance.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('personId')) {
      final l$personId = data['personId'];
      result$data['personId'] =
          l$personId == null ? null : stringToUuid(l$personId);
    }
    return Variables$Fragment$FullPersonDataWithAttendance._(result$data);
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

  CopyWith$Variables$Fragment$FullPersonDataWithAttendance<
          Variables$Fragment$FullPersonDataWithAttendance>
      get copyWith => CopyWith$Variables$Fragment$FullPersonDataWithAttendance(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Fragment$FullPersonDataWithAttendance) ||
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

abstract class CopyWith$Variables$Fragment$FullPersonDataWithAttendance<TRes> {
  factory CopyWith$Variables$Fragment$FullPersonDataWithAttendance(
    Variables$Fragment$FullPersonDataWithAttendance instance,
    TRes Function(Variables$Fragment$FullPersonDataWithAttendance) then,
  ) = _CopyWithImpl$Variables$Fragment$FullPersonDataWithAttendance;

  factory CopyWith$Variables$Fragment$FullPersonDataWithAttendance.stub(
          TRes res) =
      _CopyWithStubImpl$Variables$Fragment$FullPersonDataWithAttendance;

  TRes call({UuidValue? personId});
}

class _CopyWithImpl$Variables$Fragment$FullPersonDataWithAttendance<TRes>
    implements CopyWith$Variables$Fragment$FullPersonDataWithAttendance<TRes> {
  _CopyWithImpl$Variables$Fragment$FullPersonDataWithAttendance(
    this._instance,
    this._then,
  );

  final Variables$Fragment$FullPersonDataWithAttendance _instance;

  final TRes Function(Variables$Fragment$FullPersonDataWithAttendance) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? personId = _undefined}) =>
      _then(Variables$Fragment$FullPersonDataWithAttendance._({
        ..._instance._$data,
        if (personId != _undefined) 'personId': (personId as UuidValue?),
      }));
}

class _CopyWithStubImpl$Variables$Fragment$FullPersonDataWithAttendance<TRes>
    implements CopyWith$Variables$Fragment$FullPersonDataWithAttendance<TRes> {
  _CopyWithStubImpl$Variables$Fragment$FullPersonDataWithAttendance(this._res);

  TRes _res;

  call({UuidValue? personId}) => _res;
}

class Fragment$FullPersonDataWithAttendance
    implements
        Fragment$FullPersonData,
        Fragment$Person,
        Fragment$PersonNoPhoto {
  Fragment$FullPersonDataWithAttendance({
    required this.id,
    required this.name,
    this.color,
    this.$__typename = 'Persons',
    this.photoUpdatedAt,
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

  factory Fragment$FullPersonDataWithAttendance.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
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
    return Fragment$FullPersonDataWithAttendance(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      $__typename: (l$$__typename as String),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
      address: (l$address as String?),
      birthdate: l$birthdate == null ? null : dateFromString(l$birthdate),
      areas: (l$areas as List<dynamic>?)
          ?.map((e) => Fragment$Area.fromJson((e as Map<String, dynamic>)))
          .toList(),
      classes: (l$classes as List<dynamic>?)
          ?.map((e) => Fragment$FullPersonDataWithAttendance$classes.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      church: l$church == null
          ? null
          : Fragment$FullPersonDataWithAttendance$church.fromJson(
              (l$church as Map<String, dynamic>)),
      college: l$college == null
          ? null
          : Fragment$FullPersonDataWithAttendance$college.fromJson(
              (l$college as Map<String, dynamic>)),
      family: l$family == null
          ? null
          : Fragment$Family.fromJson((l$family as Map<String, dynamic>)),
      father: l$father == null
          ? null
          : Fragment$FullPersonDataWithAttendance$father.fromJson(
              (l$father as Map<String, dynamic>)),
      gender: (l$gender as bool),
      geolocation: (l$geolocation as Map<String, dynamic>?),
      groups: (l$groups as List<dynamic>)
          .map((e) => Fragment$FullPersonDataWithAttendance$groups.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      isServant: (l$isServant as bool),
      isShammas: (l$isShammas as bool),
      isStudent: (l$isStudent as bool?),
      job: l$job == null
          ? null
          : Fragment$FullPersonDataWithAttendance$job.fromJson(
              (l$job as Map<String, dynamic>)),
      jobDescription: (l$jobDescription as String?),
      lastCall: (l$lastCall as Json?),
      lastConfession: (l$lastConfession as Json?),
      lastEdit: (l$lastEdit as Json?),
      lastKodas: (l$lastKodas as Json?),
      lastVisit: (l$lastVisit as Json?),
      mainPhone: (l$mainPhone as String?),
      notes: (l$notes as String?),
      otherPhones: (l$otherPhones as Json),
      personType: l$personType == null
          ? null
          : Fragment$FullPersonDataWithAttendance$personType.fromJson(
              (l$personType as Map<String, dynamic>)),
      qualification: l$qualification == null
          ? null
          : Fragment$FullPersonDataWithAttendance$qualification.fromJson(
              (l$qualification as Map<String, dynamic>)),
      school: l$school == null
          ? null
          : Fragment$FullPersonDataWithAttendance$school.fromJson(
              (l$school as Map<String, dynamic>)),
      services: (l$services as List<dynamic>)
          .map((e) => Fragment$FullPersonDataWithAttendance$services.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      shammasLevel: l$shammasLevel == null
          ? null
          : Fragment$FullPersonDataWithAttendance$shammasLevel.fromJson(
              (l$shammasLevel as Map<String, dynamic>)),
      state: l$state == null
          ? null
          : Fragment$FullPersonDataWithAttendance$state.fromJson(
              (l$state as Map<String, dynamic>)),
      streets: (l$streets as List<dynamic>?)
          ?.map((e) => Fragment$Street.fromJson((e as Map<String, dynamic>)))
          .toList(),
      studyYear: l$studyYear == null
          ? null
          : Fragment$FullPersonDataWithAttendance$studyYear.fromJson(
              (l$studyYear as Map<String, dynamic>)),
      hobbies: (l$hobbies as List<dynamic>)
          .map((e) => Fragment$FullPersonDataWithAttendance$hobbies.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      tags: (l$tags as List<dynamic>)
          .map((e) => Fragment$FullPersonDataWithAttendance$tags.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      uid: l$uid == null ? null : stringToUuid(l$uid),
      user: l$user == null
          ? null
          : Fragment$FullPersonDataWithAttendance$user.fromJson(
              (l$user as Map<String, dynamic>)),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final String $__typename;

  final DateTime? photoUpdatedAt;

  final String? address;

  final DateTime? birthdate;

  final List<Fragment$Area>? areas;

  final List<Fragment$FullPersonDataWithAttendance$classes>? classes;

  final Fragment$FullPersonDataWithAttendance$church? church;

  final Fragment$FullPersonDataWithAttendance$college? college;

  final Fragment$Family? family;

  final Fragment$FullPersonDataWithAttendance$father? father;

  final bool gender;

  final Map<String, dynamic>? geolocation;

  final List<Fragment$FullPersonDataWithAttendance$groups> groups;

  final bool isServant;

  final bool isShammas;

  final bool? isStudent;

  final Fragment$FullPersonDataWithAttendance$job? job;

  final String? jobDescription;

  final Json? lastCall;

  final Json? lastConfession;

  final Json? lastEdit;

  final Json? lastKodas;

  final Json? lastVisit;

  final String? mainPhone;

  final String? notes;

  final Json otherPhones;

  final Fragment$FullPersonDataWithAttendance$personType? personType;

  final Fragment$FullPersonDataWithAttendance$qualification? qualification;

  final Fragment$FullPersonDataWithAttendance$school? school;

  final List<Fragment$FullPersonDataWithAttendance$services> services;

  final Fragment$FullPersonDataWithAttendance$shammasLevel? shammasLevel;

  final Fragment$FullPersonDataWithAttendance$state? state;

  final List<Fragment$Street>? streets;

  final Fragment$FullPersonDataWithAttendance$studyYear? studyYear;

  final List<Fragment$FullPersonDataWithAttendance$hobbies> hobbies;

  final List<Fragment$FullPersonDataWithAttendance$tags> tags;

  final UuidValue? uid;

  final Fragment$FullPersonDataWithAttendance$user? user;

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
    _resultData['lastCall'] = l$lastCall;
    final l$lastConfession = lastConfession;
    _resultData['lastConfession'] = l$lastConfession;
    final l$lastEdit = lastEdit;
    _resultData['lastEdit'] = l$lastEdit;
    final l$lastKodas = lastKodas;
    _resultData['lastKodas'] = l$lastKodas;
    final l$lastVisit = lastVisit;
    _resultData['lastVisit'] = l$lastVisit;
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
    if (!(other is Fragment$FullPersonDataWithAttendance) ||
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

extension UtilityExtension$Fragment$FullPersonDataWithAttendance
    on Fragment$FullPersonDataWithAttendance {
  CopyWith$Fragment$FullPersonDataWithAttendance<
          Fragment$FullPersonDataWithAttendance>
      get copyWith => CopyWith$Fragment$FullPersonDataWithAttendance(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$FullPersonDataWithAttendance<TRes> {
  factory CopyWith$Fragment$FullPersonDataWithAttendance(
    Fragment$FullPersonDataWithAttendance instance,
    TRes Function(Fragment$FullPersonDataWithAttendance) then,
  ) = _CopyWithImpl$Fragment$FullPersonDataWithAttendance;

  factory CopyWith$Fragment$FullPersonDataWithAttendance.stub(TRes res) =
      _CopyWithStubImpl$Fragment$FullPersonDataWithAttendance;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    DateTime? photoUpdatedAt,
    String? address,
    DateTime? birthdate,
    List<Fragment$Area>? areas,
    List<Fragment$FullPersonDataWithAttendance$classes>? classes,
    Fragment$FullPersonDataWithAttendance$church? church,
    Fragment$FullPersonDataWithAttendance$college? college,
    Fragment$Family? family,
    Fragment$FullPersonDataWithAttendance$father? father,
    bool? gender,
    Map<String, dynamic>? geolocation,
    List<Fragment$FullPersonDataWithAttendance$groups>? groups,
    bool? isServant,
    bool? isShammas,
    bool? isStudent,
    Fragment$FullPersonDataWithAttendance$job? job,
    String? jobDescription,
    Json? lastCall,
    Json? lastConfession,
    Json? lastEdit,
    Json? lastKodas,
    Json? lastVisit,
    String? mainPhone,
    String? notes,
    Json? otherPhones,
    Fragment$FullPersonDataWithAttendance$personType? personType,
    Fragment$FullPersonDataWithAttendance$qualification? qualification,
    Fragment$FullPersonDataWithAttendance$school? school,
    List<Fragment$FullPersonDataWithAttendance$services>? services,
    Fragment$FullPersonDataWithAttendance$shammasLevel? shammasLevel,
    Fragment$FullPersonDataWithAttendance$state? state,
    List<Fragment$Street>? streets,
    Fragment$FullPersonDataWithAttendance$studyYear? studyYear,
    List<Fragment$FullPersonDataWithAttendance$hobbies>? hobbies,
    List<Fragment$FullPersonDataWithAttendance$tags>? tags,
    UuidValue? uid,
    Fragment$FullPersonDataWithAttendance$user? user,
  });
  TRes areas(
      Iterable<Fragment$Area>? Function(
              Iterable<CopyWith$Fragment$Area<Fragment$Area>>?)
          _fn);
  TRes classes(
      Iterable<Fragment$FullPersonDataWithAttendance$classes>? Function(
              Iterable<
                  CopyWith$Fragment$FullPersonDataWithAttendance$classes<
                      Fragment$FullPersonDataWithAttendance$classes>>?)
          _fn);
  CopyWith$Fragment$FullPersonDataWithAttendance$church<TRes> get church;
  CopyWith$Fragment$FullPersonDataWithAttendance$college<TRes> get college;
  CopyWith$Fragment$Family<TRes> get family;
  CopyWith$Fragment$FullPersonDataWithAttendance$father<TRes> get father;
  TRes groups(
      Iterable<Fragment$FullPersonDataWithAttendance$groups> Function(
              Iterable<
                  CopyWith$Fragment$FullPersonDataWithAttendance$groups<
                      Fragment$FullPersonDataWithAttendance$groups>>)
          _fn);
  CopyWith$Fragment$FullPersonDataWithAttendance$job<TRes> get job;
  CopyWith$Fragment$FullPersonDataWithAttendance$personType<TRes>
      get personType;
  CopyWith$Fragment$FullPersonDataWithAttendance$qualification<TRes>
      get qualification;
  CopyWith$Fragment$FullPersonDataWithAttendance$school<TRes> get school;
  TRes services(
      Iterable<Fragment$FullPersonDataWithAttendance$services> Function(
              Iterable<
                  CopyWith$Fragment$FullPersonDataWithAttendance$services<
                      Fragment$FullPersonDataWithAttendance$services>>)
          _fn);
  CopyWith$Fragment$FullPersonDataWithAttendance$shammasLevel<TRes>
      get shammasLevel;
  CopyWith$Fragment$FullPersonDataWithAttendance$state<TRes> get state;
  TRes streets(
      Iterable<Fragment$Street>? Function(
              Iterable<CopyWith$Fragment$Street<Fragment$Street>>?)
          _fn);
  CopyWith$Fragment$FullPersonDataWithAttendance$studyYear<TRes> get studyYear;
  TRes hobbies(
      Iterable<Fragment$FullPersonDataWithAttendance$hobbies> Function(
              Iterable<
                  CopyWith$Fragment$FullPersonDataWithAttendance$hobbies<
                      Fragment$FullPersonDataWithAttendance$hobbies>>)
          _fn);
  TRes tags(
      Iterable<Fragment$FullPersonDataWithAttendance$tags> Function(
              Iterable<
                  CopyWith$Fragment$FullPersonDataWithAttendance$tags<
                      Fragment$FullPersonDataWithAttendance$tags>>)
          _fn);
  CopyWith$Fragment$FullPersonDataWithAttendance$user<TRes> get user;
}

class _CopyWithImpl$Fragment$FullPersonDataWithAttendance<TRes>
    implements CopyWith$Fragment$FullPersonDataWithAttendance<TRes> {
  _CopyWithImpl$Fragment$FullPersonDataWithAttendance(
    this._instance,
    this._then,
  );

  final Fragment$FullPersonDataWithAttendance _instance;

  final TRes Function(Fragment$FullPersonDataWithAttendance) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
    Object? photoUpdatedAt = _undefined,
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
      _then(Fragment$FullPersonDataWithAttendance(
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
        address:
            address == _undefined ? _instance.address : (address as String?),
        birthdate: birthdate == _undefined
            ? _instance.birthdate
            : (birthdate as DateTime?),
        areas: areas == _undefined
            ? _instance.areas
            : (areas as List<Fragment$Area>?),
        classes: classes == _undefined
            ? _instance.classes
            : (classes as List<Fragment$FullPersonDataWithAttendance$classes>?),
        church: church == _undefined
            ? _instance.church
            : (church as Fragment$FullPersonDataWithAttendance$church?),
        college: college == _undefined
            ? _instance.college
            : (college as Fragment$FullPersonDataWithAttendance$college?),
        family: family == _undefined
            ? _instance.family
            : (family as Fragment$Family?),
        father: father == _undefined
            ? _instance.father
            : (father as Fragment$FullPersonDataWithAttendance$father?),
        gender: gender == _undefined || gender == null
            ? _instance.gender
            : (gender as bool),
        geolocation: geolocation == _undefined
            ? _instance.geolocation
            : (geolocation as Map<String, dynamic>?),
        groups: groups == _undefined || groups == null
            ? _instance.groups
            : (groups as List<Fragment$FullPersonDataWithAttendance$groups>),
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
            : (job as Fragment$FullPersonDataWithAttendance$job?),
        jobDescription: jobDescription == _undefined
            ? _instance.jobDescription
            : (jobDescription as String?),
        lastCall:
            lastCall == _undefined ? _instance.lastCall : (lastCall as Json?),
        lastConfession: lastConfession == _undefined
            ? _instance.lastConfession
            : (lastConfession as Json?),
        lastEdit:
            lastEdit == _undefined ? _instance.lastEdit : (lastEdit as Json?),
        lastKodas: lastKodas == _undefined
            ? _instance.lastKodas
            : (lastKodas as Json?),
        lastVisit: lastVisit == _undefined
            ? _instance.lastVisit
            : (lastVisit as Json?),
        mainPhone: mainPhone == _undefined
            ? _instance.mainPhone
            : (mainPhone as String?),
        notes: notes == _undefined ? _instance.notes : (notes as String?),
        otherPhones: otherPhones == _undefined || otherPhones == null
            ? _instance.otherPhones
            : (otherPhones as Json),
        personType: personType == _undefined
            ? _instance.personType
            : (personType as Fragment$FullPersonDataWithAttendance$personType?),
        qualification: qualification == _undefined
            ? _instance.qualification
            : (qualification
                as Fragment$FullPersonDataWithAttendance$qualification?),
        school: school == _undefined
            ? _instance.school
            : (school as Fragment$FullPersonDataWithAttendance$school?),
        services: services == _undefined || services == null
            ? _instance.services
            : (services
                as List<Fragment$FullPersonDataWithAttendance$services>),
        shammasLevel: shammasLevel == _undefined
            ? _instance.shammasLevel
            : (shammasLevel
                as Fragment$FullPersonDataWithAttendance$shammasLevel?),
        state: state == _undefined
            ? _instance.state
            : (state as Fragment$FullPersonDataWithAttendance$state?),
        streets: streets == _undefined
            ? _instance.streets
            : (streets as List<Fragment$Street>?),
        studyYear: studyYear == _undefined
            ? _instance.studyYear
            : (studyYear as Fragment$FullPersonDataWithAttendance$studyYear?),
        hobbies: hobbies == _undefined || hobbies == null
            ? _instance.hobbies
            : (hobbies as List<Fragment$FullPersonDataWithAttendance$hobbies>),
        tags: tags == _undefined || tags == null
            ? _instance.tags
            : (tags as List<Fragment$FullPersonDataWithAttendance$tags>),
        uid: uid == _undefined ? _instance.uid : (uid as UuidValue?),
        user: user == _undefined
            ? _instance.user
            : (user as Fragment$FullPersonDataWithAttendance$user?),
      ));
  TRes areas(
          Iterable<Fragment$Area>? Function(
                  Iterable<CopyWith$Fragment$Area<Fragment$Area>>?)
              _fn) =>
      call(
          areas: _fn(_instance.areas?.map((e) => CopyWith$Fragment$Area(
                e,
                (i) => i,
              )))?.toList());
  TRes classes(
          Iterable<Fragment$FullPersonDataWithAttendance$classes>? Function(
                  Iterable<
                      CopyWith$Fragment$FullPersonDataWithAttendance$classes<
                          Fragment$FullPersonDataWithAttendance$classes>>?)
              _fn) =>
      call(
          classes: _fn(_instance.classes?.map(
              (e) => CopyWith$Fragment$FullPersonDataWithAttendance$classes(
                    e,
                    (i) => i,
                  )))?.toList());
  CopyWith$Fragment$FullPersonDataWithAttendance$church<TRes> get church {
    final local$church = _instance.church;
    return local$church == null
        ? CopyWith$Fragment$FullPersonDataWithAttendance$church.stub(
            _then(_instance))
        : CopyWith$Fragment$FullPersonDataWithAttendance$church(
            local$church, (e) => call(church: e));
  }

  CopyWith$Fragment$FullPersonDataWithAttendance$college<TRes> get college {
    final local$college = _instance.college;
    return local$college == null
        ? CopyWith$Fragment$FullPersonDataWithAttendance$college.stub(
            _then(_instance))
        : CopyWith$Fragment$FullPersonDataWithAttendance$college(
            local$college, (e) => call(college: e));
  }

  CopyWith$Fragment$Family<TRes> get family {
    final local$family = _instance.family;
    return local$family == null
        ? CopyWith$Fragment$Family.stub(_then(_instance))
        : CopyWith$Fragment$Family(local$family, (e) => call(family: e));
  }

  CopyWith$Fragment$FullPersonDataWithAttendance$father<TRes> get father {
    final local$father = _instance.father;
    return local$father == null
        ? CopyWith$Fragment$FullPersonDataWithAttendance$father.stub(
            _then(_instance))
        : CopyWith$Fragment$FullPersonDataWithAttendance$father(
            local$father, (e) => call(father: e));
  }

  TRes groups(
          Iterable<Fragment$FullPersonDataWithAttendance$groups> Function(
                  Iterable<
                      CopyWith$Fragment$FullPersonDataWithAttendance$groups<
                          Fragment$FullPersonDataWithAttendance$groups>>)
              _fn) =>
      call(
          groups: _fn(_instance.groups
              .map((e) => CopyWith$Fragment$FullPersonDataWithAttendance$groups(
                    e,
                    (i) => i,
                  ))).toList());
  CopyWith$Fragment$FullPersonDataWithAttendance$job<TRes> get job {
    final local$job = _instance.job;
    return local$job == null
        ? CopyWith$Fragment$FullPersonDataWithAttendance$job.stub(
            _then(_instance))
        : CopyWith$Fragment$FullPersonDataWithAttendance$job(
            local$job, (e) => call(job: e));
  }

  CopyWith$Fragment$FullPersonDataWithAttendance$personType<TRes>
      get personType {
    final local$personType = _instance.personType;
    return local$personType == null
        ? CopyWith$Fragment$FullPersonDataWithAttendance$personType.stub(
            _then(_instance))
        : CopyWith$Fragment$FullPersonDataWithAttendance$personType(
            local$personType, (e) => call(personType: e));
  }

  CopyWith$Fragment$FullPersonDataWithAttendance$qualification<TRes>
      get qualification {
    final local$qualification = _instance.qualification;
    return local$qualification == null
        ? CopyWith$Fragment$FullPersonDataWithAttendance$qualification.stub(
            _then(_instance))
        : CopyWith$Fragment$FullPersonDataWithAttendance$qualification(
            local$qualification, (e) => call(qualification: e));
  }

  CopyWith$Fragment$FullPersonDataWithAttendance$school<TRes> get school {
    final local$school = _instance.school;
    return local$school == null
        ? CopyWith$Fragment$FullPersonDataWithAttendance$school.stub(
            _then(_instance))
        : CopyWith$Fragment$FullPersonDataWithAttendance$school(
            local$school, (e) => call(school: e));
  }

  TRes services(
          Iterable<Fragment$FullPersonDataWithAttendance$services> Function(
                  Iterable<
                      CopyWith$Fragment$FullPersonDataWithAttendance$services<
                          Fragment$FullPersonDataWithAttendance$services>>)
              _fn) =>
      call(
          services: _fn(_instance.services.map(
              (e) => CopyWith$Fragment$FullPersonDataWithAttendance$services(
                    e,
                    (i) => i,
                  ))).toList());
  CopyWith$Fragment$FullPersonDataWithAttendance$shammasLevel<TRes>
      get shammasLevel {
    final local$shammasLevel = _instance.shammasLevel;
    return local$shammasLevel == null
        ? CopyWith$Fragment$FullPersonDataWithAttendance$shammasLevel.stub(
            _then(_instance))
        : CopyWith$Fragment$FullPersonDataWithAttendance$shammasLevel(
            local$shammasLevel, (e) => call(shammasLevel: e));
  }

  CopyWith$Fragment$FullPersonDataWithAttendance$state<TRes> get state {
    final local$state = _instance.state;
    return local$state == null
        ? CopyWith$Fragment$FullPersonDataWithAttendance$state.stub(
            _then(_instance))
        : CopyWith$Fragment$FullPersonDataWithAttendance$state(
            local$state, (e) => call(state: e));
  }

  TRes streets(
          Iterable<Fragment$Street>? Function(
                  Iterable<CopyWith$Fragment$Street<Fragment$Street>>?)
              _fn) =>
      call(
          streets: _fn(_instance.streets?.map((e) => CopyWith$Fragment$Street(
                e,
                (i) => i,
              )))?.toList());
  CopyWith$Fragment$FullPersonDataWithAttendance$studyYear<TRes> get studyYear {
    final local$studyYear = _instance.studyYear;
    return local$studyYear == null
        ? CopyWith$Fragment$FullPersonDataWithAttendance$studyYear.stub(
            _then(_instance))
        : CopyWith$Fragment$FullPersonDataWithAttendance$studyYear(
            local$studyYear, (e) => call(studyYear: e));
  }

  TRes hobbies(
          Iterable<Fragment$FullPersonDataWithAttendance$hobbies> Function(
                  Iterable<
                      CopyWith$Fragment$FullPersonDataWithAttendance$hobbies<
                          Fragment$FullPersonDataWithAttendance$hobbies>>)
              _fn) =>
      call(
          hobbies: _fn(_instance.hobbies.map(
              (e) => CopyWith$Fragment$FullPersonDataWithAttendance$hobbies(
                    e,
                    (i) => i,
                  ))).toList());
  TRes tags(
          Iterable<Fragment$FullPersonDataWithAttendance$tags> Function(
                  Iterable<
                      CopyWith$Fragment$FullPersonDataWithAttendance$tags<
                          Fragment$FullPersonDataWithAttendance$tags>>)
              _fn) =>
      call(
          tags: _fn(_instance.tags
              .map((e) => CopyWith$Fragment$FullPersonDataWithAttendance$tags(
                    e,
                    (i) => i,
                  ))).toList());
  CopyWith$Fragment$FullPersonDataWithAttendance$user<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Fragment$FullPersonDataWithAttendance$user.stub(
            _then(_instance))
        : CopyWith$Fragment$FullPersonDataWithAttendance$user(
            local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Fragment$FullPersonDataWithAttendance<TRes>
    implements CopyWith$Fragment$FullPersonDataWithAttendance<TRes> {
  _CopyWithStubImpl$Fragment$FullPersonDataWithAttendance(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    DateTime? photoUpdatedAt,
    String? address,
    DateTime? birthdate,
    List<Fragment$Area>? areas,
    List<Fragment$FullPersonDataWithAttendance$classes>? classes,
    Fragment$FullPersonDataWithAttendance$church? church,
    Fragment$FullPersonDataWithAttendance$college? college,
    Fragment$Family? family,
    Fragment$FullPersonDataWithAttendance$father? father,
    bool? gender,
    Map<String, dynamic>? geolocation,
    List<Fragment$FullPersonDataWithAttendance$groups>? groups,
    bool? isServant,
    bool? isShammas,
    bool? isStudent,
    Fragment$FullPersonDataWithAttendance$job? job,
    String? jobDescription,
    Json? lastCall,
    Json? lastConfession,
    Json? lastEdit,
    Json? lastKodas,
    Json? lastVisit,
    String? mainPhone,
    String? notes,
    Json? otherPhones,
    Fragment$FullPersonDataWithAttendance$personType? personType,
    Fragment$FullPersonDataWithAttendance$qualification? qualification,
    Fragment$FullPersonDataWithAttendance$school? school,
    List<Fragment$FullPersonDataWithAttendance$services>? services,
    Fragment$FullPersonDataWithAttendance$shammasLevel? shammasLevel,
    Fragment$FullPersonDataWithAttendance$state? state,
    List<Fragment$Street>? streets,
    Fragment$FullPersonDataWithAttendance$studyYear? studyYear,
    List<Fragment$FullPersonDataWithAttendance$hobbies>? hobbies,
    List<Fragment$FullPersonDataWithAttendance$tags>? tags,
    UuidValue? uid,
    Fragment$FullPersonDataWithAttendance$user? user,
  }) =>
      _res;
  areas(_fn) => _res;
  classes(_fn) => _res;
  CopyWith$Fragment$FullPersonDataWithAttendance$church<TRes> get church =>
      CopyWith$Fragment$FullPersonDataWithAttendance$church.stub(_res);
  CopyWith$Fragment$FullPersonDataWithAttendance$college<TRes> get college =>
      CopyWith$Fragment$FullPersonDataWithAttendance$college.stub(_res);
  CopyWith$Fragment$Family<TRes> get family =>
      CopyWith$Fragment$Family.stub(_res);
  CopyWith$Fragment$FullPersonDataWithAttendance$father<TRes> get father =>
      CopyWith$Fragment$FullPersonDataWithAttendance$father.stub(_res);
  groups(_fn) => _res;
  CopyWith$Fragment$FullPersonDataWithAttendance$job<TRes> get job =>
      CopyWith$Fragment$FullPersonDataWithAttendance$job.stub(_res);
  CopyWith$Fragment$FullPersonDataWithAttendance$personType<TRes>
      get personType =>
          CopyWith$Fragment$FullPersonDataWithAttendance$personType.stub(_res);
  CopyWith$Fragment$FullPersonDataWithAttendance$qualification<TRes>
      get qualification =>
          CopyWith$Fragment$FullPersonDataWithAttendance$qualification.stub(
              _res);
  CopyWith$Fragment$FullPersonDataWithAttendance$school<TRes> get school =>
      CopyWith$Fragment$FullPersonDataWithAttendance$school.stub(_res);
  services(_fn) => _res;
  CopyWith$Fragment$FullPersonDataWithAttendance$shammasLevel<TRes>
      get shammasLevel =>
          CopyWith$Fragment$FullPersonDataWithAttendance$shammasLevel.stub(
              _res);
  CopyWith$Fragment$FullPersonDataWithAttendance$state<TRes> get state =>
      CopyWith$Fragment$FullPersonDataWithAttendance$state.stub(_res);
  streets(_fn) => _res;
  CopyWith$Fragment$FullPersonDataWithAttendance$studyYear<TRes>
      get studyYear =>
          CopyWith$Fragment$FullPersonDataWithAttendance$studyYear.stub(_res);
  hobbies(_fn) => _res;
  tags(_fn) => _res;
  CopyWith$Fragment$FullPersonDataWithAttendance$user<TRes> get user =>
      CopyWith$Fragment$FullPersonDataWithAttendance$user.stub(_res);
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
              name: NameNode(value: 'Service'),
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
  fragmentDefinitionService,
  fragmentDefinitionServiceNoPhoto,
  fragmentDefinitionStreet,
  fragmentDefinitionStreetNoPhoto,
]);

class Fragment$FullPersonDataWithAttendance$classes
    implements Fragment$Class, Fragment$ClassNoPhoto {
  Fragment$FullPersonDataWithAttendance$classes({
    required this.id,
    required this.name,
    this.color,
    this.$__typename = 'Classes',
    this.photoUpdatedAt,
    required this.attendanceHistoryAggregate,
  });

  factory Fragment$FullPersonDataWithAttendance$classes.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$attendanceHistoryAggregate = json['attendanceHistoryAggregate'];
    return Fragment$FullPersonDataWithAttendance$classes(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      $__typename: (l$$__typename as String),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
      attendanceHistoryAggregate:
          Fragment$FullPersonDataWithAttendance$classes$attendanceHistoryAggregate
              .fromJson((l$attendanceHistoryAggregate as Map<String, dynamic>)),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final String $__typename;

  final DateTime? photoUpdatedAt;

  final Fragment$FullPersonDataWithAttendance$classes$attendanceHistoryAggregate
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
    final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$$__typename,
      l$photoUpdatedAt,
      l$attendanceHistoryAggregate,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$FullPersonDataWithAttendance$classes) ||
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
    final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
    final lOther$attendanceHistoryAggregate = other.attendanceHistoryAggregate;
    if (l$attendanceHistoryAggregate != lOther$attendanceHistoryAggregate) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$FullPersonDataWithAttendance$classes
    on Fragment$FullPersonDataWithAttendance$classes {
  CopyWith$Fragment$FullPersonDataWithAttendance$classes<
          Fragment$FullPersonDataWithAttendance$classes>
      get copyWith => CopyWith$Fragment$FullPersonDataWithAttendance$classes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$FullPersonDataWithAttendance$classes<TRes> {
  factory CopyWith$Fragment$FullPersonDataWithAttendance$classes(
    Fragment$FullPersonDataWithAttendance$classes instance,
    TRes Function(Fragment$FullPersonDataWithAttendance$classes) then,
  ) = _CopyWithImpl$Fragment$FullPersonDataWithAttendance$classes;

  factory CopyWith$Fragment$FullPersonDataWithAttendance$classes.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$FullPersonDataWithAttendance$classes;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    DateTime? photoUpdatedAt,
    Fragment$FullPersonDataWithAttendance$classes$attendanceHistoryAggregate?
        attendanceHistoryAggregate,
  });
  CopyWith$Fragment$FullPersonDataWithAttendance$classes$attendanceHistoryAggregate<
      TRes> get attendanceHistoryAggregate;
}

class _CopyWithImpl$Fragment$FullPersonDataWithAttendance$classes<TRes>
    implements CopyWith$Fragment$FullPersonDataWithAttendance$classes<TRes> {
  _CopyWithImpl$Fragment$FullPersonDataWithAttendance$classes(
    this._instance,
    this._then,
  );

  final Fragment$FullPersonDataWithAttendance$classes _instance;

  final TRes Function(Fragment$FullPersonDataWithAttendance$classes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? attendanceHistoryAggregate = _undefined,
  }) =>
      _then(Fragment$FullPersonDataWithAttendance$classes(
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
        attendanceHistoryAggregate: attendanceHistoryAggregate == _undefined ||
                attendanceHistoryAggregate == null
            ? _instance.attendanceHistoryAggregate
            : (attendanceHistoryAggregate
                as Fragment$FullPersonDataWithAttendance$classes$attendanceHistoryAggregate),
      ));
  CopyWith$Fragment$FullPersonDataWithAttendance$classes$attendanceHistoryAggregate<
      TRes> get attendanceHistoryAggregate {
    final local$attendanceHistoryAggregate =
        _instance.attendanceHistoryAggregate;
    return CopyWith$Fragment$FullPersonDataWithAttendance$classes$attendanceHistoryAggregate(
        local$attendanceHistoryAggregate,
        (e) => call(attendanceHistoryAggregate: e));
  }
}

class _CopyWithStubImpl$Fragment$FullPersonDataWithAttendance$classes<TRes>
    implements CopyWith$Fragment$FullPersonDataWithAttendance$classes<TRes> {
  _CopyWithStubImpl$Fragment$FullPersonDataWithAttendance$classes(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    DateTime? photoUpdatedAt,
    Fragment$FullPersonDataWithAttendance$classes$attendanceHistoryAggregate?
        attendanceHistoryAggregate,
  }) =>
      _res;
  CopyWith$Fragment$FullPersonDataWithAttendance$classes$attendanceHistoryAggregate<
          TRes>
      get attendanceHistoryAggregate =>
          CopyWith$Fragment$FullPersonDataWithAttendance$classes$attendanceHistoryAggregate
              .stub(_res);
}

class Fragment$FullPersonDataWithAttendance$church
    implements Fragment$FullPersonData$church {
  Fragment$FullPersonDataWithAttendance$church({
    required this.id,
    required this.name,
    this.$__typename = 'Churches',
  });

  factory Fragment$FullPersonDataWithAttendance$church.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Fragment$FullPersonDataWithAttendance$church(
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
    if (!(other is Fragment$FullPersonDataWithAttendance$church) ||
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

extension UtilityExtension$Fragment$FullPersonDataWithAttendance$church
    on Fragment$FullPersonDataWithAttendance$church {
  CopyWith$Fragment$FullPersonDataWithAttendance$church<
          Fragment$FullPersonDataWithAttendance$church>
      get copyWith => CopyWith$Fragment$FullPersonDataWithAttendance$church(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$FullPersonDataWithAttendance$church<TRes> {
  factory CopyWith$Fragment$FullPersonDataWithAttendance$church(
    Fragment$FullPersonDataWithAttendance$church instance,
    TRes Function(Fragment$FullPersonDataWithAttendance$church) then,
  ) = _CopyWithImpl$Fragment$FullPersonDataWithAttendance$church;

  factory CopyWith$Fragment$FullPersonDataWithAttendance$church.stub(TRes res) =
      _CopyWithStubImpl$Fragment$FullPersonDataWithAttendance$church;

  TRes call({
    UuidValue? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$FullPersonDataWithAttendance$church<TRes>
    implements CopyWith$Fragment$FullPersonDataWithAttendance$church<TRes> {
  _CopyWithImpl$Fragment$FullPersonDataWithAttendance$church(
    this._instance,
    this._then,
  );

  final Fragment$FullPersonDataWithAttendance$church _instance;

  final TRes Function(Fragment$FullPersonDataWithAttendance$church) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$FullPersonDataWithAttendance$church(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$FullPersonDataWithAttendance$church<TRes>
    implements CopyWith$Fragment$FullPersonDataWithAttendance$church<TRes> {
  _CopyWithStubImpl$Fragment$FullPersonDataWithAttendance$church(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$FullPersonDataWithAttendance$college
    implements Fragment$FullPersonData$college {
  Fragment$FullPersonDataWithAttendance$college({
    required this.id,
    required this.name,
    this.$__typename = 'Colleges',
  });

  factory Fragment$FullPersonDataWithAttendance$college.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Fragment$FullPersonDataWithAttendance$college(
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
    if (!(other is Fragment$FullPersonDataWithAttendance$college) ||
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

extension UtilityExtension$Fragment$FullPersonDataWithAttendance$college
    on Fragment$FullPersonDataWithAttendance$college {
  CopyWith$Fragment$FullPersonDataWithAttendance$college<
          Fragment$FullPersonDataWithAttendance$college>
      get copyWith => CopyWith$Fragment$FullPersonDataWithAttendance$college(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$FullPersonDataWithAttendance$college<TRes> {
  factory CopyWith$Fragment$FullPersonDataWithAttendance$college(
    Fragment$FullPersonDataWithAttendance$college instance,
    TRes Function(Fragment$FullPersonDataWithAttendance$college) then,
  ) = _CopyWithImpl$Fragment$FullPersonDataWithAttendance$college;

  factory CopyWith$Fragment$FullPersonDataWithAttendance$college.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$FullPersonDataWithAttendance$college;

  TRes call({
    UuidValue? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$FullPersonDataWithAttendance$college<TRes>
    implements CopyWith$Fragment$FullPersonDataWithAttendance$college<TRes> {
  _CopyWithImpl$Fragment$FullPersonDataWithAttendance$college(
    this._instance,
    this._then,
  );

  final Fragment$FullPersonDataWithAttendance$college _instance;

  final TRes Function(Fragment$FullPersonDataWithAttendance$college) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$FullPersonDataWithAttendance$college(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$FullPersonDataWithAttendance$college<TRes>
    implements CopyWith$Fragment$FullPersonDataWithAttendance$college<TRes> {
  _CopyWithStubImpl$Fragment$FullPersonDataWithAttendance$college(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$FullPersonDataWithAttendance$father
    implements Fragment$FullPersonData$father {
  Fragment$FullPersonDataWithAttendance$father({
    required this.id,
    required this.name,
    this.church,
    this.$__typename = 'Fathers',
  });

  factory Fragment$FullPersonDataWithAttendance$father.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$church = json['church'];
    final l$$__typename = json['__typename'];
    return Fragment$FullPersonDataWithAttendance$father(
      id: stringToUuid(l$id),
      name: (l$name as String),
      church: l$church == null
          ? null
          : Fragment$FullPersonDataWithAttendance$father$church.fromJson(
              (l$church as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final String name;

  final Fragment$FullPersonDataWithAttendance$father$church? church;

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
    if (!(other is Fragment$FullPersonDataWithAttendance$father) ||
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

extension UtilityExtension$Fragment$FullPersonDataWithAttendance$father
    on Fragment$FullPersonDataWithAttendance$father {
  CopyWith$Fragment$FullPersonDataWithAttendance$father<
          Fragment$FullPersonDataWithAttendance$father>
      get copyWith => CopyWith$Fragment$FullPersonDataWithAttendance$father(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$FullPersonDataWithAttendance$father<TRes> {
  factory CopyWith$Fragment$FullPersonDataWithAttendance$father(
    Fragment$FullPersonDataWithAttendance$father instance,
    TRes Function(Fragment$FullPersonDataWithAttendance$father) then,
  ) = _CopyWithImpl$Fragment$FullPersonDataWithAttendance$father;

  factory CopyWith$Fragment$FullPersonDataWithAttendance$father.stub(TRes res) =
      _CopyWithStubImpl$Fragment$FullPersonDataWithAttendance$father;

  TRes call({
    UuidValue? id,
    String? name,
    Fragment$FullPersonDataWithAttendance$father$church? church,
    String? $__typename,
  });
  CopyWith$Fragment$FullPersonDataWithAttendance$father$church<TRes> get church;
}

class _CopyWithImpl$Fragment$FullPersonDataWithAttendance$father<TRes>
    implements CopyWith$Fragment$FullPersonDataWithAttendance$father<TRes> {
  _CopyWithImpl$Fragment$FullPersonDataWithAttendance$father(
    this._instance,
    this._then,
  );

  final Fragment$FullPersonDataWithAttendance$father _instance;

  final TRes Function(Fragment$FullPersonDataWithAttendance$father) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? church = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$FullPersonDataWithAttendance$father(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        church: church == _undefined
            ? _instance.church
            : (church as Fragment$FullPersonDataWithAttendance$father$church?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$FullPersonDataWithAttendance$father$church<TRes>
      get church {
    final local$church = _instance.church;
    return local$church == null
        ? CopyWith$Fragment$FullPersonDataWithAttendance$father$church.stub(
            _then(_instance))
        : CopyWith$Fragment$FullPersonDataWithAttendance$father$church(
            local$church, (e) => call(church: e));
  }
}

class _CopyWithStubImpl$Fragment$FullPersonDataWithAttendance$father<TRes>
    implements CopyWith$Fragment$FullPersonDataWithAttendance$father<TRes> {
  _CopyWithStubImpl$Fragment$FullPersonDataWithAttendance$father(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    Fragment$FullPersonDataWithAttendance$father$church? church,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$FullPersonDataWithAttendance$father$church<TRes>
      get church =>
          CopyWith$Fragment$FullPersonDataWithAttendance$father$church.stub(
              _res);
}

class Fragment$FullPersonDataWithAttendance$father$church
    implements Fragment$FullPersonData$father$church {
  Fragment$FullPersonDataWithAttendance$father$church({
    required this.id,
    required this.name,
    this.$__typename = 'Churches',
  });

  factory Fragment$FullPersonDataWithAttendance$father$church.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Fragment$FullPersonDataWithAttendance$father$church(
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
    if (!(other is Fragment$FullPersonDataWithAttendance$father$church) ||
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

extension UtilityExtension$Fragment$FullPersonDataWithAttendance$father$church
    on Fragment$FullPersonDataWithAttendance$father$church {
  CopyWith$Fragment$FullPersonDataWithAttendance$father$church<
          Fragment$FullPersonDataWithAttendance$father$church>
      get copyWith =>
          CopyWith$Fragment$FullPersonDataWithAttendance$father$church(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$FullPersonDataWithAttendance$father$church<
    TRes> {
  factory CopyWith$Fragment$FullPersonDataWithAttendance$father$church(
    Fragment$FullPersonDataWithAttendance$father$church instance,
    TRes Function(Fragment$FullPersonDataWithAttendance$father$church) then,
  ) = _CopyWithImpl$Fragment$FullPersonDataWithAttendance$father$church;

  factory CopyWith$Fragment$FullPersonDataWithAttendance$father$church.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$FullPersonDataWithAttendance$father$church;

  TRes call({
    UuidValue? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$FullPersonDataWithAttendance$father$church<TRes>
    implements
        CopyWith$Fragment$FullPersonDataWithAttendance$father$church<TRes> {
  _CopyWithImpl$Fragment$FullPersonDataWithAttendance$father$church(
    this._instance,
    this._then,
  );

  final Fragment$FullPersonDataWithAttendance$father$church _instance;

  final TRes Function(Fragment$FullPersonDataWithAttendance$father$church)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$FullPersonDataWithAttendance$father$church(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$FullPersonDataWithAttendance$father$church<
        TRes>
    implements
        CopyWith$Fragment$FullPersonDataWithAttendance$father$church<TRes> {
  _CopyWithStubImpl$Fragment$FullPersonDataWithAttendance$father$church(
      this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$FullPersonDataWithAttendance$groups
    implements Fragment$FullPersonData$groups {
  Fragment$FullPersonDataWithAttendance$groups({
    required this.group,
    this.$__typename = 'PersonsGroups',
  });

  factory Fragment$FullPersonDataWithAttendance$groups.fromJson(
      Map<String, dynamic> json) {
    final l$group = json['group'];
    final l$$__typename = json['__typename'];
    return Fragment$FullPersonDataWithAttendance$groups(
      group: Fragment$FullPersonDataWithAttendance$groups$group.fromJson(
          (l$group as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$FullPersonDataWithAttendance$groups$group group;

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
    if (!(other is Fragment$FullPersonDataWithAttendance$groups) ||
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

extension UtilityExtension$Fragment$FullPersonDataWithAttendance$groups
    on Fragment$FullPersonDataWithAttendance$groups {
  CopyWith$Fragment$FullPersonDataWithAttendance$groups<
          Fragment$FullPersonDataWithAttendance$groups>
      get copyWith => CopyWith$Fragment$FullPersonDataWithAttendance$groups(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$FullPersonDataWithAttendance$groups<TRes> {
  factory CopyWith$Fragment$FullPersonDataWithAttendance$groups(
    Fragment$FullPersonDataWithAttendance$groups instance,
    TRes Function(Fragment$FullPersonDataWithAttendance$groups) then,
  ) = _CopyWithImpl$Fragment$FullPersonDataWithAttendance$groups;

  factory CopyWith$Fragment$FullPersonDataWithAttendance$groups.stub(TRes res) =
      _CopyWithStubImpl$Fragment$FullPersonDataWithAttendance$groups;

  TRes call({
    Fragment$FullPersonDataWithAttendance$groups$group? group,
    String? $__typename,
  });
  CopyWith$Fragment$FullPersonDataWithAttendance$groups$group<TRes> get group;
}

class _CopyWithImpl$Fragment$FullPersonDataWithAttendance$groups<TRes>
    implements CopyWith$Fragment$FullPersonDataWithAttendance$groups<TRes> {
  _CopyWithImpl$Fragment$FullPersonDataWithAttendance$groups(
    this._instance,
    this._then,
  );

  final Fragment$FullPersonDataWithAttendance$groups _instance;

  final TRes Function(Fragment$FullPersonDataWithAttendance$groups) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? group = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$FullPersonDataWithAttendance$groups(
        group: group == _undefined || group == null
            ? _instance.group
            : (group as Fragment$FullPersonDataWithAttendance$groups$group),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$FullPersonDataWithAttendance$groups$group<TRes> get group {
    final local$group = _instance.group;
    return CopyWith$Fragment$FullPersonDataWithAttendance$groups$group(
        local$group, (e) => call(group: e));
  }
}

class _CopyWithStubImpl$Fragment$FullPersonDataWithAttendance$groups<TRes>
    implements CopyWith$Fragment$FullPersonDataWithAttendance$groups<TRes> {
  _CopyWithStubImpl$Fragment$FullPersonDataWithAttendance$groups(this._res);

  TRes _res;

  call({
    Fragment$FullPersonDataWithAttendance$groups$group? group,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$FullPersonDataWithAttendance$groups$group<TRes> get group =>
      CopyWith$Fragment$FullPersonDataWithAttendance$groups$group.stub(_res);
}

class Fragment$FullPersonDataWithAttendance$groups$group
    implements Fragment$Group, Fragment$GroupNoPhoto {
  Fragment$FullPersonDataWithAttendance$groups$group({
    required this.id,
    required this.name,
    this.color,
    this.$__typename = 'Groups',
    this.photoUpdatedAt,
    required this.attendanceHistoryAggregate,
  });

  factory Fragment$FullPersonDataWithAttendance$groups$group.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$attendanceHistoryAggregate = json['attendanceHistoryAggregate'];
    return Fragment$FullPersonDataWithAttendance$groups$group(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      $__typename: (l$$__typename as String),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
      attendanceHistoryAggregate:
          Fragment$FullPersonDataWithAttendance$groups$group$attendanceHistoryAggregate
              .fromJson((l$attendanceHistoryAggregate as Map<String, dynamic>)),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final String $__typename;

  final DateTime? photoUpdatedAt;

  final Fragment$FullPersonDataWithAttendance$groups$group$attendanceHistoryAggregate
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
    final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$$__typename,
      l$photoUpdatedAt,
      l$attendanceHistoryAggregate,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$FullPersonDataWithAttendance$groups$group) ||
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
    final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
    final lOther$attendanceHistoryAggregate = other.attendanceHistoryAggregate;
    if (l$attendanceHistoryAggregate != lOther$attendanceHistoryAggregate) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$FullPersonDataWithAttendance$groups$group
    on Fragment$FullPersonDataWithAttendance$groups$group {
  CopyWith$Fragment$FullPersonDataWithAttendance$groups$group<
          Fragment$FullPersonDataWithAttendance$groups$group>
      get copyWith =>
          CopyWith$Fragment$FullPersonDataWithAttendance$groups$group(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$FullPersonDataWithAttendance$groups$group<
    TRes> {
  factory CopyWith$Fragment$FullPersonDataWithAttendance$groups$group(
    Fragment$FullPersonDataWithAttendance$groups$group instance,
    TRes Function(Fragment$FullPersonDataWithAttendance$groups$group) then,
  ) = _CopyWithImpl$Fragment$FullPersonDataWithAttendance$groups$group;

  factory CopyWith$Fragment$FullPersonDataWithAttendance$groups$group.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$FullPersonDataWithAttendance$groups$group;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    DateTime? photoUpdatedAt,
    Fragment$FullPersonDataWithAttendance$groups$group$attendanceHistoryAggregate?
        attendanceHistoryAggregate,
  });
  CopyWith$Fragment$FullPersonDataWithAttendance$groups$group$attendanceHistoryAggregate<
      TRes> get attendanceHistoryAggregate;
}

class _CopyWithImpl$Fragment$FullPersonDataWithAttendance$groups$group<TRes>
    implements
        CopyWith$Fragment$FullPersonDataWithAttendance$groups$group<TRes> {
  _CopyWithImpl$Fragment$FullPersonDataWithAttendance$groups$group(
    this._instance,
    this._then,
  );

  final Fragment$FullPersonDataWithAttendance$groups$group _instance;

  final TRes Function(Fragment$FullPersonDataWithAttendance$groups$group) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? attendanceHistoryAggregate = _undefined,
  }) =>
      _then(Fragment$FullPersonDataWithAttendance$groups$group(
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
        attendanceHistoryAggregate: attendanceHistoryAggregate == _undefined ||
                attendanceHistoryAggregate == null
            ? _instance.attendanceHistoryAggregate
            : (attendanceHistoryAggregate
                as Fragment$FullPersonDataWithAttendance$groups$group$attendanceHistoryAggregate),
      ));
  CopyWith$Fragment$FullPersonDataWithAttendance$groups$group$attendanceHistoryAggregate<
      TRes> get attendanceHistoryAggregate {
    final local$attendanceHistoryAggregate =
        _instance.attendanceHistoryAggregate;
    return CopyWith$Fragment$FullPersonDataWithAttendance$groups$group$attendanceHistoryAggregate(
        local$attendanceHistoryAggregate,
        (e) => call(attendanceHistoryAggregate: e));
  }
}

class _CopyWithStubImpl$Fragment$FullPersonDataWithAttendance$groups$group<TRes>
    implements
        CopyWith$Fragment$FullPersonDataWithAttendance$groups$group<TRes> {
  _CopyWithStubImpl$Fragment$FullPersonDataWithAttendance$groups$group(
      this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    DateTime? photoUpdatedAt,
    Fragment$FullPersonDataWithAttendance$groups$group$attendanceHistoryAggregate?
        attendanceHistoryAggregate,
  }) =>
      _res;
  CopyWith$Fragment$FullPersonDataWithAttendance$groups$group$attendanceHistoryAggregate<
          TRes>
      get attendanceHistoryAggregate =>
          CopyWith$Fragment$FullPersonDataWithAttendance$groups$group$attendanceHistoryAggregate
              .stub(_res);
}

class Fragment$FullPersonDataWithAttendance$job
    implements Fragment$FullPersonData$job {
  Fragment$FullPersonDataWithAttendance$job({
    required this.id,
    required this.name,
    this.$__typename = 'Jobs',
  });

  factory Fragment$FullPersonDataWithAttendance$job.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Fragment$FullPersonDataWithAttendance$job(
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
    if (!(other is Fragment$FullPersonDataWithAttendance$job) ||
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

extension UtilityExtension$Fragment$FullPersonDataWithAttendance$job
    on Fragment$FullPersonDataWithAttendance$job {
  CopyWith$Fragment$FullPersonDataWithAttendance$job<
          Fragment$FullPersonDataWithAttendance$job>
      get copyWith => CopyWith$Fragment$FullPersonDataWithAttendance$job(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$FullPersonDataWithAttendance$job<TRes> {
  factory CopyWith$Fragment$FullPersonDataWithAttendance$job(
    Fragment$FullPersonDataWithAttendance$job instance,
    TRes Function(Fragment$FullPersonDataWithAttendance$job) then,
  ) = _CopyWithImpl$Fragment$FullPersonDataWithAttendance$job;

  factory CopyWith$Fragment$FullPersonDataWithAttendance$job.stub(TRes res) =
      _CopyWithStubImpl$Fragment$FullPersonDataWithAttendance$job;

  TRes call({
    UuidValue? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$FullPersonDataWithAttendance$job<TRes>
    implements CopyWith$Fragment$FullPersonDataWithAttendance$job<TRes> {
  _CopyWithImpl$Fragment$FullPersonDataWithAttendance$job(
    this._instance,
    this._then,
  );

  final Fragment$FullPersonDataWithAttendance$job _instance;

  final TRes Function(Fragment$FullPersonDataWithAttendance$job) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$FullPersonDataWithAttendance$job(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$FullPersonDataWithAttendance$job<TRes>
    implements CopyWith$Fragment$FullPersonDataWithAttendance$job<TRes> {
  _CopyWithStubImpl$Fragment$FullPersonDataWithAttendance$job(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$FullPersonDataWithAttendance$personType
    implements Fragment$FullPersonData$personType {
  Fragment$FullPersonDataWithAttendance$personType({
    required this.id,
    required this.name,
    this.$__typename = 'PersonTypes',
  });

  factory Fragment$FullPersonDataWithAttendance$personType.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Fragment$FullPersonDataWithAttendance$personType(
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
    if (!(other is Fragment$FullPersonDataWithAttendance$personType) ||
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

extension UtilityExtension$Fragment$FullPersonDataWithAttendance$personType
    on Fragment$FullPersonDataWithAttendance$personType {
  CopyWith$Fragment$FullPersonDataWithAttendance$personType<
          Fragment$FullPersonDataWithAttendance$personType>
      get copyWith => CopyWith$Fragment$FullPersonDataWithAttendance$personType(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$FullPersonDataWithAttendance$personType<TRes> {
  factory CopyWith$Fragment$FullPersonDataWithAttendance$personType(
    Fragment$FullPersonDataWithAttendance$personType instance,
    TRes Function(Fragment$FullPersonDataWithAttendance$personType) then,
  ) = _CopyWithImpl$Fragment$FullPersonDataWithAttendance$personType;

  factory CopyWith$Fragment$FullPersonDataWithAttendance$personType.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$FullPersonDataWithAttendance$personType;

  TRes call({
    UuidValue? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$FullPersonDataWithAttendance$personType<TRes>
    implements CopyWith$Fragment$FullPersonDataWithAttendance$personType<TRes> {
  _CopyWithImpl$Fragment$FullPersonDataWithAttendance$personType(
    this._instance,
    this._then,
  );

  final Fragment$FullPersonDataWithAttendance$personType _instance;

  final TRes Function(Fragment$FullPersonDataWithAttendance$personType) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$FullPersonDataWithAttendance$personType(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$FullPersonDataWithAttendance$personType<TRes>
    implements CopyWith$Fragment$FullPersonDataWithAttendance$personType<TRes> {
  _CopyWithStubImpl$Fragment$FullPersonDataWithAttendance$personType(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$FullPersonDataWithAttendance$qualification
    implements Fragment$FullPersonData$qualification {
  Fragment$FullPersonDataWithAttendance$qualification({
    required this.id,
    required this.name,
    this.$__typename = 'Qualifications',
  });

  factory Fragment$FullPersonDataWithAttendance$qualification.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Fragment$FullPersonDataWithAttendance$qualification(
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
    if (!(other is Fragment$FullPersonDataWithAttendance$qualification) ||
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

extension UtilityExtension$Fragment$FullPersonDataWithAttendance$qualification
    on Fragment$FullPersonDataWithAttendance$qualification {
  CopyWith$Fragment$FullPersonDataWithAttendance$qualification<
          Fragment$FullPersonDataWithAttendance$qualification>
      get copyWith =>
          CopyWith$Fragment$FullPersonDataWithAttendance$qualification(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$FullPersonDataWithAttendance$qualification<
    TRes> {
  factory CopyWith$Fragment$FullPersonDataWithAttendance$qualification(
    Fragment$FullPersonDataWithAttendance$qualification instance,
    TRes Function(Fragment$FullPersonDataWithAttendance$qualification) then,
  ) = _CopyWithImpl$Fragment$FullPersonDataWithAttendance$qualification;

  factory CopyWith$Fragment$FullPersonDataWithAttendance$qualification.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$FullPersonDataWithAttendance$qualification;

  TRes call({
    UuidValue? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$FullPersonDataWithAttendance$qualification<TRes>
    implements
        CopyWith$Fragment$FullPersonDataWithAttendance$qualification<TRes> {
  _CopyWithImpl$Fragment$FullPersonDataWithAttendance$qualification(
    this._instance,
    this._then,
  );

  final Fragment$FullPersonDataWithAttendance$qualification _instance;

  final TRes Function(Fragment$FullPersonDataWithAttendance$qualification)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$FullPersonDataWithAttendance$qualification(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$FullPersonDataWithAttendance$qualification<
        TRes>
    implements
        CopyWith$Fragment$FullPersonDataWithAttendance$qualification<TRes> {
  _CopyWithStubImpl$Fragment$FullPersonDataWithAttendance$qualification(
      this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$FullPersonDataWithAttendance$school
    implements Fragment$FullPersonData$school {
  Fragment$FullPersonDataWithAttendance$school({
    required this.id,
    required this.name,
    this.$__typename = 'Schools',
  });

  factory Fragment$FullPersonDataWithAttendance$school.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Fragment$FullPersonDataWithAttendance$school(
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
    if (!(other is Fragment$FullPersonDataWithAttendance$school) ||
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

extension UtilityExtension$Fragment$FullPersonDataWithAttendance$school
    on Fragment$FullPersonDataWithAttendance$school {
  CopyWith$Fragment$FullPersonDataWithAttendance$school<
          Fragment$FullPersonDataWithAttendance$school>
      get copyWith => CopyWith$Fragment$FullPersonDataWithAttendance$school(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$FullPersonDataWithAttendance$school<TRes> {
  factory CopyWith$Fragment$FullPersonDataWithAttendance$school(
    Fragment$FullPersonDataWithAttendance$school instance,
    TRes Function(Fragment$FullPersonDataWithAttendance$school) then,
  ) = _CopyWithImpl$Fragment$FullPersonDataWithAttendance$school;

  factory CopyWith$Fragment$FullPersonDataWithAttendance$school.stub(TRes res) =
      _CopyWithStubImpl$Fragment$FullPersonDataWithAttendance$school;

  TRes call({
    UuidValue? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$FullPersonDataWithAttendance$school<TRes>
    implements CopyWith$Fragment$FullPersonDataWithAttendance$school<TRes> {
  _CopyWithImpl$Fragment$FullPersonDataWithAttendance$school(
    this._instance,
    this._then,
  );

  final Fragment$FullPersonDataWithAttendance$school _instance;

  final TRes Function(Fragment$FullPersonDataWithAttendance$school) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$FullPersonDataWithAttendance$school(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$FullPersonDataWithAttendance$school<TRes>
    implements CopyWith$Fragment$FullPersonDataWithAttendance$school<TRes> {
  _CopyWithStubImpl$Fragment$FullPersonDataWithAttendance$school(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$FullPersonDataWithAttendance$services
    implements Fragment$FullPersonData$services {
  Fragment$FullPersonDataWithAttendance$services({
    required this.service,
    this.$__typename = 'PersonsServices',
  });

  factory Fragment$FullPersonDataWithAttendance$services.fromJson(
      Map<String, dynamic> json) {
    final l$service = json['service'];
    final l$$__typename = json['__typename'];
    return Fragment$FullPersonDataWithAttendance$services(
      service: Fragment$FullPersonDataWithAttendance$services$service.fromJson(
          (l$service as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$FullPersonDataWithAttendance$services$service service;

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
    if (!(other is Fragment$FullPersonDataWithAttendance$services) ||
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

extension UtilityExtension$Fragment$FullPersonDataWithAttendance$services
    on Fragment$FullPersonDataWithAttendance$services {
  CopyWith$Fragment$FullPersonDataWithAttendance$services<
          Fragment$FullPersonDataWithAttendance$services>
      get copyWith => CopyWith$Fragment$FullPersonDataWithAttendance$services(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$FullPersonDataWithAttendance$services<TRes> {
  factory CopyWith$Fragment$FullPersonDataWithAttendance$services(
    Fragment$FullPersonDataWithAttendance$services instance,
    TRes Function(Fragment$FullPersonDataWithAttendance$services) then,
  ) = _CopyWithImpl$Fragment$FullPersonDataWithAttendance$services;

  factory CopyWith$Fragment$FullPersonDataWithAttendance$services.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$FullPersonDataWithAttendance$services;

  TRes call({
    Fragment$FullPersonDataWithAttendance$services$service? service,
    String? $__typename,
  });
  CopyWith$Fragment$FullPersonDataWithAttendance$services$service<TRes>
      get service;
}

class _CopyWithImpl$Fragment$FullPersonDataWithAttendance$services<TRes>
    implements CopyWith$Fragment$FullPersonDataWithAttendance$services<TRes> {
  _CopyWithImpl$Fragment$FullPersonDataWithAttendance$services(
    this._instance,
    this._then,
  );

  final Fragment$FullPersonDataWithAttendance$services _instance;

  final TRes Function(Fragment$FullPersonDataWithAttendance$services) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? service = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$FullPersonDataWithAttendance$services(
        service: service == _undefined || service == null
            ? _instance.service
            : (service
                as Fragment$FullPersonDataWithAttendance$services$service),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$FullPersonDataWithAttendance$services$service<TRes>
      get service {
    final local$service = _instance.service;
    return CopyWith$Fragment$FullPersonDataWithAttendance$services$service(
        local$service, (e) => call(service: e));
  }
}

class _CopyWithStubImpl$Fragment$FullPersonDataWithAttendance$services<TRes>
    implements CopyWith$Fragment$FullPersonDataWithAttendance$services<TRes> {
  _CopyWithStubImpl$Fragment$FullPersonDataWithAttendance$services(this._res);

  TRes _res;

  call({
    Fragment$FullPersonDataWithAttendance$services$service? service,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$FullPersonDataWithAttendance$services$service<TRes>
      get service =>
          CopyWith$Fragment$FullPersonDataWithAttendance$services$service.stub(
              _res);
}

class Fragment$FullPersonDataWithAttendance$services$service
    implements Fragment$Service, Fragment$ServiceNoPhoto {
  Fragment$FullPersonDataWithAttendance$services$service({
    required this.id,
    required this.name,
    this.color,
    this.$__typename = 'Services',
    this.photoUpdatedAt,
    required this.attendanceHistoryAggregate,
  });

  factory Fragment$FullPersonDataWithAttendance$services$service.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$attendanceHistoryAggregate = json['attendanceHistoryAggregate'];
    return Fragment$FullPersonDataWithAttendance$services$service(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      $__typename: (l$$__typename as String),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
      attendanceHistoryAggregate:
          Fragment$FullPersonDataWithAttendance$services$service$attendanceHistoryAggregate
              .fromJson((l$attendanceHistoryAggregate as Map<String, dynamic>)),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final String $__typename;

  final DateTime? photoUpdatedAt;

  final Fragment$FullPersonDataWithAttendance$services$service$attendanceHistoryAggregate
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
    final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$$__typename,
      l$photoUpdatedAt,
      l$attendanceHistoryAggregate,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$FullPersonDataWithAttendance$services$service) ||
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
    final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
    final lOther$attendanceHistoryAggregate = other.attendanceHistoryAggregate;
    if (l$attendanceHistoryAggregate != lOther$attendanceHistoryAggregate) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$FullPersonDataWithAttendance$services$service
    on Fragment$FullPersonDataWithAttendance$services$service {
  CopyWith$Fragment$FullPersonDataWithAttendance$services$service<
          Fragment$FullPersonDataWithAttendance$services$service>
      get copyWith =>
          CopyWith$Fragment$FullPersonDataWithAttendance$services$service(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$FullPersonDataWithAttendance$services$service<
    TRes> {
  factory CopyWith$Fragment$FullPersonDataWithAttendance$services$service(
    Fragment$FullPersonDataWithAttendance$services$service instance,
    TRes Function(Fragment$FullPersonDataWithAttendance$services$service) then,
  ) = _CopyWithImpl$Fragment$FullPersonDataWithAttendance$services$service;

  factory CopyWith$Fragment$FullPersonDataWithAttendance$services$service.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$FullPersonDataWithAttendance$services$service;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    DateTime? photoUpdatedAt,
    Fragment$FullPersonDataWithAttendance$services$service$attendanceHistoryAggregate?
        attendanceHistoryAggregate,
  });
  CopyWith$Fragment$FullPersonDataWithAttendance$services$service$attendanceHistoryAggregate<
      TRes> get attendanceHistoryAggregate;
}

class _CopyWithImpl$Fragment$FullPersonDataWithAttendance$services$service<TRes>
    implements
        CopyWith$Fragment$FullPersonDataWithAttendance$services$service<TRes> {
  _CopyWithImpl$Fragment$FullPersonDataWithAttendance$services$service(
    this._instance,
    this._then,
  );

  final Fragment$FullPersonDataWithAttendance$services$service _instance;

  final TRes Function(Fragment$FullPersonDataWithAttendance$services$service)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? attendanceHistoryAggregate = _undefined,
  }) =>
      _then(Fragment$FullPersonDataWithAttendance$services$service(
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
        attendanceHistoryAggregate: attendanceHistoryAggregate == _undefined ||
                attendanceHistoryAggregate == null
            ? _instance.attendanceHistoryAggregate
            : (attendanceHistoryAggregate
                as Fragment$FullPersonDataWithAttendance$services$service$attendanceHistoryAggregate),
      ));
  CopyWith$Fragment$FullPersonDataWithAttendance$services$service$attendanceHistoryAggregate<
      TRes> get attendanceHistoryAggregate {
    final local$attendanceHistoryAggregate =
        _instance.attendanceHistoryAggregate;
    return CopyWith$Fragment$FullPersonDataWithAttendance$services$service$attendanceHistoryAggregate(
        local$attendanceHistoryAggregate,
        (e) => call(attendanceHistoryAggregate: e));
  }
}

class _CopyWithStubImpl$Fragment$FullPersonDataWithAttendance$services$service<
        TRes>
    implements
        CopyWith$Fragment$FullPersonDataWithAttendance$services$service<TRes> {
  _CopyWithStubImpl$Fragment$FullPersonDataWithAttendance$services$service(
      this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    DateTime? photoUpdatedAt,
    Fragment$FullPersonDataWithAttendance$services$service$attendanceHistoryAggregate?
        attendanceHistoryAggregate,
  }) =>
      _res;
  CopyWith$Fragment$FullPersonDataWithAttendance$services$service$attendanceHistoryAggregate<
          TRes>
      get attendanceHistoryAggregate =>
          CopyWith$Fragment$FullPersonDataWithAttendance$services$service$attendanceHistoryAggregate
              .stub(_res);
}

class Fragment$FullPersonDataWithAttendance$shammasLevel
    implements Fragment$FullPersonData$shammasLevel {
  Fragment$FullPersonDataWithAttendance$shammasLevel({
    required this.id,
    required this.name,
    required this.order,
    this.$__typename = 'ShammasLevels',
  });

  factory Fragment$FullPersonDataWithAttendance$shammasLevel.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$order = json['order'];
    final l$$__typename = json['__typename'];
    return Fragment$FullPersonDataWithAttendance$shammasLevel(
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
    if (!(other is Fragment$FullPersonDataWithAttendance$shammasLevel) ||
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

extension UtilityExtension$Fragment$FullPersonDataWithAttendance$shammasLevel
    on Fragment$FullPersonDataWithAttendance$shammasLevel {
  CopyWith$Fragment$FullPersonDataWithAttendance$shammasLevel<
          Fragment$FullPersonDataWithAttendance$shammasLevel>
      get copyWith =>
          CopyWith$Fragment$FullPersonDataWithAttendance$shammasLevel(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$FullPersonDataWithAttendance$shammasLevel<
    TRes> {
  factory CopyWith$Fragment$FullPersonDataWithAttendance$shammasLevel(
    Fragment$FullPersonDataWithAttendance$shammasLevel instance,
    TRes Function(Fragment$FullPersonDataWithAttendance$shammasLevel) then,
  ) = _CopyWithImpl$Fragment$FullPersonDataWithAttendance$shammasLevel;

  factory CopyWith$Fragment$FullPersonDataWithAttendance$shammasLevel.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$FullPersonDataWithAttendance$shammasLevel;

  TRes call({
    UuidValue? id,
    String? name,
    int? order,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$FullPersonDataWithAttendance$shammasLevel<TRes>
    implements
        CopyWith$Fragment$FullPersonDataWithAttendance$shammasLevel<TRes> {
  _CopyWithImpl$Fragment$FullPersonDataWithAttendance$shammasLevel(
    this._instance,
    this._then,
  );

  final Fragment$FullPersonDataWithAttendance$shammasLevel _instance;

  final TRes Function(Fragment$FullPersonDataWithAttendance$shammasLevel) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? order = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$FullPersonDataWithAttendance$shammasLevel(
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

class _CopyWithStubImpl$Fragment$FullPersonDataWithAttendance$shammasLevel<TRes>
    implements
        CopyWith$Fragment$FullPersonDataWithAttendance$shammasLevel<TRes> {
  _CopyWithStubImpl$Fragment$FullPersonDataWithAttendance$shammasLevel(
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

class Fragment$FullPersonDataWithAttendance$state
    implements Fragment$FullPersonData$state {
  Fragment$FullPersonDataWithAttendance$state({
    required this.id,
    required this.color,
    required this.name,
    this.$__typename = 'PersonStates',
  });

  factory Fragment$FullPersonDataWithAttendance$state.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$color = json['color'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Fragment$FullPersonDataWithAttendance$state(
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
    if (!(other is Fragment$FullPersonDataWithAttendance$state) ||
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

extension UtilityExtension$Fragment$FullPersonDataWithAttendance$state
    on Fragment$FullPersonDataWithAttendance$state {
  CopyWith$Fragment$FullPersonDataWithAttendance$state<
          Fragment$FullPersonDataWithAttendance$state>
      get copyWith => CopyWith$Fragment$FullPersonDataWithAttendance$state(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$FullPersonDataWithAttendance$state<TRes> {
  factory CopyWith$Fragment$FullPersonDataWithAttendance$state(
    Fragment$FullPersonDataWithAttendance$state instance,
    TRes Function(Fragment$FullPersonDataWithAttendance$state) then,
  ) = _CopyWithImpl$Fragment$FullPersonDataWithAttendance$state;

  factory CopyWith$Fragment$FullPersonDataWithAttendance$state.stub(TRes res) =
      _CopyWithStubImpl$Fragment$FullPersonDataWithAttendance$state;

  TRes call({
    UuidValue? id,
    int? color,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$FullPersonDataWithAttendance$state<TRes>
    implements CopyWith$Fragment$FullPersonDataWithAttendance$state<TRes> {
  _CopyWithImpl$Fragment$FullPersonDataWithAttendance$state(
    this._instance,
    this._then,
  );

  final Fragment$FullPersonDataWithAttendance$state _instance;

  final TRes Function(Fragment$FullPersonDataWithAttendance$state) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? color = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$FullPersonDataWithAttendance$state(
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

class _CopyWithStubImpl$Fragment$FullPersonDataWithAttendance$state<TRes>
    implements CopyWith$Fragment$FullPersonDataWithAttendance$state<TRes> {
  _CopyWithStubImpl$Fragment$FullPersonDataWithAttendance$state(this._res);

  TRes _res;

  call({
    UuidValue? id,
    int? color,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$FullPersonDataWithAttendance$studyYear
    implements Fragment$FullPersonData$studyYear {
  Fragment$FullPersonDataWithAttendance$studyYear({
    required this.name,
    required this.order,
    this.$__typename = 'StudyYears',
  });

  factory Fragment$FullPersonDataWithAttendance$studyYear.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$order = json['order'];
    final l$$__typename = json['__typename'];
    return Fragment$FullPersonDataWithAttendance$studyYear(
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
    if (!(other is Fragment$FullPersonDataWithAttendance$studyYear) ||
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

extension UtilityExtension$Fragment$FullPersonDataWithAttendance$studyYear
    on Fragment$FullPersonDataWithAttendance$studyYear {
  CopyWith$Fragment$FullPersonDataWithAttendance$studyYear<
          Fragment$FullPersonDataWithAttendance$studyYear>
      get copyWith => CopyWith$Fragment$FullPersonDataWithAttendance$studyYear(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$FullPersonDataWithAttendance$studyYear<TRes> {
  factory CopyWith$Fragment$FullPersonDataWithAttendance$studyYear(
    Fragment$FullPersonDataWithAttendance$studyYear instance,
    TRes Function(Fragment$FullPersonDataWithAttendance$studyYear) then,
  ) = _CopyWithImpl$Fragment$FullPersonDataWithAttendance$studyYear;

  factory CopyWith$Fragment$FullPersonDataWithAttendance$studyYear.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$FullPersonDataWithAttendance$studyYear;

  TRes call({
    String? name,
    int? order,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$FullPersonDataWithAttendance$studyYear<TRes>
    implements CopyWith$Fragment$FullPersonDataWithAttendance$studyYear<TRes> {
  _CopyWithImpl$Fragment$FullPersonDataWithAttendance$studyYear(
    this._instance,
    this._then,
  );

  final Fragment$FullPersonDataWithAttendance$studyYear _instance;

  final TRes Function(Fragment$FullPersonDataWithAttendance$studyYear) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? order = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$FullPersonDataWithAttendance$studyYear(
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

class _CopyWithStubImpl$Fragment$FullPersonDataWithAttendance$studyYear<TRes>
    implements CopyWith$Fragment$FullPersonDataWithAttendance$studyYear<TRes> {
  _CopyWithStubImpl$Fragment$FullPersonDataWithAttendance$studyYear(this._res);

  TRes _res;

  call({
    String? name,
    int? order,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$FullPersonDataWithAttendance$hobbies
    implements Fragment$FullPersonData$hobbies {
  Fragment$FullPersonDataWithAttendance$hobbies({
    required this.hobby,
    this.$__typename = 'PersonsHobbies',
  });

  factory Fragment$FullPersonDataWithAttendance$hobbies.fromJson(
      Map<String, dynamic> json) {
    final l$hobby = json['hobby'];
    final l$$__typename = json['__typename'];
    return Fragment$FullPersonDataWithAttendance$hobbies(
      hobby: Fragment$FullPersonDataWithAttendance$hobbies$hobby.fromJson(
          (l$hobby as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$FullPersonDataWithAttendance$hobbies$hobby hobby;

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
    if (!(other is Fragment$FullPersonDataWithAttendance$hobbies) ||
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

extension UtilityExtension$Fragment$FullPersonDataWithAttendance$hobbies
    on Fragment$FullPersonDataWithAttendance$hobbies {
  CopyWith$Fragment$FullPersonDataWithAttendance$hobbies<
          Fragment$FullPersonDataWithAttendance$hobbies>
      get copyWith => CopyWith$Fragment$FullPersonDataWithAttendance$hobbies(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$FullPersonDataWithAttendance$hobbies<TRes> {
  factory CopyWith$Fragment$FullPersonDataWithAttendance$hobbies(
    Fragment$FullPersonDataWithAttendance$hobbies instance,
    TRes Function(Fragment$FullPersonDataWithAttendance$hobbies) then,
  ) = _CopyWithImpl$Fragment$FullPersonDataWithAttendance$hobbies;

  factory CopyWith$Fragment$FullPersonDataWithAttendance$hobbies.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$FullPersonDataWithAttendance$hobbies;

  TRes call({
    Fragment$FullPersonDataWithAttendance$hobbies$hobby? hobby,
    String? $__typename,
  });
  CopyWith$Fragment$FullPersonDataWithAttendance$hobbies$hobby<TRes> get hobby;
}

class _CopyWithImpl$Fragment$FullPersonDataWithAttendance$hobbies<TRes>
    implements CopyWith$Fragment$FullPersonDataWithAttendance$hobbies<TRes> {
  _CopyWithImpl$Fragment$FullPersonDataWithAttendance$hobbies(
    this._instance,
    this._then,
  );

  final Fragment$FullPersonDataWithAttendance$hobbies _instance;

  final TRes Function(Fragment$FullPersonDataWithAttendance$hobbies) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hobby = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$FullPersonDataWithAttendance$hobbies(
        hobby: hobby == _undefined || hobby == null
            ? _instance.hobby
            : (hobby as Fragment$FullPersonDataWithAttendance$hobbies$hobby),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$FullPersonDataWithAttendance$hobbies$hobby<TRes> get hobby {
    final local$hobby = _instance.hobby;
    return CopyWith$Fragment$FullPersonDataWithAttendance$hobbies$hobby(
        local$hobby, (e) => call(hobby: e));
  }
}

class _CopyWithStubImpl$Fragment$FullPersonDataWithAttendance$hobbies<TRes>
    implements CopyWith$Fragment$FullPersonDataWithAttendance$hobbies<TRes> {
  _CopyWithStubImpl$Fragment$FullPersonDataWithAttendance$hobbies(this._res);

  TRes _res;

  call({
    Fragment$FullPersonDataWithAttendance$hobbies$hobby? hobby,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$FullPersonDataWithAttendance$hobbies$hobby<TRes>
      get hobby =>
          CopyWith$Fragment$FullPersonDataWithAttendance$hobbies$hobby.stub(
              _res);
}

class Fragment$FullPersonDataWithAttendance$hobbies$hobby
    implements Fragment$FullPersonData$hobbies$hobby {
  Fragment$FullPersonDataWithAttendance$hobbies$hobby({
    required this.id,
    required this.name,
    this.color,
    this.$__typename = 'Hobbies',
  });

  factory Fragment$FullPersonDataWithAttendance$hobbies$hobby.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    return Fragment$FullPersonDataWithAttendance$hobbies$hobby(
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
    if (!(other is Fragment$FullPersonDataWithAttendance$hobbies$hobby) ||
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

extension UtilityExtension$Fragment$FullPersonDataWithAttendance$hobbies$hobby
    on Fragment$FullPersonDataWithAttendance$hobbies$hobby {
  CopyWith$Fragment$FullPersonDataWithAttendance$hobbies$hobby<
          Fragment$FullPersonDataWithAttendance$hobbies$hobby>
      get copyWith =>
          CopyWith$Fragment$FullPersonDataWithAttendance$hobbies$hobby(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$FullPersonDataWithAttendance$hobbies$hobby<
    TRes> {
  factory CopyWith$Fragment$FullPersonDataWithAttendance$hobbies$hobby(
    Fragment$FullPersonDataWithAttendance$hobbies$hobby instance,
    TRes Function(Fragment$FullPersonDataWithAttendance$hobbies$hobby) then,
  ) = _CopyWithImpl$Fragment$FullPersonDataWithAttendance$hobbies$hobby;

  factory CopyWith$Fragment$FullPersonDataWithAttendance$hobbies$hobby.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$FullPersonDataWithAttendance$hobbies$hobby;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$FullPersonDataWithAttendance$hobbies$hobby<TRes>
    implements
        CopyWith$Fragment$FullPersonDataWithAttendance$hobbies$hobby<TRes> {
  _CopyWithImpl$Fragment$FullPersonDataWithAttendance$hobbies$hobby(
    this._instance,
    this._then,
  );

  final Fragment$FullPersonDataWithAttendance$hobbies$hobby _instance;

  final TRes Function(Fragment$FullPersonDataWithAttendance$hobbies$hobby)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$FullPersonDataWithAttendance$hobbies$hobby(
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

class _CopyWithStubImpl$Fragment$FullPersonDataWithAttendance$hobbies$hobby<
        TRes>
    implements
        CopyWith$Fragment$FullPersonDataWithAttendance$hobbies$hobby<TRes> {
  _CopyWithStubImpl$Fragment$FullPersonDataWithAttendance$hobbies$hobby(
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

class Fragment$FullPersonDataWithAttendance$tags
    implements Fragment$FullPersonData$tags {
  Fragment$FullPersonDataWithAttendance$tags({
    required this.tag,
    this.$__typename = 'PersonsTags',
  });

  factory Fragment$FullPersonDataWithAttendance$tags.fromJson(
      Map<String, dynamic> json) {
    final l$tag = json['tag'];
    final l$$__typename = json['__typename'];
    return Fragment$FullPersonDataWithAttendance$tags(
      tag: Fragment$FullPersonDataWithAttendance$tags$tag.fromJson(
          (l$tag as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$FullPersonDataWithAttendance$tags$tag tag;

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
    if (!(other is Fragment$FullPersonDataWithAttendance$tags) ||
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

extension UtilityExtension$Fragment$FullPersonDataWithAttendance$tags
    on Fragment$FullPersonDataWithAttendance$tags {
  CopyWith$Fragment$FullPersonDataWithAttendance$tags<
          Fragment$FullPersonDataWithAttendance$tags>
      get copyWith => CopyWith$Fragment$FullPersonDataWithAttendance$tags(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$FullPersonDataWithAttendance$tags<TRes> {
  factory CopyWith$Fragment$FullPersonDataWithAttendance$tags(
    Fragment$FullPersonDataWithAttendance$tags instance,
    TRes Function(Fragment$FullPersonDataWithAttendance$tags) then,
  ) = _CopyWithImpl$Fragment$FullPersonDataWithAttendance$tags;

  factory CopyWith$Fragment$FullPersonDataWithAttendance$tags.stub(TRes res) =
      _CopyWithStubImpl$Fragment$FullPersonDataWithAttendance$tags;

  TRes call({
    Fragment$FullPersonDataWithAttendance$tags$tag? tag,
    String? $__typename,
  });
  CopyWith$Fragment$FullPersonDataWithAttendance$tags$tag<TRes> get tag;
}

class _CopyWithImpl$Fragment$FullPersonDataWithAttendance$tags<TRes>
    implements CopyWith$Fragment$FullPersonDataWithAttendance$tags<TRes> {
  _CopyWithImpl$Fragment$FullPersonDataWithAttendance$tags(
    this._instance,
    this._then,
  );

  final Fragment$FullPersonDataWithAttendance$tags _instance;

  final TRes Function(Fragment$FullPersonDataWithAttendance$tags) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? tag = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$FullPersonDataWithAttendance$tags(
        tag: tag == _undefined || tag == null
            ? _instance.tag
            : (tag as Fragment$FullPersonDataWithAttendance$tags$tag),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$FullPersonDataWithAttendance$tags$tag<TRes> get tag {
    final local$tag = _instance.tag;
    return CopyWith$Fragment$FullPersonDataWithAttendance$tags$tag(
        local$tag, (e) => call(tag: e));
  }
}

class _CopyWithStubImpl$Fragment$FullPersonDataWithAttendance$tags<TRes>
    implements CopyWith$Fragment$FullPersonDataWithAttendance$tags<TRes> {
  _CopyWithStubImpl$Fragment$FullPersonDataWithAttendance$tags(this._res);

  TRes _res;

  call({
    Fragment$FullPersonDataWithAttendance$tags$tag? tag,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$FullPersonDataWithAttendance$tags$tag<TRes> get tag =>
      CopyWith$Fragment$FullPersonDataWithAttendance$tags$tag.stub(_res);
}

class Fragment$FullPersonDataWithAttendance$tags$tag
    implements Fragment$FullPersonData$tags$tag {
  Fragment$FullPersonDataWithAttendance$tags$tag({
    required this.id,
    required this.name,
    this.color,
    this.$__typename = 'Tags',
  });

  factory Fragment$FullPersonDataWithAttendance$tags$tag.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    return Fragment$FullPersonDataWithAttendance$tags$tag(
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
    if (!(other is Fragment$FullPersonDataWithAttendance$tags$tag) ||
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

extension UtilityExtension$Fragment$FullPersonDataWithAttendance$tags$tag
    on Fragment$FullPersonDataWithAttendance$tags$tag {
  CopyWith$Fragment$FullPersonDataWithAttendance$tags$tag<
          Fragment$FullPersonDataWithAttendance$tags$tag>
      get copyWith => CopyWith$Fragment$FullPersonDataWithAttendance$tags$tag(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$FullPersonDataWithAttendance$tags$tag<TRes> {
  factory CopyWith$Fragment$FullPersonDataWithAttendance$tags$tag(
    Fragment$FullPersonDataWithAttendance$tags$tag instance,
    TRes Function(Fragment$FullPersonDataWithAttendance$tags$tag) then,
  ) = _CopyWithImpl$Fragment$FullPersonDataWithAttendance$tags$tag;

  factory CopyWith$Fragment$FullPersonDataWithAttendance$tags$tag.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$FullPersonDataWithAttendance$tags$tag;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$FullPersonDataWithAttendance$tags$tag<TRes>
    implements CopyWith$Fragment$FullPersonDataWithAttendance$tags$tag<TRes> {
  _CopyWithImpl$Fragment$FullPersonDataWithAttendance$tags$tag(
    this._instance,
    this._then,
  );

  final Fragment$FullPersonDataWithAttendance$tags$tag _instance;

  final TRes Function(Fragment$FullPersonDataWithAttendance$tags$tag) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$FullPersonDataWithAttendance$tags$tag(
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

class _CopyWithStubImpl$Fragment$FullPersonDataWithAttendance$tags$tag<TRes>
    implements CopyWith$Fragment$FullPersonDataWithAttendance$tags$tag<TRes> {
  _CopyWithStubImpl$Fragment$FullPersonDataWithAttendance$tags$tag(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$FullPersonDataWithAttendance$user
    implements Fragment$FullPersonData$user {
  Fragment$FullPersonDataWithAttendance$user({
    required this.uid,
    required this.name,
    required this.email,
    this.$__typename = 'AuthUsersData',
  });

  factory Fragment$FullPersonDataWithAttendance$user.fromJson(
      Map<String, dynamic> json) {
    final l$uid = json['uid'];
    final l$name = json['name'];
    final l$email = json['email'];
    final l$$__typename = json['__typename'];
    return Fragment$FullPersonDataWithAttendance$user(
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
    if (!(other is Fragment$FullPersonDataWithAttendance$user) ||
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

extension UtilityExtension$Fragment$FullPersonDataWithAttendance$user
    on Fragment$FullPersonDataWithAttendance$user {
  CopyWith$Fragment$FullPersonDataWithAttendance$user<
          Fragment$FullPersonDataWithAttendance$user>
      get copyWith => CopyWith$Fragment$FullPersonDataWithAttendance$user(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$FullPersonDataWithAttendance$user<TRes> {
  factory CopyWith$Fragment$FullPersonDataWithAttendance$user(
    Fragment$FullPersonDataWithAttendance$user instance,
    TRes Function(Fragment$FullPersonDataWithAttendance$user) then,
  ) = _CopyWithImpl$Fragment$FullPersonDataWithAttendance$user;

  factory CopyWith$Fragment$FullPersonDataWithAttendance$user.stub(TRes res) =
      _CopyWithStubImpl$Fragment$FullPersonDataWithAttendance$user;

  TRes call({
    UuidValue? uid,
    String? name,
    String? email,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$FullPersonDataWithAttendance$user<TRes>
    implements CopyWith$Fragment$FullPersonDataWithAttendance$user<TRes> {
  _CopyWithImpl$Fragment$FullPersonDataWithAttendance$user(
    this._instance,
    this._then,
  );

  final Fragment$FullPersonDataWithAttendance$user _instance;

  final TRes Function(Fragment$FullPersonDataWithAttendance$user) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? uid = _undefined,
    Object? name = _undefined,
    Object? email = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$FullPersonDataWithAttendance$user(
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

class _CopyWithStubImpl$Fragment$FullPersonDataWithAttendance$user<TRes>
    implements CopyWith$Fragment$FullPersonDataWithAttendance$user<TRes> {
  _CopyWithStubImpl$Fragment$FullPersonDataWithAttendance$user(this._res);

  TRes _res;

  call({
    UuidValue? uid,
    String? name,
    String? email,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$FullPersonDataWithAttendance$classes$attendanceHistoryAggregate {
  Fragment$FullPersonDataWithAttendance$classes$attendanceHistoryAggregate({
    this.aggregate,
    this.$__typename = 'HistoryAttendanceHistoryAggregate',
  });

  factory Fragment$FullPersonDataWithAttendance$classes$attendanceHistoryAggregate.fromJson(
      Map<String, dynamic> json) {
    final l$aggregate = json['aggregate'];
    final l$$__typename = json['__typename'];
    return Fragment$FullPersonDataWithAttendance$classes$attendanceHistoryAggregate(
      aggregate: l$aggregate == null
          ? null
          : Fragment$FullPersonDataWithAttendance$classes$attendanceHistoryAggregate$aggregate
              .fromJson((l$aggregate as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$FullPersonDataWithAttendance$classes$attendanceHistoryAggregate$aggregate?
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
            is Fragment$FullPersonDataWithAttendance$classes$attendanceHistoryAggregate) ||
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

extension UtilityExtension$Fragment$FullPersonDataWithAttendance$classes$attendanceHistoryAggregate
    on Fragment$FullPersonDataWithAttendance$classes$attendanceHistoryAggregate {
  CopyWith$Fragment$FullPersonDataWithAttendance$classes$attendanceHistoryAggregate<
          Fragment$FullPersonDataWithAttendance$classes$attendanceHistoryAggregate>
      get copyWith =>
          CopyWith$Fragment$FullPersonDataWithAttendance$classes$attendanceHistoryAggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$FullPersonDataWithAttendance$classes$attendanceHistoryAggregate<
    TRes> {
  factory CopyWith$Fragment$FullPersonDataWithAttendance$classes$attendanceHistoryAggregate(
    Fragment$FullPersonDataWithAttendance$classes$attendanceHistoryAggregate
        instance,
    TRes Function(
            Fragment$FullPersonDataWithAttendance$classes$attendanceHistoryAggregate)
        then,
  ) = _CopyWithImpl$Fragment$FullPersonDataWithAttendance$classes$attendanceHistoryAggregate;

  factory CopyWith$Fragment$FullPersonDataWithAttendance$classes$attendanceHistoryAggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$FullPersonDataWithAttendance$classes$attendanceHistoryAggregate;

  TRes call({
    Fragment$FullPersonDataWithAttendance$classes$attendanceHistoryAggregate$aggregate?
        aggregate,
    String? $__typename,
  });
  CopyWith$Fragment$FullPersonDataWithAttendance$classes$attendanceHistoryAggregate$aggregate<
      TRes> get aggregate;
}

class _CopyWithImpl$Fragment$FullPersonDataWithAttendance$classes$attendanceHistoryAggregate<
        TRes>
    implements
        CopyWith$Fragment$FullPersonDataWithAttendance$classes$attendanceHistoryAggregate<
            TRes> {
  _CopyWithImpl$Fragment$FullPersonDataWithAttendance$classes$attendanceHistoryAggregate(
    this._instance,
    this._then,
  );

  final Fragment$FullPersonDataWithAttendance$classes$attendanceHistoryAggregate
      _instance;

  final TRes Function(
          Fragment$FullPersonDataWithAttendance$classes$attendanceHistoryAggregate)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? aggregate = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Fragment$FullPersonDataWithAttendance$classes$attendanceHistoryAggregate(
        aggregate: aggregate == _undefined
            ? _instance.aggregate
            : (aggregate
                as Fragment$FullPersonDataWithAttendance$classes$attendanceHistoryAggregate$aggregate?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$FullPersonDataWithAttendance$classes$attendanceHistoryAggregate$aggregate<
      TRes> get aggregate {
    final local$aggregate = _instance.aggregate;
    return local$aggregate == null
        ? CopyWith$Fragment$FullPersonDataWithAttendance$classes$attendanceHistoryAggregate$aggregate
            .stub(_then(_instance))
        : CopyWith$Fragment$FullPersonDataWithAttendance$classes$attendanceHistoryAggregate$aggregate(
            local$aggregate, (e) => call(aggregate: e));
  }
}

class _CopyWithStubImpl$Fragment$FullPersonDataWithAttendance$classes$attendanceHistoryAggregate<
        TRes>
    implements
        CopyWith$Fragment$FullPersonDataWithAttendance$classes$attendanceHistoryAggregate<
            TRes> {
  _CopyWithStubImpl$Fragment$FullPersonDataWithAttendance$classes$attendanceHistoryAggregate(
      this._res);

  TRes _res;

  call({
    Fragment$FullPersonDataWithAttendance$classes$attendanceHistoryAggregate$aggregate?
        aggregate,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$FullPersonDataWithAttendance$classes$attendanceHistoryAggregate$aggregate<
          TRes>
      get aggregate =>
          CopyWith$Fragment$FullPersonDataWithAttendance$classes$attendanceHistoryAggregate$aggregate
              .stub(_res);
}

class Fragment$FullPersonDataWithAttendance$classes$attendanceHistoryAggregate$aggregate {
  Fragment$FullPersonDataWithAttendance$classes$attendanceHistoryAggregate$aggregate({
    this.max,
    this.$__typename = 'HistoryAttendanceHistoryAggregateFields',
  });

  factory Fragment$FullPersonDataWithAttendance$classes$attendanceHistoryAggregate$aggregate.fromJson(
      Map<String, dynamic> json) {
    final l$max = json['max'];
    final l$$__typename = json['__typename'];
    return Fragment$FullPersonDataWithAttendance$classes$attendanceHistoryAggregate$aggregate(
      max: l$max == null
          ? null
          : Fragment$FullPersonDataWithAttendance$classes$attendanceHistoryAggregate$aggregate$max
              .fromJson((l$max as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$FullPersonDataWithAttendance$classes$attendanceHistoryAggregate$aggregate$max?
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
            is Fragment$FullPersonDataWithAttendance$classes$attendanceHistoryAggregate$aggregate) ||
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

extension UtilityExtension$Fragment$FullPersonDataWithAttendance$classes$attendanceHistoryAggregate$aggregate
    on Fragment$FullPersonDataWithAttendance$classes$attendanceHistoryAggregate$aggregate {
  CopyWith$Fragment$FullPersonDataWithAttendance$classes$attendanceHistoryAggregate$aggregate<
          Fragment$FullPersonDataWithAttendance$classes$attendanceHistoryAggregate$aggregate>
      get copyWith =>
          CopyWith$Fragment$FullPersonDataWithAttendance$classes$attendanceHistoryAggregate$aggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$FullPersonDataWithAttendance$classes$attendanceHistoryAggregate$aggregate<
    TRes> {
  factory CopyWith$Fragment$FullPersonDataWithAttendance$classes$attendanceHistoryAggregate$aggregate(
    Fragment$FullPersonDataWithAttendance$classes$attendanceHistoryAggregate$aggregate
        instance,
    TRes Function(
            Fragment$FullPersonDataWithAttendance$classes$attendanceHistoryAggregate$aggregate)
        then,
  ) = _CopyWithImpl$Fragment$FullPersonDataWithAttendance$classes$attendanceHistoryAggregate$aggregate;

  factory CopyWith$Fragment$FullPersonDataWithAttendance$classes$attendanceHistoryAggregate$aggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$FullPersonDataWithAttendance$classes$attendanceHistoryAggregate$aggregate;

  TRes call({
    Fragment$FullPersonDataWithAttendance$classes$attendanceHistoryAggregate$aggregate$max?
        max,
    String? $__typename,
  });
  CopyWith$Fragment$FullPersonDataWithAttendance$classes$attendanceHistoryAggregate$aggregate$max<
      TRes> get max;
}

class _CopyWithImpl$Fragment$FullPersonDataWithAttendance$classes$attendanceHistoryAggregate$aggregate<
        TRes>
    implements
        CopyWith$Fragment$FullPersonDataWithAttendance$classes$attendanceHistoryAggregate$aggregate<
            TRes> {
  _CopyWithImpl$Fragment$FullPersonDataWithAttendance$classes$attendanceHistoryAggregate$aggregate(
    this._instance,
    this._then,
  );

  final Fragment$FullPersonDataWithAttendance$classes$attendanceHistoryAggregate$aggregate
      _instance;

  final TRes Function(
          Fragment$FullPersonDataWithAttendance$classes$attendanceHistoryAggregate$aggregate)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? max = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Fragment$FullPersonDataWithAttendance$classes$attendanceHistoryAggregate$aggregate(
        max: max == _undefined
            ? _instance.max
            : (max
                as Fragment$FullPersonDataWithAttendance$classes$attendanceHistoryAggregate$aggregate$max?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$FullPersonDataWithAttendance$classes$attendanceHistoryAggregate$aggregate$max<
      TRes> get max {
    final local$max = _instance.max;
    return local$max == null
        ? CopyWith$Fragment$FullPersonDataWithAttendance$classes$attendanceHistoryAggregate$aggregate$max
            .stub(_then(_instance))
        : CopyWith$Fragment$FullPersonDataWithAttendance$classes$attendanceHistoryAggregate$aggregate$max(
            local$max, (e) => call(max: e));
  }
}

class _CopyWithStubImpl$Fragment$FullPersonDataWithAttendance$classes$attendanceHistoryAggregate$aggregate<
        TRes>
    implements
        CopyWith$Fragment$FullPersonDataWithAttendance$classes$attendanceHistoryAggregate$aggregate<
            TRes> {
  _CopyWithStubImpl$Fragment$FullPersonDataWithAttendance$classes$attendanceHistoryAggregate$aggregate(
      this._res);

  TRes _res;

  call({
    Fragment$FullPersonDataWithAttendance$classes$attendanceHistoryAggregate$aggregate$max?
        max,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$FullPersonDataWithAttendance$classes$attendanceHistoryAggregate$aggregate$max<
          TRes>
      get max =>
          CopyWith$Fragment$FullPersonDataWithAttendance$classes$attendanceHistoryAggregate$aggregate$max
              .stub(_res);
}

class Fragment$FullPersonDataWithAttendance$classes$attendanceHistoryAggregate$aggregate$max {
  Fragment$FullPersonDataWithAttendance$classes$attendanceHistoryAggregate$aggregate$max({
    this.time,
    this.$__typename = 'HistoryAttendanceHistoryMaxFields',
  });

  factory Fragment$FullPersonDataWithAttendance$classes$attendanceHistoryAggregate$aggregate$max.fromJson(
      Map<String, dynamic> json) {
    final l$time = json['time'];
    final l$$__typename = json['__typename'];
    return Fragment$FullPersonDataWithAttendance$classes$attendanceHistoryAggregate$aggregate$max(
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
            is Fragment$FullPersonDataWithAttendance$classes$attendanceHistoryAggregate$aggregate$max) ||
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

extension UtilityExtension$Fragment$FullPersonDataWithAttendance$classes$attendanceHistoryAggregate$aggregate$max
    on Fragment$FullPersonDataWithAttendance$classes$attendanceHistoryAggregate$aggregate$max {
  CopyWith$Fragment$FullPersonDataWithAttendance$classes$attendanceHistoryAggregate$aggregate$max<
          Fragment$FullPersonDataWithAttendance$classes$attendanceHistoryAggregate$aggregate$max>
      get copyWith =>
          CopyWith$Fragment$FullPersonDataWithAttendance$classes$attendanceHistoryAggregate$aggregate$max(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$FullPersonDataWithAttendance$classes$attendanceHistoryAggregate$aggregate$max<
    TRes> {
  factory CopyWith$Fragment$FullPersonDataWithAttendance$classes$attendanceHistoryAggregate$aggregate$max(
    Fragment$FullPersonDataWithAttendance$classes$attendanceHistoryAggregate$aggregate$max
        instance,
    TRes Function(
            Fragment$FullPersonDataWithAttendance$classes$attendanceHistoryAggregate$aggregate$max)
        then,
  ) = _CopyWithImpl$Fragment$FullPersonDataWithAttendance$classes$attendanceHistoryAggregate$aggregate$max;

  factory CopyWith$Fragment$FullPersonDataWithAttendance$classes$attendanceHistoryAggregate$aggregate$max.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$FullPersonDataWithAttendance$classes$attendanceHistoryAggregate$aggregate$max;

  TRes call({
    DateTime? time,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$FullPersonDataWithAttendance$classes$attendanceHistoryAggregate$aggregate$max<
        TRes>
    implements
        CopyWith$Fragment$FullPersonDataWithAttendance$classes$attendanceHistoryAggregate$aggregate$max<
            TRes> {
  _CopyWithImpl$Fragment$FullPersonDataWithAttendance$classes$attendanceHistoryAggregate$aggregate$max(
    this._instance,
    this._then,
  );

  final Fragment$FullPersonDataWithAttendance$classes$attendanceHistoryAggregate$aggregate$max
      _instance;

  final TRes Function(
          Fragment$FullPersonDataWithAttendance$classes$attendanceHistoryAggregate$aggregate$max)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? time = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Fragment$FullPersonDataWithAttendance$classes$attendanceHistoryAggregate$aggregate$max(
        time: time == _undefined ? _instance.time : (time as DateTime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$FullPersonDataWithAttendance$classes$attendanceHistoryAggregate$aggregate$max<
        TRes>
    implements
        CopyWith$Fragment$FullPersonDataWithAttendance$classes$attendanceHistoryAggregate$aggregate$max<
            TRes> {
  _CopyWithStubImpl$Fragment$FullPersonDataWithAttendance$classes$attendanceHistoryAggregate$aggregate$max(
      this._res);

  TRes _res;

  call({
    DateTime? time,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$FullPersonDataWithAttendance$groups$group$attendanceHistoryAggregate {
  Fragment$FullPersonDataWithAttendance$groups$group$attendanceHistoryAggregate({
    this.aggregate,
    this.$__typename = 'HistoryAttendanceHistoryAggregate',
  });

  factory Fragment$FullPersonDataWithAttendance$groups$group$attendanceHistoryAggregate.fromJson(
      Map<String, dynamic> json) {
    final l$aggregate = json['aggregate'];
    final l$$__typename = json['__typename'];
    return Fragment$FullPersonDataWithAttendance$groups$group$attendanceHistoryAggregate(
      aggregate: l$aggregate == null
          ? null
          : Fragment$FullPersonDataWithAttendance$groups$group$attendanceHistoryAggregate$aggregate
              .fromJson((l$aggregate as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$FullPersonDataWithAttendance$groups$group$attendanceHistoryAggregate$aggregate?
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
            is Fragment$FullPersonDataWithAttendance$groups$group$attendanceHistoryAggregate) ||
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

extension UtilityExtension$Fragment$FullPersonDataWithAttendance$groups$group$attendanceHistoryAggregate
    on Fragment$FullPersonDataWithAttendance$groups$group$attendanceHistoryAggregate {
  CopyWith$Fragment$FullPersonDataWithAttendance$groups$group$attendanceHistoryAggregate<
          Fragment$FullPersonDataWithAttendance$groups$group$attendanceHistoryAggregate>
      get copyWith =>
          CopyWith$Fragment$FullPersonDataWithAttendance$groups$group$attendanceHistoryAggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$FullPersonDataWithAttendance$groups$group$attendanceHistoryAggregate<
    TRes> {
  factory CopyWith$Fragment$FullPersonDataWithAttendance$groups$group$attendanceHistoryAggregate(
    Fragment$FullPersonDataWithAttendance$groups$group$attendanceHistoryAggregate
        instance,
    TRes Function(
            Fragment$FullPersonDataWithAttendance$groups$group$attendanceHistoryAggregate)
        then,
  ) = _CopyWithImpl$Fragment$FullPersonDataWithAttendance$groups$group$attendanceHistoryAggregate;

  factory CopyWith$Fragment$FullPersonDataWithAttendance$groups$group$attendanceHistoryAggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$FullPersonDataWithAttendance$groups$group$attendanceHistoryAggregate;

  TRes call({
    Fragment$FullPersonDataWithAttendance$groups$group$attendanceHistoryAggregate$aggregate?
        aggregate,
    String? $__typename,
  });
  CopyWith$Fragment$FullPersonDataWithAttendance$groups$group$attendanceHistoryAggregate$aggregate<
      TRes> get aggregate;
}

class _CopyWithImpl$Fragment$FullPersonDataWithAttendance$groups$group$attendanceHistoryAggregate<
        TRes>
    implements
        CopyWith$Fragment$FullPersonDataWithAttendance$groups$group$attendanceHistoryAggregate<
            TRes> {
  _CopyWithImpl$Fragment$FullPersonDataWithAttendance$groups$group$attendanceHistoryAggregate(
    this._instance,
    this._then,
  );

  final Fragment$FullPersonDataWithAttendance$groups$group$attendanceHistoryAggregate
      _instance;

  final TRes Function(
          Fragment$FullPersonDataWithAttendance$groups$group$attendanceHistoryAggregate)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? aggregate = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Fragment$FullPersonDataWithAttendance$groups$group$attendanceHistoryAggregate(
        aggregate: aggregate == _undefined
            ? _instance.aggregate
            : (aggregate
                as Fragment$FullPersonDataWithAttendance$groups$group$attendanceHistoryAggregate$aggregate?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$FullPersonDataWithAttendance$groups$group$attendanceHistoryAggregate$aggregate<
      TRes> get aggregate {
    final local$aggregate = _instance.aggregate;
    return local$aggregate == null
        ? CopyWith$Fragment$FullPersonDataWithAttendance$groups$group$attendanceHistoryAggregate$aggregate
            .stub(_then(_instance))
        : CopyWith$Fragment$FullPersonDataWithAttendance$groups$group$attendanceHistoryAggregate$aggregate(
            local$aggregate, (e) => call(aggregate: e));
  }
}

class _CopyWithStubImpl$Fragment$FullPersonDataWithAttendance$groups$group$attendanceHistoryAggregate<
        TRes>
    implements
        CopyWith$Fragment$FullPersonDataWithAttendance$groups$group$attendanceHistoryAggregate<
            TRes> {
  _CopyWithStubImpl$Fragment$FullPersonDataWithAttendance$groups$group$attendanceHistoryAggregate(
      this._res);

  TRes _res;

  call({
    Fragment$FullPersonDataWithAttendance$groups$group$attendanceHistoryAggregate$aggregate?
        aggregate,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$FullPersonDataWithAttendance$groups$group$attendanceHistoryAggregate$aggregate<
          TRes>
      get aggregate =>
          CopyWith$Fragment$FullPersonDataWithAttendance$groups$group$attendanceHistoryAggregate$aggregate
              .stub(_res);
}

class Fragment$FullPersonDataWithAttendance$groups$group$attendanceHistoryAggregate$aggregate {
  Fragment$FullPersonDataWithAttendance$groups$group$attendanceHistoryAggregate$aggregate({
    this.max,
    this.$__typename = 'HistoryAttendanceHistoryAggregateFields',
  });

  factory Fragment$FullPersonDataWithAttendance$groups$group$attendanceHistoryAggregate$aggregate.fromJson(
      Map<String, dynamic> json) {
    final l$max = json['max'];
    final l$$__typename = json['__typename'];
    return Fragment$FullPersonDataWithAttendance$groups$group$attendanceHistoryAggregate$aggregate(
      max: l$max == null
          ? null
          : Fragment$FullPersonDataWithAttendance$groups$group$attendanceHistoryAggregate$aggregate$max
              .fromJson((l$max as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$FullPersonDataWithAttendance$groups$group$attendanceHistoryAggregate$aggregate$max?
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
            is Fragment$FullPersonDataWithAttendance$groups$group$attendanceHistoryAggregate$aggregate) ||
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

extension UtilityExtension$Fragment$FullPersonDataWithAttendance$groups$group$attendanceHistoryAggregate$aggregate
    on Fragment$FullPersonDataWithAttendance$groups$group$attendanceHistoryAggregate$aggregate {
  CopyWith$Fragment$FullPersonDataWithAttendance$groups$group$attendanceHistoryAggregate$aggregate<
          Fragment$FullPersonDataWithAttendance$groups$group$attendanceHistoryAggregate$aggregate>
      get copyWith =>
          CopyWith$Fragment$FullPersonDataWithAttendance$groups$group$attendanceHistoryAggregate$aggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$FullPersonDataWithAttendance$groups$group$attendanceHistoryAggregate$aggregate<
    TRes> {
  factory CopyWith$Fragment$FullPersonDataWithAttendance$groups$group$attendanceHistoryAggregate$aggregate(
    Fragment$FullPersonDataWithAttendance$groups$group$attendanceHistoryAggregate$aggregate
        instance,
    TRes Function(
            Fragment$FullPersonDataWithAttendance$groups$group$attendanceHistoryAggregate$aggregate)
        then,
  ) = _CopyWithImpl$Fragment$FullPersonDataWithAttendance$groups$group$attendanceHistoryAggregate$aggregate;

  factory CopyWith$Fragment$FullPersonDataWithAttendance$groups$group$attendanceHistoryAggregate$aggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$FullPersonDataWithAttendance$groups$group$attendanceHistoryAggregate$aggregate;

  TRes call({
    Fragment$FullPersonDataWithAttendance$groups$group$attendanceHistoryAggregate$aggregate$max?
        max,
    String? $__typename,
  });
  CopyWith$Fragment$FullPersonDataWithAttendance$groups$group$attendanceHistoryAggregate$aggregate$max<
      TRes> get max;
}

class _CopyWithImpl$Fragment$FullPersonDataWithAttendance$groups$group$attendanceHistoryAggregate$aggregate<
        TRes>
    implements
        CopyWith$Fragment$FullPersonDataWithAttendance$groups$group$attendanceHistoryAggregate$aggregate<
            TRes> {
  _CopyWithImpl$Fragment$FullPersonDataWithAttendance$groups$group$attendanceHistoryAggregate$aggregate(
    this._instance,
    this._then,
  );

  final Fragment$FullPersonDataWithAttendance$groups$group$attendanceHistoryAggregate$aggregate
      _instance;

  final TRes Function(
          Fragment$FullPersonDataWithAttendance$groups$group$attendanceHistoryAggregate$aggregate)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? max = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Fragment$FullPersonDataWithAttendance$groups$group$attendanceHistoryAggregate$aggregate(
        max: max == _undefined
            ? _instance.max
            : (max
                as Fragment$FullPersonDataWithAttendance$groups$group$attendanceHistoryAggregate$aggregate$max?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$FullPersonDataWithAttendance$groups$group$attendanceHistoryAggregate$aggregate$max<
      TRes> get max {
    final local$max = _instance.max;
    return local$max == null
        ? CopyWith$Fragment$FullPersonDataWithAttendance$groups$group$attendanceHistoryAggregate$aggregate$max
            .stub(_then(_instance))
        : CopyWith$Fragment$FullPersonDataWithAttendance$groups$group$attendanceHistoryAggregate$aggregate$max(
            local$max, (e) => call(max: e));
  }
}

class _CopyWithStubImpl$Fragment$FullPersonDataWithAttendance$groups$group$attendanceHistoryAggregate$aggregate<
        TRes>
    implements
        CopyWith$Fragment$FullPersonDataWithAttendance$groups$group$attendanceHistoryAggregate$aggregate<
            TRes> {
  _CopyWithStubImpl$Fragment$FullPersonDataWithAttendance$groups$group$attendanceHistoryAggregate$aggregate(
      this._res);

  TRes _res;

  call({
    Fragment$FullPersonDataWithAttendance$groups$group$attendanceHistoryAggregate$aggregate$max?
        max,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$FullPersonDataWithAttendance$groups$group$attendanceHistoryAggregate$aggregate$max<
          TRes>
      get max =>
          CopyWith$Fragment$FullPersonDataWithAttendance$groups$group$attendanceHistoryAggregate$aggregate$max
              .stub(_res);
}

class Fragment$FullPersonDataWithAttendance$groups$group$attendanceHistoryAggregate$aggregate$max {
  Fragment$FullPersonDataWithAttendance$groups$group$attendanceHistoryAggregate$aggregate$max({
    this.time,
    this.$__typename = 'HistoryAttendanceHistoryMaxFields',
  });

  factory Fragment$FullPersonDataWithAttendance$groups$group$attendanceHistoryAggregate$aggregate$max.fromJson(
      Map<String, dynamic> json) {
    final l$time = json['time'];
    final l$$__typename = json['__typename'];
    return Fragment$FullPersonDataWithAttendance$groups$group$attendanceHistoryAggregate$aggregate$max(
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
            is Fragment$FullPersonDataWithAttendance$groups$group$attendanceHistoryAggregate$aggregate$max) ||
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

extension UtilityExtension$Fragment$FullPersonDataWithAttendance$groups$group$attendanceHistoryAggregate$aggregate$max
    on Fragment$FullPersonDataWithAttendance$groups$group$attendanceHistoryAggregate$aggregate$max {
  CopyWith$Fragment$FullPersonDataWithAttendance$groups$group$attendanceHistoryAggregate$aggregate$max<
          Fragment$FullPersonDataWithAttendance$groups$group$attendanceHistoryAggregate$aggregate$max>
      get copyWith =>
          CopyWith$Fragment$FullPersonDataWithAttendance$groups$group$attendanceHistoryAggregate$aggregate$max(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$FullPersonDataWithAttendance$groups$group$attendanceHistoryAggregate$aggregate$max<
    TRes> {
  factory CopyWith$Fragment$FullPersonDataWithAttendance$groups$group$attendanceHistoryAggregate$aggregate$max(
    Fragment$FullPersonDataWithAttendance$groups$group$attendanceHistoryAggregate$aggregate$max
        instance,
    TRes Function(
            Fragment$FullPersonDataWithAttendance$groups$group$attendanceHistoryAggregate$aggregate$max)
        then,
  ) = _CopyWithImpl$Fragment$FullPersonDataWithAttendance$groups$group$attendanceHistoryAggregate$aggregate$max;

  factory CopyWith$Fragment$FullPersonDataWithAttendance$groups$group$attendanceHistoryAggregate$aggregate$max.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$FullPersonDataWithAttendance$groups$group$attendanceHistoryAggregate$aggregate$max;

  TRes call({
    DateTime? time,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$FullPersonDataWithAttendance$groups$group$attendanceHistoryAggregate$aggregate$max<
        TRes>
    implements
        CopyWith$Fragment$FullPersonDataWithAttendance$groups$group$attendanceHistoryAggregate$aggregate$max<
            TRes> {
  _CopyWithImpl$Fragment$FullPersonDataWithAttendance$groups$group$attendanceHistoryAggregate$aggregate$max(
    this._instance,
    this._then,
  );

  final Fragment$FullPersonDataWithAttendance$groups$group$attendanceHistoryAggregate$aggregate$max
      _instance;

  final TRes Function(
          Fragment$FullPersonDataWithAttendance$groups$group$attendanceHistoryAggregate$aggregate$max)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? time = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Fragment$FullPersonDataWithAttendance$groups$group$attendanceHistoryAggregate$aggregate$max(
        time: time == _undefined ? _instance.time : (time as DateTime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$FullPersonDataWithAttendance$groups$group$attendanceHistoryAggregate$aggregate$max<
        TRes>
    implements
        CopyWith$Fragment$FullPersonDataWithAttendance$groups$group$attendanceHistoryAggregate$aggregate$max<
            TRes> {
  _CopyWithStubImpl$Fragment$FullPersonDataWithAttendance$groups$group$attendanceHistoryAggregate$aggregate$max(
      this._res);

  TRes _res;

  call({
    DateTime? time,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$FullPersonDataWithAttendance$services$service$attendanceHistoryAggregate {
  Fragment$FullPersonDataWithAttendance$services$service$attendanceHistoryAggregate({
    this.aggregate,
    this.$__typename = 'HistoryAttendanceHistoryAggregate',
  });

  factory Fragment$FullPersonDataWithAttendance$services$service$attendanceHistoryAggregate.fromJson(
      Map<String, dynamic> json) {
    final l$aggregate = json['aggregate'];
    final l$$__typename = json['__typename'];
    return Fragment$FullPersonDataWithAttendance$services$service$attendanceHistoryAggregate(
      aggregate: l$aggregate == null
          ? null
          : Fragment$FullPersonDataWithAttendance$services$service$attendanceHistoryAggregate$aggregate
              .fromJson((l$aggregate as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$FullPersonDataWithAttendance$services$service$attendanceHistoryAggregate$aggregate?
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
            is Fragment$FullPersonDataWithAttendance$services$service$attendanceHistoryAggregate) ||
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

extension UtilityExtension$Fragment$FullPersonDataWithAttendance$services$service$attendanceHistoryAggregate
    on Fragment$FullPersonDataWithAttendance$services$service$attendanceHistoryAggregate {
  CopyWith$Fragment$FullPersonDataWithAttendance$services$service$attendanceHistoryAggregate<
          Fragment$FullPersonDataWithAttendance$services$service$attendanceHistoryAggregate>
      get copyWith =>
          CopyWith$Fragment$FullPersonDataWithAttendance$services$service$attendanceHistoryAggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$FullPersonDataWithAttendance$services$service$attendanceHistoryAggregate<
    TRes> {
  factory CopyWith$Fragment$FullPersonDataWithAttendance$services$service$attendanceHistoryAggregate(
    Fragment$FullPersonDataWithAttendance$services$service$attendanceHistoryAggregate
        instance,
    TRes Function(
            Fragment$FullPersonDataWithAttendance$services$service$attendanceHistoryAggregate)
        then,
  ) = _CopyWithImpl$Fragment$FullPersonDataWithAttendance$services$service$attendanceHistoryAggregate;

  factory CopyWith$Fragment$FullPersonDataWithAttendance$services$service$attendanceHistoryAggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$FullPersonDataWithAttendance$services$service$attendanceHistoryAggregate;

  TRes call({
    Fragment$FullPersonDataWithAttendance$services$service$attendanceHistoryAggregate$aggregate?
        aggregate,
    String? $__typename,
  });
  CopyWith$Fragment$FullPersonDataWithAttendance$services$service$attendanceHistoryAggregate$aggregate<
      TRes> get aggregate;
}

class _CopyWithImpl$Fragment$FullPersonDataWithAttendance$services$service$attendanceHistoryAggregate<
        TRes>
    implements
        CopyWith$Fragment$FullPersonDataWithAttendance$services$service$attendanceHistoryAggregate<
            TRes> {
  _CopyWithImpl$Fragment$FullPersonDataWithAttendance$services$service$attendanceHistoryAggregate(
    this._instance,
    this._then,
  );

  final Fragment$FullPersonDataWithAttendance$services$service$attendanceHistoryAggregate
      _instance;

  final TRes Function(
          Fragment$FullPersonDataWithAttendance$services$service$attendanceHistoryAggregate)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? aggregate = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Fragment$FullPersonDataWithAttendance$services$service$attendanceHistoryAggregate(
        aggregate: aggregate == _undefined
            ? _instance.aggregate
            : (aggregate
                as Fragment$FullPersonDataWithAttendance$services$service$attendanceHistoryAggregate$aggregate?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$FullPersonDataWithAttendance$services$service$attendanceHistoryAggregate$aggregate<
      TRes> get aggregate {
    final local$aggregate = _instance.aggregate;
    return local$aggregate == null
        ? CopyWith$Fragment$FullPersonDataWithAttendance$services$service$attendanceHistoryAggregate$aggregate
            .stub(_then(_instance))
        : CopyWith$Fragment$FullPersonDataWithAttendance$services$service$attendanceHistoryAggregate$aggregate(
            local$aggregate, (e) => call(aggregate: e));
  }
}

class _CopyWithStubImpl$Fragment$FullPersonDataWithAttendance$services$service$attendanceHistoryAggregate<
        TRes>
    implements
        CopyWith$Fragment$FullPersonDataWithAttendance$services$service$attendanceHistoryAggregate<
            TRes> {
  _CopyWithStubImpl$Fragment$FullPersonDataWithAttendance$services$service$attendanceHistoryAggregate(
      this._res);

  TRes _res;

  call({
    Fragment$FullPersonDataWithAttendance$services$service$attendanceHistoryAggregate$aggregate?
        aggregate,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$FullPersonDataWithAttendance$services$service$attendanceHistoryAggregate$aggregate<
          TRes>
      get aggregate =>
          CopyWith$Fragment$FullPersonDataWithAttendance$services$service$attendanceHistoryAggregate$aggregate
              .stub(_res);
}

class Fragment$FullPersonDataWithAttendance$services$service$attendanceHistoryAggregate$aggregate {
  Fragment$FullPersonDataWithAttendance$services$service$attendanceHistoryAggregate$aggregate({
    this.max,
    this.$__typename = 'HistoryAttendanceHistoryAggregateFields',
  });

  factory Fragment$FullPersonDataWithAttendance$services$service$attendanceHistoryAggregate$aggregate.fromJson(
      Map<String, dynamic> json) {
    final l$max = json['max'];
    final l$$__typename = json['__typename'];
    return Fragment$FullPersonDataWithAttendance$services$service$attendanceHistoryAggregate$aggregate(
      max: l$max == null
          ? null
          : Fragment$FullPersonDataWithAttendance$services$service$attendanceHistoryAggregate$aggregate$max
              .fromJson((l$max as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$FullPersonDataWithAttendance$services$service$attendanceHistoryAggregate$aggregate$max?
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
            is Fragment$FullPersonDataWithAttendance$services$service$attendanceHistoryAggregate$aggregate) ||
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

extension UtilityExtension$Fragment$FullPersonDataWithAttendance$services$service$attendanceHistoryAggregate$aggregate
    on Fragment$FullPersonDataWithAttendance$services$service$attendanceHistoryAggregate$aggregate {
  CopyWith$Fragment$FullPersonDataWithAttendance$services$service$attendanceHistoryAggregate$aggregate<
          Fragment$FullPersonDataWithAttendance$services$service$attendanceHistoryAggregate$aggregate>
      get copyWith =>
          CopyWith$Fragment$FullPersonDataWithAttendance$services$service$attendanceHistoryAggregate$aggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$FullPersonDataWithAttendance$services$service$attendanceHistoryAggregate$aggregate<
    TRes> {
  factory CopyWith$Fragment$FullPersonDataWithAttendance$services$service$attendanceHistoryAggregate$aggregate(
    Fragment$FullPersonDataWithAttendance$services$service$attendanceHistoryAggregate$aggregate
        instance,
    TRes Function(
            Fragment$FullPersonDataWithAttendance$services$service$attendanceHistoryAggregate$aggregate)
        then,
  ) = _CopyWithImpl$Fragment$FullPersonDataWithAttendance$services$service$attendanceHistoryAggregate$aggregate;

  factory CopyWith$Fragment$FullPersonDataWithAttendance$services$service$attendanceHistoryAggregate$aggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$FullPersonDataWithAttendance$services$service$attendanceHistoryAggregate$aggregate;

  TRes call({
    Fragment$FullPersonDataWithAttendance$services$service$attendanceHistoryAggregate$aggregate$max?
        max,
    String? $__typename,
  });
  CopyWith$Fragment$FullPersonDataWithAttendance$services$service$attendanceHistoryAggregate$aggregate$max<
      TRes> get max;
}

class _CopyWithImpl$Fragment$FullPersonDataWithAttendance$services$service$attendanceHistoryAggregate$aggregate<
        TRes>
    implements
        CopyWith$Fragment$FullPersonDataWithAttendance$services$service$attendanceHistoryAggregate$aggregate<
            TRes> {
  _CopyWithImpl$Fragment$FullPersonDataWithAttendance$services$service$attendanceHistoryAggregate$aggregate(
    this._instance,
    this._then,
  );

  final Fragment$FullPersonDataWithAttendance$services$service$attendanceHistoryAggregate$aggregate
      _instance;

  final TRes Function(
          Fragment$FullPersonDataWithAttendance$services$service$attendanceHistoryAggregate$aggregate)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? max = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Fragment$FullPersonDataWithAttendance$services$service$attendanceHistoryAggregate$aggregate(
        max: max == _undefined
            ? _instance.max
            : (max
                as Fragment$FullPersonDataWithAttendance$services$service$attendanceHistoryAggregate$aggregate$max?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$FullPersonDataWithAttendance$services$service$attendanceHistoryAggregate$aggregate$max<
      TRes> get max {
    final local$max = _instance.max;
    return local$max == null
        ? CopyWith$Fragment$FullPersonDataWithAttendance$services$service$attendanceHistoryAggregate$aggregate$max
            .stub(_then(_instance))
        : CopyWith$Fragment$FullPersonDataWithAttendance$services$service$attendanceHistoryAggregate$aggregate$max(
            local$max, (e) => call(max: e));
  }
}

class _CopyWithStubImpl$Fragment$FullPersonDataWithAttendance$services$service$attendanceHistoryAggregate$aggregate<
        TRes>
    implements
        CopyWith$Fragment$FullPersonDataWithAttendance$services$service$attendanceHistoryAggregate$aggregate<
            TRes> {
  _CopyWithStubImpl$Fragment$FullPersonDataWithAttendance$services$service$attendanceHistoryAggregate$aggregate(
      this._res);

  TRes _res;

  call({
    Fragment$FullPersonDataWithAttendance$services$service$attendanceHistoryAggregate$aggregate$max?
        max,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$FullPersonDataWithAttendance$services$service$attendanceHistoryAggregate$aggregate$max<
          TRes>
      get max =>
          CopyWith$Fragment$FullPersonDataWithAttendance$services$service$attendanceHistoryAggregate$aggregate$max
              .stub(_res);
}

class Fragment$FullPersonDataWithAttendance$services$service$attendanceHistoryAggregate$aggregate$max {
  Fragment$FullPersonDataWithAttendance$services$service$attendanceHistoryAggregate$aggregate$max({
    this.time,
    this.$__typename = 'HistoryAttendanceHistoryMaxFields',
  });

  factory Fragment$FullPersonDataWithAttendance$services$service$attendanceHistoryAggregate$aggregate$max.fromJson(
      Map<String, dynamic> json) {
    final l$time = json['time'];
    final l$$__typename = json['__typename'];
    return Fragment$FullPersonDataWithAttendance$services$service$attendanceHistoryAggregate$aggregate$max(
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
            is Fragment$FullPersonDataWithAttendance$services$service$attendanceHistoryAggregate$aggregate$max) ||
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

extension UtilityExtension$Fragment$FullPersonDataWithAttendance$services$service$attendanceHistoryAggregate$aggregate$max
    on Fragment$FullPersonDataWithAttendance$services$service$attendanceHistoryAggregate$aggregate$max {
  CopyWith$Fragment$FullPersonDataWithAttendance$services$service$attendanceHistoryAggregate$aggregate$max<
          Fragment$FullPersonDataWithAttendance$services$service$attendanceHistoryAggregate$aggregate$max>
      get copyWith =>
          CopyWith$Fragment$FullPersonDataWithAttendance$services$service$attendanceHistoryAggregate$aggregate$max(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$FullPersonDataWithAttendance$services$service$attendanceHistoryAggregate$aggregate$max<
    TRes> {
  factory CopyWith$Fragment$FullPersonDataWithAttendance$services$service$attendanceHistoryAggregate$aggregate$max(
    Fragment$FullPersonDataWithAttendance$services$service$attendanceHistoryAggregate$aggregate$max
        instance,
    TRes Function(
            Fragment$FullPersonDataWithAttendance$services$service$attendanceHistoryAggregate$aggregate$max)
        then,
  ) = _CopyWithImpl$Fragment$FullPersonDataWithAttendance$services$service$attendanceHistoryAggregate$aggregate$max;

  factory CopyWith$Fragment$FullPersonDataWithAttendance$services$service$attendanceHistoryAggregate$aggregate$max.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$FullPersonDataWithAttendance$services$service$attendanceHistoryAggregate$aggregate$max;

  TRes call({
    DateTime? time,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$FullPersonDataWithAttendance$services$service$attendanceHistoryAggregate$aggregate$max<
        TRes>
    implements
        CopyWith$Fragment$FullPersonDataWithAttendance$services$service$attendanceHistoryAggregate$aggregate$max<
            TRes> {
  _CopyWithImpl$Fragment$FullPersonDataWithAttendance$services$service$attendanceHistoryAggregate$aggregate$max(
    this._instance,
    this._then,
  );

  final Fragment$FullPersonDataWithAttendance$services$service$attendanceHistoryAggregate$aggregate$max
      _instance;

  final TRes Function(
          Fragment$FullPersonDataWithAttendance$services$service$attendanceHistoryAggregate$aggregate$max)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? time = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Fragment$FullPersonDataWithAttendance$services$service$attendanceHistoryAggregate$aggregate$max(
        time: time == _undefined ? _instance.time : (time as DateTime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$FullPersonDataWithAttendance$services$service$attendanceHistoryAggregate$aggregate$max<
        TRes>
    implements
        CopyWith$Fragment$FullPersonDataWithAttendance$services$service$attendanceHistoryAggregate$aggregate$max<
            TRes> {
  _CopyWithStubImpl$Fragment$FullPersonDataWithAttendance$services$service$attendanceHistoryAggregate$aggregate$max(
      this._res);

  TRes _res;

  call({
    DateTime? time,
    String? $__typename,
  }) =>
      _res;
}
