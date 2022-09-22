// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart = 2.12
// ignore_for_file: constant_identifier_names, overridden_fields, always_put_required_named_parameters_first, depend_on_referenced_packages

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
      this.classes,
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
      this.serviceStudyYearData,
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

  ClassesBoolExp? classes;

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

  StudyYearsBoolExp? serviceStudyYearData;

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
        classes,
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
        serviceStudyYearData,
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

  @JsonKey(name: '_isNull')
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

  @JsonKey(name: '_isNull')
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
      this.asAdmin,
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

  BooleanComparisonExp? asAdmin;

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
        asAdmin,
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

  @JsonKey(name: '_isNull')
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

  @JsonKey(name: '_isNull')
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
      name: '_containedIn',
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

  @JsonKey(name: '_hasKey')
  String? $hasKey;

  @JsonKey(name: '_hasKeysAll')
  List<String>? $hasKeysAll;

  @JsonKey(name: '_hasKeysAny')
  List<String>? $hasKeysAny;

  @JsonKey(
      name: '_in',
      fromJson: fromGraphQLListNullableJsonbToDartListNullableJson,
      toJson: fromDartListNullableJsonToGraphQLListNullableJsonb)
  List<Json>? $in;

  @JsonKey(name: '_isNull')
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

  @JsonKey(name: '_isNull')
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
      this.editHistory,
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

  HistoryEditHistoryBoolExp? editHistory;

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

  PersonStatesBoolExp? state;

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
        editHistory,
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

  @JsonKey(name: '_isNull')
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

  @JsonKey(name: '_isNull')
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

  @JsonKey(name: '_isNull')
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

  @JsonKey(name: '_isNull')
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

  @JsonKey(name: '_isNull')
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

  @JsonKey(name: '_stDWithin')
  StDWithinGeographyInput? $stDWithin;

  @JsonKey(
      name: '_stIntersects',
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

  @JsonKey(name: '_isNull')
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

  @JsonKey(name: '_st3dDWithin')
  StDWithinInput? $st3dDWithin;

  @JsonKey(
      name: '_st3dIntersects',
      fromJson: fromGraphQLGeometryNullableToDartJsonNullable,
      toJson: fromDartJsonNullableToGraphQLGeometryNullable)
  Json? $st3dIntersects;

  @JsonKey(
      name: '_stContains',
      fromJson: fromGraphQLGeometryNullableToDartJsonNullable,
      toJson: fromDartJsonNullableToGraphQLGeometryNullable)
  Json? $stContains;

  @JsonKey(
      name: '_stCrosses',
      fromJson: fromGraphQLGeometryNullableToDartJsonNullable,
      toJson: fromDartJsonNullableToGraphQLGeometryNullable)
  Json? $stCrosses;

  @JsonKey(name: '_stDWithin')
  StDWithinInput? $stDWithin;

  @JsonKey(
      name: '_stEquals',
      fromJson: fromGraphQLGeometryNullableToDartJsonNullable,
      toJson: fromDartJsonNullableToGraphQLGeometryNullable)
  Json? $stEquals;

  @JsonKey(
      name: '_stIntersects',
      fromJson: fromGraphQLGeometryNullableToDartJsonNullable,
      toJson: fromDartJsonNullableToGraphQLGeometryNullable)
  Json? $stIntersects;

  @JsonKey(
      name: '_stOverlaps',
      fromJson: fromGraphQLGeometryNullableToDartJsonNullable,
      toJson: fromDartJsonNullableToGraphQLGeometryNullable)
  Json? $stOverlaps;

  @JsonKey(
      name: '_stTouches',
      fromJson: fromGraphQLGeometryNullableToDartJsonNullable,
      toJson: fromDartJsonNullableToGraphQLGeometryNullable)
  Json? $stTouches;

  @JsonKey(
      name: '_stWithin',
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
      this.nextService,
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

  UuidComparisonExp? nextService;

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
        nextService,
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

  @JsonKey(name: '_isNull')
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
class PersonStatesBoolExp extends JsonSerializable with EquatableMixin {
  PersonStatesBoolExp(
      {this.$and,
      this.$not,
      this.$or,
      this.color,
      this.id,
      this.name,
      this.persons});

  factory PersonStatesBoolExp.fromJson(Map<String, dynamic> json) =>
      _$PersonStatesBoolExpFromJson(json);

  @JsonKey(name: '_and')
  List<PersonStatesBoolExp>? $and;

  @JsonKey(name: '_not')
  PersonStatesBoolExp? $not;

  @JsonKey(name: '_or')
  List<PersonStatesBoolExp>? $or;

  BigintComparisonExp? color;

  UuidComparisonExp? id;

  StringComparisonExp? name;

  PersonsBoolExp? persons;

  @override
  List<Object?> get props => [$and, $not, $or, color, id, name, persons];
  @override
  Map<String, dynamic> toJson() => _$PersonStatesBoolExpToJson(this);
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

  @JsonKey(name: '_isNull')
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

  @JsonKey(name: '_isNull')
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

  @JsonKey(name: '_isNull')
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
class GetChurchesStream$SubscriptionRoot$Churches extends JsonSerializable
    with EquatableMixin {
  GetChurchesStream$SubscriptionRoot$Churches();

  factory GetChurchesStream$SubscriptionRoot$Churches.fromJson(
          Map<String, dynamic> json) =>
      _$GetChurchesStream$SubscriptionRoot$ChurchesFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue id;

  late String name;

  @override
  List<Object?> get props => [id, name];
  @override
  Map<String, dynamic> toJson() =>
      _$GetChurchesStream$SubscriptionRoot$ChurchesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetChurchesStream$SubscriptionRoot extends JsonSerializable
    with EquatableMixin {
  GetChurchesStream$SubscriptionRoot();

  factory GetChurchesStream$SubscriptionRoot.fromJson(
          Map<String, dynamic> json) =>
      _$GetChurchesStream$SubscriptionRootFromJson(json);

  late List<GetChurchesStream$SubscriptionRoot$Churches> churches;

  @override
  List<Object?> get props => [churches];
  @override
  Map<String, dynamic> toJson() =>
      _$GetChurchesStream$SubscriptionRootToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetCollegesStream$SubscriptionRoot$Colleges extends JsonSerializable
    with EquatableMixin {
  GetCollegesStream$SubscriptionRoot$Colleges();

  factory GetCollegesStream$SubscriptionRoot$Colleges.fromJson(
          Map<String, dynamic> json) =>
      _$GetCollegesStream$SubscriptionRoot$CollegesFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue id;

  late String name;

  @override
  List<Object?> get props => [id, name];
  @override
  Map<String, dynamic> toJson() =>
      _$GetCollegesStream$SubscriptionRoot$CollegesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetCollegesStream$SubscriptionRoot extends JsonSerializable
    with EquatableMixin {
  GetCollegesStream$SubscriptionRoot();

  factory GetCollegesStream$SubscriptionRoot.fromJson(
          Map<String, dynamic> json) =>
      _$GetCollegesStream$SubscriptionRootFromJson(json);

  late List<GetCollegesStream$SubscriptionRoot$Colleges> colleges;

  @override
  List<Object?> get props => [colleges];
  @override
  Map<String, dynamic> toJson() =>
      _$GetCollegesStream$SubscriptionRootToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetFathersStream$SubscriptionRoot$Fathers extends JsonSerializable
    with EquatableMixin {
  GetFathersStream$SubscriptionRoot$Fathers();

  factory GetFathersStream$SubscriptionRoot$Fathers.fromJson(
          Map<String, dynamic> json) =>
      _$GetFathersStream$SubscriptionRoot$FathersFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue id;

  late String name;

  @override
  List<Object?> get props => [id, name];
  @override
  Map<String, dynamic> toJson() =>
      _$GetFathersStream$SubscriptionRoot$FathersToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetFathersStream$SubscriptionRoot extends JsonSerializable
    with EquatableMixin {
  GetFathersStream$SubscriptionRoot();

  factory GetFathersStream$SubscriptionRoot.fromJson(
          Map<String, dynamic> json) =>
      _$GetFathersStream$SubscriptionRootFromJson(json);

  late List<GetFathersStream$SubscriptionRoot$Fathers> fathers;

  @override
  List<Object?> get props => [fathers];
  @override
  Map<String, dynamic> toJson() =>
      _$GetFathersStream$SubscriptionRootToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetJobsStream$SubscriptionRoot$Jobs extends JsonSerializable
    with EquatableMixin {
  GetJobsStream$SubscriptionRoot$Jobs();

  factory GetJobsStream$SubscriptionRoot$Jobs.fromJson(
          Map<String, dynamic> json) =>
      _$GetJobsStream$SubscriptionRoot$JobsFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue id;

  late String name;

  @override
  List<Object?> get props => [id, name];
  @override
  Map<String, dynamic> toJson() =>
      _$GetJobsStream$SubscriptionRoot$JobsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetJobsStream$SubscriptionRoot extends JsonSerializable
    with EquatableMixin {
  GetJobsStream$SubscriptionRoot();

  factory GetJobsStream$SubscriptionRoot.fromJson(Map<String, dynamic> json) =>
      _$GetJobsStream$SubscriptionRootFromJson(json);

  late List<GetJobsStream$SubscriptionRoot$Jobs> jobs;

  @override
  List<Object?> get props => [jobs];
  @override
  Map<String, dynamic> toJson() => _$GetJobsStream$SubscriptionRootToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetPersonStatesStream$SubscriptionRoot$PersonStates
    extends JsonSerializable with EquatableMixin {
  GetPersonStatesStream$SubscriptionRoot$PersonStates();

  factory GetPersonStatesStream$SubscriptionRoot$PersonStates.fromJson(
          Map<String, dynamic> json) =>
      _$GetPersonStatesStream$SubscriptionRoot$PersonStatesFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue id;

  late String name;

  late int color;

  @override
  List<Object?> get props => [id, name, color];
  @override
  Map<String, dynamic> toJson() =>
      _$GetPersonStatesStream$SubscriptionRoot$PersonStatesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetPersonStatesStream$SubscriptionRoot extends JsonSerializable
    with EquatableMixin {
  GetPersonStatesStream$SubscriptionRoot();

  factory GetPersonStatesStream$SubscriptionRoot.fromJson(
          Map<String, dynamic> json) =>
      _$GetPersonStatesStream$SubscriptionRootFromJson(json);

  late List<GetPersonStatesStream$SubscriptionRoot$PersonStates> personStates;

  @override
  List<Object?> get props => [personStates];
  @override
  Map<String, dynamic> toJson() =>
      _$GetPersonStatesStream$SubscriptionRootToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetPersonTypesStream$SubscriptionRoot$PersonTypes extends JsonSerializable
    with EquatableMixin {
  GetPersonTypesStream$SubscriptionRoot$PersonTypes();

  factory GetPersonTypesStream$SubscriptionRoot$PersonTypes.fromJson(
          Map<String, dynamic> json) =>
      _$GetPersonTypesStream$SubscriptionRoot$PersonTypesFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue id;

  late int order;

  late String name;

  @override
  List<Object?> get props => [id, order, name];
  @override
  Map<String, dynamic> toJson() =>
      _$GetPersonTypesStream$SubscriptionRoot$PersonTypesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetPersonTypesStream$SubscriptionRoot extends JsonSerializable
    with EquatableMixin {
  GetPersonTypesStream$SubscriptionRoot();

  factory GetPersonTypesStream$SubscriptionRoot.fromJson(
          Map<String, dynamic> json) =>
      _$GetPersonTypesStream$SubscriptionRootFromJson(json);

  late List<GetPersonTypesStream$SubscriptionRoot$PersonTypes> personTypes;

  @override
  List<Object?> get props => [personTypes];
  @override
  Map<String, dynamic> toJson() =>
      _$GetPersonTypesStream$SubscriptionRootToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetQualificationsStream$SubscriptionRoot$Qualifications
    extends JsonSerializable with EquatableMixin {
  GetQualificationsStream$SubscriptionRoot$Qualifications();

  factory GetQualificationsStream$SubscriptionRoot$Qualifications.fromJson(
          Map<String, dynamic> json) =>
      _$GetQualificationsStream$SubscriptionRoot$QualificationsFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue id;

  late String name;

  @override
  List<Object?> get props => [id, name];
  @override
  Map<String, dynamic> toJson() =>
      _$GetQualificationsStream$SubscriptionRoot$QualificationsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetQualificationsStream$SubscriptionRoot extends JsonSerializable
    with EquatableMixin {
  GetQualificationsStream$SubscriptionRoot();

  factory GetQualificationsStream$SubscriptionRoot.fromJson(
          Map<String, dynamic> json) =>
      _$GetQualificationsStream$SubscriptionRootFromJson(json);

  late List<GetQualificationsStream$SubscriptionRoot$Qualifications>
      qualifications;

  @override
  List<Object?> get props => [qualifications];
  @override
  Map<String, dynamic> toJson() =>
      _$GetQualificationsStream$SubscriptionRootToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetSchoolsStream$SubscriptionRoot$Schools extends JsonSerializable
    with EquatableMixin {
  GetSchoolsStream$SubscriptionRoot$Schools();

  factory GetSchoolsStream$SubscriptionRoot$Schools.fromJson(
          Map<String, dynamic> json) =>
      _$GetSchoolsStream$SubscriptionRoot$SchoolsFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue id;

  late String name;

  @override
  List<Object?> get props => [id, name];
  @override
  Map<String, dynamic> toJson() =>
      _$GetSchoolsStream$SubscriptionRoot$SchoolsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetSchoolsStream$SubscriptionRoot extends JsonSerializable
    with EquatableMixin {
  GetSchoolsStream$SubscriptionRoot();

  factory GetSchoolsStream$SubscriptionRoot.fromJson(
          Map<String, dynamic> json) =>
      _$GetSchoolsStream$SubscriptionRootFromJson(json);

  late List<GetSchoolsStream$SubscriptionRoot$Schools> schools;

  @override
  List<Object?> get props => [schools];
  @override
  Map<String, dynamic> toJson() =>
      _$GetSchoolsStream$SubscriptionRootToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetShammasLevelsStream$SubscriptionRoot$ShammasLevels
    extends JsonSerializable with EquatableMixin {
  GetShammasLevelsStream$SubscriptionRoot$ShammasLevels();

  factory GetShammasLevelsStream$SubscriptionRoot$ShammasLevels.fromJson(
          Map<String, dynamic> json) =>
      _$GetShammasLevelsStream$SubscriptionRoot$ShammasLevelsFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue id;

  late int order;

  late String name;

  @override
  List<Object?> get props => [id, order, name];
  @override
  Map<String, dynamic> toJson() =>
      _$GetShammasLevelsStream$SubscriptionRoot$ShammasLevelsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetShammasLevelsStream$SubscriptionRoot extends JsonSerializable
    with EquatableMixin {
  GetShammasLevelsStream$SubscriptionRoot();

  factory GetShammasLevelsStream$SubscriptionRoot.fromJson(
          Map<String, dynamic> json) =>
      _$GetShammasLevelsStream$SubscriptionRootFromJson(json);

  late List<GetShammasLevelsStream$SubscriptionRoot$ShammasLevels>
      shammasLevels;

  @override
  List<Object?> get props => [shammasLevels];
  @override
  Map<String, dynamic> toJson() =>
      _$GetShammasLevelsStream$SubscriptionRootToJson(this);
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

  GetStudyYearName$QueryRoot$StudyYears? studyYearsByPk;

  @override
  List<Object?> get props => [studyYearsByPk];
  @override
  Map<String, dynamic> toJson() => _$GetStudyYearName$QueryRootToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetStudyYearsStream$SubscriptionRoot$StudyYears extends JsonSerializable
    with EquatableMixin {
  GetStudyYearsStream$SubscriptionRoot$StudyYears();

  factory GetStudyYearsStream$SubscriptionRoot$StudyYears.fromJson(
          Map<String, dynamic> json) =>
      _$GetStudyYearsStream$SubscriptionRoot$StudyYearsFromJson(json);

  late int order;

  late String name;

  @override
  List<Object?> get props => [order, name];
  @override
  Map<String, dynamic> toJson() =>
      _$GetStudyYearsStream$SubscriptionRoot$StudyYearsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetStudyYearsStream$SubscriptionRoot extends JsonSerializable
    with EquatableMixin {
  GetStudyYearsStream$SubscriptionRoot();

  factory GetStudyYearsStream$SubscriptionRoot.fromJson(
          Map<String, dynamic> json) =>
      _$GetStudyYearsStream$SubscriptionRootFromJson(json);

  late List<GetStudyYearsStream$SubscriptionRoot$StudyYears> studyYears;

  @override
  List<Object?> get props => [studyYears];
  @override
  Map<String, dynamic> toJson() =>
      _$GetStudyYearsStream$SubscriptionRootToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetTagsStream$SubscriptionRoot$Tags extends JsonSerializable
    with EquatableMixin {
  GetTagsStream$SubscriptionRoot$Tags();

  factory GetTagsStream$SubscriptionRoot$Tags.fromJson(
          Map<String, dynamic> json) =>
      _$GetTagsStream$SubscriptionRoot$TagsFromJson(json);

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
      _$GetTagsStream$SubscriptionRoot$TagsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetTagsStream$SubscriptionRoot extends JsonSerializable
    with EquatableMixin {
  GetTagsStream$SubscriptionRoot();

  factory GetTagsStream$SubscriptionRoot.fromJson(Map<String, dynamic> json) =>
      _$GetTagsStream$SubscriptionRootFromJson(json);

  late List<GetTagsStream$SubscriptionRoot$Tags> tags;

  @override
  List<Object?> get props => [tags];
  @override
  Map<String, dynamic> toJson() => _$GetTagsStream$SubscriptionRootToJson(this);
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

  UpdatePersonSpiritData$MutationRoot$HistoryConfessionHistory?
      insertHistoryConfessionHistoryOne;

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
class DeletePerson$MutationRoot$Persons extends JsonSerializable
    with EquatableMixin {
  DeletePerson$MutationRoot$Persons();

  factory DeletePerson$MutationRoot$Persons.fromJson(
          Map<String, dynamic> json) =>
      _$DeletePerson$MutationRoot$PersonsFromJson(json);

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
      _$DeletePerson$MutationRoot$PersonsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DeletePerson$MutationRoot extends JsonSerializable with EquatableMixin {
  DeletePerson$MutationRoot();

  factory DeletePerson$MutationRoot.fromJson(Map<String, dynamic> json) =>
      _$DeletePerson$MutationRootFromJson(json);

  DeletePerson$MutationRoot$Persons? deletePersonsByPk;

  @override
  List<Object?> get props => [deletePersonsByPk];
  @override
  Map<String, dynamic> toJson() => _$DeletePerson$MutationRootToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UpdatePerson$MutationRoot$PersonsGroupsMutationResponse
    extends JsonSerializable with EquatableMixin {
  UpdatePerson$MutationRoot$PersonsGroupsMutationResponse();

  factory UpdatePerson$MutationRoot$PersonsGroupsMutationResponse.fromJson(
          Map<String, dynamic> json) =>
      _$UpdatePerson$MutationRoot$PersonsGroupsMutationResponseFromJson(json);

  @JsonKey(name: 'affected_rows')
  late int affectedRows;

  @override
  List<Object?> get props => [affectedRows];
  @override
  Map<String, dynamic> toJson() =>
      _$UpdatePerson$MutationRoot$PersonsGroupsMutationResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UpdatePerson$MutationRoot$PersonsServicesMutationResponse
    extends JsonSerializable with EquatableMixin {
  UpdatePerson$MutationRoot$PersonsServicesMutationResponse();

  factory UpdatePerson$MutationRoot$PersonsServicesMutationResponse.fromJson(
          Map<String, dynamic> json) =>
      _$UpdatePerson$MutationRoot$PersonsServicesMutationResponseFromJson(json);

  @JsonKey(name: 'affected_rows')
  late int affectedRows;

  @override
  List<Object?> get props => [affectedRows];
  @override
  Map<String, dynamic> toJson() =>
      _$UpdatePerson$MutationRoot$PersonsServicesMutationResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UpdatePerson$MutationRoot$PersonsTagsMutationResponse
    extends JsonSerializable with EquatableMixin {
  UpdatePerson$MutationRoot$PersonsTagsMutationResponse();

  factory UpdatePerson$MutationRoot$PersonsTagsMutationResponse.fromJson(
          Map<String, dynamic> json) =>
      _$UpdatePerson$MutationRoot$PersonsTagsMutationResponseFromJson(json);

  @JsonKey(name: 'affected_rows')
  late int affectedRows;

  @override
  List<Object?> get props => [affectedRows];
  @override
  Map<String, dynamic> toJson() =>
      _$UpdatePerson$MutationRoot$PersonsTagsMutationResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UpdatePerson$MutationRoot$Persons extends JsonSerializable
    with EquatableMixin {
  UpdatePerson$MutationRoot$Persons();

  factory UpdatePerson$MutationRoot$Persons.fromJson(
          Map<String, dynamic> json) =>
      _$UpdatePerson$MutationRoot$PersonsFromJson(json);

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
      _$UpdatePerson$MutationRoot$PersonsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UpdatePerson$MutationRoot$HistoryConfessionHistory$Persons
    extends JsonSerializable with EquatableMixin {
  UpdatePerson$MutationRoot$HistoryConfessionHistory$Persons();

  factory UpdatePerson$MutationRoot$HistoryConfessionHistory$Persons.fromJson(
          Map<String, dynamic> json) =>
      _$UpdatePerson$MutationRoot$HistoryConfessionHistory$PersonsFromJson(
          json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue id;

  late String name;

  @override
  List<Object?> get props => [id, name];
  @override
  Map<String, dynamic> toJson() =>
      _$UpdatePerson$MutationRoot$HistoryConfessionHistory$PersonsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UpdatePerson$MutationRoot$HistoryConfessionHistory
    extends JsonSerializable with EquatableMixin {
  UpdatePerson$MutationRoot$HistoryConfessionHistory();

  factory UpdatePerson$MutationRoot$HistoryConfessionHistory.fromJson(
          Map<String, dynamic> json) =>
      _$UpdatePerson$MutationRoot$HistoryConfessionHistoryFromJson(json);

  late UpdatePerson$MutationRoot$HistoryConfessionHistory$Persons person;

  @override
  List<Object?> get props => [person];
  @override
  Map<String, dynamic> toJson() =>
      _$UpdatePerson$MutationRoot$HistoryConfessionHistoryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UpdatePerson$MutationRoot$HistoryKodasHistory$Persons
    extends JsonSerializable with EquatableMixin {
  UpdatePerson$MutationRoot$HistoryKodasHistory$Persons();

  factory UpdatePerson$MutationRoot$HistoryKodasHistory$Persons.fromJson(
          Map<String, dynamic> json) =>
      _$UpdatePerson$MutationRoot$HistoryKodasHistory$PersonsFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue id;

  late String name;

  @override
  List<Object?> get props => [id, name];
  @override
  Map<String, dynamic> toJson() =>
      _$UpdatePerson$MutationRoot$HistoryKodasHistory$PersonsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UpdatePerson$MutationRoot$HistoryKodasHistory extends JsonSerializable
    with EquatableMixin {
  UpdatePerson$MutationRoot$HistoryKodasHistory();

  factory UpdatePerson$MutationRoot$HistoryKodasHistory.fromJson(
          Map<String, dynamic> json) =>
      _$UpdatePerson$MutationRoot$HistoryKodasHistoryFromJson(json);

  late UpdatePerson$MutationRoot$HistoryKodasHistory$Persons person;

  @override
  List<Object?> get props => [person];
  @override
  Map<String, dynamic> toJson() =>
      _$UpdatePerson$MutationRoot$HistoryKodasHistoryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UpdatePerson$MutationRoot$HistoryCallHistory$Persons
    extends JsonSerializable with EquatableMixin {
  UpdatePerson$MutationRoot$HistoryCallHistory$Persons();

  factory UpdatePerson$MutationRoot$HistoryCallHistory$Persons.fromJson(
          Map<String, dynamic> json) =>
      _$UpdatePerson$MutationRoot$HistoryCallHistory$PersonsFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue id;

  late String name;

  @override
  List<Object?> get props => [id, name];
  @override
  Map<String, dynamic> toJson() =>
      _$UpdatePerson$MutationRoot$HistoryCallHistory$PersonsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UpdatePerson$MutationRoot$HistoryCallHistory extends JsonSerializable
    with EquatableMixin {
  UpdatePerson$MutationRoot$HistoryCallHistory();

  factory UpdatePerson$MutationRoot$HistoryCallHistory.fromJson(
          Map<String, dynamic> json) =>
      _$UpdatePerson$MutationRoot$HistoryCallHistoryFromJson(json);

  late UpdatePerson$MutationRoot$HistoryCallHistory$Persons person;

  @override
  List<Object?> get props => [person];
  @override
  Map<String, dynamic> toJson() =>
      _$UpdatePerson$MutationRoot$HistoryCallHistoryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UpdatePerson$MutationRoot$HistoryVisitHistory$Persons
    extends JsonSerializable with EquatableMixin {
  UpdatePerson$MutationRoot$HistoryVisitHistory$Persons();

  factory UpdatePerson$MutationRoot$HistoryVisitHistory$Persons.fromJson(
          Map<String, dynamic> json) =>
      _$UpdatePerson$MutationRoot$HistoryVisitHistory$PersonsFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue id;

  late String name;

  @override
  List<Object?> get props => [id, name];
  @override
  Map<String, dynamic> toJson() =>
      _$UpdatePerson$MutationRoot$HistoryVisitHistory$PersonsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UpdatePerson$MutationRoot$HistoryVisitHistory extends JsonSerializable
    with EquatableMixin {
  UpdatePerson$MutationRoot$HistoryVisitHistory();

  factory UpdatePerson$MutationRoot$HistoryVisitHistory.fromJson(
          Map<String, dynamic> json) =>
      _$UpdatePerson$MutationRoot$HistoryVisitHistoryFromJson(json);

  late UpdatePerson$MutationRoot$HistoryVisitHistory$Persons person;

  @override
  List<Object?> get props => [person];
  @override
  Map<String, dynamic> toJson() =>
      _$UpdatePerson$MutationRoot$HistoryVisitHistoryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UpdatePerson$MutationRoot extends JsonSerializable with EquatableMixin {
  UpdatePerson$MutationRoot();

  factory UpdatePerson$MutationRoot.fromJson(Map<String, dynamic> json) =>
      _$UpdatePerson$MutationRootFromJson(json);

  UpdatePerson$MutationRoot$PersonsGroupsMutationResponse? insertPersonsGroups;

  UpdatePerson$MutationRoot$PersonsServicesMutationResponse?
      insertPersonsServices;

  UpdatePerson$MutationRoot$PersonsTagsMutationResponse? insertPersonsTags;

  UpdatePerson$MutationRoot$PersonsGroupsMutationResponse? deletePersonsGroups;

  UpdatePerson$MutationRoot$PersonsServicesMutationResponse?
      deletePersonsServices;

  UpdatePerson$MutationRoot$PersonsTagsMutationResponse? deletePersonsTags;

  UpdatePerson$MutationRoot$Persons? updatePersonsByPk;

  UpdatePerson$MutationRoot$HistoryConfessionHistory?
      insertHistoryConfessionHistoryOne;

  UpdatePerson$MutationRoot$HistoryKodasHistory? insertHistoryKodasHistoryOne;

  UpdatePerson$MutationRoot$HistoryCallHistory? insertHistoryCallHistoryOne;

  UpdatePerson$MutationRoot$HistoryVisitHistory? insertHistoryVisitHistoryOne;

  @override
  List<Object?> get props => [
        insertPersonsGroups,
        insertPersonsServices,
        insertPersonsTags,
        deletePersonsGroups,
        deletePersonsServices,
        deletePersonsTags,
        updatePersonsByPk,
        insertHistoryConfessionHistoryOne,
        insertHistoryKodasHistoryOne,
        insertHistoryCallHistoryOne,
        insertHistoryVisitHistoryOne
      ];
  @override
  Map<String, dynamic> toJson() => _$UpdatePerson$MutationRootToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PersonsSetInput extends JsonSerializable with EquatableMixin {
  PersonsSetInput(
      {this.address,
      this.birthdate,
      this.churchId,
      this.collegeId,
      this.color,
      this.familyId,
      this.fatherId,
      this.firestoreId,
      this.gender,
      this.geolocation,
      this.id,
      this.isServant,
      this.isShammas,
      this.isStudent,
      this.jobDescription,
      this.jobId,
      this.mainPhone,
      this.name,
      this.notes,
      this.otherPhones,
      this.personTypeId,
      this.photoUpdatedAt,
      this.qualificationId,
      this.schoolId,
      this.shammasLevelId,
      this.stateId,
      this.storeId,
      this.studyYearId,
      this.uid});

  factory PersonsSetInput.fromJson(Map<String, dynamic> json) =>
      _$PersonsSetInputFromJson(json);

  String? address;

  DateTime? birthdate;

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? churchId;

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? collegeId;

  int? color;

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? familyId;

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? fatherId;

  String? firestoreId;

  bool? gender;

  @JsonKey(
      fromJson: fromGraphQLGeographyNullableToDartJsonNullable,
      toJson: fromDartJsonNullableToGraphQLGeographyNullable)
  Json? geolocation;

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? id;

  bool? isServant;

  bool? isShammas;

  bool? isStudent;

  String? jobDescription;

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? jobId;

  String? mainPhone;

  String? name;

  String? notes;

  @JsonKey(
      fromJson: fromGraphQLJsonbNullableToDartJsonNullable,
      toJson: fromDartJsonNullableToGraphQLJsonbNullable)
  Json? otherPhones;

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? personTypeId;

  DateTime? photoUpdatedAt;

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? qualificationId;

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? schoolId;

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? shammasLevelId;

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? stateId;

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? storeId;

  int? studyYearId;

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? uid;

  @override
  List<Object?> get props => [
        address,
        birthdate,
        churchId,
        collegeId,
        color,
        familyId,
        fatherId,
        firestoreId,
        gender,
        geolocation,
        id,
        isServant,
        isShammas,
        isStudent,
        jobDescription,
        jobId,
        mainPhone,
        name,
        notes,
        otherPhones,
        personTypeId,
        photoUpdatedAt,
        qualificationId,
        schoolId,
        shammasLevelId,
        stateId,
        storeId,
        studyYearId,
        uid
      ];
  @override
  Map<String, dynamic> toJson() => _$PersonsSetInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PersonsGroupsInsertInput extends JsonSerializable with EquatableMixin {
  PersonsGroupsInsertInput(
      {this.group, this.groupId, this.person, this.personId, this.relId});

  factory PersonsGroupsInsertInput.fromJson(Map<String, dynamic> json) =>
      _$PersonsGroupsInsertInputFromJson(json);

  GroupsObjRelInsertInput? group;

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? groupId;

  PersonsObjRelInsertInput? person;

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? personId;

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? relId;

  @override
  List<Object?> get props => [group, groupId, person, personId, relId];
  @override
  Map<String, dynamic> toJson() => _$PersonsGroupsInsertInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GroupsObjRelInsertInput extends JsonSerializable with EquatableMixin {
  GroupsObjRelInsertInput({required this.data, this.onConflict});

  factory GroupsObjRelInsertInput.fromJson(Map<String, dynamic> json) =>
      _$GroupsObjRelInsertInputFromJson(json);

  late GroupsInsertInput data;

  GroupsOnConflict? onConflict;

  @override
  List<Object?> get props => [data, onConflict];
  @override
  Map<String, dynamic> toJson() => _$GroupsObjRelInsertInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GroupsInsertInput extends JsonSerializable with EquatableMixin {
  GroupsInsertInput(
      {this.adminUsers,
      this.attendanceDaysConstraints,
      this.attendanceHistory,
      this.color,
      this.id,
      this.name,
      this.persons,
      this.photoUpdatedAt,
      this.service,
      this.serviceId,
      this.validity});

  factory GroupsInsertInput.fromJson(Map<String, dynamic> json) =>
      _$GroupsInsertInputFromJson(json);

  UsersPermissionsArrRelInsertInput? adminUsers;

  HistoryAttendanceDaysConstraintsArrRelInsertInput? attendanceDaysConstraints;

  HistoryAttendanceHistoryArrRelInsertInput? attendanceHistory;

  int? color;

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? id;

  String? name;

  PersonsGroupsArrRelInsertInput? persons;

  DateTime? photoUpdatedAt;

  ServicesObjRelInsertInput? service;

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? serviceId;

  String? validity;

  @override
  List<Object?> get props => [
        adminUsers,
        attendanceDaysConstraints,
        attendanceHistory,
        color,
        id,
        name,
        persons,
        photoUpdatedAt,
        service,
        serviceId,
        validity
      ];
  @override
  Map<String, dynamic> toJson() => _$GroupsInsertInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UsersPermissionsArrRelInsertInput extends JsonSerializable
    with EquatableMixin {
  UsersPermissionsArrRelInsertInput({required this.data, this.onConflict});

  factory UsersPermissionsArrRelInsertInput.fromJson(
          Map<String, dynamic> json) =>
      _$UsersPermissionsArrRelInsertInputFromJson(json);

  late List<UsersPermissionsInsertInput> data;

  UsersPermissionsOnConflict? onConflict;

  @override
  List<Object?> get props => [data, onConflict];
  @override
  Map<String, dynamic> toJson() =>
      _$UsersPermissionsArrRelInsertInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UsersPermissionsInsertInput extends JsonSerializable with EquatableMixin {
  UsersPermissionsInsertInput(
      {this.adminOnArea,
      this.adminOnGroup,
      this.adminOnService,
      this.area,
      this.areaAdminOnUsers,
      this.areaAllowEdit,
      this.classes,
      this.group,
      this.groupAdminOnUsers,
      this.groupAllowEdit,
      this.permissionId,
      this.service,
      this.serviceAdminOnUsers,
      this.serviceAllowEdit,
      this.serviceGender,
      this.serviceStudyYear,
      this.serviceStudyYearData,
      this.uid,
      this.user});

  factory UsersPermissionsInsertInput.fromJson(Map<String, dynamic> json) =>
      _$UsersPermissionsInsertInputFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? adminOnArea;

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? adminOnGroup;

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? adminOnService;

  AreasObjRelInsertInput? area;

  bool? areaAdminOnUsers;

  bool? areaAllowEdit;

  ClassesArrRelInsertInput? classes;

  GroupsObjRelInsertInput? group;

  bool? groupAdminOnUsers;

  bool? groupAllowEdit;

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? permissionId;

  ServicesObjRelInsertInput? service;

  bool? serviceAdminOnUsers;

  bool? serviceAllowEdit;

  bool? serviceGender;

  int? serviceStudyYear;

  StudyYearsObjRelInsertInput? serviceStudyYearData;

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? uid;

  UsersObjRelInsertInput? user;

  @override
  List<Object?> get props => [
        adminOnArea,
        adminOnGroup,
        adminOnService,
        area,
        areaAdminOnUsers,
        areaAllowEdit,
        classes,
        group,
        groupAdminOnUsers,
        groupAllowEdit,
        permissionId,
        service,
        serviceAdminOnUsers,
        serviceAllowEdit,
        serviceGender,
        serviceStudyYear,
        serviceStudyYearData,
        uid,
        user
      ];
  @override
  Map<String, dynamic> toJson() => _$UsersPermissionsInsertInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AreasObjRelInsertInput extends JsonSerializable with EquatableMixin {
  AreasObjRelInsertInput({required this.data, this.onConflict});

  factory AreasObjRelInsertInput.fromJson(Map<String, dynamic> json) =>
      _$AreasObjRelInsertInputFromJson(json);

  late AreasInsertInput data;

  AreasOnConflict? onConflict;

  @override
  List<Object?> get props => [data, onConflict];
  @override
  Map<String, dynamic> toJson() => _$AreasObjRelInsertInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AreasInsertInput extends JsonSerializable with EquatableMixin {
  AreasInsertInput(
      {this.adminUsers,
      this.bounds,
      this.color,
      this.firestoreId,
      this.id,
      this.name,
      this.photoUpdatedAt});

  factory AreasInsertInput.fromJson(Map<String, dynamic> json) =>
      _$AreasInsertInputFromJson(json);

  UsersPermissionsArrRelInsertInput? adminUsers;

  @JsonKey(
      fromJson: fromGraphQLGeographyNullableToDartJsonNullable,
      toJson: fromDartJsonNullableToGraphQLGeographyNullable)
  Json? bounds;

  int? color;

  String? firestoreId;

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? id;

  String? name;

  DateTime? photoUpdatedAt;

  @override
  List<Object?> get props =>
      [adminUsers, bounds, color, firestoreId, id, name, photoUpdatedAt];
  @override
  Map<String, dynamic> toJson() => _$AreasInsertInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AreasOnConflict extends JsonSerializable with EquatableMixin {
  AreasOnConflict(
      {required this.constraint, required this.updateColumns, this.where});

  factory AreasOnConflict.fromJson(Map<String, dynamic> json) =>
      _$AreasOnConflictFromJson(json);

  @JsonKey(unknownEnumValue: AreasConstraint.artemisUnknown)
  late AreasConstraint constraint;

  @JsonKey(
      name: 'update_columns',
      unknownEnumValue: AreasUpdateColumn.artemisUnknown)
  late List<AreasUpdateColumn> updateColumns;

  AreasBoolExp? where;

  @override
  List<Object?> get props => [constraint, updateColumns, where];
  @override
  Map<String, dynamic> toJson() => _$AreasOnConflictToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ClassesArrRelInsertInput extends JsonSerializable with EquatableMixin {
  ClassesArrRelInsertInput({required this.data, this.onConflict});

  factory ClassesArrRelInsertInput.fromJson(Map<String, dynamic> json) =>
      _$ClassesArrRelInsertInputFromJson(json);

  late List<ClassesInsertInput> data;

  ClassesOnConflict? onConflict;

  @override
  List<Object?> get props => [data, onConflict];
  @override
  Map<String, dynamic> toJson() => _$ClassesArrRelInsertInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ClassesInsertInput extends JsonSerializable with EquatableMixin {
  ClassesInsertInput(
      {this.attendanceDaysConstraints,
      this.attendanceHistory,
      this.color,
      this.id,
      this.name,
      this.photoUpdatedAt,
      this.service,
      this.serviceGender,
      this.serviceId,
      this.serviceStudyYear,
      this.studyYear});

  factory ClassesInsertInput.fromJson(Map<String, dynamic> json) =>
      _$ClassesInsertInputFromJson(json);

  HistoryAttendanceDaysConstraintsArrRelInsertInput? attendanceDaysConstraints;

  HistoryAttendanceHistoryArrRelInsertInput? attendanceHistory;

  int? color;

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? id;

  String? name;

  DateTime? photoUpdatedAt;

  ServicesObjRelInsertInput? service;

  bool? serviceGender;

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? serviceId;

  int? serviceStudyYear;

  StudyYearsObjRelInsertInput? studyYear;

  @override
  List<Object?> get props => [
        attendanceDaysConstraints,
        attendanceHistory,
        color,
        id,
        name,
        photoUpdatedAt,
        service,
        serviceGender,
        serviceId,
        serviceStudyYear,
        studyYear
      ];
  @override
  Map<String, dynamic> toJson() => _$ClassesInsertInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class HistoryAttendanceDaysConstraintsArrRelInsertInput extends JsonSerializable
    with EquatableMixin {
  HistoryAttendanceDaysConstraintsArrRelInsertInput(
      {required this.data, this.onConflict});

  factory HistoryAttendanceDaysConstraintsArrRelInsertInput.fromJson(
          Map<String, dynamic> json) =>
      _$HistoryAttendanceDaysConstraintsArrRelInsertInputFromJson(json);

  late List<HistoryAttendanceDaysConstraintsInsertInput> data;

  HistoryAttendanceDaysConstraintsOnConflict? onConflict;

  @override
  List<Object?> get props => [data, onConflict];
  @override
  Map<String, dynamic> toJson() =>
      _$HistoryAttendanceDaysConstraintsArrRelInsertInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class HistoryAttendanceDaysConstraintsInsertInput extends JsonSerializable
    with EquatableMixin {
  HistoryAttendanceDaysConstraintsInsertInput(
      {this.day,
      this.dayId,
      this.group,
      this.groupId,
      this.id,
      this.service,
      this.serviceGender,
      this.serviceId,
      this.serviceStudyYear,
      this.studyYear});

  factory HistoryAttendanceDaysConstraintsInsertInput.fromJson(
          Map<String, dynamic> json) =>
      _$HistoryAttendanceDaysConstraintsInsertInputFromJson(json);

  HistoryAttendanceDaysObjRelInsertInput? day;

  DateTime? dayId;

  GroupsObjRelInsertInput? group;

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? groupId;

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? id;

  ServicesObjRelInsertInput? service;

  bool? serviceGender;

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? serviceId;

  int? serviceStudyYear;

  StudyYearsObjRelInsertInput? studyYear;

  @override
  List<Object?> get props => [
        day,
        dayId,
        group,
        groupId,
        id,
        service,
        serviceGender,
        serviceId,
        serviceStudyYear,
        studyYear
      ];
  @override
  Map<String, dynamic> toJson() =>
      _$HistoryAttendanceDaysConstraintsInsertInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class HistoryAttendanceDaysObjRelInsertInput extends JsonSerializable
    with EquatableMixin {
  HistoryAttendanceDaysObjRelInsertInput({required this.data, this.onConflict});

  factory HistoryAttendanceDaysObjRelInsertInput.fromJson(
          Map<String, dynamic> json) =>
      _$HistoryAttendanceDaysObjRelInsertInputFromJson(json);

  late HistoryAttendanceDaysInsertInput data;

  HistoryAttendanceDaysOnConflict? onConflict;

  @override
  List<Object?> get props => [data, onConflict];
  @override
  Map<String, dynamic> toJson() =>
      _$HistoryAttendanceDaysObjRelInsertInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class HistoryAttendanceDaysInsertInput extends JsonSerializable
    with EquatableMixin {
  HistoryAttendanceDaysInsertInput(
      {this.attendanceHistory,
      this.confessionHistory,
      this.constraints,
      this.day,
      this.kodasHistory,
      this.notes});

  factory HistoryAttendanceDaysInsertInput.fromJson(
          Map<String, dynamic> json) =>
      _$HistoryAttendanceDaysInsertInputFromJson(json);

  HistoryAttendanceHistoryArrRelInsertInput? attendanceHistory;

  HistoryConfessionHistoryArrRelInsertInput? confessionHistory;

  HistoryAttendanceDaysConstraintsArrRelInsertInput? constraints;

  DateTime? day;

  HistoryKodasHistoryArrRelInsertInput? kodasHistory;

  String? notes;

  @override
  List<Object?> get props => [
        attendanceHistory,
        confessionHistory,
        constraints,
        day,
        kodasHistory,
        notes
      ];
  @override
  Map<String, dynamic> toJson() =>
      _$HistoryAttendanceDaysInsertInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class HistoryAttendanceHistoryArrRelInsertInput extends JsonSerializable
    with EquatableMixin {
  HistoryAttendanceHistoryArrRelInsertInput(
      {required this.data, this.onConflict});

  factory HistoryAttendanceHistoryArrRelInsertInput.fromJson(
          Map<String, dynamic> json) =>
      _$HistoryAttendanceHistoryArrRelInsertInputFromJson(json);

  late List<HistoryAttendanceHistoryInsertInput> data;

  HistoryAttendanceHistoryOnConflict? onConflict;

  @override
  List<Object?> get props => [data, onConflict];
  @override
  Map<String, dynamic> toJson() =>
      _$HistoryAttendanceHistoryArrRelInsertInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class HistoryAttendanceHistoryInsertInput extends JsonSerializable
    with EquatableMixin {
  HistoryAttendanceHistoryInsertInput(
      {this.asAdmin,
      this.kw$class,
      this.day,
      this.dayId,
      this.group,
      this.groupId,
      this.id,
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

  factory HistoryAttendanceHistoryInsertInput.fromJson(
          Map<String, dynamic> json) =>
      _$HistoryAttendanceHistoryInsertInputFromJson(json);

  bool? asAdmin;

  @JsonKey(name: 'class')
  ClassesObjRelInsertInput? kw$class;

  HistoryAttendanceDaysObjRelInsertInput? day;

  DateTime? dayId;

  GroupsObjRelInsertInput? group;

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? groupId;

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? id;

  PersonsObjRelInsertInput? person;

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? personId;

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? recordedBy;

  ServicesObjRelInsertInput? service;

  bool? serviceGender;

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? serviceId;

  int? serviceStudyYear;

  StudyYearsObjRelInsertInput? studyYear;

  DateTime? time;

  UsersObjRelInsertInput? user;

  @override
  List<Object?> get props => [
        asAdmin,
        kw$class,
        day,
        dayId,
        group,
        groupId,
        id,
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
      _$HistoryAttendanceHistoryInsertInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ClassesObjRelInsertInput extends JsonSerializable with EquatableMixin {
  ClassesObjRelInsertInput({required this.data, this.onConflict});

  factory ClassesObjRelInsertInput.fromJson(Map<String, dynamic> json) =>
      _$ClassesObjRelInsertInputFromJson(json);

  late ClassesInsertInput data;

  ClassesOnConflict? onConflict;

  @override
  List<Object?> get props => [data, onConflict];
  @override
  Map<String, dynamic> toJson() => _$ClassesObjRelInsertInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ClassesOnConflict extends JsonSerializable with EquatableMixin {
  ClassesOnConflict(
      {required this.constraint, required this.updateColumns, this.where});

  factory ClassesOnConflict.fromJson(Map<String, dynamic> json) =>
      _$ClassesOnConflictFromJson(json);

  @JsonKey(unknownEnumValue: ClassesConstraint.artemisUnknown)
  late ClassesConstraint constraint;

  @JsonKey(
      name: 'update_columns',
      unknownEnumValue: ClassesUpdateColumn.artemisUnknown)
  late List<ClassesUpdateColumn> updateColumns;

  ClassesBoolExp? where;

  @override
  List<Object?> get props => [constraint, updateColumns, where];
  @override
  Map<String, dynamic> toJson() => _$ClassesOnConflictToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PersonsObjRelInsertInput extends JsonSerializable with EquatableMixin {
  PersonsObjRelInsertInput({required this.data, this.onConflict});

  factory PersonsObjRelInsertInput.fromJson(Map<String, dynamic> json) =>
      _$PersonsObjRelInsertInputFromJson(json);

  late PersonsInsertInput data;

  PersonsOnConflict? onConflict;

  @override
  List<Object?> get props => [data, onConflict];
  @override
  Map<String, dynamic> toJson() => _$PersonsObjRelInsertInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PersonsInsertInput extends JsonSerializable with EquatableMixin {
  PersonsInsertInput(
      {this.address,
      this.attendanceHistory,
      this.birthdate,
      this.callHistory,
      this.church,
      this.churchId,
      this.college,
      this.collegeId,
      this.color,
      this.confessionHistory,
      this.editHistory,
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
      this.job,
      this.jobDescription,
      this.jobId,
      this.kodasHistory,
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
      this.studyYear,
      this.studyYearId,
      this.tags,
      this.uid,
      this.user,
      this.visitHistory});

  factory PersonsInsertInput.fromJson(Map<String, dynamic> json) =>
      _$PersonsInsertInputFromJson(json);

  String? address;

  HistoryAttendanceHistoryArrRelInsertInput? attendanceHistory;

  DateTime? birthdate;

  HistoryCallHistoryArrRelInsertInput? callHistory;

  ChurchesObjRelInsertInput? church;

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? churchId;

  CollegesObjRelInsertInput? college;

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? collegeId;

  int? color;

  HistoryConfessionHistoryArrRelInsertInput? confessionHistory;

  HistoryEditHistoryArrRelInsertInput? editHistory;

  FamiliesObjRelInsertInput? family;

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? familyId;

  FathersObjRelInsertInput? father;

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? fatherId;

  String? firestoreId;

  bool? gender;

  @JsonKey(
      fromJson: fromGraphQLGeographyNullableToDartJsonNullable,
      toJson: fromDartJsonNullableToGraphQLGeographyNullable)
  Json? geolocation;

  PersonsGroupsArrRelInsertInput? groups;

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? id;

  bool? isServant;

  bool? isShammas;

  bool? isStudent;

  JobsObjRelInsertInput? job;

  String? jobDescription;

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? jobId;

  HistoryKodasHistoryArrRelInsertInput? kodasHistory;

  String? mainPhone;

  String? name;

  String? notes;

  @JsonKey(
      fromJson: fromGraphQLJsonbNullableToDartJsonNullable,
      toJson: fromDartJsonNullableToGraphQLJsonbNullable)
  Json? otherPhones;

  PersonTypesObjRelInsertInput? personType;

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? personTypeId;

  DateTime? photoUpdatedAt;

  QualificationsObjRelInsertInput? qualification;

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? qualificationId;

  SchoolsObjRelInsertInput? school;

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? schoolId;

  PersonsServicesArrRelInsertInput? services;

  ShammasLevelsObjRelInsertInput? shammasLevel;

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? shammasLevelId;

  PersonStatesObjRelInsertInput? state;

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? stateId;

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? storeId;

  StudyYearsObjRelInsertInput? studyYear;

  int? studyYearId;

  PersonsTagsArrRelInsertInput? tags;

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? uid;

  UsersObjRelInsertInput? user;

  HistoryVisitHistoryArrRelInsertInput? visitHistory;

  @override
  List<Object?> get props => [
        address,
        attendanceHistory,
        birthdate,
        callHistory,
        church,
        churchId,
        college,
        collegeId,
        color,
        confessionHistory,
        editHistory,
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
        job,
        jobDescription,
        jobId,
        kodasHistory,
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
        studyYear,
        studyYearId,
        tags,
        uid,
        user,
        visitHistory
      ];
  @override
  Map<String, dynamic> toJson() => _$PersonsInsertInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class HistoryCallHistoryArrRelInsertInput extends JsonSerializable
    with EquatableMixin {
  HistoryCallHistoryArrRelInsertInput({required this.data, this.onConflict});

  factory HistoryCallHistoryArrRelInsertInput.fromJson(
          Map<String, dynamic> json) =>
      _$HistoryCallHistoryArrRelInsertInputFromJson(json);

  late List<HistoryCallHistoryInsertInput> data;

  HistoryCallHistoryOnConflict? onConflict;

  @override
  List<Object?> get props => [data, onConflict];
  @override
  Map<String, dynamic> toJson() =>
      _$HistoryCallHistoryArrRelInsertInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class HistoryCallHistoryInsertInput extends JsonSerializable
    with EquatableMixin {
  HistoryCallHistoryInsertInput(
      {this.person,
      this.personId,
      this.recordedBy,
      this.time,
      this.user,
      this.userRole});

  factory HistoryCallHistoryInsertInput.fromJson(Map<String, dynamic> json) =>
      _$HistoryCallHistoryInsertInputFromJson(json);

  PersonsObjRelInsertInput? person;

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? personId;

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? recordedBy;

  DateTime? time;

  UsersObjRelInsertInput? user;

  String? userRole;

  @override
  List<Object?> get props =>
      [person, personId, recordedBy, time, user, userRole];
  @override
  Map<String, dynamic> toJson() => _$HistoryCallHistoryInsertInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UsersObjRelInsertInput extends JsonSerializable with EquatableMixin {
  UsersObjRelInsertInput({required this.data, this.onConflict});

  factory UsersObjRelInsertInput.fromJson(Map<String, dynamic> json) =>
      _$UsersObjRelInsertInputFromJson(json);

  late UsersInsertInput data;

  UsersOnConflict? onConflict;

  @override
  List<Object?> get props => [data, onConflict];
  @override
  Map<String, dynamic> toJson() => _$UsersObjRelInsertInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UsersInsertInput extends JsonSerializable with EquatableMixin {
  UsersInsertInput(
      {this.adminOn,
      this.name,
      this.person,
      this.photoUpdatedAt,
      this.uid,
      this.userData});

  factory UsersInsertInput.fromJson(Map<String, dynamic> json) =>
      _$UsersInsertInputFromJson(json);

  UsersPermissionsArrRelInsertInput? adminOn;

  String? name;

  PersonsObjRelInsertInput? person;

  DateTime? photoUpdatedAt;

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? uid;

  UsersDataObjRelInsertInput? userData;

  @override
  List<Object?> get props =>
      [adminOn, name, person, photoUpdatedAt, uid, userData];
  @override
  Map<String, dynamic> toJson() => _$UsersInsertInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UsersDataObjRelInsertInput extends JsonSerializable with EquatableMixin {
  UsersDataObjRelInsertInput({required this.data, this.onConflict});

  factory UsersDataObjRelInsertInput.fromJson(Map<String, dynamic> json) =>
      _$UsersDataObjRelInsertInputFromJson(json);

  late UsersDataInsertInput data;

  UsersDataOnConflict? onConflict;

  @override
  List<Object?> get props => [data, onConflict];
  @override
  Map<String, dynamic> toJson() => _$UsersDataObjRelInsertInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UsersDataInsertInput extends JsonSerializable with EquatableMixin {
  UsersDataInsertInput(
      {this.email,
      this.firebaseAuthUid,
      this.firestoreId,
      this.permissions,
      this.uid,
      this.user});

  factory UsersDataInsertInput.fromJson(Map<String, dynamic> json) =>
      _$UsersDataInsertInputFromJson(json);

  String? email;

  String? firebaseAuthUid;

  String? firestoreId;

  List<String>? permissions;

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? uid;

  UsersObjRelInsertInput? user;

  @override
  List<Object?> get props =>
      [email, firebaseAuthUid, firestoreId, permissions, uid, user];
  @override
  Map<String, dynamic> toJson() => _$UsersDataInsertInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UsersDataOnConflict extends JsonSerializable with EquatableMixin {
  UsersDataOnConflict(
      {required this.constraint, required this.updateColumns, this.where});

  factory UsersDataOnConflict.fromJson(Map<String, dynamic> json) =>
      _$UsersDataOnConflictFromJson(json);

  @JsonKey(unknownEnumValue: UsersDataConstraint.artemisUnknown)
  late UsersDataConstraint constraint;

  @JsonKey(
      name: 'update_columns',
      unknownEnumValue: UsersDataUpdateColumn.artemisUnknown)
  late List<UsersDataUpdateColumn> updateColumns;

  UsersDataBoolExp? where;

  @override
  List<Object?> get props => [constraint, updateColumns, where];
  @override
  Map<String, dynamic> toJson() => _$UsersDataOnConflictToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UsersOnConflict extends JsonSerializable with EquatableMixin {
  UsersOnConflict(
      {required this.constraint, required this.updateColumns, this.where});

  factory UsersOnConflict.fromJson(Map<String, dynamic> json) =>
      _$UsersOnConflictFromJson(json);

  @JsonKey(unknownEnumValue: UsersConstraint.artemisUnknown)
  late UsersConstraint constraint;

  @JsonKey(
      name: 'update_columns',
      unknownEnumValue: UsersUpdateColumn.artemisUnknown)
  late List<UsersUpdateColumn> updateColumns;

  UsersBoolExp? where;

  @override
  List<Object?> get props => [constraint, updateColumns, where];
  @override
  Map<String, dynamic> toJson() => _$UsersOnConflictToJson(this);
}

@JsonSerializable(explicitToJson: true)
class HistoryCallHistoryOnConflict extends JsonSerializable
    with EquatableMixin {
  HistoryCallHistoryOnConflict(
      {required this.constraint, required this.updateColumns, this.where});

  factory HistoryCallHistoryOnConflict.fromJson(Map<String, dynamic> json) =>
      _$HistoryCallHistoryOnConflictFromJson(json);

  @JsonKey(unknownEnumValue: HistoryCallHistoryConstraint.artemisUnknown)
  late HistoryCallHistoryConstraint constraint;

  @JsonKey(
      name: 'update_columns',
      unknownEnumValue: HistoryCallHistoryUpdateColumn.artemisUnknown)
  late List<HistoryCallHistoryUpdateColumn> updateColumns;

  HistoryCallHistoryBoolExp? where;

  @override
  List<Object?> get props => [constraint, updateColumns, where];
  @override
  Map<String, dynamic> toJson() => _$HistoryCallHistoryOnConflictToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ChurchesObjRelInsertInput extends JsonSerializable with EquatableMixin {
  ChurchesObjRelInsertInput({required this.data, this.onConflict});

  factory ChurchesObjRelInsertInput.fromJson(Map<String, dynamic> json) =>
      _$ChurchesObjRelInsertInputFromJson(json);

  late ChurchesInsertInput data;

  ChurchesOnConflict? onConflict;

  @override
  List<Object?> get props => [data, onConflict];
  @override
  Map<String, dynamic> toJson() => _$ChurchesObjRelInsertInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ChurchesInsertInput extends JsonSerializable with EquatableMixin {
  ChurchesInsertInput({this.fathers, this.id, this.name, this.persons});

  factory ChurchesInsertInput.fromJson(Map<String, dynamic> json) =>
      _$ChurchesInsertInputFromJson(json);

  FathersArrRelInsertInput? fathers;

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? id;

  String? name;

  PersonsArrRelInsertInput? persons;

  @override
  List<Object?> get props => [fathers, id, name, persons];
  @override
  Map<String, dynamic> toJson() => _$ChurchesInsertInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FathersArrRelInsertInput extends JsonSerializable with EquatableMixin {
  FathersArrRelInsertInput({required this.data, this.onConflict});

  factory FathersArrRelInsertInput.fromJson(Map<String, dynamic> json) =>
      _$FathersArrRelInsertInputFromJson(json);

  late List<FathersInsertInput> data;

  FathersOnConflict? onConflict;

  @override
  List<Object?> get props => [data, onConflict];
  @override
  Map<String, dynamic> toJson() => _$FathersArrRelInsertInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FathersInsertInput extends JsonSerializable with EquatableMixin {
  FathersInsertInput(
      {this.church, this.churchId, this.id, this.name, this.persons});

  factory FathersInsertInput.fromJson(Map<String, dynamic> json) =>
      _$FathersInsertInputFromJson(json);

  ChurchesObjRelInsertInput? church;

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? churchId;

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? id;

  String? name;

  PersonsArrRelInsertInput? persons;

  @override
  List<Object?> get props => [church, churchId, id, name, persons];
  @override
  Map<String, dynamic> toJson() => _$FathersInsertInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PersonsArrRelInsertInput extends JsonSerializable with EquatableMixin {
  PersonsArrRelInsertInput({required this.data, this.onConflict});

  factory PersonsArrRelInsertInput.fromJson(Map<String, dynamic> json) =>
      _$PersonsArrRelInsertInputFromJson(json);

  late List<PersonsInsertInput> data;

  PersonsOnConflict? onConflict;

  @override
  List<Object?> get props => [data, onConflict];
  @override
  Map<String, dynamic> toJson() => _$PersonsArrRelInsertInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PersonsOnConflict extends JsonSerializable with EquatableMixin {
  PersonsOnConflict(
      {required this.constraint, required this.updateColumns, this.where});

  factory PersonsOnConflict.fromJson(Map<String, dynamic> json) =>
      _$PersonsOnConflictFromJson(json);

  @JsonKey(unknownEnumValue: PersonsConstraint.artemisUnknown)
  late PersonsConstraint constraint;

  @JsonKey(
      name: 'update_columns',
      unknownEnumValue: PersonsUpdateColumn.artemisUnknown)
  late List<PersonsUpdateColumn> updateColumns;

  PersonsBoolExp? where;

  @override
  List<Object?> get props => [constraint, updateColumns, where];
  @override
  Map<String, dynamic> toJson() => _$PersonsOnConflictToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FathersOnConflict extends JsonSerializable with EquatableMixin {
  FathersOnConflict(
      {required this.constraint, required this.updateColumns, this.where});

  factory FathersOnConflict.fromJson(Map<String, dynamic> json) =>
      _$FathersOnConflictFromJson(json);

  @JsonKey(unknownEnumValue: FathersConstraint.artemisUnknown)
  late FathersConstraint constraint;

  @JsonKey(
      name: 'update_columns',
      unknownEnumValue: FathersUpdateColumn.artemisUnknown)
  late List<FathersUpdateColumn> updateColumns;

  FathersBoolExp? where;

  @override
  List<Object?> get props => [constraint, updateColumns, where];
  @override
  Map<String, dynamic> toJson() => _$FathersOnConflictToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ChurchesOnConflict extends JsonSerializable with EquatableMixin {
  ChurchesOnConflict(
      {required this.constraint, required this.updateColumns, this.where});

  factory ChurchesOnConflict.fromJson(Map<String, dynamic> json) =>
      _$ChurchesOnConflictFromJson(json);

  @JsonKey(unknownEnumValue: ChurchesConstraint.artemisUnknown)
  late ChurchesConstraint constraint;

  @JsonKey(
      name: 'update_columns',
      unknownEnumValue: ChurchesUpdateColumn.artemisUnknown)
  late List<ChurchesUpdateColumn> updateColumns;

  ChurchesBoolExp? where;

  @override
  List<Object?> get props => [constraint, updateColumns, where];
  @override
  Map<String, dynamic> toJson() => _$ChurchesOnConflictToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CollegesObjRelInsertInput extends JsonSerializable with EquatableMixin {
  CollegesObjRelInsertInput({required this.data, this.onConflict});

  factory CollegesObjRelInsertInput.fromJson(Map<String, dynamic> json) =>
      _$CollegesObjRelInsertInputFromJson(json);

  late CollegesInsertInput data;

  CollegesOnConflict? onConflict;

  @override
  List<Object?> get props => [data, onConflict];
  @override
  Map<String, dynamic> toJson() => _$CollegesObjRelInsertInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CollegesInsertInput extends JsonSerializable with EquatableMixin {
  CollegesInsertInput(
      {this.id, this.name, this.persons, this.university, this.universityId});

  factory CollegesInsertInput.fromJson(Map<String, dynamic> json) =>
      _$CollegesInsertInputFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? id;

  String? name;

  PersonsArrRelInsertInput? persons;

  UniversitiesObjRelInsertInput? university;

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? universityId;

  @override
  List<Object?> get props => [id, name, persons, university, universityId];
  @override
  Map<String, dynamic> toJson() => _$CollegesInsertInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UniversitiesObjRelInsertInput extends JsonSerializable
    with EquatableMixin {
  UniversitiesObjRelInsertInput({required this.data, this.onConflict});

  factory UniversitiesObjRelInsertInput.fromJson(Map<String, dynamic> json) =>
      _$UniversitiesObjRelInsertInputFromJson(json);

  late UniversitiesInsertInput data;

  UniversitiesOnConflict? onConflict;

  @override
  List<Object?> get props => [data, onConflict];
  @override
  Map<String, dynamic> toJson() => _$UniversitiesObjRelInsertInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UniversitiesInsertInput extends JsonSerializable with EquatableMixin {
  UniversitiesInsertInput({this.colleges, this.id, this.name});

  factory UniversitiesInsertInput.fromJson(Map<String, dynamic> json) =>
      _$UniversitiesInsertInputFromJson(json);

  CollegesArrRelInsertInput? colleges;

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? id;

  String? name;

  @override
  List<Object?> get props => [colleges, id, name];
  @override
  Map<String, dynamic> toJson() => _$UniversitiesInsertInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CollegesArrRelInsertInput extends JsonSerializable with EquatableMixin {
  CollegesArrRelInsertInput({required this.data, this.onConflict});

  factory CollegesArrRelInsertInput.fromJson(Map<String, dynamic> json) =>
      _$CollegesArrRelInsertInputFromJson(json);

  late List<CollegesInsertInput> data;

  CollegesOnConflict? onConflict;

  @override
  List<Object?> get props => [data, onConflict];
  @override
  Map<String, dynamic> toJson() => _$CollegesArrRelInsertInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CollegesOnConflict extends JsonSerializable with EquatableMixin {
  CollegesOnConflict(
      {required this.constraint, required this.updateColumns, this.where});

  factory CollegesOnConflict.fromJson(Map<String, dynamic> json) =>
      _$CollegesOnConflictFromJson(json);

  @JsonKey(unknownEnumValue: CollegesConstraint.artemisUnknown)
  late CollegesConstraint constraint;

  @JsonKey(
      name: 'update_columns',
      unknownEnumValue: CollegesUpdateColumn.artemisUnknown)
  late List<CollegesUpdateColumn> updateColumns;

  CollegesBoolExp? where;

  @override
  List<Object?> get props => [constraint, updateColumns, where];
  @override
  Map<String, dynamic> toJson() => _$CollegesOnConflictToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UniversitiesOnConflict extends JsonSerializable with EquatableMixin {
  UniversitiesOnConflict(
      {required this.constraint, required this.updateColumns, this.where});

  factory UniversitiesOnConflict.fromJson(Map<String, dynamic> json) =>
      _$UniversitiesOnConflictFromJson(json);

  @JsonKey(unknownEnumValue: UniversitiesConstraint.artemisUnknown)
  late UniversitiesConstraint constraint;

  @JsonKey(
      name: 'update_columns',
      unknownEnumValue: UniversitiesUpdateColumn.artemisUnknown)
  late List<UniversitiesUpdateColumn> updateColumns;

  UniversitiesBoolExp? where;

  @override
  List<Object?> get props => [constraint, updateColumns, where];
  @override
  Map<String, dynamic> toJson() => _$UniversitiesOnConflictToJson(this);
}

@JsonSerializable(explicitToJson: true)
class HistoryConfessionHistoryArrRelInsertInput extends JsonSerializable
    with EquatableMixin {
  HistoryConfessionHistoryArrRelInsertInput(
      {required this.data, this.onConflict});

  factory HistoryConfessionHistoryArrRelInsertInput.fromJson(
          Map<String, dynamic> json) =>
      _$HistoryConfessionHistoryArrRelInsertInputFromJson(json);

  late List<HistoryConfessionHistoryInsertInput> data;

  HistoryConfessionHistoryOnConflict? onConflict;

  @override
  List<Object?> get props => [data, onConflict];
  @override
  Map<String, dynamic> toJson() =>
      _$HistoryConfessionHistoryArrRelInsertInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class HistoryConfessionHistoryInsertInput extends JsonSerializable
    with EquatableMixin {
  HistoryConfessionHistoryInsertInput(
      {this.day,
      this.dayId,
      this.id,
      this.person,
      this.personId,
      this.recordedBy,
      this.user});

  factory HistoryConfessionHistoryInsertInput.fromJson(
          Map<String, dynamic> json) =>
      _$HistoryConfessionHistoryInsertInputFromJson(json);

  HistoryAttendanceDaysObjRelInsertInput? day;

  DateTime? dayId;

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? id;

  PersonsObjRelInsertInput? person;

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? personId;

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? recordedBy;

  UsersObjRelInsertInput? user;

  @override
  List<Object?> get props =>
      [day, dayId, id, person, personId, recordedBy, user];
  @override
  Map<String, dynamic> toJson() =>
      _$HistoryConfessionHistoryInsertInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class HistoryConfessionHistoryOnConflict extends JsonSerializable
    with EquatableMixin {
  HistoryConfessionHistoryOnConflict(
      {required this.constraint, required this.updateColumns, this.where});

  factory HistoryConfessionHistoryOnConflict.fromJson(
          Map<String, dynamic> json) =>
      _$HistoryConfessionHistoryOnConflictFromJson(json);

  @JsonKey(unknownEnumValue: HistoryConfessionHistoryConstraint.artemisUnknown)
  late HistoryConfessionHistoryConstraint constraint;

  @JsonKey(
      name: 'update_columns',
      unknownEnumValue: HistoryConfessionHistoryUpdateColumn.artemisUnknown)
  late List<HistoryConfessionHistoryUpdateColumn> updateColumns;

  HistoryConfessionHistoryBoolExp? where;

  @override
  List<Object?> get props => [constraint, updateColumns, where];
  @override
  Map<String, dynamic> toJson() =>
      _$HistoryConfessionHistoryOnConflictToJson(this);
}

@JsonSerializable(explicitToJson: true)
class HistoryEditHistoryArrRelInsertInput extends JsonSerializable
    with EquatableMixin {
  HistoryEditHistoryArrRelInsertInput({required this.data, this.onConflict});

  factory HistoryEditHistoryArrRelInsertInput.fromJson(
          Map<String, dynamic> json) =>
      _$HistoryEditHistoryArrRelInsertInputFromJson(json);

  late List<HistoryEditHistoryInsertInput> data;

  HistoryEditHistoryOnConflict? onConflict;

  @override
  List<Object?> get props => [data, onConflict];
  @override
  Map<String, dynamic> toJson() =>
      _$HistoryEditHistoryArrRelInsertInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class HistoryEditHistoryInsertInput extends JsonSerializable
    with EquatableMixin {
  HistoryEditHistoryInsertInput(
      {this.auditId,
      this.recordId,
      this.recordedBy,
      this.table,
      this.time,
      this.user,
      this.userRole});

  factory HistoryEditHistoryInsertInput.fromJson(Map<String, dynamic> json) =>
      _$HistoryEditHistoryInsertInputFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? auditId;

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? recordId;

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? recordedBy;

  String? table;

  DateTime? time;

  UsersObjRelInsertInput? user;

  String? userRole;

  @override
  List<Object?> get props =>
      [auditId, recordId, recordedBy, table, time, user, userRole];
  @override
  Map<String, dynamic> toJson() => _$HistoryEditHistoryInsertInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class HistoryEditHistoryOnConflict extends JsonSerializable
    with EquatableMixin {
  HistoryEditHistoryOnConflict(
      {required this.constraint, required this.updateColumns, this.where});

  factory HistoryEditHistoryOnConflict.fromJson(Map<String, dynamic> json) =>
      _$HistoryEditHistoryOnConflictFromJson(json);

  @JsonKey(unknownEnumValue: HistoryEditHistoryConstraint.artemisUnknown)
  late HistoryEditHistoryConstraint constraint;

  @JsonKey(
      name: 'update_columns',
      unknownEnumValue: HistoryEditHistoryUpdateColumn.artemisUnknown)
  late List<HistoryEditHistoryUpdateColumn> updateColumns;

  HistoryEditHistoryBoolExp? where;

  @override
  List<Object?> get props => [constraint, updateColumns, where];
  @override
  Map<String, dynamic> toJson() => _$HistoryEditHistoryOnConflictToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FamiliesObjRelInsertInput extends JsonSerializable with EquatableMixin {
  FamiliesObjRelInsertInput({required this.data, this.onConflict});

  factory FamiliesObjRelInsertInput.fromJson(Map<String, dynamic> json) =>
      _$FamiliesObjRelInsertInputFromJson(json);

  late FamiliesInsertInput data;

  FamiliesOnConflict? onConflict;

  @override
  List<Object?> get props => [data, onConflict];
  @override
  Map<String, dynamic> toJson() => _$FamiliesObjRelInsertInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FamiliesInsertInput extends JsonSerializable with EquatableMixin {
  FamiliesInsertInput(
      {this.address,
      this.color,
      this.families,
      this.family,
      this.geolocation,
      this.id,
      this.name,
      this.notes,
      this.persons,
      this.photoUpdatedAt,
      this.stores});

  factory FamiliesInsertInput.fromJson(Map<String, dynamic> json) =>
      _$FamiliesInsertInputFromJson(json);

  String? address;

  int? color;

  FamiliesFamiliesArrRelInsertInput? families;

  FamiliesFamiliesObjRelInsertInput? family;

  @JsonKey(
      fromJson: fromGraphQLGeographyNullableToDartJsonNullable,
      toJson: fromDartJsonNullableToGraphQLGeographyNullable)
  Json? geolocation;

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? id;

  String? name;

  String? notes;

  PersonsArrRelInsertInput? persons;

  DateTime? photoUpdatedAt;

  StoresArrRelInsertInput? stores;

  @override
  List<Object?> get props => [
        address,
        color,
        families,
        family,
        geolocation,
        id,
        name,
        notes,
        persons,
        photoUpdatedAt,
        stores
      ];
  @override
  Map<String, dynamic> toJson() => _$FamiliesInsertInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FamiliesFamiliesArrRelInsertInput extends JsonSerializable
    with EquatableMixin {
  FamiliesFamiliesArrRelInsertInput({required this.data, this.onConflict});

  factory FamiliesFamiliesArrRelInsertInput.fromJson(
          Map<String, dynamic> json) =>
      _$FamiliesFamiliesArrRelInsertInputFromJson(json);

  late List<FamiliesFamiliesInsertInput> data;

  FamiliesFamiliesOnConflict? onConflict;

  @override
  List<Object?> get props => [data, onConflict];
  @override
  Map<String, dynamic> toJson() =>
      _$FamiliesFamiliesArrRelInsertInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FamiliesFamiliesInsertInput extends JsonSerializable with EquatableMixin {
  FamiliesFamiliesInsertInput(
      {this.innerFamily,
      this.innerFamilyId,
      this.outerFamily,
      this.outerFamilyId});

  factory FamiliesFamiliesInsertInput.fromJson(Map<String, dynamic> json) =>
      _$FamiliesFamiliesInsertInputFromJson(json);

  FamiliesObjRelInsertInput? innerFamily;

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? innerFamilyId;

  FamiliesObjRelInsertInput? outerFamily;

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? outerFamilyId;

  @override
  List<Object?> get props =>
      [innerFamily, innerFamilyId, outerFamily, outerFamilyId];
  @override
  Map<String, dynamic> toJson() => _$FamiliesFamiliesInsertInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FamiliesFamiliesOnConflict extends JsonSerializable with EquatableMixin {
  FamiliesFamiliesOnConflict(
      {required this.constraint, required this.updateColumns, this.where});

  factory FamiliesFamiliesOnConflict.fromJson(Map<String, dynamic> json) =>
      _$FamiliesFamiliesOnConflictFromJson(json);

  @JsonKey(unknownEnumValue: FamiliesFamiliesConstraint.artemisUnknown)
  late FamiliesFamiliesConstraint constraint;

  @JsonKey(
      name: 'update_columns',
      unknownEnumValue: FamiliesFamiliesUpdateColumn.artemisUnknown)
  late List<FamiliesFamiliesUpdateColumn> updateColumns;

  FamiliesFamiliesBoolExp? where;

  @override
  List<Object?> get props => [constraint, updateColumns, where];
  @override
  Map<String, dynamic> toJson() => _$FamiliesFamiliesOnConflictToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FamiliesFamiliesObjRelInsertInput extends JsonSerializable
    with EquatableMixin {
  FamiliesFamiliesObjRelInsertInput({required this.data, this.onConflict});

  factory FamiliesFamiliesObjRelInsertInput.fromJson(
          Map<String, dynamic> json) =>
      _$FamiliesFamiliesObjRelInsertInputFromJson(json);

  late FamiliesFamiliesInsertInput data;

  FamiliesFamiliesOnConflict? onConflict;

  @override
  List<Object?> get props => [data, onConflict];
  @override
  Map<String, dynamic> toJson() =>
      _$FamiliesFamiliesObjRelInsertInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class StoresArrRelInsertInput extends JsonSerializable with EquatableMixin {
  StoresArrRelInsertInput({required this.data, this.onConflict});

  factory StoresArrRelInsertInput.fromJson(Map<String, dynamic> json) =>
      _$StoresArrRelInsertInputFromJson(json);

  late List<StoresInsertInput> data;

  StoresOnConflict? onConflict;

  @override
  List<Object?> get props => [data, onConflict];
  @override
  Map<String, dynamic> toJson() => _$StoresArrRelInsertInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class StoresInsertInput extends JsonSerializable with EquatableMixin {
  StoresInsertInput(
      {this.adminFamily,
      this.color,
      this.family,
      this.geolocation,
      this.id,
      this.name,
      this.photoUpdatedAt});

  factory StoresInsertInput.fromJson(Map<String, dynamic> json) =>
      _$StoresInsertInputFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? adminFamily;

  int? color;

  FamiliesObjRelInsertInput? family;

  @JsonKey(
      fromJson: fromGraphQLGeographyNullableToDartJsonNullable,
      toJson: fromDartJsonNullableToGraphQLGeographyNullable)
  Json? geolocation;

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? id;

  String? name;

  DateTime? photoUpdatedAt;

  @override
  List<Object?> get props =>
      [adminFamily, color, family, geolocation, id, name, photoUpdatedAt];
  @override
  Map<String, dynamic> toJson() => _$StoresInsertInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class StoresOnConflict extends JsonSerializable with EquatableMixin {
  StoresOnConflict(
      {required this.constraint, required this.updateColumns, this.where});

  factory StoresOnConflict.fromJson(Map<String, dynamic> json) =>
      _$StoresOnConflictFromJson(json);

  @JsonKey(unknownEnumValue: StoresConstraint.artemisUnknown)
  late StoresConstraint constraint;

  @JsonKey(
      name: 'update_columns',
      unknownEnumValue: StoresUpdateColumn.artemisUnknown)
  late List<StoresUpdateColumn> updateColumns;

  StoresBoolExp? where;

  @override
  List<Object?> get props => [constraint, updateColumns, where];
  @override
  Map<String, dynamic> toJson() => _$StoresOnConflictToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FamiliesOnConflict extends JsonSerializable with EquatableMixin {
  FamiliesOnConflict(
      {required this.constraint, required this.updateColumns, this.where});

  factory FamiliesOnConflict.fromJson(Map<String, dynamic> json) =>
      _$FamiliesOnConflictFromJson(json);

  @JsonKey(unknownEnumValue: FamiliesConstraint.artemisUnknown)
  late FamiliesConstraint constraint;

  @JsonKey(
      name: 'update_columns',
      unknownEnumValue: FamiliesUpdateColumn.artemisUnknown)
  late List<FamiliesUpdateColumn> updateColumns;

  FamiliesBoolExp? where;

  @override
  List<Object?> get props => [constraint, updateColumns, where];
  @override
  Map<String, dynamic> toJson() => _$FamiliesOnConflictToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FathersObjRelInsertInput extends JsonSerializable with EquatableMixin {
  FathersObjRelInsertInput({required this.data, this.onConflict});

  factory FathersObjRelInsertInput.fromJson(Map<String, dynamic> json) =>
      _$FathersObjRelInsertInputFromJson(json);

  late FathersInsertInput data;

  FathersOnConflict? onConflict;

  @override
  List<Object?> get props => [data, onConflict];
  @override
  Map<String, dynamic> toJson() => _$FathersObjRelInsertInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PersonsGroupsArrRelInsertInput extends JsonSerializable
    with EquatableMixin {
  PersonsGroupsArrRelInsertInput({required this.data, this.onConflict});

  factory PersonsGroupsArrRelInsertInput.fromJson(Map<String, dynamic> json) =>
      _$PersonsGroupsArrRelInsertInputFromJson(json);

  late List<PersonsGroupsInsertInput> data;

  PersonsGroupsOnConflict? onConflict;

  @override
  List<Object?> get props => [data, onConflict];
  @override
  Map<String, dynamic> toJson() => _$PersonsGroupsArrRelInsertInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PersonsGroupsOnConflict extends JsonSerializable with EquatableMixin {
  PersonsGroupsOnConflict(
      {required this.constraint, required this.updateColumns, this.where});

  factory PersonsGroupsOnConflict.fromJson(Map<String, dynamic> json) =>
      _$PersonsGroupsOnConflictFromJson(json);

  @JsonKey(unknownEnumValue: PersonsGroupsConstraint.artemisUnknown)
  late PersonsGroupsConstraint constraint;

  @JsonKey(
      name: 'update_columns',
      unknownEnumValue: PersonsGroupsUpdateColumn.artemisUnknown)
  late List<PersonsGroupsUpdateColumn> updateColumns;

  PersonsGroupsBoolExp? where;

  @override
  List<Object?> get props => [constraint, updateColumns, where];
  @override
  Map<String, dynamic> toJson() => _$PersonsGroupsOnConflictToJson(this);
}

@JsonSerializable(explicitToJson: true)
class JobsObjRelInsertInput extends JsonSerializable with EquatableMixin {
  JobsObjRelInsertInput({required this.data, this.onConflict});

  factory JobsObjRelInsertInput.fromJson(Map<String, dynamic> json) =>
      _$JobsObjRelInsertInputFromJson(json);

  late JobsInsertInput data;

  JobsOnConflict? onConflict;

  @override
  List<Object?> get props => [data, onConflict];
  @override
  Map<String, dynamic> toJson() => _$JobsObjRelInsertInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class JobsInsertInput extends JsonSerializable with EquatableMixin {
  JobsInsertInput({this.id, this.name, this.persons});

  factory JobsInsertInput.fromJson(Map<String, dynamic> json) =>
      _$JobsInsertInputFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? id;

  String? name;

  PersonsArrRelInsertInput? persons;

  @override
  List<Object?> get props => [id, name, persons];
  @override
  Map<String, dynamic> toJson() => _$JobsInsertInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class JobsOnConflict extends JsonSerializable with EquatableMixin {
  JobsOnConflict(
      {required this.constraint, required this.updateColumns, this.where});

  factory JobsOnConflict.fromJson(Map<String, dynamic> json) =>
      _$JobsOnConflictFromJson(json);

  @JsonKey(unknownEnumValue: JobsConstraint.artemisUnknown)
  late JobsConstraint constraint;

  @JsonKey(
      name: 'update_columns', unknownEnumValue: JobsUpdateColumn.artemisUnknown)
  late List<JobsUpdateColumn> updateColumns;

  JobsBoolExp? where;

  @override
  List<Object?> get props => [constraint, updateColumns, where];
  @override
  Map<String, dynamic> toJson() => _$JobsOnConflictToJson(this);
}

@JsonSerializable(explicitToJson: true)
class HistoryKodasHistoryArrRelInsertInput extends JsonSerializable
    with EquatableMixin {
  HistoryKodasHistoryArrRelInsertInput({required this.data, this.onConflict});

  factory HistoryKodasHistoryArrRelInsertInput.fromJson(
          Map<String, dynamic> json) =>
      _$HistoryKodasHistoryArrRelInsertInputFromJson(json);

  late List<HistoryKodasHistoryInsertInput> data;

  HistoryKodasHistoryOnConflict? onConflict;

  @override
  List<Object?> get props => [data, onConflict];
  @override
  Map<String, dynamic> toJson() =>
      _$HistoryKodasHistoryArrRelInsertInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class HistoryKodasHistoryInsertInput extends JsonSerializable
    with EquatableMixin {
  HistoryKodasHistoryInsertInput(
      {this.day,
      this.dayId,
      this.id,
      this.person,
      this.personId,
      this.recordedBy,
      this.user});

  factory HistoryKodasHistoryInsertInput.fromJson(Map<String, dynamic> json) =>
      _$HistoryKodasHistoryInsertInputFromJson(json);

  HistoryAttendanceDaysObjRelInsertInput? day;

  DateTime? dayId;

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? id;

  PersonsObjRelInsertInput? person;

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? personId;

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? recordedBy;

  UsersObjRelInsertInput? user;

  @override
  List<Object?> get props =>
      [day, dayId, id, person, personId, recordedBy, user];
  @override
  Map<String, dynamic> toJson() => _$HistoryKodasHistoryInsertInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class HistoryKodasHistoryOnConflict extends JsonSerializable
    with EquatableMixin {
  HistoryKodasHistoryOnConflict(
      {required this.constraint, required this.updateColumns, this.where});

  factory HistoryKodasHistoryOnConflict.fromJson(Map<String, dynamic> json) =>
      _$HistoryKodasHistoryOnConflictFromJson(json);

  @JsonKey(unknownEnumValue: HistoryKodasHistoryConstraint.artemisUnknown)
  late HistoryKodasHistoryConstraint constraint;

  @JsonKey(
      name: 'update_columns',
      unknownEnumValue: HistoryKodasHistoryUpdateColumn.artemisUnknown)
  late List<HistoryKodasHistoryUpdateColumn> updateColumns;

  HistoryKodasHistoryBoolExp? where;

  @override
  List<Object?> get props => [constraint, updateColumns, where];
  @override
  Map<String, dynamic> toJson() => _$HistoryKodasHistoryOnConflictToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PersonTypesObjRelInsertInput extends JsonSerializable
    with EquatableMixin {
  PersonTypesObjRelInsertInput({required this.data, this.onConflict});

  factory PersonTypesObjRelInsertInput.fromJson(Map<String, dynamic> json) =>
      _$PersonTypesObjRelInsertInputFromJson(json);

  late PersonTypesInsertInput data;

  PersonTypesOnConflict? onConflict;

  @override
  List<Object?> get props => [data, onConflict];
  @override
  Map<String, dynamic> toJson() => _$PersonTypesObjRelInsertInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PersonTypesInsertInput extends JsonSerializable with EquatableMixin {
  PersonTypesInsertInput({this.id, this.name, this.order, this.persons});

  factory PersonTypesInsertInput.fromJson(Map<String, dynamic> json) =>
      _$PersonTypesInsertInputFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? id;

  String? name;

  int? order;

  PersonsArrRelInsertInput? persons;

  @override
  List<Object?> get props => [id, name, order, persons];
  @override
  Map<String, dynamic> toJson() => _$PersonTypesInsertInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PersonTypesOnConflict extends JsonSerializable with EquatableMixin {
  PersonTypesOnConflict(
      {required this.constraint, required this.updateColumns, this.where});

  factory PersonTypesOnConflict.fromJson(Map<String, dynamic> json) =>
      _$PersonTypesOnConflictFromJson(json);

  @JsonKey(unknownEnumValue: PersonTypesConstraint.artemisUnknown)
  late PersonTypesConstraint constraint;

  @JsonKey(
      name: 'update_columns',
      unknownEnumValue: PersonTypesUpdateColumn.artemisUnknown)
  late List<PersonTypesUpdateColumn> updateColumns;

  PersonTypesBoolExp? where;

  @override
  List<Object?> get props => [constraint, updateColumns, where];
  @override
  Map<String, dynamic> toJson() => _$PersonTypesOnConflictToJson(this);
}

@JsonSerializable(explicitToJson: true)
class QualificationsObjRelInsertInput extends JsonSerializable
    with EquatableMixin {
  QualificationsObjRelInsertInput({required this.data, this.onConflict});

  factory QualificationsObjRelInsertInput.fromJson(Map<String, dynamic> json) =>
      _$QualificationsObjRelInsertInputFromJson(json);

  late QualificationsInsertInput data;

  QualificationsOnConflict? onConflict;

  @override
  List<Object?> get props => [data, onConflict];
  @override
  Map<String, dynamic> toJson() =>
      _$QualificationsObjRelInsertInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class QualificationsInsertInput extends JsonSerializable with EquatableMixin {
  QualificationsInsertInput({this.id, this.name, this.persons});

  factory QualificationsInsertInput.fromJson(Map<String, dynamic> json) =>
      _$QualificationsInsertInputFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? id;

  String? name;

  PersonsArrRelInsertInput? persons;

  @override
  List<Object?> get props => [id, name, persons];
  @override
  Map<String, dynamic> toJson() => _$QualificationsInsertInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class QualificationsOnConflict extends JsonSerializable with EquatableMixin {
  QualificationsOnConflict(
      {required this.constraint, required this.updateColumns, this.where});

  factory QualificationsOnConflict.fromJson(Map<String, dynamic> json) =>
      _$QualificationsOnConflictFromJson(json);

  @JsonKey(unknownEnumValue: QualificationsConstraint.artemisUnknown)
  late QualificationsConstraint constraint;

  @JsonKey(
      name: 'update_columns',
      unknownEnumValue: QualificationsUpdateColumn.artemisUnknown)
  late List<QualificationsUpdateColumn> updateColumns;

  QualificationsBoolExp? where;

  @override
  List<Object?> get props => [constraint, updateColumns, where];
  @override
  Map<String, dynamic> toJson() => _$QualificationsOnConflictToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SchoolsObjRelInsertInput extends JsonSerializable with EquatableMixin {
  SchoolsObjRelInsertInput({required this.data, this.onConflict});

  factory SchoolsObjRelInsertInput.fromJson(Map<String, dynamic> json) =>
      _$SchoolsObjRelInsertInputFromJson(json);

  late SchoolsInsertInput data;

  SchoolsOnConflict? onConflict;

  @override
  List<Object?> get props => [data, onConflict];
  @override
  Map<String, dynamic> toJson() => _$SchoolsObjRelInsertInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SchoolsInsertInput extends JsonSerializable with EquatableMixin {
  SchoolsInsertInput({this.id, this.name, this.persons});

  factory SchoolsInsertInput.fromJson(Map<String, dynamic> json) =>
      _$SchoolsInsertInputFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? id;

  String? name;

  PersonsArrRelInsertInput? persons;

  @override
  List<Object?> get props => [id, name, persons];
  @override
  Map<String, dynamic> toJson() => _$SchoolsInsertInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SchoolsOnConflict extends JsonSerializable with EquatableMixin {
  SchoolsOnConflict(
      {required this.constraint, required this.updateColumns, this.where});

  factory SchoolsOnConflict.fromJson(Map<String, dynamic> json) =>
      _$SchoolsOnConflictFromJson(json);

  @JsonKey(unknownEnumValue: SchoolsConstraint.artemisUnknown)
  late SchoolsConstraint constraint;

  @JsonKey(
      name: 'update_columns',
      unknownEnumValue: SchoolsUpdateColumn.artemisUnknown)
  late List<SchoolsUpdateColumn> updateColumns;

  SchoolsBoolExp? where;

  @override
  List<Object?> get props => [constraint, updateColumns, where];
  @override
  Map<String, dynamic> toJson() => _$SchoolsOnConflictToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PersonsServicesArrRelInsertInput extends JsonSerializable
    with EquatableMixin {
  PersonsServicesArrRelInsertInput({required this.data, this.onConflict});

  factory PersonsServicesArrRelInsertInput.fromJson(
          Map<String, dynamic> json) =>
      _$PersonsServicesArrRelInsertInputFromJson(json);

  late List<PersonsServicesInsertInput> data;

  PersonsServicesOnConflict? onConflict;

  @override
  List<Object?> get props => [data, onConflict];
  @override
  Map<String, dynamic> toJson() =>
      _$PersonsServicesArrRelInsertInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PersonsServicesInsertInput extends JsonSerializable with EquatableMixin {
  PersonsServicesInsertInput(
      {this.person, this.personId, this.relId, this.service, this.serviceId});

  factory PersonsServicesInsertInput.fromJson(Map<String, dynamic> json) =>
      _$PersonsServicesInsertInputFromJson(json);

  PersonsObjRelInsertInput? person;

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? personId;

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? relId;

  ServicesObjRelInsertInput? service;

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? serviceId;

  @override
  List<Object?> get props => [person, personId, relId, service, serviceId];
  @override
  Map<String, dynamic> toJson() => _$PersonsServicesInsertInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ServicesObjRelInsertInput extends JsonSerializable with EquatableMixin {
  ServicesObjRelInsertInput({required this.data, this.onConflict});

  factory ServicesObjRelInsertInput.fromJson(Map<String, dynamic> json) =>
      _$ServicesObjRelInsertInputFromJson(json);

  late ServicesInsertInput data;

  ServicesOnConflict? onConflict;

  @override
  List<Object?> get props => [data, onConflict];
  @override
  Map<String, dynamic> toJson() => _$ServicesObjRelInsertInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ServicesInsertInput extends JsonSerializable with EquatableMixin {
  ServicesInsertInput(
      {this.attendanceDaysConstraints,
      this.attendanceHistory,
      this.classes,
      this.color,
      this.firestoreId,
      this.fromStudyYear,
      this.groups,
      this.id,
      this.name,
      this.nextService,
      this.persons,
      this.photoUpdatedAt,
      this.studyYearFrom,
      this.studyYearTo,
      this.toStudyYear,
      this.users});

  factory ServicesInsertInput.fromJson(Map<String, dynamic> json) =>
      _$ServicesInsertInputFromJson(json);

  HistoryAttendanceDaysConstraintsArrRelInsertInput? attendanceDaysConstraints;

  HistoryAttendanceHistoryArrRelInsertInput? attendanceHistory;

  ClassesArrRelInsertInput? classes;

  int? color;

  String? firestoreId;

  StudyYearsObjRelInsertInput? fromStudyYear;

  GroupsArrRelInsertInput? groups;

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? id;

  String? name;

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? nextService;

  PersonsServicesArrRelInsertInput? persons;

  DateTime? photoUpdatedAt;

  int? studyYearFrom;

  int? studyYearTo;

  StudyYearsObjRelInsertInput? toStudyYear;

  UsersPermissionsArrRelInsertInput? users;

  @override
  List<Object?> get props => [
        attendanceDaysConstraints,
        attendanceHistory,
        classes,
        color,
        firestoreId,
        fromStudyYear,
        groups,
        id,
        name,
        nextService,
        persons,
        photoUpdatedAt,
        studyYearFrom,
        studyYearTo,
        toStudyYear,
        users
      ];
  @override
  Map<String, dynamic> toJson() => _$ServicesInsertInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class StudyYearsObjRelInsertInput extends JsonSerializable with EquatableMixin {
  StudyYearsObjRelInsertInput({required this.data, this.onConflict});

  factory StudyYearsObjRelInsertInput.fromJson(Map<String, dynamic> json) =>
      _$StudyYearsObjRelInsertInputFromJson(json);

  late StudyYearsInsertInput data;

  StudyYearsOnConflict? onConflict;

  @override
  List<Object?> get props => [data, onConflict];
  @override
  Map<String, dynamic> toJson() => _$StudyYearsObjRelInsertInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class StudyYearsInsertInput extends JsonSerializable with EquatableMixin {
  StudyYearsInsertInput(
      {this.attendanceDaysConstraints,
      this.classes,
      this.name,
      this.order,
      this.persons});

  factory StudyYearsInsertInput.fromJson(Map<String, dynamic> json) =>
      _$StudyYearsInsertInputFromJson(json);

  HistoryAttendanceDaysConstraintsArrRelInsertInput? attendanceDaysConstraints;

  ClassesArrRelInsertInput? classes;

  String? name;

  int? order;

  PersonsArrRelInsertInput? persons;

  @override
  List<Object?> get props =>
      [attendanceDaysConstraints, classes, name, order, persons];
  @override
  Map<String, dynamic> toJson() => _$StudyYearsInsertInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class StudyYearsOnConflict extends JsonSerializable with EquatableMixin {
  StudyYearsOnConflict(
      {required this.constraint, required this.updateColumns, this.where});

  factory StudyYearsOnConflict.fromJson(Map<String, dynamic> json) =>
      _$StudyYearsOnConflictFromJson(json);

  @JsonKey(unknownEnumValue: StudyYearsConstraint.artemisUnknown)
  late StudyYearsConstraint constraint;

  @JsonKey(
      name: 'update_columns',
      unknownEnumValue: StudyYearsUpdateColumn.artemisUnknown)
  late List<StudyYearsUpdateColumn> updateColumns;

  StudyYearsBoolExp? where;

  @override
  List<Object?> get props => [constraint, updateColumns, where];
  @override
  Map<String, dynamic> toJson() => _$StudyYearsOnConflictToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GroupsArrRelInsertInput extends JsonSerializable with EquatableMixin {
  GroupsArrRelInsertInput({required this.data, this.onConflict});

  factory GroupsArrRelInsertInput.fromJson(Map<String, dynamic> json) =>
      _$GroupsArrRelInsertInputFromJson(json);

  late List<GroupsInsertInput> data;

  GroupsOnConflict? onConflict;

  @override
  List<Object?> get props => [data, onConflict];
  @override
  Map<String, dynamic> toJson() => _$GroupsArrRelInsertInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GroupsOnConflict extends JsonSerializable with EquatableMixin {
  GroupsOnConflict(
      {required this.constraint, required this.updateColumns, this.where});

  factory GroupsOnConflict.fromJson(Map<String, dynamic> json) =>
      _$GroupsOnConflictFromJson(json);

  @JsonKey(unknownEnumValue: GroupsConstraint.artemisUnknown)
  late GroupsConstraint constraint;

  @JsonKey(
      name: 'update_columns',
      unknownEnumValue: GroupsUpdateColumn.artemisUnknown)
  late List<GroupsUpdateColumn> updateColumns;

  GroupsBoolExp? where;

  @override
  List<Object?> get props => [constraint, updateColumns, where];
  @override
  Map<String, dynamic> toJson() => _$GroupsOnConflictToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ServicesOnConflict extends JsonSerializable with EquatableMixin {
  ServicesOnConflict(
      {required this.constraint, required this.updateColumns, this.where});

  factory ServicesOnConflict.fromJson(Map<String, dynamic> json) =>
      _$ServicesOnConflictFromJson(json);

  @JsonKey(unknownEnumValue: ServicesConstraint.artemisUnknown)
  late ServicesConstraint constraint;

  @JsonKey(
      name: 'update_columns',
      unknownEnumValue: ServicesUpdateColumn.artemisUnknown)
  late List<ServicesUpdateColumn> updateColumns;

  ServicesBoolExp? where;

  @override
  List<Object?> get props => [constraint, updateColumns, where];
  @override
  Map<String, dynamic> toJson() => _$ServicesOnConflictToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PersonsServicesOnConflict extends JsonSerializable with EquatableMixin {
  PersonsServicesOnConflict(
      {required this.constraint, required this.updateColumns, this.where});

  factory PersonsServicesOnConflict.fromJson(Map<String, dynamic> json) =>
      _$PersonsServicesOnConflictFromJson(json);

  @JsonKey(unknownEnumValue: PersonsServicesConstraint.artemisUnknown)
  late PersonsServicesConstraint constraint;

  @JsonKey(
      name: 'update_columns',
      unknownEnumValue: PersonsServicesUpdateColumn.artemisUnknown)
  late List<PersonsServicesUpdateColumn> updateColumns;

  PersonsServicesBoolExp? where;

  @override
  List<Object?> get props => [constraint, updateColumns, where];
  @override
  Map<String, dynamic> toJson() => _$PersonsServicesOnConflictToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ShammasLevelsObjRelInsertInput extends JsonSerializable
    with EquatableMixin {
  ShammasLevelsObjRelInsertInput({required this.data, this.onConflict});

  factory ShammasLevelsObjRelInsertInput.fromJson(Map<String, dynamic> json) =>
      _$ShammasLevelsObjRelInsertInputFromJson(json);

  late ShammasLevelsInsertInput data;

  ShammasLevelsOnConflict? onConflict;

  @override
  List<Object?> get props => [data, onConflict];
  @override
  Map<String, dynamic> toJson() => _$ShammasLevelsObjRelInsertInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ShammasLevelsInsertInput extends JsonSerializable with EquatableMixin {
  ShammasLevelsInsertInput({this.id, this.name, this.order});

  factory ShammasLevelsInsertInput.fromJson(Map<String, dynamic> json) =>
      _$ShammasLevelsInsertInputFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? id;

  String? name;

  int? order;

  @override
  List<Object?> get props => [id, name, order];
  @override
  Map<String, dynamic> toJson() => _$ShammasLevelsInsertInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ShammasLevelsOnConflict extends JsonSerializable with EquatableMixin {
  ShammasLevelsOnConflict(
      {required this.constraint, required this.updateColumns, this.where});

  factory ShammasLevelsOnConflict.fromJson(Map<String, dynamic> json) =>
      _$ShammasLevelsOnConflictFromJson(json);

  @JsonKey(unknownEnumValue: ShammasLevelsConstraint.artemisUnknown)
  late ShammasLevelsConstraint constraint;

  @JsonKey(
      name: 'update_columns',
      unknownEnumValue: ShammasLevelsUpdateColumn.artemisUnknown)
  late List<ShammasLevelsUpdateColumn> updateColumns;

  ShammasLevelsBoolExp? where;

  @override
  List<Object?> get props => [constraint, updateColumns, where];
  @override
  Map<String, dynamic> toJson() => _$ShammasLevelsOnConflictToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PersonStatesObjRelInsertInput extends JsonSerializable
    with EquatableMixin {
  PersonStatesObjRelInsertInput({required this.data, this.onConflict});

  factory PersonStatesObjRelInsertInput.fromJson(Map<String, dynamic> json) =>
      _$PersonStatesObjRelInsertInputFromJson(json);

  late PersonStatesInsertInput data;

  PersonStatesOnConflict? onConflict;

  @override
  List<Object?> get props => [data, onConflict];
  @override
  Map<String, dynamic> toJson() => _$PersonStatesObjRelInsertInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PersonStatesInsertInput extends JsonSerializable with EquatableMixin {
  PersonStatesInsertInput({this.color, this.id, this.name, this.persons});

  factory PersonStatesInsertInput.fromJson(Map<String, dynamic> json) =>
      _$PersonStatesInsertInputFromJson(json);

  int? color;

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? id;

  String? name;

  PersonsArrRelInsertInput? persons;

  @override
  List<Object?> get props => [color, id, name, persons];
  @override
  Map<String, dynamic> toJson() => _$PersonStatesInsertInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PersonStatesOnConflict extends JsonSerializable with EquatableMixin {
  PersonStatesOnConflict(
      {required this.constraint, required this.updateColumns, this.where});

  factory PersonStatesOnConflict.fromJson(Map<String, dynamic> json) =>
      _$PersonStatesOnConflictFromJson(json);

  @JsonKey(unknownEnumValue: PersonStatesConstraint.artemisUnknown)
  late PersonStatesConstraint constraint;

  @JsonKey(
      name: 'update_columns',
      unknownEnumValue: PersonStatesUpdateColumn.artemisUnknown)
  late List<PersonStatesUpdateColumn> updateColumns;

  PersonStatesBoolExp? where;

  @override
  List<Object?> get props => [constraint, updateColumns, where];
  @override
  Map<String, dynamic> toJson() => _$PersonStatesOnConflictToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PersonsTagsArrRelInsertInput extends JsonSerializable
    with EquatableMixin {
  PersonsTagsArrRelInsertInput({required this.data, this.onConflict});

  factory PersonsTagsArrRelInsertInput.fromJson(Map<String, dynamic> json) =>
      _$PersonsTagsArrRelInsertInputFromJson(json);

  late List<PersonsTagsInsertInput> data;

  PersonsTagsOnConflict? onConflict;

  @override
  List<Object?> get props => [data, onConflict];
  @override
  Map<String, dynamic> toJson() => _$PersonsTagsArrRelInsertInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PersonsTagsInsertInput extends JsonSerializable with EquatableMixin {
  PersonsTagsInsertInput(
      {this.person, this.personId, this.relId, this.tag, this.tagId});

  factory PersonsTagsInsertInput.fromJson(Map<String, dynamic> json) =>
      _$PersonsTagsInsertInputFromJson(json);

  PersonsObjRelInsertInput? person;

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? personId;

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? relId;

  TagsObjRelInsertInput? tag;

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? tagId;

  @override
  List<Object?> get props => [person, personId, relId, tag, tagId];
  @override
  Map<String, dynamic> toJson() => _$PersonsTagsInsertInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TagsObjRelInsertInput extends JsonSerializable with EquatableMixin {
  TagsObjRelInsertInput({required this.data, this.onConflict});

  factory TagsObjRelInsertInput.fromJson(Map<String, dynamic> json) =>
      _$TagsObjRelInsertInputFromJson(json);

  late TagsInsertInput data;

  TagsOnConflict? onConflict;

  @override
  List<Object?> get props => [data, onConflict];
  @override
  Map<String, dynamic> toJson() => _$TagsObjRelInsertInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TagsInsertInput extends JsonSerializable with EquatableMixin {
  TagsInsertInput({this.color, this.id, this.name, this.persons});

  factory TagsInsertInput.fromJson(Map<String, dynamic> json) =>
      _$TagsInsertInputFromJson(json);

  int? color;

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? id;

  String? name;

  PersonsTagsArrRelInsertInput? persons;

  @override
  List<Object?> get props => [color, id, name, persons];
  @override
  Map<String, dynamic> toJson() => _$TagsInsertInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TagsOnConflict extends JsonSerializable with EquatableMixin {
  TagsOnConflict(
      {required this.constraint, required this.updateColumns, this.where});

  factory TagsOnConflict.fromJson(Map<String, dynamic> json) =>
      _$TagsOnConflictFromJson(json);

  @JsonKey(unknownEnumValue: TagsConstraint.artemisUnknown)
  late TagsConstraint constraint;

  @JsonKey(
      name: 'update_columns', unknownEnumValue: TagsUpdateColumn.artemisUnknown)
  late List<TagsUpdateColumn> updateColumns;

  TagsBoolExp? where;

  @override
  List<Object?> get props => [constraint, updateColumns, where];
  @override
  Map<String, dynamic> toJson() => _$TagsOnConflictToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PersonsTagsOnConflict extends JsonSerializable with EquatableMixin {
  PersonsTagsOnConflict(
      {required this.constraint, required this.updateColumns, this.where});

  factory PersonsTagsOnConflict.fromJson(Map<String, dynamic> json) =>
      _$PersonsTagsOnConflictFromJson(json);

  @JsonKey(unknownEnumValue: PersonsTagsConstraint.artemisUnknown)
  late PersonsTagsConstraint constraint;

  @JsonKey(
      name: 'update_columns',
      unknownEnumValue: PersonsTagsUpdateColumn.artemisUnknown)
  late List<PersonsTagsUpdateColumn> updateColumns;

  PersonsTagsBoolExp? where;

  @override
  List<Object?> get props => [constraint, updateColumns, where];
  @override
  Map<String, dynamic> toJson() => _$PersonsTagsOnConflictToJson(this);
}

@JsonSerializable(explicitToJson: true)
class HistoryVisitHistoryArrRelInsertInput extends JsonSerializable
    with EquatableMixin {
  HistoryVisitHistoryArrRelInsertInput({required this.data, this.onConflict});

  factory HistoryVisitHistoryArrRelInsertInput.fromJson(
          Map<String, dynamic> json) =>
      _$HistoryVisitHistoryArrRelInsertInputFromJson(json);

  late List<HistoryVisitHistoryInsertInput> data;

  HistoryVisitHistoryOnConflict? onConflict;

  @override
  List<Object?> get props => [data, onConflict];
  @override
  Map<String, dynamic> toJson() =>
      _$HistoryVisitHistoryArrRelInsertInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class HistoryVisitHistoryInsertInput extends JsonSerializable
    with EquatableMixin {
  HistoryVisitHistoryInsertInput(
      {this.person,
      this.personId,
      this.recordedBy,
      this.time,
      this.user,
      this.userRole});

  factory HistoryVisitHistoryInsertInput.fromJson(Map<String, dynamic> json) =>
      _$HistoryVisitHistoryInsertInputFromJson(json);

  PersonsObjRelInsertInput? person;

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? personId;

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? recordedBy;

  DateTime? time;

  UsersObjRelInsertInput? user;

  String? userRole;

  @override
  List<Object?> get props =>
      [person, personId, recordedBy, time, user, userRole];
  @override
  Map<String, dynamic> toJson() => _$HistoryVisitHistoryInsertInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class HistoryVisitHistoryOnConflict extends JsonSerializable
    with EquatableMixin {
  HistoryVisitHistoryOnConflict(
      {required this.constraint, required this.updateColumns, this.where});

  factory HistoryVisitHistoryOnConflict.fromJson(Map<String, dynamic> json) =>
      _$HistoryVisitHistoryOnConflictFromJson(json);

  @JsonKey(unknownEnumValue: HistoryVisitHistoryConstraint.artemisUnknown)
  late HistoryVisitHistoryConstraint constraint;

  @JsonKey(
      name: 'update_columns',
      unknownEnumValue: HistoryVisitHistoryUpdateColumn.artemisUnknown)
  late List<HistoryVisitHistoryUpdateColumn> updateColumns;

  HistoryVisitHistoryBoolExp? where;

  @override
  List<Object?> get props => [constraint, updateColumns, where];
  @override
  Map<String, dynamic> toJson() => _$HistoryVisitHistoryOnConflictToJson(this);
}

@JsonSerializable(explicitToJson: true)
class HistoryAttendanceHistoryOnConflict extends JsonSerializable
    with EquatableMixin {
  HistoryAttendanceHistoryOnConflict(
      {required this.constraint, required this.updateColumns, this.where});

  factory HistoryAttendanceHistoryOnConflict.fromJson(
          Map<String, dynamic> json) =>
      _$HistoryAttendanceHistoryOnConflictFromJson(json);

  @JsonKey(unknownEnumValue: HistoryAttendanceHistoryConstraint.artemisUnknown)
  late HistoryAttendanceHistoryConstraint constraint;

  @JsonKey(
      name: 'update_columns',
      unknownEnumValue: HistoryAttendanceHistoryUpdateColumn.artemisUnknown)
  late List<HistoryAttendanceHistoryUpdateColumn> updateColumns;

  HistoryAttendanceHistoryBoolExp? where;

  @override
  List<Object?> get props => [constraint, updateColumns, where];
  @override
  Map<String, dynamic> toJson() =>
      _$HistoryAttendanceHistoryOnConflictToJson(this);
}

@JsonSerializable(explicitToJson: true)
class HistoryAttendanceDaysOnConflict extends JsonSerializable
    with EquatableMixin {
  HistoryAttendanceDaysOnConflict(
      {required this.constraint, required this.updateColumns, this.where});

  factory HistoryAttendanceDaysOnConflict.fromJson(Map<String, dynamic> json) =>
      _$HistoryAttendanceDaysOnConflictFromJson(json);

  @JsonKey(unknownEnumValue: HistoryAttendanceDaysConstraint.artemisUnknown)
  late HistoryAttendanceDaysConstraint constraint;

  @JsonKey(
      name: 'update_columns',
      unknownEnumValue: HistoryAttendanceDaysUpdateColumn.artemisUnknown)
  late List<HistoryAttendanceDaysUpdateColumn> updateColumns;

  HistoryAttendanceDaysBoolExp? where;

  @override
  List<Object?> get props => [constraint, updateColumns, where];
  @override
  Map<String, dynamic> toJson() =>
      _$HistoryAttendanceDaysOnConflictToJson(this);
}

@JsonSerializable(explicitToJson: true)
class HistoryAttendanceDaysConstraintsOnConflict extends JsonSerializable
    with EquatableMixin {
  HistoryAttendanceDaysConstraintsOnConflict(
      {required this.constraint, required this.updateColumns, this.where});

  factory HistoryAttendanceDaysConstraintsOnConflict.fromJson(
          Map<String, dynamic> json) =>
      _$HistoryAttendanceDaysConstraintsOnConflictFromJson(json);

  @JsonKey(
      unknownEnumValue:
          HistoryAttendanceDaysConstraintsConstraint.artemisUnknown)
  late HistoryAttendanceDaysConstraintsConstraint constraint;

  @JsonKey(
      name: 'update_columns',
      unknownEnumValue:
          HistoryAttendanceDaysConstraintsUpdateColumn.artemisUnknown)
  late List<HistoryAttendanceDaysConstraintsUpdateColumn> updateColumns;

  HistoryAttendanceDaysConstraintsBoolExp? where;

  @override
  List<Object?> get props => [constraint, updateColumns, where];
  @override
  Map<String, dynamic> toJson() =>
      _$HistoryAttendanceDaysConstraintsOnConflictToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UsersPermissionsOnConflict extends JsonSerializable with EquatableMixin {
  UsersPermissionsOnConflict(
      {required this.constraint, required this.updateColumns, this.where});

  factory UsersPermissionsOnConflict.fromJson(Map<String, dynamic> json) =>
      _$UsersPermissionsOnConflictFromJson(json);

  @JsonKey(unknownEnumValue: UsersPermissionsConstraint.artemisUnknown)
  late UsersPermissionsConstraint constraint;

  @JsonKey(
      name: 'update_columns',
      unknownEnumValue: UsersPermissionsUpdateColumn.artemisUnknown)
  late List<UsersPermissionsUpdateColumn> updateColumns;

  UsersPermissionsBoolExp? where;

  @override
  List<Object?> get props => [constraint, updateColumns, where];
  @override
  Map<String, dynamic> toJson() => _$UsersPermissionsOnConflictToJson(this);
}

@JsonSerializable(explicitToJson: true)
class InsertPerson$MutationRoot$Persons extends JsonSerializable
    with EquatableMixin {
  InsertPerson$MutationRoot$Persons();

  factory InsertPerson$MutationRoot$Persons.fromJson(
          Map<String, dynamic> json) =>
      _$InsertPerson$MutationRoot$PersonsFromJson(json);

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
      _$InsertPerson$MutationRoot$PersonsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class InsertPerson$MutationRoot extends JsonSerializable with EquatableMixin {
  InsertPerson$MutationRoot();

  factory InsertPerson$MutationRoot.fromJson(Map<String, dynamic> json) =>
      _$InsertPerson$MutationRootFromJson(json);

  InsertPerson$MutationRoot$Persons? insertPersonsOne;

  @override
  List<Object?> get props => [insertPersonsOne];
  @override
  Map<String, dynamic> toJson() => _$InsertPerson$MutationRootToJson(this);
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

  GetMorePersonData$QueryRoot$Persons? personsByPk;

  @override
  List<Object?> get props => [personsByPk];
  @override
  Map<String, dynamic> toJson() => _$GetMorePersonData$QueryRootToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PersonsGeolocations$QueryRoot$Areas extends JsonSerializable
    with EquatableMixin {
  PersonsGeolocations$QueryRoot$Areas();

  factory PersonsGeolocations$QueryRoot$Areas.fromJson(
          Map<String, dynamic> json) =>
      _$PersonsGeolocations$QueryRoot$AreasFromJson(json);

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
      _$PersonsGeolocations$QueryRoot$AreasToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PersonsGeolocations$QueryRoot$Streets extends JsonSerializable
    with EquatableMixin {
  PersonsGeolocations$QueryRoot$Streets();

  factory PersonsGeolocations$QueryRoot$Streets.fromJson(
          Map<String, dynamic> json) =>
      _$PersonsGeolocations$QueryRoot$StreetsFromJson(json);

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
      _$PersonsGeolocations$QueryRoot$StreetsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PersonsGeolocations$QueryRoot$Families extends JsonSerializable
    with EquatableMixin {
  PersonsGeolocations$QueryRoot$Families();

  factory PersonsGeolocations$QueryRoot$Families.fromJson(
          Map<String, dynamic> json) =>
      _$PersonsGeolocations$QueryRoot$FamiliesFromJson(json);

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
      _$PersonsGeolocations$QueryRoot$FamiliesToJson(this);
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

  int? color;

  @JsonKey(
      fromJson: fromGraphQLGeographyNullableToDartJsonNullable,
      toJson: fromDartJsonNullableToGraphQLGeographyNullable)
  Json? geolocation;

  @override
  List<Object?> get props => [id, name, color, geolocation];
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

  late List<PersonsGeolocations$QueryRoot$Areas> areas;

  late List<PersonsGeolocations$QueryRoot$Streets> streets;

  late List<PersonsGeolocations$QueryRoot$Families> families;

  late List<PersonsGeolocations$QueryRoot$Persons> persons;

  @override
  List<Object?> get props => [areas, streets, families, persons];
  @override
  Map<String, dynamic> toJson() => _$PersonsGeolocations$QueryRootToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzePerson$QueryRoot$Persons$HistoryCallHistoryAggregate$HistoryCallHistoryAggregateFields$HistoryCallHistoryMaxFields
    extends JsonSerializable with EquatableMixin {
  AnalyzePerson$QueryRoot$Persons$HistoryCallHistoryAggregate$HistoryCallHistoryAggregateFields$HistoryCallHistoryMaxFields();

  factory AnalyzePerson$QueryRoot$Persons$HistoryCallHistoryAggregate$HistoryCallHistoryAggregateFields$HistoryCallHistoryMaxFields.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzePerson$QueryRoot$Persons$HistoryCallHistoryAggregate$HistoryCallHistoryAggregateFields$HistoryCallHistoryMaxFieldsFromJson(
          json);

  DateTime? time;

  @override
  List<Object?> get props => [time];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzePerson$QueryRoot$Persons$HistoryCallHistoryAggregate$HistoryCallHistoryAggregateFields$HistoryCallHistoryMaxFieldsToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzePerson$QueryRoot$Persons$HistoryCallHistoryAggregate$HistoryCallHistoryAggregateFields
    extends JsonSerializable with EquatableMixin {
  AnalyzePerson$QueryRoot$Persons$HistoryCallHistoryAggregate$HistoryCallHistoryAggregateFields();

  factory AnalyzePerson$QueryRoot$Persons$HistoryCallHistoryAggregate$HistoryCallHistoryAggregateFields.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzePerson$QueryRoot$Persons$HistoryCallHistoryAggregate$HistoryCallHistoryAggregateFieldsFromJson(
          json);

  late int count;

  AnalyzePerson$QueryRoot$Persons$HistoryCallHistoryAggregate$HistoryCallHistoryAggregateFields$HistoryCallHistoryMaxFields?
      max;

  @override
  List<Object?> get props => [count, max];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzePerson$QueryRoot$Persons$HistoryCallHistoryAggregate$HistoryCallHistoryAggregateFieldsToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzePerson$QueryRoot$Persons$HistoryCallHistoryAggregate$HistoryCallHistory
    extends JsonSerializable with EquatableMixin {
  AnalyzePerson$QueryRoot$Persons$HistoryCallHistoryAggregate$HistoryCallHistory();

  factory AnalyzePerson$QueryRoot$Persons$HistoryCallHistoryAggregate$HistoryCallHistory.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzePerson$QueryRoot$Persons$HistoryCallHistoryAggregate$HistoryCallHistoryFromJson(
          json);

  late DateTime time;

  @override
  List<Object?> get props => [time];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzePerson$QueryRoot$Persons$HistoryCallHistoryAggregate$HistoryCallHistoryToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzePerson$QueryRoot$Persons$HistoryCallHistoryAggregate
    extends JsonSerializable with EquatableMixin {
  AnalyzePerson$QueryRoot$Persons$HistoryCallHistoryAggregate();

  factory AnalyzePerson$QueryRoot$Persons$HistoryCallHistoryAggregate.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzePerson$QueryRoot$Persons$HistoryCallHistoryAggregateFromJson(
          json);

  AnalyzePerson$QueryRoot$Persons$HistoryCallHistoryAggregate$HistoryCallHistoryAggregateFields?
      aggregate;

  late List<
          AnalyzePerson$QueryRoot$Persons$HistoryCallHistoryAggregate$HistoryCallHistory>
      nodes;

  @override
  List<Object?> get props => [aggregate, nodes];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzePerson$QueryRoot$Persons$HistoryCallHistoryAggregateToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzePerson$QueryRoot$Persons$HistoryVisitHistoryAggregate$HistoryVisitHistoryAggregateFields$HistoryVisitHistoryMaxFields
    extends JsonSerializable with EquatableMixin {
  AnalyzePerson$QueryRoot$Persons$HistoryVisitHistoryAggregate$HistoryVisitHistoryAggregateFields$HistoryVisitHistoryMaxFields();

  factory AnalyzePerson$QueryRoot$Persons$HistoryVisitHistoryAggregate$HistoryVisitHistoryAggregateFields$HistoryVisitHistoryMaxFields.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzePerson$QueryRoot$Persons$HistoryVisitHistoryAggregate$HistoryVisitHistoryAggregateFields$HistoryVisitHistoryMaxFieldsFromJson(
          json);

  DateTime? time;

  @override
  List<Object?> get props => [time];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzePerson$QueryRoot$Persons$HistoryVisitHistoryAggregate$HistoryVisitHistoryAggregateFields$HistoryVisitHistoryMaxFieldsToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzePerson$QueryRoot$Persons$HistoryVisitHistoryAggregate$HistoryVisitHistoryAggregateFields
    extends JsonSerializable with EquatableMixin {
  AnalyzePerson$QueryRoot$Persons$HistoryVisitHistoryAggregate$HistoryVisitHistoryAggregateFields();

  factory AnalyzePerson$QueryRoot$Persons$HistoryVisitHistoryAggregate$HistoryVisitHistoryAggregateFields.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzePerson$QueryRoot$Persons$HistoryVisitHistoryAggregate$HistoryVisitHistoryAggregateFieldsFromJson(
          json);

  late int count;

  AnalyzePerson$QueryRoot$Persons$HistoryVisitHistoryAggregate$HistoryVisitHistoryAggregateFields$HistoryVisitHistoryMaxFields?
      max;

  @override
  List<Object?> get props => [count, max];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzePerson$QueryRoot$Persons$HistoryVisitHistoryAggregate$HistoryVisitHistoryAggregateFieldsToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzePerson$QueryRoot$Persons$HistoryVisitHistoryAggregate$HistoryVisitHistory
    extends JsonSerializable with EquatableMixin {
  AnalyzePerson$QueryRoot$Persons$HistoryVisitHistoryAggregate$HistoryVisitHistory();

  factory AnalyzePerson$QueryRoot$Persons$HistoryVisitHistoryAggregate$HistoryVisitHistory.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzePerson$QueryRoot$Persons$HistoryVisitHistoryAggregate$HistoryVisitHistoryFromJson(
          json);

  late DateTime time;

  @override
  List<Object?> get props => [time];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzePerson$QueryRoot$Persons$HistoryVisitHistoryAggregate$HistoryVisitHistoryToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzePerson$QueryRoot$Persons$HistoryVisitHistoryAggregate
    extends JsonSerializable with EquatableMixin {
  AnalyzePerson$QueryRoot$Persons$HistoryVisitHistoryAggregate();

  factory AnalyzePerson$QueryRoot$Persons$HistoryVisitHistoryAggregate.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzePerson$QueryRoot$Persons$HistoryVisitHistoryAggregateFromJson(
          json);

  AnalyzePerson$QueryRoot$Persons$HistoryVisitHistoryAggregate$HistoryVisitHistoryAggregateFields?
      aggregate;

  late List<
          AnalyzePerson$QueryRoot$Persons$HistoryVisitHistoryAggregate$HistoryVisitHistory>
      nodes;

  @override
  List<Object?> get props => [aggregate, nodes];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzePerson$QueryRoot$Persons$HistoryVisitHistoryAggregateToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzePerson$QueryRoot$Persons$HistoryEditHistoryAggregate$HistoryEditHistoryAggregateFields$HistoryEditHistoryMaxFields
    extends JsonSerializable with EquatableMixin {
  AnalyzePerson$QueryRoot$Persons$HistoryEditHistoryAggregate$HistoryEditHistoryAggregateFields$HistoryEditHistoryMaxFields();

  factory AnalyzePerson$QueryRoot$Persons$HistoryEditHistoryAggregate$HistoryEditHistoryAggregateFields$HistoryEditHistoryMaxFields.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzePerson$QueryRoot$Persons$HistoryEditHistoryAggregate$HistoryEditHistoryAggregateFields$HistoryEditHistoryMaxFieldsFromJson(
          json);

  DateTime? time;

  @override
  List<Object?> get props => [time];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzePerson$QueryRoot$Persons$HistoryEditHistoryAggregate$HistoryEditHistoryAggregateFields$HistoryEditHistoryMaxFieldsToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzePerson$QueryRoot$Persons$HistoryEditHistoryAggregate$HistoryEditHistoryAggregateFields
    extends JsonSerializable with EquatableMixin {
  AnalyzePerson$QueryRoot$Persons$HistoryEditHistoryAggregate$HistoryEditHistoryAggregateFields();

  factory AnalyzePerson$QueryRoot$Persons$HistoryEditHistoryAggregate$HistoryEditHistoryAggregateFields.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzePerson$QueryRoot$Persons$HistoryEditHistoryAggregate$HistoryEditHistoryAggregateFieldsFromJson(
          json);

  late int count;

  AnalyzePerson$QueryRoot$Persons$HistoryEditHistoryAggregate$HistoryEditHistoryAggregateFields$HistoryEditHistoryMaxFields?
      max;

  @override
  List<Object?> get props => [count, max];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzePerson$QueryRoot$Persons$HistoryEditHistoryAggregate$HistoryEditHistoryAggregateFieldsToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzePerson$QueryRoot$Persons$HistoryEditHistoryAggregate$HistoryEditHistory
    extends JsonSerializable with EquatableMixin {
  AnalyzePerson$QueryRoot$Persons$HistoryEditHistoryAggregate$HistoryEditHistory();

  factory AnalyzePerson$QueryRoot$Persons$HistoryEditHistoryAggregate$HistoryEditHistory.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzePerson$QueryRoot$Persons$HistoryEditHistoryAggregate$HistoryEditHistoryFromJson(
          json);

  late DateTime time;

  @override
  List<Object?> get props => [time];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzePerson$QueryRoot$Persons$HistoryEditHistoryAggregate$HistoryEditHistoryToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzePerson$QueryRoot$Persons$HistoryEditHistoryAggregate
    extends JsonSerializable with EquatableMixin {
  AnalyzePerson$QueryRoot$Persons$HistoryEditHistoryAggregate();

  factory AnalyzePerson$QueryRoot$Persons$HistoryEditHistoryAggregate.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzePerson$QueryRoot$Persons$HistoryEditHistoryAggregateFromJson(
          json);

  AnalyzePerson$QueryRoot$Persons$HistoryEditHistoryAggregate$HistoryEditHistoryAggregateFields?
      aggregate;

  late List<
          AnalyzePerson$QueryRoot$Persons$HistoryEditHistoryAggregate$HistoryEditHistory>
      nodes;

  @override
  List<Object?> get props => [aggregate, nodes];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzePerson$QueryRoot$Persons$HistoryEditHistoryAggregateToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzePerson$QueryRoot$Persons$HistoryKodasHistoryAggregate$HistoryKodasHistoryAggregateFields$HistoryKodasHistoryMaxFields
    extends JsonSerializable with EquatableMixin {
  AnalyzePerson$QueryRoot$Persons$HistoryKodasHistoryAggregate$HistoryKodasHistoryAggregateFields$HistoryKodasHistoryMaxFields();

  factory AnalyzePerson$QueryRoot$Persons$HistoryKodasHistoryAggregate$HistoryKodasHistoryAggregateFields$HistoryKodasHistoryMaxFields.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzePerson$QueryRoot$Persons$HistoryKodasHistoryAggregate$HistoryKodasHistoryAggregateFields$HistoryKodasHistoryMaxFieldsFromJson(
          json);

  DateTime? time;

  @override
  List<Object?> get props => [time];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzePerson$QueryRoot$Persons$HistoryKodasHistoryAggregate$HistoryKodasHistoryAggregateFields$HistoryKodasHistoryMaxFieldsToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzePerson$QueryRoot$Persons$HistoryKodasHistoryAggregate$HistoryKodasHistoryAggregateFields
    extends JsonSerializable with EquatableMixin {
  AnalyzePerson$QueryRoot$Persons$HistoryKodasHistoryAggregate$HistoryKodasHistoryAggregateFields();

  factory AnalyzePerson$QueryRoot$Persons$HistoryKodasHistoryAggregate$HistoryKodasHistoryAggregateFields.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzePerson$QueryRoot$Persons$HistoryKodasHistoryAggregate$HistoryKodasHistoryAggregateFieldsFromJson(
          json);

  late int count;

  AnalyzePerson$QueryRoot$Persons$HistoryKodasHistoryAggregate$HistoryKodasHistoryAggregateFields$HistoryKodasHistoryMaxFields?
      max;

  @override
  List<Object?> get props => [count, max];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzePerson$QueryRoot$Persons$HistoryKodasHistoryAggregate$HistoryKodasHistoryAggregateFieldsToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzePerson$QueryRoot$Persons$HistoryKodasHistoryAggregate$HistoryKodasHistory
    extends JsonSerializable with EquatableMixin {
  AnalyzePerson$QueryRoot$Persons$HistoryKodasHistoryAggregate$HistoryKodasHistory();

  factory AnalyzePerson$QueryRoot$Persons$HistoryKodasHistoryAggregate$HistoryKodasHistory.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzePerson$QueryRoot$Persons$HistoryKodasHistoryAggregate$HistoryKodasHistoryFromJson(
          json);

  DateTime? time;

  @override
  List<Object?> get props => [time];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzePerson$QueryRoot$Persons$HistoryKodasHistoryAggregate$HistoryKodasHistoryToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzePerson$QueryRoot$Persons$HistoryKodasHistoryAggregate
    extends JsonSerializable with EquatableMixin {
  AnalyzePerson$QueryRoot$Persons$HistoryKodasHistoryAggregate();

  factory AnalyzePerson$QueryRoot$Persons$HistoryKodasHistoryAggregate.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzePerson$QueryRoot$Persons$HistoryKodasHistoryAggregateFromJson(
          json);

  AnalyzePerson$QueryRoot$Persons$HistoryKodasHistoryAggregate$HistoryKodasHistoryAggregateFields?
      aggregate;

  late List<
          AnalyzePerson$QueryRoot$Persons$HistoryKodasHistoryAggregate$HistoryKodasHistory>
      nodes;

  @override
  List<Object?> get props => [aggregate, nodes];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzePerson$QueryRoot$Persons$HistoryKodasHistoryAggregateToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzePerson$QueryRoot$Persons$HistoryConfessionHistoryAggregate$HistoryConfessionHistoryAggregateFields$HistoryConfessionHistoryMaxFields
    extends JsonSerializable with EquatableMixin {
  AnalyzePerson$QueryRoot$Persons$HistoryConfessionHistoryAggregate$HistoryConfessionHistoryAggregateFields$HistoryConfessionHistoryMaxFields();

  factory AnalyzePerson$QueryRoot$Persons$HistoryConfessionHistoryAggregate$HistoryConfessionHistoryAggregateFields$HistoryConfessionHistoryMaxFields.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzePerson$QueryRoot$Persons$HistoryConfessionHistoryAggregate$HistoryConfessionHistoryAggregateFields$HistoryConfessionHistoryMaxFieldsFromJson(
          json);

  DateTime? time;

  @override
  List<Object?> get props => [time];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzePerson$QueryRoot$Persons$HistoryConfessionHistoryAggregate$HistoryConfessionHistoryAggregateFields$HistoryConfessionHistoryMaxFieldsToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzePerson$QueryRoot$Persons$HistoryConfessionHistoryAggregate$HistoryConfessionHistoryAggregateFields
    extends JsonSerializable with EquatableMixin {
  AnalyzePerson$QueryRoot$Persons$HistoryConfessionHistoryAggregate$HistoryConfessionHistoryAggregateFields();

  factory AnalyzePerson$QueryRoot$Persons$HistoryConfessionHistoryAggregate$HistoryConfessionHistoryAggregateFields.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzePerson$QueryRoot$Persons$HistoryConfessionHistoryAggregate$HistoryConfessionHistoryAggregateFieldsFromJson(
          json);

  late int count;

  AnalyzePerson$QueryRoot$Persons$HistoryConfessionHistoryAggregate$HistoryConfessionHistoryAggregateFields$HistoryConfessionHistoryMaxFields?
      max;

  @override
  List<Object?> get props => [count, max];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzePerson$QueryRoot$Persons$HistoryConfessionHistoryAggregate$HistoryConfessionHistoryAggregateFieldsToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzePerson$QueryRoot$Persons$HistoryConfessionHistoryAggregate$HistoryConfessionHistory
    extends JsonSerializable with EquatableMixin {
  AnalyzePerson$QueryRoot$Persons$HistoryConfessionHistoryAggregate$HistoryConfessionHistory();

  factory AnalyzePerson$QueryRoot$Persons$HistoryConfessionHistoryAggregate$HistoryConfessionHistory.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzePerson$QueryRoot$Persons$HistoryConfessionHistoryAggregate$HistoryConfessionHistoryFromJson(
          json);

  DateTime? time;

  @override
  List<Object?> get props => [time];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzePerson$QueryRoot$Persons$HistoryConfessionHistoryAggregate$HistoryConfessionHistoryToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzePerson$QueryRoot$Persons$HistoryConfessionHistoryAggregate
    extends JsonSerializable with EquatableMixin {
  AnalyzePerson$QueryRoot$Persons$HistoryConfessionHistoryAggregate();

  factory AnalyzePerson$QueryRoot$Persons$HistoryConfessionHistoryAggregate.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzePerson$QueryRoot$Persons$HistoryConfessionHistoryAggregateFromJson(
          json);

  AnalyzePerson$QueryRoot$Persons$HistoryConfessionHistoryAggregate$HistoryConfessionHistoryAggregateFields?
      aggregate;

  late List<
          AnalyzePerson$QueryRoot$Persons$HistoryConfessionHistoryAggregate$HistoryConfessionHistory>
      nodes;

  @override
  List<Object?> get props => [aggregate, nodes];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzePerson$QueryRoot$Persons$HistoryConfessionHistoryAggregateToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzePerson$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields
    extends JsonSerializable with EquatableMixin {
  AnalyzePerson$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields();

  factory AnalyzePerson$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzePerson$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFieldsFromJson(
          json);

  DateTime? dayId;

  @override
  List<Object?> get props => [dayId];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzePerson$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFieldsToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzePerson$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields
    extends JsonSerializable with EquatableMixin {
  AnalyzePerson$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields();

  factory AnalyzePerson$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzePerson$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFieldsFromJson(
          json);

  late int count;

  AnalyzePerson$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields?
      max;

  @override
  List<Object?> get props => [count, max];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzePerson$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFieldsToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzePerson$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistory
    extends JsonSerializable with EquatableMixin {
  AnalyzePerson$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistory();

  factory AnalyzePerson$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistory.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzePerson$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryFromJson(
          json);

  late DateTime dayId;

  @override
  List<Object?> get props => [dayId];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzePerson$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzePerson$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate
    extends JsonSerializable with EquatableMixin {
  AnalyzePerson$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate();

  factory AnalyzePerson$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzePerson$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregateFromJson(
          json);

  AnalyzePerson$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields?
      aggregate;

  late List<
          AnalyzePerson$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistory>
      nodes;

  @override
  List<Object?> get props => [aggregate, nodes];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzePerson$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregateToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzePerson$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsAggregateFields
    extends JsonSerializable with EquatableMixin {
  AnalyzePerson$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsAggregateFields();

  factory AnalyzePerson$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsAggregateFields.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzePerson$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsAggregateFieldsFromJson(
          json);

  late int count;

  @override
  List<Object?> get props => [count];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzePerson$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsAggregateFieldsToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzePerson$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraints
    extends JsonSerializable with EquatableMixin {
  AnalyzePerson$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraints();

  factory AnalyzePerson$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraints.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzePerson$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsFromJson(
          json);

  late DateTime dayId;

  @override
  List<Object?> get props => [dayId];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzePerson$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzePerson$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceDaysConstraintsAggregate
    extends JsonSerializable with EquatableMixin {
  AnalyzePerson$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceDaysConstraintsAggregate();

  factory AnalyzePerson$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceDaysConstraintsAggregate.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzePerson$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceDaysConstraintsAggregateFromJson(
          json);

  AnalyzePerson$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsAggregateFields?
      aggregate;

  late List<
          AnalyzePerson$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraints>
      nodes;

  @override
  List<Object?> get props => [aggregate, nodes];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzePerson$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceDaysConstraintsAggregateToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzePerson$QueryRoot$Persons$PersonsServices$Services
    extends JsonSerializable with EquatableMixin {
  AnalyzePerson$QueryRoot$Persons$PersonsServices$Services();

  factory AnalyzePerson$QueryRoot$Persons$PersonsServices$Services.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzePerson$QueryRoot$Persons$PersonsServices$ServicesFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue id;

  late String name;

  int? color;

  late AnalyzePerson$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate
      attendanceHistoryAggregate;

  late AnalyzePerson$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceDaysConstraintsAggregate
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
      _$AnalyzePerson$QueryRoot$Persons$PersonsServices$ServicesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzePerson$QueryRoot$Persons$PersonsServices extends JsonSerializable
    with EquatableMixin {
  AnalyzePerson$QueryRoot$Persons$PersonsServices();

  factory AnalyzePerson$QueryRoot$Persons$PersonsServices.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzePerson$QueryRoot$Persons$PersonsServicesFromJson(json);

  late AnalyzePerson$QueryRoot$Persons$PersonsServices$Services service;

  @override
  List<Object?> get props => [service];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzePerson$QueryRoot$Persons$PersonsServicesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzePerson$QueryRoot$Persons$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields
    extends JsonSerializable with EquatableMixin {
  AnalyzePerson$QueryRoot$Persons$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields();

  factory AnalyzePerson$QueryRoot$Persons$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzePerson$QueryRoot$Persons$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFieldsFromJson(
          json);

  DateTime? dayId;

  @override
  List<Object?> get props => [dayId];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzePerson$QueryRoot$Persons$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFieldsToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzePerson$QueryRoot$Persons$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields
    extends JsonSerializable with EquatableMixin {
  AnalyzePerson$QueryRoot$Persons$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields();

  factory AnalyzePerson$QueryRoot$Persons$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzePerson$QueryRoot$Persons$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFieldsFromJson(
          json);

  late int count;

  AnalyzePerson$QueryRoot$Persons$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields?
      max;

  @override
  List<Object?> get props => [count, max];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzePerson$QueryRoot$Persons$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFieldsToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzePerson$QueryRoot$Persons$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistory
    extends JsonSerializable with EquatableMixin {
  AnalyzePerson$QueryRoot$Persons$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistory();

  factory AnalyzePerson$QueryRoot$Persons$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistory.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzePerson$QueryRoot$Persons$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryFromJson(
          json);

  late DateTime dayId;

  @override
  List<Object?> get props => [dayId];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzePerson$QueryRoot$Persons$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzePerson$QueryRoot$Persons$Classes$HistoryAttendanceHistoryAggregate
    extends JsonSerializable with EquatableMixin {
  AnalyzePerson$QueryRoot$Persons$Classes$HistoryAttendanceHistoryAggregate();

  factory AnalyzePerson$QueryRoot$Persons$Classes$HistoryAttendanceHistoryAggregate.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzePerson$QueryRoot$Persons$Classes$HistoryAttendanceHistoryAggregateFromJson(
          json);

  AnalyzePerson$QueryRoot$Persons$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields?
      aggregate;

  late List<
          AnalyzePerson$QueryRoot$Persons$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistory>
      nodes;

  @override
  List<Object?> get props => [aggregate, nodes];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzePerson$QueryRoot$Persons$Classes$HistoryAttendanceHistoryAggregateToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzePerson$QueryRoot$Persons$Classes$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsAggregateFields
    extends JsonSerializable with EquatableMixin {
  AnalyzePerson$QueryRoot$Persons$Classes$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsAggregateFields();

  factory AnalyzePerson$QueryRoot$Persons$Classes$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsAggregateFields.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzePerson$QueryRoot$Persons$Classes$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsAggregateFieldsFromJson(
          json);

  late int count;

  @override
  List<Object?> get props => [count];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzePerson$QueryRoot$Persons$Classes$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsAggregateFieldsToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzePerson$QueryRoot$Persons$Classes$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraints
    extends JsonSerializable with EquatableMixin {
  AnalyzePerson$QueryRoot$Persons$Classes$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraints();

  factory AnalyzePerson$QueryRoot$Persons$Classes$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraints.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzePerson$QueryRoot$Persons$Classes$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsFromJson(
          json);

  late DateTime dayId;

  @override
  List<Object?> get props => [dayId];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzePerson$QueryRoot$Persons$Classes$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzePerson$QueryRoot$Persons$Classes$HistoryAttendanceDaysConstraintsAggregate
    extends JsonSerializable with EquatableMixin {
  AnalyzePerson$QueryRoot$Persons$Classes$HistoryAttendanceDaysConstraintsAggregate();

  factory AnalyzePerson$QueryRoot$Persons$Classes$HistoryAttendanceDaysConstraintsAggregate.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzePerson$QueryRoot$Persons$Classes$HistoryAttendanceDaysConstraintsAggregateFromJson(
          json);

  AnalyzePerson$QueryRoot$Persons$Classes$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsAggregateFields?
      aggregate;

  late List<
          AnalyzePerson$QueryRoot$Persons$Classes$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraints>
      nodes;

  @override
  List<Object?> get props => [aggregate, nodes];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzePerson$QueryRoot$Persons$Classes$HistoryAttendanceDaysConstraintsAggregateToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzePerson$QueryRoot$Persons$Classes extends JsonSerializable
    with EquatableMixin {
  AnalyzePerson$QueryRoot$Persons$Classes();

  factory AnalyzePerson$QueryRoot$Persons$Classes.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzePerson$QueryRoot$Persons$ClassesFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue id;

  late String name;

  int? color;

  late AnalyzePerson$QueryRoot$Persons$Classes$HistoryAttendanceHistoryAggregate
      attendanceHistoryAggregate;

  late AnalyzePerson$QueryRoot$Persons$Classes$HistoryAttendanceDaysConstraintsAggregate
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
      _$AnalyzePerson$QueryRoot$Persons$ClassesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzePerson$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields
    extends JsonSerializable with EquatableMixin {
  AnalyzePerson$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields();

  factory AnalyzePerson$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzePerson$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFieldsFromJson(
          json);

  DateTime? dayId;

  @override
  List<Object?> get props => [dayId];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzePerson$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFieldsToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzePerson$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields
    extends JsonSerializable with EquatableMixin {
  AnalyzePerson$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields();

  factory AnalyzePerson$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzePerson$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFieldsFromJson(
          json);

  late int count;

  AnalyzePerson$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields?
      max;

  @override
  List<Object?> get props => [count, max];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzePerson$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFieldsToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzePerson$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistory
    extends JsonSerializable with EquatableMixin {
  AnalyzePerson$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistory();

  factory AnalyzePerson$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistory.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzePerson$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryFromJson(
          json);

  late DateTime dayId;

  @override
  List<Object?> get props => [dayId];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzePerson$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzePerson$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate
    extends JsonSerializable with EquatableMixin {
  AnalyzePerson$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate();

  factory AnalyzePerson$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzePerson$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregateFromJson(
          json);

  AnalyzePerson$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields?
      aggregate;

  late List<
          AnalyzePerson$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistory>
      nodes;

  @override
  List<Object?> get props => [aggregate, nodes];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzePerson$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregateToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzePerson$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsAggregateFields
    extends JsonSerializable with EquatableMixin {
  AnalyzePerson$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsAggregateFields();

  factory AnalyzePerson$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsAggregateFields.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzePerson$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsAggregateFieldsFromJson(
          json);

  late int count;

  @override
  List<Object?> get props => [count];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzePerson$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsAggregateFieldsToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzePerson$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraints
    extends JsonSerializable with EquatableMixin {
  AnalyzePerson$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraints();

  factory AnalyzePerson$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraints.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzePerson$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsFromJson(
          json);

  late DateTime dayId;

  @override
  List<Object?> get props => [dayId];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzePerson$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzePerson$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceDaysConstraintsAggregate
    extends JsonSerializable with EquatableMixin {
  AnalyzePerson$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceDaysConstraintsAggregate();

  factory AnalyzePerson$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceDaysConstraintsAggregate.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzePerson$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceDaysConstraintsAggregateFromJson(
          json);

  AnalyzePerson$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsAggregateFields?
      aggregate;

  late List<
          AnalyzePerson$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraints>
      nodes;

  @override
  List<Object?> get props => [aggregate, nodes];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzePerson$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceDaysConstraintsAggregateToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzePerson$QueryRoot$Persons$PersonsGroups$Groups
    extends JsonSerializable with EquatableMixin {
  AnalyzePerson$QueryRoot$Persons$PersonsGroups$Groups();

  factory AnalyzePerson$QueryRoot$Persons$PersonsGroups$Groups.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzePerson$QueryRoot$Persons$PersonsGroups$GroupsFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue id;

  late String name;

  int? color;

  late AnalyzePerson$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate
      attendanceHistoryAggregate;

  late AnalyzePerson$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceDaysConstraintsAggregate
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
      _$AnalyzePerson$QueryRoot$Persons$PersonsGroups$GroupsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzePerson$QueryRoot$Persons$PersonsGroups extends JsonSerializable
    with EquatableMixin {
  AnalyzePerson$QueryRoot$Persons$PersonsGroups();

  factory AnalyzePerson$QueryRoot$Persons$PersonsGroups.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzePerson$QueryRoot$Persons$PersonsGroupsFromJson(json);

  late AnalyzePerson$QueryRoot$Persons$PersonsGroups$Groups group;

  @override
  List<Object?> get props => [group];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzePerson$QueryRoot$Persons$PersonsGroupsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzePerson$QueryRoot$Persons extends JsonSerializable
    with EquatableMixin {
  AnalyzePerson$QueryRoot$Persons();

  factory AnalyzePerson$QueryRoot$Persons.fromJson(Map<String, dynamic> json) =>
      _$AnalyzePerson$QueryRoot$PersonsFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue id;

  late String name;

  late AnalyzePerson$QueryRoot$Persons$HistoryCallHistoryAggregate
      callHistoryAggregate;

  late AnalyzePerson$QueryRoot$Persons$HistoryVisitHistoryAggregate
      visitHistoryAggregate;

  late AnalyzePerson$QueryRoot$Persons$HistoryEditHistoryAggregate
      editHistoryAggregate;

  late AnalyzePerson$QueryRoot$Persons$HistoryKodasHistoryAggregate
      kodasHistoryAggregate;

  late AnalyzePerson$QueryRoot$Persons$HistoryConfessionHistoryAggregate
      confessionHistoryAggregate;

  late List<AnalyzePerson$QueryRoot$Persons$PersonsServices> services;

  List<AnalyzePerson$QueryRoot$Persons$Classes>? classes;

  late List<AnalyzePerson$QueryRoot$Persons$PersonsGroups> groups;

  @override
  List<Object?> get props => [
        id,
        name,
        callHistoryAggregate,
        visitHistoryAggregate,
        editHistoryAggregate,
        kodasHistoryAggregate,
        confessionHistoryAggregate,
        services,
        classes,
        groups
      ];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzePerson$QueryRoot$PersonsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzePerson$QueryRoot extends JsonSerializable with EquatableMixin {
  AnalyzePerson$QueryRoot();

  factory AnalyzePerson$QueryRoot.fromJson(Map<String, dynamic> json) =>
      _$AnalyzePerson$QueryRootFromJson(json);

  AnalyzePerson$QueryRoot$Persons? personsByPk;

  @override
  List<Object?> get props => [personsByPk];
  @override
  Map<String, dynamic> toJson() => _$AnalyzePerson$QueryRootToJson(this);
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

  GetPersonClassesAndGroups$QueryRoot$Persons? personsByPk;

  @override
  List<Object?> get props => [personsByPk];
  @override
  Map<String, dynamic> toJson() =>
      _$GetPersonClassesAndGroups$QueryRootToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetFullPersonData$QueryRoot$Persons$Churches extends JsonSerializable
    with EquatableMixin {
  GetFullPersonData$QueryRoot$Persons$Churches();

  factory GetFullPersonData$QueryRoot$Persons$Churches.fromJson(
          Map<String, dynamic> json) =>
      _$GetFullPersonData$QueryRoot$Persons$ChurchesFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue id;

  late String name;

  @override
  List<Object?> get props => [id, name];
  @override
  Map<String, dynamic> toJson() =>
      _$GetFullPersonData$QueryRoot$Persons$ChurchesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetFullPersonData$QueryRoot$Persons$Colleges extends JsonSerializable
    with EquatableMixin {
  GetFullPersonData$QueryRoot$Persons$Colleges();

  factory GetFullPersonData$QueryRoot$Persons$Colleges.fromJson(
          Map<String, dynamic> json) =>
      _$GetFullPersonData$QueryRoot$Persons$CollegesFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue id;

  late String name;

  @override
  List<Object?> get props => [id, name];
  @override
  Map<String, dynamic> toJson() =>
      _$GetFullPersonData$QueryRoot$Persons$CollegesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetFullPersonData$QueryRoot$Persons$Families extends JsonSerializable
    with EquatableMixin {
  GetFullPersonData$QueryRoot$Persons$Families();

  factory GetFullPersonData$QueryRoot$Persons$Families.fromJson(
          Map<String, dynamic> json) =>
      _$GetFullPersonData$QueryRoot$Persons$FamiliesFromJson(json);

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
      _$GetFullPersonData$QueryRoot$Persons$FamiliesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetFullPersonData$QueryRoot$Persons$Fathers$Churches
    extends JsonSerializable with EquatableMixin {
  GetFullPersonData$QueryRoot$Persons$Fathers$Churches();

  factory GetFullPersonData$QueryRoot$Persons$Fathers$Churches.fromJson(
          Map<String, dynamic> json) =>
      _$GetFullPersonData$QueryRoot$Persons$Fathers$ChurchesFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue id;

  late String name;

  @override
  List<Object?> get props => [id, name];
  @override
  Map<String, dynamic> toJson() =>
      _$GetFullPersonData$QueryRoot$Persons$Fathers$ChurchesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetFullPersonData$QueryRoot$Persons$Fathers extends JsonSerializable
    with EquatableMixin {
  GetFullPersonData$QueryRoot$Persons$Fathers();

  factory GetFullPersonData$QueryRoot$Persons$Fathers.fromJson(
          Map<String, dynamic> json) =>
      _$GetFullPersonData$QueryRoot$Persons$FathersFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue id;

  late String name;

  GetFullPersonData$QueryRoot$Persons$Fathers$Churches? church;

  @override
  List<Object?> get props => [id, name, church];
  @override
  Map<String, dynamic> toJson() =>
      _$GetFullPersonData$QueryRoot$Persons$FathersToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetFullPersonData$QueryRoot$Persons$PersonsGroups$Groups$Services
    extends JsonSerializable with EquatableMixin {
  GetFullPersonData$QueryRoot$Persons$PersonsGroups$Groups$Services();

  factory GetFullPersonData$QueryRoot$Persons$PersonsGroups$Groups$Services.fromJson(
          Map<String, dynamic> json) =>
      _$GetFullPersonData$QueryRoot$Persons$PersonsGroups$Groups$ServicesFromJson(
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
      _$GetFullPersonData$QueryRoot$Persons$PersonsGroups$Groups$ServicesToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class GetFullPersonData$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields
    extends JsonSerializable with EquatableMixin {
  GetFullPersonData$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields();

  factory GetFullPersonData$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields.fromJson(
          Map<String, dynamic> json) =>
      _$GetFullPersonData$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFieldsFromJson(
          json);

  DateTime? time;

  @override
  List<Object?> get props => [time];
  @override
  Map<String, dynamic> toJson() =>
      _$GetFullPersonData$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFieldsToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class GetFullPersonData$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields
    extends JsonSerializable with EquatableMixin {
  GetFullPersonData$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields();

  factory GetFullPersonData$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields.fromJson(
          Map<String, dynamic> json) =>
      _$GetFullPersonData$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFieldsFromJson(
          json);

  GetFullPersonData$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields?
      max;

  @override
  List<Object?> get props => [max];
  @override
  Map<String, dynamic> toJson() =>
      _$GetFullPersonData$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFieldsToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class GetFullPersonData$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate
    extends JsonSerializable with EquatableMixin {
  GetFullPersonData$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate();

  factory GetFullPersonData$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate.fromJson(
          Map<String, dynamic> json) =>
      _$GetFullPersonData$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregateFromJson(
          json);

  GetFullPersonData$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields?
      aggregate;

  @override
  List<Object?> get props => [aggregate];
  @override
  Map<String, dynamic> toJson() =>
      _$GetFullPersonData$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregateToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class GetFullPersonData$QueryRoot$Persons$PersonsGroups$Groups
    extends JsonSerializable with EquatableMixin {
  GetFullPersonData$QueryRoot$Persons$PersonsGroups$Groups();

  factory GetFullPersonData$QueryRoot$Persons$PersonsGroups$Groups.fromJson(
          Map<String, dynamic> json) =>
      _$GetFullPersonData$QueryRoot$Persons$PersonsGroups$GroupsFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue id;

  late String name;

  int? color;

  DateTime? photoUpdatedAt;

  late GetFullPersonData$QueryRoot$Persons$PersonsGroups$Groups$Services
      service;

  late GetFullPersonData$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate
      attendanceHistoryAggregate;

  @override
  List<Object?> get props =>
      [id, name, color, photoUpdatedAt, service, attendanceHistoryAggregate];
  @override
  Map<String, dynamic> toJson() =>
      _$GetFullPersonData$QueryRoot$Persons$PersonsGroups$GroupsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetFullPersonData$QueryRoot$Persons$PersonsGroups extends JsonSerializable
    with EquatableMixin {
  GetFullPersonData$QueryRoot$Persons$PersonsGroups();

  factory GetFullPersonData$QueryRoot$Persons$PersonsGroups.fromJson(
          Map<String, dynamic> json) =>
      _$GetFullPersonData$QueryRoot$Persons$PersonsGroupsFromJson(json);

  late GetFullPersonData$QueryRoot$Persons$PersonsGroups$Groups group;

  @override
  List<Object?> get props => [group];
  @override
  Map<String, dynamic> toJson() =>
      _$GetFullPersonData$QueryRoot$Persons$PersonsGroupsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetFullPersonData$QueryRoot$Persons$Jobs extends JsonSerializable
    with EquatableMixin {
  GetFullPersonData$QueryRoot$Persons$Jobs();

  factory GetFullPersonData$QueryRoot$Persons$Jobs.fromJson(
          Map<String, dynamic> json) =>
      _$GetFullPersonData$QueryRoot$Persons$JobsFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue id;

  late String name;

  @override
  List<Object?> get props => [id, name];
  @override
  Map<String, dynamic> toJson() =>
      _$GetFullPersonData$QueryRoot$Persons$JobsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetFullPersonData$QueryRoot$Persons$PersonTypes extends JsonSerializable
    with EquatableMixin {
  GetFullPersonData$QueryRoot$Persons$PersonTypes();

  factory GetFullPersonData$QueryRoot$Persons$PersonTypes.fromJson(
          Map<String, dynamic> json) =>
      _$GetFullPersonData$QueryRoot$Persons$PersonTypesFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue id;

  late String name;

  @override
  List<Object?> get props => [id, name];
  @override
  Map<String, dynamic> toJson() =>
      _$GetFullPersonData$QueryRoot$Persons$PersonTypesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetFullPersonData$QueryRoot$Persons$Qualifications
    extends JsonSerializable with EquatableMixin {
  GetFullPersonData$QueryRoot$Persons$Qualifications();

  factory GetFullPersonData$QueryRoot$Persons$Qualifications.fromJson(
          Map<String, dynamic> json) =>
      _$GetFullPersonData$QueryRoot$Persons$QualificationsFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue id;

  late String name;

  @override
  List<Object?> get props => [id, name];
  @override
  Map<String, dynamic> toJson() =>
      _$GetFullPersonData$QueryRoot$Persons$QualificationsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetFullPersonData$QueryRoot$Persons$Schools extends JsonSerializable
    with EquatableMixin {
  GetFullPersonData$QueryRoot$Persons$Schools();

  factory GetFullPersonData$QueryRoot$Persons$Schools.fromJson(
          Map<String, dynamic> json) =>
      _$GetFullPersonData$QueryRoot$Persons$SchoolsFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue id;

  late String name;

  @override
  List<Object?> get props => [id, name];
  @override
  Map<String, dynamic> toJson() =>
      _$GetFullPersonData$QueryRoot$Persons$SchoolsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetFullPersonData$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields
    extends JsonSerializable with EquatableMixin {
  GetFullPersonData$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields();

  factory GetFullPersonData$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields.fromJson(
          Map<String, dynamic> json) =>
      _$GetFullPersonData$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFieldsFromJson(
          json);

  DateTime? time;

  @override
  List<Object?> get props => [time];
  @override
  Map<String, dynamic> toJson() =>
      _$GetFullPersonData$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFieldsToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class GetFullPersonData$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields
    extends JsonSerializable with EquatableMixin {
  GetFullPersonData$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields();

  factory GetFullPersonData$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields.fromJson(
          Map<String, dynamic> json) =>
      _$GetFullPersonData$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFieldsFromJson(
          json);

  GetFullPersonData$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields?
      max;

  @override
  List<Object?> get props => [max];
  @override
  Map<String, dynamic> toJson() =>
      _$GetFullPersonData$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFieldsToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class GetFullPersonData$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate
    extends JsonSerializable with EquatableMixin {
  GetFullPersonData$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate();

  factory GetFullPersonData$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate.fromJson(
          Map<String, dynamic> json) =>
      _$GetFullPersonData$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregateFromJson(
          json);

  GetFullPersonData$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields?
      aggregate;

  @override
  List<Object?> get props => [aggregate];
  @override
  Map<String, dynamic> toJson() =>
      _$GetFullPersonData$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregateToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class GetFullPersonData$QueryRoot$Persons$PersonsServices$Services
    extends JsonSerializable with EquatableMixin {
  GetFullPersonData$QueryRoot$Persons$PersonsServices$Services();

  factory GetFullPersonData$QueryRoot$Persons$PersonsServices$Services.fromJson(
          Map<String, dynamic> json) =>
      _$GetFullPersonData$QueryRoot$Persons$PersonsServices$ServicesFromJson(
          json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue id;

  late String name;

  int? color;

  DateTime? photoUpdatedAt;

  late GetFullPersonData$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate
      attendanceHistoryAggregate;

  @override
  List<Object?> get props =>
      [id, name, color, photoUpdatedAt, attendanceHistoryAggregate];
  @override
  Map<String, dynamic> toJson() =>
      _$GetFullPersonData$QueryRoot$Persons$PersonsServices$ServicesToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class GetFullPersonData$QueryRoot$Persons$PersonsServices
    extends JsonSerializable with EquatableMixin {
  GetFullPersonData$QueryRoot$Persons$PersonsServices();

  factory GetFullPersonData$QueryRoot$Persons$PersonsServices.fromJson(
          Map<String, dynamic> json) =>
      _$GetFullPersonData$QueryRoot$Persons$PersonsServicesFromJson(json);

  late GetFullPersonData$QueryRoot$Persons$PersonsServices$Services service;

  @override
  List<Object?> get props => [service];
  @override
  Map<String, dynamic> toJson() =>
      _$GetFullPersonData$QueryRoot$Persons$PersonsServicesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetFullPersonData$QueryRoot$Persons$ShammasLevels extends JsonSerializable
    with EquatableMixin {
  GetFullPersonData$QueryRoot$Persons$ShammasLevels();

  factory GetFullPersonData$QueryRoot$Persons$ShammasLevels.fromJson(
          Map<String, dynamic> json) =>
      _$GetFullPersonData$QueryRoot$Persons$ShammasLevelsFromJson(json);

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
      _$GetFullPersonData$QueryRoot$Persons$ShammasLevelsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetFullPersonData$QueryRoot$Persons$PersonStates extends JsonSerializable
    with EquatableMixin {
  GetFullPersonData$QueryRoot$Persons$PersonStates();

  factory GetFullPersonData$QueryRoot$Persons$PersonStates.fromJson(
          Map<String, dynamic> json) =>
      _$GetFullPersonData$QueryRoot$Persons$PersonStatesFromJson(json);

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
      _$GetFullPersonData$QueryRoot$Persons$PersonStatesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetFullPersonData$QueryRoot$Persons$StudyYears extends JsonSerializable
    with EquatableMixin {
  GetFullPersonData$QueryRoot$Persons$StudyYears();

  factory GetFullPersonData$QueryRoot$Persons$StudyYears.fromJson(
          Map<String, dynamic> json) =>
      _$GetFullPersonData$QueryRoot$Persons$StudyYearsFromJson(json);

  late String name;

  late int order;

  @override
  List<Object?> get props => [name, order];
  @override
  Map<String, dynamic> toJson() =>
      _$GetFullPersonData$QueryRoot$Persons$StudyYearsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetFullPersonData$QueryRoot$Persons$PersonsTags$Tags
    extends JsonSerializable with EquatableMixin {
  GetFullPersonData$QueryRoot$Persons$PersonsTags$Tags();

  factory GetFullPersonData$QueryRoot$Persons$PersonsTags$Tags.fromJson(
          Map<String, dynamic> json) =>
      _$GetFullPersonData$QueryRoot$Persons$PersonsTags$TagsFromJson(json);

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
      _$GetFullPersonData$QueryRoot$Persons$PersonsTags$TagsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetFullPersonData$QueryRoot$Persons$PersonsTags extends JsonSerializable
    with EquatableMixin {
  GetFullPersonData$QueryRoot$Persons$PersonsTags();

  factory GetFullPersonData$QueryRoot$Persons$PersonsTags.fromJson(
          Map<String, dynamic> json) =>
      _$GetFullPersonData$QueryRoot$Persons$PersonsTagsFromJson(json);

  late GetFullPersonData$QueryRoot$Persons$PersonsTags$Tags tag;

  @override
  List<Object?> get props => [tag];
  @override
  Map<String, dynamic> toJson() =>
      _$GetFullPersonData$QueryRoot$Persons$PersonsTagsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetFullPersonData$QueryRoot$Persons extends JsonSerializable
    with EquatableMixin {
  GetFullPersonData$QueryRoot$Persons();

  factory GetFullPersonData$QueryRoot$Persons.fromJson(
          Map<String, dynamic> json) =>
      _$GetFullPersonData$QueryRoot$PersonsFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue id;

  late String name;

  int? color;

  DateTime? photoUpdatedAt;

  String? address;

  DateTime? birthdate;

  GetFullPersonData$QueryRoot$Persons$Churches? church;

  GetFullPersonData$QueryRoot$Persons$Colleges? college;

  GetFullPersonData$QueryRoot$Persons$Families? family;

  GetFullPersonData$QueryRoot$Persons$Fathers? father;

  late bool gender;

  @JsonKey(
      fromJson: fromGraphQLGeographyNullableToDartJsonNullable,
      toJson: fromDartJsonNullableToGraphQLGeographyNullable)
  Json? geolocation;

  late List<GetFullPersonData$QueryRoot$Persons$PersonsGroups> groups;

  late bool isServant;

  late bool isShammas;

  bool? isStudent;

  GetFullPersonData$QueryRoot$Persons$Jobs? job;

  String? jobDescription;

  String? mainPhone;

  String? notes;

  @JsonKey(
      fromJson: fromGraphQLJsonbToDartJson, toJson: fromDartJsonToGraphQLJsonb)
  late Json otherPhones;

  GetFullPersonData$QueryRoot$Persons$PersonTypes? personType;

  GetFullPersonData$QueryRoot$Persons$Qualifications? qualification;

  GetFullPersonData$QueryRoot$Persons$Schools? school;

  late List<GetFullPersonData$QueryRoot$Persons$PersonsServices> services;

  GetFullPersonData$QueryRoot$Persons$ShammasLevels? shammasLevel;

  GetFullPersonData$QueryRoot$Persons$PersonStates? state;

  GetFullPersonData$QueryRoot$Persons$StudyYears? studyYear;

  late List<GetFullPersonData$QueryRoot$Persons$PersonsTags> tags;

  @override
  List<Object?> get props => [
        id,
        name,
        color,
        photoUpdatedAt,
        address,
        birthdate,
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
        mainPhone,
        notes,
        otherPhones,
        personType,
        qualification,
        school,
        services,
        shammasLevel,
        state,
        studyYear,
        tags
      ];
  @override
  Map<String, dynamic> toJson() =>
      _$GetFullPersonData$QueryRoot$PersonsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetFullPersonData$QueryRoot extends JsonSerializable with EquatableMixin {
  GetFullPersonData$QueryRoot();

  factory GetFullPersonData$QueryRoot.fromJson(Map<String, dynamic> json) =>
      _$GetFullPersonData$QueryRootFromJson(json);

  GetFullPersonData$QueryRoot$Persons? personsByPk;

  @override
  List<Object?> get props => [personsByPk];
  @override
  Map<String, dynamic> toJson() => _$GetFullPersonData$QueryRootToJson(this);
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
class WatchPerson$SubscriptionRoot$Persons$PersonStates extends JsonSerializable
    with EquatableMixin {
  WatchPerson$SubscriptionRoot$Persons$PersonStates();

  factory WatchPerson$SubscriptionRoot$Persons$PersonStates.fromJson(
          Map<String, dynamic> json) =>
      _$WatchPerson$SubscriptionRoot$Persons$PersonStatesFromJson(json);

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
      _$WatchPerson$SubscriptionRoot$Persons$PersonStatesToJson(this);
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
class WatchPerson$SubscriptionRoot$Persons$Users$UsersData
    extends JsonSerializable with EquatableMixin {
  WatchPerson$SubscriptionRoot$Persons$Users$UsersData();

  factory WatchPerson$SubscriptionRoot$Persons$Users$UsersData.fromJson(
          Map<String, dynamic> json) =>
      _$WatchPerson$SubscriptionRoot$Persons$Users$UsersDataFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue uid;

  late String email;

  @override
  List<Object?> get props => [uid, email];
  @override
  Map<String, dynamic> toJson() =>
      _$WatchPerson$SubscriptionRoot$Persons$Users$UsersDataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class WatchPerson$SubscriptionRoot$Persons$Users extends JsonSerializable
    with EquatableMixin {
  WatchPerson$SubscriptionRoot$Persons$Users();

  factory WatchPerson$SubscriptionRoot$Persons$Users.fromJson(
          Map<String, dynamic> json) =>
      _$WatchPerson$SubscriptionRoot$Persons$UsersFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue uid;

  late String name;

  WatchPerson$SubscriptionRoot$Persons$Users$UsersData? userData;

  @override
  List<Object?> get props => [uid, name, userData];
  @override
  Map<String, dynamic> toJson() =>
      _$WatchPerson$SubscriptionRoot$Persons$UsersToJson(this);
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

  bool? isStudent;

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

  WatchPerson$SubscriptionRoot$Persons$PersonStates? state;

  List<WatchPerson$SubscriptionRoot$Persons$Streets>? streets;

  WatchPerson$SubscriptionRoot$Persons$StudyYears? studyYear;

  late List<WatchPerson$SubscriptionRoot$Persons$PersonsTags> tags;

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartUuidValueNullable,
      toJson: fromDartUuidValueNullableToGraphQLUuidNullable)
  UuidValue? uid;

  WatchPerson$SubscriptionRoot$Persons$Users? user;

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
        uid,
        user
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

  late List<KodasHistory$SubscriptionRoot$HistoryKodasHistory>
      historyKodasHistory;

  @override
  List<Object?> get props => [historyKodasHistory];
  @override
  Map<String, dynamic> toJson() => _$KodasHistory$SubscriptionRootToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PersonEditHistory$SubscriptionRoot$HistoryEditHistory$Users
    extends JsonSerializable with EquatableMixin {
  PersonEditHistory$SubscriptionRoot$HistoryEditHistory$Users();

  factory PersonEditHistory$SubscriptionRoot$HistoryEditHistory$Users.fromJson(
          Map<String, dynamic> json) =>
      _$PersonEditHistory$SubscriptionRoot$HistoryEditHistory$UsersFromJson(
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
      _$PersonEditHistory$SubscriptionRoot$HistoryEditHistory$UsersToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PersonEditHistory$SubscriptionRoot$HistoryEditHistory
    extends JsonSerializable with EquatableMixin {
  PersonEditHistory$SubscriptionRoot$HistoryEditHistory();

  factory PersonEditHistory$SubscriptionRoot$HistoryEditHistory.fromJson(
          Map<String, dynamic> json) =>
      _$PersonEditHistory$SubscriptionRoot$HistoryEditHistoryFromJson(json);

  late DateTime time;

  PersonEditHistory$SubscriptionRoot$HistoryEditHistory$Users? user;

  @override
  List<Object?> get props => [time, user];
  @override
  Map<String, dynamic> toJson() =>
      _$PersonEditHistory$SubscriptionRoot$HistoryEditHistoryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PersonEditHistory$SubscriptionRoot extends JsonSerializable
    with EquatableMixin {
  PersonEditHistory$SubscriptionRoot();

  factory PersonEditHistory$SubscriptionRoot.fromJson(
          Map<String, dynamic> json) =>
      _$PersonEditHistory$SubscriptionRootFromJson(json);

  late List<PersonEditHistory$SubscriptionRoot$HistoryEditHistory>
      historyEditHistory;

  @override
  List<Object?> get props => [historyEditHistory];
  @override
  Map<String, dynamic> toJson() =>
      _$PersonEditHistory$SubscriptionRootToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PersonServiceAttendance$SubscriptionRoot$HistoryAttendanceHistory
    extends JsonSerializable with EquatableMixin {
  PersonServiceAttendance$SubscriptionRoot$HistoryAttendanceHistory();

  factory PersonServiceAttendance$SubscriptionRoot$HistoryAttendanceHistory.fromJson(
          Map<String, dynamic> json) =>
      _$PersonServiceAttendance$SubscriptionRoot$HistoryAttendanceHistoryFromJson(
          json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue recordedBy;

  late DateTime time;

  @override
  List<Object?> get props => [recordedBy, time];
  @override
  Map<String, dynamic> toJson() =>
      _$PersonServiceAttendance$SubscriptionRoot$HistoryAttendanceHistoryToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class PersonServiceAttendance$SubscriptionRoot extends JsonSerializable
    with EquatableMixin {
  PersonServiceAttendance$SubscriptionRoot();

  factory PersonServiceAttendance$SubscriptionRoot.fromJson(
          Map<String, dynamic> json) =>
      _$PersonServiceAttendance$SubscriptionRootFromJson(json);

  late List<PersonServiceAttendance$SubscriptionRoot$HistoryAttendanceHistory>
      historyAttendanceHistory;

  @override
  List<Object?> get props => [historyAttendanceHistory];
  @override
  Map<String, dynamic> toJson() =>
      _$PersonServiceAttendance$SubscriptionRootToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PersonClassAttendance$SubscriptionRoot$HistoryAttendanceHistory
    extends JsonSerializable with EquatableMixin {
  PersonClassAttendance$SubscriptionRoot$HistoryAttendanceHistory();

  factory PersonClassAttendance$SubscriptionRoot$HistoryAttendanceHistory.fromJson(
          Map<String, dynamic> json) =>
      _$PersonClassAttendance$SubscriptionRoot$HistoryAttendanceHistoryFromJson(
          json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue recordedBy;

  late DateTime time;

  @override
  List<Object?> get props => [recordedBy, time];
  @override
  Map<String, dynamic> toJson() =>
      _$PersonClassAttendance$SubscriptionRoot$HistoryAttendanceHistoryToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class PersonClassAttendance$SubscriptionRoot extends JsonSerializable
    with EquatableMixin {
  PersonClassAttendance$SubscriptionRoot();

  factory PersonClassAttendance$SubscriptionRoot.fromJson(
          Map<String, dynamic> json) =>
      _$PersonClassAttendance$SubscriptionRootFromJson(json);

  late List<PersonClassAttendance$SubscriptionRoot$HistoryAttendanceHistory>
      historyAttendanceHistory;

  @override
  List<Object?> get props => [historyAttendanceHistory];
  @override
  Map<String, dynamic> toJson() =>
      _$PersonClassAttendance$SubscriptionRootToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PersonGroupAttendance$SubscriptionRoot$HistoryAttendanceHistory
    extends JsonSerializable with EquatableMixin {
  PersonGroupAttendance$SubscriptionRoot$HistoryAttendanceHistory();

  factory PersonGroupAttendance$SubscriptionRoot$HistoryAttendanceHistory.fromJson(
          Map<String, dynamic> json) =>
      _$PersonGroupAttendance$SubscriptionRoot$HistoryAttendanceHistoryFromJson(
          json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue recordedBy;

  late DateTime time;

  @override
  List<Object?> get props => [recordedBy, time];
  @override
  Map<String, dynamic> toJson() =>
      _$PersonGroupAttendance$SubscriptionRoot$HistoryAttendanceHistoryToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class PersonGroupAttendance$SubscriptionRoot extends JsonSerializable
    with EquatableMixin {
  PersonGroupAttendance$SubscriptionRoot();

  factory PersonGroupAttendance$SubscriptionRoot.fromJson(
          Map<String, dynamic> json) =>
      _$PersonGroupAttendance$SubscriptionRootFromJson(json);

  late List<PersonGroupAttendance$SubscriptionRoot$HistoryAttendanceHistory>
      historyAttendanceHistory;

  @override
  List<Object?> get props => [historyAttendanceHistory];
  @override
  Map<String, dynamic> toJson() =>
      _$PersonGroupAttendance$SubscriptionRootToJson(this);
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
class AnalyzeUserAttendance$QueryRoot$Users$ServicesHistory$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields
    extends JsonSerializable with EquatableMixin {
  AnalyzeUserAttendance$QueryRoot$Users$ServicesHistory$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields();

  factory AnalyzeUserAttendance$QueryRoot$Users$ServicesHistory$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzeUserAttendance$QueryRoot$Users$ServicesHistory$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFieldsFromJson(
          json);

  DateTime? dayId;

  @override
  List<Object?> get props => [dayId];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzeUserAttendance$QueryRoot$Users$ServicesHistory$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFieldsToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzeUserAttendance$QueryRoot$Users$ServicesHistory$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields
    extends JsonSerializable with EquatableMixin {
  AnalyzeUserAttendance$QueryRoot$Users$ServicesHistory$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields();

  factory AnalyzeUserAttendance$QueryRoot$Users$ServicesHistory$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzeUserAttendance$QueryRoot$Users$ServicesHistory$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFieldsFromJson(
          json);

  late int count;

  AnalyzeUserAttendance$QueryRoot$Users$ServicesHistory$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields?
      max;

  @override
  List<Object?> get props => [count, max];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzeUserAttendance$QueryRoot$Users$ServicesHistory$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFieldsToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzeUserAttendance$QueryRoot$Users$ServicesHistory$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistory
    extends JsonSerializable with EquatableMixin {
  AnalyzeUserAttendance$QueryRoot$Users$ServicesHistory$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistory();

  factory AnalyzeUserAttendance$QueryRoot$Users$ServicesHistory$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistory.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzeUserAttendance$QueryRoot$Users$ServicesHistory$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryFromJson(
          json);

  late DateTime dayId;

  @override
  List<Object?> get props => [dayId];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzeUserAttendance$QueryRoot$Users$ServicesHistory$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzeUserAttendance$QueryRoot$Users$ServicesHistory$Services$HistoryAttendanceHistoryAggregate
    extends JsonSerializable with EquatableMixin {
  AnalyzeUserAttendance$QueryRoot$Users$ServicesHistory$Services$HistoryAttendanceHistoryAggregate();

  factory AnalyzeUserAttendance$QueryRoot$Users$ServicesHistory$Services$HistoryAttendanceHistoryAggregate.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzeUserAttendance$QueryRoot$Users$ServicesHistory$Services$HistoryAttendanceHistoryAggregateFromJson(
          json);

  AnalyzeUserAttendance$QueryRoot$Users$ServicesHistory$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields?
      aggregate;

  late List<
          AnalyzeUserAttendance$QueryRoot$Users$ServicesHistory$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistory>
      nodes;

  @override
  List<Object?> get props => [aggregate, nodes];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzeUserAttendance$QueryRoot$Users$ServicesHistory$Services$HistoryAttendanceHistoryAggregateToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzeUserAttendance$QueryRoot$Users$ServicesHistory$Services$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsAggregateFields
    extends JsonSerializable with EquatableMixin {
  AnalyzeUserAttendance$QueryRoot$Users$ServicesHistory$Services$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsAggregateFields();

  factory AnalyzeUserAttendance$QueryRoot$Users$ServicesHistory$Services$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsAggregateFields.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzeUserAttendance$QueryRoot$Users$ServicesHistory$Services$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsAggregateFieldsFromJson(
          json);

  late int count;

  @override
  List<Object?> get props => [count];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzeUserAttendance$QueryRoot$Users$ServicesHistory$Services$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsAggregateFieldsToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzeUserAttendance$QueryRoot$Users$ServicesHistory$Services$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraints
    extends JsonSerializable with EquatableMixin {
  AnalyzeUserAttendance$QueryRoot$Users$ServicesHistory$Services$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraints();

  factory AnalyzeUserAttendance$QueryRoot$Users$ServicesHistory$Services$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraints.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzeUserAttendance$QueryRoot$Users$ServicesHistory$Services$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsFromJson(
          json);

  late DateTime dayId;

  @override
  List<Object?> get props => [dayId];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzeUserAttendance$QueryRoot$Users$ServicesHistory$Services$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzeUserAttendance$QueryRoot$Users$ServicesHistory$Services$HistoryAttendanceDaysConstraintsAggregate
    extends JsonSerializable with EquatableMixin {
  AnalyzeUserAttendance$QueryRoot$Users$ServicesHistory$Services$HistoryAttendanceDaysConstraintsAggregate();

  factory AnalyzeUserAttendance$QueryRoot$Users$ServicesHistory$Services$HistoryAttendanceDaysConstraintsAggregate.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzeUserAttendance$QueryRoot$Users$ServicesHistory$Services$HistoryAttendanceDaysConstraintsAggregateFromJson(
          json);

  AnalyzeUserAttendance$QueryRoot$Users$ServicesHistory$Services$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsAggregateFields?
      aggregate;

  late List<
          AnalyzeUserAttendance$QueryRoot$Users$ServicesHistory$Services$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraints>
      nodes;

  @override
  List<Object?> get props => [aggregate, nodes];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzeUserAttendance$QueryRoot$Users$ServicesHistory$Services$HistoryAttendanceDaysConstraintsAggregateToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzeUserAttendance$QueryRoot$Users$ServicesHistory$Services
    extends JsonSerializable with EquatableMixin {
  AnalyzeUserAttendance$QueryRoot$Users$ServicesHistory$Services();

  factory AnalyzeUserAttendance$QueryRoot$Users$ServicesHistory$Services.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzeUserAttendance$QueryRoot$Users$ServicesHistory$ServicesFromJson(
          json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue id;

  late String name;

  int? color;

  late AnalyzeUserAttendance$QueryRoot$Users$ServicesHistory$Services$HistoryAttendanceHistoryAggregate
      attendanceHistoryAggregate;

  late AnalyzeUserAttendance$QueryRoot$Users$ServicesHistory$Services$HistoryAttendanceDaysConstraintsAggregate
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
      _$AnalyzeUserAttendance$QueryRoot$Users$ServicesHistory$ServicesToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzeUserAttendance$QueryRoot$Users$ServicesHistory
    extends JsonSerializable with EquatableMixin {
  AnalyzeUserAttendance$QueryRoot$Users$ServicesHistory();

  factory AnalyzeUserAttendance$QueryRoot$Users$ServicesHistory.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzeUserAttendance$QueryRoot$Users$ServicesHistoryFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue permissionId;

  AnalyzeUserAttendance$QueryRoot$Users$ServicesHistory$Services? service;

  @override
  List<Object?> get props => [permissionId, service];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzeUserAttendance$QueryRoot$Users$ServicesHistoryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzeUserAttendance$QueryRoot$Users$ClassesHistory$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields
    extends JsonSerializable with EquatableMixin {
  AnalyzeUserAttendance$QueryRoot$Users$ClassesHistory$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields();

  factory AnalyzeUserAttendance$QueryRoot$Users$ClassesHistory$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzeUserAttendance$QueryRoot$Users$ClassesHistory$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFieldsFromJson(
          json);

  DateTime? dayId;

  @override
  List<Object?> get props => [dayId];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzeUserAttendance$QueryRoot$Users$ClassesHistory$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFieldsToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzeUserAttendance$QueryRoot$Users$ClassesHistory$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields
    extends JsonSerializable with EquatableMixin {
  AnalyzeUserAttendance$QueryRoot$Users$ClassesHistory$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields();

  factory AnalyzeUserAttendance$QueryRoot$Users$ClassesHistory$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzeUserAttendance$QueryRoot$Users$ClassesHistory$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFieldsFromJson(
          json);

  late int count;

  AnalyzeUserAttendance$QueryRoot$Users$ClassesHistory$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields?
      max;

  @override
  List<Object?> get props => [count, max];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzeUserAttendance$QueryRoot$Users$ClassesHistory$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFieldsToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzeUserAttendance$QueryRoot$Users$ClassesHistory$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistory
    extends JsonSerializable with EquatableMixin {
  AnalyzeUserAttendance$QueryRoot$Users$ClassesHistory$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistory();

  factory AnalyzeUserAttendance$QueryRoot$Users$ClassesHistory$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistory.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzeUserAttendance$QueryRoot$Users$ClassesHistory$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryFromJson(
          json);

  late DateTime dayId;

  @override
  List<Object?> get props => [dayId];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzeUserAttendance$QueryRoot$Users$ClassesHistory$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzeUserAttendance$QueryRoot$Users$ClassesHistory$Classes$HistoryAttendanceHistoryAggregate
    extends JsonSerializable with EquatableMixin {
  AnalyzeUserAttendance$QueryRoot$Users$ClassesHistory$Classes$HistoryAttendanceHistoryAggregate();

  factory AnalyzeUserAttendance$QueryRoot$Users$ClassesHistory$Classes$HistoryAttendanceHistoryAggregate.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzeUserAttendance$QueryRoot$Users$ClassesHistory$Classes$HistoryAttendanceHistoryAggregateFromJson(
          json);

  AnalyzeUserAttendance$QueryRoot$Users$ClassesHistory$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields?
      aggregate;

  late List<
          AnalyzeUserAttendance$QueryRoot$Users$ClassesHistory$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistory>
      nodes;

  @override
  List<Object?> get props => [aggregate, nodes];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzeUserAttendance$QueryRoot$Users$ClassesHistory$Classes$HistoryAttendanceHistoryAggregateToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzeUserAttendance$QueryRoot$Users$ClassesHistory$Classes$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsAggregateFields
    extends JsonSerializable with EquatableMixin {
  AnalyzeUserAttendance$QueryRoot$Users$ClassesHistory$Classes$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsAggregateFields();

  factory AnalyzeUserAttendance$QueryRoot$Users$ClassesHistory$Classes$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsAggregateFields.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzeUserAttendance$QueryRoot$Users$ClassesHistory$Classes$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsAggregateFieldsFromJson(
          json);

  late int count;

  @override
  List<Object?> get props => [count];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzeUserAttendance$QueryRoot$Users$ClassesHistory$Classes$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsAggregateFieldsToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzeUserAttendance$QueryRoot$Users$ClassesHistory$Classes$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraints
    extends JsonSerializable with EquatableMixin {
  AnalyzeUserAttendance$QueryRoot$Users$ClassesHistory$Classes$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraints();

  factory AnalyzeUserAttendance$QueryRoot$Users$ClassesHistory$Classes$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraints.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzeUserAttendance$QueryRoot$Users$ClassesHistory$Classes$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsFromJson(
          json);

  late DateTime dayId;

  @override
  List<Object?> get props => [dayId];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzeUserAttendance$QueryRoot$Users$ClassesHistory$Classes$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzeUserAttendance$QueryRoot$Users$ClassesHistory$Classes$HistoryAttendanceDaysConstraintsAggregate
    extends JsonSerializable with EquatableMixin {
  AnalyzeUserAttendance$QueryRoot$Users$ClassesHistory$Classes$HistoryAttendanceDaysConstraintsAggregate();

  factory AnalyzeUserAttendance$QueryRoot$Users$ClassesHistory$Classes$HistoryAttendanceDaysConstraintsAggregate.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzeUserAttendance$QueryRoot$Users$ClassesHistory$Classes$HistoryAttendanceDaysConstraintsAggregateFromJson(
          json);

  AnalyzeUserAttendance$QueryRoot$Users$ClassesHistory$Classes$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsAggregateFields?
      aggregate;

  late List<
          AnalyzeUserAttendance$QueryRoot$Users$ClassesHistory$Classes$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraints>
      nodes;

  @override
  List<Object?> get props => [aggregate, nodes];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzeUserAttendance$QueryRoot$Users$ClassesHistory$Classes$HistoryAttendanceDaysConstraintsAggregateToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzeUserAttendance$QueryRoot$Users$ClassesHistory$Classes
    extends JsonSerializable with EquatableMixin {
  AnalyzeUserAttendance$QueryRoot$Users$ClassesHistory$Classes();

  factory AnalyzeUserAttendance$QueryRoot$Users$ClassesHistory$Classes.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzeUserAttendance$QueryRoot$Users$ClassesHistory$ClassesFromJson(
          json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue id;

  late String name;

  int? color;

  late AnalyzeUserAttendance$QueryRoot$Users$ClassesHistory$Classes$HistoryAttendanceHistoryAggregate
      attendanceHistoryAggregate;

  late AnalyzeUserAttendance$QueryRoot$Users$ClassesHistory$Classes$HistoryAttendanceDaysConstraintsAggregate
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
      _$AnalyzeUserAttendance$QueryRoot$Users$ClassesHistory$ClassesToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzeUserAttendance$QueryRoot$Users$ClassesHistory
    extends JsonSerializable with EquatableMixin {
  AnalyzeUserAttendance$QueryRoot$Users$ClassesHistory();

  factory AnalyzeUserAttendance$QueryRoot$Users$ClassesHistory.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzeUserAttendance$QueryRoot$Users$ClassesHistoryFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue permissionId;

  late List<AnalyzeUserAttendance$QueryRoot$Users$ClassesHistory$Classes>
      classes;

  @override
  List<Object?> get props => [permissionId, classes];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzeUserAttendance$QueryRoot$Users$ClassesHistoryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzeUserAttendance$QueryRoot$Users$GroupsHistory$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields
    extends JsonSerializable with EquatableMixin {
  AnalyzeUserAttendance$QueryRoot$Users$GroupsHistory$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields();

  factory AnalyzeUserAttendance$QueryRoot$Users$GroupsHistory$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzeUserAttendance$QueryRoot$Users$GroupsHistory$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFieldsFromJson(
          json);

  DateTime? dayId;

  @override
  List<Object?> get props => [dayId];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzeUserAttendance$QueryRoot$Users$GroupsHistory$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFieldsToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzeUserAttendance$QueryRoot$Users$GroupsHistory$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields
    extends JsonSerializable with EquatableMixin {
  AnalyzeUserAttendance$QueryRoot$Users$GroupsHistory$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields();

  factory AnalyzeUserAttendance$QueryRoot$Users$GroupsHistory$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzeUserAttendance$QueryRoot$Users$GroupsHistory$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFieldsFromJson(
          json);

  late int count;

  AnalyzeUserAttendance$QueryRoot$Users$GroupsHistory$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields?
      max;

  @override
  List<Object?> get props => [count, max];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzeUserAttendance$QueryRoot$Users$GroupsHistory$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFieldsToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzeUserAttendance$QueryRoot$Users$GroupsHistory$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistory
    extends JsonSerializable with EquatableMixin {
  AnalyzeUserAttendance$QueryRoot$Users$GroupsHistory$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistory();

  factory AnalyzeUserAttendance$QueryRoot$Users$GroupsHistory$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistory.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzeUserAttendance$QueryRoot$Users$GroupsHistory$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryFromJson(
          json);

  late DateTime dayId;

  @override
  List<Object?> get props => [dayId];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzeUserAttendance$QueryRoot$Users$GroupsHistory$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzeUserAttendance$QueryRoot$Users$GroupsHistory$Groups$HistoryAttendanceHistoryAggregate
    extends JsonSerializable with EquatableMixin {
  AnalyzeUserAttendance$QueryRoot$Users$GroupsHistory$Groups$HistoryAttendanceHistoryAggregate();

  factory AnalyzeUserAttendance$QueryRoot$Users$GroupsHistory$Groups$HistoryAttendanceHistoryAggregate.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzeUserAttendance$QueryRoot$Users$GroupsHistory$Groups$HistoryAttendanceHistoryAggregateFromJson(
          json);

  AnalyzeUserAttendance$QueryRoot$Users$GroupsHistory$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields?
      aggregate;

  late List<
          AnalyzeUserAttendance$QueryRoot$Users$GroupsHistory$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistory>
      nodes;

  @override
  List<Object?> get props => [aggregate, nodes];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzeUserAttendance$QueryRoot$Users$GroupsHistory$Groups$HistoryAttendanceHistoryAggregateToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzeUserAttendance$QueryRoot$Users$GroupsHistory$Groups$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsAggregateFields
    extends JsonSerializable with EquatableMixin {
  AnalyzeUserAttendance$QueryRoot$Users$GroupsHistory$Groups$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsAggregateFields();

  factory AnalyzeUserAttendance$QueryRoot$Users$GroupsHistory$Groups$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsAggregateFields.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzeUserAttendance$QueryRoot$Users$GroupsHistory$Groups$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsAggregateFieldsFromJson(
          json);

  late int count;

  @override
  List<Object?> get props => [count];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzeUserAttendance$QueryRoot$Users$GroupsHistory$Groups$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsAggregateFieldsToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzeUserAttendance$QueryRoot$Users$GroupsHistory$Groups$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraints
    extends JsonSerializable with EquatableMixin {
  AnalyzeUserAttendance$QueryRoot$Users$GroupsHistory$Groups$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraints();

  factory AnalyzeUserAttendance$QueryRoot$Users$GroupsHistory$Groups$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraints.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzeUserAttendance$QueryRoot$Users$GroupsHistory$Groups$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsFromJson(
          json);

  late DateTime dayId;

  @override
  List<Object?> get props => [dayId];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzeUserAttendance$QueryRoot$Users$GroupsHistory$Groups$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzeUserAttendance$QueryRoot$Users$GroupsHistory$Groups$HistoryAttendanceDaysConstraintsAggregate
    extends JsonSerializable with EquatableMixin {
  AnalyzeUserAttendance$QueryRoot$Users$GroupsHistory$Groups$HistoryAttendanceDaysConstraintsAggregate();

  factory AnalyzeUserAttendance$QueryRoot$Users$GroupsHistory$Groups$HistoryAttendanceDaysConstraintsAggregate.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzeUserAttendance$QueryRoot$Users$GroupsHistory$Groups$HistoryAttendanceDaysConstraintsAggregateFromJson(
          json);

  AnalyzeUserAttendance$QueryRoot$Users$GroupsHistory$Groups$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsAggregateFields?
      aggregate;

  late List<
          AnalyzeUserAttendance$QueryRoot$Users$GroupsHistory$Groups$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraints>
      nodes;

  @override
  List<Object?> get props => [aggregate, nodes];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzeUserAttendance$QueryRoot$Users$GroupsHistory$Groups$HistoryAttendanceDaysConstraintsAggregateToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzeUserAttendance$QueryRoot$Users$GroupsHistory$Groups
    extends JsonSerializable with EquatableMixin {
  AnalyzeUserAttendance$QueryRoot$Users$GroupsHistory$Groups();

  factory AnalyzeUserAttendance$QueryRoot$Users$GroupsHistory$Groups.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzeUserAttendance$QueryRoot$Users$GroupsHistory$GroupsFromJson(
          json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue id;

  late String name;

  int? color;

  late AnalyzeUserAttendance$QueryRoot$Users$GroupsHistory$Groups$HistoryAttendanceHistoryAggregate
      attendanceHistoryAggregate;

  late AnalyzeUserAttendance$QueryRoot$Users$GroupsHistory$Groups$HistoryAttendanceDaysConstraintsAggregate
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
      _$AnalyzeUserAttendance$QueryRoot$Users$GroupsHistory$GroupsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzeUserAttendance$QueryRoot$Users$GroupsHistory
    extends JsonSerializable with EquatableMixin {
  AnalyzeUserAttendance$QueryRoot$Users$GroupsHistory();

  factory AnalyzeUserAttendance$QueryRoot$Users$GroupsHistory.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzeUserAttendance$QueryRoot$Users$GroupsHistoryFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue permissionId;

  AnalyzeUserAttendance$QueryRoot$Users$GroupsHistory$Groups? group;

  @override
  List<Object?> get props => [permissionId, group];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzeUserAttendance$QueryRoot$Users$GroupsHistoryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzeUserAttendance$QueryRoot$Users extends JsonSerializable
    with EquatableMixin {
  AnalyzeUserAttendance$QueryRoot$Users();

  factory AnalyzeUserAttendance$QueryRoot$Users.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyzeUserAttendance$QueryRoot$UsersFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue uid;

  late String name;

  late List<AnalyzeUserAttendance$QueryRoot$Users$ServicesHistory>
      servicesHistory;

  late List<AnalyzeUserAttendance$QueryRoot$Users$ClassesHistory>
      classesHistory;

  late List<AnalyzeUserAttendance$QueryRoot$Users$GroupsHistory> groupsHistory;

  @override
  List<Object?> get props =>
      [uid, name, servicesHistory, classesHistory, groupsHistory];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzeUserAttendance$QueryRoot$UsersToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AnalyzeUserAttendance$QueryRoot extends JsonSerializable
    with EquatableMixin {
  AnalyzeUserAttendance$QueryRoot();

  factory AnalyzeUserAttendance$QueryRoot.fromJson(Map<String, dynamic> json) =>
      _$AnalyzeUserAttendance$QueryRootFromJson(json);

  AnalyzeUserAttendance$QueryRoot$Users? usersByPk;

  @override
  List<Object?> get props => [usersByPk];
  @override
  Map<String, dynamic> toJson() =>
      _$AnalyzeUserAttendance$QueryRootToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetUserInfoStream$SubscriptionRoot$Users$UsersData
    extends JsonSerializable with EquatableMixin {
  GetUserInfoStream$SubscriptionRoot$Users$UsersData();

  factory GetUserInfoStream$SubscriptionRoot$Users$UsersData.fromJson(
          Map<String, dynamic> json) =>
      _$GetUserInfoStream$SubscriptionRoot$Users$UsersDataFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue uid;

  late String firebaseAuthUid;

  late String email;

  late List<String> permissions;

  @override
  List<Object?> get props => [uid, firebaseAuthUid, email, permissions];
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

  bool? isStudent;

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

  GetUserInfoStream$SubscriptionRoot$Users? usersByPk;

  @override
  List<Object?> get props => [usersByPk];
  @override
  Map<String, dynamic> toJson() =>
      _$GetUserInfoStream$SubscriptionRootToJson(this);
}

@JsonSerializable(explicitToJson: true)
class WatchUser$SubscriptionRoot$Users$Persons extends JsonSerializable
    with EquatableMixin {
  WatchUser$SubscriptionRoot$Users$Persons();

  factory WatchUser$SubscriptionRoot$Users$Persons.fromJson(
          Map<String, dynamic> json) =>
      _$WatchUser$SubscriptionRoot$Users$PersonsFromJson(json);

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
      _$WatchUser$SubscriptionRoot$Users$PersonsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class WatchUser$SubscriptionRoot$Users$UsersPermissions$Areas
    extends JsonSerializable with EquatableMixin {
  WatchUser$SubscriptionRoot$Users$UsersPermissions$Areas();

  factory WatchUser$SubscriptionRoot$Users$UsersPermissions$Areas.fromJson(
          Map<String, dynamic> json) =>
      _$WatchUser$SubscriptionRoot$Users$UsersPermissions$AreasFromJson(json);

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
      _$WatchUser$SubscriptionRoot$Users$UsersPermissions$AreasToJson(this);
}

@JsonSerializable(explicitToJson: true)
class WatchUser$SubscriptionRoot$Users$UsersPermissions$Services
    extends JsonSerializable with EquatableMixin {
  WatchUser$SubscriptionRoot$Users$UsersPermissions$Services();

  factory WatchUser$SubscriptionRoot$Users$UsersPermissions$Services.fromJson(
          Map<String, dynamic> json) =>
      _$WatchUser$SubscriptionRoot$Users$UsersPermissions$ServicesFromJson(
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
      _$WatchUser$SubscriptionRoot$Users$UsersPermissions$ServicesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class WatchUser$SubscriptionRoot$Users$UsersPermissions$StudyYears
    extends JsonSerializable with EquatableMixin {
  WatchUser$SubscriptionRoot$Users$UsersPermissions$StudyYears();

  factory WatchUser$SubscriptionRoot$Users$UsersPermissions$StudyYears.fromJson(
          Map<String, dynamic> json) =>
      _$WatchUser$SubscriptionRoot$Users$UsersPermissions$StudyYearsFromJson(
          json);

  late String name;

  late int order;

  @override
  List<Object?> get props => [name, order];
  @override
  Map<String, dynamic> toJson() =>
      _$WatchUser$SubscriptionRoot$Users$UsersPermissions$StudyYearsToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class WatchUser$SubscriptionRoot$Users$UsersPermissions$Classes
    extends JsonSerializable with EquatableMixin {
  WatchUser$SubscriptionRoot$Users$UsersPermissions$Classes();

  factory WatchUser$SubscriptionRoot$Users$UsersPermissions$Classes.fromJson(
          Map<String, dynamic> json) =>
      _$WatchUser$SubscriptionRoot$Users$UsersPermissions$ClassesFromJson(json);

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
      _$WatchUser$SubscriptionRoot$Users$UsersPermissions$ClassesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class WatchUser$SubscriptionRoot$Users$UsersPermissions$Groups
    extends JsonSerializable with EquatableMixin {
  WatchUser$SubscriptionRoot$Users$UsersPermissions$Groups();

  factory WatchUser$SubscriptionRoot$Users$UsersPermissions$Groups.fromJson(
          Map<String, dynamic> json) =>
      _$WatchUser$SubscriptionRoot$Users$UsersPermissions$GroupsFromJson(json);

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
      _$WatchUser$SubscriptionRoot$Users$UsersPermissions$GroupsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class WatchUser$SubscriptionRoot$Users$UsersPermissions extends JsonSerializable
    with EquatableMixin {
  WatchUser$SubscriptionRoot$Users$UsersPermissions();

  factory WatchUser$SubscriptionRoot$Users$UsersPermissions.fromJson(
          Map<String, dynamic> json) =>
      _$WatchUser$SubscriptionRoot$Users$UsersPermissionsFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue permissionId;

  WatchUser$SubscriptionRoot$Users$UsersPermissions$Areas? area;

  bool? areaAllowEdit;

  bool? areaAdminOnUsers;

  WatchUser$SubscriptionRoot$Users$UsersPermissions$Services? service;

  WatchUser$SubscriptionRoot$Users$UsersPermissions$StudyYears?
      serviceStudyYearData;

  bool? serviceGender;

  bool? serviceAllowEdit;

  bool? serviceAdminOnUsers;

  late List<WatchUser$SubscriptionRoot$Users$UsersPermissions$Classes> classes;

  WatchUser$SubscriptionRoot$Users$UsersPermissions$Groups? group;

  bool? groupAllowEdit;

  bool? groupAdminOnUsers;

  @override
  List<Object?> get props => [
        permissionId,
        area,
        areaAllowEdit,
        areaAdminOnUsers,
        service,
        serviceStudyYearData,
        serviceGender,
        serviceAllowEdit,
        serviceAdminOnUsers,
        classes,
        group,
        groupAllowEdit,
        groupAdminOnUsers
      ];
  @override
  Map<String, dynamic> toJson() =>
      _$WatchUser$SubscriptionRoot$Users$UsersPermissionsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class WatchUser$SubscriptionRoot$Users$UsersData extends JsonSerializable
    with EquatableMixin {
  WatchUser$SubscriptionRoot$Users$UsersData();

  factory WatchUser$SubscriptionRoot$Users$UsersData.fromJson(
          Map<String, dynamic> json) =>
      _$WatchUser$SubscriptionRoot$Users$UsersDataFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue uid;

  late String email;

  @JsonKey(
      fromJson: fromGraphQLJsonbNullableToDartJsonNullable,
      toJson: fromDartJsonNullableToGraphQLJsonbNullable)
  Json? lastEdit;

  late List<String> permissions;

  @override
  List<Object?> get props => [uid, email, lastEdit, permissions];
  @override
  Map<String, dynamic> toJson() =>
      _$WatchUser$SubscriptionRoot$Users$UsersDataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class WatchUser$SubscriptionRoot$Users extends JsonSerializable
    with EquatableMixin {
  WatchUser$SubscriptionRoot$Users();

  factory WatchUser$SubscriptionRoot$Users.fromJson(
          Map<String, dynamic> json) =>
      _$WatchUser$SubscriptionRoot$UsersFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue uid;

  late String name;

  DateTime? photoUpdatedAt;

  WatchUser$SubscriptionRoot$Users$Persons? person;

  late List<WatchUser$SubscriptionRoot$Users$UsersPermissions> adminOn;

  WatchUser$SubscriptionRoot$Users$UsersData? userData;

  @override
  List<Object?> get props =>
      [uid, name, photoUpdatedAt, person, adminOn, userData];
  @override
  Map<String, dynamic> toJson() =>
      _$WatchUser$SubscriptionRoot$UsersToJson(this);
}

@JsonSerializable(explicitToJson: true)
class WatchUser$SubscriptionRoot extends JsonSerializable with EquatableMixin {
  WatchUser$SubscriptionRoot();

  factory WatchUser$SubscriptionRoot.fromJson(Map<String, dynamic> json) =>
      _$WatchUser$SubscriptionRootFromJson(json);

  WatchUser$SubscriptionRoot$Users? usersByPk;

  @override
  List<Object?> get props => [usersByPk];
  @override
  Map<String, dynamic> toJson() => _$WatchUser$SubscriptionRootToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UserEditHistory$SubscriptionRoot$HistoryEditHistory$Users
    extends JsonSerializable with EquatableMixin {
  UserEditHistory$SubscriptionRoot$HistoryEditHistory$Users();

  factory UserEditHistory$SubscriptionRoot$HistoryEditHistory$Users.fromJson(
          Map<String, dynamic> json) =>
      _$UserEditHistory$SubscriptionRoot$HistoryEditHistory$UsersFromJson(json);

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
      _$UserEditHistory$SubscriptionRoot$HistoryEditHistory$UsersToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UserEditHistory$SubscriptionRoot$HistoryEditHistory
    extends JsonSerializable with EquatableMixin {
  UserEditHistory$SubscriptionRoot$HistoryEditHistory();

  factory UserEditHistory$SubscriptionRoot$HistoryEditHistory.fromJson(
          Map<String, dynamic> json) =>
      _$UserEditHistory$SubscriptionRoot$HistoryEditHistoryFromJson(json);

  late DateTime time;

  UserEditHistory$SubscriptionRoot$HistoryEditHistory$Users? user;

  @override
  List<Object?> get props => [time, user];
  @override
  Map<String, dynamic> toJson() =>
      _$UserEditHistory$SubscriptionRoot$HistoryEditHistoryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UserEditHistory$SubscriptionRoot extends JsonSerializable
    with EquatableMixin {
  UserEditHistory$SubscriptionRoot();

  factory UserEditHistory$SubscriptionRoot.fromJson(
          Map<String, dynamic> json) =>
      _$UserEditHistory$SubscriptionRootFromJson(json);

  late List<UserEditHistory$SubscriptionRoot$HistoryEditHistory>
      historyEditHistory;

  @override
  List<Object?> get props => [historyEditHistory];
  @override
  Map<String, dynamic> toJson() =>
      _$UserEditHistory$SubscriptionRootToJson(this);
}

enum AreasConstraint {
  @JsonValue('areas_firestore_id_key')
  areasFirestoreIdKey,
  @JsonValue('areas_pkey')
  areasPkey,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}

enum AreasUpdateColumn {
  @JsonValue('bounds')
  bounds,
  @JsonValue('color')
  color,
  @JsonValue('firestoreId')
  firestoreId,
  @JsonValue('id')
  id,
  @JsonValue('name')
  name,
  @JsonValue('photoUpdatedAt')
  photoUpdatedAt,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}

enum ClassesConstraint {
  @JsonValue('classes_pkey')
  classesPkey,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}

enum ClassesUpdateColumn {
  @JsonValue('color')
  color,
  @JsonValue('id')
  id,
  @JsonValue('name')
  name,
  @JsonValue('photoUpdatedAt')
  photoUpdatedAt,
  @JsonValue('serviceGender')
  serviceGender,
  @JsonValue('serviceId')
  serviceId,
  @JsonValue('serviceStudyYear')
  serviceStudyYear,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}

enum UsersDataConstraint {
  @JsonValue('users_data_email_key')
  usersDataEmailKey,
  @JsonValue('users_data_firebase_auth_id_key')
  usersDataFirebaseAuthIdKey,
  @JsonValue('users_data_firestore_id_key')
  usersDataFirestoreIdKey,
  @JsonValue('users_data_pkey')
  usersDataPkey,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}

enum UsersDataUpdateColumn {
  @JsonValue('email')
  email,
  @JsonValue('firebaseAuthUid')
  firebaseAuthUid,
  @JsonValue('firestoreId')
  firestoreId,
  @JsonValue('permissions')
  permissions,
  @JsonValue('uid')
  uid,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}

enum UsersConstraint {
  @JsonValue('users_pkey')
  usersPkey,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}

enum UsersUpdateColumn {
  @JsonValue('name')
  name,
  @JsonValue('photoUpdatedAt')
  photoUpdatedAt,
  @JsonValue('uid')
  uid,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}

enum HistoryCallHistoryConstraint {
  @JsonValue('call_history_pkey')
  callHistoryPkey,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}

enum HistoryCallHistoryUpdateColumn {
  @JsonValue('personId')
  personId,
  @JsonValue('recordedBy')
  recordedBy,
  @JsonValue('time')
  time,
  @JsonValue('userRole')
  userRole,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}

enum PersonsConstraint {
  @JsonValue('persons_firestore_id_key')
  personsFirestoreIdKey,
  @JsonValue('persons_mainPhone_birthdate_key')
  personsMainPhoneBirthdateKey,
  @JsonValue('persons_pkey')
  personsPkey,
  @JsonValue('persons_uid_key')
  personsUidKey,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}

enum PersonsUpdateColumn {
  @JsonValue('address')
  address,
  @JsonValue('birthdate')
  birthdate,
  @JsonValue('churchId')
  churchId,
  @JsonValue('collegeId')
  collegeId,
  @JsonValue('color')
  color,
  @JsonValue('familyId')
  familyId,
  @JsonValue('fatherId')
  fatherId,
  @JsonValue('firestoreId')
  firestoreId,
  @JsonValue('gender')
  gender,
  @JsonValue('geolocation')
  geolocation,
  @JsonValue('id')
  id,
  @JsonValue('isServant')
  isServant,
  @JsonValue('isShammas')
  isShammas,
  @JsonValue('isStudent')
  isStudent,
  @JsonValue('jobDescription')
  jobDescription,
  @JsonValue('jobId')
  jobId,
  @JsonValue('mainPhone')
  mainPhone,
  @JsonValue('name')
  name,
  @JsonValue('notes')
  notes,
  @JsonValue('otherPhones')
  otherPhones,
  @JsonValue('personTypeId')
  personTypeId,
  @JsonValue('photoUpdatedAt')
  photoUpdatedAt,
  @JsonValue('qualificationId')
  qualificationId,
  @JsonValue('schoolId')
  schoolId,
  @JsonValue('shammasLevelId')
  shammasLevelId,
  @JsonValue('stateId')
  stateId,
  @JsonValue('storeId')
  storeId,
  @JsonValue('studyYearId')
  studyYearId,
  @JsonValue('uid')
  uid,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}

enum FathersConstraint {
  @JsonValue('fathers_name_key')
  fathersNameKey,
  @JsonValue('fathers_pkey')
  fathersPkey,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}

enum FathersUpdateColumn {
  @JsonValue('churchId')
  churchId,
  @JsonValue('id')
  id,
  @JsonValue('name')
  name,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}

enum ChurchesConstraint {
  @JsonValue('churches_name_key')
  churchesNameKey,
  @JsonValue('churches_pkey')
  churchesPkey,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}

enum ChurchesUpdateColumn {
  @JsonValue('id')
  id,
  @JsonValue('name')
  name,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}

enum CollegesConstraint {
  @JsonValue('colleges_name_key')
  collegesNameKey,
  @JsonValue('colleges_pkey')
  collegesPkey,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}

enum CollegesUpdateColumn {
  @JsonValue('id')
  id,
  @JsonValue('name')
  name,
  @JsonValue('universityId')
  universityId,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}

enum UniversitiesConstraint {
  @JsonValue('universities_name_key')
  universitiesNameKey,
  @JsonValue('universities_pkey')
  universitiesPkey,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}

enum UniversitiesUpdateColumn {
  @JsonValue('id')
  id,
  @JsonValue('name')
  name,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}

enum HistoryConfessionHistoryConstraint {
  @JsonValue('confession_history_dayID_personID_key')
  confessionHistoryDayIDPersonIDKey,
  @JsonValue('confession_history_pkey')
  confessionHistoryPkey,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}

enum HistoryConfessionHistoryUpdateColumn {
  @JsonValue('dayId')
  dayId,
  @JsonValue('id')
  id,
  @JsonValue('personId')
  personId,
  @JsonValue('recordedBy')
  recordedBy,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}

enum HistoryEditHistoryConstraint {
  @JsonValue('edit_history_pkey')
  editHistoryPkey,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}

enum HistoryEditHistoryUpdateColumn {
  @JsonValue('auditId')
  auditId,
  @JsonValue('recordId')
  recordId,
  @JsonValue('recordedBy')
  recordedBy,
  @JsonValue('table')
  table,
  @JsonValue('time')
  time,
  @JsonValue('userRole')
  userRole,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}

enum FamiliesFamiliesConstraint {
  @JsonValue('families_families_outerFamilyID_innerFamilyID_key')
  familiesFamiliesOuterFamilyIDInnerFamilyIDKey,
  @JsonValue('families_families_pkey')
  familiesFamiliesPkey,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}

enum FamiliesFamiliesUpdateColumn {
  @JsonValue('innerFamilyId')
  innerFamilyId,
  @JsonValue('outerFamilyId')
  outerFamilyId,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}

enum StoresConstraint {
  @JsonValue('stores_pkey')
  storesPkey,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}

enum StoresUpdateColumn {
  @JsonValue('adminFamily')
  adminFamily,
  @JsonValue('color')
  color,
  @JsonValue('geolocation')
  geolocation,
  @JsonValue('id')
  id,
  @JsonValue('name')
  name,
  @JsonValue('photoUpdatedAt')
  photoUpdatedAt,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}

enum FamiliesConstraint {
  @JsonValue('families_pkey')
  familiesPkey,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}

enum FamiliesUpdateColumn {
  @JsonValue('address')
  address,
  @JsonValue('color')
  color,
  @JsonValue('geolocation')
  geolocation,
  @JsonValue('id')
  id,
  @JsonValue('name')
  name,
  @JsonValue('notes')
  notes,
  @JsonValue('photoUpdatedAt')
  photoUpdatedAt,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}

enum PersonsGroupsConstraint {
  @JsonValue('persons_groups_personID_groupID_key')
  personsGroupsPersonIDGroupIDKey,
  @JsonValue('persons_groups_pkey')
  personsGroupsPkey,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}

enum PersonsGroupsUpdateColumn {
  @JsonValue('groupId')
  groupId,
  @JsonValue('personId')
  personId,
  @JsonValue('relId')
  relId,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}

enum JobsConstraint {
  @JsonValue('jobs_name_key')
  jobsNameKey,
  @JsonValue('jobs_pkey')
  jobsPkey,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}

enum JobsUpdateColumn {
  @JsonValue('id')
  id,
  @JsonValue('name')
  name,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}

enum HistoryKodasHistoryConstraint {
  @JsonValue('kodas_history_dayID_personID_key')
  kodasHistoryDayIDPersonIDKey,
  @JsonValue('kodas_history_pkey')
  kodasHistoryPkey,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}

enum HistoryKodasHistoryUpdateColumn {
  @JsonValue('dayId')
  dayId,
  @JsonValue('id')
  id,
  @JsonValue('personId')
  personId,
  @JsonValue('recordedBy')
  recordedBy,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}

enum PersonTypesConstraint {
  @JsonValue('personTypes_name_key')
  personTypesNameKey,
  @JsonValue('personTypes_order_key')
  personTypesOrderKey,
  @JsonValue('personTypes_pkey')
  personTypesPkey,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}

enum PersonTypesUpdateColumn {
  @JsonValue('id')
  id,
  @JsonValue('name')
  name,
  @JsonValue('order')
  order,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}

enum QualificationsConstraint {
  @JsonValue('qualifications_name_key')
  qualificationsNameKey,
  @JsonValue('qualifications_pkey')
  qualificationsPkey,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}

enum QualificationsUpdateColumn {
  @JsonValue('id')
  id,
  @JsonValue('name')
  name,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}

enum SchoolsConstraint {
  @JsonValue('schools_name_key')
  schoolsNameKey,
  @JsonValue('schools_pkey')
  schoolsPkey,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}

enum SchoolsUpdateColumn {
  @JsonValue('id')
  id,
  @JsonValue('name')
  name,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}

enum StudyYearsConstraint {
  @JsonValue('studyYears_name_key')
  studyYearsNameKey,
  @JsonValue('studyYears_order_key')
  studyYearsOrderKey,
  @JsonValue('studyYears_pkey')
  studyYearsPkey,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}

enum StudyYearsUpdateColumn {
  @JsonValue('name')
  name,
  @JsonValue('order')
  order,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}

enum GroupsConstraint {
  @JsonValue('groups_pkey')
  groupsPkey,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}

enum GroupsUpdateColumn {
  @JsonValue('color')
  color,
  @JsonValue('id')
  id,
  @JsonValue('name')
  name,
  @JsonValue('photoUpdatedAt')
  photoUpdatedAt,
  @JsonValue('serviceId')
  serviceId,
  @JsonValue('validity')
  validity,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}

enum ServicesConstraint {
  @JsonValue('services_firestore_id_key')
  servicesFirestoreIdKey,
  @JsonValue('services_name_key')
  servicesNameKey,
  @JsonValue('services_pkey')
  servicesPkey,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}

enum ServicesUpdateColumn {
  @JsonValue('color')
  color,
  @JsonValue('firestoreId')
  firestoreId,
  @JsonValue('id')
  id,
  @JsonValue('name')
  name,
  @JsonValue('nextService')
  nextService,
  @JsonValue('photoUpdatedAt')
  photoUpdatedAt,
  @JsonValue('studyYearFrom')
  studyYearFrom,
  @JsonValue('studyYearTo')
  studyYearTo,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}

enum PersonsServicesConstraint {
  @JsonValue('persons_services_personID_serviceID_key')
  personsServicesPersonIDServiceIDKey,
  @JsonValue('persons_services_pkey')
  personsServicesPkey,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}

enum PersonsServicesUpdateColumn {
  @JsonValue('personId')
  personId,
  @JsonValue('relId')
  relId,
  @JsonValue('serviceId')
  serviceId,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}

enum ShammasLevelsConstraint {
  @JsonValue('shammas_level_name_key')
  shammasLevelNameKey,
  @JsonValue('shammas_level_order_key')
  shammasLevelOrderKey,
  @JsonValue('shammas_level_pkey')
  shammasLevelPkey,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}

enum ShammasLevelsUpdateColumn {
  @JsonValue('id')
  id,
  @JsonValue('name')
  name,
  @JsonValue('order')
  order,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}

enum PersonStatesConstraint {
  @JsonValue('states_color_key')
  statesColorKey,
  @JsonValue('states_name_key')
  statesNameKey,
  @JsonValue('states_pkey')
  statesPkey,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}

enum PersonStatesUpdateColumn {
  @JsonValue('color')
  color,
  @JsonValue('id')
  id,
  @JsonValue('name')
  name,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}

enum TagsConstraint {
  @JsonValue('tags_name_key')
  tagsNameKey,
  @JsonValue('tags_pkey')
  tagsPkey,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}

enum TagsUpdateColumn {
  @JsonValue('color')
  color,
  @JsonValue('id')
  id,
  @JsonValue('name')
  name,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}

enum PersonsTagsConstraint {
  @JsonValue('persons_tags_pkey')
  personsTagsPkey,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}

enum PersonsTagsUpdateColumn {
  @JsonValue('personId')
  personId,
  @JsonValue('relId')
  relId,
  @JsonValue('tagId')
  tagId,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}

enum HistoryVisitHistoryConstraint {
  @JsonValue('visit_history_pkey')
  visitHistoryPkey,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}

enum HistoryVisitHistoryUpdateColumn {
  @JsonValue('personId')
  personId,
  @JsonValue('recordedBy')
  recordedBy,
  @JsonValue('time')
  time,
  @JsonValue('userRole')
  userRole,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}

enum HistoryAttendanceHistoryConstraint {
  @JsonValue('attendance_history_dayID_serviceID_groupID_personID_key')
  attendanceHistoryDayIDServiceIDGroupIDPersonIDKey,
  @JsonValue('attendance_history_pkey')
  attendanceHistoryPkey,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}

enum HistoryAttendanceHistoryUpdateColumn {
  @JsonValue('asAdmin')
  asAdmin,
  @JsonValue('dayId')
  dayId,
  @JsonValue('groupId')
  groupId,
  @JsonValue('id')
  id,
  @JsonValue('personId')
  personId,
  @JsonValue('recordedBy')
  recordedBy,
  @JsonValue('serviceGender')
  serviceGender,
  @JsonValue('serviceId')
  serviceId,
  @JsonValue('serviceStudyYear')
  serviceStudyYear,
  @JsonValue('time')
  time,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}

enum HistoryAttendanceDaysConstraint {
  @JsonValue('attendance_days_pkey')
  attendanceDaysPkey,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}

enum HistoryAttendanceDaysUpdateColumn {
  @JsonValue('day')
  day,
  @JsonValue('notes')
  notes,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}

enum HistoryAttendanceDaysConstraintsConstraint {
  @JsonValue('attendance_days_constraints_day_service_service_studyYear_s_key')
  attendanceDaysConstraintsDayServiceServiceStudyYearSKey,
  @JsonValue('attendance_days_constraints_pkey')
  attendanceDaysConstraintsPkey,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}

enum HistoryAttendanceDaysConstraintsUpdateColumn {
  @JsonValue('dayId')
  dayId,
  @JsonValue('groupId')
  groupId,
  @JsonValue('id')
  id,
  @JsonValue('serviceGender')
  serviceGender,
  @JsonValue('serviceId')
  serviceId,
  @JsonValue('serviceStudyYear')
  serviceStudyYear,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}

enum UsersPermissionsConstraint {
  @JsonValue('users_permissions_area')
  usersPermissionsArea,
  @JsonValue('users_permissions_group')
  usersPermissionsGroup,
  @JsonValue('users_permissions_permission_id_key')
  usersPermissionsPermissionIdKey,
  @JsonValue('users_permissions_pkey')
  usersPermissionsPkey,
  @JsonValue('users_permissions_service')
  usersPermissionsService,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}

enum UsersPermissionsUpdateColumn {
  @JsonValue('adminOnArea')
  adminOnArea,
  @JsonValue('adminOnGroup')
  adminOnGroup,
  @JsonValue('adminOnService')
  adminOnService,
  @JsonValue('areaAdminOnUsers')
  areaAdminOnUsers,
  @JsonValue('areaAllowEdit')
  areaAllowEdit,
  @JsonValue('groupAdminOnUsers')
  groupAdminOnUsers,
  @JsonValue('groupAllowEdit')
  groupAllowEdit,
  @JsonValue('permissionId')
  permissionId,
  @JsonValue('serviceAdminOnUsers')
  serviceAdminOnUsers,
  @JsonValue('serviceAllowEdit')
  serviceAllowEdit,
  @JsonValue('serviceGender')
  serviceGender,
  @JsonValue('serviceStudyYear')
  serviceStudyYear,
  @JsonValue('uid')
  uid,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
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
                    name: NameNode(value: 'AreasBoolExp'), isNonNull: true),
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
                  name: NameNode(value: 'orderBy'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: 'name'),
                        value: EnumValueNode(name: NameNode(value: 'ASC')))
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
                    name: NameNode(value: 'ClassesBoolExp'), isNonNull: true),
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
                  name: NameNode(value: 'orderBy'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: 'name'),
                        value: EnumValueNode(name: NameNode(value: 'ASC')))
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
                    name: NameNode(value: 'FamiliesBoolExp'), isNonNull: true),
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
                  name: NameNode(value: 'orderBy'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: 'name'),
                        value: EnumValueNode(name: NameNode(value: 'ASC')))
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
                    name: NameNode(value: 'GroupsBoolExp'), isNonNull: true),
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
                  name: NameNode(value: 'orderBy'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: 'name'),
                        value: EnumValueNode(name: NameNode(value: 'ASC')))
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
class GetChurchesStreamArguments extends JsonSerializable with EquatableMixin {
  GetChurchesStreamArguments({this.addWhere, this.limit});

  @override
  factory GetChurchesStreamArguments.fromJson(Map<String, dynamic> json) =>
      _$GetChurchesStreamArgumentsFromJson(json);

  final List<ChurchesBoolExp>? addWhere;

  final int? limit;

  @override
  List<Object?> get props => [addWhere, limit];
  @override
  Map<String, dynamic> toJson() => _$GetChurchesStreamArgumentsToJson(this);
}

final GET_CHURCHES_STREAM_SUBSCRIPTION_DOCUMENT_OPERATION_NAME =
    'getChurchesStream';
final GET_CHURCHES_STREAM_SUBSCRIPTION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.subscription,
      name: NameNode(value: 'getChurchesStream'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'addWhere')),
            type: ListTypeNode(
                type: NamedTypeNode(
                    name: NameNode(value: 'ChurchesBoolExp'), isNonNull: true),
                isNonNull: false),
            defaultValue: DefaultValueNode(value: ObjectValueNode(fields: [])),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'limit')),
            type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: false),
            defaultValue: DefaultValueNode(value: IntValueNode(value: '25')),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'churches'),
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
                  name: NameNode(value: 'orderBy'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: 'name'),
                        value: EnumValueNode(name: NameNode(value: 'ASC')))
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
                  selectionSet: null)
            ]))
      ]))
]);

class GetChurchesStreamSubscription extends GraphQLQuery<
    GetChurchesStream$SubscriptionRoot, GetChurchesStreamArguments> {
  GetChurchesStreamSubscription({required this.variables});

  @override
  final DocumentNode document = GET_CHURCHES_STREAM_SUBSCRIPTION_DOCUMENT;

  @override
  final String operationName =
      GET_CHURCHES_STREAM_SUBSCRIPTION_DOCUMENT_OPERATION_NAME;

  @override
  final GetChurchesStreamArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  GetChurchesStream$SubscriptionRoot parse(Map<String, dynamic> json) =>
      GetChurchesStream$SubscriptionRoot.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class GetCollegesStreamArguments extends JsonSerializable with EquatableMixin {
  GetCollegesStreamArguments({this.addWhere, this.limit});

  @override
  factory GetCollegesStreamArguments.fromJson(Map<String, dynamic> json) =>
      _$GetCollegesStreamArgumentsFromJson(json);

  final List<CollegesBoolExp>? addWhere;

  final int? limit;

  @override
  List<Object?> get props => [addWhere, limit];
  @override
  Map<String, dynamic> toJson() => _$GetCollegesStreamArgumentsToJson(this);
}

final GET_COLLEGES_STREAM_SUBSCRIPTION_DOCUMENT_OPERATION_NAME =
    'getCollegesStream';
final GET_COLLEGES_STREAM_SUBSCRIPTION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.subscription,
      name: NameNode(value: 'getCollegesStream'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'addWhere')),
            type: ListTypeNode(
                type: NamedTypeNode(
                    name: NameNode(value: 'CollegesBoolExp'), isNonNull: true),
                isNonNull: false),
            defaultValue: DefaultValueNode(value: ObjectValueNode(fields: [])),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'limit')),
            type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: false),
            defaultValue: DefaultValueNode(value: IntValueNode(value: '25')),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'colleges'),
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
                  name: NameNode(value: 'orderBy'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: 'name'),
                        value: EnumValueNode(name: NameNode(value: 'ASC')))
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
                  selectionSet: null)
            ]))
      ]))
]);

class GetCollegesStreamSubscription extends GraphQLQuery<
    GetCollegesStream$SubscriptionRoot, GetCollegesStreamArguments> {
  GetCollegesStreamSubscription({required this.variables});

  @override
  final DocumentNode document = GET_COLLEGES_STREAM_SUBSCRIPTION_DOCUMENT;

  @override
  final String operationName =
      GET_COLLEGES_STREAM_SUBSCRIPTION_DOCUMENT_OPERATION_NAME;

  @override
  final GetCollegesStreamArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  GetCollegesStream$SubscriptionRoot parse(Map<String, dynamic> json) =>
      GetCollegesStream$SubscriptionRoot.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class GetFathersStreamArguments extends JsonSerializable with EquatableMixin {
  GetFathersStreamArguments({this.addWhere, this.limit});

  @override
  factory GetFathersStreamArguments.fromJson(Map<String, dynamic> json) =>
      _$GetFathersStreamArgumentsFromJson(json);

  final List<FathersBoolExp>? addWhere;

  final int? limit;

  @override
  List<Object?> get props => [addWhere, limit];
  @override
  Map<String, dynamic> toJson() => _$GetFathersStreamArgumentsToJson(this);
}

final GET_FATHERS_STREAM_SUBSCRIPTION_DOCUMENT_OPERATION_NAME =
    'getFathersStream';
final GET_FATHERS_STREAM_SUBSCRIPTION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.subscription,
      name: NameNode(value: 'getFathersStream'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'addWhere')),
            type: ListTypeNode(
                type: NamedTypeNode(
                    name: NameNode(value: 'FathersBoolExp'), isNonNull: true),
                isNonNull: false),
            defaultValue: DefaultValueNode(value: ObjectValueNode(fields: [])),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'limit')),
            type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: false),
            defaultValue: DefaultValueNode(value: IntValueNode(value: '25')),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'fathers'),
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
                  name: NameNode(value: 'orderBy'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: 'name'),
                        value: EnumValueNode(name: NameNode(value: 'ASC')))
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
                  selectionSet: null)
            ]))
      ]))
]);

class GetFathersStreamSubscription extends GraphQLQuery<
    GetFathersStream$SubscriptionRoot, GetFathersStreamArguments> {
  GetFathersStreamSubscription({required this.variables});

  @override
  final DocumentNode document = GET_FATHERS_STREAM_SUBSCRIPTION_DOCUMENT;

  @override
  final String operationName =
      GET_FATHERS_STREAM_SUBSCRIPTION_DOCUMENT_OPERATION_NAME;

  @override
  final GetFathersStreamArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  GetFathersStream$SubscriptionRoot parse(Map<String, dynamic> json) =>
      GetFathersStream$SubscriptionRoot.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class GetJobsStreamArguments extends JsonSerializable with EquatableMixin {
  GetJobsStreamArguments({this.addWhere, this.limit});

  @override
  factory GetJobsStreamArguments.fromJson(Map<String, dynamic> json) =>
      _$GetJobsStreamArgumentsFromJson(json);

  final List<JobsBoolExp>? addWhere;

  final int? limit;

  @override
  List<Object?> get props => [addWhere, limit];
  @override
  Map<String, dynamic> toJson() => _$GetJobsStreamArgumentsToJson(this);
}

final GET_JOBS_STREAM_SUBSCRIPTION_DOCUMENT_OPERATION_NAME = 'getJobsStream';
final GET_JOBS_STREAM_SUBSCRIPTION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.subscription,
      name: NameNode(value: 'getJobsStream'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'addWhere')),
            type: ListTypeNode(
                type: NamedTypeNode(
                    name: NameNode(value: 'JobsBoolExp'), isNonNull: true),
                isNonNull: false),
            defaultValue: DefaultValueNode(value: ObjectValueNode(fields: [])),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'limit')),
            type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: false),
            defaultValue: DefaultValueNode(value: IntValueNode(value: '25')),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'jobs'),
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
                  name: NameNode(value: 'orderBy'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: 'name'),
                        value: EnumValueNode(name: NameNode(value: 'ASC')))
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
                  selectionSet: null)
            ]))
      ]))
]);

class GetJobsStreamSubscription extends GraphQLQuery<
    GetJobsStream$SubscriptionRoot, GetJobsStreamArguments> {
  GetJobsStreamSubscription({required this.variables});

  @override
  final DocumentNode document = GET_JOBS_STREAM_SUBSCRIPTION_DOCUMENT;

  @override
  final String operationName =
      GET_JOBS_STREAM_SUBSCRIPTION_DOCUMENT_OPERATION_NAME;

  @override
  final GetJobsStreamArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  GetJobsStream$SubscriptionRoot parse(Map<String, dynamic> json) =>
      GetJobsStream$SubscriptionRoot.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class GetPersonStatesStreamArguments extends JsonSerializable
    with EquatableMixin {
  GetPersonStatesStreamArguments({this.addWhere});

  @override
  factory GetPersonStatesStreamArguments.fromJson(Map<String, dynamic> json) =>
      _$GetPersonStatesStreamArgumentsFromJson(json);

  final List<PersonStatesBoolExp>? addWhere;

  @override
  List<Object?> get props => [addWhere];
  @override
  Map<String, dynamic> toJson() => _$GetPersonStatesStreamArgumentsToJson(this);
}

final GET_PERSON_STATES_STREAM_SUBSCRIPTION_DOCUMENT_OPERATION_NAME =
    'getPersonStatesStream';
final GET_PERSON_STATES_STREAM_SUBSCRIPTION_DOCUMENT =
    DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.subscription,
      name: NameNode(value: 'getPersonStatesStream'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'addWhere')),
            type: ListTypeNode(
                type: NamedTypeNode(
                    name: NameNode(value: 'PersonStatesBoolExp'),
                    isNonNull: true),
                isNonNull: false),
            defaultValue: DefaultValueNode(value: ObjectValueNode(fields: [])),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'personStates'),
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
                  name: NameNode(value: 'orderBy'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: 'name'),
                        value: EnumValueNode(name: NameNode(value: 'ASC')))
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
]);

class GetPersonStatesStreamSubscription extends GraphQLQuery<
    GetPersonStatesStream$SubscriptionRoot, GetPersonStatesStreamArguments> {
  GetPersonStatesStreamSubscription({required this.variables});

  @override
  final DocumentNode document = GET_PERSON_STATES_STREAM_SUBSCRIPTION_DOCUMENT;

  @override
  final String operationName =
      GET_PERSON_STATES_STREAM_SUBSCRIPTION_DOCUMENT_OPERATION_NAME;

  @override
  final GetPersonStatesStreamArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  GetPersonStatesStream$SubscriptionRoot parse(Map<String, dynamic> json) =>
      GetPersonStatesStream$SubscriptionRoot.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class GetPersonTypesStreamArguments extends JsonSerializable
    with EquatableMixin {
  GetPersonTypesStreamArguments({this.addWhere, this.limit});

  @override
  factory GetPersonTypesStreamArguments.fromJson(Map<String, dynamic> json) =>
      _$GetPersonTypesStreamArgumentsFromJson(json);

  final List<PersonTypesBoolExp>? addWhere;

  final int? limit;

  @override
  List<Object?> get props => [addWhere, limit];
  @override
  Map<String, dynamic> toJson() => _$GetPersonTypesStreamArgumentsToJson(this);
}

final GET_PERSON_TYPES_STREAM_SUBSCRIPTION_DOCUMENT_OPERATION_NAME =
    'getPersonTypesStream';
final GET_PERSON_TYPES_STREAM_SUBSCRIPTION_DOCUMENT =
    DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.subscription,
      name: NameNode(value: 'getPersonTypesStream'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'addWhere')),
            type: ListTypeNode(
                type: NamedTypeNode(
                    name: NameNode(value: 'PersonTypesBoolExp'),
                    isNonNull: true),
                isNonNull: false),
            defaultValue: DefaultValueNode(value: ObjectValueNode(fields: [])),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'limit')),
            type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: false),
            defaultValue: DefaultValueNode(value: IntValueNode(value: '25')),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'personTypes'),
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
                  name: NameNode(value: 'orderBy'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: 'order'),
                        value: EnumValueNode(name: NameNode(value: 'ASC')))
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

class GetPersonTypesStreamSubscription extends GraphQLQuery<
    GetPersonTypesStream$SubscriptionRoot, GetPersonTypesStreamArguments> {
  GetPersonTypesStreamSubscription({required this.variables});

  @override
  final DocumentNode document = GET_PERSON_TYPES_STREAM_SUBSCRIPTION_DOCUMENT;

  @override
  final String operationName =
      GET_PERSON_TYPES_STREAM_SUBSCRIPTION_DOCUMENT_OPERATION_NAME;

  @override
  final GetPersonTypesStreamArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  GetPersonTypesStream$SubscriptionRoot parse(Map<String, dynamic> json) =>
      GetPersonTypesStream$SubscriptionRoot.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class GetQualificationsStreamArguments extends JsonSerializable
    with EquatableMixin {
  GetQualificationsStreamArguments({this.addWhere, this.limit});

  @override
  factory GetQualificationsStreamArguments.fromJson(
          Map<String, dynamic> json) =>
      _$GetQualificationsStreamArgumentsFromJson(json);

  final List<QualificationsBoolExp>? addWhere;

  final int? limit;

  @override
  List<Object?> get props => [addWhere, limit];
  @override
  Map<String, dynamic> toJson() =>
      _$GetQualificationsStreamArgumentsToJson(this);
}

final GET_QUALIFICATIONS_STREAM_SUBSCRIPTION_DOCUMENT_OPERATION_NAME =
    'getQualificationsStream';
final GET_QUALIFICATIONS_STREAM_SUBSCRIPTION_DOCUMENT =
    DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.subscription,
      name: NameNode(value: 'getQualificationsStream'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'addWhere')),
            type: ListTypeNode(
                type: NamedTypeNode(
                    name: NameNode(value: 'QualificationsBoolExp'),
                    isNonNull: true),
                isNonNull: false),
            defaultValue: DefaultValueNode(value: ObjectValueNode(fields: [])),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'limit')),
            type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: false),
            defaultValue: DefaultValueNode(value: IntValueNode(value: '25')),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'qualifications'),
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
                  name: NameNode(value: 'orderBy'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: 'name'),
                        value: EnumValueNode(name: NameNode(value: 'ASC')))
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
                  selectionSet: null)
            ]))
      ]))
]);

class GetQualificationsStreamSubscription extends GraphQLQuery<
    GetQualificationsStream$SubscriptionRoot,
    GetQualificationsStreamArguments> {
  GetQualificationsStreamSubscription({required this.variables});

  @override
  final DocumentNode document = GET_QUALIFICATIONS_STREAM_SUBSCRIPTION_DOCUMENT;

  @override
  final String operationName =
      GET_QUALIFICATIONS_STREAM_SUBSCRIPTION_DOCUMENT_OPERATION_NAME;

  @override
  final GetQualificationsStreamArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  GetQualificationsStream$SubscriptionRoot parse(Map<String, dynamic> json) =>
      GetQualificationsStream$SubscriptionRoot.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class GetSchoolsStreamArguments extends JsonSerializable with EquatableMixin {
  GetSchoolsStreamArguments({this.addWhere, this.limit});

  @override
  factory GetSchoolsStreamArguments.fromJson(Map<String, dynamic> json) =>
      _$GetSchoolsStreamArgumentsFromJson(json);

  final List<SchoolsBoolExp>? addWhere;

  final int? limit;

  @override
  List<Object?> get props => [addWhere, limit];
  @override
  Map<String, dynamic> toJson() => _$GetSchoolsStreamArgumentsToJson(this);
}

final GET_SCHOOLS_STREAM_SUBSCRIPTION_DOCUMENT_OPERATION_NAME =
    'getSchoolsStream';
final GET_SCHOOLS_STREAM_SUBSCRIPTION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.subscription,
      name: NameNode(value: 'getSchoolsStream'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'addWhere')),
            type: ListTypeNode(
                type: NamedTypeNode(
                    name: NameNode(value: 'SchoolsBoolExp'), isNonNull: true),
                isNonNull: false),
            defaultValue: DefaultValueNode(value: ObjectValueNode(fields: [])),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'limit')),
            type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: false),
            defaultValue: DefaultValueNode(value: IntValueNode(value: '25')),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'schools'),
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
                  name: NameNode(value: 'orderBy'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: 'name'),
                        value: EnumValueNode(name: NameNode(value: 'ASC')))
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
                  selectionSet: null)
            ]))
      ]))
]);

class GetSchoolsStreamSubscription extends GraphQLQuery<
    GetSchoolsStream$SubscriptionRoot, GetSchoolsStreamArguments> {
  GetSchoolsStreamSubscription({required this.variables});

  @override
  final DocumentNode document = GET_SCHOOLS_STREAM_SUBSCRIPTION_DOCUMENT;

  @override
  final String operationName =
      GET_SCHOOLS_STREAM_SUBSCRIPTION_DOCUMENT_OPERATION_NAME;

  @override
  final GetSchoolsStreamArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  GetSchoolsStream$SubscriptionRoot parse(Map<String, dynamic> json) =>
      GetSchoolsStream$SubscriptionRoot.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class GetShammasLevelsStreamArguments extends JsonSerializable
    with EquatableMixin {
  GetShammasLevelsStreamArguments({this.addWhere, this.limit});

  @override
  factory GetShammasLevelsStreamArguments.fromJson(Map<String, dynamic> json) =>
      _$GetShammasLevelsStreamArgumentsFromJson(json);

  final List<ShammasLevelsBoolExp>? addWhere;

  final int? limit;

  @override
  List<Object?> get props => [addWhere, limit];
  @override
  Map<String, dynamic> toJson() =>
      _$GetShammasLevelsStreamArgumentsToJson(this);
}

final GET_SHAMMAS_LEVELS_STREAM_SUBSCRIPTION_DOCUMENT_OPERATION_NAME =
    'getShammasLevelsStream';
final GET_SHAMMAS_LEVELS_STREAM_SUBSCRIPTION_DOCUMENT =
    DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.subscription,
      name: NameNode(value: 'getShammasLevelsStream'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'addWhere')),
            type: ListTypeNode(
                type: NamedTypeNode(
                    name: NameNode(value: 'ShammasLevelsBoolExp'),
                    isNonNull: true),
                isNonNull: false),
            defaultValue: DefaultValueNode(value: ObjectValueNode(fields: [])),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'limit')),
            type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: false),
            defaultValue: DefaultValueNode(value: IntValueNode(value: '25')),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'shammasLevels'),
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
                  name: NameNode(value: 'orderBy'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: 'order'),
                        value: EnumValueNode(name: NameNode(value: 'ASC')))
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

class GetShammasLevelsStreamSubscription extends GraphQLQuery<
    GetShammasLevelsStream$SubscriptionRoot, GetShammasLevelsStreamArguments> {
  GetShammasLevelsStreamSubscription({required this.variables});

  @override
  final DocumentNode document = GET_SHAMMAS_LEVELS_STREAM_SUBSCRIPTION_DOCUMENT;

  @override
  final String operationName =
      GET_SHAMMAS_LEVELS_STREAM_SUBSCRIPTION_DOCUMENT_OPERATION_NAME;

  @override
  final GetShammasLevelsStreamArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  GetShammasLevelsStream$SubscriptionRoot parse(Map<String, dynamic> json) =>
      GetShammasLevelsStream$SubscriptionRoot.fromJson(json);
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
            name: NameNode(value: 'studyYearsByPk'),
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
class GetStudyYearsStreamArguments extends JsonSerializable
    with EquatableMixin {
  GetStudyYearsStreamArguments({this.addWhere, this.limit});

  @override
  factory GetStudyYearsStreamArguments.fromJson(Map<String, dynamic> json) =>
      _$GetStudyYearsStreamArgumentsFromJson(json);

  final List<StudyYearsBoolExp>? addWhere;

  final int? limit;

  @override
  List<Object?> get props => [addWhere, limit];
  @override
  Map<String, dynamic> toJson() => _$GetStudyYearsStreamArgumentsToJson(this);
}

final GET_STUDY_YEARS_STREAM_SUBSCRIPTION_DOCUMENT_OPERATION_NAME =
    'getStudyYearsStream';
final GET_STUDY_YEARS_STREAM_SUBSCRIPTION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.subscription,
      name: NameNode(value: 'getStudyYearsStream'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'addWhere')),
            type: ListTypeNode(
                type: NamedTypeNode(
                    name: NameNode(value: 'StudyYearsBoolExp'),
                    isNonNull: true),
                isNonNull: false),
            defaultValue: DefaultValueNode(value: ObjectValueNode(fields: [])),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'limit')),
            type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: false),
            defaultValue: DefaultValueNode(value: IntValueNode(value: '25')),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'studyYears'),
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
                  name: NameNode(value: 'orderBy'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: 'order'),
                        value: EnumValueNode(name: NameNode(value: 'ASC')))
                  ])),
              ArgumentNode(
                  name: NameNode(value: 'limit'),
                  value: VariableNode(name: NameNode(value: 'limit')))
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

class GetStudyYearsStreamSubscription extends GraphQLQuery<
    GetStudyYearsStream$SubscriptionRoot, GetStudyYearsStreamArguments> {
  GetStudyYearsStreamSubscription({required this.variables});

  @override
  final DocumentNode document = GET_STUDY_YEARS_STREAM_SUBSCRIPTION_DOCUMENT;

  @override
  final String operationName =
      GET_STUDY_YEARS_STREAM_SUBSCRIPTION_DOCUMENT_OPERATION_NAME;

  @override
  final GetStudyYearsStreamArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  GetStudyYearsStream$SubscriptionRoot parse(Map<String, dynamic> json) =>
      GetStudyYearsStream$SubscriptionRoot.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class GetTagsStreamArguments extends JsonSerializable with EquatableMixin {
  GetTagsStreamArguments({this.addWhere, this.limit});

  @override
  factory GetTagsStreamArguments.fromJson(Map<String, dynamic> json) =>
      _$GetTagsStreamArgumentsFromJson(json);

  final List<TagsBoolExp>? addWhere;

  final int? limit;

  @override
  List<Object?> get props => [addWhere, limit];
  @override
  Map<String, dynamic> toJson() => _$GetTagsStreamArgumentsToJson(this);
}

final GET_TAGS_STREAM_SUBSCRIPTION_DOCUMENT_OPERATION_NAME = 'getTagsStream';
final GET_TAGS_STREAM_SUBSCRIPTION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.subscription,
      name: NameNode(value: 'getTagsStream'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'addWhere')),
            type: ListTypeNode(
                type: NamedTypeNode(
                    name: NameNode(value: 'TagsBoolExp'), isNonNull: true),
                isNonNull: false),
            defaultValue: DefaultValueNode(value: ObjectValueNode(fields: [])),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'limit')),
            type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: false),
            defaultValue: DefaultValueNode(value: IntValueNode(value: '25')),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'tags'),
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
                  name: NameNode(value: 'orderBy'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: 'name'),
                        value: EnumValueNode(name: NameNode(value: 'ASC')))
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
                  selectionSet: null)
            ]))
      ]))
]);

class GetTagsStreamSubscription extends GraphQLQuery<
    GetTagsStream$SubscriptionRoot, GetTagsStreamArguments> {
  GetTagsStreamSubscription({required this.variables});

  @override
  final DocumentNode document = GET_TAGS_STREAM_SUBSCRIPTION_DOCUMENT;

  @override
  final String operationName =
      GET_TAGS_STREAM_SUBSCRIPTION_DOCUMENT_OPERATION_NAME;

  @override
  final GetTagsStreamArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  GetTagsStream$SubscriptionRoot parse(Map<String, dynamic> json) =>
      GetTagsStream$SubscriptionRoot.fromJson(json);
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
            name: NameNode(value: 'insertHistoryConfessionHistoryOne'),
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
                              name: NameNode(value: 'onConflict'),
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
                  name: NameNode(value: 'onConflict'),
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
            name: NameNode(value: 'insertHistoryKodasHistoryOne'),
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
                              name: NameNode(value: 'onConflict'),
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
                  name: NameNode(value: 'onConflict'),
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
            name: NameNode(value: 'insertHistoryCallHistoryOne'),
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
            name: NameNode(value: 'insertHistoryVisitHistoryOne'),
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
            name: NameNode(value: 'insertHistoryConfessionHistoryOne'),
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
                              name: NameNode(value: 'onConflict'),
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
                  name: NameNode(value: 'onConflict'),
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
            name: NameNode(value: 'insertHistoryKodasHistoryOne'),
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
                              name: NameNode(value: 'onConflict'),
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
                  name: NameNode(value: 'onConflict'),
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
class DeletePersonArguments extends JsonSerializable with EquatableMixin {
  DeletePersonArguments({required this.personId});

  @override
  factory DeletePersonArguments.fromJson(Map<String, dynamic> json) =>
      _$DeletePersonArgumentsFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue personId;

  @override
  List<Object?> get props => [personId];
  @override
  Map<String, dynamic> toJson() => _$DeletePersonArgumentsToJson(this);
}

final DELETE_PERSON_MUTATION_DOCUMENT_OPERATION_NAME = 'deletePerson';
final DELETE_PERSON_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'deletePerson'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'personId')),
            type: NamedTypeNode(name: NameNode(value: 'uuid'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'deletePersonsByPk'),
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

class DeletePersonMutation
    extends GraphQLQuery<DeletePerson$MutationRoot, DeletePersonArguments> {
  DeletePersonMutation({required this.variables});

  @override
  final DocumentNode document = DELETE_PERSON_MUTATION_DOCUMENT;

  @override
  final String operationName = DELETE_PERSON_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final DeletePersonArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  DeletePerson$MutationRoot parse(Map<String, dynamic> json) =>
      DeletePerson$MutationRoot.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class UpdatePersonArguments extends JsonSerializable with EquatableMixin {
  UpdatePersonArguments(
      {required this.personId,
      required this.newPerson,
      required this.newGroups,
      this.deleteGroups,
      required this.newServices,
      this.deleteServices,
      required this.newTags,
      this.deleteTags,
      this.lastConfession,
      this.lastKodas,
      this.lastCall,
      this.lastVisit});

  @override
  factory UpdatePersonArguments.fromJson(Map<String, dynamic> json) =>
      _$UpdatePersonArgumentsFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue personId;

  late PersonsSetInput newPerson;

  late List<PersonsGroupsInsertInput> newGroups;

  @JsonKey(
      fromJson: fromGraphQLListNullableUuidToDartListNullableUuidValue,
      toJson: fromDartListNullableUuidValueToGraphQLListNullableUuid)
  final List<UuidValue>? deleteGroups;

  late List<PersonsServicesInsertInput> newServices;

  @JsonKey(
      fromJson: fromGraphQLListNullableUuidToDartListNullableUuidValue,
      toJson: fromDartListNullableUuidValueToGraphQLListNullableUuid)
  final List<UuidValue>? deleteServices;

  late List<PersonsTagsInsertInput> newTags;

  @JsonKey(
      fromJson: fromGraphQLListNullableUuidToDartListNullableUuidValue,
      toJson: fromDartListNullableUuidValueToGraphQLListNullableUuid)
  final List<UuidValue>? deleteTags;

  final DateTime? lastConfession;

  final DateTime? lastKodas;

  final DateTime? lastCall;

  final DateTime? lastVisit;

  @override
  List<Object?> get props => [
        personId,
        newPerson,
        newGroups,
        deleteGroups,
        newServices,
        deleteServices,
        newTags,
        deleteTags,
        lastConfession,
        lastKodas,
        lastCall,
        lastVisit
      ];
  @override
  Map<String, dynamic> toJson() => _$UpdatePersonArgumentsToJson(this);
}

final UPDATE_PERSON_MUTATION_DOCUMENT_OPERATION_NAME = 'updatePerson';
final UPDATE_PERSON_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'updatePerson'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'personId')),
            type: NamedTypeNode(name: NameNode(value: 'uuid'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'newPerson')),
            type: NamedTypeNode(
                name: NameNode(value: 'PersonsSetInput'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'newGroups')),
            type: ListTypeNode(
                type: NamedTypeNode(
                    name: NameNode(value: 'PersonsGroupsInsertInput'),
                    isNonNull: true),
                isNonNull: true),
            defaultValue: DefaultValueNode(value: ListValueNode(values: [])),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'deleteGroups')),
            type: ListTypeNode(
                type: NamedTypeNode(
                    name: NameNode(value: 'uuid'), isNonNull: true),
                isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'newServices')),
            type: ListTypeNode(
                type: NamedTypeNode(
                    name: NameNode(value: 'PersonsServicesInsertInput'),
                    isNonNull: true),
                isNonNull: true),
            defaultValue: DefaultValueNode(value: ListValueNode(values: [])),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'deleteServices')),
            type: ListTypeNode(
                type: NamedTypeNode(
                    name: NameNode(value: 'uuid'), isNonNull: true),
                isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'newTags')),
            type: ListTypeNode(
                type: NamedTypeNode(
                    name: NameNode(value: 'PersonsTagsInsertInput'),
                    isNonNull: true),
                isNonNull: true),
            defaultValue: DefaultValueNode(value: ListValueNode(values: [])),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'deleteTags')),
            type: ListTypeNode(
                type: NamedTypeNode(
                    name: NameNode(value: 'uuid'), isNonNull: true),
                isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'lastConfession')),
            type:
                NamedTypeNode(name: NameNode(value: 'date'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'lastKodas')),
            type:
                NamedTypeNode(name: NameNode(value: 'date'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'lastCall')),
            type: NamedTypeNode(
                name: NameNode(value: 'timestamptz'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'lastVisit')),
            type: NamedTypeNode(
                name: NameNode(value: 'timestamptz'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'insertPersonsGroups'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'objects'),
                  value: VariableNode(name: NameNode(value: 'newGroups')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'affected_rows'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ])),
        FieldNode(
            name: NameNode(value: 'insertPersonsServices'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'objects'),
                  value: VariableNode(name: NameNode(value: 'newServices')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'affected_rows'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ])),
        FieldNode(
            name: NameNode(value: 'insertPersonsTags'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'objects'),
                  value: VariableNode(name: NameNode(value: 'newTags')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'affected_rows'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ])),
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
                              value: VariableNode(
                                  name: NameNode(value: 'personId')))
                        ])),
                    ObjectFieldNode(
                        name: NameNode(value: 'groupId'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                              name: NameNode(value: '_in'),
                              value: VariableNode(
                                  name: NameNode(value: 'deleteGroups')))
                        ]))
                  ]))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'affected_rows'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ])),
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
                              value: VariableNode(
                                  name: NameNode(value: 'personId')))
                        ])),
                    ObjectFieldNode(
                        name: NameNode(value: 'serviceId'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                              name: NameNode(value: '_in'),
                              value: VariableNode(
                                  name: NameNode(value: 'deleteServices')))
                        ]))
                  ]))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'affected_rows'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ])),
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
                              value: VariableNode(
                                  name: NameNode(value: 'personId')))
                        ])),
                    ObjectFieldNode(
                        name: NameNode(value: 'tagId'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                              name: NameNode(value: '_in'),
                              value: VariableNode(
                                  name: NameNode(value: 'deleteTags')))
                        ]))
                  ]))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'affected_rows'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ])),
        FieldNode(
            name: NameNode(value: 'updatePersonsByPk'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'pk_columns'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: 'id'),
                        value: VariableNode(name: NameNode(value: 'personId')))
                  ])),
              ArgumentNode(
                  name: NameNode(value: '_set'),
                  value: VariableNode(name: NameNode(value: 'newPerson')))
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
            name: NameNode(value: 'insertHistoryConfessionHistoryOne'),
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
                              name: NameNode(value: 'onConflict'),
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
                  name: NameNode(value: 'onConflict'),
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
                        selectionSet: null)
                  ]))
            ])),
        FieldNode(
            name: NameNode(value: 'insertHistoryKodasHistoryOne'),
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
                              name: NameNode(value: 'onConflict'),
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
                  name: NameNode(value: 'onConflict'),
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
                        selectionSet: null)
                  ]))
            ])),
        FieldNode(
            name: NameNode(value: 'insertHistoryCallHistoryOne'),
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
                        selectionSet: null)
                  ]))
            ])),
        FieldNode(
            name: NameNode(value: 'insertHistoryVisitHistoryOne'),
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
                        selectionSet: null)
                  ]))
            ]))
      ]))
]);

class UpdatePersonMutation
    extends GraphQLQuery<UpdatePerson$MutationRoot, UpdatePersonArguments> {
  UpdatePersonMutation({required this.variables});

  @override
  final DocumentNode document = UPDATE_PERSON_MUTATION_DOCUMENT;

  @override
  final String operationName = UPDATE_PERSON_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final UpdatePersonArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  UpdatePerson$MutationRoot parse(Map<String, dynamic> json) =>
      UpdatePerson$MutationRoot.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class InsertPersonArguments extends JsonSerializable with EquatableMixin {
  InsertPersonArguments({required this.newPerson});

  @override
  factory InsertPersonArguments.fromJson(Map<String, dynamic> json) =>
      _$InsertPersonArgumentsFromJson(json);

  late PersonsInsertInput newPerson;

  @override
  List<Object?> get props => [newPerson];
  @override
  Map<String, dynamic> toJson() => _$InsertPersonArgumentsToJson(this);
}

final INSERT_PERSON_MUTATION_DOCUMENT_OPERATION_NAME = 'insertPerson';
final INSERT_PERSON_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'insertPerson'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'newPerson')),
            type: NamedTypeNode(
                name: NameNode(value: 'PersonsInsertInput'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'insertPersonsOne'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'object'),
                  value: VariableNode(name: NameNode(value: 'newPerson')))
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

class InsertPersonMutation
    extends GraphQLQuery<InsertPerson$MutationRoot, InsertPersonArguments> {
  InsertPersonMutation({required this.variables});

  @override
  final DocumentNode document = INSERT_PERSON_MUTATION_DOCUMENT;

  @override
  final String operationName = INSERT_PERSON_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final InsertPersonArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  InsertPerson$MutationRoot parse(Map<String, dynamic> json) =>
      InsertPerson$MutationRoot.fromJson(json);
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
            name: NameNode(value: 'personsByPk'),
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
                        name: NameNode(value: 'orderBy'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                              name: NameNode(value: 'name'),
                              value:
                                  EnumValueNode(name: NameNode(value: 'ASC')))
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
                        name: NameNode(value: 'orderBy'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                              name: NameNode(value: 'name'),
                              value:
                                  EnumValueNode(name: NameNode(value: 'ASC')))
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
                        name: NameNode(value: 'orderBy'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                              name: NameNode(value: 'group'),
                              value: ObjectValueNode(fields: [
                                ObjectFieldNode(
                                    name: NameNode(value: 'name'),
                                    value: EnumValueNode(
                                        name: NameNode(value: 'ASC')))
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
                              name:
                                  NameNode(value: 'attendanceHistoryAggregate'),
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
                        name: NameNode(value: 'orderBy'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                              name: NameNode(value: 'service'),
                              value: ObjectValueNode(fields: [
                                ObjectFieldNode(
                                    name: NameNode(value: 'name'),
                                    value: EnumValueNode(
                                        name: NameNode(value: 'ASC')))
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
                              name:
                                  NameNode(value: 'attendanceHistoryAggregate'),
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
  PersonsGeolocationsArguments(
      {this.areasIds,
      this.streetsIds,
      this.familiesIds,
      this.personsConditions});

  @override
  factory PersonsGeolocationsArguments.fromJson(Map<String, dynamic> json) =>
      _$PersonsGeolocationsArgumentsFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLListNullableUuidToDartListNullableUuidValue,
      toJson: fromDartListNullableUuidValueToGraphQLListNullableUuid)
  final List<UuidValue>? areasIds;

  @JsonKey(
      fromJson: fromGraphQLListNullableUuidToDartListNullableUuidValue,
      toJson: fromDartListNullableUuidValueToGraphQLListNullableUuid)
  final List<UuidValue>? streetsIds;

  @JsonKey(
      fromJson: fromGraphQLListNullableUuidToDartListNullableUuidValue,
      toJson: fromDartListNullableUuidValueToGraphQLListNullableUuid)
  final List<UuidValue>? familiesIds;

  final List<PersonsBoolExp>? personsConditions;

  @override
  List<Object?> get props =>
      [areasIds, streetsIds, familiesIds, personsConditions];
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
            variable: VariableNode(name: NameNode(value: 'areasIds')),
            type: ListTypeNode(
                type: NamedTypeNode(
                    name: NameNode(value: 'uuid'), isNonNull: true),
                isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'streetsIds')),
            type: ListTypeNode(
                type: NamedTypeNode(
                    name: NameNode(value: 'uuid'), isNonNull: true),
                isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'familiesIds')),
            type: ListTypeNode(
                type: NamedTypeNode(
                    name: NameNode(value: 'uuid'), isNonNull: true),
                isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'personsConditions')),
            type: ListTypeNode(
                type: NamedTypeNode(
                    name: NameNode(value: 'PersonsBoolExp'), isNonNull: true),
                isNonNull: false),
            defaultValue: DefaultValueNode(value: ObjectValueNode(fields: [])),
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
                        name: NameNode(value: '_or'),
                        value: ListValueNode(values: [
                          ObjectValueNode(fields: [
                            ObjectFieldNode(
                                name: NameNode(value: 'id'),
                                value: ObjectValueNode(fields: [
                                  ObjectFieldNode(
                                      name: NameNode(value: '_in'),
                                      value: VariableNode(
                                          name: NameNode(value: 'areasIds')))
                                ]))
                          ]),
                          ObjectValueNode(fields: [
                            ObjectFieldNode(
                                name: NameNode(value: 'streets'),
                                value: ObjectValueNode(fields: [
                                  ObjectFieldNode(
                                      name: NameNode(value: 'id'),
                                      value: ObjectValueNode(fields: [
                                        ObjectFieldNode(
                                            name: NameNode(value: '_in'),
                                            value: VariableNode(
                                                name: NameNode(
                                                    value: 'streetsIds')))
                                      ]))
                                ]))
                          ]),
                          ObjectValueNode(fields: [
                            ObjectFieldNode(
                                name: NameNode(value: 'families'),
                                value: ObjectValueNode(fields: [
                                  ObjectFieldNode(
                                      name: NameNode(value: 'id'),
                                      value: ObjectValueNode(fields: [
                                        ObjectFieldNode(
                                            name: NameNode(value: '_in'),
                                            value: VariableNode(
                                                name: NameNode(
                                                    value: 'familiesIds')))
                                      ]))
                                ]))
                          ]),
                          ObjectValueNode(fields: [
                            ObjectFieldNode(
                                name: NameNode(value: 'persons'),
                                value: ObjectValueNode(fields: [
                                  ObjectFieldNode(
                                      name: NameNode(value: '_and'),
                                      value: VariableNode(
                                          name: NameNode(
                                              value: 'personsConditions')))
                                ]))
                          ])
                        ])),
                    ObjectFieldNode(
                        name: NameNode(value: 'bounds'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                              name: NameNode(value: '_isNull'),
                              value: BooleanValueNode(value: false))
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
                  name: NameNode(value: 'bounds'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ])),
        FieldNode(
            name: NameNode(value: 'streets'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'where'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: '_or'),
                        value: ListValueNode(values: [
                          ObjectValueNode(fields: [
                            ObjectFieldNode(
                                name: NameNode(value: 'id'),
                                value: ObjectValueNode(fields: [
                                  ObjectFieldNode(
                                      name: NameNode(value: '_in'),
                                      value: VariableNode(
                                          name: NameNode(value: 'streetsIds')))
                                ]))
                          ]),
                          ObjectValueNode(fields: [
                            ObjectFieldNode(
                                name: NameNode(value: 'families'),
                                value: ObjectValueNode(fields: [
                                  ObjectFieldNode(
                                      name: NameNode(value: 'id'),
                                      value: ObjectValueNode(fields: [
                                        ObjectFieldNode(
                                            name: NameNode(value: '_in'),
                                            value: VariableNode(
                                                name: NameNode(
                                                    value: 'familiesIds')))
                                      ]))
                                ]))
                          ]),
                          ObjectValueNode(fields: [
                            ObjectFieldNode(
                                name: NameNode(value: 'persons'),
                                value: ObjectValueNode(fields: [
                                  ObjectFieldNode(
                                      name: NameNode(value: '_and'),
                                      value: VariableNode(
                                          name: NameNode(
                                              value: 'personsConditions')))
                                ]))
                          ])
                        ])),
                    ObjectFieldNode(
                        name: NameNode(value: 'line'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                              name: NameNode(value: '_isNull'),
                              value: BooleanValueNode(value: false))
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
                  name: NameNode(value: 'line'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ])),
        FieldNode(
            name: NameNode(value: 'families'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'where'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: '_or'),
                        value: ListValueNode(values: [
                          ObjectValueNode(fields: [
                            ObjectFieldNode(
                                name: NameNode(value: 'id'),
                                value: ObjectValueNode(fields: [
                                  ObjectFieldNode(
                                      name: NameNode(value: '_in'),
                                      value: VariableNode(
                                          name: NameNode(value: 'familiesIds')))
                                ]))
                          ]),
                          ObjectValueNode(fields: [
                            ObjectFieldNode(
                                name: NameNode(value: 'persons'),
                                value: ObjectValueNode(fields: [
                                  ObjectFieldNode(
                                      name: NameNode(value: '_and'),
                                      value: VariableNode(
                                          name: NameNode(
                                              value: 'personsConditions')))
                                ]))
                          ])
                        ])),
                    ObjectFieldNode(
                        name: NameNode(value: 'geolocation'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                              name: NameNode(value: '_isNull'),
                              value: BooleanValueNode(value: false))
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
                  name: NameNode(value: 'geolocation'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ])),
        FieldNode(
            name: NameNode(value: 'persons'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'where'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: '_and'),
                        value: VariableNode(
                            name: NameNode(value: 'personsConditions'))),
                    ObjectFieldNode(
                        name: NameNode(value: 'geolocation'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                              name: NameNode(value: '_isNull'),
                              value: BooleanValueNode(value: false))
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
                  name: NameNode(value: 'geolocation'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
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
class AnalyzePersonArguments extends JsonSerializable with EquatableMixin {
  AnalyzePersonArguments(
      {required this.dateFrom,
      required this.dateTo,
      required this.timeFrom,
      required this.timeTo,
      required this.personId,
      this.groupsIds,
      this.classesIds,
      this.servicesIds,
      required this.callHistory,
      required this.visitHistory,
      required this.editHistory,
      required this.confessionHistory,
      required this.kodasHistory});

  @override
  factory AnalyzePersonArguments.fromJson(Map<String, dynamic> json) =>
      _$AnalyzePersonArgumentsFromJson(json);

  late DateTime dateFrom;

  late DateTime dateTo;

  late DateTime timeFrom;

  late DateTime timeTo;

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

  late bool callHistory;

  late bool visitHistory;

  late bool editHistory;

  late bool confessionHistory;

  late bool kodasHistory;

  @override
  List<Object?> get props => [
        dateFrom,
        dateTo,
        timeFrom,
        timeTo,
        personId,
        groupsIds,
        classesIds,
        servicesIds,
        callHistory,
        visitHistory,
        editHistory,
        confessionHistory,
        kodasHistory
      ];
  @override
  Map<String, dynamic> toJson() => _$AnalyzePersonArgumentsToJson(this);
}

final ANALYZE_PERSON_QUERY_DOCUMENT_OPERATION_NAME = 'analyzePerson';
final ANALYZE_PERSON_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'analyzePerson'),
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
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'groupsIds')),
            type: ListTypeNode(
                type: NamedTypeNode(
                    name: NameNode(value: 'uuid'), isNonNull: true),
                isNonNull: false),
            defaultValue: DefaultValueNode(value: ListValueNode(values: [])),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'classesIds')),
            type: ListTypeNode(
                type: NamedTypeNode(
                    name: NameNode(value: 'uuid'), isNonNull: true),
                isNonNull: false),
            defaultValue: DefaultValueNode(value: ListValueNode(values: [])),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'servicesIds')),
            type: ListTypeNode(
                type: NamedTypeNode(
                    name: NameNode(value: 'uuid'), isNonNull: true),
                isNonNull: false),
            defaultValue: DefaultValueNode(value: ListValueNode(values: [])),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'callHistory')),
            type: NamedTypeNode(
                name: NameNode(value: 'Boolean'), isNonNull: true),
            defaultValue:
                DefaultValueNode(value: BooleanValueNode(value: false)),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'visitHistory')),
            type: NamedTypeNode(
                name: NameNode(value: 'Boolean'), isNonNull: true),
            defaultValue:
                DefaultValueNode(value: BooleanValueNode(value: false)),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'editHistory')),
            type: NamedTypeNode(
                name: NameNode(value: 'Boolean'), isNonNull: true),
            defaultValue:
                DefaultValueNode(value: BooleanValueNode(value: false)),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'confessionHistory')),
            type: NamedTypeNode(
                name: NameNode(value: 'Boolean'), isNonNull: true),
            defaultValue:
                DefaultValueNode(value: BooleanValueNode(value: false)),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'kodasHistory')),
            type: NamedTypeNode(
                name: NameNode(value: 'Boolean'), isNonNull: true),
            defaultValue:
                DefaultValueNode(value: BooleanValueNode(value: false)),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'personsByPk'),
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
                  name: NameNode(value: 'callHistoryAggregate'),
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
                  directives: [
                    DirectiveNode(name: NameNode(value: 'include'), arguments: [
                      ArgumentNode(
                          name: NameNode(value: 'if'),
                          value: VariableNode(
                              name: NameNode(value: 'callHistory')))
                    ])
                  ],
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
                  name: NameNode(value: 'visitHistoryAggregate'),
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
                  directives: [
                    DirectiveNode(name: NameNode(value: 'include'), arguments: [
                      ArgumentNode(
                          name: NameNode(value: 'if'),
                          value: VariableNode(
                              name: NameNode(value: 'visitHistory')))
                    ])
                  ],
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
                  name: NameNode(value: 'editHistoryAggregate'),
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
                  directives: [
                    DirectiveNode(name: NameNode(value: 'include'), arguments: [
                      ArgumentNode(
                          name: NameNode(value: 'if'),
                          value: VariableNode(
                              name: NameNode(value: 'editHistory')))
                    ])
                  ],
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
                  name: NameNode(value: 'kodasHistoryAggregate'),
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
                  directives: [
                    DirectiveNode(name: NameNode(value: 'include'), arguments: [
                      ArgumentNode(
                          name: NameNode(value: 'if'),
                          value: VariableNode(
                              name: NameNode(value: 'kodasHistory')))
                    ])
                  ],
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
                  name: NameNode(value: 'confessionHistoryAggregate'),
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
                  directives: [
                    DirectiveNode(name: NameNode(value: 'include'), arguments: [
                      ArgumentNode(
                          name: NameNode(value: 'if'),
                          value: VariableNode(
                              name: NameNode(value: 'confessionHistory')))
                    ])
                  ],
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
                              name:
                                  NameNode(value: 'attendanceHistoryAggregate'),
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
                                          ])),
                                      ObjectFieldNode(
                                          name: NameNode(value: 'asAdmin'),
                                          value: ObjectValueNode(fields: [
                                            ObjectFieldNode(
                                                name: NameNode(value: '_eq'),
                                                value: BooleanValueNode(
                                                    value: false))
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
                                  value: 'attendanceDaysConstraintsAggregate'),
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
                        name: NameNode(value: 'attendanceHistoryAggregate'),
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
                                    ])),
                                ObjectFieldNode(
                                    name: NameNode(value: 'asAdmin'),
                                    value: ObjectValueNode(fields: [
                                      ObjectFieldNode(
                                          name: NameNode(value: '_eq'),
                                          value: BooleanValueNode(value: false))
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
                            value: 'attendanceDaysConstraintsAggregate'),
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
                              name:
                                  NameNode(value: 'attendanceHistoryAggregate'),
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
                                          ])),
                                      ObjectFieldNode(
                                          name: NameNode(value: 'asAdmin'),
                                          value: ObjectValueNode(fields: [
                                            ObjectFieldNode(
                                                name: NameNode(value: '_eq'),
                                                value: BooleanValueNode(
                                                    value: false))
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
                                  value: 'attendanceDaysConstraintsAggregate'),
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

class AnalyzePersonQuery
    extends GraphQLQuery<AnalyzePerson$QueryRoot, AnalyzePersonArguments> {
  AnalyzePersonQuery({required this.variables});

  @override
  final DocumentNode document = ANALYZE_PERSON_QUERY_DOCUMENT;

  @override
  final String operationName = ANALYZE_PERSON_QUERY_DOCUMENT_OPERATION_NAME;

  @override
  final AnalyzePersonArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  AnalyzePerson$QueryRoot parse(Map<String, dynamic> json) =>
      AnalyzePerson$QueryRoot.fromJson(json);
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
            name: NameNode(value: 'personsByPk'),
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
                        name: NameNode(value: 'orderBy'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                              name: NameNode(value: 'name'),
                              value:
                                  EnumValueNode(name: NameNode(value: 'ASC')))
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
                        name: NameNode(value: 'orderBy'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                              name: NameNode(value: 'group'),
                              value: ObjectValueNode(fields: [
                                ObjectFieldNode(
                                    name: NameNode(value: 'name'),
                                    value: EnumValueNode(
                                        name: NameNode(value: 'ASC')))
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
class GetFullPersonDataArguments extends JsonSerializable with EquatableMixin {
  GetFullPersonDataArguments({required this.id});

  @override
  factory GetFullPersonDataArguments.fromJson(Map<String, dynamic> json) =>
      _$GetFullPersonDataArgumentsFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue id;

  @override
  List<Object?> get props => [id];
  @override
  Map<String, dynamic> toJson() => _$GetFullPersonDataArgumentsToJson(this);
}

final GET_FULL_PERSON_DATA_QUERY_DOCUMENT_OPERATION_NAME = 'getFullPersonData';
final GET_FULL_PERSON_DATA_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'getFullPersonData'),
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
            name: NameNode(value: 'personsByPk'),
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
                  arguments: [],
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
                              ])),
                          FieldNode(
                              name:
                                  NameNode(value: 'attendanceHistoryAggregate'),
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
                  arguments: [],
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
                              name:
                                  NameNode(value: 'attendanceHistoryAggregate'),
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
                        name: NameNode(value: 'orderBy'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                              name: NameNode(value: 'tag'),
                              value: ObjectValueNode(fields: [
                                ObjectFieldNode(
                                    name: NameNode(value: 'name'),
                                    value: EnumValueNode(
                                        name: NameNode(value: 'ASC')))
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
                  ]))
            ]))
      ]))
]);

class GetFullPersonDataQuery extends GraphQLQuery<GetFullPersonData$QueryRoot,
    GetFullPersonDataArguments> {
  GetFullPersonDataQuery({required this.variables});

  @override
  final DocumentNode document = GET_FULL_PERSON_DATA_QUERY_DOCUMENT;

  @override
  final String operationName =
      GET_FULL_PERSON_DATA_QUERY_DOCUMENT_OPERATION_NAME;

  @override
  final GetFullPersonDataArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  GetFullPersonData$QueryRoot parse(Map<String, dynamic> json) =>
      GetFullPersonData$QueryRoot.fromJson(json);
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
                    name: NameNode(value: 'PersonsBoolExp'), isNonNull: true),
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
                  name: NameNode(value: 'orderBy'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: 'name'),
                        value: EnumValueNode(name: NameNode(value: 'ASC')))
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
            name: NameNode(value: 'personsByPk'),
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
                        name: NameNode(value: 'orderBy'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                              name: NameNode(value: 'name'),
                              value:
                                  EnumValueNode(name: NameNode(value: 'ASC')))
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
                        name: NameNode(value: 'orderBy'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                              name: NameNode(value: 'name'),
                              value:
                                  EnumValueNode(name: NameNode(value: 'ASC')))
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
                        name: NameNode(value: 'orderBy'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                              name: NameNode(value: 'group'),
                              value: ObjectValueNode(fields: [
                                ObjectFieldNode(
                                    name: NameNode(value: 'name'),
                                    value: EnumValueNode(
                                        name: NameNode(value: 'ASC')))
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
                              name:
                                  NameNode(value: 'attendanceHistoryAggregate'),
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
                        name: NameNode(value: 'orderBy'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                              name: NameNode(value: 'service'),
                              value: ObjectValueNode(fields: [
                                ObjectFieldNode(
                                    name: NameNode(value: 'name'),
                                    value: EnumValueNode(
                                        name: NameNode(value: 'ASC')))
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
                              name:
                                  NameNode(value: 'attendanceHistoryAggregate'),
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
                        name: NameNode(value: 'orderBy'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                              name: NameNode(value: 'tag'),
                              value: ObjectValueNode(fields: [
                                ObjectFieldNode(
                                    name: NameNode(value: 'name'),
                                    value: EnumValueNode(
                                        name: NameNode(value: 'ASC')))
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
                        name: NameNode(value: 'userData'),
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
                              name: NameNode(value: 'email'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null)
                        ]))
                  ]))
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
                    name: NameNode(value: 'HistoryCallHistoryBoolExp'),
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
            name: NameNode(value: 'historyCallHistory'),
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
                  name: NameNode(value: 'orderBy'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: 'time'),
                        value: EnumValueNode(name: NameNode(value: 'DESC')))
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
                    name: NameNode(value: 'HistoryVisitHistoryBoolExp'),
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
            name: NameNode(value: 'historyVisitHistory'),
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
                  name: NameNode(value: 'orderBy'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: 'time'),
                        value: EnumValueNode(name: NameNode(value: 'DESC')))
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
                    name: NameNode(value: 'HistoryConfessionHistoryBoolExp'),
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
            name: NameNode(value: 'historyConfessionHistory'),
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
                  name: NameNode(value: 'orderBy'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: 'time'),
                        value: EnumValueNode(name: NameNode(value: 'DESC')))
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
                    name: NameNode(value: 'HistoryKodasHistoryBoolExp'),
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
            name: NameNode(value: 'historyKodasHistory'),
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
                  name: NameNode(value: 'orderBy'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: 'time'),
                        value: EnumValueNode(name: NameNode(value: 'DESC')))
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
class PersonEditHistoryArguments extends JsonSerializable with EquatableMixin {
  PersonEditHistoryArguments(
      {required this.personId, this.addWhere, this.limit});

  @override
  factory PersonEditHistoryArguments.fromJson(Map<String, dynamic> json) =>
      _$PersonEditHistoryArgumentsFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue personId;

  final List<HistoryEditHistoryBoolExp>? addWhere;

  final int? limit;

  @override
  List<Object?> get props => [personId, addWhere, limit];
  @override
  Map<String, dynamic> toJson() => _$PersonEditHistoryArgumentsToJson(this);
}

final PERSON_EDIT_HISTORY_SUBSCRIPTION_DOCUMENT_OPERATION_NAME =
    'personEditHistory';
final PERSON_EDIT_HISTORY_SUBSCRIPTION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.subscription,
      name: NameNode(value: 'personEditHistory'),
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
                    name: NameNode(value: 'HistoryEditHistoryBoolExp'),
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
            name: NameNode(value: 'historyEditHistory'),
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
                  name: NameNode(value: 'orderBy'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: 'time'),
                        value: EnumValueNode(name: NameNode(value: 'DESC')))
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

class PersonEditHistorySubscription extends GraphQLQuery<
    PersonEditHistory$SubscriptionRoot, PersonEditHistoryArguments> {
  PersonEditHistorySubscription({required this.variables});

  @override
  final DocumentNode document = PERSON_EDIT_HISTORY_SUBSCRIPTION_DOCUMENT;

  @override
  final String operationName =
      PERSON_EDIT_HISTORY_SUBSCRIPTION_DOCUMENT_OPERATION_NAME;

  @override
  final PersonEditHistoryArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  PersonEditHistory$SubscriptionRoot parse(Map<String, dynamic> json) =>
      PersonEditHistory$SubscriptionRoot.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class PersonServiceAttendanceArguments extends JsonSerializable
    with EquatableMixin {
  PersonServiceAttendanceArguments(
      {required this.personId,
      required this.serviceId,
      required this.asAdmin,
      required this.limit,
      this.addWhere});

  @override
  factory PersonServiceAttendanceArguments.fromJson(
          Map<String, dynamic> json) =>
      _$PersonServiceAttendanceArgumentsFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue personId;

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue serviceId;

  late bool asAdmin;

  late int limit;

  final List<HistoryAttendanceHistoryBoolExp>? addWhere;

  @override
  List<Object?> get props => [personId, serviceId, asAdmin, limit, addWhere];
  @override
  Map<String, dynamic> toJson() =>
      _$PersonServiceAttendanceArgumentsToJson(this);
}

final PERSON_SERVICE_ATTENDANCE_SUBSCRIPTION_DOCUMENT_OPERATION_NAME =
    'personServiceAttendance';
final PERSON_SERVICE_ATTENDANCE_SUBSCRIPTION_DOCUMENT =
    DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.subscription,
      name: NameNode(value: 'personServiceAttendance'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'personId')),
            type: NamedTypeNode(name: NameNode(value: 'uuid'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'serviceId')),
            type: NamedTypeNode(name: NameNode(value: 'uuid'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'asAdmin')),
            type: NamedTypeNode(
                name: NameNode(value: 'Boolean'), isNonNull: true),
            defaultValue:
                DefaultValueNode(value: BooleanValueNode(value: false)),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'limit')),
            type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: true),
            defaultValue: DefaultValueNode(value: IntValueNode(value: '200')),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'addWhere')),
            type: ListTypeNode(
                type: NamedTypeNode(
                    name: NameNode(value: 'HistoryAttendanceHistoryBoolExp'),
                    isNonNull: true),
                isNonNull: false),
            defaultValue: DefaultValueNode(value: ObjectValueNode(fields: [])),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'historyAttendanceHistory'),
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
                                name: NameNode(value: 'serviceId'),
                                value: ObjectValueNode(fields: [
                                  ObjectFieldNode(
                                      name: NameNode(value: '_eq'),
                                      value: VariableNode(
                                          name: NameNode(value: 'serviceId')))
                                ]))
                          ]),
                          ObjectValueNode(fields: [
                            ObjectFieldNode(
                                name: NameNode(value: 'asAdmin'),
                                value: ObjectValueNode(fields: [
                                  ObjectFieldNode(
                                      name: NameNode(value: '_eq'),
                                      value: VariableNode(
                                          name: NameNode(value: 'asAdmin')))
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
                  name: NameNode(value: 'orderBy'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: 'time'),
                        value: EnumValueNode(name: NameNode(value: 'DESC')))
                  ])),
              ArgumentNode(
                  name: NameNode(value: 'limit'),
                  value: VariableNode(name: NameNode(value: 'limit')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'recordedBy'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'time'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ]))
      ]))
]);

class PersonServiceAttendanceSubscription extends GraphQLQuery<
    PersonServiceAttendance$SubscriptionRoot,
    PersonServiceAttendanceArguments> {
  PersonServiceAttendanceSubscription({required this.variables});

  @override
  final DocumentNode document = PERSON_SERVICE_ATTENDANCE_SUBSCRIPTION_DOCUMENT;

  @override
  final String operationName =
      PERSON_SERVICE_ATTENDANCE_SUBSCRIPTION_DOCUMENT_OPERATION_NAME;

  @override
  final PersonServiceAttendanceArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  PersonServiceAttendance$SubscriptionRoot parse(Map<String, dynamic> json) =>
      PersonServiceAttendance$SubscriptionRoot.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class PersonClassAttendanceArguments extends JsonSerializable
    with EquatableMixin {
  PersonClassAttendanceArguments(
      {required this.personId,
      required this.classId,
      required this.asAdmin,
      required this.limit,
      this.addWhere});

  @override
  factory PersonClassAttendanceArguments.fromJson(Map<String, dynamic> json) =>
      _$PersonClassAttendanceArgumentsFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue personId;

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue classId;

  late bool asAdmin;

  late int limit;

  final List<HistoryAttendanceHistoryBoolExp>? addWhere;

  @override
  List<Object?> get props => [personId, classId, asAdmin, limit, addWhere];
  @override
  Map<String, dynamic> toJson() => _$PersonClassAttendanceArgumentsToJson(this);
}

final PERSON_CLASS_ATTENDANCE_SUBSCRIPTION_DOCUMENT_OPERATION_NAME =
    'personClassAttendance';
final PERSON_CLASS_ATTENDANCE_SUBSCRIPTION_DOCUMENT =
    DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.subscription,
      name: NameNode(value: 'personClassAttendance'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'personId')),
            type: NamedTypeNode(name: NameNode(value: 'uuid'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'classId')),
            type: NamedTypeNode(name: NameNode(value: 'uuid'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'asAdmin')),
            type: NamedTypeNode(
                name: NameNode(value: 'Boolean'), isNonNull: true),
            defaultValue:
                DefaultValueNode(value: BooleanValueNode(value: false)),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'limit')),
            type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: true),
            defaultValue: DefaultValueNode(value: IntValueNode(value: '200')),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'addWhere')),
            type: ListTypeNode(
                type: NamedTypeNode(
                    name: NameNode(value: 'HistoryAttendanceHistoryBoolExp'),
                    isNonNull: true),
                isNonNull: false),
            defaultValue: DefaultValueNode(value: ObjectValueNode(fields: [])),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'historyAttendanceHistory'),
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
                                name: NameNode(value: 'class'),
                                value: ObjectValueNode(fields: [
                                  ObjectFieldNode(
                                      name: NameNode(value: 'id'),
                                      value: ObjectValueNode(fields: [
                                        ObjectFieldNode(
                                            name: NameNode(value: '_eq'),
                                            value: VariableNode(
                                                name:
                                                    NameNode(value: 'classId')))
                                      ]))
                                ]))
                          ]),
                          ObjectValueNode(fields: [
                            ObjectFieldNode(
                                name: NameNode(value: 'asAdmin'),
                                value: ObjectValueNode(fields: [
                                  ObjectFieldNode(
                                      name: NameNode(value: '_eq'),
                                      value: VariableNode(
                                          name: NameNode(value: 'asAdmin')))
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
                  name: NameNode(value: 'orderBy'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: 'time'),
                        value: EnumValueNode(name: NameNode(value: 'DESC')))
                  ])),
              ArgumentNode(
                  name: NameNode(value: 'limit'),
                  value: VariableNode(name: NameNode(value: 'limit')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'recordedBy'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'time'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ]))
      ]))
]);

class PersonClassAttendanceSubscription extends GraphQLQuery<
    PersonClassAttendance$SubscriptionRoot, PersonClassAttendanceArguments> {
  PersonClassAttendanceSubscription({required this.variables});

  @override
  final DocumentNode document = PERSON_CLASS_ATTENDANCE_SUBSCRIPTION_DOCUMENT;

  @override
  final String operationName =
      PERSON_CLASS_ATTENDANCE_SUBSCRIPTION_DOCUMENT_OPERATION_NAME;

  @override
  final PersonClassAttendanceArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  PersonClassAttendance$SubscriptionRoot parse(Map<String, dynamic> json) =>
      PersonClassAttendance$SubscriptionRoot.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class PersonGroupAttendanceArguments extends JsonSerializable
    with EquatableMixin {
  PersonGroupAttendanceArguments(
      {required this.personId,
      required this.groupId,
      required this.asAdmin,
      required this.limit,
      this.addWhere});

  @override
  factory PersonGroupAttendanceArguments.fromJson(Map<String, dynamic> json) =>
      _$PersonGroupAttendanceArgumentsFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue personId;

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue groupId;

  late bool asAdmin;

  late int limit;

  final List<HistoryAttendanceHistoryBoolExp>? addWhere;

  @override
  List<Object?> get props => [personId, groupId, asAdmin, limit, addWhere];
  @override
  Map<String, dynamic> toJson() => _$PersonGroupAttendanceArgumentsToJson(this);
}

final PERSON_GROUP_ATTENDANCE_SUBSCRIPTION_DOCUMENT_OPERATION_NAME =
    'personGroupAttendance';
final PERSON_GROUP_ATTENDANCE_SUBSCRIPTION_DOCUMENT =
    DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.subscription,
      name: NameNode(value: 'personGroupAttendance'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'personId')),
            type: NamedTypeNode(name: NameNode(value: 'uuid'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'groupId')),
            type: NamedTypeNode(name: NameNode(value: 'uuid'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'asAdmin')),
            type: NamedTypeNode(
                name: NameNode(value: 'Boolean'), isNonNull: true),
            defaultValue:
                DefaultValueNode(value: BooleanValueNode(value: false)),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'limit')),
            type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: true),
            defaultValue: DefaultValueNode(value: IntValueNode(value: '200')),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'addWhere')),
            type: ListTypeNode(
                type: NamedTypeNode(
                    name: NameNode(value: 'HistoryAttendanceHistoryBoolExp'),
                    isNonNull: true),
                isNonNull: false),
            defaultValue: DefaultValueNode(value: ObjectValueNode(fields: [])),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'historyAttendanceHistory'),
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
                                name: NameNode(value: 'groupId'),
                                value: ObjectValueNode(fields: [
                                  ObjectFieldNode(
                                      name: NameNode(value: '_eq'),
                                      value: VariableNode(
                                          name: NameNode(value: 'groupId')))
                                ]))
                          ]),
                          ObjectValueNode(fields: [
                            ObjectFieldNode(
                                name: NameNode(value: 'asAdmin'),
                                value: ObjectValueNode(fields: [
                                  ObjectFieldNode(
                                      name: NameNode(value: '_eq'),
                                      value: VariableNode(
                                          name: NameNode(value: 'asAdmin')))
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
                  name: NameNode(value: 'orderBy'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: 'time'),
                        value: EnumValueNode(name: NameNode(value: 'DESC')))
                  ])),
              ArgumentNode(
                  name: NameNode(value: 'limit'),
                  value: VariableNode(name: NameNode(value: 'limit')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'recordedBy'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'time'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ]))
      ]))
]);

