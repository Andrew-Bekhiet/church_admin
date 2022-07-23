// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart = 2.12
// ignore_for_file: constant_identifier_names, overridden_fields

import 'package:artemis/artemis.dart';
import 'package:church_admin/graphql/scalars.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
import 'package:json_annotation/json_annotation.dart';

part 'graphql.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class GetAreasStream$SubscriptionRoot$Areas extends JsonSerializable
    with EquatableMixin {
  GetAreasStream$SubscriptionRoot$Areas();

  factory GetAreasStream$SubscriptionRoot$Areas.fromJson(
          Map<String, dynamic> json) =>
      _$GetAreasStream$SubscriptionRoot$AreasFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue id;

  late String name;

  Map<String, dynamic>? bounds;

  int? color;

  DateTime? photoUpdatedAt;

  @override
  List<Object?> get props => [id, name, bounds, color, photoUpdatedAt];
  @override
  Map<String, dynamic> toJson() =>
      _$GetAreasStream$SubscriptionRoot$AreasToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetAreasStream$SubscriptionRoot extends JsonSerializable
    with EquatableMixin {
  GetAreasStream$SubscriptionRoot();

  factory GetAreasStream$SubscriptionRoot.fromJson(Map<String, dynamic> json) =>
      _$GetAreasStream$SubscriptionRootFromJson(json);

  late List<GetAreasStream$SubscriptionRoot$Areas> areas;

  @override
  List<Object?> get props => [areas];
  @override
  Map<String, dynamic> toJson() =>
      _$GetAreasStream$SubscriptionRootToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AreasBoolExp extends JsonSerializable with EquatableMixin {
  AreasBoolExp(
      {this.$and,
      this.$not,
      this.$or,
      this.adminUsers,
      this.bounds,
      this.color,
      this.families,
      this.firestoreId,
      this.id,
      this.isUserAllowedToRead,
      this.isUserAllowedToWrite,
      this.lastEdit,
      this.name,
      this.persons,
      this.photoUpdatedAt,
      this.stores,
      this.streets});

  factory AreasBoolExp.fromJson(Map<String, dynamic> json) =>
      _$AreasBoolExpFromJson(json);

  @JsonKey(name: '_and')
  List<AreasBoolExp>? $and;

  @JsonKey(name: '_not')
  AreasBoolExp? $not;

  @JsonKey(name: '_or')
  List<AreasBoolExp>? $or;

  UsersPermissionsBoolExp? adminUsers;

  GeographyComparisonExp? bounds;

  BigintComparisonExp? color;

  FamiliesBoolExp? families;

  StringComparisonExp? firestoreId;

  UuidComparisonExp? id;

  BooleanComparisonExp? isUserAllowedToRead;

  BooleanComparisonExp? isUserAllowedToWrite;

  JsonbComparisonExp? lastEdit;

  StringComparisonExp? name;

  PersonsBoolExp? persons;

  TimestamptzComparisonExp? photoUpdatedAt;

  StoresBoolExp? stores;

  StreetsBoolExp? streets;

  @override
  List<Object?> get props => [
        $and,
        $not,
        $or,
        adminUsers,
        bounds,
        color,
        families,
        firestoreId,
        id,
        isUserAllowedToRead,
        isUserAllowedToWrite,
        lastEdit,
        name,
        persons,
        photoUpdatedAt,
        stores,
        streets
      ];
  @override
  Map<String, dynamic> toJson() => _$AreasBoolExpToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UsersPermissionsBoolExp extends JsonSerializable with EquatableMixin {
  UsersPermissionsBoolExp(
      {this.$and,
      this.$not,
      this.$or,
      this.adminOnArea,
      this.adminOnGroup,
      this.adminOnService,
      this.area,
      this.areaAdminOnUsers,
      this.areaAllowEdit,
      this.group,
      this.groupAdminOnUsers,
      this.groupAllowEdit,
      this.isUserAllowedToRead,
      this.isUserAllowedToChange,
      this.permissionId,
      this.service,
      this.serviceAdminOnUsers,
      this.serviceAllowEdit,
      this.serviceGender,
      this.serviceStudyYear,
      this.uid,
      this.user});

  factory UsersPermissionsBoolExp.fromJson(Map<String, dynamic> json) =>
      _$UsersPermissionsBoolExpFromJson(json);

  @JsonKey(name: '_and')
  List<UsersPermissionsBoolExp>? $and;

  @JsonKey(name: '_not')
  UsersPermissionsBoolExp? $not;

  @JsonKey(name: '_or')
  List<UsersPermissionsBoolExp>? $or;

  UuidComparisonExp? adminOnArea;

  UuidComparisonExp? adminOnGroup;

  UuidComparisonExp? adminOnService;

  AreasBoolExp? area;

  BooleanComparisonExp? areaAdminOnUsers;

  BooleanComparisonExp? areaAllowEdit;

  GroupsBoolExp? group;

  BooleanComparisonExp? groupAdminOnUsers;

  BooleanComparisonExp? groupAllowEdit;

  BooleanComparisonExp? isUserAllowedToRead;

  @JsonKey(name: 'is_user_allowed_to_change')
  BooleanComparisonExp? isUserAllowedToChange;

  UuidComparisonExp? permissionId;

  ServicesBoolExp? service;

  BooleanComparisonExp? serviceAdminOnUsers;

  BooleanComparisonExp? serviceAllowEdit;

  BooleanComparisonExp? serviceGender;

  SmallintComparisonExp? serviceStudyYear;

  UuidComparisonExp? uid;

  UsersBoolExp? user;

  @override
  List<Object?> get props => [
        $and,
        $not,
        $or,
        adminOnArea,
        adminOnGroup,
        adminOnService,
        area,
        areaAdminOnUsers,
        areaAllowEdit,
        group,
        groupAdminOnUsers,
        groupAllowEdit,
        isUserAllowedToRead,
        isUserAllowedToChange,
        permissionId,
        service,
        serviceAdminOnUsers,
        serviceAllowEdit,
        serviceGender,
        serviceStudyYear,
        uid,
        user
      ];
  @override
  Map<String, dynamic> toJson() => _$UsersPermissionsBoolExpToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UuidComparisonExp extends JsonSerializable with EquatableMixin {
  UuidComparisonExp(
      {this.$eq,
      this.$gt,
      this.$gte,
      this.$in,
      this.$isNull,
      this.$lt,
      this.$lte,
      this.$neq,
      this.$nin});

  factory UuidComparisonExp.fromJson(Map<String, dynamic> json) =>
      _$UuidComparisonExpFromJson(json);

  @JsonKey(
      name: '_eq',
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? $eq;

  @JsonKey(
      name: '_gt',
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? $gt;

  @JsonKey(
      name: '_gte',
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? $gte;

  @JsonKey(
      name: '_in',
      fromJson: fromGraphQLListNullableUuidToDartListNullableUuidValue,
      toJson: fromDartListNullableUuidValueToGraphQLListNullableUuid)
  List<UuidValue>? $in;

  @JsonKey(name: '_is_null')
  bool? $isNull;

  @JsonKey(
      name: '_lt',
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? $lt;

  @JsonKey(
      name: '_lte',
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? $lte;

  @JsonKey(
      name: '_neq',
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? $neq;

  @JsonKey(
      name: '_nin',
      fromJson: fromGraphQLListNullableUuidToDartListNullableUuidValue,
      toJson: fromDartListNullableUuidValueToGraphQLListNullableUuid)
  List<UuidValue>? $nin;

  @override
  List<Object?> get props =>
      [$eq, $gt, $gte, $in, $isNull, $lt, $lte, $neq, $nin];
  @override
  Map<String, dynamic> toJson() => _$UuidComparisonExpToJson(this);
}

@JsonSerializable(explicitToJson: true)
class BooleanComparisonExp extends JsonSerializable with EquatableMixin {
  BooleanComparisonExp(
      {this.$eq,
      this.$gt,
      this.$gte,
      this.$in,
      this.$isNull,
      this.$lt,
      this.$lte,
      this.$neq,
      this.$nin});

  factory BooleanComparisonExp.fromJson(Map<String, dynamic> json) =>
      _$BooleanComparisonExpFromJson(json);

  @JsonKey(name: '_eq')
  bool? $eq;

  @JsonKey(name: '_gt')
  bool? $gt;

  @JsonKey(name: '_gte')
  bool? $gte;

  @JsonKey(name: '_in')
  List<bool>? $in;

  @JsonKey(name: '_is_null')
  bool? $isNull;

  @JsonKey(name: '_lt')
  bool? $lt;

  @JsonKey(name: '_lte')
  bool? $lte;

  @JsonKey(name: '_neq')
  bool? $neq;

  @JsonKey(name: '_nin')
  List<bool>? $nin;

  @override
  List<Object?> get props =>
      [$eq, $gt, $gte, $in, $isNull, $lt, $lte, $neq, $nin];
  @override
  Map<String, dynamic> toJson() => _$BooleanComparisonExpToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GroupsBoolExp extends JsonSerializable with EquatableMixin {
  GroupsBoolExp(
      {this.$and,
      this.$not,
      this.$or,
      this.adminUsers,
      this.attendanceHistory,
      this.color,
      this.id,
      this.isUserAllowedToRead,
      this.isUserAllowedToWrite,
      this.lastEdit,
      this.name,
      this.persons,
      this.photoUpdatedAt,
      this.service,
      this.serviceId,
      this.validity});

  factory GroupsBoolExp.fromJson(Map<String, dynamic> json) =>
      _$GroupsBoolExpFromJson(json);

  @JsonKey(name: '_and')
  List<GroupsBoolExp>? $and;

  @JsonKey(name: '_not')
  GroupsBoolExp? $not;

  @JsonKey(name: '_or')
  List<GroupsBoolExp>? $or;

  UsersPermissionsBoolExp? adminUsers;

  HistoryAttendanceHistoryBoolExp? attendanceHistory;

  IntComparisonExp? color;

  UuidComparisonExp? id;

  BooleanComparisonExp? isUserAllowedToRead;

  BooleanComparisonExp? isUserAllowedToWrite;

  JsonbComparisonExp? lastEdit;

  StringComparisonExp? name;

  PersonsGroupsBoolExp? persons;

  TimestamptzComparisonExp? photoUpdatedAt;

  ServicesBoolExp? service;

  UuidComparisonExp? serviceId;

  DaterangeComparisonExp? validity;

  @override
  List<Object?> get props => [
        $and,
        $not,
        $or,
        adminUsers,
        attendanceHistory,
        color,
        id,
        isUserAllowedToRead,
        isUserAllowedToWrite,
        lastEdit,
        name,
        persons,
        photoUpdatedAt,
        service,
        serviceId,
        validity
      ];
  @override
  Map<String, dynamic> toJson() => _$GroupsBoolExpToJson(this);
}

@JsonSerializable(explicitToJson: true)
class HistoryAttendanceHistoryBoolExp extends JsonSerializable
    with EquatableMixin {
  HistoryAttendanceHistoryBoolExp(
      {this.$and,
      this.$not,
      this.$or,
      this.day,
      this.dayId,
      this.group,
      this.groupId,
      this.id,
      this.isUserAllowedToRead,
      this.isUserAllowedToWrite,
      this.person,
      this.personId,
      this.recordedBy,
      this.service,
      this.serviceId,
      this.time,
      this.user});

  factory HistoryAttendanceHistoryBoolExp.fromJson(Map<String, dynamic> json) =>
      _$HistoryAttendanceHistoryBoolExpFromJson(json);

  @JsonKey(name: '_and')
  List<HistoryAttendanceHistoryBoolExp>? $and;

  @JsonKey(name: '_not')
  HistoryAttendanceHistoryBoolExp? $not;

  @JsonKey(name: '_or')
  List<HistoryAttendanceHistoryBoolExp>? $or;

  HistoryAttendanceDaysBoolExp? day;

  DateComparisonExp? dayId;

  GroupsBoolExp? group;

  UuidComparisonExp? groupId;

  UuidComparisonExp? id;

  BooleanComparisonExp? isUserAllowedToRead;

  BooleanComparisonExp? isUserAllowedToWrite;

  PersonsBoolExp? person;

  UuidComparisonExp? personId;

  UuidComparisonExp? recordedBy;

  ServicesBoolExp? service;

  UuidComparisonExp? serviceId;

  TimestampComparisonExp? time;

  UsersBoolExp? user;

  @override
  List<Object?> get props => [
        $and,
        $not,
        $or,
        day,
        dayId,
        group,
        groupId,
        id,
        isUserAllowedToRead,
        isUserAllowedToWrite,
        person,
        personId,
        recordedBy,
        service,
        serviceId,
        time,
        user
      ];
  @override
  Map<String, dynamic> toJson() =>
      _$HistoryAttendanceHistoryBoolExpToJson(this);
}

@JsonSerializable(explicitToJson: true)
class HistoryAttendanceDaysBoolExp extends JsonSerializable
    with EquatableMixin {
  HistoryAttendanceDaysBoolExp(
      {this.$and,
      this.$not,
      this.$or,
      this.attendanceHistory,
      this.confessionHistory,
      this.constraints,
      this.day,
      this.isUserAllowedToWrite,
      this.kodasHistory,
      this.notes});

  factory HistoryAttendanceDaysBoolExp.fromJson(Map<String, dynamic> json) =>
      _$HistoryAttendanceDaysBoolExpFromJson(json);

  @JsonKey(name: '_and')
  List<HistoryAttendanceDaysBoolExp>? $and;

  @JsonKey(name: '_not')
  HistoryAttendanceDaysBoolExp? $not;

  @JsonKey(name: '_or')
  List<HistoryAttendanceDaysBoolExp>? $or;

  HistoryAttendanceHistoryBoolExp? attendanceHistory;

  HistoryConfessionHistoryBoolExp? confessionHistory;

  HistoryAttendanceDaysConstraintsBoolExp? constraints;

  DateComparisonExp? day;

  BooleanComparisonExp? isUserAllowedToWrite;

  HistoryKodasHistoryBoolExp? kodasHistory;

  StringComparisonExp? notes;

  @override
  List<Object?> get props => [
        $and,
        $not,
        $or,
        attendanceHistory,
        confessionHistory,
        constraints,
        day,
        isUserAllowedToWrite,
        kodasHistory,
        notes
      ];
  @override
  Map<String, dynamic> toJson() => _$HistoryAttendanceDaysBoolExpToJson(this);
}

@JsonSerializable(explicitToJson: true)
class HistoryConfessionHistoryBoolExp extends JsonSerializable
    with EquatableMixin {
  HistoryConfessionHistoryBoolExp(
      {this.$and,
      this.$not,
      this.$or,
      this.day,
      this.dayId,
      this.id,
      this.person,
      this.personId,
      this.recordedBy,
      this.user});

  factory HistoryConfessionHistoryBoolExp.fromJson(Map<String, dynamic> json) =>
      _$HistoryConfessionHistoryBoolExpFromJson(json);

  @JsonKey(name: '_and')
  List<HistoryConfessionHistoryBoolExp>? $and;

  @JsonKey(name: '_not')
  HistoryConfessionHistoryBoolExp? $not;

  @JsonKey(name: '_or')
  List<HistoryConfessionHistoryBoolExp>? $or;

  HistoryAttendanceDaysBoolExp? day;

  DateComparisonExp? dayId;

  UuidComparisonExp? id;

  PersonsBoolExp? person;

  UuidComparisonExp? personId;

  UuidComparisonExp? recordedBy;

  UsersBoolExp? user;

  @override
  List<Object?> get props =>
      [$and, $not, $or, day, dayId, id, person, personId, recordedBy, user];
  @override
  Map<String, dynamic> toJson() =>
      _$HistoryConfessionHistoryBoolExpToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DateComparisonExp extends JsonSerializable with EquatableMixin {
  DateComparisonExp(
      {this.$eq,
      this.$gt,
      this.$gte,
      this.$in,
      this.$isNull,
      this.$lt,
      this.$lte,
      this.$neq,
      this.$nin});

  factory DateComparisonExp.fromJson(Map<String, dynamic> json) =>
      _$DateComparisonExpFromJson(json);

  @JsonKey(name: '_eq')
  DateTime? $eq;

  @JsonKey(name: '_gt')
  DateTime? $gt;

  @JsonKey(name: '_gte')
  DateTime? $gte;

  @JsonKey(name: '_in')
  List<DateTime>? $in;

  @JsonKey(name: '_is_null')
  bool? $isNull;

  @JsonKey(name: '_lt')
  DateTime? $lt;

  @JsonKey(name: '_lte')
  DateTime? $lte;

  @JsonKey(name: '_neq')
  DateTime? $neq;

  @JsonKey(name: '_nin')
  List<DateTime>? $nin;

  @override
  List<Object?> get props =>
      [$eq, $gt, $gte, $in, $isNull, $lt, $lte, $neq, $nin];
  @override
  Map<String, dynamic> toJson() => _$DateComparisonExpToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PersonsBoolExp extends JsonSerializable with EquatableMixin {
  PersonsBoolExp(
      {this.$and,
      this.$not,
      this.$or,
      this.address,
      this.areas,
      this.attendanceHistory,
      this.birthdate,
      this.birthday,
      this.callHistory,
      this.church,
      this.churchId,
      this.college,
      this.collegeId,
      this.color,
      this.confessionHistory,
      this.family,
      this.familyId,
      this.father,
      this.fatherId,
      this.firestoreId,
      this.gender,
      this.geolocation,
      this.groups,
      this.id,
      this.isServant,
      this.isShammas,
      this.isStudent,
      this.isUserAllowedToRead,
      this.isUserAllowedToWrite,
      this.job,
      this.jobDescription,
      this.jobId,
      this.kodasHistory,
      this.lastCall,
      this.lastConfession,
      this.lastEdit,
      this.lastKodas,
      this.lastVisit,
      this.mainPhone,
      this.name,
      this.notes,
      this.otherPhones,
      this.personType,
      this.personTypeId,
      this.photoUpdatedAt,
      this.qualification,
      this.qualificationId,
      this.school,
      this.schoolId,
      this.services,
      this.shammasLevel,
      this.state,
      this.stateId,
      this.storeId,
      this.streets,
      this.studyYear,
      this.studyYearId,
      this.tags,
      this.uid,
      this.user,
      this.visitHistory});

  factory PersonsBoolExp.fromJson(Map<String, dynamic> json) =>
      _$PersonsBoolExpFromJson(json);

  @JsonKey(name: '_and')
  List<PersonsBoolExp>? $and;

  @JsonKey(name: '_not')
  PersonsBoolExp? $not;

  @JsonKey(name: '_or')
  List<PersonsBoolExp>? $or;

  StringComparisonExp? address;

  AreasBoolExp? areas;

  HistoryAttendanceHistoryBoolExp? attendanceHistory;

  DateComparisonExp? birthdate;

  StringComparisonExp? birthday;

  HistoryCallHistoryBoolExp? callHistory;

  ChurchesBoolExp? church;

  UuidComparisonExp? churchId;

  CollegesBoolExp? college;

  UuidComparisonExp? collegeId;

  IntComparisonExp? color;

  HistoryConfessionHistoryBoolExp? confessionHistory;

  FamiliesBoolExp? family;

  UuidComparisonExp? familyId;

  FathersBoolExp? father;

  UuidComparisonExp? fatherId;

  StringComparisonExp? firestoreId;

  BooleanComparisonExp? gender;

  GeographyComparisonExp? geolocation;

  PersonsGroupsBoolExp? groups;

  UuidComparisonExp? id;

  BooleanComparisonExp? isServant;

  BooleanComparisonExp? isShammas;

  BooleanComparisonExp? isStudent;

  BooleanComparisonExp? isUserAllowedToRead;

  BooleanComparisonExp? isUserAllowedToWrite;

  JobsBoolExp? job;

  StringComparisonExp? jobDescription;

  UuidComparisonExp? jobId;

  HistoryKodasHistoryBoolExp? kodasHistory;

  JsonbComparisonExp? lastCall;

  JsonbComparisonExp? lastConfession;

  JsonbComparisonExp? lastEdit;

  JsonbComparisonExp? lastKodas;

  JsonbComparisonExp? lastVisit;

  StringComparisonExp? mainPhone;

  StringComparisonExp? name;

  StringComparisonExp? notes;

  JsonbComparisonExp? otherPhones;

  PersonTypesBoolExp? personType;

  UuidComparisonExp? personTypeId;

  TimestamptzComparisonExp? photoUpdatedAt;

  QualificationsBoolExp? qualification;

  UuidComparisonExp? qualificationId;

  SchoolsBoolExp? school;

  UuidComparisonExp? schoolId;

  PersonsServicesBoolExp? services;

  UuidComparisonExp? shammasLevel;

  StatesBoolExp? state;

  UuidComparisonExp? stateId;

  UuidComparisonExp? storeId;

  StreetsBoolExp? streets;

  StudyYearsBoolExp? studyYear;

  SmallintComparisonExp? studyYearId;

  PersonsTagsBoolExp? tags;

  UuidComparisonExp? uid;

  UsersBoolExp? user;

  HistoryVisitHistoryBoolExp? visitHistory;

  @override
  List<Object?> get props => [
        $and,
        $not,
        $or,
        address,
        areas,
        attendanceHistory,
        birthdate,
        birthday,
        callHistory,
        church,
        churchId,
        college,
        collegeId,
        color,
        confessionHistory,
        family,
        familyId,
        father,
        fatherId,
        firestoreId,
        gender,
        geolocation,
        groups,
        id,
        isServant,
        isShammas,
        isStudent,
        isUserAllowedToRead,
        isUserAllowedToWrite,
        job,
        jobDescription,
        jobId,
        kodasHistory,
        lastCall,
        lastConfession,
        lastEdit,
        lastKodas,
        lastVisit,
        mainPhone,
        name,
        notes,
        otherPhones,
        personType,
        personTypeId,
        photoUpdatedAt,
        qualification,
        qualificationId,
        school,
        schoolId,
        services,
        shammasLevel,
        state,
        stateId,
        storeId,
        streets,
        studyYear,
        studyYearId,
        tags,
        uid,
        user,
        visitHistory
      ];
  @override
  Map<String, dynamic> toJson() => _$PersonsBoolExpToJson(this);
}

@JsonSerializable(explicitToJson: true)
class StringComparisonExp extends JsonSerializable with EquatableMixin {
  StringComparisonExp(
      {this.$eq,
      this.$gt,
      this.$gte,
      this.$ilike,
      this.$in,
      this.$iregex,
      this.$isNull,
      this.$like,
      this.$lt,
      this.$lte,
      this.$neq,
      this.$nilike,
      this.$nin,
      this.$niregex,
      this.$nlike,
      this.$nregex,
      this.$nsimilar,
      this.$regex,
      this.$similar});

  factory StringComparisonExp.fromJson(Map<String, dynamic> json) =>
      _$StringComparisonExpFromJson(json);

  @JsonKey(name: '_eq')
  String? $eq;

  @JsonKey(name: '_gt')
  String? $gt;

  @JsonKey(name: '_gte')
  String? $gte;

  @JsonKey(name: '_ilike')
  String? $ilike;

  @JsonKey(name: '_in')
  List<String>? $in;

  @JsonKey(name: '_iregex')
  String? $iregex;

  @JsonKey(name: '_is_null')
  bool? $isNull;

  @JsonKey(name: '_like')
  String? $like;

  @JsonKey(name: '_lt')
  String? $lt;

  @JsonKey(name: '_lte')
  String? $lte;

  @JsonKey(name: '_neq')
  String? $neq;

  @JsonKey(name: '_nilike')
  String? $nilike;

  @JsonKey(name: '_nin')
  List<String>? $nin;

  @JsonKey(name: '_niregex')
  String? $niregex;

  @JsonKey(name: '_nlike')
  String? $nlike;

  @JsonKey(name: '_nregex')
  String? $nregex;

  @JsonKey(name: '_nsimilar')
  String? $nsimilar;

  @JsonKey(name: '_regex')
  String? $regex;

  @JsonKey(name: '_similar')
  String? $similar;

  @override
  List<Object?> get props => [
        $eq,
        $gt,
        $gte,
        $ilike,
        $in,
        $iregex,
        $isNull,
        $like,
        $lt,
        $lte,
        $neq,
        $nilike,
        $nin,
        $niregex,
        $nlike,
        $nregex,
        $nsimilar,
        $regex,
        $similar
      ];
  @override
  Map<String, dynamic> toJson() => _$StringComparisonExpToJson(this);
}

@JsonSerializable(explicitToJson: true)
class HistoryCallHistoryBoolExp extends JsonSerializable with EquatableMixin {
  HistoryCallHistoryBoolExp(
      {this.$and,
      this.$not,
      this.$or,
      this.person,
      this.personId,
      this.time,
      this.userRole,
      this.userUid});

  factory HistoryCallHistoryBoolExp.fromJson(Map<String, dynamic> json) =>
      _$HistoryCallHistoryBoolExpFromJson(json);

  @JsonKey(name: '_and')
  List<HistoryCallHistoryBoolExp>? $and;

  @JsonKey(name: '_not')
  HistoryCallHistoryBoolExp? $not;

  @JsonKey(name: '_or')
  List<HistoryCallHistoryBoolExp>? $or;

  PersonsBoolExp? person;

  UuidComparisonExp? personId;

  TimestamptzComparisonExp? time;

  StringComparisonExp? userRole;

  UuidComparisonExp? userUid;

  @override
  List<Object?> get props =>
      [$and, $not, $or, person, personId, time, userRole, userUid];
  @override
  Map<String, dynamic> toJson() => _$HistoryCallHistoryBoolExpToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TimestamptzComparisonExp extends JsonSerializable with EquatableMixin {
  TimestamptzComparisonExp(
      {this.$eq,
      this.$gt,
      this.$gte,
      this.$in,
      this.$isNull,
      this.$lt,
      this.$lte,
      this.$neq,
      this.$nin});

  factory TimestamptzComparisonExp.fromJson(Map<String, dynamic> json) =>
      _$TimestamptzComparisonExpFromJson(json);

  @JsonKey(name: '_eq')
  DateTime? $eq;

  @JsonKey(name: '_gt')
  DateTime? $gt;

  @JsonKey(name: '_gte')
  DateTime? $gte;

  @JsonKey(name: '_in')
  List<DateTime>? $in;

  @JsonKey(name: '_is_null')
  bool? $isNull;

  @JsonKey(name: '_lt')
  DateTime? $lt;

  @JsonKey(name: '_lte')
  DateTime? $lte;

  @JsonKey(name: '_neq')
  DateTime? $neq;

  @JsonKey(name: '_nin')
  List<DateTime>? $nin;

  @override
  List<Object?> get props =>
      [$eq, $gt, $gte, $in, $isNull, $lt, $lte, $neq, $nin];
  @override
  Map<String, dynamic> toJson() => _$TimestamptzComparisonExpToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ChurchesBoolExp extends JsonSerializable with EquatableMixin {
  ChurchesBoolExp(
      {this.$and,
      this.$not,
      this.$or,
      this.fathers,
      this.id,
      this.name,
      this.persons});

  factory ChurchesBoolExp.fromJson(Map<String, dynamic> json) =>
      _$ChurchesBoolExpFromJson(json);

  @JsonKey(name: '_and')
  List<ChurchesBoolExp>? $and;

  @JsonKey(name: '_not')
  ChurchesBoolExp? $not;

  @JsonKey(name: '_or')
  List<ChurchesBoolExp>? $or;

  FathersBoolExp? fathers;

  UuidComparisonExp? id;

  StringComparisonExp? name;

  PersonsBoolExp? persons;

  @override
  List<Object?> get props => [$and, $not, $or, fathers, id, name, persons];
  @override
  Map<String, dynamic> toJson() => _$ChurchesBoolExpToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FathersBoolExp extends JsonSerializable with EquatableMixin {
  FathersBoolExp(
      {this.$and,
      this.$not,
      this.$or,
      this.church,
      this.churchId,
      this.id,
      this.name,
      this.persons});

  factory FathersBoolExp.fromJson(Map<String, dynamic> json) =>
      _$FathersBoolExpFromJson(json);

  @JsonKey(name: '_and')
  List<FathersBoolExp>? $and;

  @JsonKey(name: '_not')
  FathersBoolExp? $not;

  @JsonKey(name: '_or')
  List<FathersBoolExp>? $or;

  ChurchesBoolExp? church;

  UuidComparisonExp? churchId;

  UuidComparisonExp? id;

  StringComparisonExp? name;

  PersonsBoolExp? persons;

  @override
  List<Object?> get props =>
      [$and, $not, $or, church, churchId, id, name, persons];
  @override
  Map<String, dynamic> toJson() => _$FathersBoolExpToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CollegesBoolExp extends JsonSerializable with EquatableMixin {
  CollegesBoolExp(
      {this.$and,
      this.$not,
      this.$or,
      this.id,
      this.name,
      this.persons,
      this.university,
      this.universityId});

  factory CollegesBoolExp.fromJson(Map<String, dynamic> json) =>
      _$CollegesBoolExpFromJson(json);

  @JsonKey(name: '_and')
  List<CollegesBoolExp>? $and;

  @JsonKey(name: '_not')
  CollegesBoolExp? $not;

  @JsonKey(name: '_or')
  List<CollegesBoolExp>? $or;

  UuidComparisonExp? id;

  StringComparisonExp? name;

  PersonsBoolExp? persons;

  UniversitiesBoolExp? university;

  UuidComparisonExp? universityId;

  @override
  List<Object?> get props =>
      [$and, $not, $or, id, name, persons, university, universityId];
  @override
  Map<String, dynamic> toJson() => _$CollegesBoolExpToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UniversitiesBoolExp extends JsonSerializable with EquatableMixin {
  UniversitiesBoolExp(
      {this.$and, this.$not, this.$or, this.colleges, this.id, this.name});

  factory UniversitiesBoolExp.fromJson(Map<String, dynamic> json) =>
      _$UniversitiesBoolExpFromJson(json);

  @JsonKey(name: '_and')
  List<UniversitiesBoolExp>? $and;

  @JsonKey(name: '_not')
  UniversitiesBoolExp? $not;

  @JsonKey(name: '_or')
  List<UniversitiesBoolExp>? $or;

  CollegesBoolExp? colleges;

  UuidComparisonExp? id;

  StringComparisonExp? name;

  @override
  List<Object?> get props => [$and, $not, $or, colleges, id, name];
  @override
  Map<String, dynamic> toJson() => _$UniversitiesBoolExpToJson(this);
}

@JsonSerializable(explicitToJson: true)
class IntComparisonExp extends JsonSerializable with EquatableMixin {
  IntComparisonExp(
      {this.$eq,
      this.$gt,
      this.$gte,
      this.$in,
      this.$isNull,
      this.$lt,
      this.$lte,
      this.$neq,
      this.$nin});

  factory IntComparisonExp.fromJson(Map<String, dynamic> json) =>
      _$IntComparisonExpFromJson(json);

  @JsonKey(name: '_eq')
  int? $eq;

  @JsonKey(name: '_gt')
  int? $gt;

  @JsonKey(name: '_gte')
  int? $gte;

  @JsonKey(name: '_in')
  List<int>? $in;

  @JsonKey(name: '_is_null')
  bool? $isNull;

  @JsonKey(name: '_lt')
  int? $lt;

  @JsonKey(name: '_lte')
  int? $lte;

  @JsonKey(name: '_neq')
  int? $neq;

  @JsonKey(name: '_nin')
  List<int>? $nin;

  @override
  List<Object?> get props =>
      [$eq, $gt, $gte, $in, $isNull, $lt, $lte, $neq, $nin];
  @override
  Map<String, dynamic> toJson() => _$IntComparisonExpToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FamiliesBoolExp extends JsonSerializable with EquatableMixin {
  FamiliesBoolExp(
      {this.$and,
      this.$not,
      this.$or,
      this.address,
      this.areas,
      this.color,
      this.families,
      this.family,
      this.geolocation,
      this.id,
      this.isUserAllowedToRead,
      this.isUserAllowedToWrite,
      this.lastEdit,
      this.name,
      this.notes,
      this.persons,
      this.photoUpdatedAt,
      this.stores,
      this.streets});

  factory FamiliesBoolExp.fromJson(Map<String, dynamic> json) =>
      _$FamiliesBoolExpFromJson(json);

  @JsonKey(name: '_and')
  List<FamiliesBoolExp>? $and;

  @JsonKey(name: '_not')
  FamiliesBoolExp? $not;

  @JsonKey(name: '_or')
  List<FamiliesBoolExp>? $or;

  StringComparisonExp? address;

  AreasBoolExp? areas;

  IntComparisonExp? color;

  FamiliesFamiliesBoolExp? families;

  FamiliesFamiliesBoolExp? family;

  GeographyComparisonExp? geolocation;

  UuidComparisonExp? id;

  BooleanComparisonExp? isUserAllowedToRead;

  BooleanComparisonExp? isUserAllowedToWrite;

  JsonbComparisonExp? lastEdit;

  StringComparisonExp? name;

  StringComparisonExp? notes;

  PersonsBoolExp? persons;

  TimestamptzComparisonExp? photoUpdatedAt;

  StoresBoolExp? stores;

  StreetsBoolExp? streets;

  @override
  List<Object?> get props => [
        $and,
        $not,
        $or,
        address,
        areas,
        color,
        families,
        family,
        geolocation,
        id,
        isUserAllowedToRead,
        isUserAllowedToWrite,
        lastEdit,
        name,
        notes,
        persons,
        photoUpdatedAt,
        stores,
        streets
      ];
  @override
  Map<String, dynamic> toJson() => _$FamiliesBoolExpToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FamiliesFamiliesBoolExp extends JsonSerializable with EquatableMixin {
  FamiliesFamiliesBoolExp(
      {this.$and,
      this.$not,
      this.$or,
      this.innerFamily,
      this.innerFamilyId,
      this.outerFamily,
      this.outerFamilyId});

  factory FamiliesFamiliesBoolExp.fromJson(Map<String, dynamic> json) =>
      _$FamiliesFamiliesBoolExpFromJson(json);

  @JsonKey(name: '_and')
  List<FamiliesFamiliesBoolExp>? $and;

  @JsonKey(name: '_not')
  FamiliesFamiliesBoolExp? $not;

  @JsonKey(name: '_or')
  List<FamiliesFamiliesBoolExp>? $or;

  FamiliesBoolExp? innerFamily;

  UuidComparisonExp? innerFamilyId;

  FamiliesBoolExp? outerFamily;

  UuidComparisonExp? outerFamilyId;

  @override
  List<Object?> get props =>
      [$and, $not, $or, innerFamily, innerFamilyId, outerFamily, outerFamilyId];
  @override
  Map<String, dynamic> toJson() => _$FamiliesFamiliesBoolExpToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GeographyComparisonExp extends JsonSerializable with EquatableMixin {
  GeographyComparisonExp(
      {this.$cast,
      this.$eq,
      this.$gt,
      this.$gte,
      this.$in,
      this.$isNull,
      this.$lt,
      this.$lte,
      this.$neq,
      this.$nin,
      this.$stDWithin,
      this.$stIntersects});

  factory GeographyComparisonExp.fromJson(Map<String, dynamic> json) =>
      _$GeographyComparisonExpFromJson(json);

  @JsonKey(name: '_cast')
  GeographyCastExp? $cast;

  @JsonKey(name: '_eq')
  Map<String, dynamic>? $eq;

  @JsonKey(name: '_gt')
  Map<String, dynamic>? $gt;

  @JsonKey(name: '_gte')
  Map<String, dynamic>? $gte;

  @JsonKey(name: '_in')
  List<Map<String, dynamic>>? $in;

  @JsonKey(name: '_is_null')
  bool? $isNull;

  @JsonKey(name: '_lt')
  Map<String, dynamic>? $lt;

  @JsonKey(name: '_lte')
  Map<String, dynamic>? $lte;

  @JsonKey(name: '_neq')
  Map<String, dynamic>? $neq;

  @JsonKey(name: '_nin')
  List<Map<String, dynamic>>? $nin;

  @JsonKey(name: '_st_d_within')
  StDWithinGeographyInput? $stDWithin;

  @JsonKey(name: '_st_intersects')
  Map<String, dynamic>? $stIntersects;

  @override
  List<Object?> get props => [
        $cast,
        $eq,
        $gt,
        $gte,
        $in,
        $isNull,
        $lt,
        $lte,
        $neq,
        $nin,
        $stDWithin,
        $stIntersects
      ];
  @override
  Map<String, dynamic> toJson() => _$GeographyComparisonExpToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GeographyCastExp extends JsonSerializable with EquatableMixin {
  GeographyCastExp({this.geometry});

  factory GeographyCastExp.fromJson(Map<String, dynamic> json) =>
      _$GeographyCastExpFromJson(json);

  GeometryComparisonExp? geometry;

  @override
  List<Object?> get props => [geometry];
  @override
  Map<String, dynamic> toJson() => _$GeographyCastExpToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GeometryComparisonExp extends JsonSerializable with EquatableMixin {
  GeometryComparisonExp(
      {this.$cast,
      this.$eq,
      this.$gt,
      this.$gte,
      this.$in,
      this.$isNull,
      this.$lt,
      this.$lte,
      this.$neq,
      this.$nin,
      this.$st3dDWithin,
      this.$st3dIntersects,
      this.$stContains,
      this.$stCrosses,
      this.$stDWithin,
      this.$stEquals,
      this.$stIntersects,
      this.$stOverlaps,
      this.$stTouches,
      this.$stWithin});

  factory GeometryComparisonExp.fromJson(Map<String, dynamic> json) =>
      _$GeometryComparisonExpFromJson(json);

  @JsonKey(name: '_cast')
  GeometryCastExp? $cast;

  @JsonKey(name: '_eq')
  Map<String, dynamic>? $eq;

  @JsonKey(name: '_gt')
  Map<String, dynamic>? $gt;

  @JsonKey(name: '_gte')
  Map<String, dynamic>? $gte;

  @JsonKey(name: '_in')
  List<Map<String, dynamic>>? $in;

  @JsonKey(name: '_is_null')
  bool? $isNull;

  @JsonKey(name: '_lt')
  Map<String, dynamic>? $lt;

  @JsonKey(name: '_lte')
  Map<String, dynamic>? $lte;

  @JsonKey(name: '_neq')
  Map<String, dynamic>? $neq;

  @JsonKey(name: '_nin')
  List<Map<String, dynamic>>? $nin;

  @JsonKey(name: '_st_3d_d_within')
  StDWithinInput? $st3dDWithin;

  @JsonKey(name: '_st_3d_intersects')
  Map<String, dynamic>? $st3dIntersects;

  @JsonKey(name: '_st_contains')
  Map<String, dynamic>? $stContains;

  @JsonKey(name: '_st_crosses')
  Map<String, dynamic>? $stCrosses;

  @JsonKey(name: '_st_d_within')
  StDWithinInput? $stDWithin;

  @JsonKey(name: '_st_equals')
  Map<String, dynamic>? $stEquals;

  @JsonKey(name: '_st_intersects')
  Map<String, dynamic>? $stIntersects;

  @JsonKey(name: '_st_overlaps')
  Map<String, dynamic>? $stOverlaps;

  @JsonKey(name: '_st_touches')
  Map<String, dynamic>? $stTouches;

  @JsonKey(name: '_st_within')
  Map<String, dynamic>? $stWithin;

  @override
  List<Object?> get props => [
        $cast,
        $eq,
        $gt,
        $gte,
        $in,
        $isNull,
        $lt,
        $lte,
        $neq,
        $nin,
        $st3dDWithin,
        $st3dIntersects,
        $stContains,
        $stCrosses,
        $stDWithin,
        $stEquals,
        $stIntersects,
        $stOverlaps,
        $stTouches,
        $stWithin
      ];
  @override
  Map<String, dynamic> toJson() => _$GeometryComparisonExpToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GeometryCastExp extends JsonSerializable with EquatableMixin {
  GeometryCastExp({this.geography});

  factory GeometryCastExp.fromJson(Map<String, dynamic> json) =>
      _$GeometryCastExpFromJson(json);

  GeographyComparisonExp? geography;

  @override
  List<Object?> get props => [geography];
  @override
  Map<String, dynamic> toJson() => _$GeometryCastExpToJson(this);
}

@JsonSerializable(explicitToJson: true)
class StDWithinInput extends JsonSerializable with EquatableMixin {
  StDWithinInput({required this.distance, required this.from});

  factory StDWithinInput.fromJson(Map<String, dynamic> json) =>
      _$StDWithinInputFromJson(json);

  late double distance;

  late Map<String, dynamic> from;

  @override
  List<Object?> get props => [distance, from];
  @override
  Map<String, dynamic> toJson() => _$StDWithinInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class StDWithinGeographyInput extends JsonSerializable with EquatableMixin {
  StDWithinGeographyInput(
      {required this.distance, required this.from, this.useSpheroid});

  factory StDWithinGeographyInput.fromJson(Map<String, dynamic> json) =>
      _$StDWithinGeographyInputFromJson(json);

  late double distance;

  late Map<String, dynamic> from;

  @JsonKey(name: 'use_spheroid')
  bool? useSpheroid;

  @override
  List<Object?> get props => [distance, from, useSpheroid];
  @override
  Map<String, dynamic> toJson() => _$StDWithinGeographyInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class JsonbComparisonExp extends JsonSerializable with EquatableMixin {
  JsonbComparisonExp(
      {this.$cast,
      this.$containedIn,
      this.$contains,
      this.$eq,
      this.$gt,
      this.$gte,
      this.$hasKey,
      this.$hasKeysAll,
      this.$hasKeysAny,
      this.$in,
      this.$isNull,
      this.$lt,
      this.$lte,
      this.$neq,
      this.$nin});

  factory JsonbComparisonExp.fromJson(Map<String, dynamic> json) =>
      _$JsonbComparisonExpFromJson(json);

  @JsonKey(name: '_cast')
  JsonbCastExp? $cast;

  @JsonKey(name: '_contained_in')
  Map<String, dynamic>? $containedIn;

  @JsonKey(name: '_contains')
  Map<String, dynamic>? $contains;

  @JsonKey(name: '_eq')
  Map<String, dynamic>? $eq;

  @JsonKey(name: '_gt')
  Map<String, dynamic>? $gt;

  @JsonKey(name: '_gte')
  Map<String, dynamic>? $gte;

  @JsonKey(name: '_has_key')
  String? $hasKey;

  @JsonKey(name: '_has_keys_all')
  List<String>? $hasKeysAll;

  @JsonKey(name: '_has_keys_any')
  List<String>? $hasKeysAny;

  @JsonKey(name: '_in')
  List<Map<String, dynamic>>? $in;

  @JsonKey(name: '_is_null')
  bool? $isNull;

  @JsonKey(name: '_lt')
  Map<String, dynamic>? $lt;

  @JsonKey(name: '_lte')
  Map<String, dynamic>? $lte;

  @JsonKey(name: '_neq')
  Map<String, dynamic>? $neq;

  @JsonKey(name: '_nin')
  List<Map<String, dynamic>>? $nin;

  @override
  List<Object?> get props => [
        $cast,
        $containedIn,
        $contains,
        $eq,
        $gt,
        $gte,
        $hasKey,
        $hasKeysAll,
        $hasKeysAny,
        $in,
        $isNull,
        $lt,
        $lte,
        $neq,
        $nin
      ];
  @override
  Map<String, dynamic> toJson() => _$JsonbComparisonExpToJson(this);
}

@JsonSerializable(explicitToJson: true)
class JsonbCastExp extends JsonSerializable with EquatableMixin {
  JsonbCastExp({this.string});

  factory JsonbCastExp.fromJson(Map<String, dynamic> json) =>
      _$JsonbCastExpFromJson(json);

  @JsonKey(name: 'String')
  StringComparisonExp? string;

  @override
  List<Object?> get props => [string];
  @override
  Map<String, dynamic> toJson() => _$JsonbCastExpToJson(this);
}

@JsonSerializable(explicitToJson: true)
class StoresBoolExp extends JsonSerializable with EquatableMixin {
  StoresBoolExp(
      {this.$and,
      this.$not,
      this.$or,
      this.adminFamily,
      this.areas,
      this.color,
      this.family,
      this.geolocation,
      this.id,
      this.isUserAllowedToRead,
      this.isUserAllowedToWrite,
      this.lastEdit,
      this.name,
      this.photoUpdatedAt,
      this.streets});

  factory StoresBoolExp.fromJson(Map<String, dynamic> json) =>
      _$StoresBoolExpFromJson(json);

  @JsonKey(name: '_and')
  List<StoresBoolExp>? $and;

  @JsonKey(name: '_not')
  StoresBoolExp? $not;

  @JsonKey(name: '_or')
  List<StoresBoolExp>? $or;

  UuidComparisonExp? adminFamily;

  AreasBoolExp? areas;

  IntComparisonExp? color;

  FamiliesBoolExp? family;

  GeographyComparisonExp? geolocation;

  UuidComparisonExp? id;

  BooleanComparisonExp? isUserAllowedToRead;

  BooleanComparisonExp? isUserAllowedToWrite;

  JsonbComparisonExp? lastEdit;

  StringComparisonExp? name;

  TimestamptzComparisonExp? photoUpdatedAt;

  StreetsBoolExp? streets;

  @override
  List<Object?> get props => [
        $and,
        $not,
        $or,
        adminFamily,
        areas,
        color,
        family,
        geolocation,
        id,
        isUserAllowedToRead,
        isUserAllowedToWrite,
        lastEdit,
        name,
        photoUpdatedAt,
        streets
      ];
  @override
  Map<String, dynamic> toJson() => _$StoresBoolExpToJson(this);
}

@JsonSerializable(explicitToJson: true)
class StreetsBoolExp extends JsonSerializable with EquatableMixin {
  StreetsBoolExp(
      {this.$and,
      this.$not,
      this.$or,
      this.areas,
      this.color,
      this.families,
      this.id,
      this.isUserAllowedToRead,
      this.isUserAllowedToWrite,
      this.lastEdit,
      this.line,
      this.name,
      this.persons,
      this.photoUpdatedAt,
      this.stores});

  factory StreetsBoolExp.fromJson(Map<String, dynamic> json) =>
      _$StreetsBoolExpFromJson(json);

  @JsonKey(name: '_and')
  List<StreetsBoolExp>? $and;

  @JsonKey(name: '_not')
  StreetsBoolExp? $not;

  @JsonKey(name: '_or')
  List<StreetsBoolExp>? $or;

  AreasBoolExp? areas;

  IntComparisonExp? color;

  FamiliesBoolExp? families;

  UuidComparisonExp? id;

  BooleanComparisonExp? isUserAllowedToRead;

  BooleanComparisonExp? isUserAllowedToWrite;

  JsonbComparisonExp? lastEdit;

  GeographyComparisonExp? line;

  StringComparisonExp? name;

  PersonsBoolExp? persons;

  TimestamptzComparisonExp? photoUpdatedAt;

  StoresBoolExp? stores;

  @override
  List<Object?> get props => [
        $and,
        $not,
        $or,
        areas,
        color,
        families,
        id,
        isUserAllowedToRead,
        isUserAllowedToWrite,
        lastEdit,
        line,
        name,
        persons,
        photoUpdatedAt,
        stores
      ];
  @override
  Map<String, dynamic> toJson() => _$StreetsBoolExpToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PersonsGroupsBoolExp extends JsonSerializable with EquatableMixin {
  PersonsGroupsBoolExp(
      {this.$and,
      this.$not,
      this.$or,
      this.group,
      this.groupId,
      this.person,
      this.personId,
      this.relId});

  factory PersonsGroupsBoolExp.fromJson(Map<String, dynamic> json) =>
      _$PersonsGroupsBoolExpFromJson(json);

  @JsonKey(name: '_and')
  List<PersonsGroupsBoolExp>? $and;

  @JsonKey(name: '_not')
  PersonsGroupsBoolExp? $not;

  @JsonKey(name: '_or')
  List<PersonsGroupsBoolExp>? $or;

  GroupsBoolExp? group;

  UuidComparisonExp? groupId;

  PersonsBoolExp? person;

  UuidComparisonExp? personId;

  UuidComparisonExp? relId;

  @override
  List<Object?> get props =>
      [$and, $not, $or, group, groupId, person, personId, relId];
  @override
  Map<String, dynamic> toJson() => _$PersonsGroupsBoolExpToJson(this);
}

@JsonSerializable(explicitToJson: true)
class JobsBoolExp extends JsonSerializable with EquatableMixin {
  JobsBoolExp(
      {this.$and, this.$not, this.$or, this.id, this.name, this.persons});

  factory JobsBoolExp.fromJson(Map<String, dynamic> json) =>
      _$JobsBoolExpFromJson(json);

  @JsonKey(name: '_and')
  List<JobsBoolExp>? $and;

  @JsonKey(name: '_not')
  JobsBoolExp? $not;

  @JsonKey(name: '_or')
  List<JobsBoolExp>? $or;

  UuidComparisonExp? id;

  StringComparisonExp? name;

  PersonsBoolExp? persons;

  @override
  List<Object?> get props => [$and, $not, $or, id, name, persons];
  @override
  Map<String, dynamic> toJson() => _$JobsBoolExpToJson(this);
}

@JsonSerializable(explicitToJson: true)
class HistoryKodasHistoryBoolExp extends JsonSerializable with EquatableMixin {
  HistoryKodasHistoryBoolExp(
      {this.$and,
      this.$not,
      this.$or,
      this.day,
      this.dayId,
      this.id,
      this.person,
      this.personId,
      this.recordedBy,
      this.user});

  factory HistoryKodasHistoryBoolExp.fromJson(Map<String, dynamic> json) =>
      _$HistoryKodasHistoryBoolExpFromJson(json);

  @JsonKey(name: '_and')
  List<HistoryKodasHistoryBoolExp>? $and;

  @JsonKey(name: '_not')
  HistoryKodasHistoryBoolExp? $not;

  @JsonKey(name: '_or')
  List<HistoryKodasHistoryBoolExp>? $or;

  HistoryAttendanceDaysBoolExp? day;

  DateComparisonExp? dayId;

  UuidComparisonExp? id;

  PersonsBoolExp? person;

  UuidComparisonExp? personId;

  UuidComparisonExp? recordedBy;

  UsersBoolExp? user;

  @override
  List<Object?> get props =>
      [$and, $not, $or, day, dayId, id, person, personId, recordedBy, user];
  @override
  Map<String, dynamic> toJson() => _$HistoryKodasHistoryBoolExpToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UsersBoolExp extends JsonSerializable with EquatableMixin {
  UsersBoolExp(
      {this.$and,
      this.$not,
      this.$or,
      this.adminOn,
      this.email,
      this.firebaseAuthUid,
      this.firestoreId,
      this.isUserAllowedToRead,
      this.isUserAllowedToChange,
      this.lastEdit,
      this.permissions,
      this.person,
      this.photoUpdatedAt,
      this.uid});

  factory UsersBoolExp.fromJson(Map<String, dynamic> json) =>
      _$UsersBoolExpFromJson(json);

  @JsonKey(name: '_and')
  List<UsersBoolExp>? $and;

  @JsonKey(name: '_not')
  UsersBoolExp? $not;

  @JsonKey(name: '_or')
  List<UsersBoolExp>? $or;

  UsersPermissionsBoolExp? adminOn;

  StringComparisonExp? email;

  StringComparisonExp? firebaseAuthUid;

  StringComparisonExp? firestoreId;

  BooleanComparisonExp? isUserAllowedToRead;

  @JsonKey(name: 'is_user_allowed_to_change')
  BooleanComparisonExp? isUserAllowedToChange;

  JsonbComparisonExp? lastEdit;

  $textComparisonExp? permissions;

  PersonsBoolExp? person;

  TimestamptzComparisonExp? photoUpdatedAt;

  UuidComparisonExp? uid;

  @override
  List<Object?> get props => [
        $and,
        $not,
        $or,
        adminOn,
        email,
        firebaseAuthUid,
        firestoreId,
        isUserAllowedToRead,
        isUserAllowedToChange,
        lastEdit,
        permissions,
        person,
        photoUpdatedAt,
        uid
      ];
  @override
  Map<String, dynamic> toJson() => _$UsersBoolExpToJson(this);
}

@JsonSerializable(explicitToJson: true)
class $textComparisonExp extends JsonSerializable with EquatableMixin {
  $textComparisonExp(
      {this.$eq,
      this.$gt,
      this.$gte,
      this.$in,
      this.$isNull,
      this.$lt,
      this.$lte,
      this.$neq,
      this.$nin});

  factory $textComparisonExp.fromJson(Map<String, dynamic> json) =>
      _$$textComparisonExpFromJson(json);

  @JsonKey(name: '_eq')
  List<String>? $eq;

  @JsonKey(name: '_gt')
  List<String>? $gt;

  @JsonKey(name: '_gte')
  List<String>? $gte;

  @JsonKey(name: '_in')
  List<List<String>>? $in;

  @JsonKey(name: '_is_null')
  bool? $isNull;

  @JsonKey(name: '_lt')
  List<String>? $lt;

  @JsonKey(name: '_lte')
  List<String>? $lte;

  @JsonKey(name: '_neq')
  List<String>? $neq;

  @JsonKey(name: '_nin')
  List<List<String>>? $nin;

  @override
  List<Object?> get props =>
      [$eq, $gt, $gte, $in, $isNull, $lt, $lte, $neq, $nin];
  @override
  Map<String, dynamic> toJson() => _$$textComparisonExpToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PersonTypesBoolExp extends JsonSerializable with EquatableMixin {
  PersonTypesBoolExp(
      {this.$and,
      this.$not,
      this.$or,
      this.id,
      this.name,
      this.order,
      this.persons});

  factory PersonTypesBoolExp.fromJson(Map<String, dynamic> json) =>
      _$PersonTypesBoolExpFromJson(json);

  @JsonKey(name: '_and')
  List<PersonTypesBoolExp>? $and;

  @JsonKey(name: '_not')
  PersonTypesBoolExp? $not;

  @JsonKey(name: '_or')
  List<PersonTypesBoolExp>? $or;

  UuidComparisonExp? id;

  StringComparisonExp? name;

  IntComparisonExp? order;

  PersonsBoolExp? persons;

  @override
  List<Object?> get props => [$and, $not, $or, id, name, order, persons];
  @override
  Map<String, dynamic> toJson() => _$PersonTypesBoolExpToJson(this);
}

@JsonSerializable(explicitToJson: true)
class QualificationsBoolExp extends JsonSerializable with EquatableMixin {
  QualificationsBoolExp(
      {this.$and, this.$not, this.$or, this.id, this.name, this.persons});

  factory QualificationsBoolExp.fromJson(Map<String, dynamic> json) =>
      _$QualificationsBoolExpFromJson(json);

  @JsonKey(name: '_and')
  List<QualificationsBoolExp>? $and;

  @JsonKey(name: '_not')
  QualificationsBoolExp? $not;

  @JsonKey(name: '_or')
  List<QualificationsBoolExp>? $or;

  UuidComparisonExp? id;

  StringComparisonExp? name;

  PersonsBoolExp? persons;

  @override
  List<Object?> get props => [$and, $not, $or, id, name, persons];
  @override
  Map<String, dynamic> toJson() => _$QualificationsBoolExpToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SchoolsBoolExp extends JsonSerializable with EquatableMixin {
  SchoolsBoolExp(
      {this.$and, this.$not, this.$or, this.id, this.name, this.persons});

  factory SchoolsBoolExp.fromJson(Map<String, dynamic> json) =>
      _$SchoolsBoolExpFromJson(json);

  @JsonKey(name: '_and')
  List<SchoolsBoolExp>? $and;

  @JsonKey(name: '_not')
  SchoolsBoolExp? $not;

  @JsonKey(name: '_or')
  List<SchoolsBoolExp>? $or;

  UuidComparisonExp? id;

  StringComparisonExp? name;

  PersonsBoolExp? persons;

  @override
  List<Object?> get props => [$and, $not, $or, id, name, persons];
  @override
  Map<String, dynamic> toJson() => _$SchoolsBoolExpToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PersonsServicesBoolExp extends JsonSerializable with EquatableMixin {
  PersonsServicesBoolExp(
      {this.$and,
      this.$not,
      this.$or,
      this.person,
      this.personId,
      this.relId,
      this.service,
      this.serviceId});

  factory PersonsServicesBoolExp.fromJson(Map<String, dynamic> json) =>
      _$PersonsServicesBoolExpFromJson(json);

  @JsonKey(name: '_and')
  List<PersonsServicesBoolExp>? $and;

  @JsonKey(name: '_not')
  PersonsServicesBoolExp? $not;

  @JsonKey(name: '_or')
  List<PersonsServicesBoolExp>? $or;

  PersonsBoolExp? person;

  UuidComparisonExp? personId;

  UuidComparisonExp? relId;

  ServicesBoolExp? service;

  UuidComparisonExp? serviceId;

  @override
  List<Object?> get props =>
      [$and, $not, $or, person, personId, relId, service, serviceId];
  @override
  Map<String, dynamic> toJson() => _$PersonsServicesBoolExpToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ServicesBoolExp extends JsonSerializable with EquatableMixin {
  ServicesBoolExp(
      {this.$and,
      this.$not,
      this.$or,
      this.attendanceHistory,
      this.classes,
      this.color,
      this.firestoreId,
      this.fromStudyYear,
      this.groups,
      this.id,
      this.isUserAllowedToRead,
      this.isUserAllowedToWrite,
      this.lastEdit,
      this.name,
      this.persons,
      this.photoUpdatedAt,
      this.studyYearFrom,
      this.studyYearTo,
      this.toStudyYear,
      this.users});

  factory ServicesBoolExp.fromJson(Map<String, dynamic> json) =>
      _$ServicesBoolExpFromJson(json);

  @JsonKey(name: '_and')
  List<ServicesBoolExp>? $and;

  @JsonKey(name: '_not')
  ServicesBoolExp? $not;

  @JsonKey(name: '_or')
  List<ServicesBoolExp>? $or;

  HistoryAttendanceHistoryBoolExp? attendanceHistory;

  ClassesBoolExp? classes;

  IntComparisonExp? color;

  StringComparisonExp? firestoreId;

  StudyYearsBoolExp? fromStudyYear;

  GroupsBoolExp? groups;

  UuidComparisonExp? id;

  BooleanComparisonExp? isUserAllowedToRead;

  BooleanComparisonExp? isUserAllowedToWrite;

  JsonbComparisonExp? lastEdit;

  StringComparisonExp? name;

  PersonsServicesBoolExp? persons;

  TimestamptzComparisonExp? photoUpdatedAt;

  SmallintComparisonExp? studyYearFrom;

  SmallintComparisonExp? studyYearTo;

  StudyYearsBoolExp? toStudyYear;

  UsersPermissionsBoolExp? users;

  @override
  List<Object?> get props => [
        $and,
        $not,
        $or,
        attendanceHistory,
        classes,
        color,
        firestoreId,
        fromStudyYear,
        groups,
        id,
        isUserAllowedToRead,
        isUserAllowedToWrite,
        lastEdit,
        name,
        persons,
        photoUpdatedAt,
        studyYearFrom,
        studyYearTo,
        toStudyYear,
        users
      ];
  @override
  Map<String, dynamic> toJson() => _$ServicesBoolExpToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ClassesBoolExp extends JsonSerializable with EquatableMixin {
  ClassesBoolExp(
      {this.$and,
      this.$not,
      this.$or,
      this.color,
      this.id,
      this.isUserAllowedToRead,
      this.isUserAllowedToWrite,
      this.name,
      this.photoUpdatedAt,
      this.service,
      this.serviceGender,
      this.serviceId,
      this.serviceStudyYear,
      this.studyYear});

  factory ClassesBoolExp.fromJson(Map<String, dynamic> json) =>
      _$ClassesBoolExpFromJson(json);

  @JsonKey(name: '_and')
  List<ClassesBoolExp>? $and;

  @JsonKey(name: '_not')
  ClassesBoolExp? $not;

  @JsonKey(name: '_or')
  List<ClassesBoolExp>? $or;

  BigintComparisonExp? color;

  UuidComparisonExp? id;

  BooleanComparisonExp? isUserAllowedToRead;

  BooleanComparisonExp? isUserAllowedToWrite;

  StringComparisonExp? name;

  TimeComparisonExp? photoUpdatedAt;

  ServicesBoolExp? service;

  BooleanComparisonExp? serviceGender;

  UuidComparisonExp? serviceId;

  IntComparisonExp? serviceStudyYear;

  StudyYearsBoolExp? studyYear;

  @override
  List<Object?> get props => [
        $and,
        $not,
        $or,
        color,
        id,
        isUserAllowedToRead,
        isUserAllowedToWrite,
        name,
        photoUpdatedAt,
        service,
        serviceGender,
        serviceId,
        serviceStudyYear,
        studyYear
      ];
  @override
  Map<String, dynamic> toJson() => _$ClassesBoolExpToJson(this);
}

@JsonSerializable(explicitToJson: true)
class BigintComparisonExp extends JsonSerializable with EquatableMixin {
  BigintComparisonExp(
      {this.$eq,
      this.$gt,
      this.$gte,
      this.$in,
      this.$isNull,
      this.$lt,
      this.$lte,
      this.$neq,
      this.$nin});

  factory BigintComparisonExp.fromJson(Map<String, dynamic> json) =>
      _$BigintComparisonExpFromJson(json);

  @JsonKey(name: '_eq')
  int? $eq;

  @JsonKey(name: '_gt')
  int? $gt;

  @JsonKey(name: '_gte')
  int? $gte;

  @JsonKey(name: '_in')
  List<int>? $in;

  @JsonKey(name: '_is_null')
  bool? $isNull;

  @JsonKey(name: '_lt')
  int? $lt;

  @JsonKey(name: '_lte')
  int? $lte;

  @JsonKey(name: '_neq')
  int? $neq;

  @JsonKey(name: '_nin')
  List<int>? $nin;

  @override
  List<Object?> get props =>
      [$eq, $gt, $gte, $in, $isNull, $lt, $lte, $neq, $nin];
  @override
  Map<String, dynamic> toJson() => _$BigintComparisonExpToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TimeComparisonExp extends JsonSerializable with EquatableMixin {
  TimeComparisonExp(
      {this.$eq,
      this.$gt,
      this.$gte,
      this.$in,
      this.$isNull,
      this.$lt,
      this.$lte,
      this.$neq,
      this.$nin});

  factory TimeComparisonExp.fromJson(Map<String, dynamic> json) =>
      _$TimeComparisonExpFromJson(json);

  @JsonKey(name: '_eq')
  DateTime? $eq;

  @JsonKey(name: '_gt')
  DateTime? $gt;

  @JsonKey(name: '_gte')
  DateTime? $gte;

  @JsonKey(name: '_in')
  List<DateTime>? $in;

  @JsonKey(name: '_is_null')
  bool? $isNull;

  @JsonKey(name: '_lt')
  DateTime? $lt;

  @JsonKey(name: '_lte')
  DateTime? $lte;

  @JsonKey(name: '_neq')
  DateTime? $neq;

  @JsonKey(name: '_nin')
  List<DateTime>? $nin;

  @override
  List<Object?> get props =>
      [$eq, $gt, $gte, $in, $isNull, $lt, $lte, $neq, $nin];
  @override
  Map<String, dynamic> toJson() => _$TimeComparisonExpToJson(this);
}

@JsonSerializable(explicitToJson: true)
class StudyYearsBoolExp extends JsonSerializable with EquatableMixin {
  StudyYearsBoolExp(
      {this.$and,
      this.$not,
      this.$or,
      this.classes,
      this.name,
      this.order,
      this.persons});

  factory StudyYearsBoolExp.fromJson(Map<String, dynamic> json) =>
      _$StudyYearsBoolExpFromJson(json);

  @JsonKey(name: '_and')
  List<StudyYearsBoolExp>? $and;

  @JsonKey(name: '_not')
  StudyYearsBoolExp? $not;

  @JsonKey(name: '_or')
  List<StudyYearsBoolExp>? $or;

  ClassesBoolExp? classes;

  StringComparisonExp? name;

  SmallintComparisonExp? order;

  PersonsBoolExp? persons;

  @override
  List<Object?> get props => [$and, $not, $or, classes, name, order, persons];
  @override
  Map<String, dynamic> toJson() => _$StudyYearsBoolExpToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SmallintComparisonExp extends JsonSerializable with EquatableMixin {
  SmallintComparisonExp(
      {this.$eq,
      this.$gt,
      this.$gte,
      this.$in,
      this.$isNull,
      this.$lt,
      this.$lte,
      this.$neq,
      this.$nin});

  factory SmallintComparisonExp.fromJson(Map<String, dynamic> json) =>
      _$SmallintComparisonExpFromJson(json);

  @JsonKey(name: '_eq')
  int? $eq;

  @JsonKey(name: '_gt')
  int? $gt;

  @JsonKey(name: '_gte')
  int? $gte;

  @JsonKey(name: '_in')
  List<int>? $in;

  @JsonKey(name: '_is_null')
  bool? $isNull;

  @JsonKey(name: '_lt')
  int? $lt;

  @JsonKey(name: '_lte')
  int? $lte;

  @JsonKey(name: '_neq')
  int? $neq;

  @JsonKey(name: '_nin')
  List<int>? $nin;

  @override
  List<Object?> get props =>
      [$eq, $gt, $gte, $in, $isNull, $lt, $lte, $neq, $nin];
  @override
  Map<String, dynamic> toJson() => _$SmallintComparisonExpToJson(this);
}

@JsonSerializable(explicitToJson: true)
class StatesBoolExp extends JsonSerializable with EquatableMixin {
  StatesBoolExp(
      {this.$and,
      this.$not,
      this.$or,
      this.color,
      this.id,
      this.name,
      this.persons});

  factory StatesBoolExp.fromJson(Map<String, dynamic> json) =>
      _$StatesBoolExpFromJson(json);

  @JsonKey(name: '_and')
  List<StatesBoolExp>? $and;

  @JsonKey(name: '_not')
  StatesBoolExp? $not;

  @JsonKey(name: '_or')
  List<StatesBoolExp>? $or;

  IntComparisonExp? color;

  UuidComparisonExp? id;

  StringComparisonExp? name;

  PersonsBoolExp? persons;

  @override
  List<Object?> get props => [$and, $not, $or, color, id, name, persons];
  @override
  Map<String, dynamic> toJson() => _$StatesBoolExpToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PersonsTagsBoolExp extends JsonSerializable with EquatableMixin {
  PersonsTagsBoolExp(
      {this.$and,
      this.$not,
      this.$or,
      this.person,
      this.personId,
      this.relId,
      this.tag,
      this.tagId});

  factory PersonsTagsBoolExp.fromJson(Map<String, dynamic> json) =>
      _$PersonsTagsBoolExpFromJson(json);

  @JsonKey(name: '_and')
  List<PersonsTagsBoolExp>? $and;

  @JsonKey(name: '_not')
  PersonsTagsBoolExp? $not;

  @JsonKey(name: '_or')
  List<PersonsTagsBoolExp>? $or;

  PersonsBoolExp? person;

  UuidComparisonExp? personId;

  UuidComparisonExp? relId;

  TagsBoolExp? tag;

  UuidComparisonExp? tagId;

  @override
  List<Object?> get props =>
      [$and, $not, $or, person, personId, relId, tag, tagId];
  @override
  Map<String, dynamic> toJson() => _$PersonsTagsBoolExpToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TagsBoolExp extends JsonSerializable with EquatableMixin {
  TagsBoolExp(
      {this.$and,
      this.$not,
      this.$or,
      this.color,
      this.id,
      this.name,
      this.persons});

  factory TagsBoolExp.fromJson(Map<String, dynamic> json) =>
      _$TagsBoolExpFromJson(json);

  @JsonKey(name: '_and')
  List<TagsBoolExp>? $and;

  @JsonKey(name: '_not')
  TagsBoolExp? $not;

  @JsonKey(name: '_or')
  List<TagsBoolExp>? $or;

  IntComparisonExp? color;

  UuidComparisonExp? id;

  StringComparisonExp? name;

  PersonsTagsBoolExp? persons;

  @override
  List<Object?> get props => [$and, $not, $or, color, id, name, persons];
  @override
  Map<String, dynamic> toJson() => _$TagsBoolExpToJson(this);
}

@JsonSerializable(explicitToJson: true)
class HistoryVisitHistoryBoolExp extends JsonSerializable with EquatableMixin {
  HistoryVisitHistoryBoolExp(
      {this.$and,
      this.$not,
      this.$or,
      this.person,
      this.personId,
      this.time,
      this.userRole,
      this.userUid});

  factory HistoryVisitHistoryBoolExp.fromJson(Map<String, dynamic> json) =>
      _$HistoryVisitHistoryBoolExpFromJson(json);

  @JsonKey(name: '_and')
  List<HistoryVisitHistoryBoolExp>? $and;

  @JsonKey(name: '_not')
  HistoryVisitHistoryBoolExp? $not;

  @JsonKey(name: '_or')
  List<HistoryVisitHistoryBoolExp>? $or;

  PersonsBoolExp? person;

  UuidComparisonExp? personId;

  TimestamptzComparisonExp? time;

  StringComparisonExp? userRole;

  UuidComparisonExp? userUid;

  @override
  List<Object?> get props =>
      [$and, $not, $or, person, personId, time, userRole, userUid];
  @override
  Map<String, dynamic> toJson() => _$HistoryVisitHistoryBoolExpToJson(this);
}

@JsonSerializable(explicitToJson: true)
class HistoryAttendanceDaysConstraintsBoolExp extends JsonSerializable
    with EquatableMixin {
  HistoryAttendanceDaysConstraintsBoolExp(
      {this.$and,
      this.$not,
      this.$or,
      this.day,
      this.dayId,
      this.group,
      this.groupId,
      this.id,
      this.isUserAllowedToRead,
      this.isUserAllowedToWrite,
      this.service,
      this.serviceGender,
      this.serviceId,
      this.serviceStudyYear,
      this.studyYear});

  factory HistoryAttendanceDaysConstraintsBoolExp.fromJson(
          Map<String, dynamic> json) =>
      _$HistoryAttendanceDaysConstraintsBoolExpFromJson(json);

  @JsonKey(name: '_and')
  List<HistoryAttendanceDaysConstraintsBoolExp>? $and;

  @JsonKey(name: '_not')
  HistoryAttendanceDaysConstraintsBoolExp? $not;

  @JsonKey(name: '_or')
  List<HistoryAttendanceDaysConstraintsBoolExp>? $or;

  HistoryAttendanceDaysBoolExp? day;

  DateComparisonExp? dayId;

  GroupsBoolExp? group;

  UuidComparisonExp? groupId;

  UuidComparisonExp? id;

  BooleanComparisonExp? isUserAllowedToRead;

  BooleanComparisonExp? isUserAllowedToWrite;

  ServicesBoolExp? service;

  BooleanComparisonExp? serviceGender;

  UuidComparisonExp? serviceId;

  IntComparisonExp? serviceStudyYear;

  StudyYearsBoolExp? studyYear;

  @override
  List<Object?> get props => [
        $and,
        $not,
        $or,
        day,
        dayId,
        group,
        groupId,
        id,
        isUserAllowedToRead,
        isUserAllowedToWrite,
        service,
        serviceGender,
        serviceId,
        serviceStudyYear,
        studyYear
      ];
  @override
  Map<String, dynamic> toJson() =>
      _$HistoryAttendanceDaysConstraintsBoolExpToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TimestampComparisonExp extends JsonSerializable with EquatableMixin {
  TimestampComparisonExp(
      {this.$eq,
      this.$gt,
      this.$gte,
      this.$in,
      this.$isNull,
      this.$lt,
      this.$lte,
      this.$neq,
      this.$nin});

  factory TimestampComparisonExp.fromJson(Map<String, dynamic> json) =>
      _$TimestampComparisonExpFromJson(json);

  @JsonKey(name: '_eq')
  DateTime? $eq;

  @JsonKey(name: '_gt')
  DateTime? $gt;

  @JsonKey(name: '_gte')
  DateTime? $gte;

  @JsonKey(name: '_in')
  List<DateTime>? $in;

  @JsonKey(name: '_is_null')
  bool? $isNull;

  @JsonKey(name: '_lt')
  DateTime? $lt;

  @JsonKey(name: '_lte')
  DateTime? $lte;

  @JsonKey(name: '_neq')
  DateTime? $neq;

  @JsonKey(name: '_nin')
  List<DateTime>? $nin;

  @override
  List<Object?> get props =>
      [$eq, $gt, $gte, $in, $isNull, $lt, $lte, $neq, $nin];
  @override
  Map<String, dynamic> toJson() => _$TimestampComparisonExpToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DaterangeComparisonExp extends JsonSerializable with EquatableMixin {
  DaterangeComparisonExp(
      {this.$eq,
      this.$gt,
      this.$gte,
      this.$in,
      this.$isNull,
      this.$lt,
      this.$lte,
      this.$neq,
      this.$nin});

  factory DaterangeComparisonExp.fromJson(Map<String, dynamic> json) =>
      _$DaterangeComparisonExpFromJson(json);

  @JsonKey(name: '_eq')
  String? $eq;

  @JsonKey(name: '_gt')
  String? $gt;

  @JsonKey(name: '_gte')
  String? $gte;

  @JsonKey(name: '_in')
  List<String>? $in;

  @JsonKey(name: '_is_null')
  bool? $isNull;

  @JsonKey(name: '_lt')
  String? $lt;

  @JsonKey(name: '_lte')
  String? $lte;

  @JsonKey(name: '_neq')
  String? $neq;

  @JsonKey(name: '_nin')
  List<String>? $nin;

  @override
  List<Object?> get props =>
      [$eq, $gt, $gte, $in, $isNull, $lt, $lte, $neq, $nin];
  @override
  Map<String, dynamic> toJson() => _$DaterangeComparisonExpToJson(this);
}

@JsonSerializable(explicitToJson: true)
class InsertPersonLastConfession$MutationRoot$HistoryConfessionHistory$Persons
    extends JsonSerializable with EquatableMixin {
  InsertPersonLastConfession$MutationRoot$HistoryConfessionHistory$Persons();

  factory InsertPersonLastConfession$MutationRoot$HistoryConfessionHistory$Persons.fromJson(
          Map<String, dynamic> json) =>
      _$InsertPersonLastConfession$MutationRoot$HistoryConfessionHistory$PersonsFromJson(
          json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue id;

  late String name;

  int? color;

  DateTime? photoUpdatedAt;

  @override
  List<Object?> get props => [id, name, color, photoUpdatedAt];
  @override
  Map<String, dynamic> toJson() =>
      _$InsertPersonLastConfession$MutationRoot$HistoryConfessionHistory$PersonsToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class InsertPersonLastConfession$MutationRoot$HistoryConfessionHistory
    extends JsonSerializable with EquatableMixin {
  InsertPersonLastConfession$MutationRoot$HistoryConfessionHistory();

  factory InsertPersonLastConfession$MutationRoot$HistoryConfessionHistory.fromJson(
          Map<String, dynamic> json) =>
      _$InsertPersonLastConfession$MutationRoot$HistoryConfessionHistoryFromJson(
          json);

  late InsertPersonLastConfession$MutationRoot$HistoryConfessionHistory$Persons
      person;

  @override
  List<Object?> get props => [person];
  @override
  Map<String, dynamic> toJson() =>
      _$InsertPersonLastConfession$MutationRoot$HistoryConfessionHistoryToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class InsertPersonLastConfession$MutationRoot extends JsonSerializable
    with EquatableMixin {
  InsertPersonLastConfession$MutationRoot();

  factory InsertPersonLastConfession$MutationRoot.fromJson(
          Map<String, dynamic> json) =>
      _$InsertPersonLastConfession$MutationRootFromJson(json);

  @JsonKey(name: 'insert_history_confession_history_one')
  InsertPersonLastConfession$MutationRoot$HistoryConfessionHistory?
      insertHistoryConfessionHistoryOne;

  @override
  List<Object?> get props => [insertHistoryConfessionHistoryOne];
  @override
  Map<String, dynamic> toJson() =>
      _$InsertPersonLastConfession$MutationRootToJson(this);
}

@JsonSerializable(explicitToJson: true)
class InsertPersonLastKodas$MutationRoot$HistoryKodasHistory$Persons
    extends JsonSerializable with EquatableMixin {
  InsertPersonLastKodas$MutationRoot$HistoryKodasHistory$Persons();

  factory InsertPersonLastKodas$MutationRoot$HistoryKodasHistory$Persons.fromJson(
          Map<String, dynamic> json) =>
      _$InsertPersonLastKodas$MutationRoot$HistoryKodasHistory$PersonsFromJson(
          json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue id;

  late String name;

  int? color;

  DateTime? photoUpdatedAt;

  @override
  List<Object?> get props => [id, name, color, photoUpdatedAt];
  @override
  Map<String, dynamic> toJson() =>
      _$InsertPersonLastKodas$MutationRoot$HistoryKodasHistory$PersonsToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class InsertPersonLastKodas$MutationRoot$HistoryKodasHistory
    extends JsonSerializable with EquatableMixin {
  InsertPersonLastKodas$MutationRoot$HistoryKodasHistory();

  factory InsertPersonLastKodas$MutationRoot$HistoryKodasHistory.fromJson(
          Map<String, dynamic> json) =>
      _$InsertPersonLastKodas$MutationRoot$HistoryKodasHistoryFromJson(json);

  late InsertPersonLastKodas$MutationRoot$HistoryKodasHistory$Persons person;

  @override
  List<Object?> get props => [person];
  @override
  Map<String, dynamic> toJson() =>
      _$InsertPersonLastKodas$MutationRoot$HistoryKodasHistoryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class InsertPersonLastKodas$MutationRoot extends JsonSerializable
    with EquatableMixin {
  InsertPersonLastKodas$MutationRoot();

  factory InsertPersonLastKodas$MutationRoot.fromJson(
          Map<String, dynamic> json) =>
      _$InsertPersonLastKodas$MutationRootFromJson(json);

  @JsonKey(name: 'insert_history_kodas_history_one')
  InsertPersonLastKodas$MutationRoot$HistoryKodasHistory?
      insertHistoryKodasHistoryOne;

  @override
  List<Object?> get props => [insertHistoryKodasHistoryOne];
  @override
  Map<String, dynamic> toJson() =>
      _$InsertPersonLastKodas$MutationRootToJson(this);
}

@JsonSerializable(explicitToJson: true)
class InsertPersonLastCall$MutationRoot$HistoryCallHistory$Persons
    extends JsonSerializable with EquatableMixin {
  InsertPersonLastCall$MutationRoot$HistoryCallHistory$Persons();

  factory InsertPersonLastCall$MutationRoot$HistoryCallHistory$Persons.fromJson(
          Map<String, dynamic> json) =>
      _$InsertPersonLastCall$MutationRoot$HistoryCallHistory$PersonsFromJson(
          json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue id;

  late String name;

  int? color;

  DateTime? photoUpdatedAt;

  @override
  List<Object?> get props => [id, name, color, photoUpdatedAt];
  @override
  Map<String, dynamic> toJson() =>
      _$InsertPersonLastCall$MutationRoot$HistoryCallHistory$PersonsToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class InsertPersonLastCall$MutationRoot$HistoryCallHistory
    extends JsonSerializable with EquatableMixin {
  InsertPersonLastCall$MutationRoot$HistoryCallHistory();

  factory InsertPersonLastCall$MutationRoot$HistoryCallHistory.fromJson(
          Map<String, dynamic> json) =>
      _$InsertPersonLastCall$MutationRoot$HistoryCallHistoryFromJson(json);

  late InsertPersonLastCall$MutationRoot$HistoryCallHistory$Persons person;

  @override
  List<Object?> get props => [person];
  @override
  Map<String, dynamic> toJson() =>
      _$InsertPersonLastCall$MutationRoot$HistoryCallHistoryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class InsertPersonLastCall$MutationRoot extends JsonSerializable
    with EquatableMixin {
  InsertPersonLastCall$MutationRoot();

  factory InsertPersonLastCall$MutationRoot.fromJson(
          Map<String, dynamic> json) =>
      _$InsertPersonLastCall$MutationRootFromJson(json);

  @JsonKey(name: 'insert_history_call_history_one')
  InsertPersonLastCall$MutationRoot$HistoryCallHistory?
      insertHistoryCallHistoryOne;

  @override
  List<Object?> get props => [insertHistoryCallHistoryOne];
  @override
  Map<String, dynamic> toJson() =>
      _$InsertPersonLastCall$MutationRootToJson(this);
}

@JsonSerializable(explicitToJson: true)
class InsertPersonLastVisit$MutationRoot$HistoryVisitHistory$Persons
    extends JsonSerializable with EquatableMixin {
  InsertPersonLastVisit$MutationRoot$HistoryVisitHistory$Persons();

  factory InsertPersonLastVisit$MutationRoot$HistoryVisitHistory$Persons.fromJson(
          Map<String, dynamic> json) =>
      _$InsertPersonLastVisit$MutationRoot$HistoryVisitHistory$PersonsFromJson(
          json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue id;

  late String name;

  int? color;

  DateTime? photoUpdatedAt;

  @override
  List<Object?> get props => [id, name, color, photoUpdatedAt];
  @override
  Map<String, dynamic> toJson() =>
      _$InsertPersonLastVisit$MutationRoot$HistoryVisitHistory$PersonsToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class InsertPersonLastVisit$MutationRoot$HistoryVisitHistory
    extends JsonSerializable with EquatableMixin {
  InsertPersonLastVisit$MutationRoot$HistoryVisitHistory();

  factory InsertPersonLastVisit$MutationRoot$HistoryVisitHistory.fromJson(
          Map<String, dynamic> json) =>
      _$InsertPersonLastVisit$MutationRoot$HistoryVisitHistoryFromJson(json);

  late InsertPersonLastVisit$MutationRoot$HistoryVisitHistory$Persons person;

  @override
  List<Object?> get props => [person];
  @override
  Map<String, dynamic> toJson() =>
      _$InsertPersonLastVisit$MutationRoot$HistoryVisitHistoryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class InsertPersonLastVisit$MutationRoot extends JsonSerializable
    with EquatableMixin {
  InsertPersonLastVisit$MutationRoot();

  factory InsertPersonLastVisit$MutationRoot.fromJson(
          Map<String, dynamic> json) =>
      _$InsertPersonLastVisit$MutationRootFromJson(json);

  @JsonKey(name: 'insert_history_visit_history_one')
  InsertPersonLastVisit$MutationRoot$HistoryVisitHistory?
      insertHistoryVisitHistoryOne;

  @override
  List<Object?> get props => [insertHistoryVisitHistoryOne];
  @override
  Map<String, dynamic> toJson() =>
      _$InsertPersonLastVisit$MutationRootToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UpdatePersonSpiritData$MutationRoot$HistoryConfessionHistory$Persons
    extends JsonSerializable with EquatableMixin {
  UpdatePersonSpiritData$MutationRoot$HistoryConfessionHistory$Persons();

  factory UpdatePersonSpiritData$MutationRoot$HistoryConfessionHistory$Persons.fromJson(
          Map<String, dynamic> json) =>
      _$UpdatePersonSpiritData$MutationRoot$HistoryConfessionHistory$PersonsFromJson(
          json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue id;

  late String name;

  int? color;

  DateTime? photoUpdatedAt;

  @override
  List<Object?> get props => [id, name, color, photoUpdatedAt];
  @override
  Map<String, dynamic> toJson() =>
      _$UpdatePersonSpiritData$MutationRoot$HistoryConfessionHistory$PersonsToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class UpdatePersonSpiritData$MutationRoot$HistoryConfessionHistory
    extends JsonSerializable with EquatableMixin {
  UpdatePersonSpiritData$MutationRoot$HistoryConfessionHistory();

  factory UpdatePersonSpiritData$MutationRoot$HistoryConfessionHistory.fromJson(
          Map<String, dynamic> json) =>
      _$UpdatePersonSpiritData$MutationRoot$HistoryConfessionHistoryFromJson(
          json);

  late UpdatePersonSpiritData$MutationRoot$HistoryConfessionHistory$Persons
      person;

  @override
  List<Object?> get props => [person];
  @override
  Map<String, dynamic> toJson() =>
      _$UpdatePersonSpiritData$MutationRoot$HistoryConfessionHistoryToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class UpdatePersonSpiritData$MutationRoot$HistoryKodasHistory$Persons
    extends JsonSerializable with EquatableMixin {
  UpdatePersonSpiritData$MutationRoot$HistoryKodasHistory$Persons();

  factory UpdatePersonSpiritData$MutationRoot$HistoryKodasHistory$Persons.fromJson(
          Map<String, dynamic> json) =>
      _$UpdatePersonSpiritData$MutationRoot$HistoryKodasHistory$PersonsFromJson(
          json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue id;

  late String name;

  int? color;

  DateTime? photoUpdatedAt;

  @override
  List<Object?> get props => [id, name, color, photoUpdatedAt];
  @override
  Map<String, dynamic> toJson() =>
      _$UpdatePersonSpiritData$MutationRoot$HistoryKodasHistory$PersonsToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class UpdatePersonSpiritData$MutationRoot$HistoryKodasHistory
    extends JsonSerializable with EquatableMixin {
  UpdatePersonSpiritData$MutationRoot$HistoryKodasHistory();

  factory UpdatePersonSpiritData$MutationRoot$HistoryKodasHistory.fromJson(
          Map<String, dynamic> json) =>
      _$UpdatePersonSpiritData$MutationRoot$HistoryKodasHistoryFromJson(json);

  late UpdatePersonSpiritData$MutationRoot$HistoryKodasHistory$Persons person;

  @override
  List<Object?> get props => [person];
  @override
  Map<String, dynamic> toJson() =>
      _$UpdatePersonSpiritData$MutationRoot$HistoryKodasHistoryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UpdatePersonSpiritData$MutationRoot extends JsonSerializable
    with EquatableMixin {
  UpdatePersonSpiritData$MutationRoot();

  factory UpdatePersonSpiritData$MutationRoot.fromJson(
          Map<String, dynamic> json) =>
      _$UpdatePersonSpiritData$MutationRootFromJson(json);

  @JsonKey(name: 'insert_history_confession_history_one')
  UpdatePersonSpiritData$MutationRoot$HistoryConfessionHistory?
      insertHistoryConfessionHistoryOne;

  @JsonKey(name: 'insert_history_kodas_history_one')
  UpdatePersonSpiritData$MutationRoot$HistoryKodasHistory?
      insertHistoryKodasHistoryOne;

  @override
  List<Object?> get props =>
      [insertHistoryConfessionHistoryOne, insertHistoryKodasHistoryOne];
  @override
  Map<String, dynamic> toJson() =>
      _$UpdatePersonSpiritData$MutationRootToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetPersonsAttendanceWarning$QueryRoot$Persons extends JsonSerializable
    with EquatableMixin {
  GetPersonsAttendanceWarning$QueryRoot$Persons();

  factory GetPersonsAttendanceWarning$QueryRoot$Persons.fromJson(
          Map<String, dynamic> json) =>
      _$GetPersonsAttendanceWarning$QueryRoot$PersonsFromJson(json);

  late String name;

  @override
  List<Object?> get props => [name];
  @override
  Map<String, dynamic> toJson() =>
      _$GetPersonsAttendanceWarning$QueryRoot$PersonsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetPersonsAttendanceWarning$QueryRoot extends JsonSerializable
    with EquatableMixin {
  GetPersonsAttendanceWarning$QueryRoot();

  factory GetPersonsAttendanceWarning$QueryRoot.fromJson(
          Map<String, dynamic> json) =>
      _$GetPersonsAttendanceWarning$QueryRootFromJson(json);

  late List<GetPersonsAttendanceWarning$QueryRoot$Persons> persons;

  @override
  List<Object?> get props => [persons];
  @override
  Map<String, dynamic> toJson() =>
      _$GetPersonsAttendanceWarning$QueryRootToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetPersonsKodasWarning$QueryRoot$Persons extends JsonSerializable
    with EquatableMixin {
  GetPersonsKodasWarning$QueryRoot$Persons();

  factory GetPersonsKodasWarning$QueryRoot$Persons.fromJson(
          Map<String, dynamic> json) =>
      _$GetPersonsKodasWarning$QueryRoot$PersonsFromJson(json);

  late String name;

  @override
  List<Object?> get props => [name];
  @override
  Map<String, dynamic> toJson() =>
      _$GetPersonsKodasWarning$QueryRoot$PersonsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetPersonsKodasWarning$QueryRoot extends JsonSerializable
    with EquatableMixin {
  GetPersonsKodasWarning$QueryRoot();

  factory GetPersonsKodasWarning$QueryRoot.fromJson(
          Map<String, dynamic> json) =>
      _$GetPersonsKodasWarning$QueryRootFromJson(json);

  late List<GetPersonsKodasWarning$QueryRoot$Persons> persons;

  @override
  List<Object?> get props => [persons];
  @override
  Map<String, dynamic> toJson() =>
      _$GetPersonsKodasWarning$QueryRootToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetPersonsConfessionWarning$QueryRoot$Persons extends JsonSerializable
    with EquatableMixin {
  GetPersonsConfessionWarning$QueryRoot$Persons();

  factory GetPersonsConfessionWarning$QueryRoot$Persons.fromJson(
          Map<String, dynamic> json) =>
      _$GetPersonsConfessionWarning$QueryRoot$PersonsFromJson(json);

  late String name;

  @override
  List<Object?> get props => [name];
  @override
  Map<String, dynamic> toJson() =>
      _$GetPersonsConfessionWarning$QueryRoot$PersonsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetPersonsConfessionWarning$QueryRoot extends JsonSerializable
    with EquatableMixin {
  GetPersonsConfessionWarning$QueryRoot();

  factory GetPersonsConfessionWarning$QueryRoot.fromJson(
          Map<String, dynamic> json) =>
      _$GetPersonsConfessionWarning$QueryRootFromJson(json);

  late List<GetPersonsConfessionWarning$QueryRoot$Persons> persons;

  @override
  List<Object?> get props => [persons];
  @override
  Map<String, dynamic> toJson() =>
      _$GetPersonsConfessionWarning$QueryRootToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetPersonsVisitWarning$QueryRoot$Persons extends JsonSerializable
    with EquatableMixin {
  GetPersonsVisitWarning$QueryRoot$Persons();

  factory GetPersonsVisitWarning$QueryRoot$Persons.fromJson(
          Map<String, dynamic> json) =>
      _$GetPersonsVisitWarning$QueryRoot$PersonsFromJson(json);

  late String name;

  @override
  List<Object?> get props => [name];
  @override
  Map<String, dynamic> toJson() =>
      _$GetPersonsVisitWarning$QueryRoot$PersonsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetPersonsVisitWarning$QueryRoot extends JsonSerializable
    with EquatableMixin {
  GetPersonsVisitWarning$QueryRoot();

  factory GetPersonsVisitWarning$QueryRoot.fromJson(
          Map<String, dynamic> json) =>
      _$GetPersonsVisitWarning$QueryRootFromJson(json);

  late List<GetPersonsVisitWarning$QueryRoot$Persons> persons;

  @override
  List<Object?> get props => [persons];
  @override
  Map<String, dynamic> toJson() =>
      _$GetPersonsVisitWarning$QueryRootToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetPersonsBirthday$QueryRoot$Persons extends JsonSerializable
    with EquatableMixin {
  GetPersonsBirthday$QueryRoot$Persons();

  factory GetPersonsBirthday$QueryRoot$Persons.fromJson(
          Map<String, dynamic> json) =>
      _$GetPersonsBirthday$QueryRoot$PersonsFromJson(json);

  late String name;

  @override
  List<Object?> get props => [name];
  @override
  Map<String, dynamic> toJson() =>
      _$GetPersonsBirthday$QueryRoot$PersonsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetPersonsBirthday$QueryRoot extends JsonSerializable
    with EquatableMixin {
  GetPersonsBirthday$QueryRoot();

  factory GetPersonsBirthday$QueryRoot.fromJson(Map<String, dynamic> json) =>
      _$GetPersonsBirthday$QueryRootFromJson(json);

  late List<GetPersonsBirthday$QueryRoot$Persons> persons;

  @override
  List<Object?> get props => [persons];
  @override
  Map<String, dynamic> toJson() => _$GetPersonsBirthday$QueryRootToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetPersonsStream$SubscriptionRoot$Persons extends JsonSerializable
    with EquatableMixin {
  GetPersonsStream$SubscriptionRoot$Persons();

  factory GetPersonsStream$SubscriptionRoot$Persons.fromJson(
          Map<String, dynamic> json) =>
      _$GetPersonsStream$SubscriptionRoot$PersonsFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue id;

  late String name;

  int? color;

  DateTime? photoUpdatedAt;

  @override
  List<Object?> get props => [id, name, color, photoUpdatedAt];
  @override
  Map<String, dynamic> toJson() =>
      _$GetPersonsStream$SubscriptionRoot$PersonsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetPersonsStream$SubscriptionRoot extends JsonSerializable
    with EquatableMixin {
  GetPersonsStream$SubscriptionRoot();

  factory GetPersonsStream$SubscriptionRoot.fromJson(
          Map<String, dynamic> json) =>
      _$GetPersonsStream$SubscriptionRootFromJson(json);

  late List<GetPersonsStream$SubscriptionRoot$Persons> persons;

  @override
  List<Object?> get props => [persons];
  @override
  Map<String, dynamic> toJson() =>
      _$GetPersonsStream$SubscriptionRootToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetServicesStream$SubscriptionRoot$Services$StudyYears
    extends JsonSerializable with EquatableMixin {
  GetServicesStream$SubscriptionRoot$Services$StudyYears();

  factory GetServicesStream$SubscriptionRoot$Services$StudyYears.fromJson(
          Map<String, dynamic> json) =>
      _$GetServicesStream$SubscriptionRoot$Services$StudyYearsFromJson(json);

  late String name;

  late int order;

  @override
  List<Object?> get props => [name, order];
  @override
  Map<String, dynamic> toJson() =>
      _$GetServicesStream$SubscriptionRoot$Services$StudyYearsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetServicesStream$SubscriptionRoot$Services$Classes
    extends JsonSerializable with EquatableMixin {
  GetServicesStream$SubscriptionRoot$Services$Classes();

  factory GetServicesStream$SubscriptionRoot$Services$Classes.fromJson(
          Map<String, dynamic> json) =>
      _$GetServicesStream$SubscriptionRoot$Services$ClassesFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue id;

  late String name;

  int? color;

  DateTime? photoUpdatedAt;

  @override
  List<Object?> get props => [id, name, color, photoUpdatedAt];
  @override
  Map<String, dynamic> toJson() =>
      _$GetServicesStream$SubscriptionRoot$Services$ClassesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetServicesStream$SubscriptionRoot$Services$Groups
    extends JsonSerializable with EquatableMixin {
  GetServicesStream$SubscriptionRoot$Services$Groups();

  factory GetServicesStream$SubscriptionRoot$Services$Groups.fromJson(
          Map<String, dynamic> json) =>
      _$GetServicesStream$SubscriptionRoot$Services$GroupsFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue id;

  late String name;

  int? color;

  DateTime? photoUpdatedAt;

  @override
  List<Object?> get props => [id, name, color, photoUpdatedAt];
  @override
  Map<String, dynamic> toJson() =>
      _$GetServicesStream$SubscriptionRoot$Services$GroupsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetServicesStream$SubscriptionRoot$Services extends JsonSerializable
    with EquatableMixin {
  GetServicesStream$SubscriptionRoot$Services();

  factory GetServicesStream$SubscriptionRoot$Services.fromJson(
          Map<String, dynamic> json) =>
      _$GetServicesStream$SubscriptionRoot$ServicesFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue id;

  late String name;

  int? color;

  DateTime? photoUpdatedAt;

  GetServicesStream$SubscriptionRoot$Services$StudyYears? fromStudyYear;

  GetServicesStream$SubscriptionRoot$Services$StudyYears? toStudyYear;

  late List<GetServicesStream$SubscriptionRoot$Services$Classes> classes;

  late List<GetServicesStream$SubscriptionRoot$Services$Groups> groups;

  @override
  List<Object?> get props => [
        id,
        name,
        color,
        photoUpdatedAt,
        fromStudyYear,
        toStudyYear,
        classes,
        groups
      ];
  @override
  Map<String, dynamic> toJson() =>
      _$GetServicesStream$SubscriptionRoot$ServicesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetServicesStream$SubscriptionRoot extends JsonSerializable
    with EquatableMixin {
  GetServicesStream$SubscriptionRoot();

  factory GetServicesStream$SubscriptionRoot.fromJson(
          Map<String, dynamic> json) =>
      _$GetServicesStream$SubscriptionRootFromJson(json);

  late List<GetServicesStream$SubscriptionRoot$Services> services;

  @override
  List<Object?> get props => [services];
  @override
  Map<String, dynamic> toJson() =>
      _$GetServicesStream$SubscriptionRootToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetStudyYearName$QueryRoot$StudyYears extends JsonSerializable
    with EquatableMixin {
  GetStudyYearName$QueryRoot$StudyYears();

  factory GetStudyYearName$QueryRoot$StudyYears.fromJson(
          Map<String, dynamic> json) =>
      _$GetStudyYearName$QueryRoot$StudyYearsFromJson(json);

  late int order;

  late String name;

  @override
  List<Object?> get props => [order, name];
  @override
  Map<String, dynamic> toJson() =>
      _$GetStudyYearName$QueryRoot$StudyYearsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetStudyYearName$QueryRoot extends JsonSerializable with EquatableMixin {
  GetStudyYearName$QueryRoot();

  factory GetStudyYearName$QueryRoot.fromJson(Map<String, dynamic> json) =>
      _$GetStudyYearName$QueryRootFromJson(json);

  @JsonKey(name: 'study_years_by_pk')
  GetStudyYearName$QueryRoot$StudyYears? studyYearsByPk;

  @override
  List<Object?> get props => [studyYearsByPk];
  @override
  Map<String, dynamic> toJson() => _$GetStudyYearName$QueryRootToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetUserInfoStream$SubscriptionRoot$Users$Persons extends JsonSerializable
    with EquatableMixin {
  GetUserInfoStream$SubscriptionRoot$Users$Persons();

  factory GetUserInfoStream$SubscriptionRoot$Users$Persons.fromJson(
          Map<String, dynamic> json) =>
      _$GetUserInfoStream$SubscriptionRoot$Users$PersonsFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue id;

  late String name;

  String? address;

  Map<String, dynamic>? geolocation;

  String? mainPhone;

  late Map<String, dynamic> otherPhones;

  DateTime? birthdate;

  late bool gender;

  late bool isShammas;

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? shammasLevel;

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? schoolId;

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? collegeId;

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? churchId;

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? fatherId;

  late bool isStudent;

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? jobId;

  String? jobDescription;

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? qualificationId;

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? personTypeId;

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? stateId;

  late bool isServant;

  String? notes;

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? familyId;

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? storeId;

  int? studyYearId;

  int? color;

  DateTime? photoUpdatedAt;

  Map<String, dynamic>? lastKodas;

  Map<String, dynamic>? lastConfession;

  @override
  List<Object?> get props => [
        id,
        name,
        address,
        geolocation,
        mainPhone,
        otherPhones,
        birthdate,
        gender,
        isShammas,
        shammasLevel,
        schoolId,
        collegeId,
        churchId,
        fatherId,
        isStudent,
        jobId,
        jobDescription,
        qualificationId,
        personTypeId,
        stateId,
        isServant,
        notes,
        familyId,
        storeId,
        studyYearId,
        color,
        photoUpdatedAt,
        lastKodas,
        lastConfession
      ];
  @override
  Map<String, dynamic> toJson() =>
      _$GetUserInfoStream$SubscriptionRoot$Users$PersonsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetUserInfoStream$SubscriptionRoot$Users extends JsonSerializable
    with EquatableMixin {
  GetUserInfoStream$SubscriptionRoot$Users();

  factory GetUserInfoStream$SubscriptionRoot$Users.fromJson(
          Map<String, dynamic> json) =>
      _$GetUserInfoStream$SubscriptionRoot$UsersFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue uid;

  String? firebaseAuthUid;

  late String email;

  late List<String> permissions;

  GetUserInfoStream$SubscriptionRoot$Users$Persons? person;

  @override
  List<Object?> get props => [uid, firebaseAuthUid, email, permissions, person];
  @override
  Map<String, dynamic> toJson() =>
      _$GetUserInfoStream$SubscriptionRoot$UsersToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetUserInfoStream$SubscriptionRoot extends JsonSerializable
    with EquatableMixin {
  GetUserInfoStream$SubscriptionRoot();

  factory GetUserInfoStream$SubscriptionRoot.fromJson(
          Map<String, dynamic> json) =>
      _$GetUserInfoStream$SubscriptionRootFromJson(json);

  @JsonKey(name: 'users_by_pk')
  GetUserInfoStream$SubscriptionRoot$Users? usersByPk;

  @override
  List<Object?> get props => [usersByPk];
  @override
  Map<String, dynamic> toJson() =>
      _$GetUserInfoStream$SubscriptionRootToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetAreasStreamArguments extends JsonSerializable with EquatableMixin {
  GetAreasStreamArguments({this.addWhere, this.limit});

  @override
  factory GetAreasStreamArguments.fromJson(Map<String, dynamic> json) =>
      _$GetAreasStreamArgumentsFromJson(json);

  final List<AreasBoolExp>? addWhere;

  final int? limit;

  @override
  List<Object?> get props => [addWhere, limit];
  @override
  Map<String, dynamic> toJson() => _$GetAreasStreamArgumentsToJson(this);
}

const GET_AREAS_STREAM_SUBSCRIPTION_DOCUMENT_OPERATION_NAME = 'getAreasStream';
final GET_AREAS_STREAM_SUBSCRIPTION_DOCUMENT = const DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.subscription,
      name: NameNode(value: 'getAreasStream'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'addWhere')),
            type: ListTypeNode(
                type: NamedTypeNode(
                    name: NameNode(value: 'areas_bool_exp'), isNonNull: true),
                isNonNull: false),
            defaultValue: DefaultValueNode(value: ObjectValueNode(fields: [])),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'limit')),
            type: NamedTypeNode(name: NameNode(value: 'Int')),
            defaultValue: DefaultValueNode(value: IntValueNode(value: '200')),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'areas'),
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'where'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: '_and'),
                        value: VariableNode(name: NameNode(value: 'addWhere')))
                  ])),
              ArgumentNode(
                  name: NameNode(value: 'order_by'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: 'name'),
                        value: EnumValueNode(name: NameNode(value: 'asc')))
                  ])),
              ArgumentNode(
                  name: NameNode(value: 'limit'),
                  value: VariableNode(name: NameNode(value: 'limit')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'id'), arguments: [], directives: []),
              FieldNode(
                  name: NameNode(value: 'name'), arguments: [], directives: []),
              FieldNode(
                  name: NameNode(value: 'bounds'),
                  arguments: [],
                  directives: []),
              FieldNode(
                  name: NameNode(value: 'color'),
                  arguments: [],
                  directives: []),
              FieldNode(
                  name: NameNode(value: 'photoUpdatedAt'),
                  arguments: [],
                  directives: [])
            ]))
      ]))
]);

class GetAreasStreamSubscription extends GraphQLQuery<
    GetAreasStream$SubscriptionRoot, GetAreasStreamArguments> {
  GetAreasStreamSubscription({required this.variables});

  @override
  final DocumentNode document = GET_AREAS_STREAM_SUBSCRIPTION_DOCUMENT;

  @override
  final String operationName =
      GET_AREAS_STREAM_SUBSCRIPTION_DOCUMENT_OPERATION_NAME;

  @override
  final GetAreasStreamArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  GetAreasStream$SubscriptionRoot parse(Map<String, dynamic> json) =>
      GetAreasStream$SubscriptionRoot.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class InsertPersonLastConfessionArguments extends JsonSerializable
    with EquatableMixin {
  InsertPersonLastConfessionArguments(
      {required this.personId, required this.lastConfession});

  @override
  factory InsertPersonLastConfessionArguments.fromJson(
          Map<String, dynamic> json) =>
      _$InsertPersonLastConfessionArgumentsFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue personId;

  late DateTime lastConfession;

  @override
  List<Object?> get props => [personId, lastConfession];
  @override
  Map<String, dynamic> toJson() =>
      _$InsertPersonLastConfessionArgumentsToJson(this);
}

const INSERT_PERSON_LAST_CONFESSION_MUTATION_DOCUMENT_OPERATION_NAME =
    'insertPersonLastConfession';
final INSERT_PERSON_LAST_CONFESSION_MUTATION_DOCUMENT =
    const DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'insertPersonLastConfession'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'personId')),
            type: NamedTypeNode(name: NameNode(value: 'uuid'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'lastConfession')),
            type: NamedTypeNode(name: NameNode(value: 'date'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'insert_history_confession_history_one'),
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'object'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: 'personId'),
                        value: VariableNode(name: NameNode(value: 'personId'))),
                    ObjectFieldNode(
                        name: NameNode(value: 'day'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                              name: NameNode(value: 'data'),
                              value: ObjectValueNode(fields: [
                                ObjectFieldNode(
                                    name: NameNode(value: 'day'),
                                    value: VariableNode(
                                        name:
                                            NameNode(value: 'lastConfession')))
                              ])),
                          ObjectFieldNode(
                              name: NameNode(value: 'on_conflict'),
                              value: ObjectValueNode(fields: [
                                ObjectFieldNode(
                                    name: NameNode(value: 'constraint'),
                                    value: EnumValueNode(
                                        name: NameNode(
                                            value: 'attendance_days_pkey'))),
                                ObjectFieldNode(
                                    name: NameNode(value: 'update_columns'),
                                    value: EnumValueNode(
                                        name: NameNode(value: 'day')))
                              ]))
                        ]))
                  ])),
              ArgumentNode(
                  name: NameNode(value: 'on_conflict'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: 'constraint'),
                        value: EnumValueNode(
                            name: NameNode(
                                value:
                                    'confession_history_dayID_personID_key')))
                  ]))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'person'),
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'id'),
                        arguments: [],
                        directives: []),
                    FieldNode(
                        name: NameNode(value: 'name'),
                        arguments: [],
                        directives: []),
                    FieldNode(
                        name: NameNode(value: 'color'),
                        arguments: [],
                        directives: []),
                    FieldNode(
                        name: NameNode(value: 'photoUpdatedAt'),
                        arguments: [],
                        directives: [])
                  ]))
            ]))
      ]))
]);

class InsertPersonLastConfessionMutation extends GraphQLQuery<
    InsertPersonLastConfession$MutationRoot,
    InsertPersonLastConfessionArguments> {
  InsertPersonLastConfessionMutation({required this.variables});

  @override
  final DocumentNode document = INSERT_PERSON_LAST_CONFESSION_MUTATION_DOCUMENT;

  @override
  final String operationName =
      INSERT_PERSON_LAST_CONFESSION_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final InsertPersonLastConfessionArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  InsertPersonLastConfession$MutationRoot parse(Map<String, dynamic> json) =>
      InsertPersonLastConfession$MutationRoot.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class InsertPersonLastKodasArguments extends JsonSerializable
    with EquatableMixin {
  InsertPersonLastKodasArguments(
      {required this.personId, required this.lastKodas});

  @override
  factory InsertPersonLastKodasArguments.fromJson(Map<String, dynamic> json) =>
      _$InsertPersonLastKodasArgumentsFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue personId;

  late DateTime lastKodas;

  @override
  List<Object?> get props => [personId, lastKodas];
  @override
  Map<String, dynamic> toJson() => _$InsertPersonLastKodasArgumentsToJson(this);
}

const INSERT_PERSON_LAST_KODAS_MUTATION_DOCUMENT_OPERATION_NAME =
    'insertPersonLastKodas';
final INSERT_PERSON_LAST_KODAS_MUTATION_DOCUMENT =
    const DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'insertPersonLastKodas'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'personId')),
            type: NamedTypeNode(name: NameNode(value: 'uuid'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'lastKodas')),
            type: NamedTypeNode(name: NameNode(value: 'date'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'insert_history_kodas_history_one'),
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'object'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: 'personId'),
                        value: VariableNode(name: NameNode(value: 'personId'))),
                    ObjectFieldNode(
                        name: NameNode(value: 'day'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                              name: NameNode(value: 'data'),
                              value: ObjectValueNode(fields: [
                                ObjectFieldNode(
                                    name: NameNode(value: 'day'),
                                    value: VariableNode(
                                        name: NameNode(value: 'lastKodas')))
                              ])),
                          ObjectFieldNode(
                              name: NameNode(value: 'on_conflict'),
                              value: ObjectValueNode(fields: [
                                ObjectFieldNode(
                                    name: NameNode(value: 'constraint'),
                                    value: EnumValueNode(
                                        name: NameNode(
                                            value: 'attendance_days_pkey'))),
                                ObjectFieldNode(
                                    name: NameNode(value: 'update_columns'),
                                    value: EnumValueNode(
                                        name: NameNode(value: 'day')))
                              ]))
                        ]))
                  ])),
              ArgumentNode(
                  name: NameNode(value: 'on_conflict'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: 'constraint'),
                        value: EnumValueNode(
                            name: NameNode(
                                value: 'kodas_history_dayID_personID_key')))
                  ]))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'person'),
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'id'),
                        arguments: [],
                        directives: []),
                    FieldNode(
                        name: NameNode(value: 'name'),
                        arguments: [],
                        directives: []),
                    FieldNode(
                        name: NameNode(value: 'color'),
                        arguments: [],
                        directives: []),
                    FieldNode(
                        name: NameNode(value: 'photoUpdatedAt'),
                        arguments: [],
                        directives: [])
                  ]))
            ]))
      ]))
]);

class InsertPersonLastKodasMutation extends GraphQLQuery<
    InsertPersonLastKodas$MutationRoot, InsertPersonLastKodasArguments> {
  InsertPersonLastKodasMutation({required this.variables});

  @override
  final DocumentNode document = INSERT_PERSON_LAST_KODAS_MUTATION_DOCUMENT;

  @override
  final String operationName =
      INSERT_PERSON_LAST_KODAS_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final InsertPersonLastKodasArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  InsertPersonLastKodas$MutationRoot parse(Map<String, dynamic> json) =>
      InsertPersonLastKodas$MutationRoot.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class InsertPersonLastCallArguments extends JsonSerializable
    with EquatableMixin {
  InsertPersonLastCallArguments(
      {required this.personId, required this.lastCall});

  @override
  factory InsertPersonLastCallArguments.fromJson(Map<String, dynamic> json) =>
      _$InsertPersonLastCallArgumentsFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue personId;

  late DateTime lastCall;

  @override
  List<Object?> get props => [personId, lastCall];
  @override
  Map<String, dynamic> toJson() => _$InsertPersonLastCallArgumentsToJson(this);
}

const INSERT_PERSON_LAST_CALL_MUTATION_DOCUMENT_OPERATION_NAME =
    'insertPersonLastCall';
final INSERT_PERSON_LAST_CALL_MUTATION_DOCUMENT =
    const DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'insertPersonLastCall'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'personId')),
            type: NamedTypeNode(name: NameNode(value: 'uuid'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'lastCall')),
            type: NamedTypeNode(
                name: NameNode(value: 'timestamptz'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'insert_history_call_history_one'),
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'object'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: 'personId'),
                        value: VariableNode(name: NameNode(value: 'personId'))),
                    ObjectFieldNode(
                        name: NameNode(value: 'time'),
                        value: VariableNode(name: NameNode(value: 'lastCall')))
                  ]))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'person'),
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'id'),
                        arguments: [],
                        directives: []),
                    FieldNode(
                        name: NameNode(value: 'name'),
                        arguments: [],
                        directives: []),
                    FieldNode(
                        name: NameNode(value: 'color'),
                        arguments: [],
                        directives: []),
                    FieldNode(
                        name: NameNode(value: 'photoUpdatedAt'),
                        arguments: [],
                        directives: [])
                  ]))
            ]))
      ]))
]);

