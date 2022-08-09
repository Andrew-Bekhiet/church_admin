// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart = 2.12
// ignore_for_file: constant_identifier_names, overridden_fields

import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
import 'package:church_admin/graphql/scalars.dart';
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

  @JsonKey(
      fromJson: fromGraphQLGeographyNullableToDartJsonNullable,
      toJson: fromDartJsonNullableToGraphQLGeographyNullable)
  Json? bounds;

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
      this.attendanceDaysConstraints,
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

  HistoryAttendanceDaysConstraintsBoolExp? attendanceDaysConstraints;

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
        attendanceDaysConstraints,
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
class HistoryAttendanceHistoryBoolExp extends JsonSerializable
    with EquatableMixin {
  HistoryAttendanceHistoryBoolExp(
      {this.$and,
      this.$not,
      this.$or,
      this.kw$class,
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
      this.serviceGender,
      this.serviceId,
      this.serviceStudyYear,
      this.studyYear,
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

  @JsonKey(name: 'class')
  ClassesBoolExp? kw$class;

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

  BooleanComparisonExp? serviceGender;

  UuidComparisonExp? serviceId;

  IntComparisonExp? serviceStudyYear;

  StudyYearsBoolExp? studyYear;

  TimestampComparisonExp? time;

  UsersBoolExp? user;

  @override
  List<Object?> get props => [
        $and,
        $not,
        $or,
        kw$class,
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
        serviceGender,
        serviceId,
        serviceStudyYear,
        studyYear,
        time,
        user
      ];
  @override
  Map<String, dynamic> toJson() =>
      _$HistoryAttendanceHistoryBoolExpToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ClassesBoolExp extends JsonSerializable with EquatableMixin {
  ClassesBoolExp(
      {this.$and,
      this.$not,
      this.$or,
      this.attendanceDaysConstraints,
      this.attendanceHistory,
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

  HistoryAttendanceDaysConstraintsBoolExp? attendanceDaysConstraints;

  HistoryAttendanceHistoryBoolExp? attendanceHistory;

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
        attendanceDaysConstraints,
        attendanceHistory,
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
class ServicesBoolExp extends JsonSerializable with EquatableMixin {
  ServicesBoolExp(
      {this.$and,
      this.$not,
      this.$or,
      this.attendanceDaysConstraints,
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

  HistoryAttendanceDaysConstraintsBoolExp? attendanceDaysConstraints;

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
        attendanceDaysConstraints,
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
class StudyYearsBoolExp extends JsonSerializable with EquatableMixin {
  StudyYearsBoolExp(
      {this.$and,
      this.$not,
      this.$or,
      this.attendanceDaysConstraints,
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

  HistoryAttendanceDaysConstraintsBoolExp? attendanceDaysConstraints;

  ClassesBoolExp? classes;

  StringComparisonExp? name;

  SmallintComparisonExp? order;

  PersonsBoolExp? persons;

  @override
  List<Object?> get props => [
        $and,
        $not,
        $or,
        attendanceDaysConstraints,
        classes,
        name,
        order,
        persons
      ];
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
      this.classes,
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
      this.shammasLevelId,
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

  ClassesBoolExp? classes;

  CollegesBoolExp? college;

  UuidComparisonExp? collegeId;

  BigintComparisonExp? color;

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

  ShammasLevelsBoolExp? shammasLevel;

  UuidComparisonExp? shammasLevelId;

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
        classes,
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
        shammasLevelId,
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
class HistoryCallHistoryBoolExp extends JsonSerializable with EquatableMixin {
  HistoryCallHistoryBoolExp(
      {this.$and,
      this.$not,
      this.$or,
      this.person,
      this.personId,
      this.recordedBy,
      this.time,
      this.user,
      this.userRole});

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

  UuidComparisonExp? recordedBy;

  TimestamptzComparisonExp? time;

  UsersBoolExp? user;

  StringComparisonExp? userRole;

  @override
  List<Object?> get props =>
      [$and, $not, $or, person, personId, recordedBy, time, user, userRole];
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
class UsersBoolExp extends JsonSerializable with EquatableMixin {
  UsersBoolExp(
      {this.$and,
      this.$not,
      this.$or,
      this.adminOn,
      this.isUserAllowedToDelete,
      this.name,
      this.person,
      this.photoUpdatedAt,
      this.uid,
      this.userData});

  factory UsersBoolExp.fromJson(Map<String, dynamic> json) =>
      _$UsersBoolExpFromJson(json);

  @JsonKey(name: '_and')
  List<UsersBoolExp>? $and;

  @JsonKey(name: '_not')
  UsersBoolExp? $not;

  @JsonKey(name: '_or')
  List<UsersBoolExp>? $or;

  UsersPermissionsBoolExp? adminOn;

  @JsonKey(name: 'is_user_allowed_to_delete')
  BooleanComparisonExp? isUserAllowedToDelete;

  StringComparisonExp? name;

  PersonsBoolExp? person;

  TimestamptzComparisonExp? photoUpdatedAt;

  UuidComparisonExp? uid;

  @JsonKey(name: 'user_data')
  UsersDataBoolExp? userData;

  @override
  List<Object?> get props => [
        $and,
        $not,
        $or,
        adminOn,
        isUserAllowedToDelete,
        name,
        person,
        photoUpdatedAt,
        uid,
        userData
      ];
  @override
  Map<String, dynamic> toJson() => _$UsersBoolExpToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UsersDataBoolExp extends JsonSerializable with EquatableMixin {
  UsersDataBoolExp(
      {this.$and,
      this.$not,
      this.$or,
      this.email,
      this.firebaseAuthUid,
      this.firestoreId,
      this.isUserAllowedToRead,
      this.isUserAllowedToChange,
      this.lastEdit,
      this.permissions,
      this.uid,
      this.user});

  factory UsersDataBoolExp.fromJson(Map<String, dynamic> json) =>
      _$UsersDataBoolExpFromJson(json);

  @JsonKey(name: '_and')
  List<UsersDataBoolExp>? $and;

  @JsonKey(name: '_not')
  UsersDataBoolExp? $not;

  @JsonKey(name: '_or')
  List<UsersDataBoolExp>? $or;

  StringComparisonExp? email;

  StringComparisonExp? firebaseAuthUid;

  StringComparisonExp? firestoreId;

  BooleanComparisonExp? isUserAllowedToRead;

  @JsonKey(name: 'is_user_allowed_to_change')
  BooleanComparisonExp? isUserAllowedToChange;

  JsonbComparisonExp? lastEdit;

  $textComparisonExp? permissions;

  UuidComparisonExp? uid;

  UsersBoolExp? user;

  @override
  List<Object?> get props => [
        $and,
        $not,
        $or,
        email,
        firebaseAuthUid,
        firestoreId,
        isUserAllowedToRead,
        isUserAllowedToChange,
        lastEdit,
        permissions,
        uid,
        user
      ];
  @override
  Map<String, dynamic> toJson() => _$UsersDataBoolExpToJson(this);
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

  @JsonKey(
      name: '_contained_in',
      fromJson: fromGraphQLJsonbNullableToDartJsonNullable,
      toJson: fromDartJsonNullableToGraphQLJsonbNullable)
  Json? $containedIn;

  @JsonKey(
      name: '_contains',
      fromJson: fromGraphQLJsonbNullableToDartJsonNullable,
      toJson: fromDartJsonNullableToGraphQLJsonbNullable)
  Json? $contains;

  @JsonKey(
      name: '_eq',
      fromJson: fromGraphQLJsonbNullableToDartJsonNullable,
      toJson: fromDartJsonNullableToGraphQLJsonbNullable)
  Json? $eq;

  @JsonKey(
      name: '_gt',
      fromJson: fromGraphQLJsonbNullableToDartJsonNullable,
      toJson: fromDartJsonNullableToGraphQLJsonbNullable)
  Json? $gt;

  @JsonKey(
      name: '_gte',
      fromJson: fromGraphQLJsonbNullableToDartJsonNullable,
      toJson: fromDartJsonNullableToGraphQLJsonbNullable)
  Json? $gte;

  @JsonKey(name: '_has_key')
  String? $hasKey;

  @JsonKey(name: '_has_keys_all')
  List<String>? $hasKeysAll;

  @JsonKey(name: '_has_keys_any')
  List<String>? $hasKeysAny;

  @JsonKey(
      name: '_in',
      fromJson: fromGraphQLListNullableJsonbToDartListNullableJson,
      toJson: fromDartListNullableJsonToGraphQLListNullableJsonb)
  List<Json>? $in;

  @JsonKey(name: '_is_null')
  bool? $isNull;

  @JsonKey(
      name: '_lt',
      fromJson: fromGraphQLJsonbNullableToDartJsonNullable,
      toJson: fromDartJsonNullableToGraphQLJsonbNullable)
  Json? $lt;

  @JsonKey(
      name: '_lte',
      fromJson: fromGraphQLJsonbNullableToDartJsonNullable,
      toJson: fromDartJsonNullableToGraphQLJsonbNullable)
  Json? $lte;

  @JsonKey(
      name: '_neq',
      fromJson: fromGraphQLJsonbNullableToDartJsonNullable,
      toJson: fromDartJsonNullableToGraphQLJsonbNullable)
  Json? $neq;

  @JsonKey(
      name: '_nin',
      fromJson: fromGraphQLListNullableJsonbToDartListNullableJson,
      toJson: fromDartListNullableJsonToGraphQLListNullableJsonb)
  List<Json>? $nin;

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
      this.time,
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

  DateComparisonExp? time;

  UsersBoolExp? user;

  @override
  List<Object?> get props => [
        $and,
        $not,
        $or,
        day,
        dayId,
        id,
        person,
        personId,
        recordedBy,
        time,
        user
      ];
  @override
  Map<String, dynamic> toJson() =>
      _$HistoryConfessionHistoryBoolExpToJson(this);
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

  @JsonKey(
      name: '_eq',
      fromJson: fromGraphQLGeographyNullableToDartJsonNullable,
      toJson: fromDartJsonNullableToGraphQLGeographyNullable)
  Json? $eq;

  @JsonKey(
      name: '_gt',
      fromJson: fromGraphQLGeographyNullableToDartJsonNullable,
      toJson: fromDartJsonNullableToGraphQLGeographyNullable)
  Json? $gt;

  @JsonKey(
      name: '_gte',
      fromJson: fromGraphQLGeographyNullableToDartJsonNullable,
      toJson: fromDartJsonNullableToGraphQLGeographyNullable)
  Json? $gte;

  @JsonKey(
      name: '_in',
      fromJson: fromGraphQLListNullableGeographyToDartListNullableJson,
      toJson: fromDartListNullableJsonToGraphQLListNullableGeography)
  List<Json>? $in;

  @JsonKey(name: '_is_null')
  bool? $isNull;

  @JsonKey(
      name: '_lt',
      fromJson: fromGraphQLGeographyNullableToDartJsonNullable,
      toJson: fromDartJsonNullableToGraphQLGeographyNullable)
  Json? $lt;

  @JsonKey(
      name: '_lte',
      fromJson: fromGraphQLGeographyNullableToDartJsonNullable,
      toJson: fromDartJsonNullableToGraphQLGeographyNullable)
  Json? $lte;

  @JsonKey(
      name: '_neq',
      fromJson: fromGraphQLGeographyNullableToDartJsonNullable,
      toJson: fromDartJsonNullableToGraphQLGeographyNullable)
  Json? $neq;

  @JsonKey(
      name: '_nin',
      fromJson: fromGraphQLListNullableGeographyToDartListNullableJson,
      toJson: fromDartListNullableJsonToGraphQLListNullableGeography)
  List<Json>? $nin;

  @JsonKey(name: '_st_d_within')
  StDWithinGeographyInput? $stDWithin;

  @JsonKey(
      name: '_st_intersects',
      fromJson: fromGraphQLGeographyNullableToDartJsonNullable,
      toJson: fromDartJsonNullableToGraphQLGeographyNullable)
  Json? $stIntersects;

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

  @JsonKey(
      name: '_eq',
      fromJson: fromGraphQLGeometryNullableToDartJsonNullable,
      toJson: fromDartJsonNullableToGraphQLGeometryNullable)
  Json? $eq;

  @JsonKey(
      name: '_gt',
      fromJson: fromGraphQLGeometryNullableToDartJsonNullable,
      toJson: fromDartJsonNullableToGraphQLGeometryNullable)
  Json? $gt;

  @JsonKey(
      name: '_gte',
      fromJson: fromGraphQLGeometryNullableToDartJsonNullable,
      toJson: fromDartJsonNullableToGraphQLGeometryNullable)
  Json? $gte;

  @JsonKey(
      name: '_in',
      fromJson: fromGraphQLListNullableGeometryToDartListNullableJson,
      toJson: fromDartListNullableJsonToGraphQLListNullableGeometry)
  List<Json>? $in;

  @JsonKey(name: '_is_null')
  bool? $isNull;

  @JsonKey(
      name: '_lt',
      fromJson: fromGraphQLGeometryNullableToDartJsonNullable,
      toJson: fromDartJsonNullableToGraphQLGeometryNullable)
  Json? $lt;

  @JsonKey(
      name: '_lte',
      fromJson: fromGraphQLGeometryNullableToDartJsonNullable,
      toJson: fromDartJsonNullableToGraphQLGeometryNullable)
  Json? $lte;

  @JsonKey(
      name: '_neq',
      fromJson: fromGraphQLGeometryNullableToDartJsonNullable,
      toJson: fromDartJsonNullableToGraphQLGeometryNullable)
  Json? $neq;

  @JsonKey(
      name: '_nin',
      fromJson: fromGraphQLListNullableGeometryToDartListNullableJson,
      toJson: fromDartListNullableJsonToGraphQLListNullableGeometry)
  List<Json>? $nin;

  @JsonKey(name: '_st_3d_d_within')
  StDWithinInput? $st3dDWithin;

  @JsonKey(
      name: '_st_3d_intersects',
      fromJson: fromGraphQLGeometryNullableToDartJsonNullable,
      toJson: fromDartJsonNullableToGraphQLGeometryNullable)
  Json? $st3dIntersects;

  @JsonKey(
      name: '_st_contains',
      fromJson: fromGraphQLGeometryNullableToDartJsonNullable,
      toJson: fromDartJsonNullableToGraphQLGeometryNullable)
  Json? $stContains;

  @JsonKey(
      name: '_st_crosses',
      fromJson: fromGraphQLGeometryNullableToDartJsonNullable,
      toJson: fromDartJsonNullableToGraphQLGeometryNullable)
  Json? $stCrosses;

  @JsonKey(name: '_st_d_within')
  StDWithinInput? $stDWithin;

  @JsonKey(
      name: '_st_equals',
      fromJson: fromGraphQLGeometryNullableToDartJsonNullable,
      toJson: fromDartJsonNullableToGraphQLGeometryNullable)
  Json? $stEquals;

  @JsonKey(
      name: '_st_intersects',
      fromJson: fromGraphQLGeometryNullableToDartJsonNullable,
      toJson: fromDartJsonNullableToGraphQLGeometryNullable)
  Json? $stIntersects;

  @JsonKey(
      name: '_st_overlaps',
      fromJson: fromGraphQLGeometryNullableToDartJsonNullable,
      toJson: fromDartJsonNullableToGraphQLGeometryNullable)
  Json? $stOverlaps;

  @JsonKey(
      name: '_st_touches',
      fromJson: fromGraphQLGeometryNullableToDartJsonNullable,
      toJson: fromDartJsonNullableToGraphQLGeometryNullable)
  Json? $stTouches;

  @JsonKey(
      name: '_st_within',
      fromJson: fromGraphQLGeometryNullableToDartJsonNullable,
      toJson: fromDartJsonNullableToGraphQLGeometryNullable)
  Json? $stWithin;

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

  @JsonKey(
      fromJson: fromGraphQLGeometryToDartJson,
      toJson: fromDartJsonToGraphQLGeometry)
  late Json from;

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

  @JsonKey(
      fromJson: fromGraphQLGeographyToDartJson,
      toJson: fromDartJsonToGraphQLGeography)
  late Json from;

  @JsonKey(name: 'use_spheroid')
  bool? useSpheroid;

  @override
  List<Object?> get props => [distance, from, useSpheroid];
  @override
  Map<String, dynamic> toJson() => _$StDWithinGeographyInputToJson(this);
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

  BigintComparisonExp? color;

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
      this.time,
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

  DateComparisonExp? time;

  UsersBoolExp? user;

  @override
  List<Object?> get props => [
        $and,
        $not,
        $or,
        day,
        dayId,
        id,
        person,
        personId,
        recordedBy,
        time,
        user
      ];
  @override
  Map<String, dynamic> toJson() => _$HistoryKodasHistoryBoolExpToJson(this);
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
class ShammasLevelsBoolExp extends JsonSerializable with EquatableMixin {
  ShammasLevelsBoolExp(
      {this.$and, this.$not, this.$or, this.id, this.name, this.order});

  factory ShammasLevelsBoolExp.fromJson(Map<String, dynamic> json) =>
      _$ShammasLevelsBoolExpFromJson(json);

  @JsonKey(name: '_and')
  List<ShammasLevelsBoolExp>? $and;

  @JsonKey(name: '_not')
  ShammasLevelsBoolExp? $not;

  @JsonKey(name: '_or')
  List<ShammasLevelsBoolExp>? $or;

  UuidComparisonExp? id;

  StringComparisonExp? name;

  IntComparisonExp? order;

  @override
  List<Object?> get props => [$and, $not, $or, id, name, order];
  @override
  Map<String, dynamic> toJson() => _$ShammasLevelsBoolExpToJson(this);
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

  BigintComparisonExp? color;

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

  BigintComparisonExp? color;

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
      this.recordedBy,
      this.time,
      this.user,
      this.userRole});

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

  UuidComparisonExp? recordedBy;

  TimestamptzComparisonExp? time;

  UsersBoolExp? user;

  StringComparisonExp? userRole;

  @override
  List<Object?> get props =>
      [$and, $not, $or, person, personId, recordedBy, time, user, userRole];
  @override
  Map<String, dynamic> toJson() => _$HistoryVisitHistoryBoolExpToJson(this);
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
class GetClassesStream$SubscriptionRoot$Classes extends JsonSerializable
    with EquatableMixin {
  GetClassesStream$SubscriptionRoot$Classes();

  factory GetClassesStream$SubscriptionRoot$Classes.fromJson(
          Map<String, dynamic> json) =>
      _$GetClassesStream$SubscriptionRoot$ClassesFromJson(json);

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
      _$GetClassesStream$SubscriptionRoot$ClassesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetClassesStream$SubscriptionRoot extends JsonSerializable
    with EquatableMixin {
  GetClassesStream$SubscriptionRoot();

  factory GetClassesStream$SubscriptionRoot.fromJson(
          Map<String, dynamic> json) =>
      _$GetClassesStream$SubscriptionRootFromJson(json);

  late List<GetClassesStream$SubscriptionRoot$Classes> classes;

  @override
  List<Object?> get props => [classes];
  @override
  Map<String, dynamic> toJson() =>
      _$GetClassesStream$SubscriptionRootToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetFamiliesStream$SubscriptionRoot$Families extends JsonSerializable
    with EquatableMixin {
  GetFamiliesStream$SubscriptionRoot$Families();

  factory GetFamiliesStream$SubscriptionRoot$Families.fromJson(
          Map<String, dynamic> json) =>
      _$GetFamiliesStream$SubscriptionRoot$FamiliesFromJson(json);

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
      _$GetFamiliesStream$SubscriptionRoot$FamiliesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetFamiliesStream$SubscriptionRoot extends JsonSerializable
    with EquatableMixin {
  GetFamiliesStream$SubscriptionRoot();

  factory GetFamiliesStream$SubscriptionRoot.fromJson(
          Map<String, dynamic> json) =>
      _$GetFamiliesStream$SubscriptionRootFromJson(json);

  late List<GetFamiliesStream$SubscriptionRoot$Families> families;

  @override
  List<Object?> get props => [families];
  @override
  Map<String, dynamic> toJson() =>
      _$GetFamiliesStream$SubscriptionRootToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetGroupsStream$SubscriptionRoot$Groups extends JsonSerializable
    with EquatableMixin {
  GetGroupsStream$SubscriptionRoot$Groups();

  factory GetGroupsStream$SubscriptionRoot$Groups.fromJson(
          Map<String, dynamic> json) =>
      _$GetGroupsStream$SubscriptionRoot$GroupsFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue id;

  late String name;

  DateTime? photoUpdatedAt;

  @override
  List<Object?> get props => [id, name, photoUpdatedAt];
  @override
  Map<String, dynamic> toJson() =>
      _$GetGroupsStream$SubscriptionRoot$GroupsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetGroupsStream$SubscriptionRoot extends JsonSerializable
    with EquatableMixin {
  GetGroupsStream$SubscriptionRoot();

  factory GetGroupsStream$SubscriptionRoot.fromJson(
          Map<String, dynamic> json) =>
      _$GetGroupsStream$SubscriptionRootFromJson(json);

  late List<GetGroupsStream$SubscriptionRoot$Groups> groups;

  @override
  List<Object?> get props => [groups];
  @override
  Map<String, dynamic> toJson() =>
      _$GetGroupsStream$SubscriptionRootToJson(this);
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
class GetMorePersonData$QueryRoot$Persons$Areas extends JsonSerializable
    with EquatableMixin {
  GetMorePersonData$QueryRoot$Persons$Areas();

  factory GetMorePersonData$QueryRoot$Persons$Areas.fromJson(
          Map<String, dynamic> json) =>
      _$GetMorePersonData$QueryRoot$Persons$AreasFromJson(json);

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
      _$GetMorePersonData$QueryRoot$Persons$AreasToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetMorePersonData$QueryRoot$Persons$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields
    extends JsonSerializable with EquatableMixin {
  GetMorePersonData$QueryRoot$Persons$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields();

  factory GetMorePersonData$QueryRoot$Persons$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields.fromJson(
          Map<String, dynamic> json) =>
      _$GetMorePersonData$QueryRoot$Persons$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFieldsFromJson(
          json);

  DateTime? dayId;

  @override
  List<Object?> get props => [dayId];
  @override
  Map<String, dynamic> toJson() =>
      _$GetMorePersonData$QueryRoot$Persons$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFieldsToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class GetMorePersonData$QueryRoot$Persons$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields
    extends JsonSerializable with EquatableMixin {
  GetMorePersonData$QueryRoot$Persons$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields();

  factory GetMorePersonData$QueryRoot$Persons$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields.fromJson(
          Map<String, dynamic> json) =>
      _$GetMorePersonData$QueryRoot$Persons$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFieldsFromJson(
          json);

  GetMorePersonData$QueryRoot$Persons$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields?
      max;

  @override
  List<Object?> get props => [max];
  @override
  Map<String, dynamic> toJson() =>
      _$GetMorePersonData$QueryRoot$Persons$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFieldsToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class GetMorePersonData$QueryRoot$Persons$Classes$HistoryAttendanceHistoryAggregate
    extends JsonSerializable with EquatableMixin {
  GetMorePersonData$QueryRoot$Persons$Classes$HistoryAttendanceHistoryAggregate();

  factory GetMorePersonData$QueryRoot$Persons$Classes$HistoryAttendanceHistoryAggregate.fromJson(
          Map<String, dynamic> json) =>
      _$GetMorePersonData$QueryRoot$Persons$Classes$HistoryAttendanceHistoryAggregateFromJson(
          json);

  GetMorePersonData$QueryRoot$Persons$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields?
      aggregate;

  @override
  List<Object?> get props => [aggregate];
  @override
  Map<String, dynamic> toJson() =>
      _$GetMorePersonData$QueryRoot$Persons$Classes$HistoryAttendanceHistoryAggregateToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class GetMorePersonData$QueryRoot$Persons$Classes extends JsonSerializable
    with EquatableMixin {
  GetMorePersonData$QueryRoot$Persons$Classes();

  factory GetMorePersonData$QueryRoot$Persons$Classes.fromJson(
          Map<String, dynamic> json) =>
      _$GetMorePersonData$QueryRoot$Persons$ClassesFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue id;

  late String name;

  int? color;

  DateTime? photoUpdatedAt;

  @JsonKey(name: 'attendanceHistory_aggregate')
  late GetMorePersonData$QueryRoot$Persons$Classes$HistoryAttendanceHistoryAggregate
      attendanceHistoryAggregate;

  @override
  List<Object?> get props =>
      [id, name, color, photoUpdatedAt, attendanceHistoryAggregate];
  @override
  Map<String, dynamic> toJson() =>
      _$GetMorePersonData$QueryRoot$Persons$ClassesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetMorePersonData$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields
    extends JsonSerializable with EquatableMixin {
  GetMorePersonData$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields();

  factory GetMorePersonData$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields.fromJson(
          Map<String, dynamic> json) =>
      _$GetMorePersonData$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFieldsFromJson(
          json);

  DateTime? dayId;

  @override
  List<Object?> get props => [dayId];
  @override
  Map<String, dynamic> toJson() =>
      _$GetMorePersonData$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFieldsToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class GetMorePersonData$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields
    extends JsonSerializable with EquatableMixin {
  GetMorePersonData$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields();

  factory GetMorePersonData$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields.fromJson(
          Map<String, dynamic> json) =>
      _$GetMorePersonData$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFieldsFromJson(
          json);

  GetMorePersonData$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields?
      max;

  @override
  List<Object?> get props => [max];
  @override
  Map<String, dynamic> toJson() =>
      _$GetMorePersonData$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFieldsToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class GetMorePersonData$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate
    extends JsonSerializable with EquatableMixin {
  GetMorePersonData$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate();

  factory GetMorePersonData$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate.fromJson(
          Map<String, dynamic> json) =>
      _$GetMorePersonData$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregateFromJson(
          json);

  GetMorePersonData$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields?
      aggregate;

  @override
  List<Object?> get props => [aggregate];
  @override
  Map<String, dynamic> toJson() =>
      _$GetMorePersonData$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregateToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class GetMorePersonData$QueryRoot$Persons$PersonsGroups$Groups
    extends JsonSerializable with EquatableMixin {
  GetMorePersonData$QueryRoot$Persons$PersonsGroups$Groups();

  factory GetMorePersonData$QueryRoot$Persons$PersonsGroups$Groups.fromJson(
          Map<String, dynamic> json) =>
      _$GetMorePersonData$QueryRoot$Persons$PersonsGroups$GroupsFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue id;

  late String name;

  int? color;

  DateTime? photoUpdatedAt;

  @JsonKey(name: 'attendanceHistory_aggregate')
  late GetMorePersonData$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate
      attendanceHistoryAggregate;

  @override
  List<Object?> get props =>
      [id, name, color, photoUpdatedAt, attendanceHistoryAggregate];
  @override
  Map<String, dynamic> toJson() =>
      _$GetMorePersonData$QueryRoot$Persons$PersonsGroups$GroupsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetMorePersonData$QueryRoot$Persons$PersonsGroups extends JsonSerializable
    with EquatableMixin {
  GetMorePersonData$QueryRoot$Persons$PersonsGroups();

  factory GetMorePersonData$QueryRoot$Persons$PersonsGroups.fromJson(
          Map<String, dynamic> json) =>
      _$GetMorePersonData$QueryRoot$Persons$PersonsGroupsFromJson(json);

  late GetMorePersonData$QueryRoot$Persons$PersonsGroups$Groups group;

  @override
  List<Object?> get props => [group];
  @override
  Map<String, dynamic> toJson() =>
      _$GetMorePersonData$QueryRoot$Persons$PersonsGroupsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetMorePersonData$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields
    extends JsonSerializable with EquatableMixin {
  GetMorePersonData$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields();

  factory GetMorePersonData$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields.fromJson(
          Map<String, dynamic> json) =>
      _$GetMorePersonData$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFieldsFromJson(
          json);

  DateTime? dayId;

  @override
  List<Object?> get props => [dayId];
  @override
  Map<String, dynamic> toJson() =>
      _$GetMorePersonData$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFieldsToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class GetMorePersonData$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields
    extends JsonSerializable with EquatableMixin {
  GetMorePersonData$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields();

  factory GetMorePersonData$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields.fromJson(
          Map<String, dynamic> json) =>
      _$GetMorePersonData$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFieldsFromJson(
          json);

  GetMorePersonData$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields?
      max;

  @override
  List<Object?> get props => [max];
  @override
  Map<String, dynamic> toJson() =>
      _$GetMorePersonData$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFieldsToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class GetMorePersonData$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate
    extends JsonSerializable with EquatableMixin {
  GetMorePersonData$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate();

  factory GetMorePersonData$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate.fromJson(
          Map<String, dynamic> json) =>
      _$GetMorePersonData$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregateFromJson(
          json);

  GetMorePersonData$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields?
      aggregate;

  @override
  List<Object?> get props => [aggregate];
  @override
  Map<String, dynamic> toJson() =>
      _$GetMorePersonData$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregateToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class GetMorePersonData$QueryRoot$Persons$PersonsServices$Services
    extends JsonSerializable with EquatableMixin {
  GetMorePersonData$QueryRoot$Persons$PersonsServices$Services();

  factory GetMorePersonData$QueryRoot$Persons$PersonsServices$Services.fromJson(
          Map<String, dynamic> json) =>
      _$GetMorePersonData$QueryRoot$Persons$PersonsServices$ServicesFromJson(
          json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue id;

  late String name;

  int? color;

  DateTime? photoUpdatedAt;

  @JsonKey(name: 'attendanceHistory_aggregate')
  late GetMorePersonData$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate
      attendanceHistoryAggregate;

  @override
  List<Object?> get props =>
      [id, name, color, photoUpdatedAt, attendanceHistoryAggregate];
  @override
  Map<String, dynamic> toJson() =>
      _$GetMorePersonData$QueryRoot$Persons$PersonsServices$ServicesToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class GetMorePersonData$QueryRoot$Persons$PersonsServices
    extends JsonSerializable with EquatableMixin {
  GetMorePersonData$QueryRoot$Persons$PersonsServices();

  factory GetMorePersonData$QueryRoot$Persons$PersonsServices.fromJson(
          Map<String, dynamic> json) =>
      _$GetMorePersonData$QueryRoot$Persons$PersonsServicesFromJson(json);

  late GetMorePersonData$QueryRoot$Persons$PersonsServices$Services service;

  @override
  List<Object?> get props => [service];
  @override
  Map<String, dynamic> toJson() =>
      _$GetMorePersonData$QueryRoot$Persons$PersonsServicesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetMorePersonData$QueryRoot$Persons extends JsonSerializable
    with EquatableMixin {
  GetMorePersonData$QueryRoot$Persons();

  factory GetMorePersonData$QueryRoot$Persons.fromJson(
          Map<String, dynamic> json) =>
      _$GetMorePersonData$QueryRoot$PersonsFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue id;

  late String name;

  List<GetMorePersonData$QueryRoot$Persons$Areas>? areas;

  List<GetMorePersonData$QueryRoot$Persons$Classes>? classes;

  late List<GetMorePersonData$QueryRoot$Persons$PersonsGroups> groups;

  late List<GetMorePersonData$QueryRoot$Persons$PersonsServices> services;

  @override
  List<Object?> get props => [id, name, areas, classes, groups, services];
  @override
  Map<String, dynamic> toJson() =>
      _$GetMorePersonData$QueryRoot$PersonsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetMorePersonData$QueryRoot extends JsonSerializable with EquatableMixin {
  GetMorePersonData$QueryRoot();

  factory GetMorePersonData$QueryRoot.fromJson(Map<String, dynamic> json) =>
      _$GetMorePersonData$QueryRootFromJson(json);

  @JsonKey(name: 'persons_by_pk')
  GetMorePersonData$QueryRoot$Persons? personsByPk;

  @override
  List<Object?> get props => [personsByPk];
  @override
  Map<String, dynamic> toJson() => _$GetMorePersonData$QueryRootToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PersonsGeolocations$QueryRoot$Persons$Areas extends JsonSerializable
    with EquatableMixin {
  PersonsGeolocations$QueryRoot$Persons$Areas();

  factory PersonsGeolocations$QueryRoot$Persons$Areas.fromJson(
          Map<String, dynamic> json) =>
      _$PersonsGeolocations$QueryRoot$Persons$AreasFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue id;

  late String name;

  int? color;

  @JsonKey(
      fromJson: fromGraphQLGeographyNullableToDartJsonNullable,
      toJson: fromDartJsonNullableToGraphQLGeographyNullable)
  Json? bounds;

  @override
  List<Object?> get props => [id, name, color, bounds];
  @override
  Map<String, dynamic> toJson() =>
      _$PersonsGeolocations$QueryRoot$Persons$AreasToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PersonsGeolocations$QueryRoot$Persons$Streets extends JsonSerializable
    with EquatableMixin {
  PersonsGeolocations$QueryRoot$Persons$Streets();

  factory PersonsGeolocations$QueryRoot$Persons$Streets.fromJson(
          Map<String, dynamic> json) =>
      _$PersonsGeolocations$QueryRoot$Persons$StreetsFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue id;

  late String name;

  int? color;

  @JsonKey(
      fromJson: fromGraphQLGeographyNullableToDartJsonNullable,
      toJson: fromDartJsonNullableToGraphQLGeographyNullable)
  Json? line;

  @override
  List<Object?> get props => [id, name, color, line];
  @override
  Map<String, dynamic> toJson() =>
      _$PersonsGeolocations$QueryRoot$Persons$StreetsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PersonsGeolocations$QueryRoot$Persons$Families extends JsonSerializable
    with EquatableMixin {
  PersonsGeolocations$QueryRoot$Persons$Families();

  factory PersonsGeolocations$QueryRoot$Persons$Families.fromJson(
          Map<String, dynamic> json) =>
      _$PersonsGeolocations$QueryRoot$Persons$FamiliesFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue id;

  late String name;

  int? color;

  @JsonKey(
      fromJson: fromGraphQLGeographyNullableToDartJsonNullable,
      toJson: fromDartJsonNullableToGraphQLGeographyNullable)
  Json? geolocation;

  @override
  List<Object?> get props => [id, name, color, geolocation];
  @override
  Map<String, dynamic> toJson() =>
      _$PersonsGeolocations$QueryRoot$Persons$FamiliesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PersonsGeolocations$QueryRoot$Persons extends JsonSerializable
    with EquatableMixin {
  PersonsGeolocations$QueryRoot$Persons();

  factory PersonsGeolocations$QueryRoot$Persons.fromJson(
          Map<String, dynamic> json) =>
      _$PersonsGeolocations$QueryRoot$PersonsFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue id;

  late String name;

  @JsonKey(
      fromJson: fromGraphQLGeographyNullableToDartJsonNullable,
      toJson: fromDartJsonNullableToGraphQLGeographyNullable)
  Json? geolocation;

  List<PersonsGeolocations$QueryRoot$Persons$Areas>? areas;

  List<PersonsGeolocations$QueryRoot$Persons$Streets>? streets;

  PersonsGeolocations$QueryRoot$Persons$Families? family;

  @override
  List<Object?> get props => [id, name, geolocation, areas, streets, family];
  @override
  Map<String, dynamic> toJson() =>
      _$PersonsGeolocations$QueryRoot$PersonsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PersonsGeolocations$QueryRoot extends JsonSerializable
    with EquatableMixin {
  PersonsGeolocations$QueryRoot();

  factory PersonsGeolocations$QueryRoot.fromJson(Map<String, dynamic> json) =>
      _$PersonsGeolocations$QueryRootFromJson(json);

  late List<PersonsGeolocations$QueryRoot$Persons> persons;

  @override
  List<Object?> get props => [persons];
  @override
  Map<String, dynamic> toJson() => _$PersonsGeolocations$QueryRootToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzePersonAttendance$QueryRoot$Persons$HistoryKodasHistoryAggregate$HistoryKodasHistoryAggregateFields$HistoryKodasHistoryMaxFields
    extends JsonSerializable with EquatableMixin {
  AnalyzePersonAttendance$QueryRoot$Persons$HistoryKodasHistoryAggregate$HistoryKodasHistoryAggregateFields$HistoryKodasHistoryMaxFields();

  factory AnalyzePersonAttendance$QueryRoot$Persons$HistoryKodasHistoryAggregate$HistoryKodasHistoryAggregateFields$HistoryKodasHistoryMaxFields.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzePersonAttendance$QueryRoot$Persons$HistoryKodasHistoryAggregate$HistoryKodasHistoryAggregateFields$HistoryKodasHistoryMaxFieldsFromJson(
          json);

  DateTime? time;

  @override
  List<Object?> get props => [time];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzePersonAttendance$QueryRoot$Persons$HistoryKodasHistoryAggregate$HistoryKodasHistoryAggregateFields$HistoryKodasHistoryMaxFieldsToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzePersonAttendance$QueryRoot$Persons$HistoryKodasHistoryAggregate$HistoryKodasHistoryAggregateFields
    extends JsonSerializable with EquatableMixin {
  AnalyzePersonAttendance$QueryRoot$Persons$HistoryKodasHistoryAggregate$HistoryKodasHistoryAggregateFields();

  factory AnalyzePersonAttendance$QueryRoot$Persons$HistoryKodasHistoryAggregate$HistoryKodasHistoryAggregateFields.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzePersonAttendance$QueryRoot$Persons$HistoryKodasHistoryAggregate$HistoryKodasHistoryAggregateFieldsFromJson(
          json);

  late int count;

  AnalyzePersonAttendance$QueryRoot$Persons$HistoryKodasHistoryAggregate$HistoryKodasHistoryAggregateFields$HistoryKodasHistoryMaxFields?
      max;

  @override
  List<Object?> get props => [count, max];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzePersonAttendance$QueryRoot$Persons$HistoryKodasHistoryAggregate$HistoryKodasHistoryAggregateFieldsToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzePersonAttendance$QueryRoot$Persons$HistoryKodasHistoryAggregate$HistoryKodasHistory
    extends JsonSerializable with EquatableMixin {
  AnalyzePersonAttendance$QueryRoot$Persons$HistoryKodasHistoryAggregate$HistoryKodasHistory();

  factory AnalyzePersonAttendance$QueryRoot$Persons$HistoryKodasHistoryAggregate$HistoryKodasHistory.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzePersonAttendance$QueryRoot$Persons$HistoryKodasHistoryAggregate$HistoryKodasHistoryFromJson(
          json);

  DateTime? time;

  @override
  List<Object?> get props => [time];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzePersonAttendance$QueryRoot$Persons$HistoryKodasHistoryAggregate$HistoryKodasHistoryToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzePersonAttendance$QueryRoot$Persons$HistoryKodasHistoryAggregate
    extends JsonSerializable with EquatableMixin {
  AnalyzePersonAttendance$QueryRoot$Persons$HistoryKodasHistoryAggregate();

  factory AnalyzePersonAttendance$QueryRoot$Persons$HistoryKodasHistoryAggregate.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzePersonAttendance$QueryRoot$Persons$HistoryKodasHistoryAggregateFromJson(
          json);

  AnalyzePersonAttendance$QueryRoot$Persons$HistoryKodasHistoryAggregate$HistoryKodasHistoryAggregateFields?
      aggregate;

  late List<
          AnalyzePersonAttendance$QueryRoot$Persons$HistoryKodasHistoryAggregate$HistoryKodasHistory>
      nodes;

  @override
  List<Object?> get props => [aggregate, nodes];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzePersonAttendance$QueryRoot$Persons$HistoryKodasHistoryAggregateToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzePersonAttendance$QueryRoot$Persons$HistoryConfessionHistoryAggregate$HistoryConfessionHistoryAggregateFields$HistoryConfessionHistoryMaxFields
    extends JsonSerializable with EquatableMixin {
  AnalyzePersonAttendance$QueryRoot$Persons$HistoryConfessionHistoryAggregate$HistoryConfessionHistoryAggregateFields$HistoryConfessionHistoryMaxFields();

  factory AnalyzePersonAttendance$QueryRoot$Persons$HistoryConfessionHistoryAggregate$HistoryConfessionHistoryAggregateFields$HistoryConfessionHistoryMaxFields.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzePersonAttendance$QueryRoot$Persons$HistoryConfessionHistoryAggregate$HistoryConfessionHistoryAggregateFields$HistoryConfessionHistoryMaxFieldsFromJson(
          json);

  DateTime? time;

  @override
  List<Object?> get props => [time];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzePersonAttendance$QueryRoot$Persons$HistoryConfessionHistoryAggregate$HistoryConfessionHistoryAggregateFields$HistoryConfessionHistoryMaxFieldsToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzePersonAttendance$QueryRoot$Persons$HistoryConfessionHistoryAggregate$HistoryConfessionHistoryAggregateFields
    extends JsonSerializable with EquatableMixin {
  AnalyzePersonAttendance$QueryRoot$Persons$HistoryConfessionHistoryAggregate$HistoryConfessionHistoryAggregateFields();

  factory AnalyzePersonAttendance$QueryRoot$Persons$HistoryConfessionHistoryAggregate$HistoryConfessionHistoryAggregateFields.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzePersonAttendance$QueryRoot$Persons$HistoryConfessionHistoryAggregate$HistoryConfessionHistoryAggregateFieldsFromJson(
          json);

  late int count;

  AnalyzePersonAttendance$QueryRoot$Persons$HistoryConfessionHistoryAggregate$HistoryConfessionHistoryAggregateFields$HistoryConfessionHistoryMaxFields?
      max;

  @override
  List<Object?> get props => [count, max];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzePersonAttendance$QueryRoot$Persons$HistoryConfessionHistoryAggregate$HistoryConfessionHistoryAggregateFieldsToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzePersonAttendance$QueryRoot$Persons$HistoryConfessionHistoryAggregate$HistoryConfessionHistory
    extends JsonSerializable with EquatableMixin {
  AnalyzePersonAttendance$QueryRoot$Persons$HistoryConfessionHistoryAggregate$HistoryConfessionHistory();

  factory AnalyzePersonAttendance$QueryRoot$Persons$HistoryConfessionHistoryAggregate$HistoryConfessionHistory.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzePersonAttendance$QueryRoot$Persons$HistoryConfessionHistoryAggregate$HistoryConfessionHistoryFromJson(
          json);

  DateTime? time;

  @override
  List<Object?> get props => [time];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzePersonAttendance$QueryRoot$Persons$HistoryConfessionHistoryAggregate$HistoryConfessionHistoryToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzePersonAttendance$QueryRoot$Persons$HistoryConfessionHistoryAggregate
    extends JsonSerializable with EquatableMixin {
  AnalyzePersonAttendance$QueryRoot$Persons$HistoryConfessionHistoryAggregate();

  factory AnalyzePersonAttendance$QueryRoot$Persons$HistoryConfessionHistoryAggregate.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzePersonAttendance$QueryRoot$Persons$HistoryConfessionHistoryAggregateFromJson(
          json);

  AnalyzePersonAttendance$QueryRoot$Persons$HistoryConfessionHistoryAggregate$HistoryConfessionHistoryAggregateFields?
      aggregate;

  late List<
          AnalyzePersonAttendance$QueryRoot$Persons$HistoryConfessionHistoryAggregate$HistoryConfessionHistory>
      nodes;

  @override
  List<Object?> get props => [aggregate, nodes];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzePersonAttendance$QueryRoot$Persons$HistoryConfessionHistoryAggregateToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzePersonAttendance$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields
    extends JsonSerializable with EquatableMixin {
  AnalyzePersonAttendance$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields();

  factory AnalyzePersonAttendance$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzePersonAttendance$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFieldsFromJson(
          json);

  DateTime? dayId;

  @override
  List<Object?> get props => [dayId];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzePersonAttendance$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFieldsToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzePersonAttendance$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields
    extends JsonSerializable with EquatableMixin {
  AnalyzePersonAttendance$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields();

  factory AnalyzePersonAttendance$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzePersonAttendance$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFieldsFromJson(
          json);

  late int count;

  AnalyzePersonAttendance$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields?
      max;

  @override
  List<Object?> get props => [count, max];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzePersonAttendance$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFieldsToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzePersonAttendance$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistory
    extends JsonSerializable with EquatableMixin {
  AnalyzePersonAttendance$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistory();

  factory AnalyzePersonAttendance$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistory.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzePersonAttendance$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryFromJson(
          json);

  late DateTime dayId;

  @override
  List<Object?> get props => [dayId];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzePersonAttendance$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzePersonAttendance$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate
    extends JsonSerializable with EquatableMixin {
  AnalyzePersonAttendance$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate();

  factory AnalyzePersonAttendance$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzePersonAttendance$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregateFromJson(
          json);

  AnalyzePersonAttendance$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields?
      aggregate;

  late List<
          AnalyzePersonAttendance$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistory>
      nodes;

  @override
  List<Object?> get props => [aggregate, nodes];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzePersonAttendance$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregateToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzePersonAttendance$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsAggregateFields
    extends JsonSerializable with EquatableMixin {
  AnalyzePersonAttendance$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsAggregateFields();

  factory AnalyzePersonAttendance$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsAggregateFields.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzePersonAttendance$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsAggregateFieldsFromJson(
          json);

  late int count;

  @override
  List<Object?> get props => [count];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzePersonAttendance$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsAggregateFieldsToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzePersonAttendance$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraints
    extends JsonSerializable with EquatableMixin {
  AnalyzePersonAttendance$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraints();

  factory AnalyzePersonAttendance$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraints.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzePersonAttendance$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsFromJson(
          json);

  late DateTime dayId;

  @override
  List<Object?> get props => [dayId];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzePersonAttendance$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzePersonAttendance$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceDaysConstraintsAggregate
    extends JsonSerializable with EquatableMixin {
  AnalyzePersonAttendance$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceDaysConstraintsAggregate();

  factory AnalyzePersonAttendance$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceDaysConstraintsAggregate.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzePersonAttendance$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceDaysConstraintsAggregateFromJson(
          json);

  AnalyzePersonAttendance$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsAggregateFields?
      aggregate;

  late List<
          AnalyzePersonAttendance$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraints>
      nodes;

  @override
  List<Object?> get props => [aggregate, nodes];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzePersonAttendance$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceDaysConstraintsAggregateToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzePersonAttendance$QueryRoot$Persons$PersonsServices$Services
    extends JsonSerializable with EquatableMixin {
  AnalyzePersonAttendance$QueryRoot$Persons$PersonsServices$Services();

  factory AnalyzePersonAttendance$QueryRoot$Persons$PersonsServices$Services.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzePersonAttendance$QueryRoot$Persons$PersonsServices$ServicesFromJson(
          json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue id;

  late String name;

  int? color;

  @JsonKey(name: 'attendanceHistory_aggregate')
  late AnalyzePersonAttendance$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate
      attendanceHistoryAggregate;

  @JsonKey(name: 'attendanceDaysConstraints_aggregate')
  late AnalyzePersonAttendance$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceDaysConstraintsAggregate
      attendanceDaysConstraintsAggregate;

  @override
  List<Object?> get props => [
        id,
        name,
        color,
        attendanceHistoryAggregate,
        attendanceDaysConstraintsAggregate
      ];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzePersonAttendance$QueryRoot$Persons$PersonsServices$ServicesToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzePersonAttendance$QueryRoot$Persons$PersonsServices
    extends JsonSerializable with EquatableMixin {
  AnalyzePersonAttendance$QueryRoot$Persons$PersonsServices();

  factory AnalyzePersonAttendance$QueryRoot$Persons$PersonsServices.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzePersonAttendance$QueryRoot$Persons$PersonsServicesFromJson(json);

  late AnalyzePersonAttendance$QueryRoot$Persons$PersonsServices$Services
      service;

  @override
  List<Object?> get props => [service];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzePersonAttendance$QueryRoot$Persons$PersonsServicesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzePersonAttendance$QueryRoot$Persons$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields
    extends JsonSerializable with EquatableMixin {
  AnalyzePersonAttendance$QueryRoot$Persons$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields();

  factory AnalyzePersonAttendance$QueryRoot$Persons$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzePersonAttendance$QueryRoot$Persons$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFieldsFromJson(
          json);

  DateTime? dayId;

  @override
  List<Object?> get props => [dayId];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzePersonAttendance$QueryRoot$Persons$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFieldsToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzePersonAttendance$QueryRoot$Persons$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields
    extends JsonSerializable with EquatableMixin {
  AnalyzePersonAttendance$QueryRoot$Persons$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields();

  factory AnalyzePersonAttendance$QueryRoot$Persons$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzePersonAttendance$QueryRoot$Persons$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFieldsFromJson(
          json);

  late int count;

  AnalyzePersonAttendance$QueryRoot$Persons$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields?
      max;

  @override
  List<Object?> get props => [count, max];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzePersonAttendance$QueryRoot$Persons$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFieldsToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzePersonAttendance$QueryRoot$Persons$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistory
    extends JsonSerializable with EquatableMixin {
  AnalyzePersonAttendance$QueryRoot$Persons$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistory();

  factory AnalyzePersonAttendance$QueryRoot$Persons$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistory.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzePersonAttendance$QueryRoot$Persons$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryFromJson(
          json);

  late DateTime dayId;

  @override
  List<Object?> get props => [dayId];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzePersonAttendance$QueryRoot$Persons$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzePersonAttendance$QueryRoot$Persons$Classes$HistoryAttendanceHistoryAggregate
    extends JsonSerializable with EquatableMixin {
  AnalyzePersonAttendance$QueryRoot$Persons$Classes$HistoryAttendanceHistoryAggregate();

  factory AnalyzePersonAttendance$QueryRoot$Persons$Classes$HistoryAttendanceHistoryAggregate.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzePersonAttendance$QueryRoot$Persons$Classes$HistoryAttendanceHistoryAggregateFromJson(
          json);

  AnalyzePersonAttendance$QueryRoot$Persons$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields?
      aggregate;

  late List<
          AnalyzePersonAttendance$QueryRoot$Persons$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistory>
      nodes;

  @override
  List<Object?> get props => [aggregate, nodes];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzePersonAttendance$QueryRoot$Persons$Classes$HistoryAttendanceHistoryAggregateToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzePersonAttendance$QueryRoot$Persons$Classes$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsAggregateFields
    extends JsonSerializable with EquatableMixin {
  AnalyzePersonAttendance$QueryRoot$Persons$Classes$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsAggregateFields();

  factory AnalyzePersonAttendance$QueryRoot$Persons$Classes$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsAggregateFields.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzePersonAttendance$QueryRoot$Persons$Classes$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsAggregateFieldsFromJson(
          json);

  late int count;

  @override
  List<Object?> get props => [count];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzePersonAttendance$QueryRoot$Persons$Classes$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsAggregateFieldsToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzePersonAttendance$QueryRoot$Persons$Classes$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraints
    extends JsonSerializable with EquatableMixin {
  AnalyzePersonAttendance$QueryRoot$Persons$Classes$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraints();

  factory AnalyzePersonAttendance$QueryRoot$Persons$Classes$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraints.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzePersonAttendance$QueryRoot$Persons$Classes$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsFromJson(
          json);

  late DateTime dayId;

  @override
  List<Object?> get props => [dayId];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzePersonAttendance$QueryRoot$Persons$Classes$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzePersonAttendance$QueryRoot$Persons$Classes$HistoryAttendanceDaysConstraintsAggregate
    extends JsonSerializable with EquatableMixin {
  AnalyzePersonAttendance$QueryRoot$Persons$Classes$HistoryAttendanceDaysConstraintsAggregate();

  factory AnalyzePersonAttendance$QueryRoot$Persons$Classes$HistoryAttendanceDaysConstraintsAggregate.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzePersonAttendance$QueryRoot$Persons$Classes$HistoryAttendanceDaysConstraintsAggregateFromJson(
          json);

  AnalyzePersonAttendance$QueryRoot$Persons$Classes$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsAggregateFields?
      aggregate;

  late List<
          AnalyzePersonAttendance$QueryRoot$Persons$Classes$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraints>
      nodes;

  @override
  List<Object?> get props => [aggregate, nodes];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzePersonAttendance$QueryRoot$Persons$Classes$HistoryAttendanceDaysConstraintsAggregateToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzePersonAttendance$QueryRoot$Persons$Classes extends JsonSerializable
    with EquatableMixin {
  AnalyzePersonAttendance$QueryRoot$Persons$Classes();

  factory AnalyzePersonAttendance$QueryRoot$Persons$Classes.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzePersonAttendance$QueryRoot$Persons$ClassesFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue id;

  late String name;

  int? color;

  @JsonKey(name: 'attendanceHistory_aggregate')
  late AnalyzePersonAttendance$QueryRoot$Persons$Classes$HistoryAttendanceHistoryAggregate
      attendanceHistoryAggregate;

  @JsonKey(name: 'attendanceDaysConstraints_aggregate')
  late AnalyzePersonAttendance$QueryRoot$Persons$Classes$HistoryAttendanceDaysConstraintsAggregate
      attendanceDaysConstraintsAggregate;

  @override
  List<Object?> get props => [
        id,
        name,
        color,
        attendanceHistoryAggregate,
        attendanceDaysConstraintsAggregate
      ];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzePersonAttendance$QueryRoot$Persons$ClassesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzePersonAttendance$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields
    extends JsonSerializable with EquatableMixin {
  AnalyzePersonAttendance$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields();

  factory AnalyzePersonAttendance$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzePersonAttendance$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFieldsFromJson(
          json);

  DateTime? dayId;

  @override
  List<Object?> get props => [dayId];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzePersonAttendance$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFieldsToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzePersonAttendance$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields
    extends JsonSerializable with EquatableMixin {
  AnalyzePersonAttendance$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields();

  factory AnalyzePersonAttendance$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzePersonAttendance$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFieldsFromJson(
          json);

  late int count;

  AnalyzePersonAttendance$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields?
      max;

  @override
  List<Object?> get props => [count, max];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzePersonAttendance$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFieldsToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzePersonAttendance$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistory
    extends JsonSerializable with EquatableMixin {
  AnalyzePersonAttendance$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistory();

  factory AnalyzePersonAttendance$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistory.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzePersonAttendance$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryFromJson(
          json);

  late DateTime dayId;

  @override
  List<Object?> get props => [dayId];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzePersonAttendance$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzePersonAttendance$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate
    extends JsonSerializable with EquatableMixin {
  AnalyzePersonAttendance$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate();

  factory AnalyzePersonAttendance$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzePersonAttendance$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregateFromJson(
          json);

  AnalyzePersonAttendance$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields?
      aggregate;

  late List<
          AnalyzePersonAttendance$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistory>
      nodes;

  @override
  List<Object?> get props => [aggregate, nodes];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzePersonAttendance$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregateToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzePersonAttendance$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsAggregateFields
    extends JsonSerializable with EquatableMixin {
  AnalyzePersonAttendance$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsAggregateFields();

  factory AnalyzePersonAttendance$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsAggregateFields.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzePersonAttendance$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsAggregateFieldsFromJson(
          json);

  late int count;

  @override
  List<Object?> get props => [count];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzePersonAttendance$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsAggregateFieldsToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzePersonAttendance$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraints
    extends JsonSerializable with EquatableMixin {
  AnalyzePersonAttendance$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraints();

  factory AnalyzePersonAttendance$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraints.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzePersonAttendance$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsFromJson(
          json);

  late DateTime dayId;

  @override
  List<Object?> get props => [dayId];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzePersonAttendance$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzePersonAttendance$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceDaysConstraintsAggregate
    extends JsonSerializable with EquatableMixin {
  AnalyzePersonAttendance$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceDaysConstraintsAggregate();

  factory AnalyzePersonAttendance$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceDaysConstraintsAggregate.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzePersonAttendance$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceDaysConstraintsAggregateFromJson(
          json);

  AnalyzePersonAttendance$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsAggregateFields?
      aggregate;

  late List<
          AnalyzePersonAttendance$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraints>
      nodes;

  @override
  List<Object?> get props => [aggregate, nodes];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzePersonAttendance$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceDaysConstraintsAggregateToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzePersonAttendance$QueryRoot$Persons$PersonsGroups$Groups
    extends JsonSerializable with EquatableMixin {
  AnalyzePersonAttendance$QueryRoot$Persons$PersonsGroups$Groups();

  factory AnalyzePersonAttendance$QueryRoot$Persons$PersonsGroups$Groups.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzePersonAttendance$QueryRoot$Persons$PersonsGroups$GroupsFromJson(
          json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue id;

  late String name;

  int? color;

  @JsonKey(name: 'attendanceHistory_aggregate')
  late AnalyzePersonAttendance$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate
      attendanceHistoryAggregate;

  @JsonKey(name: 'attendanceDaysConstraints_aggregate')
  late AnalyzePersonAttendance$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceDaysConstraintsAggregate
      attendanceDaysConstraintsAggregate;

  @override
  List<Object?> get props => [
        id,
        name,
        color,
        attendanceHistoryAggregate,
        attendanceDaysConstraintsAggregate
      ];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzePersonAttendance$QueryRoot$Persons$PersonsGroups$GroupsToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzePersonAttendance$QueryRoot$Persons$PersonsGroups
    extends JsonSerializable with EquatableMixin {
  AnalyzePersonAttendance$QueryRoot$Persons$PersonsGroups();

  factory AnalyzePersonAttendance$QueryRoot$Persons$PersonsGroups.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzePersonAttendance$QueryRoot$Persons$PersonsGroupsFromJson(json);

  late AnalyzePersonAttendance$QueryRoot$Persons$PersonsGroups$Groups group;

  @override
  List<Object?> get props => [group];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzePersonAttendance$QueryRoot$Persons$PersonsGroupsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzePersonAttendance$QueryRoot$Persons extends JsonSerializable
    with EquatableMixin {
  AnalyzePersonAttendance$QueryRoot$Persons();

  factory AnalyzePersonAttendance$QueryRoot$Persons.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzePersonAttendance$QueryRoot$PersonsFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue id;

  late String name;

  @JsonKey(name: 'kodasHistory_aggregate')
  late AnalyzePersonAttendance$QueryRoot$Persons$HistoryKodasHistoryAggregate
      kodasHistoryAggregate;

  @JsonKey(name: 'confessionHistory_aggregate')
  late AnalyzePersonAttendance$QueryRoot$Persons$HistoryConfessionHistoryAggregate
      confessionHistoryAggregate;

  late List<AnalyzePersonAttendance$QueryRoot$Persons$PersonsServices> services;

  List<AnalyzePersonAttendance$QueryRoot$Persons$Classes>? classes;

  late List<AnalyzePersonAttendance$QueryRoot$Persons$PersonsGroups> groups;

  @override
  List<Object?> get props => [
        id,
        name,
        kodasHistoryAggregate,
        confessionHistoryAggregate,
        services,
        classes,
        groups
      ];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzePersonAttendance$QueryRoot$PersonsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzePersonAttendance$QueryRoot extends JsonSerializable
    with EquatableMixin {
  AnalyzePersonAttendance$QueryRoot();

  factory AnalyzePersonAttendance$QueryRoot.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzePersonAttendance$QueryRootFromJson(json);

  @JsonKey(name: 'persons_by_pk')
  AnalyzePersonAttendance$QueryRoot$Persons? personsByPk;

  @override
  List<Object?> get props => [personsByPk];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzePersonAttendance$QueryRootToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzePersonServicing$QueryRoot$Persons$HistoryCallHistoryAggregate$HistoryCallHistoryAggregateFields$HistoryCallHistoryMaxFields
    extends JsonSerializable with EquatableMixin {
  AnalyzePersonServicing$QueryRoot$Persons$HistoryCallHistoryAggregate$HistoryCallHistoryAggregateFields$HistoryCallHistoryMaxFields();

  factory AnalyzePersonServicing$QueryRoot$Persons$HistoryCallHistoryAggregate$HistoryCallHistoryAggregateFields$HistoryCallHistoryMaxFields.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzePersonServicing$QueryRoot$Persons$HistoryCallHistoryAggregate$HistoryCallHistoryAggregateFields$HistoryCallHistoryMaxFieldsFromJson(
          json);

  DateTime? time;

  @override
  List<Object?> get props => [time];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzePersonServicing$QueryRoot$Persons$HistoryCallHistoryAggregate$HistoryCallHistoryAggregateFields$HistoryCallHistoryMaxFieldsToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzePersonServicing$QueryRoot$Persons$HistoryCallHistoryAggregate$HistoryCallHistoryAggregateFields
    extends JsonSerializable with EquatableMixin {
  AnalyzePersonServicing$QueryRoot$Persons$HistoryCallHistoryAggregate$HistoryCallHistoryAggregateFields();

  factory AnalyzePersonServicing$QueryRoot$Persons$HistoryCallHistoryAggregate$HistoryCallHistoryAggregateFields.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzePersonServicing$QueryRoot$Persons$HistoryCallHistoryAggregate$HistoryCallHistoryAggregateFieldsFromJson(
          json);

  late int count;

  AnalyzePersonServicing$QueryRoot$Persons$HistoryCallHistoryAggregate$HistoryCallHistoryAggregateFields$HistoryCallHistoryMaxFields?
      max;

  @override
  List<Object?> get props => [count, max];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzePersonServicing$QueryRoot$Persons$HistoryCallHistoryAggregate$HistoryCallHistoryAggregateFieldsToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzePersonServicing$QueryRoot$Persons$HistoryCallHistoryAggregate$HistoryCallHistory
    extends JsonSerializable with EquatableMixin {
  AnalyzePersonServicing$QueryRoot$Persons$HistoryCallHistoryAggregate$HistoryCallHistory();

  factory AnalyzePersonServicing$QueryRoot$Persons$HistoryCallHistoryAggregate$HistoryCallHistory.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzePersonServicing$QueryRoot$Persons$HistoryCallHistoryAggregate$HistoryCallHistoryFromJson(
          json);

  late DateTime time;

  @override
  List<Object?> get props => [time];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzePersonServicing$QueryRoot$Persons$HistoryCallHistoryAggregate$HistoryCallHistoryToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzePersonServicing$QueryRoot$Persons$HistoryCallHistoryAggregate
    extends JsonSerializable with EquatableMixin {
  AnalyzePersonServicing$QueryRoot$Persons$HistoryCallHistoryAggregate();

  factory AnalyzePersonServicing$QueryRoot$Persons$HistoryCallHistoryAggregate.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzePersonServicing$QueryRoot$Persons$HistoryCallHistoryAggregateFromJson(
          json);

  AnalyzePersonServicing$QueryRoot$Persons$HistoryCallHistoryAggregate$HistoryCallHistoryAggregateFields?
      aggregate;

  late List<
          AnalyzePersonServicing$QueryRoot$Persons$HistoryCallHistoryAggregate$HistoryCallHistory>
      nodes;

  @override
  List<Object?> get props => [aggregate, nodes];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzePersonServicing$QueryRoot$Persons$HistoryCallHistoryAggregateToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzePersonServicing$QueryRoot$Persons$HistoryVisitHistoryAggregate$HistoryVisitHistoryAggregateFields$HistoryVisitHistoryMaxFields
    extends JsonSerializable with EquatableMixin {
  AnalyzePersonServicing$QueryRoot$Persons$HistoryVisitHistoryAggregate$HistoryVisitHistoryAggregateFields$HistoryVisitHistoryMaxFields();

  factory AnalyzePersonServicing$QueryRoot$Persons$HistoryVisitHistoryAggregate$HistoryVisitHistoryAggregateFields$HistoryVisitHistoryMaxFields.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzePersonServicing$QueryRoot$Persons$HistoryVisitHistoryAggregate$HistoryVisitHistoryAggregateFields$HistoryVisitHistoryMaxFieldsFromJson(
          json);

  DateTime? time;

  @override
  List<Object?> get props => [time];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzePersonServicing$QueryRoot$Persons$HistoryVisitHistoryAggregate$HistoryVisitHistoryAggregateFields$HistoryVisitHistoryMaxFieldsToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzePersonServicing$QueryRoot$Persons$HistoryVisitHistoryAggregate$HistoryVisitHistoryAggregateFields
    extends JsonSerializable with EquatableMixin {
  AnalyzePersonServicing$QueryRoot$Persons$HistoryVisitHistoryAggregate$HistoryVisitHistoryAggregateFields();

  factory AnalyzePersonServicing$QueryRoot$Persons$HistoryVisitHistoryAggregate$HistoryVisitHistoryAggregateFields.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzePersonServicing$QueryRoot$Persons$HistoryVisitHistoryAggregate$HistoryVisitHistoryAggregateFieldsFromJson(
          json);

  late int count;

  AnalyzePersonServicing$QueryRoot$Persons$HistoryVisitHistoryAggregate$HistoryVisitHistoryAggregateFields$HistoryVisitHistoryMaxFields?
      max;

  @override
  List<Object?> get props => [count, max];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzePersonServicing$QueryRoot$Persons$HistoryVisitHistoryAggregate$HistoryVisitHistoryAggregateFieldsToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzePersonServicing$QueryRoot$Persons$HistoryVisitHistoryAggregate$HistoryVisitHistory
    extends JsonSerializable with EquatableMixin {
  AnalyzePersonServicing$QueryRoot$Persons$HistoryVisitHistoryAggregate$HistoryVisitHistory();

  factory AnalyzePersonServicing$QueryRoot$Persons$HistoryVisitHistoryAggregate$HistoryVisitHistory.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzePersonServicing$QueryRoot$Persons$HistoryVisitHistoryAggregate$HistoryVisitHistoryFromJson(
          json);

  late DateTime time;

  @override
  List<Object?> get props => [time];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzePersonServicing$QueryRoot$Persons$HistoryVisitHistoryAggregate$HistoryVisitHistoryToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzePersonServicing$QueryRoot$Persons$HistoryVisitHistoryAggregate
    extends JsonSerializable with EquatableMixin {
  AnalyzePersonServicing$QueryRoot$Persons$HistoryVisitHistoryAggregate();

  factory AnalyzePersonServicing$QueryRoot$Persons$HistoryVisitHistoryAggregate.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzePersonServicing$QueryRoot$Persons$HistoryVisitHistoryAggregateFromJson(
          json);

  AnalyzePersonServicing$QueryRoot$Persons$HistoryVisitHistoryAggregate$HistoryVisitHistoryAggregateFields?
      aggregate;

  late List<
          AnalyzePersonServicing$QueryRoot$Persons$HistoryVisitHistoryAggregate$HistoryVisitHistory>
      nodes;

  @override
  List<Object?> get props => [aggregate, nodes];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzePersonServicing$QueryRoot$Persons$HistoryVisitHistoryAggregateToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzePersonServicing$QueryRoot$Persons extends JsonSerializable
    with EquatableMixin {
  AnalyzePersonServicing$QueryRoot$Persons();

  factory AnalyzePersonServicing$QueryRoot$Persons.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzePersonServicing$QueryRoot$PersonsFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue id;

  late String name;

  @JsonKey(name: 'callHistory_aggregate')
  late AnalyzePersonServicing$QueryRoot$Persons$HistoryCallHistoryAggregate
      callHistoryAggregate;

  @JsonKey(name: 'visitHistory_aggregate')
  late AnalyzePersonServicing$QueryRoot$Persons$HistoryVisitHistoryAggregate
      visitHistoryAggregate;

  @override
  List<Object?> get props =>
      [id, name, callHistoryAggregate, visitHistoryAggregate];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzePersonServicing$QueryRoot$PersonsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzePersonServicing$QueryRoot extends JsonSerializable
    with EquatableMixin {
  AnalyzePersonServicing$QueryRoot();

  factory AnalyzePersonServicing$QueryRoot.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzePersonServicing$QueryRootFromJson(json);

  @JsonKey(name: 'persons_by_pk')
  AnalyzePersonServicing$QueryRoot$Persons? personsByPk;

  @override
  List<Object?> get props => [personsByPk];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzePersonServicing$QueryRootToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetPersonClassesAndGroups$QueryRoot$Persons$Classes$Services
    extends JsonSerializable with EquatableMixin {
  GetPersonClassesAndGroups$QueryRoot$Persons$Classes$Services();

  factory GetPersonClassesAndGroups$QueryRoot$Persons$Classes$Services.fromJson(
          Map<String, dynamic> json) =>
      _$GetPersonClassesAndGroups$QueryRoot$Persons$Classes$ServicesFromJson(
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
      _$GetPersonClassesAndGroups$QueryRoot$Persons$Classes$ServicesToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class GetPersonClassesAndGroups$QueryRoot$Persons$Classes
    extends JsonSerializable with EquatableMixin {
  GetPersonClassesAndGroups$QueryRoot$Persons$Classes();

  factory GetPersonClassesAndGroups$QueryRoot$Persons$Classes.fromJson(
          Map<String, dynamic> json) =>
      _$GetPersonClassesAndGroups$QueryRoot$Persons$ClassesFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue id;

  late String name;

  int? color;

  DateTime? photoUpdatedAt;

  late GetPersonClassesAndGroups$QueryRoot$Persons$Classes$Services service;

  @override
  List<Object?> get props => [id, name, color, photoUpdatedAt, service];
  @override
  Map<String, dynamic> toJson() =>
      _$GetPersonClassesAndGroups$QueryRoot$Persons$ClassesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetPersonClassesAndGroups$QueryRoot$Persons$PersonsGroups$Groups$Services
    extends JsonSerializable with EquatableMixin {
  GetPersonClassesAndGroups$QueryRoot$Persons$PersonsGroups$Groups$Services();

  factory GetPersonClassesAndGroups$QueryRoot$Persons$PersonsGroups$Groups$Services.fromJson(
          Map<String, dynamic> json) =>
      _$GetPersonClassesAndGroups$QueryRoot$Persons$PersonsGroups$Groups$ServicesFromJson(
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
      _$GetPersonClassesAndGroups$QueryRoot$Persons$PersonsGroups$Groups$ServicesToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class GetPersonClassesAndGroups$QueryRoot$Persons$PersonsGroups$Groups
    extends JsonSerializable with EquatableMixin {
  GetPersonClassesAndGroups$QueryRoot$Persons$PersonsGroups$Groups();

  factory GetPersonClassesAndGroups$QueryRoot$Persons$PersonsGroups$Groups.fromJson(
          Map<String, dynamic> json) =>
      _$GetPersonClassesAndGroups$QueryRoot$Persons$PersonsGroups$GroupsFromJson(
          json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue id;

  late String name;

  int? color;

  DateTime? photoUpdatedAt;

  late GetPersonClassesAndGroups$QueryRoot$Persons$PersonsGroups$Groups$Services
      service;

  @override
  List<Object?> get props => [id, name, color, photoUpdatedAt, service];
  @override
  Map<String, dynamic> toJson() =>
      _$GetPersonClassesAndGroups$QueryRoot$Persons$PersonsGroups$GroupsToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class GetPersonClassesAndGroups$QueryRoot$Persons$PersonsGroups
    extends JsonSerializable with EquatableMixin {
  GetPersonClassesAndGroups$QueryRoot$Persons$PersonsGroups();

  factory GetPersonClassesAndGroups$QueryRoot$Persons$PersonsGroups.fromJson(
          Map<String, dynamic> json) =>
      _$GetPersonClassesAndGroups$QueryRoot$Persons$PersonsGroupsFromJson(json);

  late GetPersonClassesAndGroups$QueryRoot$Persons$PersonsGroups$Groups group;

  @override
  List<Object?> get props => [group];
  @override
  Map<String, dynamic> toJson() =>
      _$GetPersonClassesAndGroups$QueryRoot$Persons$PersonsGroupsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetPersonClassesAndGroups$QueryRoot$Persons extends JsonSerializable
    with EquatableMixin {
  GetPersonClassesAndGroups$QueryRoot$Persons();

  factory GetPersonClassesAndGroups$QueryRoot$Persons.fromJson(
          Map<String, dynamic> json) =>
      _$GetPersonClassesAndGroups$QueryRoot$PersonsFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue id;

  late String name;

  List<GetPersonClassesAndGroups$QueryRoot$Persons$Classes>? classes;

  late List<GetPersonClassesAndGroups$QueryRoot$Persons$PersonsGroups> groups;

  @override
  List<Object?> get props => [id, name, classes, groups];
  @override
  Map<String, dynamic> toJson() =>
      _$GetPersonClassesAndGroups$QueryRoot$PersonsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetPersonClassesAndGroups$QueryRoot extends JsonSerializable
    with EquatableMixin {
  GetPersonClassesAndGroups$QueryRoot();

  factory GetPersonClassesAndGroups$QueryRoot.fromJson(
          Map<String, dynamic> json) =>
      _$GetPersonClassesAndGroups$QueryRootFromJson(json);

  @JsonKey(name: 'persons_by_pk')
  GetPersonClassesAndGroups$QueryRoot$Persons? personsByPk;

  @override
  List<Object?> get props => [personsByPk];
  @override
  Map<String, dynamic> toJson() =>
      _$GetPersonClassesAndGroups$QueryRootToJson(this);
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
class WatchPerson$SubscriptionRoot$Persons$Areas extends JsonSerializable
    with EquatableMixin {
  WatchPerson$SubscriptionRoot$Persons$Areas();

  factory WatchPerson$SubscriptionRoot$Persons$Areas.fromJson(
          Map<String, dynamic> json) =>
      _$WatchPerson$SubscriptionRoot$Persons$AreasFromJson(json);

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
      _$WatchPerson$SubscriptionRoot$Persons$AreasToJson(this);
}

@JsonSerializable(explicitToJson: true)
class WatchPerson$SubscriptionRoot$Persons$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields
    extends JsonSerializable with EquatableMixin {
  WatchPerson$SubscriptionRoot$Persons$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields();

  factory WatchPerson$SubscriptionRoot$Persons$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields.fromJson(
          Map<String, dynamic> json) =>
      _$WatchPerson$SubscriptionRoot$Persons$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFieldsFromJson(
          json);

  DateTime? time;

  @override
  List<Object?> get props => [time];
  @override
  Map<String, dynamic> toJson() =>
      _$WatchPerson$SubscriptionRoot$Persons$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFieldsToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class WatchPerson$SubscriptionRoot$Persons$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields
    extends JsonSerializable with EquatableMixin {
  WatchPerson$SubscriptionRoot$Persons$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields();

  factory WatchPerson$SubscriptionRoot$Persons$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields.fromJson(
          Map<String, dynamic> json) =>
      _$WatchPerson$SubscriptionRoot$Persons$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFieldsFromJson(
          json);

  WatchPerson$SubscriptionRoot$Persons$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields?
      max;

  @override
  List<Object?> get props => [max];
  @override
  Map<String, dynamic> toJson() =>
      _$WatchPerson$SubscriptionRoot$Persons$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFieldsToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class WatchPerson$SubscriptionRoot$Persons$Classes$HistoryAttendanceHistoryAggregate
    extends JsonSerializable with EquatableMixin {
  WatchPerson$SubscriptionRoot$Persons$Classes$HistoryAttendanceHistoryAggregate();

  factory WatchPerson$SubscriptionRoot$Persons$Classes$HistoryAttendanceHistoryAggregate.fromJson(
          Map<String, dynamic> json) =>
      _$WatchPerson$SubscriptionRoot$Persons$Classes$HistoryAttendanceHistoryAggregateFromJson(
          json);

  WatchPerson$SubscriptionRoot$Persons$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields?
      aggregate;

  @override
  List<Object?> get props => [aggregate];
  @override
  Map<String, dynamic> toJson() =>
      _$WatchPerson$SubscriptionRoot$Persons$Classes$HistoryAttendanceHistoryAggregateToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class WatchPerson$SubscriptionRoot$Persons$Classes extends JsonSerializable
    with EquatableMixin {
  WatchPerson$SubscriptionRoot$Persons$Classes();

  factory WatchPerson$SubscriptionRoot$Persons$Classes.fromJson(
          Map<String, dynamic> json) =>
      _$WatchPerson$SubscriptionRoot$Persons$ClassesFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue id;

  late String name;

  int? color;

  DateTime? photoUpdatedAt;

  @JsonKey(name: 'attendanceHistory_aggregate')
  late WatchPerson$SubscriptionRoot$Persons$Classes$HistoryAttendanceHistoryAggregate
      attendanceHistoryAggregate;

  @override
  List<Object?> get props =>
      [id, name, color, photoUpdatedAt, attendanceHistoryAggregate];
  @override
  Map<String, dynamic> toJson() =>
      _$WatchPerson$SubscriptionRoot$Persons$ClassesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class WatchPerson$SubscriptionRoot$Persons$Churches extends JsonSerializable
    with EquatableMixin {
  WatchPerson$SubscriptionRoot$Persons$Churches();

  factory WatchPerson$SubscriptionRoot$Persons$Churches.fromJson(
          Map<String, dynamic> json) =>
      _$WatchPerson$SubscriptionRoot$Persons$ChurchesFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue id;

  late String name;

  @override
  List<Object?> get props => [id, name];
  @override
  Map<String, dynamic> toJson() =>
      _$WatchPerson$SubscriptionRoot$Persons$ChurchesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class WatchPerson$SubscriptionRoot$Persons$Colleges extends JsonSerializable
    with EquatableMixin {
  WatchPerson$SubscriptionRoot$Persons$Colleges();

  factory WatchPerson$SubscriptionRoot$Persons$Colleges.fromJson(
          Map<String, dynamic> json) =>
      _$WatchPerson$SubscriptionRoot$Persons$CollegesFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue id;

  late String name;

  @override
  List<Object?> get props => [id, name];
  @override
  Map<String, dynamic> toJson() =>
      _$WatchPerson$SubscriptionRoot$Persons$CollegesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class WatchPerson$SubscriptionRoot$Persons$Families extends JsonSerializable
    with EquatableMixin {
  WatchPerson$SubscriptionRoot$Persons$Families();

  factory WatchPerson$SubscriptionRoot$Persons$Families.fromJson(
          Map<String, dynamic> json) =>
      _$WatchPerson$SubscriptionRoot$Persons$FamiliesFromJson(json);

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
      _$WatchPerson$SubscriptionRoot$Persons$FamiliesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class WatchPerson$SubscriptionRoot$Persons$Fathers$Churches
    extends JsonSerializable with EquatableMixin {
  WatchPerson$SubscriptionRoot$Persons$Fathers$Churches();

  factory WatchPerson$SubscriptionRoot$Persons$Fathers$Churches.fromJson(
          Map<String, dynamic> json) =>
      _$WatchPerson$SubscriptionRoot$Persons$Fathers$ChurchesFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue id;

  late String name;

  @override
  List<Object?> get props => [id, name];
  @override
  Map<String, dynamic> toJson() =>
      _$WatchPerson$SubscriptionRoot$Persons$Fathers$ChurchesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class WatchPerson$SubscriptionRoot$Persons$Fathers extends JsonSerializable
    with EquatableMixin {
  WatchPerson$SubscriptionRoot$Persons$Fathers();

  factory WatchPerson$SubscriptionRoot$Persons$Fathers.fromJson(
          Map<String, dynamic> json) =>
      _$WatchPerson$SubscriptionRoot$Persons$FathersFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue id;

  late String name;

  WatchPerson$SubscriptionRoot$Persons$Fathers$Churches? church;

  @override
  List<Object?> get props => [id, name, church];
  @override
  Map<String, dynamic> toJson() =>
      _$WatchPerson$SubscriptionRoot$Persons$FathersToJson(this);
}

@JsonSerializable(explicitToJson: true)
class WatchPerson$SubscriptionRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields
    extends JsonSerializable with EquatableMixin {
  WatchPerson$SubscriptionRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields();

  factory WatchPerson$SubscriptionRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields.fromJson(
          Map<String, dynamic> json) =>
      _$WatchPerson$SubscriptionRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFieldsFromJson(
          json);

  DateTime? time;

  @override
  List<Object?> get props => [time];
  @override
  Map<String, dynamic> toJson() =>
      _$WatchPerson$SubscriptionRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFieldsToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class WatchPerson$SubscriptionRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields
    extends JsonSerializable with EquatableMixin {
  WatchPerson$SubscriptionRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields();

  factory WatchPerson$SubscriptionRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields.fromJson(
          Map<String, dynamic> json) =>
      _$WatchPerson$SubscriptionRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFieldsFromJson(
          json);

  WatchPerson$SubscriptionRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields?
      max;

  @override
  List<Object?> get props => [max];
  @override
  Map<String, dynamic> toJson() =>
      _$WatchPerson$SubscriptionRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFieldsToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class WatchPerson$SubscriptionRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate
    extends JsonSerializable with EquatableMixin {
  WatchPerson$SubscriptionRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate();

  factory WatchPerson$SubscriptionRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate.fromJson(
          Map<String, dynamic> json) =>
      _$WatchPerson$SubscriptionRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregateFromJson(
          json);

  WatchPerson$SubscriptionRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields?
      aggregate;

  @override
  List<Object?> get props => [aggregate];
  @override
  Map<String, dynamic> toJson() =>
      _$WatchPerson$SubscriptionRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregateToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class WatchPerson$SubscriptionRoot$Persons$PersonsGroups$Groups
    extends JsonSerializable with EquatableMixin {
  WatchPerson$SubscriptionRoot$Persons$PersonsGroups$Groups();

  factory WatchPerson$SubscriptionRoot$Persons$PersonsGroups$Groups.fromJson(
          Map<String, dynamic> json) =>
      _$WatchPerson$SubscriptionRoot$Persons$PersonsGroups$GroupsFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue id;

  late String name;

  int? color;

  DateTime? photoUpdatedAt;

  @JsonKey(name: 'attendanceHistory_aggregate')
  late WatchPerson$SubscriptionRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate
      attendanceHistoryAggregate;

  @override
  List<Object?> get props =>
      [id, name, color, photoUpdatedAt, attendanceHistoryAggregate];
  @override
  Map<String, dynamic> toJson() =>
      _$WatchPerson$SubscriptionRoot$Persons$PersonsGroups$GroupsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class WatchPerson$SubscriptionRoot$Persons$PersonsGroups
    extends JsonSerializable with EquatableMixin {
  WatchPerson$SubscriptionRoot$Persons$PersonsGroups();

  factory WatchPerson$SubscriptionRoot$Persons$PersonsGroups.fromJson(
          Map<String, dynamic> json) =>
      _$WatchPerson$SubscriptionRoot$Persons$PersonsGroupsFromJson(json);

  late WatchPerson$SubscriptionRoot$Persons$PersonsGroups$Groups group;

  @override
  List<Object?> get props => [group];
  @override
  Map<String, dynamic> toJson() =>
      _$WatchPerson$SubscriptionRoot$Persons$PersonsGroupsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class WatchPerson$SubscriptionRoot$Persons$Jobs extends JsonSerializable
    with EquatableMixin {
  WatchPerson$SubscriptionRoot$Persons$Jobs();

  factory WatchPerson$SubscriptionRoot$Persons$Jobs.fromJson(
          Map<String, dynamic> json) =>
      _$WatchPerson$SubscriptionRoot$Persons$JobsFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue id;

  late String name;

  @override
  List<Object?> get props => [id, name];
  @override
  Map<String, dynamic> toJson() =>
      _$WatchPerson$SubscriptionRoot$Persons$JobsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class WatchPerson$SubscriptionRoot$Persons$PersonTypes extends JsonSerializable
    with EquatableMixin {
  WatchPerson$SubscriptionRoot$Persons$PersonTypes();

  factory WatchPerson$SubscriptionRoot$Persons$PersonTypes.fromJson(
          Map<String, dynamic> json) =>
      _$WatchPerson$SubscriptionRoot$Persons$PersonTypesFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue id;

  late String name;

  @override
  List<Object?> get props => [id, name];
  @override
  Map<String, dynamic> toJson() =>
      _$WatchPerson$SubscriptionRoot$Persons$PersonTypesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class WatchPerson$SubscriptionRoot$Persons$Qualifications
    extends JsonSerializable with EquatableMixin {
  WatchPerson$SubscriptionRoot$Persons$Qualifications();

  factory WatchPerson$SubscriptionRoot$Persons$Qualifications.fromJson(
          Map<String, dynamic> json) =>
      _$WatchPerson$SubscriptionRoot$Persons$QualificationsFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue id;

  late String name;

  @override
  List<Object?> get props => [id, name];
  @override
  Map<String, dynamic> toJson() =>
      _$WatchPerson$SubscriptionRoot$Persons$QualificationsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class WatchPerson$SubscriptionRoot$Persons$Schools extends JsonSerializable
    with EquatableMixin {
  WatchPerson$SubscriptionRoot$Persons$Schools();

  factory WatchPerson$SubscriptionRoot$Persons$Schools.fromJson(
          Map<String, dynamic> json) =>
      _$WatchPerson$SubscriptionRoot$Persons$SchoolsFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue id;

  late String name;

  @override
  List<Object?> get props => [id, name];
  @override
  Map<String, dynamic> toJson() =>
      _$WatchPerson$SubscriptionRoot$Persons$SchoolsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class WatchPerson$SubscriptionRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields
    extends JsonSerializable with EquatableMixin {
  WatchPerson$SubscriptionRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields();

  factory WatchPerson$SubscriptionRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields.fromJson(
          Map<String, dynamic> json) =>
      _$WatchPerson$SubscriptionRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFieldsFromJson(
          json);

  DateTime? time;

  @override
  List<Object?> get props => [time];
  @override
  Map<String, dynamic> toJson() =>
      _$WatchPerson$SubscriptionRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFieldsToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class WatchPerson$SubscriptionRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields
    extends JsonSerializable with EquatableMixin {
  WatchPerson$SubscriptionRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields();

  factory WatchPerson$SubscriptionRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields.fromJson(
          Map<String, dynamic> json) =>
      _$WatchPerson$SubscriptionRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFieldsFromJson(
          json);

  WatchPerson$SubscriptionRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields?
      max;

  @override
  List<Object?> get props => [max];
  @override
  Map<String, dynamic> toJson() =>
      _$WatchPerson$SubscriptionRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFieldsToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class WatchPerson$SubscriptionRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate
    extends JsonSerializable with EquatableMixin {
  WatchPerson$SubscriptionRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate();

  factory WatchPerson$SubscriptionRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate.fromJson(
          Map<String, dynamic> json) =>
      _$WatchPerson$SubscriptionRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregateFromJson(
          json);

  WatchPerson$SubscriptionRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields?
      aggregate;

  @override
  List<Object?> get props => [aggregate];
  @override
  Map<String, dynamic> toJson() =>
      _$WatchPerson$SubscriptionRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregateToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class WatchPerson$SubscriptionRoot$Persons$PersonsServices$Services
    extends JsonSerializable with EquatableMixin {
  WatchPerson$SubscriptionRoot$Persons$PersonsServices$Services();

  factory WatchPerson$SubscriptionRoot$Persons$PersonsServices$Services.fromJson(
          Map<String, dynamic> json) =>
      _$WatchPerson$SubscriptionRoot$Persons$PersonsServices$ServicesFromJson(
          json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue id;

  late String name;

  int? color;

  DateTime? photoUpdatedAt;

  @JsonKey(name: 'attendanceHistory_aggregate')
  late WatchPerson$SubscriptionRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate
      attendanceHistoryAggregate;

  @override
  List<Object?> get props =>
      [id, name, color, photoUpdatedAt, attendanceHistoryAggregate];
  @override
  Map<String, dynamic> toJson() =>
      _$WatchPerson$SubscriptionRoot$Persons$PersonsServices$ServicesToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class WatchPerson$SubscriptionRoot$Persons$PersonsServices
    extends JsonSerializable with EquatableMixin {
  WatchPerson$SubscriptionRoot$Persons$PersonsServices();

  factory WatchPerson$SubscriptionRoot$Persons$PersonsServices.fromJson(
          Map<String, dynamic> json) =>
      _$WatchPerson$SubscriptionRoot$Persons$PersonsServicesFromJson(json);

  late WatchPerson$SubscriptionRoot$Persons$PersonsServices$Services service;

  @override
  List<Object?> get props => [service];
  @override
  Map<String, dynamic> toJson() =>
      _$WatchPerson$SubscriptionRoot$Persons$PersonsServicesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class WatchPerson$SubscriptionRoot$Persons$ShammasLevels
    extends JsonSerializable with EquatableMixin {
  WatchPerson$SubscriptionRoot$Persons$ShammasLevels();

  factory WatchPerson$SubscriptionRoot$Persons$ShammasLevels.fromJson(
          Map<String, dynamic> json) =>
      _$WatchPerson$SubscriptionRoot$Persons$ShammasLevelsFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue id;

  late String name;

  late int order;

  @override
  List<Object?> get props => [id, name, order];
  @override
  Map<String, dynamic> toJson() =>
      _$WatchPerson$SubscriptionRoot$Persons$ShammasLevelsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class WatchPerson$SubscriptionRoot$Persons$States extends JsonSerializable
    with EquatableMixin {
  WatchPerson$SubscriptionRoot$Persons$States();

  factory WatchPerson$SubscriptionRoot$Persons$States.fromJson(
          Map<String, dynamic> json) =>
      _$WatchPerson$SubscriptionRoot$Persons$StatesFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue id;

  late int color;

  late String name;

  @override
  List<Object?> get props => [id, color, name];
  @override
  Map<String, dynamic> toJson() =>
      _$WatchPerson$SubscriptionRoot$Persons$StatesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class WatchPerson$SubscriptionRoot$Persons$Streets extends JsonSerializable
    with EquatableMixin {
  WatchPerson$SubscriptionRoot$Persons$Streets();

  factory WatchPerson$SubscriptionRoot$Persons$Streets.fromJson(
          Map<String, dynamic> json) =>
      _$WatchPerson$SubscriptionRoot$Persons$StreetsFromJson(json);

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
      _$WatchPerson$SubscriptionRoot$Persons$StreetsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class WatchPerson$SubscriptionRoot$Persons$StudyYears extends JsonSerializable
    with EquatableMixin {
  WatchPerson$SubscriptionRoot$Persons$StudyYears();

  factory WatchPerson$SubscriptionRoot$Persons$StudyYears.fromJson(
          Map<String, dynamic> json) =>
      _$WatchPerson$SubscriptionRoot$Persons$StudyYearsFromJson(json);

  late String name;

  late int order;

  @override
  List<Object?> get props => [name, order];
  @override
  Map<String, dynamic> toJson() =>
      _$WatchPerson$SubscriptionRoot$Persons$StudyYearsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class WatchPerson$SubscriptionRoot$Persons$PersonsTags$Tags
    extends JsonSerializable with EquatableMixin {
  WatchPerson$SubscriptionRoot$Persons$PersonsTags$Tags();

  factory WatchPerson$SubscriptionRoot$Persons$PersonsTags$Tags.fromJson(
          Map<String, dynamic> json) =>
      _$WatchPerson$SubscriptionRoot$Persons$PersonsTags$TagsFromJson(json);

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
      _$WatchPerson$SubscriptionRoot$Persons$PersonsTags$TagsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class WatchPerson$SubscriptionRoot$Persons$PersonsTags extends JsonSerializable
    with EquatableMixin {
  WatchPerson$SubscriptionRoot$Persons$PersonsTags();

  factory WatchPerson$SubscriptionRoot$Persons$PersonsTags.fromJson(
          Map<String, dynamic> json) =>
      _$WatchPerson$SubscriptionRoot$Persons$PersonsTagsFromJson(json);

  late WatchPerson$SubscriptionRoot$Persons$PersonsTags$Tags tag;

  @override
  List<Object?> get props => [tag];
  @override
  Map<String, dynamic> toJson() =>
      _$WatchPerson$SubscriptionRoot$Persons$PersonsTagsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class WatchPerson$SubscriptionRoot$Persons extends JsonSerializable
    with EquatableMixin {
  WatchPerson$SubscriptionRoot$Persons();

  factory WatchPerson$SubscriptionRoot$Persons.fromJson(
          Map<String, dynamic> json) =>
      _$WatchPerson$SubscriptionRoot$PersonsFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue id;

  late String name;

  int? color;

  DateTime? photoUpdatedAt;

  String? address;

  DateTime? birthdate;

  List<WatchPerson$SubscriptionRoot$Persons$Areas>? areas;

  List<WatchPerson$SubscriptionRoot$Persons$Classes>? classes;

  WatchPerson$SubscriptionRoot$Persons$Churches? church;

  WatchPerson$SubscriptionRoot$Persons$Colleges? college;

  WatchPerson$SubscriptionRoot$Persons$Families? family;

  WatchPerson$SubscriptionRoot$Persons$Fathers? father;

  late bool gender;

  @JsonKey(
      fromJson: fromGraphQLGeographyNullableToDartJsonNullable,
      toJson: fromDartJsonNullableToGraphQLGeographyNullable)
  Json? geolocation;

  late List<WatchPerson$SubscriptionRoot$Persons$PersonsGroups> groups;

  late bool isServant;

  late bool isShammas;

  late bool isStudent;

  WatchPerson$SubscriptionRoot$Persons$Jobs? job;

  String? jobDescription;

  @JsonKey(
      fromJson: fromGraphQLJsonbNullableToDartJsonNullable,
      toJson: fromDartJsonNullableToGraphQLJsonbNullable)
  Json? lastCall;

  @JsonKey(
      fromJson: fromGraphQLJsonbNullableToDartJsonNullable,
      toJson: fromDartJsonNullableToGraphQLJsonbNullable)
  Json? lastConfession;

  @JsonKey(
      fromJson: fromGraphQLJsonbNullableToDartJsonNullable,
      toJson: fromDartJsonNullableToGraphQLJsonbNullable)
  Json? lastEdit;

  @JsonKey(
      fromJson: fromGraphQLJsonbNullableToDartJsonNullable,
      toJson: fromDartJsonNullableToGraphQLJsonbNullable)
  Json? lastKodas;

  @JsonKey(
      fromJson: fromGraphQLJsonbNullableToDartJsonNullable,
      toJson: fromDartJsonNullableToGraphQLJsonbNullable)
  Json? lastVisit;

  String? mainPhone;

  String? notes;

  @JsonKey(
      fromJson: fromGraphQLJsonbToDartJson, toJson: fromDartJsonToGraphQLJsonb)
  late Json otherPhones;

  WatchPerson$SubscriptionRoot$Persons$PersonTypes? personType;

  WatchPerson$SubscriptionRoot$Persons$Qualifications? qualification;

  WatchPerson$SubscriptionRoot$Persons$Schools? school;

  late List<WatchPerson$SubscriptionRoot$Persons$PersonsServices> services;

  WatchPerson$SubscriptionRoot$Persons$ShammasLevels? shammasLevel;

  WatchPerson$SubscriptionRoot$Persons$States? state;

  List<WatchPerson$SubscriptionRoot$Persons$Streets>? streets;

  WatchPerson$SubscriptionRoot$Persons$StudyYears? studyYear;

  late List<WatchPerson$SubscriptionRoot$Persons$PersonsTags> tags;

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? uid;

  @override
  List<Object?> get props => [
        id,
        name,
        color,
        photoUpdatedAt,
        address,
        birthdate,
        areas,
        classes,
        church,
        college,
        family,
        father,
        gender,
        geolocation,
        groups,
        isServant,
        isShammas,
        isStudent,
        job,
        jobDescription,
        lastCall,
        lastConfession,
        lastEdit,
        lastKodas,
        lastVisit,
        mainPhone,
        notes,
        otherPhones,
        personType,
        qualification,
        school,
        services,
        shammasLevel,
        state,
        streets,
        studyYear,
        tags,
        uid
      ];
  @override
  Map<String, dynamic> toJson() =>
      _$WatchPerson$SubscriptionRoot$PersonsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class WatchPerson$SubscriptionRoot extends JsonSerializable
    with EquatableMixin {
  WatchPerson$SubscriptionRoot();

  factory WatchPerson$SubscriptionRoot.fromJson(Map<String, dynamic> json) =>
      _$WatchPerson$SubscriptionRootFromJson(json);

  @JsonKey(name: 'persons_by_pk')
  WatchPerson$SubscriptionRoot$Persons? personsByPk;

  @override
  List<Object?> get props => [personsByPk];
  @override
  Map<String, dynamic> toJson() => _$WatchPerson$SubscriptionRootToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CallHistory$SubscriptionRoot$HistoryCallHistory$Users
    extends JsonSerializable with EquatableMixin {
  CallHistory$SubscriptionRoot$HistoryCallHistory$Users();

  factory CallHistory$SubscriptionRoot$HistoryCallHistory$Users.fromJson(
          Map<String, dynamic> json) =>
      _$CallHistory$SubscriptionRoot$HistoryCallHistory$UsersFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue uid;

  late String name;

  DateTime? photoUpdatedAt;

  @override
  List<Object?> get props => [uid, name, photoUpdatedAt];
  @override
  Map<String, dynamic> toJson() =>
      _$CallHistory$SubscriptionRoot$HistoryCallHistory$UsersToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CallHistory$SubscriptionRoot$HistoryCallHistory extends JsonSerializable
    with EquatableMixin {
  CallHistory$SubscriptionRoot$HistoryCallHistory();

  factory CallHistory$SubscriptionRoot$HistoryCallHistory.fromJson(
          Map<String, dynamic> json) =>
      _$CallHistory$SubscriptionRoot$HistoryCallHistoryFromJson(json);

  late DateTime time;

  CallHistory$SubscriptionRoot$HistoryCallHistory$Users? user;

  @override
  List<Object?> get props => [time, user];
  @override
  Map<String, dynamic> toJson() =>
      _$CallHistory$SubscriptionRoot$HistoryCallHistoryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CallHistory$SubscriptionRoot extends JsonSerializable
    with EquatableMixin {
  CallHistory$SubscriptionRoot();

  factory CallHistory$SubscriptionRoot.fromJson(Map<String, dynamic> json) =>
      _$CallHistory$SubscriptionRootFromJson(json);

  @JsonKey(name: 'history_call_history')
  late List<CallHistory$SubscriptionRoot$HistoryCallHistory> historyCallHistory;

  @override
  List<Object?> get props => [historyCallHistory];
  @override
  Map<String, dynamic> toJson() => _$CallHistory$SubscriptionRootToJson(this);
}

@JsonSerializable(explicitToJson: true)
class VisitHistory$SubscriptionRoot$HistoryVisitHistory$Users
    extends JsonSerializable with EquatableMixin {
  VisitHistory$SubscriptionRoot$HistoryVisitHistory$Users();

  factory VisitHistory$SubscriptionRoot$HistoryVisitHistory$Users.fromJson(
          Map<String, dynamic> json) =>
      _$VisitHistory$SubscriptionRoot$HistoryVisitHistory$UsersFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue uid;

  late String name;

  DateTime? photoUpdatedAt;

  @override
  List<Object?> get props => [uid, name, photoUpdatedAt];
  @override
  Map<String, dynamic> toJson() =>
      _$VisitHistory$SubscriptionRoot$HistoryVisitHistory$UsersToJson(this);
}

@JsonSerializable(explicitToJson: true)
class VisitHistory$SubscriptionRoot$HistoryVisitHistory extends JsonSerializable
    with EquatableMixin {
  VisitHistory$SubscriptionRoot$HistoryVisitHistory();

  factory VisitHistory$SubscriptionRoot$HistoryVisitHistory.fromJson(
          Map<String, dynamic> json) =>
      _$VisitHistory$SubscriptionRoot$HistoryVisitHistoryFromJson(json);

  late DateTime time;

  VisitHistory$SubscriptionRoot$HistoryVisitHistory$Users? user;

  @override
  List<Object?> get props => [time, user];
  @override
  Map<String, dynamic> toJson() =>
      _$VisitHistory$SubscriptionRoot$HistoryVisitHistoryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class VisitHistory$SubscriptionRoot extends JsonSerializable
    with EquatableMixin {
  VisitHistory$SubscriptionRoot();

  factory VisitHistory$SubscriptionRoot.fromJson(Map<String, dynamic> json) =>
      _$VisitHistory$SubscriptionRootFromJson(json);

  @JsonKey(name: 'history_visit_history')
  late List<VisitHistory$SubscriptionRoot$HistoryVisitHistory>
      historyVisitHistory;

  @override
  List<Object?> get props => [historyVisitHistory];
  @override
  Map<String, dynamic> toJson() => _$VisitHistory$SubscriptionRootToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ConfessionHistory$SubscriptionRoot$HistoryConfessionHistory$Users
    extends JsonSerializable with EquatableMixin {
  ConfessionHistory$SubscriptionRoot$HistoryConfessionHistory$Users();

  factory ConfessionHistory$SubscriptionRoot$HistoryConfessionHistory$Users.fromJson(
          Map<String, dynamic> json) =>
      _$ConfessionHistory$SubscriptionRoot$HistoryConfessionHistory$UsersFromJson(
          json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue uid;

  late String name;

  DateTime? photoUpdatedAt;

  @override
  List<Object?> get props => [uid, name, photoUpdatedAt];
  @override
  Map<String, dynamic> toJson() =>
      _$ConfessionHistory$SubscriptionRoot$HistoryConfessionHistory$UsersToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class ConfessionHistory$SubscriptionRoot$HistoryConfessionHistory
    extends JsonSerializable with EquatableMixin {
  ConfessionHistory$SubscriptionRoot$HistoryConfessionHistory();

  factory ConfessionHistory$SubscriptionRoot$HistoryConfessionHistory.fromJson(
          Map<String, dynamic> json) =>
      _$ConfessionHistory$SubscriptionRoot$HistoryConfessionHistoryFromJson(
          json);

  DateTime? time;

  late ConfessionHistory$SubscriptionRoot$HistoryConfessionHistory$Users user;

  @override
  List<Object?> get props => [time, user];
  @override
  Map<String, dynamic> toJson() =>
      _$ConfessionHistory$SubscriptionRoot$HistoryConfessionHistoryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ConfessionHistory$SubscriptionRoot extends JsonSerializable
    with EquatableMixin {
  ConfessionHistory$SubscriptionRoot();

  factory ConfessionHistory$SubscriptionRoot.fromJson(
          Map<String, dynamic> json) =>
      _$ConfessionHistory$SubscriptionRootFromJson(json);

  @JsonKey(name: 'history_confession_history')
  late List<ConfessionHistory$SubscriptionRoot$HistoryConfessionHistory>
      historyConfessionHistory;

  @override
  List<Object?> get props => [historyConfessionHistory];
  @override
  Map<String, dynamic> toJson() =>
      _$ConfessionHistory$SubscriptionRootToJson(this);
}

@JsonSerializable(explicitToJson: true)
class KodasHistory$SubscriptionRoot$HistoryKodasHistory$Users
    extends JsonSerializable with EquatableMixin {
  KodasHistory$SubscriptionRoot$HistoryKodasHistory$Users();

  factory KodasHistory$SubscriptionRoot$HistoryKodasHistory$Users.fromJson(
          Map<String, dynamic> json) =>
      _$KodasHistory$SubscriptionRoot$HistoryKodasHistory$UsersFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue uid;

  late String name;

  DateTime? photoUpdatedAt;

  @override
  List<Object?> get props => [uid, name, photoUpdatedAt];
  @override
  Map<String, dynamic> toJson() =>
      _$KodasHistory$SubscriptionRoot$HistoryKodasHistory$UsersToJson(this);
}

@JsonSerializable(explicitToJson: true)
class KodasHistory$SubscriptionRoot$HistoryKodasHistory extends JsonSerializable
    with EquatableMixin {
  KodasHistory$SubscriptionRoot$HistoryKodasHistory();

  factory KodasHistory$SubscriptionRoot$HistoryKodasHistory.fromJson(
          Map<String, dynamic> json) =>
      _$KodasHistory$SubscriptionRoot$HistoryKodasHistoryFromJson(json);

  DateTime? time;

  late KodasHistory$SubscriptionRoot$HistoryKodasHistory$Users user;

  @override
  List<Object?> get props => [time, user];
  @override
  Map<String, dynamic> toJson() =>
      _$KodasHistory$SubscriptionRoot$HistoryKodasHistoryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class KodasHistory$SubscriptionRoot extends JsonSerializable
    with EquatableMixin {
  KodasHistory$SubscriptionRoot();

  factory KodasHistory$SubscriptionRoot.fromJson(Map<String, dynamic> json) =>
      _$KodasHistory$SubscriptionRootFromJson(json);

  @JsonKey(name: 'history_kodas_history')
  late List<KodasHistory$SubscriptionRoot$HistoryKodasHistory>
      historyKodasHistory;

  @override
  List<Object?> get props => [historyKodasHistory];
  @override
  Map<String, dynamic> toJson() => _$KodasHistory$SubscriptionRootToJson(this);
}

@JsonSerializable(explicitToJson: true)
class EditHistory$SubscriptionRoot$HistoryEditHistory$Users
    extends JsonSerializable with EquatableMixin {
  EditHistory$SubscriptionRoot$HistoryEditHistory$Users();

  factory EditHistory$SubscriptionRoot$HistoryEditHistory$Users.fromJson(
          Map<String, dynamic> json) =>
      _$EditHistory$SubscriptionRoot$HistoryEditHistory$UsersFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue uid;

  late String name;

  DateTime? photoUpdatedAt;

  @override
  List<Object?> get props => [uid, name, photoUpdatedAt];
  @override
  Map<String, dynamic> toJson() =>
      _$EditHistory$SubscriptionRoot$HistoryEditHistory$UsersToJson(this);
}

@JsonSerializable(explicitToJson: true)
class EditHistory$SubscriptionRoot$HistoryEditHistory extends JsonSerializable
    with EquatableMixin {
  EditHistory$SubscriptionRoot$HistoryEditHistory();

  factory EditHistory$SubscriptionRoot$HistoryEditHistory.fromJson(
          Map<String, dynamic> json) =>
      _$EditHistory$SubscriptionRoot$HistoryEditHistoryFromJson(json);

  late DateTime time;

  EditHistory$SubscriptionRoot$HistoryEditHistory$Users? user;

  @override
  List<Object?> get props => [time, user];
  @override
  Map<String, dynamic> toJson() =>
      _$EditHistory$SubscriptionRoot$HistoryEditHistoryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class EditHistory$SubscriptionRoot extends JsonSerializable
    with EquatableMixin {
  EditHistory$SubscriptionRoot();

  factory EditHistory$SubscriptionRoot.fromJson(Map<String, dynamic> json) =>
      _$EditHistory$SubscriptionRootFromJson(json);

  @JsonKey(name: 'history_edit_history')
  late List<EditHistory$SubscriptionRoot$HistoryEditHistory> historyEditHistory;

  @override
  List<Object?> get props => [historyEditHistory];
  @override
  Map<String, dynamic> toJson() => _$EditHistory$SubscriptionRootToJson(this);
}

@JsonSerializable(explicitToJson: true)
class HistoryEditHistoryBoolExp extends JsonSerializable with EquatableMixin {
  HistoryEditHistoryBoolExp(
      {this.$and,
      this.$not,
      this.$or,
      this.auditId,
      this.isUserAllowedToRead,
      this.recordId,
      this.recordedBy,
      this.table,
      this.time,
      this.user,
      this.userRole});

  factory HistoryEditHistoryBoolExp.fromJson(Map<String, dynamic> json) =>
      _$HistoryEditHistoryBoolExpFromJson(json);

  @JsonKey(name: '_and')
  List<HistoryEditHistoryBoolExp>? $and;

  @JsonKey(name: '_not')
  HistoryEditHistoryBoolExp? $not;

  @JsonKey(name: '_or')
  List<HistoryEditHistoryBoolExp>? $or;

  UuidComparisonExp? auditId;

  BooleanComparisonExp? isUserAllowedToRead;

  UuidComparisonExp? recordId;

  UuidComparisonExp? recordedBy;

  NameComparisonExp? table;

  TimestamptzComparisonExp? time;

  UsersBoolExp? user;

  StringComparisonExp? userRole;

  @override
  List<Object?> get props => [
        $and,
        $not,
        $or,
        auditId,
        isUserAllowedToRead,
        recordId,
        recordedBy,
        table,
        time,
        user,
        userRole
      ];
  @override
  Map<String, dynamic> toJson() => _$HistoryEditHistoryBoolExpToJson(this);
}

@JsonSerializable(explicitToJson: true)
class NameComparisonExp extends JsonSerializable with EquatableMixin {
  NameComparisonExp(
      {this.$eq,
      this.$gt,
      this.$gte,
      this.$in,
      this.$isNull,
      this.$lt,
      this.$lte,
      this.$neq,
      this.$nin});

  factory NameComparisonExp.fromJson(Map<String, dynamic> json) =>
      _$NameComparisonExpFromJson(json);

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
  Map<String, dynamic> toJson() => _$NameComparisonExpToJson(this);
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
class GetServicesStream$SubscriptionRoot$Services$Classes$StudyYears
    extends JsonSerializable with EquatableMixin {
  GetServicesStream$SubscriptionRoot$Services$Classes$StudyYears();

  factory GetServicesStream$SubscriptionRoot$Services$Classes$StudyYears.fromJson(
          Map<String, dynamic> json) =>
      _$GetServicesStream$SubscriptionRoot$Services$Classes$StudyYearsFromJson(
          json);

  late String name;

  late int order;

  @override
  List<Object?> get props => [name, order];
  @override
  Map<String, dynamic> toJson() =>
      _$GetServicesStream$SubscriptionRoot$Services$Classes$StudyYearsToJson(
          this);
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

  late GetServicesStream$SubscriptionRoot$Services$Classes$StudyYears studyYear;

  @override
  List<Object?> get props => [id, name, color, photoUpdatedAt, studyYear];
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
class GetStreetsStream$SubscriptionRoot$Streets extends JsonSerializable
    with EquatableMixin {
  GetStreetsStream$SubscriptionRoot$Streets();

  factory GetStreetsStream$SubscriptionRoot$Streets.fromJson(
          Map<String, dynamic> json) =>
      _$GetStreetsStream$SubscriptionRoot$StreetsFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue id;

  late String name;

  @JsonKey(
      fromJson: fromGraphQLGeographyNullableToDartJsonNullable,
      toJson: fromDartJsonNullableToGraphQLGeographyNullable)
  Json? line;

  int? color;

  DateTime? photoUpdatedAt;

  @override
  List<Object?> get props => [id, name, line, color, photoUpdatedAt];
  @override
  Map<String, dynamic> toJson() =>
      _$GetStreetsStream$SubscriptionRoot$StreetsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetStreetsStream$SubscriptionRoot extends JsonSerializable
    with EquatableMixin {
  GetStreetsStream$SubscriptionRoot();

  factory GetStreetsStream$SubscriptionRoot.fromJson(
          Map<String, dynamic> json) =>
      _$GetStreetsStream$SubscriptionRootFromJson(json);

  late List<GetStreetsStream$SubscriptionRoot$Streets> streets;

  @override
  List<Object?> get props => [streets];
  @override
  Map<String, dynamic> toJson() =>
      _$GetStreetsStream$SubscriptionRootToJson(this);
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
class GetUserInfoStream$SubscriptionRoot$Users$UsersData
    extends JsonSerializable with EquatableMixin {
  GetUserInfoStream$SubscriptionRoot$Users$UsersData();

  factory GetUserInfoStream$SubscriptionRoot$Users$UsersData.fromJson(
          Map<String, dynamic> json) =>
      _$GetUserInfoStream$SubscriptionRoot$Users$UsersDataFromJson(json);

  late String firebaseAuthUid;

  late String email;

  late List<String> permissions;

  @override
  List<Object?> get props => [firebaseAuthUid, email, permissions];
  @override
  Map<String, dynamic> toJson() =>
      _$GetUserInfoStream$SubscriptionRoot$Users$UsersDataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetUserInfoStream$SubscriptionRoot$Users$Persons$ShammasLevels
    extends JsonSerializable with EquatableMixin {
  GetUserInfoStream$SubscriptionRoot$Users$Persons$ShammasLevels();

  factory GetUserInfoStream$SubscriptionRoot$Users$Persons$ShammasLevels.fromJson(
          Map<String, dynamic> json) =>
      _$GetUserInfoStream$SubscriptionRoot$Users$Persons$ShammasLevelsFromJson(
          json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue id;

  late String name;

  late int order;

  @override
  List<Object?> get props => [id, name, order];
  @override
  Map<String, dynamic> toJson() =>
      _$GetUserInfoStream$SubscriptionRoot$Users$Persons$ShammasLevelsToJson(
          this);
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

  @JsonKey(
      fromJson: fromGraphQLGeographyNullableToDartJsonNullable,
      toJson: fromDartJsonNullableToGraphQLGeographyNullable)
  Json? geolocation;

  String? mainPhone;

  @JsonKey(
      fromJson: fromGraphQLJsonbToDartJson, toJson: fromDartJsonToGraphQLJsonb)
  late Json otherPhones;

  DateTime? birthdate;

  late bool gender;

  late bool isShammas;

  GetUserInfoStream$SubscriptionRoot$Users$Persons$ShammasLevels? shammasLevel;

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

  @JsonKey(
      fromJson: fromGraphQLJsonbNullableToDartJsonNullable,
      toJson: fromDartJsonNullableToGraphQLJsonbNullable)
  Json? lastKodas;

  @JsonKey(
      fromJson: fromGraphQLJsonbNullableToDartJsonNullable,
      toJson: fromDartJsonNullableToGraphQLJsonbNullable)
  Json? lastConfession;

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

  late String name;

  DateTime? photoUpdatedAt;

  @JsonKey(name: 'user_data')
  GetUserInfoStream$SubscriptionRoot$Users$UsersData? userData;

  GetUserInfoStream$SubscriptionRoot$Users$Persons? person;

  @override
  List<Object?> get props => [uid, name, photoUpdatedAt, userData, person];
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
                  name: NameNode(value: 'bounds'),
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
                  name: NameNode(value: 'photoUpdatedAt'),
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
class GetClassesStreamArguments extends JsonSerializable with EquatableMixin {
  GetClassesStreamArguments({this.addWhere, this.limit});

  @override
  factory GetClassesStreamArguments.fromJson(Map<String, dynamic> json) =>
      _$GetClassesStreamArgumentsFromJson(json);

  final List<ClassesBoolExp>? addWhere;

  final int? limit;

  @override
  List<Object?> get props => [addWhere, limit];
  @override
  Map<String, dynamic> toJson() => _$GetClassesStreamArgumentsToJson(this);
}

final GET_CLASSES_STREAM_SUBSCRIPTION_DOCUMENT_OPERATION_NAME =
    'getClassesStream';
final GET_CLASSES_STREAM_SUBSCRIPTION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.subscription,
      name: NameNode(value: 'getClassesStream'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'addWhere')),
            type: ListTypeNode(
                type: NamedTypeNode(
                    name: NameNode(value: 'classes_bool_exp'), isNonNull: true),
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
            name: NameNode(value: 'classes'),
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
                  name: NameNode(value: 'photoUpdatedAt'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ]))
      ]))
]);

class GetClassesStreamSubscription extends GraphQLQuery<
    GetClassesStream$SubscriptionRoot, GetClassesStreamArguments> {
  GetClassesStreamSubscription({required this.variables});

  @override
  final DocumentNode document = GET_CLASSES_STREAM_SUBSCRIPTION_DOCUMENT;

  @override
  final String operationName =
      GET_CLASSES_STREAM_SUBSCRIPTION_DOCUMENT_OPERATION_NAME;

  @override
  final GetClassesStreamArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  GetClassesStream$SubscriptionRoot parse(Map<String, dynamic> json) =>
      GetClassesStream$SubscriptionRoot.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class GetFamiliesStreamArguments extends JsonSerializable with EquatableMixin {
  GetFamiliesStreamArguments({this.addWhere, this.limit});

  @override
  factory GetFamiliesStreamArguments.fromJson(Map<String, dynamic> json) =>
      _$GetFamiliesStreamArgumentsFromJson(json);

  final List<FamiliesBoolExp>? addWhere;

  final int? limit;

  @override
  List<Object?> get props => [addWhere, limit];
  @override
  Map<String, dynamic> toJson() => _$GetFamiliesStreamArgumentsToJson(this);
}

final GET_FAMILIES_STREAM_SUBSCRIPTION_DOCUMENT_OPERATION_NAME =
    'getFamiliesStream';
final GET_FAMILIES_STREAM_SUBSCRIPTION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.subscription,
      name: NameNode(value: 'getFamiliesStream'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'addWhere')),
            type: ListTypeNode(
                type: NamedTypeNode(
                    name: NameNode(value: 'families_bool_exp'),
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
            name: NameNode(value: 'families'),
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
                  name: NameNode(value: 'photoUpdatedAt'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ]))
      ]))
]);

class GetFamiliesStreamSubscription extends GraphQLQuery<
    GetFamiliesStream$SubscriptionRoot, GetFamiliesStreamArguments> {
  GetFamiliesStreamSubscription({required this.variables});

  @override
  final DocumentNode document = GET_FAMILIES_STREAM_SUBSCRIPTION_DOCUMENT;

  @override
  final String operationName =
      GET_FAMILIES_STREAM_SUBSCRIPTION_DOCUMENT_OPERATION_NAME;

  @override
  final GetFamiliesStreamArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  GetFamiliesStream$SubscriptionRoot parse(Map<String, dynamic> json) =>
      GetFamiliesStream$SubscriptionRoot.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class GetGroupsStreamArguments extends JsonSerializable with EquatableMixin {
  GetGroupsStreamArguments({this.addWhere, this.limit});

  @override
  factory GetGroupsStreamArguments.fromJson(Map<String, dynamic> json) =>
      _$GetGroupsStreamArgumentsFromJson(json);

  final List<GroupsBoolExp>? addWhere;

  final int? limit;

  @override
  List<Object?> get props => [addWhere, limit];
  @override
  Map<String, dynamic> toJson() => _$GetGroupsStreamArgumentsToJson(this);
}

final GET_GROUPS_STREAM_SUBSCRIPTION_DOCUMENT_OPERATION_NAME =
    'getGroupsStream';
final GET_GROUPS_STREAM_SUBSCRIPTION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.subscription,
      name: NameNode(value: 'getGroupsStream'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'addWhere')),
            type: ListTypeNode(
                type: NamedTypeNode(
                    name: NameNode(value: 'groups_bool_exp'), isNonNull: true),
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
            name: NameNode(value: 'groups'),
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
                  name: NameNode(value: 'photoUpdatedAt'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ]))
      ]))
]);

class GetGroupsStreamSubscription extends GraphQLQuery<
    GetGroupsStream$SubscriptionRoot, GetGroupsStreamArguments> {
  GetGroupsStreamSubscription({required this.variables});

  @override
  final DocumentNode document = GET_GROUPS_STREAM_SUBSCRIPTION_DOCUMENT;

  @override
  final String operationName =
      GET_GROUPS_STREAM_SUBSCRIPTION_DOCUMENT_OPERATION_NAME;

  @override
  final GetGroupsStreamArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  GetGroupsStream$SubscriptionRoot parse(Map<String, dynamic> json) =>
      GetGroupsStream$SubscriptionRoot.fromJson(json);
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

final INSERT_PERSON_LAST_CONFESSION_MUTATION_DOCUMENT_OPERATION_NAME =
    'insertPersonLastConfession';
final INSERT_PERSON_LAST_CONFESSION_MUTATION_DOCUMENT =
    DocumentNode(definitions: [
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
            alias: null,
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
                        name: NameNode(value: 'color'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'photoUpdatedAt'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
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

final INSERT_PERSON_LAST_KODAS_MUTATION_DOCUMENT_OPERATION_NAME =
    'insertPersonLastKodas';
final INSERT_PERSON_LAST_KODAS_MUTATION_DOCUMENT = DocumentNode(definitions: [
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
            alias: null,
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
                        name: NameNode(value: 'color'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'photoUpdatedAt'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
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

final INSERT_PERSON_LAST_CALL_MUTATION_DOCUMENT_OPERATION_NAME =
    'insertPersonLastCall';
final INSERT_PERSON_LAST_CALL_MUTATION_DOCUMENT = DocumentNode(definitions: [
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
            alias: null,
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
                        name: NameNode(value: 'color'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'photoUpdatedAt'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
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

final INSERT_PERSON_LAST_VISIT_MUTATION_DOCUMENT_OPERATION_NAME =
    'insertPersonLastVisit';
final INSERT_PERSON_LAST_VISIT_MUTATION_DOCUMENT = DocumentNode(definitions: [
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
            alias: null,
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
                        name: NameNode(value: 'color'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'photoUpdatedAt'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
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

final UPDATE_PERSON_SPIRIT_DATA_MUTATION_DOCUMENT_OPERATION_NAME =
    'updatePersonSpiritData';
final UPDATE_PERSON_SPIRIT_DATA_MUTATION_DOCUMENT = DocumentNode(definitions: [
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
            alias: null,
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
                        name: NameNode(value: 'color'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'photoUpdatedAt'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ]))
            ])),
        FieldNode(
            name: NameNode(value: 'insert_history_kodas_history_one'),
            alias: null,
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
                        name: NameNode(value: 'color'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'photoUpdatedAt'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
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

@JsonSerializable(explicitToJson: true)
class GetMorePersonDataArguments extends JsonSerializable with EquatableMixin {
  GetMorePersonDataArguments(
      {required this.id,
      this.areasAfter,
      this.classesAfter,
      this.groupsAfter,
      this.servicesAfter});

  @override
  factory GetMorePersonDataArguments.fromJson(Map<String, dynamic> json) =>
      _$GetMorePersonDataArgumentsFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue id;

  final String? areasAfter;

  final String? classesAfter;

  final String? groupsAfter;

  final String? servicesAfter;

  @override
  List<Object?> get props =>
      [id, areasAfter, classesAfter, groupsAfter, servicesAfter];
  @override
  Map<String, dynamic> toJson() => _$GetMorePersonDataArgumentsToJson(this);
}

final GET_MORE_PERSON_DATA_QUERY_DOCUMENT_OPERATION_NAME = 'getMorePersonData';
final GET_MORE_PERSON_DATA_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'getMorePersonData'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'id')),
            type: NamedTypeNode(name: NameNode(value: 'uuid'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'areasAfter')),
            type: NamedTypeNode(
                name: NameNode(value: 'String'), isNonNull: false),
            defaultValue: DefaultValueNode(
                value: StringValueNode(value: '', isBlock: false)),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'classesAfter')),
            type: NamedTypeNode(
                name: NameNode(value: 'String'), isNonNull: false),
            defaultValue: DefaultValueNode(
                value: StringValueNode(value: '', isBlock: false)),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'groupsAfter')),
            type: NamedTypeNode(
                name: NameNode(value: 'String'), isNonNull: false),
            defaultValue: DefaultValueNode(
                value: StringValueNode(value: '', isBlock: false)),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'servicesAfter')),
            type: NamedTypeNode(
                name: NameNode(value: 'String'), isNonNull: false),
            defaultValue: DefaultValueNode(
                value: StringValueNode(value: '', isBlock: false)),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'persons_by_pk'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'id'),
                  value: VariableNode(name: NameNode(value: 'id')))
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
                  name: NameNode(value: 'areas'),
                  alias: null,
                  arguments: [
                    ArgumentNode(
                        name: NameNode(value: 'order_by'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                              name: NameNode(value: 'name'),
                              value:
                                  EnumValueNode(name: NameNode(value: 'asc')))
                        ])),
                    ArgumentNode(
                        name: NameNode(value: 'where'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                              name: NameNode(value: 'name'),
                              value: ObjectValueNode(fields: [
                                ObjectFieldNode(
                                    name: NameNode(value: '_gt'),
                                    value: VariableNode(
                                        name: NameNode(value: 'areasAfter')))
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
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'photoUpdatedAt'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: 'classes'),
                  alias: null,
                  arguments: [
                    ArgumentNode(
                        name: NameNode(value: 'order_by'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                              name: NameNode(value: 'name'),
                              value:
                                  EnumValueNode(name: NameNode(value: 'asc')))
                        ])),
                    ArgumentNode(
                        name: NameNode(value: 'where'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                              name: NameNode(value: 'name'),
                              value: ObjectValueNode(fields: [
                                ObjectFieldNode(
                                    name: NameNode(value: '_gt'),
                                    value: VariableNode(
                                        name: NameNode(value: 'classesAfter')))
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
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'photoUpdatedAt'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'attendanceHistory_aggregate'),
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
                                          value: VariableNode(
                                              name:
                                                  NameNode(value: 'personId')))
                                    ]))
                              ]))
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
                                          name: NameNode(value: 'dayId'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null)
                                    ]))
                              ]))
                        ]))
                  ])),
              FieldNode(
                  name: NameNode(value: 'groups'),
                  alias: null,
                  arguments: [
                    ArgumentNode(
                        name: NameNode(value: 'order_by'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                              name: NameNode(value: 'group'),
                              value: ObjectValueNode(fields: [
                                ObjectFieldNode(
                                    name: NameNode(value: 'name'),
                                    value: EnumValueNode(
                                        name: NameNode(value: 'asc')))
                              ]))
                        ])),
                    ArgumentNode(
                        name: NameNode(value: 'where'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                              name: NameNode(value: 'group'),
                              value: ObjectValueNode(fields: [
                                ObjectFieldNode(
                                    name: NameNode(value: 'name'),
                                    value: ObjectValueNode(fields: [
                                      ObjectFieldNode(
                                          name: NameNode(value: '_gt'),
                                          value: VariableNode(
                                              name: NameNode(
                                                  value: 'groupsAfter')))
                                    ]))
                              ]))
                        ]))
                  ],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'group'),
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
                              name: NameNode(value: 'color'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'photoUpdatedAt'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(
                                  value: 'attendanceHistory_aggregate'),
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
                                                value: VariableNode(
                                                    name: NameNode(
                                                        value: 'personId')))
                                          ]))
                                    ]))
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
                                          selectionSet:
                                              SelectionSetNode(selections: [
                                            FieldNode(
                                                name: NameNode(value: 'dayId'),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null)
                                          ]))
                                    ]))
                              ]))
                        ]))
                  ])),
              FieldNode(
                  name: NameNode(value: 'services'),
                  alias: null,
                  arguments: [
                    ArgumentNode(
                        name: NameNode(value: 'order_by'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                              name: NameNode(value: 'service'),
                              value: ObjectValueNode(fields: [
                                ObjectFieldNode(
                                    name: NameNode(value: 'name'),
                                    value: EnumValueNode(
                                        name: NameNode(value: 'asc')))
                              ]))
                        ])),
                    ArgumentNode(
                        name: NameNode(value: 'where'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                              name: NameNode(value: 'service'),
                              value: ObjectValueNode(fields: [
                                ObjectFieldNode(
                                    name: NameNode(value: 'name'),
                                    value: ObjectValueNode(fields: [
                                      ObjectFieldNode(
                                          name: NameNode(value: '_gt'),
                                          value: VariableNode(
                                              name: NameNode(
                                                  value: 'servicesAfter')))
                                    ]))
                              ]))
                        ]))
                  ],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'service'),
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
                              name: NameNode(value: 'color'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'photoUpdatedAt'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(
                                  value: 'attendanceHistory_aggregate'),
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
                                                value: VariableNode(
                                                    name: NameNode(
                                                        value: 'personId')))
                                          ]))
                                    ]))
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
                                          selectionSet:
                                              SelectionSetNode(selections: [
                                            FieldNode(
                                                name: NameNode(value: 'dayId'),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null)
                                          ]))
                                    ]))
                              ]))
                        ]))
                  ]))
            ]))
      ]))
]);

class GetMorePersonDataQuery extends GraphQLQuery<GetMorePersonData$QueryRoot,
    GetMorePersonDataArguments> {
  GetMorePersonDataQuery({required this.variables});

  @override
  final DocumentNode document = GET_MORE_PERSON_DATA_QUERY_DOCUMENT;

  @override
  final String operationName =
      GET_MORE_PERSON_DATA_QUERY_DOCUMENT_OPERATION_NAME;

  @override
  final GetMorePersonDataArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  GetMorePersonData$QueryRoot parse(Map<String, dynamic> json) =>
      GetMorePersonData$QueryRoot.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class PersonsGeolocationsArguments extends JsonSerializable
    with EquatableMixin {
  PersonsGeolocationsArguments({this.conditions});

  @override
  factory PersonsGeolocationsArguments.fromJson(Map<String, dynamic> json) =>
      _$PersonsGeolocationsArgumentsFromJson(json);

  final PersonsBoolExp? conditions;

  @override
  List<Object?> get props => [conditions];
  @override
  Map<String, dynamic> toJson() => _$PersonsGeolocationsArgumentsToJson(this);
}

final PERSONS_GEOLOCATIONS_QUERY_DOCUMENT_OPERATION_NAME =
    'personsGeolocations';
final PERSONS_GEOLOCATIONS_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'personsGeolocations'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'conditions')),
            type: NamedTypeNode(
                name: NameNode(value: 'persons_bool_exp'), isNonNull: false),
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
                  value: VariableNode(name: NameNode(value: 'conditions')))
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
                  name: NameNode(value: 'geolocation'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'areas'),
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
                  ])),
              FieldNode(
                  name: NameNode(value: 'streets'),
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
                        name: NameNode(value: 'color'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'line'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: 'family'),
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
                        name: NameNode(value: 'color'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'geolocation'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ]))
            ]))
      ]))
]);

class PersonsGeolocationsQuery extends GraphQLQuery<
    PersonsGeolocations$QueryRoot, PersonsGeolocationsArguments> {
  PersonsGeolocationsQuery({required this.variables});

  @override
  final DocumentNode document = PERSONS_GEOLOCATIONS_QUERY_DOCUMENT;

  @override
  final String operationName =
      PERSONS_GEOLOCATIONS_QUERY_DOCUMENT_OPERATION_NAME;

  @override
  final PersonsGeolocationsArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  PersonsGeolocations$QueryRoot parse(Map<String, dynamic> json) =>
      PersonsGeolocations$QueryRoot.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class AnalyzePersonAttendanceArguments extends JsonSerializable
    with EquatableMixin {
  AnalyzePersonAttendanceArguments(
      {required this.dateFrom,
      required this.dateTo,
      required this.personId,
      this.groupsIds,
      this.classesIds,
      this.servicesIds});

  @override
  factory AnalyzePersonAttendanceArguments.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzePersonAttendanceArgumentsFromJson(json);

  late DateTime dateFrom;

  late DateTime dateTo;

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue personId;

  @JsonKey(
      fromJson: fromGraphQLListNullableUuidToDartListNullableUuidValue,
      toJson: fromDartListNullableUuidValueToGraphQLListNullableUuid)
  final List<UuidValue>? groupsIds;

  @JsonKey(
      fromJson: fromGraphQLListNullableUuidToDartListNullableUuidValue,
      toJson: fromDartListNullableUuidValueToGraphQLListNullableUuid)
  final List<UuidValue>? classesIds;

  @JsonKey(
      fromJson: fromGraphQLListNullableUuidToDartListNullableUuidValue,
      toJson: fromDartListNullableUuidValueToGraphQLListNullableUuid)
  final List<UuidValue>? servicesIds;

  @override
  List<Object?> get props =>
      [dateFrom, dateTo, personId, groupsIds, classesIds, servicesIds];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzePersonAttendanceArgumentsToJson(this);
}

final ANALYZE_PERSON_ATTENDANCE_QUERY_DOCUMENT_OPERATION_NAME =
    'analyzePersonAttendance';
final ANALYZE_PERSON_ATTENDANCE_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'analyzePersonAttendance'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'dateFrom')),
            type: NamedTypeNode(name: NameNode(value: 'date'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'dateTo')),
            type: NamedTypeNode(name: NameNode(value: 'date'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'personId')),
            type: NamedTypeNode(name: NameNode(value: 'uuid'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'groupsIds')),
            type: ListTypeNode(
                type: NamedTypeNode(
                    name: NameNode(value: 'uuid'), isNonNull: true),
                isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'classesIds')),
            type: ListTypeNode(
                type: NamedTypeNode(
                    name: NameNode(value: 'uuid'), isNonNull: true),
                isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'servicesIds')),
            type: ListTypeNode(
                type: NamedTypeNode(
                    name: NameNode(value: 'uuid'), isNonNull: true),
                isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'persons_by_pk'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'id'),
                  value: VariableNode(name: NameNode(value: 'personId')))
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
                  name: NameNode(value: 'kodasHistory_aggregate'),
                  alias: null,
                  arguments: [
                    ArgumentNode(
                        name: NameNode(value: 'where'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                              name: NameNode(value: 'dayId'),
                              value: ObjectValueNode(fields: [
                                ObjectFieldNode(
                                    name: NameNode(value: '_gte'),
                                    value: VariableNode(
                                        name: NameNode(value: 'dateFrom'))),
                                ObjectFieldNode(
                                    name: NameNode(value: '_lte'),
                                    value: VariableNode(
                                        name: NameNode(value: 'dateTo')))
                              ]))
                        ]))
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
                              name: NameNode(value: 'count'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
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
                                    selectionSet: null)
                              ]))
                        ])),
                    FieldNode(
                        name: NameNode(value: 'nodes'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'time'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null)
                        ]))
                  ])),
              FieldNode(
                  name: NameNode(value: 'confessionHistory_aggregate'),
                  alias: null,
                  arguments: [
                    ArgumentNode(
                        name: NameNode(value: 'where'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                              name: NameNode(value: 'dayId'),
                              value: ObjectValueNode(fields: [
                                ObjectFieldNode(
                                    name: NameNode(value: '_gte'),
                                    value: VariableNode(
                                        name: NameNode(value: 'dateFrom'))),
                                ObjectFieldNode(
                                    name: NameNode(value: '_lte'),
                                    value: VariableNode(
                                        name: NameNode(value: 'dateTo')))
                              ]))
                        ]))
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
                              name: NameNode(value: 'count'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
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
                                    selectionSet: null)
                              ]))
                        ])),
                    FieldNode(
                        name: NameNode(value: 'nodes'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'time'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null)
                        ]))
                  ])),
              FieldNode(
                  name: NameNode(value: 'services'),
                  alias: null,
                  arguments: [
                    ArgumentNode(
                        name: NameNode(value: 'where'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                              name: NameNode(value: 'serviceId'),
                              value: ObjectValueNode(fields: [
                                ObjectFieldNode(
                                    name: NameNode(value: '_in'),
                                    value: VariableNode(
                                        name: NameNode(value: 'servicesIds')))
                              ]))
                        ]))
                  ],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'service'),
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
                              name: NameNode(value: 'color'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(
                                  value: 'attendanceHistory_aggregate'),
                              alias: null,
                              arguments: [
                                ArgumentNode(
                                    name: NameNode(value: 'where'),
                                    value: ObjectValueNode(fields: [
                                      ObjectFieldNode(
                                          name: NameNode(value: 'dayId'),
                                          value: ObjectValueNode(fields: [
                                            ObjectFieldNode(
                                                name: NameNode(value: '_gte'),
                                                value: VariableNode(
                                                    name: NameNode(
                                                        value: 'dateFrom'))),
                                            ObjectFieldNode(
                                                name: NameNode(value: '_lte'),
                                                value: VariableNode(
                                                    name: NameNode(
                                                        value: 'dateTo')))
                                          ])),
                                      ObjectFieldNode(
                                          name: NameNode(value: 'personId'),
                                          value: ObjectValueNode(fields: [
                                            ObjectFieldNode(
                                                name: NameNode(value: '_eq'),
                                                value: VariableNode(
                                                    name: NameNode(
                                                        value: 'personId')))
                                          ]))
                                    ]))
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
                                          name: NameNode(value: 'count'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null),
                                      FieldNode(
                                          name: NameNode(value: 'max'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet:
                                              SelectionSetNode(selections: [
                                            FieldNode(
                                                name: NameNode(value: 'dayId'),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null)
                                          ]))
                                    ])),
                                FieldNode(
                                    name: NameNode(value: 'nodes'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(selections: [
                                      FieldNode(
                                          name: NameNode(value: 'dayId'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null)
                                    ]))
                              ])),
                          FieldNode(
                              name: NameNode(
                                  value: 'attendanceDaysConstraints_aggregate'),
                              alias: null,
                              arguments: [
                                ArgumentNode(
                                    name: NameNode(value: 'where'),
                                    value: ObjectValueNode(fields: [
                                      ObjectFieldNode(
                                          name: NameNode(value: 'dayId'),
                                          value: ObjectValueNode(fields: [
                                            ObjectFieldNode(
                                                name: NameNode(value: '_gte'),
                                                value: VariableNode(
                                                    name: NameNode(
                                                        value: 'dateFrom'))),
                                            ObjectFieldNode(
                                                name: NameNode(value: '_lte'),
                                                value: VariableNode(
                                                    name: NameNode(
                                                        value: 'dateTo')))
                                          ]))
                                    ]))
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
                                          name: NameNode(value: 'count'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null)
                                    ])),
                                FieldNode(
                                    name: NameNode(value: 'nodes'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(selections: [
                                      FieldNode(
                                          name: NameNode(value: 'dayId'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null)
                                    ]))
                              ]))
                        ]))
                  ])),
              FieldNode(
                  name: NameNode(value: 'classes'),
                  alias: null,
                  arguments: [
                    ArgumentNode(
                        name: NameNode(value: 'where'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                              name: NameNode(value: 'id'),
                              value: ObjectValueNode(fields: [
                                ObjectFieldNode(
                                    name: NameNode(value: '_in'),
                                    value: VariableNode(
                                        name: NameNode(value: 'classesIds')))
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
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'attendanceHistory_aggregate'),
                        alias: null,
                        arguments: [
                          ArgumentNode(
                              name: NameNode(value: 'where'),
                              value: ObjectValueNode(fields: [
                                ObjectFieldNode(
                                    name: NameNode(value: 'dayId'),
                                    value: ObjectValueNode(fields: [
                                      ObjectFieldNode(
                                          name: NameNode(value: '_gte'),
                                          value: VariableNode(
                                              name:
                                                  NameNode(value: 'dateFrom'))),
                                      ObjectFieldNode(
                                          name: NameNode(value: '_lte'),
                                          value: VariableNode(
                                              name: NameNode(value: 'dateTo')))
                                    ])),
                                ObjectFieldNode(
                                    name: NameNode(value: 'personId'),
                                    value: ObjectValueNode(fields: [
                                      ObjectFieldNode(
                                          name: NameNode(value: '_eq'),
                                          value: VariableNode(
                                              name:
                                                  NameNode(value: 'personId')))
                                    ]))
                              ]))
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
                                    name: NameNode(value: 'count'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null),
                                FieldNode(
                                    name: NameNode(value: 'max'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(selections: [
                                      FieldNode(
                                          name: NameNode(value: 'dayId'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null)
                                    ]))
                              ])),
                          FieldNode(
                              name: NameNode(value: 'nodes'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(selections: [
                                FieldNode(
                                    name: NameNode(value: 'dayId'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null)
                              ]))
                        ])),
                    FieldNode(
                        name: NameNode(
                            value: 'attendanceDaysConstraints_aggregate'),
                        alias: null,
                        arguments: [
                          ArgumentNode(
                              name: NameNode(value: 'where'),
                              value: ObjectValueNode(fields: [
                                ObjectFieldNode(
                                    name: NameNode(value: 'dayId'),
                                    value: ObjectValueNode(fields: [
                                      ObjectFieldNode(
                                          name: NameNode(value: '_gte'),
                                          value: VariableNode(
                                              name:
                                                  NameNode(value: 'dateFrom'))),
                                      ObjectFieldNode(
                                          name: NameNode(value: '_lte'),
                                          value: VariableNode(
                                              name: NameNode(value: 'dateTo')))
                                    ]))
                              ]))
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
                                    name: NameNode(value: 'count'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null)
                              ])),
                          FieldNode(
                              name: NameNode(value: 'nodes'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(selections: [
                                FieldNode(
                                    name: NameNode(value: 'dayId'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null)
                              ]))
                        ]))
                  ])),
              FieldNode(
                  name: NameNode(value: 'groups'),
                  alias: null,
                  arguments: [
                    ArgumentNode(
                        name: NameNode(value: 'where'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                              name: NameNode(value: 'groupId'),
                              value: ObjectValueNode(fields: [
                                ObjectFieldNode(
                                    name: NameNode(value: '_in'),
                                    value: VariableNode(
                                        name: NameNode(value: 'groupsIds')))
                              ]))
                        ]))
                  ],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'group'),
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
                              name: NameNode(value: 'color'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(
                                  value: 'attendanceHistory_aggregate'),
                              alias: null,
                              arguments: [
                                ArgumentNode(
                                    name: NameNode(value: 'where'),
                                    value: ObjectValueNode(fields: [
                                      ObjectFieldNode(
                                          name: NameNode(value: 'dayId'),
                                          value: ObjectValueNode(fields: [
                                            ObjectFieldNode(
                                                name: NameNode(value: '_gte'),
                                                value: VariableNode(
                                                    name: NameNode(
                                                        value: 'dateFrom'))),
                                            ObjectFieldNode(
                                                name: NameNode(value: '_lte'),
                                                value: VariableNode(
                                                    name: NameNode(
                                                        value: 'dateTo')))
                                          ])),
                                      ObjectFieldNode(
                                          name: NameNode(value: 'personId'),
                                          value: ObjectValueNode(fields: [
                                            ObjectFieldNode(
                                                name: NameNode(value: '_eq'),
                                                value: VariableNode(
                                                    name: NameNode(
                                                        value: 'personId')))
                                          ]))
                                    ]))
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
                                          name: NameNode(value: 'count'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null),
                                      FieldNode(
                                          name: NameNode(value: 'max'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet:
                                              SelectionSetNode(selections: [
                                            FieldNode(
                                                name: NameNode(value: 'dayId'),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null)
                                          ]))
                                    ])),
                                FieldNode(
                                    name: NameNode(value: 'nodes'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(selections: [
                                      FieldNode(
                                          name: NameNode(value: 'dayId'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null)
                                    ]))
                              ])),
                          FieldNode(
                              name: NameNode(
                                  value: 'attendanceDaysConstraints_aggregate'),
                              alias: null,
                              arguments: [
                                ArgumentNode(
                                    name: NameNode(value: 'where'),
                                    value: ObjectValueNode(fields: [
                                      ObjectFieldNode(
                                          name: NameNode(value: 'dayId'),
                                          value: ObjectValueNode(fields: [
                                            ObjectFieldNode(
                                                name: NameNode(value: '_gte'),
                                                value: VariableNode(
                                                    name: NameNode(
                                                        value: 'dateFrom'))),
                                            ObjectFieldNode(
                                                name: NameNode(value: '_lte'),
                                                value: VariableNode(
                                                    name: NameNode(
                                                        value: 'dateTo')))
                                          ]))
                                    ]))
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
                                          name: NameNode(value: 'count'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null)
                                    ])),
                                FieldNode(
                                    name: NameNode(value: 'nodes'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(selections: [
                                      FieldNode(
                                          name: NameNode(value: 'dayId'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null)
                                    ]))
                              ]))
                        ]))
                  ]))
            ]))
      ]))
]);