class PersonGroupAttendanceSubscription extends GraphQLQuery<
    PersonGroupAttendance$SubscriptionRoot, PersonGroupAttendanceArguments> {
  PersonGroupAttendanceSubscription({required this.variables});

  @override
  final DocumentNode document = PERSON_GROUP_ATTENDANCE_SUBSCRIPTION_DOCUMENT;

  @override
  final String operationName =
      PERSON_GROUP_ATTENDANCE_SUBSCRIPTION_DOCUMENT_OPERATION_NAME;

  @override
  final PersonGroupAttendanceArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  PersonGroupAttendance$SubscriptionRoot parse(Map<String, dynamic> json) =>
      PersonGroupAttendance$SubscriptionRoot.fromJson(json);
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
                    name: NameNode(value: 'ServicesBoolExp'), isNonNull: true),
                isNonNull: false),
            defaultValue: DefaultValueNode(value: ObjectValueNode(fields: [])),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'groupsAddWhere')),
            type: ListTypeNode(
                type: NamedTypeNode(
                    name: NameNode(value: 'GroupsBoolExp'), isNonNull: true),
                isNonNull: false),
            defaultValue: DefaultValueNode(value: ObjectValueNode(fields: [])),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'classesAddWhere')),
            type: ListTypeNode(
                type: NamedTypeNode(
                    name: NameNode(value: 'ClassesBoolExp'), isNonNull: true),
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
                  name: NameNode(value: 'orderBy'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: 'studyYearFrom'),
                        value: EnumValueNode(name: NameNode(value: 'ASC'))),
                    ObjectFieldNode(
                        name: NameNode(value: 'studyYearTo'),
                        value: EnumValueNode(name: NameNode(value: 'ASC')))
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
                        name: NameNode(value: 'orderBy'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                              name: NameNode(value: 'studyYear'),
                              value: ObjectValueNode(fields: [
                                ObjectFieldNode(
                                    name: NameNode(value: 'order'),
                                    value: EnumValueNode(
                                        name: NameNode(value: 'ASC')))
                              ])),
                          ObjectFieldNode(
                              name: NameNode(value: 'serviceGender'),
                              value: EnumValueNode(
                                  name: NameNode(value: 'DESC_NULLS_LAST')))
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
                        name: NameNode(value: 'orderBy'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                              name: NameNode(value: 'service'),
                              value: ObjectValueNode(fields: [
                                ObjectFieldNode(
                                    name: NameNode(value: 'studyYearFrom'),
                                    value: EnumValueNode(
                                        name: NameNode(value: 'ASC'))),
                                ObjectFieldNode(
                                    name: NameNode(value: 'studyYearTo'),
                                    value: EnumValueNode(
                                        name: NameNode(value: 'ASC')))
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
                    name: NameNode(value: 'StreetsBoolExp'), isNonNull: true),
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
                  name: NameNode(value: 'orderBy'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: 'name'),
                        value: EnumValueNode(name: NameNode(value: 'ASC')))
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
class AnalyzeUserAttendanceArguments extends JsonSerializable
    with EquatableMixin {
  AnalyzeUserAttendanceArguments(
      {required this.dateFrom,
      required this.dateTo,
      required this.personId,
      required this.userId,
      this.groupsIds,
      this.classesIds,
      this.servicesIds});

  @override
  factory AnalyzeUserAttendanceArguments.fromJson(Map<String, dynamic> json) =>
      _$AnalyzeUserAttendanceArgumentsFromJson(json);

  late DateTime dateFrom;

  late DateTime dateTo;

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue personId;

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue userId;

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
      [dateFrom, dateTo, personId, userId, groupsIds, classesIds, servicesIds];
  @override
  Map<String, dynamic> toJson() => _$AnalyzeUserAttendanceArgumentsToJson(this);
}

final ANALYZE_USER_ATTENDANCE_QUERY_DOCUMENT_OPERATION_NAME =
    'analyzeUserAttendance';
final ANALYZE_USER_ATTENDANCE_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'analyzeUserAttendance'),
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
            variable: VariableNode(name: NameNode(value: 'userId')),
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
            name: NameNode(value: 'usersByPk'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'uid'),
                  value: VariableNode(name: NameNode(value: 'userId')))
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
                  name: NameNode(value: 'adminOn'),
                  alias: NameNode(value: 'servicesHistory'),
                  arguments: [
                    ArgumentNode(
                        name: NameNode(value: 'where'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                              name: NameNode(value: 'service'),
                              value: ObjectValueNode(fields: [
                                ObjectFieldNode(
                                    name: NameNode(value: 'id'),
                                    value: ObjectValueNode(fields: [
                                      ObjectFieldNode(
                                          name: NameNode(value: '_in'),
                                          value: VariableNode(
                                              name: NameNode(
                                                  value: 'servicesIds')))
                                    ]))
                              ]))
                        ])),
                    ArgumentNode(
                        name: NameNode(value: 'distinctOn'),
                        value: EnumValueNode(
                            name: NameNode(value: 'adminOnService')))
                  ],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'permissionId'),
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
                              name:
                                  NameNode(value: 'attendanceHistoryAggregate'),
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
                                          ])),
                                      ObjectFieldNode(
                                          name: NameNode(value: 'asAdmin'),
                                          value: ObjectValueNode(fields: [
                                            ObjectFieldNode(
                                                name: NameNode(value: '_eq'),
                                                value: BooleanValueNode(
                                                    value: true))
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
                                  value: 'attendanceDaysConstraintsAggregate'),
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
                  name: NameNode(value: 'adminOn'),
                  alias: NameNode(value: 'classesHistory'),
                  arguments: [
                    ArgumentNode(
                        name: NameNode(value: 'where'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                              name: NameNode(value: 'classes'),
                              value: ObjectValueNode(fields: [
                                ObjectFieldNode(
                                    name: NameNode(value: 'id'),
                                    value: ObjectValueNode(fields: [
                                      ObjectFieldNode(
                                          name: NameNode(value: '_in'),
                                          value: VariableNode(
                                              name: NameNode(
                                                  value: 'classesIds')))
                                    ]))
                              ]))
                        ])),
                    ArgumentNode(
                        name: NameNode(value: 'distinctOn'),
                        value: EnumValueNode(
                            name: NameNode(value: 'adminOnService')))
                  ],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'permissionId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
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
                                              name: NameNode(
                                                  value: 'classesIds')))
                                    ]))
                              ])),
                          ArgumentNode(
                              name: NameNode(value: 'distinctOn'),
                              value: EnumValueNode(name: NameNode(value: 'id')))
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
                              name:
                                  NameNode(value: 'attendanceHistoryAggregate'),
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
                                          ])),
                                      ObjectFieldNode(
                                          name: NameNode(value: 'asAdmin'),
                                          value: ObjectValueNode(fields: [
                                            ObjectFieldNode(
                                                name: NameNode(value: '_eq'),
                                                value: BooleanValueNode(
                                                    value: true))
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
                                  value: 'attendanceDaysConstraintsAggregate'),
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
                  name: NameNode(value: 'adminOn'),
                  alias: NameNode(value: 'groupsHistory'),
                  arguments: [
                    ArgumentNode(
                        name: NameNode(value: 'where'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                              name: NameNode(value: 'group'),
                              value: ObjectValueNode(fields: [
                                ObjectFieldNode(
                                    name: NameNode(value: 'id'),
                                    value: ObjectValueNode(fields: [
                                      ObjectFieldNode(
                                          name: NameNode(value: '_in'),
                                          value: VariableNode(
                                              name:
                                                  NameNode(value: 'groupsIds')))
                                    ]))
                              ]))
                        ])),
                    ArgumentNode(
                        name: NameNode(value: 'distinctOn'),
                        value: EnumValueNode(
                            name: NameNode(value: 'adminOnGroup')))
                  ],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'permissionId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
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
                              name:
                                  NameNode(value: 'attendanceHistoryAggregate'),
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
                                          ])),
                                      ObjectFieldNode(
                                          name: NameNode(value: 'asAdmin'),
                                          value: ObjectValueNode(fields: [
                                            ObjectFieldNode(
                                                name: NameNode(value: '_eq'),
                                                value: BooleanValueNode(
                                                    value: true))
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
                                  value: 'attendanceDaysConstraintsAggregate'),
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

class AnalyzeUserAttendanceQuery extends GraphQLQuery<
    AnalyzeUserAttendance$QueryRoot, AnalyzeUserAttendanceArguments> {
  AnalyzeUserAttendanceQuery({required this.variables});

  @override
  final DocumentNode document = ANALYZE_USER_ATTENDANCE_QUERY_DOCUMENT;

  @override
  final String operationName =
      ANALYZE_USER_ATTENDANCE_QUERY_DOCUMENT_OPERATION_NAME;

  @override
  final AnalyzeUserAttendanceArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  AnalyzeUserAttendance$QueryRoot parse(Map<String, dynamic> json) =>
      AnalyzeUserAttendance$QueryRoot.fromJson(json);
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
            name: NameNode(value: 'usersByPk'),
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
                  name: NameNode(value: 'userData'),
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

@JsonSerializable(explicitToJson: true)
class WatchUserArguments extends JsonSerializable with EquatableMixin {
  WatchUserArguments({required this.uid});

  @override
  factory WatchUserArguments.fromJson(Map<String, dynamic> json) =>
      _$WatchUserArgumentsFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue uid;

  @override
  List<Object?> get props => [uid];
  @override
  Map<String, dynamic> toJson() => _$WatchUserArgumentsToJson(this);
}

final WATCH_USER_SUBSCRIPTION_DOCUMENT_OPERATION_NAME = 'watchUser';
final WATCH_USER_SUBSCRIPTION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.subscription,
      name: NameNode(value: 'watchUser'),
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
            name: NameNode(value: 'usersByPk'),
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
                  ])),
              FieldNode(
                  name: NameNode(value: 'adminOn'),
                  alias: null,
                  arguments: [
                    ArgumentNode(
                        name: NameNode(value: 'orderBy'),
                        value: ListValueNode(values: [
                          ObjectValueNode(fields: [
                            ObjectFieldNode(
                                name: NameNode(value: 'area'),
                                value: ObjectValueNode(fields: [
                                  ObjectFieldNode(
                                      name: NameNode(value: 'name'),
                                      value: EnumValueNode(
                                          name: NameNode(
                                              value: 'ASC_NULLS_LAST')))
                                ]))
                          ]),
                          ObjectValueNode(fields: [
                            ObjectFieldNode(
                                name: NameNode(value: 'service'),
                                value: ObjectValueNode(fields: [
                                  ObjectFieldNode(
                                      name: NameNode(value: 'studyYearFrom'),
                                      value: EnumValueNode(
                                          name: NameNode(value: 'ASC'))),
                                  ObjectFieldNode(
                                      name: NameNode(value: 'studyYearTo'),
                                      value: EnumValueNode(
                                          name: NameNode(value: 'ASC')))
                                ]))
                          ]),
                          ObjectValueNode(fields: [
                            ObjectFieldNode(
                                name: NameNode(value: 'serviceStudyYear'),
                                value:
                                    EnumValueNode(name: NameNode(value: 'ASC')))
                          ]),
                          ObjectValueNode(fields: [
                            ObjectFieldNode(
                                name: NameNode(value: 'serviceGender'),
                                value: EnumValueNode(
                                    name: NameNode(value: 'DESC_NULLS_FIRST')))
                          ]),
                          ObjectValueNode(fields: [
                            ObjectFieldNode(
                                name: NameNode(value: 'service'),
                                value: ObjectValueNode(fields: [
                                  ObjectFieldNode(
                                      name: NameNode(value: 'name'),
                                      value: EnumValueNode(
                                          name: NameNode(
                                              value: 'ASC_NULLS_LAST')))
                                ]))
                          ]),
                          ObjectValueNode(fields: [
                            ObjectFieldNode(
                                name: NameNode(value: 'group'),
                                value: ObjectValueNode(fields: [
                                  ObjectFieldNode(
                                      name: NameNode(value: 'name'),
                                      value: EnumValueNode(
                                          name: NameNode(
                                              value: 'ASC_NULLS_LAST')))
                                ]))
                          ])
                        ]))
                  ],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'permissionId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'area'),
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
                        name: NameNode(value: 'areaAllowEdit'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'areaAdminOnUsers'),
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
                        ])),
                    FieldNode(
                        name: NameNode(value: 'serviceStudyYearData'),
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
                        name: NameNode(value: 'serviceGender'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'serviceAllowEdit'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'serviceAdminOnUsers'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'classes'),
                        alias: null,
                        arguments: [
                          ArgumentNode(
                              name: NameNode(value: 'orderBy'),
                              value: ObjectValueNode(fields: [
                                ObjectFieldNode(
                                    name: NameNode(value: 'name'),
                                    value: EnumValueNode(
                                        name: NameNode(value: 'ASC')))
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
                              selectionSet: null)
                        ])),
                    FieldNode(
                        name: NameNode(value: 'groupAllowEdit'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'groupAdminOnUsers'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: 'userData'),
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
                        name: NameNode(value: 'email'),
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
                        name: NameNode(value: 'permissions'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ]))
            ]))
      ]))
]);