class InsertPersonLastCallMutation extends GraphQLQuery<
    InsertPersonLastCall$MutationRoot, InsertPersonLastCallArguments> {
  InsertPersonLastCallMutation({required this.variables});

  @override
  final DocumentNode document = INSERT_PERSON_LAST_CALL_MUTATION_DOCUMENT;

  @override
  final String operationName =
      INSERT_PERSON_LAST_CALL_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final InsertPersonLastCallArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  InsertPersonLastCall$MutationRoot parse(Map<String, dynamic> json) =>
      InsertPersonLastCall$MutationRoot.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class InsertPersonLastVisitArguments extends JsonSerializable
    with EquatableMixin {
  InsertPersonLastVisitArguments(
      {required this.personId, required this.lastVisit});

  @override
  factory InsertPersonLastVisitArguments.fromJson(Map<String, dynamic> json) =>
      _$InsertPersonLastVisitArgumentsFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue personId;

  late DateTime lastVisit;

  @override
  List<Object?> get props => [personId, lastVisit];
  @override
  Map<String, dynamic> toJson() => _$InsertPersonLastVisitArgumentsToJson(this);
}

const INSERT_PERSON_LAST_VISIT_MUTATION_DOCUMENT_OPERATION_NAME =
    'insertPersonLastVisit';
final INSERT_PERSON_LAST_VISIT_MUTATION_DOCUMENT =
    const DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'insertPersonLastVisit'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'personId')),
            type: NamedTypeNode(name: NameNode(value: 'uuid'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'lastVisit')),
            type: NamedTypeNode(
                name: NameNode(value: 'timestamptz'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'insert_history_visit_history_one'),
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'object'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: 'personId'),
                        value: VariableNode(name: NameNode(value: 'personId'))),
                    ObjectFieldNode(
                        name: NameNode(value: 'time'),
                        value: VariableNode(name: NameNode(value: 'lastVisit')))
                  ]))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'person'),
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'id'),
                        arguments: [],
                        directives: []),
                    FieldNode(
                        name: NameNode(value: 'name'),
                        arguments: [],
                        directives: []),
                    FieldNode(
                        name: NameNode(value: 'color'),
                        arguments: [],
                        directives: []),
                    FieldNode(
                        name: NameNode(value: 'photoUpdatedAt'),
                        arguments: [],
                        directives: [])
                  ]))
            ]))
      ]))
]);