class AnalyzePersonAttendanceQuery extends GraphQLQuery<
    AnalyzePersonAttendance$QueryRoot, AnalyzePersonAttendanceArguments> {
  AnalyzePersonAttendanceQuery({required this.variables});

  @override
  final DocumentNode document = ANALYZE_PERSON_ATTENDANCE_QUERY_DOCUMENT;

  @override
  final String operationName =
      ANALYZE_PERSON_ATTENDANCE_QUERY_DOCUMENT_OPERATION_NAME;

  @override
  final AnalyzePersonAttendanceArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  AnalyzePersonAttendance$QueryRoot parse(Map<String, dynamic> json) =>
      AnalyzePersonAttendance$QueryRoot.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class AnalyzePersonServicingArguments extends JsonSerializable
    with EquatableMixin {
  AnalyzePersonServicingArguments(
      {required this.timeFrom, required this.timeTo, required this.personId});

  @override
  factory AnalyzePersonServicingArguments.fromJson(Map<String, dynamic> json) =>
      _$AnalyzePersonServicingArgumentsFromJson(json);

  late DateTime timeFrom;

  late DateTime timeTo;

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue personId;

  @override
  List<Object?> get props => [timeFrom, timeTo, personId];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzePersonServicingArgumentsToJson(this);
}

final ANALYZE_PERSON_SERVICING_QUERY_DOCUMENT_OPERATION_NAME =
    'analyzePersonServicing';
final ANALYZE_PERSON_SERVICING_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'analyzePersonServicing'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'timeFrom')),
            type: NamedTypeNode(
                name: NameNode(value: 'timestamptz'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'timeTo')),
            type: NamedTypeNode(
                name: NameNode(value: 'timestamptz'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'personId')),
            type: NamedTypeNode(name: NameNode(value: 'uuid'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'persons_by_pk'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'id'),
                  value: VariableNode(name: NameNode(value: 'personId')))
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
                  name: NameNode(value: 'callHistory_aggregate'),
                  alias: null,
                  arguments: [
                    ArgumentNode(
                        name: NameNode(value: 'where'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                              name: NameNode(value: 'time'),
                              value: ObjectValueNode(fields: [
                                ObjectFieldNode(
                                    name: NameNode(value: '_gte'),
                                    value: VariableNode(
                                        name: NameNode(value: 'timeFrom'))),
                                ObjectFieldNode(
                                    name: NameNode(value: '_lte'),
                                    value: VariableNode(
                                        name: NameNode(value: 'timeTo')))
                              ]))
                        ]))
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
                              name: NameNode(value: 'count'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
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
                                    selectionSet: null)
                              ]))
                        ])),
                    FieldNode(
                        name: NameNode(value: 'nodes'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'time'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null)
                        ]))
                  ])),
              FieldNode(
                  name: NameNode(value: 'visitHistory_aggregate'),
                  alias: null,
                  arguments: [
                    ArgumentNode(
                        name: NameNode(value: 'where'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                              name: NameNode(value: 'time'),
                              value: ObjectValueNode(fields: [
                                ObjectFieldNode(
                                    name: NameNode(value: '_gte'),
                                    value: VariableNode(
                                        name: NameNode(value: 'timeFrom'))),
                                ObjectFieldNode(
                                    name: NameNode(value: '_lte'),
                                    value: VariableNode(
                                        name: NameNode(value: 'timeTo')))
                              ]))
                        ]))
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
                              name: NameNode(value: 'count'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
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
                                    selectionSet: null)
                              ]))
                        ])),
                    FieldNode(
                        name: NameNode(value: 'nodes'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'time'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null)
                        ]))
                  ]))
            ]))
      ]))
]);