class WatchUserSubscription
    extends GraphQLQuery<WatchUser$SubscriptionRoot, WatchUserArguments> {
  WatchUserSubscription({required this.variables});

  @override
  final DocumentNode document = WATCH_USER_SUBSCRIPTION_DOCUMENT;

  @override
  final String operationName = WATCH_USER_SUBSCRIPTION_DOCUMENT_OPERATION_NAME;

  @override
  final WatchUserArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  WatchUser$SubscriptionRoot parse(Map<String, dynamic> json) =>
      WatchUser$SubscriptionRoot.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class UserEditHistoryArguments extends JsonSerializable with EquatableMixin {
  UserEditHistoryArguments({required this.userId, this.addWhere, this.limit});

  @override
  factory UserEditHistoryArguments.fromJson(Map<String, dynamic> json) =>
      _$UserEditHistoryArgumentsFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartUuidValue,
      toJson: fromDartUuidValueToGraphQLUuid)
  late UuidValue userId;

  final List<HistoryEditHistoryBoolExp>? addWhere;

  final int? limit;

  @override
  List<Object?> get props => [userId, addWhere, limit];
  @override
  Map<String, dynamic> toJson() => _$UserEditHistoryArgumentsToJson(this);
}

final USER_EDIT_HISTORY_SUBSCRIPTION_DOCUMENT_OPERATION_NAME =
    'userEditHistory';