class InsertPersonLastVisitMutation extends GraphQLQuery<
    InsertPersonLastVisit$MutationRoot, InsertPersonLastVisitArguments> {
  InsertPersonLastVisitMutation({required this.variables});

  @override
  final DocumentNode document = INSERT_PERSON_LAST_VISIT_MUTATION_DOCUMENT;

  @override
  final String operationName =
      INSERT_PERSON_LAST_VISIT_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final InsertPersonLastVisitArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  InsertPersonLastVisit$MutationRoot parse(Map<String, dynamic> json) =>
      InsertPersonLastVisit$MutationRoot.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class UpdatePersonSpiritDataArguments extends JsonSerializable
    with EquatableMixin {
  UpdatePersonSpiritDataArguments(
      {required this.personId,
      required this.lastConfession,
      required this.lastKodas});

  @override
  factory UpdatePersonSpiritDataArguments.fromJson(Map<String, dynamic> json) =>
      _$UpdatePersonSpiritDataArgumentsFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue personId;

  late DateTime lastConfession;

  late DateTime lastKodas;

  @override
  List<Object?> get props => [personId, lastConfession, lastKodas];
  @override
  Map<String, dynamic> toJson() =>
      _$UpdatePersonSpiritDataArgumentsToJson(this);
}

const UPDATE_PERSON_SPIRIT_DATA_MUTATION_DOCUMENT_OPERATION_NAME =
    'updatePersonSpiritData';
final UPDATE_PERSON_SPIRIT_DATA_MUTATION_DOCUMENT =
    const DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'updatePersonSpiritData'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'personId')),
            type: NamedTypeNode(name: NameNode(value: 'uuid'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'lastConfession')),
            type: NamedTypeNode(name: NameNode(value: 'date'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'lastKodas')),
            type: NamedTypeNode(name: NameNode(value: 'date'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'insert_history_confession_history_one'),
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'object'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: 'personId'),
                        value: VariableNode(name: NameNode(value: 'personId'))),
                    ObjectFieldNode(
                        name: NameNode(value: 'day'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                              name: NameNode(value: 'data'),
                              value: ObjectValueNode(fields: [
                                ObjectFieldNode(
                                    name: NameNode(value: 'day'),
                                    value: VariableNode(
                                        name:
                                            NameNode(value: 'lastConfession')))
                              ])),
                          ObjectFieldNode(
                              name: NameNode(value: 'on_conflict'),
                              value: ObjectValueNode(fields: [
                                ObjectFieldNode(
                                    name: NameNode(value: 'constraint'),
                                    value: EnumValueNode(
                                        name: NameNode(
                                            value: 'attendance_days_pkey'))),
                                ObjectFieldNode(
                                    name: NameNode(value: 'update_columns'),
                                    value: EnumValueNode(
                                        name: NameNode(value: 'day')))
                              ]))
                        ]))
                  ])),
              ArgumentNode(
                  name: NameNode(value: 'on_conflict'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: 'constraint'),
                        value: EnumValueNode(
                            name: NameNode(
                                value:
                                    'confession_history_dayID_personID_key')))
                  ]))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'person'),
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'id'),
                        arguments: [],
                        directives: []),
                    FieldNode(
                        name: NameNode(value: 'name'),
                        arguments: [],
                        directives: []),
                    FieldNode(
                        name: NameNode(value: 'color'),
                        arguments: [],
                        directives: []),
                    FieldNode(
                        name: NameNode(value: 'photoUpdatedAt'),
                        arguments: [],
                        directives: [])
                  ]))
            ])),
        FieldNode(
            name: NameNode(value: 'insert_history_kodas_history_one'),
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'object'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: 'personId'),
                        value: VariableNode(name: NameNode(value: 'personId'))),
                    ObjectFieldNode(
                        name: NameNode(value: 'day'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                              name: NameNode(value: 'data'),
                              value: ObjectValueNode(fields: [
                                ObjectFieldNode(
                                    name: NameNode(value: 'day'),
                                    value: VariableNode(
                                        name: NameNode(value: 'lastKodas')))
                              ])),
                          ObjectFieldNode(
                              name: NameNode(value: 'on_conflict'),
                              value: ObjectValueNode(fields: [
                                ObjectFieldNode(
                                    name: NameNode(value: 'constraint'),
                                    value: EnumValueNode(
                                        name: NameNode(
                                            value: 'attendance_days_pkey'))),
                                ObjectFieldNode(
                                    name: NameNode(value: 'update_columns'),
                                    value: EnumValueNode(
                                        name: NameNode(value: 'day')))
                              ]))
                        ]))
                  ])),
              ArgumentNode(
                  name: NameNode(value: 'on_conflict'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: 'constraint'),
                        value: EnumValueNode(
                            name: NameNode(
                                value: 'kodas_history_dayID_personID_key')))
                  ]))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'person'),
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'id'),
                        arguments: [],
                        directives: []),
                    FieldNode(
                        name: NameNode(value: 'name'),
                        arguments: [],
                        directives: []),
                    FieldNode(
                        name: NameNode(value: 'color'),
                        arguments: [],
                        directives: []),
                    FieldNode(
                        name: NameNode(value: 'photoUpdatedAt'),
                        arguments: [],
                        directives: [])
                  ]))
            ]))
      ]))
]);