class AnalyzePersonServicingQuery extends GraphQLQuery<
    AnalyzePersonServicing$QueryRoot, AnalyzePersonServicingArguments> {
  AnalyzePersonServicingQuery({required this.variables});

  @override
  final DocumentNode document = ANALYZE_PERSON_SERVICING_QUERY_DOCUMENT;

  @override
  final String operationName =
      ANALYZE_PERSON_SERVICING_QUERY_DOCUMENT_OPERATION_NAME;

  @override
  final AnalyzePersonServicingArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  AnalyzePersonServicing$QueryRoot parse(Map<String, dynamic> json) =>
      AnalyzePersonServicing$QueryRoot.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class GetPersonClassesAndGroupsArguments extends JsonSerializable
    with EquatableMixin {
  GetPersonClassesAndGroupsArguments({required this.id});

  @override
  factory GetPersonClassesAndGroupsArguments.fromJson(
          Map<String, dynamic> json) =>
      _$GetPersonClassesAndGroupsArgumentsFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue id;

  @override
  List<Object?> get props => [id];
  @override
  Map<String, dynamic> toJson() =>
      _$GetPersonClassesAndGroupsArgumentsToJson(this);
}

final GET_PERSON_CLASSES_AND_GROUPS_QUERY_DOCUMENT_OPERATION_NAME =
    'getPersonClassesAndGroups';
final GET_PERSON_CLASSES_AND_GROUPS_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'getPersonClassesAndGroups'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'id')),
            type: NamedTypeNode(name: NameNode(value: 'uuid'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'persons_by_pk'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'id'),
                  value: VariableNode(name: NameNode(value: 'id')))
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
                  name: NameNode(value: 'classes'),
                  alias: null,
                  arguments: [
                    ArgumentNode(
                        name: NameNode(value: 'order_by'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                              name: NameNode(value: 'name'),
                              value:
                                  EnumValueNode(name: NameNode(value: 'asc')))
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
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'photoUpdatedAt'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'service'),
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
                              name: NameNode(value: 'color'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'photoUpdatedAt'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null)
                        ]))
                  ])),
              FieldNode(
                  name: NameNode(value: 'groups'),
                  alias: null,
                  arguments: [
                    ArgumentNode(
                        name: NameNode(value: 'order_by'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                              name: NameNode(value: 'group'),
                              value: ObjectValueNode(fields: [
                                ObjectFieldNode(
                                    name: NameNode(value: 'name'),
                                    value: EnumValueNode(
                                        name: NameNode(value: 'asc')))
                              ]))
                        ]))
                  ],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'group'),
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
                              name: NameNode(value: 'color'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'photoUpdatedAt'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'service'),
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
                                    name: NameNode(value: 'color'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null),
                                FieldNode(
                                    name: NameNode(value: 'photoUpdatedAt'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null)
                              ]))
                        ]))
                  ]))
            ]))
      ]))
]);

