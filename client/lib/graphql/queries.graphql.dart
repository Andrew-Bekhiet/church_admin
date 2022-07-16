// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart = 2.12

import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
import 'package:church_admin/graphql/scalars.dart';
part 'queries.graphql.g.dart';

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

  int? color;

  Map<String, dynamic>? bounds;

  @override
  List<Object?> get props => [id, name, color, bounds];
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

  @JsonKey(name: 'firestore_id')
  StringComparisonExp? firestoreId;

  UuidComparisonExp? id;

  BooleanComparisonExp? isUserAllowedToRead;

  BooleanComparisonExp? isUserAllowedToWrite;

  JsonbComparisonExp? lastEdit;

  StringComparisonExp? name;

  PersonsBoolExp? persons;

  @JsonKey(name: 'photo_updated_at')
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
      this.isUserAllowedToChange,
      this.isUserAllowedToRead,
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

  @JsonKey(name: 'area_adminOnUsers')
  BooleanComparisonExp? areaAdminOnUsers;

  @JsonKey(name: 'area_allowEdit')
  BooleanComparisonExp? areaAllowEdit;

  GroupsBoolExp? group;

  @JsonKey(name: 'group_adminOnUsers')
  BooleanComparisonExp? groupAdminOnUsers;

  @JsonKey(name: 'group_allowEdit')
  BooleanComparisonExp? groupAllowEdit;

  BooleanComparisonExp? isUserAllowedToChange;

  BooleanComparisonExp? isUserAllowedToRead;

  @JsonKey(name: 'permission_id')
  UuidComparisonExp? permissionId;

  ServicesBoolExp? service;

  @JsonKey(name: 'service_adminOnUsers')
  BooleanComparisonExp? serviceAdminOnUsers;

  @JsonKey(name: 'service_allowEdit')
  BooleanComparisonExp? serviceAllowEdit;

  @JsonKey(name: 'service_gender')
  BooleanComparisonExp? serviceGender;

  @JsonKey(name: 'service_studyYear')
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
        isUserAllowedToChange,
        isUserAllowedToRead,
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
      this.serviceID,
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

  @JsonKey(name: 'attendance_history')
  HistoryAttendanceHistoryBoolExp? attendanceHistory;

  IntComparisonExp? color;

  UuidComparisonExp? id;

  BooleanComparisonExp? isUserAllowedToRead;

  BooleanComparisonExp? isUserAllowedToWrite;

  JsonbComparisonExp? lastEdit;

  StringComparisonExp? name;

  PersonsGroupsBoolExp? persons;

  @JsonKey(name: 'photo_updated_at')
  TimestamptzComparisonExp? photoUpdatedAt;

  ServicesBoolExp? service;

  UuidComparisonExp? serviceID;

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
        serviceID,
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
      this.dayID,
      this.group,
      this.groupID,
      this.id,
      this.isUserAllowedToRead,
      this.isUserAllowedToWrite,
      this.person,
      this.personID,
      this.recordedBy,
      this.service,
      this.serviceID,
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

  DateComparisonExp? dayID;

  GroupsBoolExp? group;

  UuidComparisonExp? groupID;

  UuidComparisonExp? id;

  BooleanComparisonExp? isUserAllowedToRead;

  BooleanComparisonExp? isUserAllowedToWrite;

  PersonsBoolExp? person;

  UuidComparisonExp? personID;

  UuidComparisonExp? recordedBy;

  ServicesBoolExp? service;

  UuidComparisonExp? serviceID;

  TimestampComparisonExp? time;

  UsersBoolExp? user;

  @override
  List<Object?> get props => [
        $and,
        $not,
        $or,
        day,
        dayID,
        group,
        groupID,
        id,
        isUserAllowedToRead,
        isUserAllowedToWrite,
        person,
        personID,
        recordedBy,
        service,
        serviceID,
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

  @JsonKey(name: 'attendance_history')
  HistoryAttendanceHistoryBoolExp? attendanceHistory;

  @JsonKey(name: 'confession_history')
  HistoryConfessionHistoryBoolExp? confessionHistory;

  HistoryAttendanceDaysConstraintsBoolExp? constraints;

  DateComparisonExp? day;

  BooleanComparisonExp? isUserAllowedToWrite;

  @JsonKey(name: 'kodas_history')
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
      this.dayID,
      this.id,
      this.person,
      this.personID,
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

  DateComparisonExp? dayID;

  UuidComparisonExp? id;

  PersonsBoolExp? person;

  UuidComparisonExp? personID;

  UuidComparisonExp? recordedBy;

  UsersBoolExp? user;

  @override
  List<Object?> get props =>
      [$and, $not, $or, day, dayID, id, person, personID, recordedBy, user];
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
      this.churchID,
      this.college,
      this.collegeID,
      this.color,
      this.confessionHistory,
      this.family,
      this.familyID,
      this.father,
      this.fatherID,
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
      this.jobID,
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
      this.personTypeID,
      this.photoUpdatedAt,
      this.qualification,
      this.qualificationID,
      this.school,
      this.schoolID,
      this.services,
      this.shammasLevel,
      this.state,
      this.stateID,
      this.storeID,
      this.streets,
      this.studyYear,
      this.studyYearID,
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

  @JsonKey(name: 'attendance_history')
  HistoryAttendanceHistoryBoolExp? attendanceHistory;

  DateComparisonExp? birthdate;

  StringComparisonExp? birthday;

  @JsonKey(name: 'call_history')
  HistoryCallHistoryBoolExp? callHistory;

  ChurchesBoolExp? church;

  UuidComparisonExp? churchID;

  CollegesBoolExp? college;

  UuidComparisonExp? collegeID;

  IntComparisonExp? color;

  @JsonKey(name: 'confession_history')
  HistoryConfessionHistoryBoolExp? confessionHistory;

  FamiliesBoolExp? family;

  UuidComparisonExp? familyID;

  FathersBoolExp? father;

  UuidComparisonExp? fatherID;

  @JsonKey(name: 'firestore_id')
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

  UuidComparisonExp? jobID;

  @JsonKey(name: 'kodas_history')
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

  UuidComparisonExp? personTypeID;

  @JsonKey(name: 'photo_updated_at')
  TimestamptzComparisonExp? photoUpdatedAt;

  QualificationsBoolExp? qualification;

  UuidComparisonExp? qualificationID;

  SchoolsBoolExp? school;

  UuidComparisonExp? schoolID;

  PersonsServicesBoolExp? services;

  UuidComparisonExp? shammasLevel;

  StatesBoolExp? state;

  UuidComparisonExp? stateID;

  UuidComparisonExp? storeID;

  StreetsBoolExp? streets;

  StudyYearsBoolExp? studyYear;

  SmallintComparisonExp? studyYearID;

  PersonsTagsBoolExp? tags;

  UuidComparisonExp? uid;

  UsersBoolExp? user;

  @JsonKey(name: 'visit_history')
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
        churchID,
        college,
        collegeID,
        color,
        confessionHistory,
        family,
        familyID,
        father,
        fatherID,
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
        jobID,
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
        personTypeID,
        photoUpdatedAt,
        qualification,
        qualificationID,
        school,
        schoolID,
        services,
        shammasLevel,
        state,
        stateID,
        storeID,
        streets,
        studyYear,
        studyYearID,
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

  @JsonKey(name: 'person_id')
  UuidComparisonExp? personId;

  TimestamptzComparisonExp? time;

  @JsonKey(name: 'user_role')
  StringComparisonExp? userRole;

  @JsonKey(name: 'user_uid')
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
      this.churchID,
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

  UuidComparisonExp? churchID;

  UuidComparisonExp? id;

  StringComparisonExp? name;

  PersonsBoolExp? persons;

  @override
  List<Object?> get props =>
      [$and, $not, $or, church, churchID, id, name, persons];
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
      this.universityID});

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

  UuidComparisonExp? universityID;

  @override
  List<Object?> get props =>
      [$and, $not, $or, id, name, persons, university, universityID];
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

  @JsonKey(name: 'photo_updated_at')
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
      this.innerFamilyID,
      this.outerFamily,
      this.outerFamilyID});

  factory FamiliesFamiliesBoolExp.fromJson(Map<String, dynamic> json) =>
      _$FamiliesFamiliesBoolExpFromJson(json);

  @JsonKey(name: '_and')
  List<FamiliesFamiliesBoolExp>? $and;

  @JsonKey(name: '_not')
  FamiliesFamiliesBoolExp? $not;

  @JsonKey(name: '_or')
  List<FamiliesFamiliesBoolExp>? $or;

  FamiliesBoolExp? innerFamily;

  UuidComparisonExp? innerFamilyID;

  FamiliesBoolExp? outerFamily;

  UuidComparisonExp? outerFamilyID;

  @override
  List<Object?> get props =>
      [$and, $not, $or, innerFamily, innerFamilyID, outerFamily, outerFamilyID];
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

  @JsonKey(name: 'photo_updated_at')
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

  @JsonKey(name: 'photo_updated_at')
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
      this.groupID,
      this.person,
      this.personID,
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

  UuidComparisonExp? groupID;

  PersonsBoolExp? person;

  UuidComparisonExp? personID;

  @JsonKey(name: 'rel_id')
  UuidComparisonExp? relId;

  @override
  List<Object?> get props =>
      [$and, $not, $or, group, groupID, person, personID, relId];
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
      this.dayID,
      this.id,
      this.person,
      this.personID,
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

  DateComparisonExp? dayID;

  UuidComparisonExp? id;

  PersonsBoolExp? person;

  UuidComparisonExp? personID;

  UuidComparisonExp? recordedBy;

  UsersBoolExp? user;

  @override
  List<Object?> get props =>
      [$and, $not, $or, day, dayID, id, person, personID, recordedBy, user];
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
      this.isUserAllowedToChange,
      this.isUserAllowedToRead,
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

  @JsonKey(name: 'firebase_auth_uid')
  StringComparisonExp? firebaseAuthUid;

  @JsonKey(name: 'firestore_id')
  StringComparisonExp? firestoreId;

  BooleanComparisonExp? isUserAllowedToChange;

  BooleanComparisonExp? isUserAllowedToRead;

  JsonbComparisonExp? lastEdit;

  $textComparisonExp? permissions;

  PersonsBoolExp? person;

  @JsonKey(name: 'photo_updated_at')
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
        isUserAllowedToChange,
        isUserAllowedToRead,
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
      this.personID,
      this.relId,
      this.service,
      this.serviceID});

  factory PersonsServicesBoolExp.fromJson(Map<String, dynamic> json) =>
      _$PersonsServicesBoolExpFromJson(json);

  @JsonKey(name: '_and')
  List<PersonsServicesBoolExp>? $and;

  @JsonKey(name: '_not')
  PersonsServicesBoolExp? $not;

  @JsonKey(name: '_or')
  List<PersonsServicesBoolExp>? $or;

  PersonsBoolExp? person;

  UuidComparisonExp? personID;

  @JsonKey(name: 'rel_id')
  UuidComparisonExp? relId;

  ServicesBoolExp? service;

  UuidComparisonExp? serviceID;

  @override
  List<Object?> get props =>
      [$and, $not, $or, person, personID, relId, service, serviceID];
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

  @JsonKey(name: 'attendance_history')
  HistoryAttendanceHistoryBoolExp? attendanceHistory;

  IntComparisonExp? color;

  @JsonKey(name: 'firestore_id')
  StringComparisonExp? firestoreId;

  StudyYearsBoolExp? fromStudyYear;

  GroupsBoolExp? groups;

  UuidComparisonExp? id;

  BooleanComparisonExp? isUserAllowedToRead;

  BooleanComparisonExp? isUserAllowedToWrite;

  JsonbComparisonExp? lastEdit;

  StringComparisonExp? name;

  PersonsServicesBoolExp? persons;

  @JsonKey(name: 'photo_updated_at')
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
class StudyYearsBoolExp extends JsonSerializable with EquatableMixin {
  StudyYearsBoolExp(
      {this.$and, this.$not, this.$or, this.name, this.order, this.persons});