class UpdatePersonSpiritDataMutation extends GraphQLQuery<
    UpdatePersonSpiritData$MutationRoot, UpdatePersonSpiritDataArguments> {
  UpdatePersonSpiritDataMutation({required this.variables});

  @override
  final DocumentNode document = UPDATE_PERSON_SPIRIT_DATA_MUTATION_DOCUMENT;

  @override
  final String operationName =
      UPDATE_PERSON_SPIRIT_DATA_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final UpdatePersonSpiritDataArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  UpdatePersonSpiritData$MutationRoot parse(Map<String, dynamic> json) =>
      UpdatePersonSpiritData$MutationRoot.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class GetPersonsAttendanceWarningArguments extends JsonSerializable
    with EquatableMixin {
  GetPersonsAttendanceWarningArguments({required this.dateFilter});

  @override
  factory GetPersonsAttendanceWarningArguments.fromJson(
          Map<String, dynamic> json) =>
      _$GetPersonsAttendanceWarningArgumentsFromJson(json);

  late DateTime dateFilter;

  @override
  List<Object?> get props => [dateFilter];
  @override
  Map<String, dynamic> toJson() =>
      _$GetPersonsAttendanceWarningArgumentsToJson(this);
}

const GET_PERSONS_ATTENDANCE_WARNING_QUERY_DOCUMENT_OPERATION_NAME =
    'getPersonsAttendanceWarning';
final GET_PERSONS_ATTENDANCE_WARNING_QUERY_DOCUMENT =
    const DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'getPersonsAttendanceWarning'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'dateFilter')),
            type: NamedTypeNode(name: NameNode(value: 'date'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'persons'),
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'where'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: 'attendanceHistory'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                              name: NameNode(value: '_not'),
                              value: ObjectValueNode(fields: [
                                ObjectFieldNode(
                                    name: NameNode(value: 'dayId'),
                                    value: ObjectValueNode(fields: [
                                      ObjectFieldNode(
                                          name: NameNode(value: '_gte'),
                                          value: VariableNode(
                                              name: NameNode(
                                                  value: 'dateFilter')))
                                    ]))
                              ]))
                        ]))
                  ])),
              ArgumentNode(
                  name: NameNode(value: 'limit'),
                  value: IntValueNode(value: '25'))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'name'), arguments: [], directives: [])
            ]))
      ]))
]);