class GetPersonClassesAndGroupsQuery extends GraphQLQuery<
    GetPersonClassesAndGroups$QueryRoot, GetPersonClassesAndGroupsArguments> {
  GetPersonClassesAndGroupsQuery({required this.variables});

  @override
  final DocumentNode document = GET_PERSON_CLASSES_AND_GROUPS_QUERY_DOCUMENT;

  @override
  final String operationName =
      GET_PERSON_CLASSES_AND_GROUPS_QUERY_DOCUMENT_OPERATION_NAME;

  @override
  final GetPersonClassesAndGroupsArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  GetPersonClassesAndGroups$QueryRoot parse(Map<String, dynamic> json) =>
      GetPersonClassesAndGroups$QueryRoot.fromJson(json);
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
                  name: NameNode(value: 'photoUpdatedAt'),
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
class WatchPersonArguments extends JsonSerializable with EquatableMixin {
  WatchPersonArguments({required this.id});

  @override
  factory WatchPersonArguments.fromJson(Map<String, dynamic> json) =>
      _$WatchPersonArgumentsFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue id;

  @override
  List<Object?> get props => [id];
  @override
  Map<String, dynamic> toJson() => _$WatchPersonArgumentsToJson(this);
}

final WATCH_PERSON_SUBSCRIPTION_DOCUMENT_OPERATION_NAME = 'watchPerson';
final WATCH_PERSON_SUBSCRIPTION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.subscription,
      name: NameNode(value: 'watchPerson'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'id')),
            type: NamedTypeNode(name: NameNode(value: 'uuid'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'persons_by_pk'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'id'),
                  value: VariableNode(name: NameNode(value: 'id')))
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
                  name: NameNode(value: 'photoUpdatedAt'),
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
                  name: NameNode(value: 'birthdate'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'areas'),
                  alias: null,
                  arguments: [
                    ArgumentNode(
                        name: NameNode(value: 'limit'),
                        value: IntValueNode(value: '6')),
                    ArgumentNode(
                        name: NameNode(value: 'order_by'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                              name: NameNode(value: 'name'),
                              value:
                                  EnumValueNode(name: NameNode(value: 'asc')))
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
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'photoUpdatedAt'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: 'classes'),
                  alias: null,
                  arguments: [
                    ArgumentNode(
                        name: NameNode(value: 'limit'),
                        value: IntValueNode(value: '6')),
                    ArgumentNode(
                        name: NameNode(value: 'order_by'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                              name: NameNode(value: 'name'),
                              value:
                                  EnumValueNode(name: NameNode(value: 'asc')))
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
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'photoUpdatedAt'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'attendanceHistory_aggregate'),
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
                                          value: VariableNode(
                                              name: NameNode(value: 'id')))
                                    ]))
                              ]))
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
                                          selectionSet: null)
                                    ]))
                              ]))
                        ]))
                  ])),
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
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'name'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
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
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'name'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: 'family'),
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
                        name: NameNode(value: 'color'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'photoUpdatedAt'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
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
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'name'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
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
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'name'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null)
                        ]))
                  ])),
              FieldNode(
                  name: NameNode(value: 'gender'),
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
                  name: NameNode(value: 'groups'),
                  alias: null,
                  arguments: [
                    ArgumentNode(
                        name: NameNode(value: 'limit'),
                        value: IntValueNode(value: '6')),
                    ArgumentNode(
                        name: NameNode(value: 'order_by'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                              name: NameNode(value: 'group'),
                              value: ObjectValueNode(fields: [
                                ObjectFieldNode(
                                    name: NameNode(value: 'name'),
                                    value: EnumValueNode(
                                        name: NameNode(value: 'asc')))
                              ]))
                        ]))
                  ],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'group'),
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
                              name: NameNode(value: 'color'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'photoUpdatedAt'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(
                                  value: 'attendanceHistory_aggregate'),
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
                                                value: VariableNode(
                                                    name:
                                                        NameNode(value: 'id')))
                                          ]))
                                    ]))
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
                                          selectionSet:
                                              SelectionSetNode(selections: [
                                            FieldNode(
                                                name: NameNode(value: 'time'),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null)
                                          ]))
                                    ]))
                              ]))
                        ]))
                  ])),
              FieldNode(
                  name: NameNode(value: 'isServant'),
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
                  name: NameNode(value: 'isStudent'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
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
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'name'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: 'jobDescription'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'lastCall'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'lastConfession'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'lastEdit'),
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
                  name: NameNode(value: 'lastVisit'),
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
                  name: NameNode(value: 'notes'),
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
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'name'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
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
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'name'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
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
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'name'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: 'services'),
                  alias: null,
                  arguments: [
                    ArgumentNode(
                        name: NameNode(value: 'limit'),
                        value: IntValueNode(value: '6')),
                    ArgumentNode(
                        name: NameNode(value: 'order_by'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                              name: NameNode(value: 'service'),
                              value: ObjectValueNode(fields: [
                                ObjectFieldNode(
                                    name: NameNode(value: 'name'),
                                    value: EnumValueNode(
                                        name: NameNode(value: 'asc')))
                              ]))
                        ]))
                  ],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'service'),
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
                              name: NameNode(value: 'color'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'photoUpdatedAt'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(
                                  value: 'attendanceHistory_aggregate'),
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
                                                value: VariableNode(
                                                    name:
                                                        NameNode(value: 'id')))
                                          ]))
                                    ]))
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
                                          selectionSet:
                                              SelectionSetNode(selections: [
                                            FieldNode(
                                                name: NameNode(value: 'time'),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null)
                                          ]))
                                    ]))
                              ]))
                        ]))
                  ])),
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
                        selectionSet: null),
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
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'color'),
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
                  ])),
              FieldNode(
                  name: NameNode(value: 'streets'),
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
                        name: NameNode(value: 'color'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'photoUpdatedAt'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
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
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'order'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: 'tags'),
                  alias: null,
                  arguments: [
                    ArgumentNode(
                        name: NameNode(value: 'order_by'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                              name: NameNode(value: 'tag'),
                              value: ObjectValueNode(fields: [
                                ObjectFieldNode(
                                    name: NameNode(value: 'name'),
                                    value: EnumValueNode(
                                        name: NameNode(value: 'asc')))
                              ]))
                        ]))
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
                  ])),
              FieldNode(
                  name: NameNode(value: 'uid'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ]))
      ]))
]);