final USER_EDIT_HISTORY_SUBSCRIPTION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.subscription,
      name: NameNode(value: 'userEditHistory'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'userId')),
            type: NamedTypeNode(name: NameNode(value: 'uuid'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'addWhere')),
            type: ListTypeNode(
                type: NamedTypeNode(
                    name: NameNode(value: 'HistoryEditHistoryBoolExp'),
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
            name: NameNode(value: 'historyEditHistory'),
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
                                          value: 'users', isBlock: false))
                                ]))
                          ]),
                          ObjectValueNode(fields: [
                            ObjectFieldNode(
                                name: NameNode(value: 'recordId'),
                                value: ObjectValueNode(fields: [
                                  ObjectFieldNode(
                                      name: NameNode(value: '_eq'),
                                      value: VariableNode(
                                          name: NameNode(value: 'userId')))
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
                  name: NameNode(value: 'orderBy'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: 'time'),
                        value: EnumValueNode(name: NameNode(value: 'DESC')))
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

class UserEditHistorySubscription extends GraphQLQuery<
    UserEditHistory$SubscriptionRoot, UserEditHistoryArguments> {
  UserEditHistorySubscription({required this.variables});

  @override
  final DocumentNode document = USER_EDIT_HISTORY_SUBSCRIPTION_DOCUMENT;

  @override
  final String operationName =
      USER_EDIT_HISTORY_SUBSCRIPTION_DOCUMENT_OPERATION_NAME;

  @override
  final UserEditHistoryArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  UserEditHistory$SubscriptionRoot parse(Map<String, dynamic> json) =>
      UserEditHistory$SubscriptionRoot.fromJson(json);
}