class GetPersonsAttendanceWarningQuery extends GraphQLQuery<
    GetPersonsAttendanceWarning$QueryRoot,
    GetPersonsAttendanceWarningArguments> {
  GetPersonsAttendanceWarningQuery({required this.variables});

  @override
  final DocumentNode document = GET_PERSONS_ATTENDANCE_WARNING_QUERY_DOCUMENT;

  @override
  final String operationName =
      GET_PERSONS_ATTENDANCE_WARNING_QUERY_DOCUMENT_OPERATION_NAME;

  @override
  final GetPersonsAttendanceWarningArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  GetPersonsAttendanceWarning$QueryRoot parse(Map<String, dynamic> json) =>
      GetPersonsAttendanceWarning$QueryRoot.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class GetPersonsKodasWarningArguments extends JsonSerializable
    with EquatableMixin {
  GetPersonsKodasWarningArguments({required this.dateFilter});

  @override
  factory GetPersonsKodasWarningArguments.fromJson(Map<String, dynamic> json) =>
      _$GetPersonsKodasWarningArgumentsFromJson(json);

  late DateTime dateFilter;

  @override
  List<Object?> get props => [dateFilter];
  @override
  Map<String, dynamic> toJson() =>
      _$GetPersonsKodasWarningArgumentsToJson(this);
}

const GET_PERSONS_KODAS_WARNING_QUERY_DOCUMENT_OPERATION_NAME =
    'getPersonsKodasWarning';
final GET_PERSONS_KODAS_WARNING_QUERY_DOCUMENT =
    const DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'getPersonsKodasWarning'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'dateFilter')),
            type: NamedTypeNode(name: NameNode(value: 'date'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'persons'),
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'where'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: 'kodasHistory'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                              name: NameNode(value: '_not'),
                              value: ObjectValueNode(fields: [
                                ObjectFieldNode(
                                    name: NameNode(value: 'dayId'),
                                    value: ObjectValueNode(fields: [
                                      ObjectFieldNode(
                                          name: NameNode(value: '_gte'),
                                          value: VariableNode(
                                              name: NameNode(
                                                  value: 'dateFilter')))
                                    ]))
                              ]))
                        ]))
                  ])),
              ArgumentNode(
                  name: NameNode(value: 'limit'),
                  value: IntValueNode(value: '25'))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'name'), arguments: [], directives: [])
            ]))
      ]))
]);