class WatchPersonSubscription
    extends GraphQLQuery<WatchPerson$SubscriptionRoot, WatchPersonArguments> {
  WatchPersonSubscription({required this.variables});

  @override
  final DocumentNode document = WATCH_PERSON_SUBSCRIPTION_DOCUMENT;

  @override
  final String operationName =
      WATCH_PERSON_SUBSCRIPTION_DOCUMENT_OPERATION_NAME;

  @override
  final WatchPersonArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  WatchPerson$SubscriptionRoot parse(Map<String, dynamic> json) =>
      WatchPerson$SubscriptionRoot.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class CallHistoryArguments extends JsonSerializable with EquatableMixin {
  CallHistoryArguments({required this.personId, this.addWhere, this.limit});

  @override
  factory CallHistoryArguments.fromJson(Map<String, dynamic> json) =>
      _$CallHistoryArgumentsFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue personId;

  final List<HistoryCallHistoryBoolExp>? addWhere;

  final int? limit;

  @override
  List<Object?> get props => [personId, addWhere, limit];
  @override
  Map<String, dynamic> toJson() => _$CallHistoryArgumentsToJson(this);
}

final CALL_HISTORY_SUBSCRIPTION_DOCUMENT_OPERATION_NAME = 'callHistory';
final CALL_HISTORY_SUBSCRIPTION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.subscription,
      name: NameNode(value: 'callHistory'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'personId')),
            type: NamedTypeNode(name: NameNode(value: 'uuid'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'addWhere')),
            type: ListTypeNode(
                type: NamedTypeNode(
                    name: NameNode(value: 'history_call_history_bool_exp'),
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
            name: NameNode(value: 'history_call_history'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'where'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: '_and'),
                        value: ListValueNode(values: [
                          ObjectValueNode(fields: [
                            ObjectFieldNode(
                                name: NameNode(value: 'personId'),
                                value: ObjectValueNode(fields: [
                                  ObjectFieldNode(
                                      name: NameNode(value: '_eq'),
                                      value: VariableNode(
                                          name: NameNode(value: 'personId')))
                                ]))
                          ]),
                          ObjectValueNode(fields: [
                            ObjectFieldNode(
                                name: NameNode(value: '_and'),
                                value: VariableNode(
                                    name: NameNode(value: 'addWhere')))
                          ])
                        ]))
                  ])),
              ArgumentNode(
                  name: NameNode(value: 'limit'),
                  value: VariableNode(name: NameNode(value: 'limit'))),
              ArgumentNode(
                  name: NameNode(value: 'order_by'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: 'time'),
                        value: EnumValueNode(name: NameNode(value: 'desc')))
                  ]))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'time'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
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
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'name'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'photoUpdatedAt'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ]))
            ]))
      ]))
]);