  factory StudyYearsBoolExp.fromJson(Map<String, dynamic> json) =>
      _$StudyYearsBoolExpFromJson(json);

  @JsonKey(name: '_and')
  List<StudyYearsBoolExp>? $and;

  @JsonKey(name: '_not')
  StudyYearsBoolExp? $not;

  @JsonKey(name: '_or')
  List<StudyYearsBoolExp>? $or;

  StringComparisonExp? name;

  SmallintComparisonExp? order;

  PersonsBoolExp? persons;

  @override
  List<Object?> get props => [$and, $not, $or, name, order, persons];
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
      this.personID,
      this.relId,
      this.tag,
      this.tagID});

  factory PersonsTagsBoolExp.fromJson(Map<String, dynamic> json) =>
      _$PersonsTagsBoolExpFromJson(json);

  @JsonKey(name: '_and')
  List<PersonsTagsBoolExp>? $and;

  @JsonKey(name: '_not')
  PersonsTagsBoolExp? $not;

  @JsonKey(name: '_or')
  List<PersonsTagsBoolExp>? $or;

  PersonsBoolExp? person;

  UuidComparisonExp? personID;

  @JsonKey(name: 'rel_id')
  UuidComparisonExp? relId;

  TagsBoolExp? tag;

  UuidComparisonExp? tagID;

  @override
  List<Object?> get props =>
      [$and, $not, $or, person, personID, relId, tag, tagID];
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

  @JsonKey(name: 'person_id')
  UuidComparisonExp? personId;

  TimestamptzComparisonExp? time;

  @JsonKey(name: 'user_role')
  StringComparisonExp? userRole;

  @JsonKey(name: 'user_uid')
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
      this.dayID,
      this.group,
      this.groupID,
      this.id,
      this.isUserAllowedToRead,
      this.isUserAllowedToWrite,
      this.service,
      this.serviceID,
      this.serviceGender,
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

  DateComparisonExp? dayID;

  GroupsBoolExp? group;

  UuidComparisonExp? groupID;

  UuidComparisonExp? id;

  BooleanComparisonExp? isUserAllowedToRead;

  BooleanComparisonExp? isUserAllowedToWrite;

  ServicesBoolExp? service;

  UuidComparisonExp? serviceID;

  @JsonKey(name: 'service_gender')
  BooleanComparisonExp? serviceGender;

  @JsonKey(name: 'service_studyYear')
  IntComparisonExp? serviceStudyYear;

  StudyYearsBoolExp? studyYear;

  @override
  List<Object?> get props => [
        $and,
        $not,
        $or,
        day,
        dayID,
        group,
        groupID,
        id,
        isUserAllowedToRead,
        isUserAllowedToWrite,
        service,
        serviceID,
        serviceGender,
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

  @override
  List<Object?> get props => [id, name, color];
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

  GetServicesStream$SubscriptionRoot$Services$StudyYears? fromStudyYear;

  GetServicesStream$SubscriptionRoot$Services$StudyYears? toStudyYear;

  late List<GetServicesStream$SubscriptionRoot$Services$Groups> groups;

  @override
  List<Object?> get props =>
      [id, name, color, fromStudyYear, toStudyYear, groups];
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

  @JsonKey(name: 'studyYears_by_pk')
  GetStudyYearName$QueryRoot$StudyYears? studyYearsByPk;

  @override
  List<Object?> get props => [studyYearsByPk];
  @override
  Map<String, dynamic> toJson() => _$GetStudyYearName$QueryRootToJson(this);
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

  @JsonKey(name: 'photo_updated_at')
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
  UuidValue? schoolID;

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? collegeID;

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? churchID;

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? fatherID;

  late bool isStudent;

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? jobID;

  String? jobDescription;

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? qualificationID;

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? personTypeID;

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? stateID;

  late bool isServant;

  String? notes;

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? familyID;

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? storeID;

  int? studyYearID;

  int? color;

  @JsonKey(name: 'photo_updated_at')
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
        schoolID,
        collegeID,
        churchID,
        fatherID,
        isStudent,
        jobID,
        jobDescription,
        qualificationID,
        personTypeID,
        stateID,
        isServant,
        notes,
        familyID,
        storeID,
        studyYearID,
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

  @JsonKey(name: 'firebase_auth_uid')
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

final GET_AREAS_STREAM_SUBSCRIPTION_DOCUMENT_OPERATION_NAME = 'getAreasStream';
final GET_AREAS_STREAM_SUBSCRIPTION_DOCUMENT = DocumentNode(definitions: [
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
            type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: false),
            defaultValue: DefaultValueNode(value: IntValueNode(value: '200')),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'areas'),
            alias: null,
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
                  name: NameNode(value: 'id'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'name'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'color'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'bounds'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
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
class GetServicesStreamArguments extends JsonSerializable with EquatableMixin {
  GetServicesStreamArguments({this.addWhere, this.limit});

  @override
  factory GetServicesStreamArguments.fromJson(Map<String, dynamic> json) =>
      _$GetServicesStreamArgumentsFromJson(json);

  final List<ServicesBoolExp>? addWhere;

  final int? limit;

  @override
  List<Object?> get props => [addWhere, limit];
  @override
  Map<String, dynamic> toJson() => _$GetServicesStreamArgumentsToJson(this);
}

final GET_SERVICES_STREAM_SUBSCRIPTION_DOCUMENT_OPERATION_NAME =
    'getServicesStream';
final GET_SERVICES_STREAM_SUBSCRIPTION_DOCUMENT = DocumentNode(definitions: [
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
            variable: VariableNode(name: NameNode(value: 'limit')),
            type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: false),
            defaultValue: DefaultValueNode(value: IntValueNode(value: '200')),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'services'),
            alias: null,
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
                  name: NameNode(value: 'id'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'name'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'color'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'fromStudyYear'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'name'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'order'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: 'toStudyYear'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'name'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'order'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: 'groups'),
                  alias: null,
                  arguments: [
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
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'name'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'color'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
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

final GET_STUDY_YEAR_NAME_QUERY_DOCUMENT_OPERATION_NAME = 'getStudyYearName';
final GET_STUDY_YEAR_NAME_QUERY_DOCUMENT = DocumentNode(definitions: [
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
            name: NameNode(value: 'studyYears_by_pk'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'order'),
                  value: VariableNode(name: NameNode(value: 'order')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'order'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'name'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
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

final GET_PERSONS_STREAM_SUBSCRIPTION_DOCUMENT_OPERATION_NAME =
    'getPersonsStream';
final GET_PERSONS_STREAM_SUBSCRIPTION_DOCUMENT = DocumentNode(definitions: [
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
            type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: false),
            defaultValue: DefaultValueNode(value: IntValueNode(value: '200')),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'persons'),
            alias: null,
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
                  name: NameNode(value: 'id'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'name'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'color'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'photo_updated_at'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
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

final GET_USER_INFO_STREAM_SUBSCRIPTION_DOCUMENT_OPERATION_NAME =
    'getUserInfoStream';
final GET_USER_INFO_STREAM_SUBSCRIPTION_DOCUMENT = DocumentNode(definitions: [
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
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'uid'),
                  value: VariableNode(name: NameNode(value: 'uid')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'uid'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'firebase_auth_uid'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'email'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'permissions'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
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
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'name'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'address'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'geolocation'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'mainPhone'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'otherPhones'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'birthdate'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'gender'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'isShammas'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'shammasLevel'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'schoolID'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'collegeID'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'churchID'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'fatherID'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'isStudent'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'jobID'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'jobDescription'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'qualificationID'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'personTypeID'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'stateID'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'isServant'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'notes'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'familyID'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'storeID'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'studyYearID'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'color'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'photo_updated_at'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'lastKodas'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'lastConfession'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
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

final GET_PERSONS_ATTENDANCE_WARNING_QUERY_DOCUMENT_OPERATION_NAME =
    'getPersonsAttendanceWarning';
final GET_PERSONS_ATTENDANCE_WARNING_QUERY_DOCUMENT =
    DocumentNode(definitions: [
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
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'where'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: 'attendance_history'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                              name: NameNode(value: '_not'),
                              value: ObjectValueNode(fields: [
                                ObjectFieldNode(
                                    name: NameNode(value: 'dayID'),
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
                  name: NameNode(value: 'name'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
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

final GET_PERSONS_KODAS_WARNING_QUERY_DOCUMENT_OPERATION_NAME =
    'getPersonsKodasWarning';
final GET_PERSONS_KODAS_WARNING_QUERY_DOCUMENT = DocumentNode(definitions: [
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
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'where'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: 'kodas_history'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                              name: NameNode(value: '_not'),
                              value: ObjectValueNode(fields: [
                                ObjectFieldNode(
                                    name: NameNode(value: 'dayID'),
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
                  name: NameNode(value: 'name'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
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

final GET_PERSONS_CONFESSION_WARNING_QUERY_DOCUMENT_OPERATION_NAME =
    'getPersonsConfessionWarning';
final GET_PERSONS_CONFESSION_WARNING_QUERY_DOCUMENT =
    DocumentNode(definitions: [
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
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'where'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: 'confession_history'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                              name: NameNode(value: '_not'),
                              value: ObjectValueNode(fields: [
                                ObjectFieldNode(
                                    name: NameNode(value: 'dayID'),
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
                  name: NameNode(value: 'name'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
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

final GET_PERSONS_VISIT_WARNING_QUERY_DOCUMENT_OPERATION_NAME =
    'getPersonsVisitWarning';
final GET_PERSONS_VISIT_WARNING_QUERY_DOCUMENT = DocumentNode(definitions: [
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
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'where'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: 'visit_history'),
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
                  name: NameNode(value: 'name'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
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

final GET_PERSONS_BIRTHDAY_QUERY_DOCUMENT_OPERATION_NAME = 'getPersonsBirthday';
final GET_PERSONS_BIRTHDAY_QUERY_DOCUMENT = DocumentNode(definitions: [
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
            alias: null,
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
                  name: NameNode(value: 'name'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
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