class GetPersonsKodasWarningQuery extends GraphQLQuery<
    GetPersonsKodasWarning$QueryRoot, GetPersonsKodasWarningArguments> {
  GetPersonsKodasWarningQuery({required this.variables});

  @override
  final DocumentNode document = GET_PERSONS_KODAS_WARNING_QUERY_DOCUMENT;

  @override
  final String operationName =
      GET_PERSONS_KODAS_WARNING_QUERY_DOCUMENT_OPERATION_NAME;

  @override
  final GetPersonsKodasWarningArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  GetPersonsKodasWarning$QueryRoot parse(Map<String, dynamic> json) =>
      GetPersonsKodasWarning$QueryRoot.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class GetPersonsConfessionWarningArguments extends JsonSerializable
    with EquatableMixin {
  GetPersonsConfessionWarningArguments({required this.dateFilter});

  @override
  factory GetPersonsConfessionWarningArguments.fromJson(
          Map<String, dynamic> json) =>
      _$GetPersonsConfessionWarningArgumentsFromJson(json);

  late DateTime dateFilter;

  @override
  List<Object?> get props => [dateFilter];
  @override
  Map<String, dynamic> toJson() =>
      _$GetPersonsConfessionWarningArgumentsToJson(this);
}

const GET_PERSONS_CONFESSION_WARNING_QUERY_DOCUMENT_OPERATION_NAME =
    'getPersonsConfessionWarning';
final GET_PERSONS_CONFESSION_WARNING_QUERY_DOCUMENT =
    const DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'getPersonsConfessionWarning'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'dateFilter')),
            type: NamedTypeNode(name: NameNode(value: 'date'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'persons'),
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'where'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: 'confessionHistory'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                              name: NameNode(value: '_not'),
                              value: ObjectValueNode(fields: [
                                ObjectFieldNode(
                                    name: NameNode(value: 'dayId'),
                                    value: ObjectValueNode(fields: [
                                      ObjectFieldNode(
                                          name: NameNode(value: '_gte'),
                                          value: VariableNode(
                                              name: NameNode(
                                                  value: 'dateFilter')))
                                    ]))
                              ]))
                        ]))
                  ])),
              ArgumentNode(
                  name: NameNode(value: 'limit'),
                  value: IntValueNode(value: '25'))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'name'), arguments: [], directives: [])
            ]))
      ]))
]);