class CallHistorySubscription
    extends GraphQLQuery<CallHistory$SubscriptionRoot, CallHistoryArguments> {
  CallHistorySubscription({required this.variables});

  @override
  final DocumentNode document = CALL_HISTORY_SUBSCRIPTION_DOCUMENT;

  @override
  final String operationName =
      CALL_HISTORY_SUBSCRIPTION_DOCUMENT_OPERATION_NAME;

  @override
  final CallHistoryArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  CallHistory$SubscriptionRoot parse(Map<String, dynamic> json) =>
      CallHistory$SubscriptionRoot.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class VisitHistoryArguments extends JsonSerializable with EquatableMixin {
  VisitHistoryArguments({required this.personId, this.addWhere, this.limit});

  @override
  factory VisitHistoryArguments.fromJson(Map<String, dynamic> json) =>
      _$VisitHistoryArgumentsFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue personId;

  final List<HistoryVisitHistoryBoolExp>? addWhere;

  final int? limit;

  @override
  List<Object?> get props => [personId, addWhere, limit];
  @override
  Map<String, dynamic> toJson() => _$VisitHistoryArgumentsToJson(this);
}

final VISIT_HISTORY_SUBSCRIPTION_DOCUMENT_OPERATION_NAME = 'visitHistory';
final VISIT_HISTORY_SUBSCRIPTION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.subscription,
      name: NameNode(value: 'visitHistory'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'personId')),
            type: NamedTypeNode(name: NameNode(value: 'uuid'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'addWhere')),
            type: ListTypeNode(
                type: NamedTypeNode(
                    name: NameNode(value: 'history_visit_history_bool_exp'),
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
            name: NameNode(value: 'history_visit_history'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'where'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: '_and'),
                        value: ListValueNode(values: [
                          ObjectValueNode(fields: [
                            ObjectFieldNode(
                                name: NameNode(value: 'personId'),
                                value: ObjectValueNode(fields: [
                                  ObjectFieldNode(
                                      name: NameNode(value: '_eq'),
                                      value: VariableNode(
                                          name: NameNode(value: 'personId')))
                                ]))
                          ]),
                          ObjectValueNode(fields: [
                            ObjectFieldNode(
                                name: NameNode(value: '_and'),
                                value: VariableNode(
                                    name: NameNode(value: 'addWhere')))
                          ])
                        ]))
                  ])),
              ArgumentNode(
                  name: NameNode(value: 'limit'),
                  value: VariableNode(name: NameNode(value: 'limit'))),
              ArgumentNode(
                  name: NameNode(value: 'order_by'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: 'time'),
                        value: EnumValueNode(name: NameNode(value: 'desc')))
                  ]))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'time'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
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
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'name'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'photoUpdatedAt'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ]))
            ]))
      ]))
]);