class GetPersonsConfessionWarningQuery extends GraphQLQuery<
    GetPersonsConfessionWarning$QueryRoot,
    GetPersonsConfessionWarningArguments> {
  GetPersonsConfessionWarningQuery({required this.variables});

  @override
  final DocumentNode document = GET_PERSONS_CONFESSION_WARNING_QUERY_DOCUMENT;

  @override
  final String operationName =
      GET_PERSONS_CONFESSION_WARNING_QUERY_DOCUMENT_OPERATION_NAME;

  @override
  final GetPersonsConfessionWarningArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  GetPersonsConfessionWarning$QueryRoot parse(Map<String, dynamic> json) =>
      GetPersonsConfessionWarning$QueryRoot.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class GetPersonsVisitWarningArguments extends JsonSerializable
    with EquatableMixin {
  GetPersonsVisitWarningArguments({required this.dateFilter});

  @override
  factory GetPersonsVisitWarningArguments.fromJson(Map<String, dynamic> json) =>
      _$GetPersonsVisitWarningArgumentsFromJson(json);

  late DateTime dateFilter;

  @override
  List<Object?> get props => [dateFilter];
  @override
  Map<String, dynamic> toJson() =>
      _$GetPersonsVisitWarningArgumentsToJson(this);
}

const GET_PERSONS_VISIT_WARNING_QUERY_DOCUMENT_OPERATION_NAME =
    'getPersonsVisitWarning';
final GET_PERSONS_VISIT_WARNING_QUERY_DOCUMENT =
    const DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'getPersonsVisitWarning'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'dateFilter')),
            type: NamedTypeNode(
                name: NameNode(value: 'timestamptz'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'persons'),
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'where'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: 'visitHistory'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                              name: NameNode(value: '_not'),
                              value: ObjectValueNode(fields: [
                                ObjectFieldNode(
                                    name: NameNode(value: 'time'),
                                    value: ObjectValueNode(fields: [
                                      ObjectFieldNode(
                                          name: NameNode(value: '_gte'),
                                          value: VariableNode(
                                              name: NameNode(
                                                  value: 'dateFilter')))
                                    ]))
                              ]))
                        ]))
                  ])),
              ArgumentNode(
                  name: NameNode(value: 'limit'),
                  value: IntValueNode(value: '25'))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'name'), arguments: [], directives: [])
            ]))
      ]))
]);

class GetPersonsVisitWarningQuery extends GraphQLQuery<
    GetPersonsVisitWarning$QueryRoot, GetPersonsVisitWarningArguments> {
  GetPersonsVisitWarningQuery({required this.variables});

  @override
  final DocumentNode document = GET_PERSONS_VISIT_WARNING_QUERY_DOCUMENT;

  @override
  final String operationName =
      GET_PERSONS_VISIT_WARNING_QUERY_DOCUMENT_OPERATION_NAME;

  @override
  final GetPersonsVisitWarningArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  GetPersonsVisitWarning$QueryRoot parse(Map<String, dynamic> json) =>
      GetPersonsVisitWarning$QueryRoot.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class GetPersonsBirthdayArguments extends JsonSerializable with EquatableMixin {
  GetPersonsBirthdayArguments({required this.dateFilter});

  @override
  factory GetPersonsBirthdayArguments.fromJson(Map<String, dynamic> json) =>
      _$GetPersonsBirthdayArgumentsFromJson(json);

  late String dateFilter;

  @override
  List<Object?> get props => [dateFilter];
  @override
  Map<String, dynamic> toJson() => _$GetPersonsBirthdayArgumentsToJson(this);
}

const GET_PERSONS_BIRTHDAY_QUERY_DOCUMENT_OPERATION_NAME = 'getPersonsBirthday';
final GET_PERSONS_BIRTHDAY_QUERY_DOCUMENT = const DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'getPersonsBirthday'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'dateFilter')),
            type:
                NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'persons'),
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'where'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: 'birthday'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                              name: NameNode(value: '_eq'),
                              value: VariableNode(
                                  name: NameNode(value: 'dateFilter')))
                        ]))
                  ])),
              ArgumentNode(
                  name: NameNode(value: 'limit'),
                  value: IntValueNode(value: '25'))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'name'), arguments: [], directives: [])
            ]))
      ]))
]);

class GetPersonsBirthdayQuery extends GraphQLQuery<GetPersonsBirthday$QueryRoot,
    GetPersonsBirthdayArguments> {
  GetPersonsBirthdayQuery({required this.variables});

  @override
  final DocumentNode document = GET_PERSONS_BIRTHDAY_QUERY_DOCUMENT;

  @override
  final String operationName =
      GET_PERSONS_BIRTHDAY_QUERY_DOCUMENT_OPERATION_NAME;

  @override
  final GetPersonsBirthdayArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  GetPersonsBirthday$QueryRoot parse(Map<String, dynamic> json) =>
      GetPersonsBirthday$QueryRoot.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class GetPersonsStreamArguments extends JsonSerializable with EquatableMixin {
  GetPersonsStreamArguments({this.addWhere, this.limit});

  @override
  factory GetPersonsStreamArguments.fromJson(Map<String, dynamic> json) =>
      _$GetPersonsStreamArgumentsFromJson(json);

  final List<PersonsBoolExp>? addWhere;

  final int? limit;

  @override
  List<Object?> get props => [addWhere, limit];
  @override
  Map<String, dynamic> toJson() => _$GetPersonsStreamArgumentsToJson(this);
}

const GET_PERSONS_STREAM_SUBSCRIPTION_DOCUMENT_OPERATION_NAME =
    'getPersonsStream';
final GET_PERSONS_STREAM_SUBSCRIPTION_DOCUMENT =
    const DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.subscription,
      name: NameNode(value: 'getPersonsStream'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'addWhere')),
            type: ListTypeNode(
                type: NamedTypeNode(
                    name: NameNode(value: 'persons_bool_exp'), isNonNull: true),
                isNonNull: false),
            defaultValue: DefaultValueNode(value: ObjectValueNode(fields: [])),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'limit')),
            type: NamedTypeNode(name: NameNode(value: 'Int')),
            defaultValue: DefaultValueNode(value: IntValueNode(value: '200')),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'persons'),
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'where'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: '_and'),
                        value: VariableNode(name: NameNode(value: 'addWhere')))
                  ])),
              ArgumentNode(
                  name: NameNode(value: 'order_by'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: 'name'),
                        value: EnumValueNode(name: NameNode(value: 'asc')))
                  ])),
              ArgumentNode(
                  name: NameNode(value: 'limit'),
                  value: VariableNode(name: NameNode(value: 'limit')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'id'), arguments: [], directives: []),
              FieldNode(
                  name: NameNode(value: 'name'), arguments: [], directives: []),
              FieldNode(
                  name: NameNode(value: 'color'),
                  arguments: [],
                  directives: []),
              FieldNode(
                  name: NameNode(value: 'photoUpdatedAt'),
                  arguments: [],
                  directives: [])
            ]))
      ]))
]);

class GetPersonsStreamSubscription extends GraphQLQuery<
    GetPersonsStream$SubscriptionRoot, GetPersonsStreamArguments> {
  GetPersonsStreamSubscription({required this.variables});

  @override
  final DocumentNode document = GET_PERSONS_STREAM_SUBSCRIPTION_DOCUMENT;

  @override
  final String operationName =
      GET_PERSONS_STREAM_SUBSCRIPTION_DOCUMENT_OPERATION_NAME;

  @override
  final GetPersonsStreamArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  GetPersonsStream$SubscriptionRoot parse(Map<String, dynamic> json) =>
      GetPersonsStream$SubscriptionRoot.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class GetServicesStreamArguments extends JsonSerializable with EquatableMixin {
  GetServicesStreamArguments(
      {this.addWhere, this.groupsAddWhere, this.classesAddWhere, this.limit});

  @override
  factory GetServicesStreamArguments.fromJson(Map<String, dynamic> json) =>
      _$GetServicesStreamArgumentsFromJson(json);

  final List<ServicesBoolExp>? addWhere;

  final List<GroupsBoolExp>? groupsAddWhere;

  final List<ClassesBoolExp>? classesAddWhere;

  final int? limit;

  @override
  List<Object?> get props => [addWhere, groupsAddWhere, classesAddWhere, limit];
  @override
  Map<String, dynamic> toJson() => _$GetServicesStreamArgumentsToJson(this);
}

const GET_SERVICES_STREAM_SUBSCRIPTION_DOCUMENT_OPERATION_NAME =
    'getServicesStream';
final GET_SERVICES_STREAM_SUBSCRIPTION_DOCUMENT =
    const DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.subscription,
      name: NameNode(value: 'getServicesStream'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'addWhere')),
            type: ListTypeNode(
                type: NamedTypeNode(
                    name: NameNode(value: 'services_bool_exp'),
                    isNonNull: true),
                isNonNull: false),
            defaultValue: DefaultValueNode(value: ObjectValueNode(fields: [])),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'groupsAddWhere')),
            type: ListTypeNode(
                type: NamedTypeNode(
                    name: NameNode(value: 'groups_bool_exp'), isNonNull: true),
                isNonNull: false),
            defaultValue: DefaultValueNode(value: ObjectValueNode(fields: [])),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'classesAddWhere')),
            type: ListTypeNode(
                type: NamedTypeNode(
                    name: NameNode(value: 'classes_bool_exp'), isNonNull: true),
                isNonNull: false),
            defaultValue: DefaultValueNode(value: ObjectValueNode(fields: [])),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'limit')),
            type: NamedTypeNode(name: NameNode(value: 'Int')),
            defaultValue: DefaultValueNode(value: IntValueNode(value: '200')),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'services'),
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'where'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: '_and'),
                        value: VariableNode(name: NameNode(value: 'addWhere')))
                  ])),
              ArgumentNode(
                  name: NameNode(value: 'order_by'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: 'studyYearFrom'),
                        value: EnumValueNode(name: NameNode(value: 'asc'))),
                    ObjectFieldNode(
                        name: NameNode(value: 'studyYearTo'),
                        value: EnumValueNode(name: NameNode(value: 'asc')))
                  ])),
              ArgumentNode(
                  name: NameNode(value: 'limit'),
                  value: VariableNode(name: NameNode(value: 'limit')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'id'), arguments: [], directives: []),
              FieldNode(
                  name: NameNode(value: 'name'), arguments: [], directives: []),
              FieldNode(
                  name: NameNode(value: 'color'),
                  arguments: [],
                  directives: []),
              FieldNode(
                  name: NameNode(value: 'photoUpdatedAt'),
                  arguments: [],
                  directives: []),
              FieldNode(
                  name: NameNode(value: 'fromStudyYear'),
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'name'),
                        arguments: [],
                        directives: []),
                    FieldNode(
                        name: NameNode(value: 'order'),
                        arguments: [],
                        directives: [])
                  ])),
              FieldNode(
                  name: NameNode(value: 'toStudyYear'),
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'name'),
                        arguments: [],
                        directives: []),
                    FieldNode(
                        name: NameNode(value: 'order'),
                        arguments: [],
                        directives: [])
                  ])),
              FieldNode(
                  name: NameNode(value: 'classes'),
                  arguments: [
                    ArgumentNode(
                        name: NameNode(value: 'where'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                              name: NameNode(value: '_and'),
                              value: VariableNode(
                                  name: NameNode(value: 'classesAddWhere')))
                        ])),
                    ArgumentNode(
                        name: NameNode(value: 'order_by'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                              name: NameNode(value: 'service'),
                              value: ObjectValueNode(fields: [
                                ObjectFieldNode(
                                    name: NameNode(value: 'studyYearFrom'),
                                    value: EnumValueNode(
                                        name: NameNode(value: 'asc'))),
                                ObjectFieldNode(
                                    name: NameNode(value: 'studyYearTo'),
                                    value: EnumValueNode(
                                        name: NameNode(value: 'asc')))
                              ]))
                        ]))
                  ],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'id'),
                        arguments: [],
                        directives: []),
                    FieldNode(
                        name: NameNode(value: 'name'),
                        arguments: [],
                        directives: []),
                    FieldNode(
                        name: NameNode(value: 'color'),
                        arguments: [],
                        directives: []),
                    FieldNode(
                        name: NameNode(value: 'photoUpdatedAt'),
                        arguments: [],
                        directives: [])
                  ])),
              FieldNode(
                  name: NameNode(value: 'groups'),
                  arguments: [
                    ArgumentNode(
                        name: NameNode(value: 'where'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                              name: NameNode(value: '_and'),
                              value: VariableNode(
                                  name: NameNode(value: 'groupsAddWhere')))
                        ])),
                    ArgumentNode(
                        name: NameNode(value: 'order_by'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                              name: NameNode(value: 'service'),
                              value: ObjectValueNode(fields: [
                                ObjectFieldNode(
                                    name: NameNode(value: 'studyYearFrom'),
                                    value: EnumValueNode(
                                        name: NameNode(value: 'asc'))),
                                ObjectFieldNode(
                                    name: NameNode(value: 'studyYearTo'),
                                    value: EnumValueNode(
                                        name: NameNode(value: 'asc')))
                              ]))
                        ]))
                  ],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'id'),
                        arguments: [],
                        directives: []),
                    FieldNode(
                        name: NameNode(value: 'name'),
                        arguments: [],
                        directives: []),
                    FieldNode(
                        name: NameNode(value: 'color'),
                        arguments: [],
                        directives: []),
                    FieldNode(
                        name: NameNode(value: 'photoUpdatedAt'),
                        arguments: [],
                        directives: [])
                  ]))
            ]))
      ]))
]);

class GetServicesStreamSubscription extends GraphQLQuery<
    GetServicesStream$SubscriptionRoot, GetServicesStreamArguments> {
  GetServicesStreamSubscription({required this.variables});

  @override
  final DocumentNode document = GET_SERVICES_STREAM_SUBSCRIPTION_DOCUMENT;

  @override
  final String operationName =
      GET_SERVICES_STREAM_SUBSCRIPTION_DOCUMENT_OPERATION_NAME;

  @override
  final GetServicesStreamArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  GetServicesStream$SubscriptionRoot parse(Map<String, dynamic> json) =>
      GetServicesStream$SubscriptionRoot.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class GetStudyYearNameArguments extends JsonSerializable with EquatableMixin {
  GetStudyYearNameArguments({required this.order});

  @override
  factory GetStudyYearNameArguments.fromJson(Map<String, dynamic> json) =>
      _$GetStudyYearNameArgumentsFromJson(json);

  late int order;

  @override
  List<Object?> get props => [order];
  @override
  Map<String, dynamic> toJson() => _$GetStudyYearNameArgumentsToJson(this);
}

const GET_STUDY_YEAR_NAME_QUERY_DOCUMENT_OPERATION_NAME = 'getStudyYearName';
final GET_STUDY_YEAR_NAME_QUERY_DOCUMENT = const DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'getStudyYearName'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'order')),
            type: NamedTypeNode(
                name: NameNode(value: 'smallint'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'study_years_by_pk'),
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'order'),
                  value: VariableNode(name: NameNode(value: 'order')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'order'),
                  arguments: [],
                  directives: []),
              FieldNode(
                  name: NameNode(value: 'name'), arguments: [], directives: [])
            ]))
      ]))
]);

class GetStudyYearNameQuery extends GraphQLQuery<GetStudyYearName$QueryRoot,
    GetStudyYearNameArguments> {
  GetStudyYearNameQuery({required this.variables});

  @override
  final DocumentNode document = GET_STUDY_YEAR_NAME_QUERY_DOCUMENT;

  @override
  final String operationName =
      GET_STUDY_YEAR_NAME_QUERY_DOCUMENT_OPERATION_NAME;

  @override
  final GetStudyYearNameArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  GetStudyYearName$QueryRoot parse(Map<String, dynamic> json) =>
      GetStudyYearName$QueryRoot.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class GetUserInfoStreamArguments extends JsonSerializable with EquatableMixin {
  GetUserInfoStreamArguments({required this.uid});

  @override
  factory GetUserInfoStreamArguments.fromJson(Map<String, dynamic> json) =>
      _$GetUserInfoStreamArgumentsFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue uid;

  @override
  List<Object?> get props => [uid];
  @override
  Map<String, dynamic> toJson() => _$GetUserInfoStreamArgumentsToJson(this);
}

const GET_USER_INFO_STREAM_SUBSCRIPTION_DOCUMENT_OPERATION_NAME =
    'getUserInfoStream';
final GET_USER_INFO_STREAM_SUBSCRIPTION_DOCUMENT =
    const DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.subscription,
      name: NameNode(value: 'getUserInfoStream'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'uid')),
            type: NamedTypeNode(name: NameNode(value: 'uuid'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'users_by_pk'),
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'uid'),
                  value: VariableNode(name: NameNode(value: 'uid')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'uid'), arguments: [], directives: []),
              FieldNode(
                  name: NameNode(value: 'firebaseAuthUid'),
                  arguments: [],
                  directives: []),
              FieldNode(
                  name: NameNode(value: 'email'),
                  arguments: [],
                  directives: []),
              FieldNode(
                  name: NameNode(value: 'permissions'),
                  arguments: [],
                  directives: []),
              FieldNode(
                  name: NameNode(value: 'person'),
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'id'),
                        arguments: [],
                        directives: []),
                    FieldNode(
                        name: NameNode(value: 'name'),
                        arguments: [],
                        directives: []),
                    FieldNode(
                        name: NameNode(value: 'address'),
                        arguments: [],
                        directives: []),
                    FieldNode(
                        name: NameNode(value: 'geolocation'),
                        arguments: [],
                        directives: []),
                    FieldNode(
                        name: NameNode(value: 'mainPhone'),
                        arguments: [],
                        directives: []),
                    FieldNode(
                        name: NameNode(value: 'otherPhones'),
                        arguments: [],
                        directives: []),
                    FieldNode(
                        name: NameNode(value: 'birthdate'),
                        arguments: [],
                        directives: []),
                    FieldNode(
                        name: NameNode(value: 'gender'),
                        arguments: [],
                        directives: []),
                    FieldNode(
                        name: NameNode(value: 'isShammas'),
                        arguments: [],
                        directives: []),
                    FieldNode(
                        name: NameNode(value: 'shammasLevel'),
                        arguments: [],
                        directives: []),
                    FieldNode(
                        name: NameNode(value: 'schoolId'),
                        arguments: [],
                        directives: []),
                    FieldNode(
                        name: NameNode(value: 'collegeId'),
                        arguments: [],
                        directives: []),
                    FieldNode(
                        name: NameNode(value: 'churchId'),
                        arguments: [],
                        directives: []),
                    FieldNode(
                        name: NameNode(value: 'fatherId'),
                        arguments: [],
                        directives: []),
                    FieldNode(
                        name: NameNode(value: 'isStudent'),
                        arguments: [],
                        directives: []),
                    FieldNode(
                        name: NameNode(value: 'jobId'),
                        arguments: [],
                        directives: []),
                    FieldNode(
                        name: NameNode(value: 'jobDescription'),
                        arguments: [],
                        directives: []),
                    FieldNode(
                        name: NameNode(value: 'qualificationId'),
                        arguments: [],
                        directives: []),
                    FieldNode(
                        name: NameNode(value: 'personTypeId'),
                        arguments: [],
                        directives: []),
                    FieldNode(
                        name: NameNode(value: 'stateId'),
                        arguments: [],
                        directives: []),
                    FieldNode(
                        name: NameNode(value: 'isServant'),
                        arguments: [],
                        directives: []),
                    FieldNode(
                        name: NameNode(value: 'notes'),
                        arguments: [],
                        directives: []),
                    FieldNode(
                        name: NameNode(value: 'familyId'),
                        arguments: [],
                        directives: []),
                    FieldNode(
                        name: NameNode(value: 'storeId'),
                        arguments: [],
                        directives: []),
                    FieldNode(
                        name: NameNode(value: 'studyYearId'),
                        arguments: [],
                        directives: []),
                    FieldNode(
                        name: NameNode(value: 'color'),
                        arguments: [],
                        directives: []),
                    FieldNode(
                        name: NameNode(value: 'photoUpdatedAt'),
                        arguments: [],
                        directives: []),
                    FieldNode(
                        name: NameNode(value: 'lastKodas'),
                        arguments: [],
                        directives: []),
                    FieldNode(
                        name: NameNode(value: 'lastConfession'),
                        arguments: [],
                        directives: [])
                  ]))
            ]))
      ]))
]);

class GetUserInfoStreamSubscription extends GraphQLQuery<
    GetUserInfoStream$SubscriptionRoot, GetUserInfoStreamArguments> {
  GetUserInfoStreamSubscription({required this.variables});

  @override
  final DocumentNode document = GET_USER_INFO_STREAM_SUBSCRIPTION_DOCUMENT;

  @override
  final String operationName =
      GET_USER_INFO_STREAM_SUBSCRIPTION_DOCUMENT_OPERATION_NAME;

  @override
  final GetUserInfoStreamArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  GetUserInfoStream$SubscriptionRoot parse(Map<String, dynamic> json) =>
      GetUserInfoStream$SubscriptionRoot.fromJson(json);
}