class VisitHistorySubscription
    extends GraphQLQuery<VisitHistory$SubscriptionRoot, VisitHistoryArguments> {
  VisitHistorySubscription({required this.variables});

  @override
  final DocumentNode document = VISIT_HISTORY_SUBSCRIPTION_DOCUMENT;

  @override
  final String operationName =
      VISIT_HISTORY_SUBSCRIPTION_DOCUMENT_OPERATION_NAME;

  @override
  final VisitHistoryArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  VisitHistory$SubscriptionRoot parse(Map<String, dynamic> json) =>
      VisitHistory$SubscriptionRoot.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class ConfessionHistoryArguments extends JsonSerializable with EquatableMixin {
  ConfessionHistoryArguments(
      {required this.personId, this.addWhere, this.limit});

  @override
  factory ConfessionHistoryArguments.fromJson(Map<String, dynamic> json) =>
      _$ConfessionHistoryArgumentsFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue personId;

  final List<HistoryConfessionHistoryBoolExp>? addWhere;

  final int? limit;

  @override
  List<Object?> get props => [personId, addWhere, limit];
  @override
  Map<String, dynamic> toJson() => _$ConfessionHistoryArgumentsToJson(this);
}

final CONFESSION_HISTORY_SUBSCRIPTION_DOCUMENT_OPERATION_NAME =
    'confessionHistory';
final CONFESSION_HISTORY_SUBSCRIPTION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.subscription,
      name: NameNode(value: 'confessionHistory'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'personId')),
            type: NamedTypeNode(name: NameNode(value: 'uuid'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'addWhere')),
            type: ListTypeNode(
                type: NamedTypeNode(
                    name:
                        NameNode(value: 'history_confession_history_bool_exp'),
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
            name: NameNode(value: 'history_confession_history'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'where'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: '_and'),
                        value: ListValueNode(values: [
                          ObjectValueNode(fields: [
                            ObjectFieldNode(
                                name: NameNode(value: 'personId'),
                                value: ObjectValueNode(fields: [
                                  ObjectFieldNode(
                                      name: NameNode(value: '_eq'),
                                      value: VariableNode(
                                          name: NameNode(value: 'personId')))
                                ]))
                          ]),
                          ObjectValueNode(fields: [
                            ObjectFieldNode(
                                name: NameNode(value: '_and'),
                                value: VariableNode(
                                    name: NameNode(value: 'addWhere')))
                          ])
                        ]))
                  ])),
              ArgumentNode(
                  name: NameNode(value: 'limit'),
                  value: VariableNode(name: NameNode(value: 'limit'))),
              ArgumentNode(
                  name: NameNode(value: 'order_by'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: 'time'),
                        value: EnumValueNode(name: NameNode(value: 'desc')))
                  ]))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'time'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
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
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'name'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'photoUpdatedAt'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ]))
            ]))
      ]))
]);

class ConfessionHistorySubscription extends GraphQLQuery<
    ConfessionHistory$SubscriptionRoot, ConfessionHistoryArguments> {
  ConfessionHistorySubscription({required this.variables});

  @override
  final DocumentNode document = CONFESSION_HISTORY_SUBSCRIPTION_DOCUMENT;

  @override
  final String operationName =
      CONFESSION_HISTORY_SUBSCRIPTION_DOCUMENT_OPERATION_NAME;

  @override
  final ConfessionHistoryArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  ConfessionHistory$SubscriptionRoot parse(Map<String, dynamic> json) =>
      ConfessionHistory$SubscriptionRoot.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class KodasHistoryArguments extends JsonSerializable with EquatableMixin {
  KodasHistoryArguments({required this.personId, this.addWhere, this.limit});

  @override
  factory KodasHistoryArguments.fromJson(Map<String, dynamic> json) =>
      _$KodasHistoryArgumentsFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue personId;

  final List<HistoryKodasHistoryBoolExp>? addWhere;

  final int? limit;

  @override
  List<Object?> get props => [personId, addWhere, limit];
  @override
  Map<String, dynamic> toJson() => _$KodasHistoryArgumentsToJson(this);
}

final KODAS_HISTORY_SUBSCRIPTION_DOCUMENT_OPERATION_NAME = 'kodasHistory';
final KODAS_HISTORY_SUBSCRIPTION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.subscription,
      name: NameNode(value: 'kodasHistory'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'personId')),
            type: NamedTypeNode(name: NameNode(value: 'uuid'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'addWhere')),
            type: ListTypeNode(
                type: NamedTypeNode(
                    name: NameNode(value: 'history_kodas_history_bool_exp'),
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
            name: NameNode(value: 'history_kodas_history'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'where'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: '_and'),
                        value: ListValueNode(values: [
                          ObjectValueNode(fields: [
                            ObjectFieldNode(
                                name: NameNode(value: 'personId'),
                                value: ObjectValueNode(fields: [
                                  ObjectFieldNode(
                                      name: NameNode(value: '_eq'),
                                      value: VariableNode(
                                          name: NameNode(value: 'personId')))
                                ]))
                          ]),
                          ObjectValueNode(fields: [
                            ObjectFieldNode(
                                name: NameNode(value: '_and'),
                                value: VariableNode(
                                    name: NameNode(value: 'addWhere')))
                          ])
                        ]))
                  ])),
              ArgumentNode(
                  name: NameNode(value: 'limit'),
                  value: VariableNode(name: NameNode(value: 'limit'))),
              ArgumentNode(
                  name: NameNode(value: 'order_by'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: 'time'),
                        value: EnumValueNode(name: NameNode(value: 'desc')))
                  ]))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'time'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
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
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'name'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'photoUpdatedAt'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ]))
            ]))
      ]))
]);

class KodasHistorySubscription
    extends GraphQLQuery<KodasHistory$SubscriptionRoot, KodasHistoryArguments> {
  KodasHistorySubscription({required this.variables});

  @override
  final DocumentNode document = KODAS_HISTORY_SUBSCRIPTION_DOCUMENT;

  @override
  final String operationName =
      KODAS_HISTORY_SUBSCRIPTION_DOCUMENT_OPERATION_NAME;

  @override
  final KodasHistoryArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  KodasHistory$SubscriptionRoot parse(Map<String, dynamic> json) =>
      KodasHistory$SubscriptionRoot.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class EditHistoryArguments extends JsonSerializable with EquatableMixin {
  EditHistoryArguments({required this.personId, this.addWhere, this.limit});

  @override
  factory EditHistoryArguments.fromJson(Map<String, dynamic> json) =>
      _$EditHistoryArgumentsFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue personId;

  final List<HistoryEditHistoryBoolExp>? addWhere;

  final int? limit;

  @override
  List<Object?> get props => [personId, addWhere, limit];
  @override
  Map<String, dynamic> toJson() => _$EditHistoryArgumentsToJson(this);
}

final EDIT_HISTORY_SUBSCRIPTION_DOCUMENT_OPERATION_NAME = 'editHistory';
final EDIT_HISTORY_SUBSCRIPTION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.subscription,
      name: NameNode(value: 'editHistory'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'personId')),
            type: NamedTypeNode(name: NameNode(value: 'uuid'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'addWhere')),
            type: ListTypeNode(
                type: NamedTypeNode(
                    name: NameNode(value: 'history_edit_history_bool_exp'),
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
            name: NameNode(value: 'history_edit_history'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'where'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: '_and'),
                        value: ListValueNode(values: [
                          ObjectValueNode(fields: [
                            ObjectFieldNode(
                                name: NameNode(value: 'table'),
                                value: ObjectValueNode(fields: [
                                  ObjectFieldNode(
                                      name: NameNode(value: '_eq'),
                                      value: StringValueNode(
                                          value: 'persons', isBlock: false))
                                ]))
                          ]),
                          ObjectValueNode(fields: [
                            ObjectFieldNode(
                                name: NameNode(value: 'recordId'),
                                value: ObjectValueNode(fields: [
                                  ObjectFieldNode(
                                      name: NameNode(value: '_eq'),
                                      value: VariableNode(
                                          name: NameNode(value: 'personId')))
                                ]))
                          ]),
                          ObjectValueNode(fields: [
                            ObjectFieldNode(
                                name: NameNode(value: '_and'),
                                value: VariableNode(
                                    name: NameNode(value: 'addWhere')))
                          ])
                        ]))
                  ])),
              ArgumentNode(
                  name: NameNode(value: 'limit'),
                  value: VariableNode(name: NameNode(value: 'limit'))),
              ArgumentNode(
                  name: NameNode(value: 'order_by'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: 'time'),
                        value: EnumValueNode(name: NameNode(value: 'desc')))
                  ]))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'time'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
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
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'name'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'photoUpdatedAt'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ]))
            ]))
      ]))
]);

class EditHistorySubscription
    extends GraphQLQuery<EditHistory$SubscriptionRoot, EditHistoryArguments> {
  EditHistorySubscription({required this.variables});

  @override
  final DocumentNode document = EDIT_HISTORY_SUBSCRIPTION_DOCUMENT;

  @override
  final String operationName =
      EDIT_HISTORY_SUBSCRIPTION_DOCUMENT_OPERATION_NAME;

  @override
  final EditHistoryArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  EditHistory$SubscriptionRoot parse(Map<String, dynamic> json) =>
      EditHistory$SubscriptionRoot.fromJson(json);
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
                  name: NameNode(value: 'photoUpdatedAt'),
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
                  name: NameNode(value: 'classes'),
                  alias: null,
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
                              name: NameNode(value: 'studyYear'),
                              value: ObjectValueNode(fields: [
                                ObjectFieldNode(
                                    name: NameNode(value: 'order'),
                                    value: EnumValueNode(
                                        name: NameNode(value: 'asc')))
                              ])),
                          ObjectFieldNode(
                              name: NameNode(value: 'serviceGender'),
                              value: EnumValueNode(
                                  name: NameNode(value: 'desc_nulls_last')))
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
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'photoUpdatedAt'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
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
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'order'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null)
                        ]))
                  ])),
              FieldNode(
                  name: NameNode(value: 'groups'),
                  alias: null,
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
                        name: NameNode(value: 'photoUpdatedAt'),
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
class GetStreetsStreamArguments extends JsonSerializable with EquatableMixin {
  GetStreetsStreamArguments({this.addWhere, this.limit});

  @override
  factory GetStreetsStreamArguments.fromJson(Map<String, dynamic> json) =>
      _$GetStreetsStreamArgumentsFromJson(json);

  final List<StreetsBoolExp>? addWhere;

  final int? limit;

  @override
  List<Object?> get props => [addWhere, limit];
  @override
  Map<String, dynamic> toJson() => _$GetStreetsStreamArgumentsToJson(this);
}

final GET_STREETS_STREAM_SUBSCRIPTION_DOCUMENT_OPERATION_NAME =
    'getStreetsStream';
final GET_STREETS_STREAM_SUBSCRIPTION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.subscription,
      name: NameNode(value: 'getStreetsStream'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'addWhere')),
            type: ListTypeNode(
                type: NamedTypeNode(
                    name: NameNode(value: 'streets_bool_exp'), isNonNull: true),
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
            name: NameNode(value: 'streets'),
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
                  name: NameNode(value: 'line'),
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
                  name: NameNode(value: 'photoUpdatedAt'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ]))
      ]))
]);

class GetStreetsStreamSubscription extends GraphQLQuery<
    GetStreetsStream$SubscriptionRoot, GetStreetsStreamArguments> {
  GetStreetsStreamSubscription({required this.variables});

  @override
  final DocumentNode document = GET_STREETS_STREAM_SUBSCRIPTION_DOCUMENT;

  @override
  final String operationName =
      GET_STREETS_STREAM_SUBSCRIPTION_DOCUMENT_OPERATION_NAME;

  @override
  final GetStreetsStreamArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  GetStreetsStream$SubscriptionRoot parse(Map<String, dynamic> json) =>
      GetStreetsStream$SubscriptionRoot.fromJson(json);
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
            name: NameNode(value: 'study_years_by_pk'),
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
                  name: NameNode(value: 'name'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'photoUpdatedAt'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'user_data'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'firebaseAuthUid'),
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
                        selectionSet: null)
                  ])),
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
                              name: NameNode(value: 'order'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null)
                        ])),
                    FieldNode(
                        name: NameNode(value: 'schoolId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'collegeId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'churchId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'fatherId'),
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
                        name: NameNode(value: 'jobId'),
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
                        name: NameNode(value: 'qualificationId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'personTypeId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'stateId'),
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
                        name: NameNode(value: 'familyId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'storeId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'studyYearId'),
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
                        name: NameNode(value: 'photoUpdatedAt'),
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
