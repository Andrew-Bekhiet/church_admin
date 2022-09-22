// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.12

part of 'graphql.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAreasStream$SubscriptionRoot$Areas
    _$GetAreasStream$SubscriptionRoot$AreasFromJson(
            Map<String, dynamic> json) =>
        GetAreasStream$SubscriptionRoot$Areas()
          ..id = fromGraphQLUuidToDartUuidValue(json['id'])
          ..name = json['name'] as String
          ..bounds =
              fromGraphQLGeographyNullableToDartJsonNullable(json['bounds'])
          ..color = json['color'] as int?
          ..photoUpdatedAt = json['photoUpdatedAt'] == null
              ? null
              : DateTime.parse(json['photoUpdatedAt'] as String);

Map<String, dynamic> _$GetAreasStream$SubscriptionRoot$AreasToJson(
        GetAreasStream$SubscriptionRoot$Areas instance) =>
    <String, dynamic>{
      'id': fromDartUuidValueToGraphQLUuid(instance.id),
      'name': instance.name,
      'bounds': fromDartJsonNullableToGraphQLGeographyNullable(instance.bounds),
      'color': instance.color,
      'photoUpdatedAt': instance.photoUpdatedAt?.toIso8601String(),
    };

GetAreasStream$SubscriptionRoot _$GetAreasStream$SubscriptionRootFromJson(
        Map<String, dynamic> json) =>
    GetAreasStream$SubscriptionRoot()
      ..areas = (json['areas'] as List<dynamic>)
          .map((e) => GetAreasStream$SubscriptionRoot$Areas.fromJson(
              e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$GetAreasStream$SubscriptionRootToJson(
        GetAreasStream$SubscriptionRoot instance) =>
    <String, dynamic>{
      'areas': instance.areas.map((e) => e.toJson()).toList(),
    };

AreasBoolExp _$AreasBoolExpFromJson(Map<String, dynamic> json) => AreasBoolExp(
      $and: (json['_and'] as List<dynamic>?)
          ?.map((e) => AreasBoolExp.fromJson(e as Map<String, dynamic>))
          .toList(),
      $not: json['_not'] == null
          ? null
          : AreasBoolExp.fromJson(json['_not'] as Map<String, dynamic>),
      $or: (json['_or'] as List<dynamic>?)
          ?.map((e) => AreasBoolExp.fromJson(e as Map<String, dynamic>))
          .toList(),
      adminUsers: json['adminUsers'] == null
          ? null
          : UsersPermissionsBoolExp.fromJson(
              json['adminUsers'] as Map<String, dynamic>),
      bounds: json['bounds'] == null
          ? null
          : GeographyComparisonExp.fromJson(
              json['bounds'] as Map<String, dynamic>),
      color: json['color'] == null
          ? null
          : BigintComparisonExp.fromJson(json['color'] as Map<String, dynamic>),
      families: json['families'] == null
          ? null
          : FamiliesBoolExp.fromJson(json['families'] as Map<String, dynamic>),
      firestoreId: json['firestoreId'] == null
          ? null
          : StringComparisonExp.fromJson(
              json['firestoreId'] as Map<String, dynamic>),
      id: json['id'] == null
          ? null
          : UuidComparisonExp.fromJson(json['id'] as Map<String, dynamic>),
      isUserAllowedToRead: json['isUserAllowedToRead'] == null
          ? null
          : BooleanComparisonExp.fromJson(
              json['isUserAllowedToRead'] as Map<String, dynamic>),
      isUserAllowedToWrite: json['isUserAllowedToWrite'] == null
          ? null
          : BooleanComparisonExp.fromJson(
              json['isUserAllowedToWrite'] as Map<String, dynamic>),
      lastEdit: json['lastEdit'] == null
          ? null
          : JsonbComparisonExp.fromJson(
              json['lastEdit'] as Map<String, dynamic>),
      name: json['name'] == null
          ? null
          : StringComparisonExp.fromJson(json['name'] as Map<String, dynamic>),
      persons: json['persons'] == null
          ? null
          : PersonsBoolExp.fromJson(json['persons'] as Map<String, dynamic>),
      photoUpdatedAt: json['photoUpdatedAt'] == null
          ? null
          : TimestamptzComparisonExp.fromJson(
              json['photoUpdatedAt'] as Map<String, dynamic>),
      stores: json['stores'] == null
          ? null
          : StoresBoolExp.fromJson(json['stores'] as Map<String, dynamic>),
      streets: json['streets'] == null
          ? null
          : StreetsBoolExp.fromJson(json['streets'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AreasBoolExpToJson(AreasBoolExp instance) =>
    <String, dynamic>{
      '_and': instance.$and?.map((e) => e.toJson()).toList(),
      '_not': instance.$not?.toJson(),
      '_or': instance.$or?.map((e) => e.toJson()).toList(),
      'adminUsers': instance.adminUsers?.toJson(),
      'bounds': instance.bounds?.toJson(),
      'color': instance.color?.toJson(),
      'families': instance.families?.toJson(),
      'firestoreId': instance.firestoreId?.toJson(),
      'id': instance.id?.toJson(),
      'isUserAllowedToRead': instance.isUserAllowedToRead?.toJson(),
      'isUserAllowedToWrite': instance.isUserAllowedToWrite?.toJson(),
      'lastEdit': instance.lastEdit?.toJson(),
      'name': instance.name?.toJson(),
      'persons': instance.persons?.toJson(),
      'photoUpdatedAt': instance.photoUpdatedAt?.toJson(),
      'stores': instance.stores?.toJson(),
      'streets': instance.streets?.toJson(),
    };

UsersPermissionsBoolExp _$UsersPermissionsBoolExpFromJson(
        Map<String, dynamic> json) =>
    UsersPermissionsBoolExp(
      $and: (json['_and'] as List<dynamic>?)
          ?.map((e) =>
              UsersPermissionsBoolExp.fromJson(e as Map<String, dynamic>))
          .toList(),
      $not: json['_not'] == null
          ? null
          : UsersPermissionsBoolExp.fromJson(
              json['_not'] as Map<String, dynamic>),
      $or: (json['_or'] as List<dynamic>?)
          ?.map((e) =>
              UsersPermissionsBoolExp.fromJson(e as Map<String, dynamic>))
          .toList(),
      adminOnArea: json['adminOnArea'] == null
          ? null
          : UuidComparisonExp.fromJson(
              json['adminOnArea'] as Map<String, dynamic>),
      adminOnGroup: json['adminOnGroup'] == null
          ? null
          : UuidComparisonExp.fromJson(
              json['adminOnGroup'] as Map<String, dynamic>),
      adminOnService: json['adminOnService'] == null
          ? null
          : UuidComparisonExp.fromJson(
              json['adminOnService'] as Map<String, dynamic>),
      area: json['area'] == null
          ? null
          : AreasBoolExp.fromJson(json['area'] as Map<String, dynamic>),
      areaAdminOnUsers: json['areaAdminOnUsers'] == null
          ? null
          : BooleanComparisonExp.fromJson(
              json['areaAdminOnUsers'] as Map<String, dynamic>),
      areaAllowEdit: json['areaAllowEdit'] == null
          ? null
          : BooleanComparisonExp.fromJson(
              json['areaAllowEdit'] as Map<String, dynamic>),
      classes: json['classes'] == null
          ? null
          : ClassesBoolExp.fromJson(json['classes'] as Map<String, dynamic>),
      group: json['group'] == null
          ? null
          : GroupsBoolExp.fromJson(json['group'] as Map<String, dynamic>),
      groupAdminOnUsers: json['groupAdminOnUsers'] == null
          ? null
          : BooleanComparisonExp.fromJson(
              json['groupAdminOnUsers'] as Map<String, dynamic>),
      groupAllowEdit: json['groupAllowEdit'] == null
          ? null
          : BooleanComparisonExp.fromJson(
              json['groupAllowEdit'] as Map<String, dynamic>),
      isUserAllowedToRead: json['isUserAllowedToRead'] == null
          ? null
          : BooleanComparisonExp.fromJson(
              json['isUserAllowedToRead'] as Map<String, dynamic>),
      isUserAllowedToChange: json['is_user_allowed_to_change'] == null
          ? null
          : BooleanComparisonExp.fromJson(
              json['is_user_allowed_to_change'] as Map<String, dynamic>),
      permissionId: json['permissionId'] == null
          ? null
          : UuidComparisonExp.fromJson(
              json['permissionId'] as Map<String, dynamic>),
      service: json['service'] == null
          ? null
          : ServicesBoolExp.fromJson(json['service'] as Map<String, dynamic>),
      serviceAdminOnUsers: json['serviceAdminOnUsers'] == null
          ? null
          : BooleanComparisonExp.fromJson(
              json['serviceAdminOnUsers'] as Map<String, dynamic>),
      serviceAllowEdit: json['serviceAllowEdit'] == null
          ? null
          : BooleanComparisonExp.fromJson(
              json['serviceAllowEdit'] as Map<String, dynamic>),
      serviceGender: json['serviceGender'] == null
          ? null
          : BooleanComparisonExp.fromJson(
              json['serviceGender'] as Map<String, dynamic>),
      serviceStudyYear: json['serviceStudyYear'] == null
          ? null
          : SmallintComparisonExp.fromJson(
              json['serviceStudyYear'] as Map<String, dynamic>),
      serviceStudyYearData: json['serviceStudyYearData'] == null
          ? null
          : StudyYearsBoolExp.fromJson(
              json['serviceStudyYearData'] as Map<String, dynamic>),
      uid: json['uid'] == null
          ? null
          : UuidComparisonExp.fromJson(json['uid'] as Map<String, dynamic>),
      user: json['user'] == null
          ? null
          : UsersBoolExp.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UsersPermissionsBoolExpToJson(
        UsersPermissionsBoolExp instance) =>
    <String, dynamic>{
      '_and': instance.$and?.map((e) => e.toJson()).toList(),
      '_not': instance.$not?.toJson(),
      '_or': instance.$or?.map((e) => e.toJson()).toList(),
      'adminOnArea': instance.adminOnArea?.toJson(),
      'adminOnGroup': instance.adminOnGroup?.toJson(),
      'adminOnService': instance.adminOnService?.toJson(),
      'area': instance.area?.toJson(),
      'areaAdminOnUsers': instance.areaAdminOnUsers?.toJson(),
      'areaAllowEdit': instance.areaAllowEdit?.toJson(),
      'classes': instance.classes?.toJson(),
      'group': instance.group?.toJson(),
      'groupAdminOnUsers': instance.groupAdminOnUsers?.toJson(),
      'groupAllowEdit': instance.groupAllowEdit?.toJson(),
      'isUserAllowedToRead': instance.isUserAllowedToRead?.toJson(),
      'is_user_allowed_to_change': instance.isUserAllowedToChange?.toJson(),
      'permissionId': instance.permissionId?.toJson(),
      'service': instance.service?.toJson(),
      'serviceAdminOnUsers': instance.serviceAdminOnUsers?.toJson(),
      'serviceAllowEdit': instance.serviceAllowEdit?.toJson(),
      'serviceGender': instance.serviceGender?.toJson(),
      'serviceStudyYear': instance.serviceStudyYear?.toJson(),
      'serviceStudyYearData': instance.serviceStudyYearData?.toJson(),
      'uid': instance.uid?.toJson(),
      'user': instance.user?.toJson(),
    };

UuidComparisonExp _$UuidComparisonExpFromJson(Map<String, dynamic> json) =>
    UuidComparisonExp(
      $eq: fromGraphQLUuidNullableToDartUuidValueNullable(json['_eq']),
      $gt: fromGraphQLUuidNullableToDartUuidValueNullable(json['_gt']),
      $gte: fromGraphQLUuidNullableToDartUuidValueNullable(json['_gte']),
      $in: fromGraphQLListNullableUuidToDartListNullableUuidValue(
          json['_in'] as List?),
      $isNull: json['_isNull'] as bool?,
      $lt: fromGraphQLUuidNullableToDartUuidValueNullable(json['_lt']),
      $lte: fromGraphQLUuidNullableToDartUuidValueNullable(json['_lte']),
      $neq: fromGraphQLUuidNullableToDartUuidValueNullable(json['_neq']),
      $nin: fromGraphQLListNullableUuidToDartListNullableUuidValue(
          json['_nin'] as List?),
    );

Map<String, dynamic> _$UuidComparisonExpToJson(UuidComparisonExp instance) =>
    <String, dynamic>{
      '_eq': fromDartUuidValueNullableToGraphQLUuidNullable(instance.$eq),
      '_gt': fromDartUuidValueNullableToGraphQLUuidNullable(instance.$gt),
      '_gte': fromDartUuidValueNullableToGraphQLUuidNullable(instance.$gte),
      '_in':
          fromDartListNullableUuidValueToGraphQLListNullableUuid(instance.$in),
      '_isNull': instance.$isNull,
      '_lt': fromDartUuidValueNullableToGraphQLUuidNullable(instance.$lt),
      '_lte': fromDartUuidValueNullableToGraphQLUuidNullable(instance.$lte),
      '_neq': fromDartUuidValueNullableToGraphQLUuidNullable(instance.$neq),
      '_nin':
          fromDartListNullableUuidValueToGraphQLListNullableUuid(instance.$nin),
    };

BooleanComparisonExp _$BooleanComparisonExpFromJson(
        Map<String, dynamic> json) =>
    BooleanComparisonExp(
      $eq: json['_eq'] as bool?,
      $gt: json['_gt'] as bool?,
      $gte: json['_gte'] as bool?,
      $in: (json['_in'] as List<dynamic>?)?.map((e) => e as bool).toList(),
      $isNull: json['_isNull'] as bool?,
      $lt: json['_lt'] as bool?,
      $lte: json['_lte'] as bool?,
      $neq: json['_neq'] as bool?,
      $nin: (json['_nin'] as List<dynamic>?)?.map((e) => e as bool).toList(),
    );

Map<String, dynamic> _$BooleanComparisonExpToJson(
        BooleanComparisonExp instance) =>
    <String, dynamic>{
      '_eq': instance.$eq,
      '_gt': instance.$gt,
      '_gte': instance.$gte,
      '_in': instance.$in,
      '_isNull': instance.$isNull,
      '_lt': instance.$lt,
      '_lte': instance.$lte,
      '_neq': instance.$neq,
      '_nin': instance.$nin,
    };

ClassesBoolExp _$ClassesBoolExpFromJson(Map<String, dynamic> json) =>
    ClassesBoolExp(
      $and: (json['_and'] as List<dynamic>?)
          ?.map((e) => ClassesBoolExp.fromJson(e as Map<String, dynamic>))
          .toList(),
      $not: json['_not'] == null
          ? null
          : ClassesBoolExp.fromJson(json['_not'] as Map<String, dynamic>),
      $or: (json['_or'] as List<dynamic>?)
          ?.map((e) => ClassesBoolExp.fromJson(e as Map<String, dynamic>))
          .toList(),
      attendanceDaysConstraints: json['attendanceDaysConstraints'] == null
          ? null
          : HistoryAttendanceDaysConstraintsBoolExp.fromJson(
              json['attendanceDaysConstraints'] as Map<String, dynamic>),
      attendanceHistory: json['attendanceHistory'] == null
          ? null
          : HistoryAttendanceHistoryBoolExp.fromJson(
              json['attendanceHistory'] as Map<String, dynamic>),
      color: json['color'] == null
          ? null
          : BigintComparisonExp.fromJson(json['color'] as Map<String, dynamic>),
      id: json['id'] == null
          ? null
          : UuidComparisonExp.fromJson(json['id'] as Map<String, dynamic>),
      isUserAllowedToRead: json['isUserAllowedToRead'] == null
          ? null
          : BooleanComparisonExp.fromJson(
              json['isUserAllowedToRead'] as Map<String, dynamic>),
      isUserAllowedToWrite: json['isUserAllowedToWrite'] == null
          ? null
          : BooleanComparisonExp.fromJson(
              json['isUserAllowedToWrite'] as Map<String, dynamic>),
      name: json['name'] == null
          ? null
          : StringComparisonExp.fromJson(json['name'] as Map<String, dynamic>),
      photoUpdatedAt: json['photoUpdatedAt'] == null
          ? null
          : TimeComparisonExp.fromJson(
              json['photoUpdatedAt'] as Map<String, dynamic>),
      service: json['service'] == null
          ? null
          : ServicesBoolExp.fromJson(json['service'] as Map<String, dynamic>),
      serviceGender: json['serviceGender'] == null
          ? null
          : BooleanComparisonExp.fromJson(
              json['serviceGender'] as Map<String, dynamic>),
      serviceId: json['serviceId'] == null
          ? null
          : UuidComparisonExp.fromJson(
              json['serviceId'] as Map<String, dynamic>),
      serviceStudyYear: json['serviceStudyYear'] == null
          ? null
          : IntComparisonExp.fromJson(
              json['serviceStudyYear'] as Map<String, dynamic>),
      studyYear: json['studyYear'] == null
          ? null
          : StudyYearsBoolExp.fromJson(
              json['studyYear'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ClassesBoolExpToJson(ClassesBoolExp instance) =>
    <String, dynamic>{
      '_and': instance.$and?.map((e) => e.toJson()).toList(),
      '_not': instance.$not?.toJson(),
      '_or': instance.$or?.map((e) => e.toJson()).toList(),
      'attendanceDaysConstraints': instance.attendanceDaysConstraints?.toJson(),
      'attendanceHistory': instance.attendanceHistory?.toJson(),
      'color': instance.color?.toJson(),
      'id': instance.id?.toJson(),
      'isUserAllowedToRead': instance.isUserAllowedToRead?.toJson(),
      'isUserAllowedToWrite': instance.isUserAllowedToWrite?.toJson(),
      'name': instance.name?.toJson(),
      'photoUpdatedAt': instance.photoUpdatedAt?.toJson(),
      'service': instance.service?.toJson(),
      'serviceGender': instance.serviceGender?.toJson(),
      'serviceId': instance.serviceId?.toJson(),
      'serviceStudyYear': instance.serviceStudyYear?.toJson(),
      'studyYear': instance.studyYear?.toJson(),
    };

HistoryAttendanceDaysConstraintsBoolExp
    _$HistoryAttendanceDaysConstraintsBoolExpFromJson(
            Map<String, dynamic> json) =>
        HistoryAttendanceDaysConstraintsBoolExp(
          $and: (json['_and'] as List<dynamic>?)
              ?.map((e) => HistoryAttendanceDaysConstraintsBoolExp.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
          $not: json['_not'] == null
              ? null
              : HistoryAttendanceDaysConstraintsBoolExp.fromJson(
                  json['_not'] as Map<String, dynamic>),
          $or: (json['_or'] as List<dynamic>?)
              ?.map((e) => HistoryAttendanceDaysConstraintsBoolExp.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
          day: json['day'] == null
              ? null
              : HistoryAttendanceDaysBoolExp.fromJson(
                  json['day'] as Map<String, dynamic>),
          dayId: json['dayId'] == null
              ? null
              : DateComparisonExp.fromJson(
                  json['dayId'] as Map<String, dynamic>),
          group: json['group'] == null
              ? null
              : GroupsBoolExp.fromJson(json['group'] as Map<String, dynamic>),
          groupId: json['groupId'] == null
              ? null
              : UuidComparisonExp.fromJson(
                  json['groupId'] as Map<String, dynamic>),
          id: json['id'] == null
              ? null
              : UuidComparisonExp.fromJson(json['id'] as Map<String, dynamic>),
          isUserAllowedToRead: json['isUserAllowedToRead'] == null
              ? null
              : BooleanComparisonExp.fromJson(
                  json['isUserAllowedToRead'] as Map<String, dynamic>),
          isUserAllowedToWrite: json['isUserAllowedToWrite'] == null
              ? null
              : BooleanComparisonExp.fromJson(
                  json['isUserAllowedToWrite'] as Map<String, dynamic>),
          service: json['service'] == null
              ? null
              : ServicesBoolExp.fromJson(
                  json['service'] as Map<String, dynamic>),
          serviceGender: json['serviceGender'] == null
              ? null
              : BooleanComparisonExp.fromJson(
                  json['serviceGender'] as Map<String, dynamic>),
          serviceId: json['serviceId'] == null
              ? null
              : UuidComparisonExp.fromJson(
                  json['serviceId'] as Map<String, dynamic>),
          serviceStudyYear: json['serviceStudyYear'] == null
              ? null
              : IntComparisonExp.fromJson(
                  json['serviceStudyYear'] as Map<String, dynamic>),
          studyYear: json['studyYear'] == null
              ? null
              : StudyYearsBoolExp.fromJson(
                  json['studyYear'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$HistoryAttendanceDaysConstraintsBoolExpToJson(
        HistoryAttendanceDaysConstraintsBoolExp instance) =>
    <String, dynamic>{
      '_and': instance.$and?.map((e) => e.toJson()).toList(),
      '_not': instance.$not?.toJson(),
      '_or': instance.$or?.map((e) => e.toJson()).toList(),
      'day': instance.day?.toJson(),
      'dayId': instance.dayId?.toJson(),
      'group': instance.group?.toJson(),
      'groupId': instance.groupId?.toJson(),
      'id': instance.id?.toJson(),
      'isUserAllowedToRead': instance.isUserAllowedToRead?.toJson(),
      'isUserAllowedToWrite': instance.isUserAllowedToWrite?.toJson(),
      'service': instance.service?.toJson(),
      'serviceGender': instance.serviceGender?.toJson(),
      'serviceId': instance.serviceId?.toJson(),
      'serviceStudyYear': instance.serviceStudyYear?.toJson(),
      'studyYear': instance.studyYear?.toJson(),
    };

HistoryAttendanceDaysBoolExp _$HistoryAttendanceDaysBoolExpFromJson(
        Map<String, dynamic> json) =>
    HistoryAttendanceDaysBoolExp(
      $and: (json['_and'] as List<dynamic>?)
          ?.map((e) =>
              HistoryAttendanceDaysBoolExp.fromJson(e as Map<String, dynamic>))
          .toList(),
      $not: json['_not'] == null
          ? null
          : HistoryAttendanceDaysBoolExp.fromJson(
              json['_not'] as Map<String, dynamic>),
      $or: (json['_or'] as List<dynamic>?)
          ?.map((e) =>
              HistoryAttendanceDaysBoolExp.fromJson(e as Map<String, dynamic>))
          .toList(),
      attendanceHistory: json['attendanceHistory'] == null
          ? null
          : HistoryAttendanceHistoryBoolExp.fromJson(
              json['attendanceHistory'] as Map<String, dynamic>),
      confessionHistory: json['confessionHistory'] == null
          ? null
          : HistoryConfessionHistoryBoolExp.fromJson(
              json['confessionHistory'] as Map<String, dynamic>),
      constraints: json['constraints'] == null
          ? null
          : HistoryAttendanceDaysConstraintsBoolExp.fromJson(
              json['constraints'] as Map<String, dynamic>),
      day: json['day'] == null
          ? null
          : DateComparisonExp.fromJson(json['day'] as Map<String, dynamic>),
      isUserAllowedToWrite: json['isUserAllowedToWrite'] == null
          ? null
          : BooleanComparisonExp.fromJson(
              json['isUserAllowedToWrite'] as Map<String, dynamic>),
      kodasHistory: json['kodasHistory'] == null
          ? null
          : HistoryKodasHistoryBoolExp.fromJson(
              json['kodasHistory'] as Map<String, dynamic>),
      notes: json['notes'] == null
          ? null
          : StringComparisonExp.fromJson(json['notes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$HistoryAttendanceDaysBoolExpToJson(
        HistoryAttendanceDaysBoolExp instance) =>
    <String, dynamic>{
      '_and': instance.$and?.map((e) => e.toJson()).toList(),
      '_not': instance.$not?.toJson(),
      '_or': instance.$or?.map((e) => e.toJson()).toList(),
      'attendanceHistory': instance.attendanceHistory?.toJson(),
      'confessionHistory': instance.confessionHistory?.toJson(),
      'constraints': instance.constraints?.toJson(),
      'day': instance.day?.toJson(),
      'isUserAllowedToWrite': instance.isUserAllowedToWrite?.toJson(),
      'kodasHistory': instance.kodasHistory?.toJson(),
      'notes': instance.notes?.toJson(),
    };

HistoryAttendanceHistoryBoolExp _$HistoryAttendanceHistoryBoolExpFromJson(
        Map<String, dynamic> json) =>
    HistoryAttendanceHistoryBoolExp(
      $and: (json['_and'] as List<dynamic>?)
          ?.map((e) => HistoryAttendanceHistoryBoolExp.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      $not: json['_not'] == null
          ? null
          : HistoryAttendanceHistoryBoolExp.fromJson(
              json['_not'] as Map<String, dynamic>),
      $or: (json['_or'] as List<dynamic>?)
          ?.map((e) => HistoryAttendanceHistoryBoolExp.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      asAdmin: json['asAdmin'] == null
          ? null
          : BooleanComparisonExp.fromJson(
              json['asAdmin'] as Map<String, dynamic>),
      kw$class: json['class'] == null
          ? null
          : ClassesBoolExp.fromJson(json['class'] as Map<String, dynamic>),
      day: json['day'] == null
          ? null
          : HistoryAttendanceDaysBoolExp.fromJson(
              json['day'] as Map<String, dynamic>),
      dayId: json['dayId'] == null
          ? null
          : DateComparisonExp.fromJson(json['dayId'] as Map<String, dynamic>),
      group: json['group'] == null
          ? null
          : GroupsBoolExp.fromJson(json['group'] as Map<String, dynamic>),
      groupId: json['groupId'] == null
          ? null
          : UuidComparisonExp.fromJson(json['groupId'] as Map<String, dynamic>),
      id: json['id'] == null
          ? null
          : UuidComparisonExp.fromJson(json['id'] as Map<String, dynamic>),
      isUserAllowedToRead: json['isUserAllowedToRead'] == null
          ? null
          : BooleanComparisonExp.fromJson(
              json['isUserAllowedToRead'] as Map<String, dynamic>),
      isUserAllowedToWrite: json['isUserAllowedToWrite'] == null
          ? null
          : BooleanComparisonExp.fromJson(
              json['isUserAllowedToWrite'] as Map<String, dynamic>),
      person: json['person'] == null
          ? null
          : PersonsBoolExp.fromJson(json['person'] as Map<String, dynamic>),
      personId: json['personId'] == null
          ? null
          : UuidComparisonExp.fromJson(
              json['personId'] as Map<String, dynamic>),
      recordedBy: json['recordedBy'] == null
          ? null
          : UuidComparisonExp.fromJson(
              json['recordedBy'] as Map<String, dynamic>),
      service: json['service'] == null
          ? null
          : ServicesBoolExp.fromJson(json['service'] as Map<String, dynamic>),
      serviceGender: json['serviceGender'] == null
          ? null
          : BooleanComparisonExp.fromJson(
              json['serviceGender'] as Map<String, dynamic>),
      serviceId: json['serviceId'] == null
          ? null
          : UuidComparisonExp.fromJson(
              json['serviceId'] as Map<String, dynamic>),
      serviceStudyYear: json['serviceStudyYear'] == null
          ? null
          : IntComparisonExp.fromJson(
              json['serviceStudyYear'] as Map<String, dynamic>),
      studyYear: json['studyYear'] == null
          ? null
          : StudyYearsBoolExp.fromJson(
              json['studyYear'] as Map<String, dynamic>),
      time: json['time'] == null
          ? null
          : TimestampComparisonExp.fromJson(
              json['time'] as Map<String, dynamic>),
      user: json['user'] == null
          ? null
          : UsersBoolExp.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$HistoryAttendanceHistoryBoolExpToJson(
        HistoryAttendanceHistoryBoolExp instance) =>
    <String, dynamic>{
      '_and': instance.$and?.map((e) => e.toJson()).toList(),
      '_not': instance.$not?.toJson(),
      '_or': instance.$or?.map((e) => e.toJson()).toList(),
      'asAdmin': instance.asAdmin?.toJson(),
      'class': instance.kw$class?.toJson(),
      'day': instance.day?.toJson(),
      'dayId': instance.dayId?.toJson(),
      'group': instance.group?.toJson(),
      'groupId': instance.groupId?.toJson(),
      'id': instance.id?.toJson(),
      'isUserAllowedToRead': instance.isUserAllowedToRead?.toJson(),
      'isUserAllowedToWrite': instance.isUserAllowedToWrite?.toJson(),
      'person': instance.person?.toJson(),
      'personId': instance.personId?.toJson(),
      'recordedBy': instance.recordedBy?.toJson(),
      'service': instance.service?.toJson(),
      'serviceGender': instance.serviceGender?.toJson(),
      'serviceId': instance.serviceId?.toJson(),
      'serviceStudyYear': instance.serviceStudyYear?.toJson(),
      'studyYear': instance.studyYear?.toJson(),
      'time': instance.time?.toJson(),
      'user': instance.user?.toJson(),
    };

DateComparisonExp _$DateComparisonExpFromJson(Map<String, dynamic> json) =>
    DateComparisonExp(
      $eq: json['_eq'] == null ? null : DateTime.parse(json['_eq'] as String),
      $gt: json['_gt'] == null ? null : DateTime.parse(json['_gt'] as String),
      $gte:
          json['_gte'] == null ? null : DateTime.parse(json['_gte'] as String),
      $in: (json['_in'] as List<dynamic>?)
          ?.map((e) => DateTime.parse(e as String))
          .toList(),
      $isNull: json['_isNull'] as bool?,
      $lt: json['_lt'] == null ? null : DateTime.parse(json['_lt'] as String),
      $lte:
          json['_lte'] == null ? null : DateTime.parse(json['_lte'] as String),
      $neq:
          json['_neq'] == null ? null : DateTime.parse(json['_neq'] as String),
      $nin: (json['_nin'] as List<dynamic>?)
          ?.map((e) => DateTime.parse(e as String))
          .toList(),
    );

Map<String, dynamic> _$DateComparisonExpToJson(DateComparisonExp instance) =>
    <String, dynamic>{
      '_eq': instance.$eq?.toIso8601String(),
      '_gt': instance.$gt?.toIso8601String(),
      '_gte': instance.$gte?.toIso8601String(),
      '_in': instance.$in?.map((e) => e.toIso8601String()).toList(),
      '_isNull': instance.$isNull,
      '_lt': instance.$lt?.toIso8601String(),
      '_lte': instance.$lte?.toIso8601String(),
      '_neq': instance.$neq?.toIso8601String(),
      '_nin': instance.$nin?.map((e) => e.toIso8601String()).toList(),
    };

GroupsBoolExp _$GroupsBoolExpFromJson(Map<String, dynamic> json) =>
    GroupsBoolExp(
      $and: (json['_and'] as List<dynamic>?)
          ?.map((e) => GroupsBoolExp.fromJson(e as Map<String, dynamic>))
          .toList(),
      $not: json['_not'] == null
          ? null
          : GroupsBoolExp.fromJson(json['_not'] as Map<String, dynamic>),
      $or: (json['_or'] as List<dynamic>?)
          ?.map((e) => GroupsBoolExp.fromJson(e as Map<String, dynamic>))
          .toList(),
      adminUsers: json['adminUsers'] == null
          ? null
          : UsersPermissionsBoolExp.fromJson(
              json['adminUsers'] as Map<String, dynamic>),
      attendanceDaysConstraints: json['attendanceDaysConstraints'] == null
          ? null
          : HistoryAttendanceDaysConstraintsBoolExp.fromJson(
              json['attendanceDaysConstraints'] as Map<String, dynamic>),
      attendanceHistory: json['attendanceHistory'] == null
          ? null
          : HistoryAttendanceHistoryBoolExp.fromJson(
              json['attendanceHistory'] as Map<String, dynamic>),
      color: json['color'] == null
          ? null
          : IntComparisonExp.fromJson(json['color'] as Map<String, dynamic>),
      id: json['id'] == null
          ? null
          : UuidComparisonExp.fromJson(json['id'] as Map<String, dynamic>),
      isUserAllowedToRead: json['isUserAllowedToRead'] == null
          ? null
          : BooleanComparisonExp.fromJson(
              json['isUserAllowedToRead'] as Map<String, dynamic>),
      isUserAllowedToWrite: json['isUserAllowedToWrite'] == null
          ? null
          : BooleanComparisonExp.fromJson(
              json['isUserAllowedToWrite'] as Map<String, dynamic>),
      lastEdit: json['lastEdit'] == null
          ? null
          : JsonbComparisonExp.fromJson(
              json['lastEdit'] as Map<String, dynamic>),
      name: json['name'] == null
          ? null
          : StringComparisonExp.fromJson(json['name'] as Map<String, dynamic>),
      persons: json['persons'] == null
          ? null
          : PersonsGroupsBoolExp.fromJson(
              json['persons'] as Map<String, dynamic>),
      photoUpdatedAt: json['photoUpdatedAt'] == null
          ? null
          : TimestamptzComparisonExp.fromJson(
              json['photoUpdatedAt'] as Map<String, dynamic>),
      service: json['service'] == null
          ? null
          : ServicesBoolExp.fromJson(json['service'] as Map<String, dynamic>),
      serviceId: json['serviceId'] == null
          ? null
          : UuidComparisonExp.fromJson(
              json['serviceId'] as Map<String, dynamic>),
      validity: json['validity'] == null
          ? null
          : DaterangeComparisonExp.fromJson(
              json['validity'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GroupsBoolExpToJson(GroupsBoolExp instance) =>
    <String, dynamic>{
      '_and': instance.$and?.map((e) => e.toJson()).toList(),
      '_not': instance.$not?.toJson(),
      '_or': instance.$or?.map((e) => e.toJson()).toList(),
      'adminUsers': instance.adminUsers?.toJson(),
      'attendanceDaysConstraints': instance.attendanceDaysConstraints?.toJson(),
      'attendanceHistory': instance.attendanceHistory?.toJson(),
      'color': instance.color?.toJson(),
      'id': instance.id?.toJson(),
      'isUserAllowedToRead': instance.isUserAllowedToRead?.toJson(),
      'isUserAllowedToWrite': instance.isUserAllowedToWrite?.toJson(),
      'lastEdit': instance.lastEdit?.toJson(),
      'name': instance.name?.toJson(),
      'persons': instance.persons?.toJson(),
      'photoUpdatedAt': instance.photoUpdatedAt?.toJson(),
      'service': instance.service?.toJson(),
      'serviceId': instance.serviceId?.toJson(),
      'validity': instance.validity?.toJson(),
    };

IntComparisonExp _$IntComparisonExpFromJson(Map<String, dynamic> json) =>
    IntComparisonExp(
      $eq: json['_eq'] as int?,
      $gt: json['_gt'] as int?,
      $gte: json['_gte'] as int?,
      $in: (json['_in'] as List<dynamic>?)?.map((e) => e as int).toList(),
      $isNull: json['_isNull'] as bool?,
      $lt: json['_lt'] as int?,
      $lte: json['_lte'] as int?,
      $neq: json['_neq'] as int?,
      $nin: (json['_nin'] as List<dynamic>?)?.map((e) => e as int).toList(),
    );

Map<String, dynamic> _$IntComparisonExpToJson(IntComparisonExp instance) =>
    <String, dynamic>{
      '_eq': instance.$eq,
      '_gt': instance.$gt,
      '_gte': instance.$gte,
      '_in': instance.$in,
      '_isNull': instance.$isNull,
      '_lt': instance.$lt,
      '_lte': instance.$lte,
      '_neq': instance.$neq,
      '_nin': instance.$nin,
    };

JsonbComparisonExp _$JsonbComparisonExpFromJson(Map<String, dynamic> json) =>
    JsonbComparisonExp(
      $cast: json['_cast'] == null
          ? null
          : JsonbCastExp.fromJson(json['_cast'] as Map<String, dynamic>),
      $containedIn:
          fromGraphQLJsonbNullableToDartJsonNullable(json['_containedIn']),
      $contains: fromGraphQLJsonbNullableToDartJsonNullable(json['_contains']),
      $eq: fromGraphQLJsonbNullableToDartJsonNullable(json['_eq']),
      $gt: fromGraphQLJsonbNullableToDartJsonNullable(json['_gt']),
      $gte: fromGraphQLJsonbNullableToDartJsonNullable(json['_gte']),
      $hasKey: json['_hasKey'] as String?,
      $hasKeysAll: (json['_hasKeysAll'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      $hasKeysAny: (json['_hasKeysAny'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      $in: fromGraphQLListNullableJsonbToDartListNullableJson(
          json['_in'] as List<Map<dynamic, dynamic>>?),
      $isNull: json['_isNull'] as bool?,
      $lt: fromGraphQLJsonbNullableToDartJsonNullable(json['_lt']),
      $lte: fromGraphQLJsonbNullableToDartJsonNullable(json['_lte']),
      $neq: fromGraphQLJsonbNullableToDartJsonNullable(json['_neq']),
      $nin: fromGraphQLListNullableJsonbToDartListNullableJson(
          json['_nin'] as List<Map<dynamic, dynamic>>?),
    );

Map<String, dynamic> _$JsonbComparisonExpToJson(JsonbComparisonExp instance) =>
    <String, dynamic>{
      '_cast': instance.$cast?.toJson(),
      '_containedIn':
          fromDartJsonNullableToGraphQLJsonbNullable(instance.$containedIn),
      '_contains':
          fromDartJsonNullableToGraphQLJsonbNullable(instance.$contains),
      '_eq': fromDartJsonNullableToGraphQLJsonbNullable(instance.$eq),
      '_gt': fromDartJsonNullableToGraphQLJsonbNullable(instance.$gt),
      '_gte': fromDartJsonNullableToGraphQLJsonbNullable(instance.$gte),
      '_hasKey': instance.$hasKey,
      '_hasKeysAll': instance.$hasKeysAll,
      '_hasKeysAny': instance.$hasKeysAny,
      '_in': fromDartListNullableJsonToGraphQLListNullableJsonb(instance.$in),
      '_isNull': instance.$isNull,
      '_lt': fromDartJsonNullableToGraphQLJsonbNullable(instance.$lt),
      '_lte': fromDartJsonNullableToGraphQLJsonbNullable(instance.$lte),
      '_neq': fromDartJsonNullableToGraphQLJsonbNullable(instance.$neq),
      '_nin': fromDartListNullableJsonToGraphQLListNullableJsonb(instance.$nin),
    };

JsonbCastExp _$JsonbCastExpFromJson(Map<String, dynamic> json) => JsonbCastExp(
      string: json['String'] == null
          ? null
          : StringComparisonExp.fromJson(
              json['String'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$JsonbCastExpToJson(JsonbCastExp instance) =>
    <String, dynamic>{
      'String': instance.string?.toJson(),
    };

StringComparisonExp _$StringComparisonExpFromJson(Map<String, dynamic> json) =>
    StringComparisonExp(
      $eq: json['_eq'] as String?,
      $gt: json['_gt'] as String?,
      $gte: json['_gte'] as String?,
      $ilike: json['_ilike'] as String?,
      $in: (json['_in'] as List<dynamic>?)?.map((e) => e as String).toList(),
      $iregex: json['_iregex'] as String?,
      $isNull: json['_isNull'] as bool?,
      $like: json['_like'] as String?,
      $lt: json['_lt'] as String?,
      $lte: json['_lte'] as String?,
      $neq: json['_neq'] as String?,
      $nilike: json['_nilike'] as String?,
      $nin: (json['_nin'] as List<dynamic>?)?.map((e) => e as String).toList(),
      $niregex: json['_niregex'] as String?,
      $nlike: json['_nlike'] as String?,
      $nregex: json['_nregex'] as String?,
      $nsimilar: json['_nsimilar'] as String?,
      $regex: json['_regex'] as String?,
      $similar: json['_similar'] as String?,
    );

Map<String, dynamic> _$StringComparisonExpToJson(
        StringComparisonExp instance) =>
    <String, dynamic>{
      '_eq': instance.$eq,
      '_gt': instance.$gt,
      '_gte': instance.$gte,
      '_ilike': instance.$ilike,
      '_in': instance.$in,
      '_iregex': instance.$iregex,
      '_isNull': instance.$isNull,
      '_like': instance.$like,
      '_lt': instance.$lt,
      '_lte': instance.$lte,
      '_neq': instance.$neq,
      '_nilike': instance.$nilike,
      '_nin': instance.$nin,
      '_niregex': instance.$niregex,
      '_nlike': instance.$nlike,
      '_nregex': instance.$nregex,
      '_nsimilar': instance.$nsimilar,
      '_regex': instance.$regex,
      '_similar': instance.$similar,
    };

PersonsGroupsBoolExp _$PersonsGroupsBoolExpFromJson(
        Map<String, dynamic> json) =>
    PersonsGroupsBoolExp(
      $and: (json['_and'] as List<dynamic>?)
          ?.map((e) => PersonsGroupsBoolExp.fromJson(e as Map<String, dynamic>))
          .toList(),
      $not: json['_not'] == null
          ? null
          : PersonsGroupsBoolExp.fromJson(json['_not'] as Map<String, dynamic>),
      $or: (json['_or'] as List<dynamic>?)
          ?.map((e) => PersonsGroupsBoolExp.fromJson(e as Map<String, dynamic>))
          .toList(),
      group: json['group'] == null
          ? null
          : GroupsBoolExp.fromJson(json['group'] as Map<String, dynamic>),
      groupId: json['groupId'] == null
          ? null
          : UuidComparisonExp.fromJson(json['groupId'] as Map<String, dynamic>),
      person: json['person'] == null
          ? null
          : PersonsBoolExp.fromJson(json['person'] as Map<String, dynamic>),
      personId: json['personId'] == null
          ? null
          : UuidComparisonExp.fromJson(
              json['personId'] as Map<String, dynamic>),
      relId: json['relId'] == null
          ? null
          : UuidComparisonExp.fromJson(json['relId'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PersonsGroupsBoolExpToJson(
        PersonsGroupsBoolExp instance) =>
    <String, dynamic>{
      '_and': instance.$and?.map((e) => e.toJson()).toList(),
      '_not': instance.$not?.toJson(),
      '_or': instance.$or?.map((e) => e.toJson()).toList(),
      'group': instance.group?.toJson(),
      'groupId': instance.groupId?.toJson(),
      'person': instance.person?.toJson(),
      'personId': instance.personId?.toJson(),
      'relId': instance.relId?.toJson(),
    };

PersonsBoolExp _$PersonsBoolExpFromJson(Map<String, dynamic> json) =>
    PersonsBoolExp(
      $and: (json['_and'] as List<dynamic>?)
          ?.map((e) => PersonsBoolExp.fromJson(e as Map<String, dynamic>))
          .toList(),
      $not: json['_not'] == null
          ? null
          : PersonsBoolExp.fromJson(json['_not'] as Map<String, dynamic>),
      $or: (json['_or'] as List<dynamic>?)
          ?.map((e) => PersonsBoolExp.fromJson(e as Map<String, dynamic>))
          .toList(),
      address: json['address'] == null
          ? null
          : StringComparisonExp.fromJson(
              json['address'] as Map<String, dynamic>),
      areas: json['areas'] == null
          ? null
          : AreasBoolExp.fromJson(json['areas'] as Map<String, dynamic>),
      attendanceHistory: json['attendanceHistory'] == null
          ? null
          : HistoryAttendanceHistoryBoolExp.fromJson(
              json['attendanceHistory'] as Map<String, dynamic>),
      birthdate: json['birthdate'] == null
          ? null
          : DateComparisonExp.fromJson(
              json['birthdate'] as Map<String, dynamic>),
      birthday: json['birthday'] == null
          ? null
          : StringComparisonExp.fromJson(
              json['birthday'] as Map<String, dynamic>),
      callHistory: json['callHistory'] == null
          ? null
          : HistoryCallHistoryBoolExp.fromJson(
              json['callHistory'] as Map<String, dynamic>),
      church: json['church'] == null
          ? null
          : ChurchesBoolExp.fromJson(json['church'] as Map<String, dynamic>),
      churchId: json['churchId'] == null
          ? null
          : UuidComparisonExp.fromJson(
              json['churchId'] as Map<String, dynamic>),
      classes: json['classes'] == null
          ? null
          : ClassesBoolExp.fromJson(json['classes'] as Map<String, dynamic>),
      college: json['college'] == null
          ? null
          : CollegesBoolExp.fromJson(json['college'] as Map<String, dynamic>),
      collegeId: json['collegeId'] == null
          ? null
          : UuidComparisonExp.fromJson(
              json['collegeId'] as Map<String, dynamic>),
      color: json['color'] == null
          ? null
          : BigintComparisonExp.fromJson(json['color'] as Map<String, dynamic>),
      confessionHistory: json['confessionHistory'] == null
          ? null
          : HistoryConfessionHistoryBoolExp.fromJson(
              json['confessionHistory'] as Map<String, dynamic>),
      editHistory: json['editHistory'] == null
          ? null
          : HistoryEditHistoryBoolExp.fromJson(
              json['editHistory'] as Map<String, dynamic>),
      family: json['family'] == null
          ? null
          : FamiliesBoolExp.fromJson(json['family'] as Map<String, dynamic>),
      familyId: json['familyId'] == null
          ? null
          : UuidComparisonExp.fromJson(
              json['familyId'] as Map<String, dynamic>),
      father: json['father'] == null
          ? null
          : FathersBoolExp.fromJson(json['father'] as Map<String, dynamic>),
      fatherId: json['fatherId'] == null
          ? null
          : UuidComparisonExp.fromJson(
              json['fatherId'] as Map<String, dynamic>),
      firestoreId: json['firestoreId'] == null
          ? null
          : StringComparisonExp.fromJson(
              json['firestoreId'] as Map<String, dynamic>),
      gender: json['gender'] == null
          ? null
          : BooleanComparisonExp.fromJson(
              json['gender'] as Map<String, dynamic>),
      geolocation: json['geolocation'] == null
          ? null
          : GeographyComparisonExp.fromJson(
              json['geolocation'] as Map<String, dynamic>),
      groups: json['groups'] == null
          ? null
          : PersonsGroupsBoolExp.fromJson(
              json['groups'] as Map<String, dynamic>),
      id: json['id'] == null
          ? null
          : UuidComparisonExp.fromJson(json['id'] as Map<String, dynamic>),
      isServant: json['isServant'] == null
          ? null
          : BooleanComparisonExp.fromJson(
              json['isServant'] as Map<String, dynamic>),
      isShammas: json['isShammas'] == null
          ? null
          : BooleanComparisonExp.fromJson(
              json['isShammas'] as Map<String, dynamic>),
      isStudent: json['isStudent'] == null
          ? null
          : BooleanComparisonExp.fromJson(
              json['isStudent'] as Map<String, dynamic>),
      isUserAllowedToRead: json['isUserAllowedToRead'] == null
          ? null
          : BooleanComparisonExp.fromJson(
              json['isUserAllowedToRead'] as Map<String, dynamic>),
      isUserAllowedToWrite: json['isUserAllowedToWrite'] == null
          ? null
          : BooleanComparisonExp.fromJson(
              json['isUserAllowedToWrite'] as Map<String, dynamic>),
      job: json['job'] == null
          ? null
          : JobsBoolExp.fromJson(json['job'] as Map<String, dynamic>),
      jobDescription: json['jobDescription'] == null
          ? null
          : StringComparisonExp.fromJson(
              json['jobDescription'] as Map<String, dynamic>),
      jobId: json['jobId'] == null
          ? null
          : UuidComparisonExp.fromJson(json['jobId'] as Map<String, dynamic>),
      kodasHistory: json['kodasHistory'] == null
          ? null
          : HistoryKodasHistoryBoolExp.fromJson(
              json['kodasHistory'] as Map<String, dynamic>),
      lastCall: json['lastCall'] == null
          ? null
          : JsonbComparisonExp.fromJson(
              json['lastCall'] as Map<String, dynamic>),
      lastConfession: json['lastConfession'] == null
          ? null
          : JsonbComparisonExp.fromJson(
              json['lastConfession'] as Map<String, dynamic>),
      lastEdit: json['lastEdit'] == null
          ? null
          : JsonbComparisonExp.fromJson(
              json['lastEdit'] as Map<String, dynamic>),
      lastKodas: json['lastKodas'] == null
          ? null
          : JsonbComparisonExp.fromJson(
              json['lastKodas'] as Map<String, dynamic>),
      lastVisit: json['lastVisit'] == null
          ? null
          : JsonbComparisonExp.fromJson(
              json['lastVisit'] as Map<String, dynamic>),
      mainPhone: json['mainPhone'] == null
          ? null
          : StringComparisonExp.fromJson(
              json['mainPhone'] as Map<String, dynamic>),
      name: json['name'] == null
          ? null
          : StringComparisonExp.fromJson(json['name'] as Map<String, dynamic>),
      notes: json['notes'] == null
          ? null
          : StringComparisonExp.fromJson(json['notes'] as Map<String, dynamic>),
      otherPhones: json['otherPhones'] == null
          ? null
          : JsonbComparisonExp.fromJson(
              json['otherPhones'] as Map<String, dynamic>),
      personType: json['personType'] == null
          ? null
          : PersonTypesBoolExp.fromJson(
              json['personType'] as Map<String, dynamic>),
      personTypeId: json['personTypeId'] == null
          ? null
          : UuidComparisonExp.fromJson(
              json['personTypeId'] as Map<String, dynamic>),
      photoUpdatedAt: json['photoUpdatedAt'] == null
          ? null
          : TimestamptzComparisonExp.fromJson(
              json['photoUpdatedAt'] as Map<String, dynamic>),
      qualification: json['qualification'] == null
          ? null
          : QualificationsBoolExp.fromJson(
              json['qualification'] as Map<String, dynamic>),
      qualificationId: json['qualificationId'] == null
          ? null
          : UuidComparisonExp.fromJson(
              json['qualificationId'] as Map<String, dynamic>),
      school: json['school'] == null
          ? null
          : SchoolsBoolExp.fromJson(json['school'] as Map<String, dynamic>),
      schoolId: json['schoolId'] == null
          ? null
          : UuidComparisonExp.fromJson(
              json['schoolId'] as Map<String, dynamic>),
      services: json['services'] == null
          ? null
          : PersonsServicesBoolExp.fromJson(
              json['services'] as Map<String, dynamic>),
      shammasLevel: json['shammasLevel'] == null
          ? null
          : ShammasLevelsBoolExp.fromJson(
              json['shammasLevel'] as Map<String, dynamic>),
      shammasLevelId: json['shammasLevelId'] == null
          ? null
          : UuidComparisonExp.fromJson(
              json['shammasLevelId'] as Map<String, dynamic>),
      state: json['state'] == null
          ? null
          : PersonStatesBoolExp.fromJson(json['state'] as Map<String, dynamic>),
      stateId: json['stateId'] == null
          ? null
          : UuidComparisonExp.fromJson(json['stateId'] as Map<String, dynamic>),
      storeId: json['storeId'] == null
          ? null
          : UuidComparisonExp.fromJson(json['storeId'] as Map<String, dynamic>),
      streets: json['streets'] == null
          ? null
          : StreetsBoolExp.fromJson(json['streets'] as Map<String, dynamic>),
      studyYear: json['studyYear'] == null
          ? null
          : StudyYearsBoolExp.fromJson(
              json['studyYear'] as Map<String, dynamic>),
      studyYearId: json['studyYearId'] == null
          ? null
          : SmallintComparisonExp.fromJson(
              json['studyYearId'] as Map<String, dynamic>),
      tags: json['tags'] == null
          ? null
          : PersonsTagsBoolExp.fromJson(json['tags'] as Map<String, dynamic>),
      uid: json['uid'] == null
          ? null
          : UuidComparisonExp.fromJson(json['uid'] as Map<String, dynamic>),
      user: json['user'] == null
          ? null
          : UsersBoolExp.fromJson(json['user'] as Map<String, dynamic>),
      visitHistory: json['visitHistory'] == null
          ? null
          : HistoryVisitHistoryBoolExp.fromJson(
              json['visitHistory'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PersonsBoolExpToJson(PersonsBoolExp instance) =>
    <String, dynamic>{
      '_and': instance.$and?.map((e) => e.toJson()).toList(),
      '_not': instance.$not?.toJson(),
      '_or': instance.$or?.map((e) => e.toJson()).toList(),
      'address': instance.address?.toJson(),
      'areas': instance.areas?.toJson(),
      'attendanceHistory': instance.attendanceHistory?.toJson(),
      'birthdate': instance.birthdate?.toJson(),
      'birthday': instance.birthday?.toJson(),
      'callHistory': instance.callHistory?.toJson(),
      'church': instance.church?.toJson(),
      'churchId': instance.churchId?.toJson(),
      'classes': instance.classes?.toJson(),
      'college': instance.college?.toJson(),
      'collegeId': instance.collegeId?.toJson(),
      'color': instance.color?.toJson(),
      'confessionHistory': instance.confessionHistory?.toJson(),
      'editHistory': instance.editHistory?.toJson(),
      'family': instance.family?.toJson(),
      'familyId': instance.familyId?.toJson(),
      'father': instance.father?.toJson(),
      'fatherId': instance.fatherId?.toJson(),
      'firestoreId': instance.firestoreId?.toJson(),
      'gender': instance.gender?.toJson(),
      'geolocation': instance.geolocation?.toJson(),
      'groups': instance.groups?.toJson(),
      'id': instance.id?.toJson(),
      'isServant': instance.isServant?.toJson(),
      'isShammas': instance.isShammas?.toJson(),
      'isStudent': instance.isStudent?.toJson(),
      'isUserAllowedToRead': instance.isUserAllowedToRead?.toJson(),
      'isUserAllowedToWrite': instance.isUserAllowedToWrite?.toJson(),
      'job': instance.job?.toJson(),
      'jobDescription': instance.jobDescription?.toJson(),
      'jobId': instance.jobId?.toJson(),
      'kodasHistory': instance.kodasHistory?.toJson(),
      'lastCall': instance.lastCall?.toJson(),
      'lastConfession': instance.lastConfession?.toJson(),
      'lastEdit': instance.lastEdit?.toJson(),
      'lastKodas': instance.lastKodas?.toJson(),
      'lastVisit': instance.lastVisit?.toJson(),
      'mainPhone': instance.mainPhone?.toJson(),
      'name': instance.name?.toJson(),
      'notes': instance.notes?.toJson(),
      'otherPhones': instance.otherPhones?.toJson(),
      'personType': instance.personType?.toJson(),
      'personTypeId': instance.personTypeId?.toJson(),
      'photoUpdatedAt': instance.photoUpdatedAt?.toJson(),
      'qualification': instance.qualification?.toJson(),
      'qualificationId': instance.qualificationId?.toJson(),
      'school': instance.school?.toJson(),
      'schoolId': instance.schoolId?.toJson(),
      'services': instance.services?.toJson(),
      'shammasLevel': instance.shammasLevel?.toJson(),
      'shammasLevelId': instance.shammasLevelId?.toJson(),
      'state': instance.state?.toJson(),
      'stateId': instance.stateId?.toJson(),
      'storeId': instance.storeId?.toJson(),
      'streets': instance.streets?.toJson(),
      'studyYear': instance.studyYear?.toJson(),
      'studyYearId': instance.studyYearId?.toJson(),
      'tags': instance.tags?.toJson(),
      'uid': instance.uid?.toJson(),
      'user': instance.user?.toJson(),
      'visitHistory': instance.visitHistory?.toJson(),
    };

HistoryCallHistoryBoolExp _$HistoryCallHistoryBoolExpFromJson(
        Map<String, dynamic> json) =>
    HistoryCallHistoryBoolExp(
      $and: (json['_and'] as List<dynamic>?)
          ?.map((e) =>
              HistoryCallHistoryBoolExp.fromJson(e as Map<String, dynamic>))
          .toList(),
      $not: json['_not'] == null
          ? null
          : HistoryCallHistoryBoolExp.fromJson(
              json['_not'] as Map<String, dynamic>),
      $or: (json['_or'] as List<dynamic>?)
          ?.map((e) =>
              HistoryCallHistoryBoolExp.fromJson(e as Map<String, dynamic>))
          .toList(),
      person: json['person'] == null
          ? null
          : PersonsBoolExp.fromJson(json['person'] as Map<String, dynamic>),
      personId: json['personId'] == null
          ? null
          : UuidComparisonExp.fromJson(
              json['personId'] as Map<String, dynamic>),
      recordedBy: json['recordedBy'] == null
          ? null
          : UuidComparisonExp.fromJson(
              json['recordedBy'] as Map<String, dynamic>),
      time: json['time'] == null
          ? null
          : TimestamptzComparisonExp.fromJson(
              json['time'] as Map<String, dynamic>),
      user: json['user'] == null
          ? null
          : UsersBoolExp.fromJson(json['user'] as Map<String, dynamic>),
      userRole: json['userRole'] == null
          ? null
          : StringComparisonExp.fromJson(
              json['userRole'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$HistoryCallHistoryBoolExpToJson(
        HistoryCallHistoryBoolExp instance) =>
    <String, dynamic>{
      '_and': instance.$and?.map((e) => e.toJson()).toList(),
      '_not': instance.$not?.toJson(),
      '_or': instance.$or?.map((e) => e.toJson()).toList(),
      'person': instance.person?.toJson(),
      'personId': instance.personId?.toJson(),
      'recordedBy': instance.recordedBy?.toJson(),
      'time': instance.time?.toJson(),
      'user': instance.user?.toJson(),
      'userRole': instance.userRole?.toJson(),
    };

TimestamptzComparisonExp _$TimestamptzComparisonExpFromJson(
        Map<String, dynamic> json) =>
    TimestamptzComparisonExp(
      $eq: json['_eq'] == null ? null : DateTime.parse(json['_eq'] as String),
      $gt: json['_gt'] == null ? null : DateTime.parse(json['_gt'] as String),
      $gte:
          json['_gte'] == null ? null : DateTime.parse(json['_gte'] as String),
      $in: (json['_in'] as List<dynamic>?)
          ?.map((e) => DateTime.parse(e as String))
          .toList(),
      $isNull: json['_isNull'] as bool?,
      $lt: json['_lt'] == null ? null : DateTime.parse(json['_lt'] as String),
      $lte:
          json['_lte'] == null ? null : DateTime.parse(json['_lte'] as String),
      $neq:
          json['_neq'] == null ? null : DateTime.parse(json['_neq'] as String),
      $nin: (json['_nin'] as List<dynamic>?)
          ?.map((e) => DateTime.parse(e as String))
          .toList(),
    );

Map<String, dynamic> _$TimestamptzComparisonExpToJson(
        TimestamptzComparisonExp instance) =>
    <String, dynamic>{
      '_eq': instance.$eq?.toIso8601String(),
      '_gt': instance.$gt?.toIso8601String(),
      '_gte': instance.$gte?.toIso8601String(),
      '_in': instance.$in?.map((e) => e.toIso8601String()).toList(),
      '_isNull': instance.$isNull,
      '_lt': instance.$lt?.toIso8601String(),
      '_lte': instance.$lte?.toIso8601String(),
      '_neq': instance.$neq?.toIso8601String(),
      '_nin': instance.$nin?.map((e) => e.toIso8601String()).toList(),
    };

UsersBoolExp _$UsersBoolExpFromJson(Map<String, dynamic> json) => UsersBoolExp(
      $and: (json['_and'] as List<dynamic>?)
          ?.map((e) => UsersBoolExp.fromJson(e as Map<String, dynamic>))
          .toList(),
      $not: json['_not'] == null
          ? null
          : UsersBoolExp.fromJson(json['_not'] as Map<String, dynamic>),
      $or: (json['_or'] as List<dynamic>?)
          ?.map((e) => UsersBoolExp.fromJson(e as Map<String, dynamic>))
          .toList(),
      adminOn: json['adminOn'] == null
          ? null
          : UsersPermissionsBoolExp.fromJson(
              json['adminOn'] as Map<String, dynamic>),
      isUserAllowedToDelete: json['is_user_allowed_to_delete'] == null
          ? null
          : BooleanComparisonExp.fromJson(
              json['is_user_allowed_to_delete'] as Map<String, dynamic>),
      name: json['name'] == null
          ? null
          : StringComparisonExp.fromJson(json['name'] as Map<String, dynamic>),
      person: json['person'] == null
          ? null
          : PersonsBoolExp.fromJson(json['person'] as Map<String, dynamic>),
      photoUpdatedAt: json['photoUpdatedAt'] == null
          ? null
          : TimestamptzComparisonExp.fromJson(
              json['photoUpdatedAt'] as Map<String, dynamic>),
      uid: json['uid'] == null
          ? null
          : UuidComparisonExp.fromJson(json['uid'] as Map<String, dynamic>),
      userData: json['userData'] == null
          ? null
          : UsersDataBoolExp.fromJson(json['userData'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UsersBoolExpToJson(UsersBoolExp instance) =>
    <String, dynamic>{
      '_and': instance.$and?.map((e) => e.toJson()).toList(),
      '_not': instance.$not?.toJson(),
      '_or': instance.$or?.map((e) => e.toJson()).toList(),
      'adminOn': instance.adminOn?.toJson(),
      'is_user_allowed_to_delete': instance.isUserAllowedToDelete?.toJson(),
      'name': instance.name?.toJson(),
      'person': instance.person?.toJson(),
      'photoUpdatedAt': instance.photoUpdatedAt?.toJson(),
      'uid': instance.uid?.toJson(),
      'userData': instance.userData?.toJson(),
    };

UsersDataBoolExp _$UsersDataBoolExpFromJson(Map<String, dynamic> json) =>
    UsersDataBoolExp(
      $and: (json['_and'] as List<dynamic>?)
          ?.map((e) => UsersDataBoolExp.fromJson(e as Map<String, dynamic>))
          .toList(),
      $not: json['_not'] == null
          ? null
          : UsersDataBoolExp.fromJson(json['_not'] as Map<String, dynamic>),
      $or: (json['_or'] as List<dynamic>?)
          ?.map((e) => UsersDataBoolExp.fromJson(e as Map<String, dynamic>))
          .toList(),
      email: json['email'] == null
          ? null
          : StringComparisonExp.fromJson(json['email'] as Map<String, dynamic>),
      firebaseAuthUid: json['firebaseAuthUid'] == null
          ? null
          : StringComparisonExp.fromJson(
              json['firebaseAuthUid'] as Map<String, dynamic>),
      firestoreId: json['firestoreId'] == null
          ? null
          : StringComparisonExp.fromJson(
              json['firestoreId'] as Map<String, dynamic>),
      isUserAllowedToRead: json['isUserAllowedToRead'] == null
          ? null
          : BooleanComparisonExp.fromJson(
              json['isUserAllowedToRead'] as Map<String, dynamic>),
      isUserAllowedToChange: json['is_user_allowed_to_change'] == null
          ? null
          : BooleanComparisonExp.fromJson(
              json['is_user_allowed_to_change'] as Map<String, dynamic>),
      lastEdit: json['lastEdit'] == null
          ? null
          : JsonbComparisonExp.fromJson(
              json['lastEdit'] as Map<String, dynamic>),
      permissions: json['permissions'] == null
          ? null
          : $textComparisonExp
              .fromJson(json['permissions'] as Map<String, dynamic>),
      uid: json['uid'] == null
          ? null
          : UuidComparisonExp.fromJson(json['uid'] as Map<String, dynamic>),
      user: json['user'] == null
          ? null
          : UsersBoolExp.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UsersDataBoolExpToJson(UsersDataBoolExp instance) =>
    <String, dynamic>{
      '_and': instance.$and?.map((e) => e.toJson()).toList(),
      '_not': instance.$not?.toJson(),
      '_or': instance.$or?.map((e) => e.toJson()).toList(),
      'email': instance.email?.toJson(),
      'firebaseAuthUid': instance.firebaseAuthUid?.toJson(),
      'firestoreId': instance.firestoreId?.toJson(),
      'isUserAllowedToRead': instance.isUserAllowedToRead?.toJson(),
      'is_user_allowed_to_change': instance.isUserAllowedToChange?.toJson(),
      'lastEdit': instance.lastEdit?.toJson(),
      'permissions': instance.permissions?.toJson(),
      'uid': instance.uid?.toJson(),
      'user': instance.user?.toJson(),
    };

$textComparisonExp _$$textComparisonExpFromJson(Map<String, dynamic> json) =>
    $textComparisonExp(
      $eq: (json['_eq'] as List<dynamic>?)?.map((e) => e as String).toList(),
      $gt: (json['_gt'] as List<dynamic>?)?.map((e) => e as String).toList(),
      $gte: (json['_gte'] as List<dynamic>?)?.map((e) => e as String).toList(),
      $in: (json['_in'] as List<dynamic>?)
          ?.map((e) => (e as List<dynamic>).map((e) => e as String).toList())
          .toList(),
      $isNull: json['_isNull'] as bool?,
      $lt: (json['_lt'] as List<dynamic>?)?.map((e) => e as String).toList(),
      $lte: (json['_lte'] as List<dynamic>?)?.map((e) => e as String).toList(),
      $neq: (json['_neq'] as List<dynamic>?)?.map((e) => e as String).toList(),
      $nin: (json['_nin'] as List<dynamic>?)
          ?.map((e) => (e as List<dynamic>).map((e) => e as String).toList())
          .toList(),
    );

Map<String, dynamic> _$$textComparisonExpToJson($textComparisonExp instance) =>
    <String, dynamic>{
      '_eq': instance.$eq,
      '_gt': instance.$gt,
      '_gte': instance.$gte,
      '_in': instance.$in,
      '_isNull': instance.$isNull,
      '_lt': instance.$lt,
      '_lte': instance.$lte,
      '_neq': instance.$neq,
      '_nin': instance.$nin,
    };

ChurchesBoolExp _$ChurchesBoolExpFromJson(Map<String, dynamic> json) =>
    ChurchesBoolExp(
      $and: (json['_and'] as List<dynamic>?)
          ?.map((e) => ChurchesBoolExp.fromJson(e as Map<String, dynamic>))
          .toList(),
      $not: json['_not'] == null
          ? null
          : ChurchesBoolExp.fromJson(json['_not'] as Map<String, dynamic>),
      $or: (json['_or'] as List<dynamic>?)
          ?.map((e) => ChurchesBoolExp.fromJson(e as Map<String, dynamic>))
          .toList(),
      fathers: json['fathers'] == null
          ? null
          : FathersBoolExp.fromJson(json['fathers'] as Map<String, dynamic>),
      id: json['id'] == null
          ? null
          : UuidComparisonExp.fromJson(json['id'] as Map<String, dynamic>),
      name: json['name'] == null
          ? null
          : StringComparisonExp.fromJson(json['name'] as Map<String, dynamic>),
      persons: json['persons'] == null
          ? null
          : PersonsBoolExp.fromJson(json['persons'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ChurchesBoolExpToJson(ChurchesBoolExp instance) =>
    <String, dynamic>{
      '_and': instance.$and?.map((e) => e.toJson()).toList(),
      '_not': instance.$not?.toJson(),
      '_or': instance.$or?.map((e) => e.toJson()).toList(),
      'fathers': instance.fathers?.toJson(),
      'id': instance.id?.toJson(),
      'name': instance.name?.toJson(),
      'persons': instance.persons?.toJson(),
    };

FathersBoolExp _$FathersBoolExpFromJson(Map<String, dynamic> json) =>
    FathersBoolExp(
      $and: (json['_and'] as List<dynamic>?)
          ?.map((e) => FathersBoolExp.fromJson(e as Map<String, dynamic>))
          .toList(),
      $not: json['_not'] == null
          ? null
          : FathersBoolExp.fromJson(json['_not'] as Map<String, dynamic>),
      $or: (json['_or'] as List<dynamic>?)
          ?.map((e) => FathersBoolExp.fromJson(e as Map<String, dynamic>))
          .toList(),
      church: json['church'] == null
          ? null
          : ChurchesBoolExp.fromJson(json['church'] as Map<String, dynamic>),
      churchId: json['churchId'] == null
          ? null
          : UuidComparisonExp.fromJson(
              json['churchId'] as Map<String, dynamic>),
      id: json['id'] == null
          ? null
          : UuidComparisonExp.fromJson(json['id'] as Map<String, dynamic>),
      name: json['name'] == null
          ? null
          : StringComparisonExp.fromJson(json['name'] as Map<String, dynamic>),
      persons: json['persons'] == null
          ? null
          : PersonsBoolExp.fromJson(json['persons'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FathersBoolExpToJson(FathersBoolExp instance) =>
    <String, dynamic>{
      '_and': instance.$and?.map((e) => e.toJson()).toList(),
      '_not': instance.$not?.toJson(),
      '_or': instance.$or?.map((e) => e.toJson()).toList(),
      'church': instance.church?.toJson(),
      'churchId': instance.churchId?.toJson(),
      'id': instance.id?.toJson(),
      'name': instance.name?.toJson(),
      'persons': instance.persons?.toJson(),
    };

CollegesBoolExp _$CollegesBoolExpFromJson(Map<String, dynamic> json) =>
    CollegesBoolExp(
      $and: (json['_and'] as List<dynamic>?)
          ?.map((e) => CollegesBoolExp.fromJson(e as Map<String, dynamic>))
          .toList(),
      $not: json['_not'] == null
          ? null
          : CollegesBoolExp.fromJson(json['_not'] as Map<String, dynamic>),
      $or: (json['_or'] as List<dynamic>?)
          ?.map((e) => CollegesBoolExp.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] == null
          ? null
          : UuidComparisonExp.fromJson(json['id'] as Map<String, dynamic>),
      name: json['name'] == null
          ? null
          : StringComparisonExp.fromJson(json['name'] as Map<String, dynamic>),
      persons: json['persons'] == null
          ? null
          : PersonsBoolExp.fromJson(json['persons'] as Map<String, dynamic>),
      university: json['university'] == null
          ? null
          : UniversitiesBoolExp.fromJson(
              json['university'] as Map<String, dynamic>),
      universityId: json['universityId'] == null
          ? null
          : UuidComparisonExp.fromJson(
              json['universityId'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CollegesBoolExpToJson(CollegesBoolExp instance) =>
    <String, dynamic>{
      '_and': instance.$and?.map((e) => e.toJson()).toList(),
      '_not': instance.$not?.toJson(),
      '_or': instance.$or?.map((e) => e.toJson()).toList(),
      'id': instance.id?.toJson(),
      'name': instance.name?.toJson(),
      'persons': instance.persons?.toJson(),
      'university': instance.university?.toJson(),
      'universityId': instance.universityId?.toJson(),
    };

UniversitiesBoolExp _$UniversitiesBoolExpFromJson(Map<String, dynamic> json) =>
    UniversitiesBoolExp(
      $and: (json['_and'] as List<dynamic>?)
          ?.map((e) => UniversitiesBoolExp.fromJson(e as Map<String, dynamic>))
          .toList(),
      $not: json['_not'] == null
          ? null
          : UniversitiesBoolExp.fromJson(json['_not'] as Map<String, dynamic>),
      $or: (json['_or'] as List<dynamic>?)
          ?.map((e) => UniversitiesBoolExp.fromJson(e as Map<String, dynamic>))
          .toList(),
      colleges: json['colleges'] == null
          ? null
          : CollegesBoolExp.fromJson(json['colleges'] as Map<String, dynamic>),
      id: json['id'] == null
          ? null
          : UuidComparisonExp.fromJson(json['id'] as Map<String, dynamic>),
      name: json['name'] == null
          ? null
          : StringComparisonExp.fromJson(json['name'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UniversitiesBoolExpToJson(
        UniversitiesBoolExp instance) =>
    <String, dynamic>{
      '_and': instance.$and?.map((e) => e.toJson()).toList(),
      '_not': instance.$not?.toJson(),
      '_or': instance.$or?.map((e) => e.toJson()).toList(),
      'colleges': instance.colleges?.toJson(),
      'id': instance.id?.toJson(),
      'name': instance.name?.toJson(),
    };

BigintComparisonExp _$BigintComparisonExpFromJson(Map<String, dynamic> json) =>
    BigintComparisonExp(
      $eq: json['_eq'] as int?,
      $gt: json['_gt'] as int?,
      $gte: json['_gte'] as int?,
      $in: (json['_in'] as List<dynamic>?)?.map((e) => e as int).toList(),
      $isNull: json['_isNull'] as bool?,
      $lt: json['_lt'] as int?,
      $lte: json['_lte'] as int?,
      $neq: json['_neq'] as int?,
      $nin: (json['_nin'] as List<dynamic>?)?.map((e) => e as int).toList(),
    );

Map<String, dynamic> _$BigintComparisonExpToJson(
        BigintComparisonExp instance) =>
    <String, dynamic>{
      '_eq': instance.$eq,
      '_gt': instance.$gt,
      '_gte': instance.$gte,
      '_in': instance.$in,
      '_isNull': instance.$isNull,
      '_lt': instance.$lt,
      '_lte': instance.$lte,
      '_neq': instance.$neq,
      '_nin': instance.$nin,
    };

HistoryConfessionHistoryBoolExp _$HistoryConfessionHistoryBoolExpFromJson(
        Map<String, dynamic> json) =>
    HistoryConfessionHistoryBoolExp(
      $and: (json['_and'] as List<dynamic>?)
          ?.map((e) => HistoryConfessionHistoryBoolExp.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      $not: json['_not'] == null
          ? null
          : HistoryConfessionHistoryBoolExp.fromJson(
              json['_not'] as Map<String, dynamic>),
      $or: (json['_or'] as List<dynamic>?)
          ?.map((e) => HistoryConfessionHistoryBoolExp.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      day: json['day'] == null
          ? null
          : HistoryAttendanceDaysBoolExp.fromJson(
              json['day'] as Map<String, dynamic>),
      dayId: json['dayId'] == null
          ? null
          : DateComparisonExp.fromJson(json['dayId'] as Map<String, dynamic>),
      id: json['id'] == null
          ? null
          : UuidComparisonExp.fromJson(json['id'] as Map<String, dynamic>),
      person: json['person'] == null
          ? null
          : PersonsBoolExp.fromJson(json['person'] as Map<String, dynamic>),
      personId: json['personId'] == null
          ? null
          : UuidComparisonExp.fromJson(
              json['personId'] as Map<String, dynamic>),
      recordedBy: json['recordedBy'] == null
          ? null
          : UuidComparisonExp.fromJson(
              json['recordedBy'] as Map<String, dynamic>),
      time: json['time'] == null
          ? null
          : DateComparisonExp.fromJson(json['time'] as Map<String, dynamic>),
      user: json['user'] == null
          ? null
          : UsersBoolExp.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$HistoryConfessionHistoryBoolExpToJson(
        HistoryConfessionHistoryBoolExp instance) =>
    <String, dynamic>{
      '_and': instance.$and?.map((e) => e.toJson()).toList(),
      '_not': instance.$not?.toJson(),
      '_or': instance.$or?.map((e) => e.toJson()).toList(),
      'day': instance.day?.toJson(),
      'dayId': instance.dayId?.toJson(),
      'id': instance.id?.toJson(),
      'person': instance.person?.toJson(),
      'personId': instance.personId?.toJson(),
      'recordedBy': instance.recordedBy?.toJson(),
      'time': instance.time?.toJson(),
      'user': instance.user?.toJson(),
    };

HistoryEditHistoryBoolExp _$HistoryEditHistoryBoolExpFromJson(
        Map<String, dynamic> json) =>
    HistoryEditHistoryBoolExp(
      $and: (json['_and'] as List<dynamic>?)
          ?.map((e) =>
              HistoryEditHistoryBoolExp.fromJson(e as Map<String, dynamic>))
          .toList(),
      $not: json['_not'] == null
          ? null
          : HistoryEditHistoryBoolExp.fromJson(
              json['_not'] as Map<String, dynamic>),
      $or: (json['_or'] as List<dynamic>?)
          ?.map((e) =>
              HistoryEditHistoryBoolExp.fromJson(e as Map<String, dynamic>))
          .toList(),
      auditId: json['auditId'] == null
          ? null
          : UuidComparisonExp.fromJson(json['auditId'] as Map<String, dynamic>),
      isUserAllowedToRead: json['isUserAllowedToRead'] == null
          ? null
          : BooleanComparisonExp.fromJson(
              json['isUserAllowedToRead'] as Map<String, dynamic>),
      recordId: json['recordId'] == null
          ? null
          : UuidComparisonExp.fromJson(
              json['recordId'] as Map<String, dynamic>),
      recordedBy: json['recordedBy'] == null
          ? null
          : UuidComparisonExp.fromJson(
              json['recordedBy'] as Map<String, dynamic>),
      table: json['table'] == null
          ? null
          : NameComparisonExp.fromJson(json['table'] as Map<String, dynamic>),
      time: json['time'] == null
          ? null
          : TimestamptzComparisonExp.fromJson(
              json['time'] as Map<String, dynamic>),
      user: json['user'] == null
          ? null
          : UsersBoolExp.fromJson(json['user'] as Map<String, dynamic>),
      userRole: json['userRole'] == null
          ? null
          : StringComparisonExp.fromJson(
              json['userRole'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$HistoryEditHistoryBoolExpToJson(
        HistoryEditHistoryBoolExp instance) =>
    <String, dynamic>{
      '_and': instance.$and?.map((e) => e.toJson()).toList(),
      '_not': instance.$not?.toJson(),
      '_or': instance.$or?.map((e) => e.toJson()).toList(),
      'auditId': instance.auditId?.toJson(),
      'isUserAllowedToRead': instance.isUserAllowedToRead?.toJson(),
      'recordId': instance.recordId?.toJson(),
      'recordedBy': instance.recordedBy?.toJson(),
      'table': instance.table?.toJson(),
      'time': instance.time?.toJson(),
      'user': instance.user?.toJson(),
      'userRole': instance.userRole?.toJson(),
    };

NameComparisonExp _$NameComparisonExpFromJson(Map<String, dynamic> json) =>
    NameComparisonExp(
      $eq: json['_eq'] as String?,
      $gt: json['_gt'] as String?,
      $gte: json['_gte'] as String?,
      $in: (json['_in'] as List<dynamic>?)?.map((e) => e as String).toList(),
      $isNull: json['_isNull'] as bool?,
      $lt: json['_lt'] as String?,
      $lte: json['_lte'] as String?,
      $neq: json['_neq'] as String?,
      $nin: (json['_nin'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$NameComparisonExpToJson(NameComparisonExp instance) =>
    <String, dynamic>{
      '_eq': instance.$eq,
      '_gt': instance.$gt,
      '_gte': instance.$gte,
      '_in': instance.$in,
      '_isNull': instance.$isNull,
      '_lt': instance.$lt,
      '_lte': instance.$lte,
      '_neq': instance.$neq,
      '_nin': instance.$nin,
    };

FamiliesBoolExp _$FamiliesBoolExpFromJson(Map<String, dynamic> json) =>
    FamiliesBoolExp(
      $and: (json['_and'] as List<dynamic>?)
          ?.map((e) => FamiliesBoolExp.fromJson(e as Map<String, dynamic>))
          .toList(),
      $not: json['_not'] == null
          ? null
          : FamiliesBoolExp.fromJson(json['_not'] as Map<String, dynamic>),
      $or: (json['_or'] as List<dynamic>?)
          ?.map((e) => FamiliesBoolExp.fromJson(e as Map<String, dynamic>))
          .toList(),
      address: json['address'] == null
          ? null
          : StringComparisonExp.fromJson(
              json['address'] as Map<String, dynamic>),
      areas: json['areas'] == null
          ? null
          : AreasBoolExp.fromJson(json['areas'] as Map<String, dynamic>),
      color: json['color'] == null
          ? null
          : IntComparisonExp.fromJson(json['color'] as Map<String, dynamic>),
      families: json['families'] == null
          ? null
          : FamiliesFamiliesBoolExp.fromJson(
              json['families'] as Map<String, dynamic>),
      family: json['family'] == null
          ? null
          : FamiliesFamiliesBoolExp.fromJson(
              json['family'] as Map<String, dynamic>),
      geolocation: json['geolocation'] == null
          ? null
          : GeographyComparisonExp.fromJson(
              json['geolocation'] as Map<String, dynamic>),
      id: json['id'] == null
          ? null
          : UuidComparisonExp.fromJson(json['id'] as Map<String, dynamic>),
      isUserAllowedToRead: json['isUserAllowedToRead'] == null
          ? null
          : BooleanComparisonExp.fromJson(
              json['isUserAllowedToRead'] as Map<String, dynamic>),
      isUserAllowedToWrite: json['isUserAllowedToWrite'] == null
          ? null
          : BooleanComparisonExp.fromJson(
              json['isUserAllowedToWrite'] as Map<String, dynamic>),
      lastEdit: json['lastEdit'] == null
          ? null
          : JsonbComparisonExp.fromJson(
              json['lastEdit'] as Map<String, dynamic>),
      name: json['name'] == null
          ? null
          : StringComparisonExp.fromJson(json['name'] as Map<String, dynamic>),
      notes: json['notes'] == null
          ? null
          : StringComparisonExp.fromJson(json['notes'] as Map<String, dynamic>),
      persons: json['persons'] == null
          ? null
          : PersonsBoolExp.fromJson(json['persons'] as Map<String, dynamic>),
      photoUpdatedAt: json['photoUpdatedAt'] == null
          ? null
          : TimestamptzComparisonExp.fromJson(
              json['photoUpdatedAt'] as Map<String, dynamic>),
      stores: json['stores'] == null
          ? null
          : StoresBoolExp.fromJson(json['stores'] as Map<String, dynamic>),
      streets: json['streets'] == null
          ? null
          : StreetsBoolExp.fromJson(json['streets'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FamiliesBoolExpToJson(FamiliesBoolExp instance) =>
    <String, dynamic>{
      '_and': instance.$and?.map((e) => e.toJson()).toList(),
      '_not': instance.$not?.toJson(),
      '_or': instance.$or?.map((e) => e.toJson()).toList(),
      'address': instance.address?.toJson(),
      'areas': instance.areas?.toJson(),
      'color': instance.color?.toJson(),
      'families': instance.families?.toJson(),
      'family': instance.family?.toJson(),
      'geolocation': instance.geolocation?.toJson(),
      'id': instance.id?.toJson(),
      'isUserAllowedToRead': instance.isUserAllowedToRead?.toJson(),
      'isUserAllowedToWrite': instance.isUserAllowedToWrite?.toJson(),
      'lastEdit': instance.lastEdit?.toJson(),
      'name': instance.name?.toJson(),
      'notes': instance.notes?.toJson(),
      'persons': instance.persons?.toJson(),
      'photoUpdatedAt': instance.photoUpdatedAt?.toJson(),
      'stores': instance.stores?.toJson(),
      'streets': instance.streets?.toJson(),
    };

FamiliesFamiliesBoolExp _$FamiliesFamiliesBoolExpFromJson(
        Map<String, dynamic> json) =>
    FamiliesFamiliesBoolExp(
      $and: (json['_and'] as List<dynamic>?)
          ?.map((e) =>
              FamiliesFamiliesBoolExp.fromJson(e as Map<String, dynamic>))
          .toList(),
      $not: json['_not'] == null
          ? null
          : FamiliesFamiliesBoolExp.fromJson(
              json['_not'] as Map<String, dynamic>),
      $or: (json['_or'] as List<dynamic>?)
          ?.map((e) =>
              FamiliesFamiliesBoolExp.fromJson(e as Map<String, dynamic>))
          .toList(),
      innerFamily: json['innerFamily'] == null
          ? null
          : FamiliesBoolExp.fromJson(
              json['innerFamily'] as Map<String, dynamic>),
      innerFamilyId: json['innerFamilyId'] == null
          ? null
          : UuidComparisonExp.fromJson(
              json['innerFamilyId'] as Map<String, dynamic>),
      outerFamily: json['outerFamily'] == null
          ? null
          : FamiliesBoolExp.fromJson(
              json['outerFamily'] as Map<String, dynamic>),
      outerFamilyId: json['outerFamilyId'] == null
          ? null
          : UuidComparisonExp.fromJson(
              json['outerFamilyId'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FamiliesFamiliesBoolExpToJson(
        FamiliesFamiliesBoolExp instance) =>
    <String, dynamic>{
      '_and': instance.$and?.map((e) => e.toJson()).toList(),
      '_not': instance.$not?.toJson(),
      '_or': instance.$or?.map((e) => e.toJson()).toList(),
      'innerFamily': instance.innerFamily?.toJson(),
      'innerFamilyId': instance.innerFamilyId?.toJson(),
      'outerFamily': instance.outerFamily?.toJson(),
      'outerFamilyId': instance.outerFamilyId?.toJson(),
    };

GeographyComparisonExp _$GeographyComparisonExpFromJson(
        Map<String, dynamic> json) =>
    GeographyComparisonExp(
      $cast: json['_cast'] == null
          ? null
          : GeographyCastExp.fromJson(json['_cast'] as Map<String, dynamic>),
      $eq: fromGraphQLGeographyNullableToDartJsonNullable(json['_eq']),
      $gt: fromGraphQLGeographyNullableToDartJsonNullable(json['_gt']),
      $gte: fromGraphQLGeographyNullableToDartJsonNullable(json['_gte']),
      $in: fromGraphQLListNullableGeographyToDartListNullableJson(
          json['_in'] as List<Map<dynamic, dynamic>>?),
      $isNull: json['_isNull'] as bool?,
      $lt: fromGraphQLGeographyNullableToDartJsonNullable(json['_lt']),
      $lte: fromGraphQLGeographyNullableToDartJsonNullable(json['_lte']),
      $neq: fromGraphQLGeographyNullableToDartJsonNullable(json['_neq']),
      $nin: fromGraphQLListNullableGeographyToDartListNullableJson(
          json['_nin'] as List<Map<dynamic, dynamic>>?),
      $stDWithin: json['_stDWithin'] == null
          ? null
          : StDWithinGeographyInput.fromJson(
              json['_stDWithin'] as Map<String, dynamic>),
      $stIntersects:
          fromGraphQLGeographyNullableToDartJsonNullable(json['_stIntersects']),
    );

Map<String, dynamic> _$GeographyComparisonExpToJson(
        GeographyComparisonExp instance) =>
    <String, dynamic>{
      '_cast': instance.$cast?.toJson(),
      '_eq': fromDartJsonNullableToGraphQLGeographyNullable(instance.$eq),
      '_gt': fromDartJsonNullableToGraphQLGeographyNullable(instance.$gt),
      '_gte': fromDartJsonNullableToGraphQLGeographyNullable(instance.$gte),
      '_in':
          fromDartListNullableJsonToGraphQLListNullableGeography(instance.$in),
      '_isNull': instance.$isNull,
      '_lt': fromDartJsonNullableToGraphQLGeographyNullable(instance.$lt),
      '_lte': fromDartJsonNullableToGraphQLGeographyNullable(instance.$lte),
      '_neq': fromDartJsonNullableToGraphQLGeographyNullable(instance.$neq),
      '_nin':
          fromDartListNullableJsonToGraphQLListNullableGeography(instance.$nin),
      '_stDWithin': instance.$stDWithin?.toJson(),
      '_stIntersects': fromDartJsonNullableToGraphQLGeographyNullable(
          instance.$stIntersects),
    };

GeographyCastExp _$GeographyCastExpFromJson(Map<String, dynamic> json) =>
    GeographyCastExp(
      geometry: json['geometry'] == null
          ? null
          : GeometryComparisonExp.fromJson(
              json['geometry'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GeographyCastExpToJson(GeographyCastExp instance) =>
    <String, dynamic>{
      'geometry': instance.geometry?.toJson(),
    };

GeometryComparisonExp _$GeometryComparisonExpFromJson(
        Map<String, dynamic> json) =>
    GeometryComparisonExp(
      $cast: json['_cast'] == null
          ? null
          : GeometryCastExp.fromJson(json['_cast'] as Map<String, dynamic>),
      $eq: fromGraphQLGeometryNullableToDartJsonNullable(json['_eq']),
      $gt: fromGraphQLGeometryNullableToDartJsonNullable(json['_gt']),
      $gte: fromGraphQLGeometryNullableToDartJsonNullable(json['_gte']),
      $in: fromGraphQLListNullableGeometryToDartListNullableJson(
          json['_in'] as List<Map<dynamic, dynamic>>?),
      $isNull: json['_isNull'] as bool?,
      $lt: fromGraphQLGeometryNullableToDartJsonNullable(json['_lt']),
      $lte: fromGraphQLGeometryNullableToDartJsonNullable(json['_lte']),
      $neq: fromGraphQLGeometryNullableToDartJsonNullable(json['_neq']),
      $nin: fromGraphQLListNullableGeometryToDartListNullableJson(
          json['_nin'] as List<Map<dynamic, dynamic>>?),
      $st3dDWithin: json['_st3dDWithin'] == null
          ? null
          : StDWithinInput.fromJson(
              json['_st3dDWithin'] as Map<String, dynamic>),
      $st3dIntersects: fromGraphQLGeometryNullableToDartJsonNullable(
          json['_st3dIntersects']),
      $stContains:
          fromGraphQLGeometryNullableToDartJsonNullable(json['_stContains']),
      $stCrosses:
          fromGraphQLGeometryNullableToDartJsonNullable(json['_stCrosses']),
      $stDWithin: json['_stDWithin'] == null
          ? null
          : StDWithinInput.fromJson(json['_stDWithin'] as Map<String, dynamic>),
      $stEquals:
          fromGraphQLGeometryNullableToDartJsonNullable(json['_stEquals']),
      $stIntersects:
          fromGraphQLGeometryNullableToDartJsonNullable(json['_stIntersects']),
      $stOverlaps:
          fromGraphQLGeometryNullableToDartJsonNullable(json['_stOverlaps']),
      $stTouches:
          fromGraphQLGeometryNullableToDartJsonNullable(json['_stTouches']),
      $stWithin:
          fromGraphQLGeometryNullableToDartJsonNullable(json['_stWithin']),
    );

Map<String, dynamic> _$GeometryComparisonExpToJson(
        GeometryComparisonExp instance) =>
    <String, dynamic>{
      '_cast': instance.$cast?.toJson(),
      '_eq': fromDartJsonNullableToGraphQLGeometryNullable(instance.$eq),
      '_gt': fromDartJsonNullableToGraphQLGeometryNullable(instance.$gt),
      '_gte': fromDartJsonNullableToGraphQLGeometryNullable(instance.$gte),
      '_in':
          fromDartListNullableJsonToGraphQLListNullableGeometry(instance.$in),
      '_isNull': instance.$isNull,
      '_lt': fromDartJsonNullableToGraphQLGeometryNullable(instance.$lt),
      '_lte': fromDartJsonNullableToGraphQLGeometryNullable(instance.$lte),
      '_neq': fromDartJsonNullableToGraphQLGeometryNullable(instance.$neq),
      '_nin':
          fromDartListNullableJsonToGraphQLListNullableGeometry(instance.$nin),
      '_st3dDWithin': instance.$st3dDWithin?.toJson(),
      '_st3dIntersects': fromDartJsonNullableToGraphQLGeometryNullable(
          instance.$st3dIntersects),
      '_stContains':
          fromDartJsonNullableToGraphQLGeometryNullable(instance.$stContains),
      '_stCrosses':
          fromDartJsonNullableToGraphQLGeometryNullable(instance.$stCrosses),
      '_stDWithin': instance.$stDWithin?.toJson(),
      '_stEquals':
          fromDartJsonNullableToGraphQLGeometryNullable(instance.$stEquals),
      '_stIntersects':
          fromDartJsonNullableToGraphQLGeometryNullable(instance.$stIntersects),
      '_stOverlaps':
          fromDartJsonNullableToGraphQLGeometryNullable(instance.$stOverlaps),
      '_stTouches':
          fromDartJsonNullableToGraphQLGeometryNullable(instance.$stTouches),
      '_stWithin':
          fromDartJsonNullableToGraphQLGeometryNullable(instance.$stWithin),
    };

GeometryCastExp _$GeometryCastExpFromJson(Map<String, dynamic> json) =>
    GeometryCastExp(
      geography: json['geography'] == null
          ? null
          : GeographyComparisonExp.fromJson(
              json['geography'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GeometryCastExpToJson(GeometryCastExp instance) =>
    <String, dynamic>{
      'geography': instance.geography?.toJson(),
    };

StDWithinInput _$StDWithinInputFromJson(Map<String, dynamic> json) =>
    StDWithinInput(
      distance: (json['distance'] as num).toDouble(),
      from: fromGraphQLGeometryToDartJson(json['from']),
    );

Map<String, dynamic> _$StDWithinInputToJson(StDWithinInput instance) =>
    <String, dynamic>{
      'distance': instance.distance,
      'from': fromDartJsonToGraphQLGeometry(instance.from),
    };

StDWithinGeographyInput _$StDWithinGeographyInputFromJson(
        Map<String, dynamic> json) =>
    StDWithinGeographyInput(
      distance: (json['distance'] as num).toDouble(),
      from: fromGraphQLGeographyToDartJson(json['from']),
      useSpheroid: json['use_spheroid'] as bool?,
    );

Map<String, dynamic> _$StDWithinGeographyInputToJson(
        StDWithinGeographyInput instance) =>
    <String, dynamic>{
      'distance': instance.distance,
      'from': fromDartJsonToGraphQLGeography(instance.from),
      'use_spheroid': instance.useSpheroid,
    };

StoresBoolExp _$StoresBoolExpFromJson(Map<String, dynamic> json) =>
    StoresBoolExp(
      $and: (json['_and'] as List<dynamic>?)
          ?.map((e) => StoresBoolExp.fromJson(e as Map<String, dynamic>))
          .toList(),
      $not: json['_not'] == null
          ? null
          : StoresBoolExp.fromJson(json['_not'] as Map<String, dynamic>),
      $or: (json['_or'] as List<dynamic>?)
          ?.map((e) => StoresBoolExp.fromJson(e as Map<String, dynamic>))
          .toList(),
      adminFamily: json['adminFamily'] == null
          ? null
          : UuidComparisonExp.fromJson(
              json['adminFamily'] as Map<String, dynamic>),
      areas: json['areas'] == null
          ? null
          : AreasBoolExp.fromJson(json['areas'] as Map<String, dynamic>),
      color: json['color'] == null
          ? null
          : IntComparisonExp.fromJson(json['color'] as Map<String, dynamic>),
      family: json['family'] == null
          ? null
          : FamiliesBoolExp.fromJson(json['family'] as Map<String, dynamic>),
      geolocation: json['geolocation'] == null
          ? null
          : GeographyComparisonExp.fromJson(
              json['geolocation'] as Map<String, dynamic>),
      id: json['id'] == null
          ? null
          : UuidComparisonExp.fromJson(json['id'] as Map<String, dynamic>),
      isUserAllowedToRead: json['isUserAllowedToRead'] == null
          ? null
          : BooleanComparisonExp.fromJson(
              json['isUserAllowedToRead'] as Map<String, dynamic>),
      isUserAllowedToWrite: json['isUserAllowedToWrite'] == null
          ? null
          : BooleanComparisonExp.fromJson(
              json['isUserAllowedToWrite'] as Map<String, dynamic>),
      lastEdit: json['lastEdit'] == null
          ? null
          : JsonbComparisonExp.fromJson(
              json['lastEdit'] as Map<String, dynamic>),
      name: json['name'] == null
          ? null
          : StringComparisonExp.fromJson(json['name'] as Map<String, dynamic>),
      photoUpdatedAt: json['photoUpdatedAt'] == null
          ? null
          : TimestamptzComparisonExp.fromJson(
              json['photoUpdatedAt'] as Map<String, dynamic>),
      streets: json['streets'] == null
          ? null
          : StreetsBoolExp.fromJson(json['streets'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StoresBoolExpToJson(StoresBoolExp instance) =>
    <String, dynamic>{
      '_and': instance.$and?.map((e) => e.toJson()).toList(),
      '_not': instance.$not?.toJson(),
      '_or': instance.$or?.map((e) => e.toJson()).toList(),
      'adminFamily': instance.adminFamily?.toJson(),
      'areas': instance.areas?.toJson(),
      'color': instance.color?.toJson(),
      'family': instance.family?.toJson(),
      'geolocation': instance.geolocation?.toJson(),
      'id': instance.id?.toJson(),
      'isUserAllowedToRead': instance.isUserAllowedToRead?.toJson(),
      'isUserAllowedToWrite': instance.isUserAllowedToWrite?.toJson(),
      'lastEdit': instance.lastEdit?.toJson(),
      'name': instance.name?.toJson(),
      'photoUpdatedAt': instance.photoUpdatedAt?.toJson(),
      'streets': instance.streets?.toJson(),
    };

StreetsBoolExp _$StreetsBoolExpFromJson(Map<String, dynamic> json) =>
    StreetsBoolExp(
      $and: (json['_and'] as List<dynamic>?)
          ?.map((e) => StreetsBoolExp.fromJson(e as Map<String, dynamic>))
          .toList(),
      $not: json['_not'] == null
          ? null
          : StreetsBoolExp.fromJson(json['_not'] as Map<String, dynamic>),
      $or: (json['_or'] as List<dynamic>?)
          ?.map((e) => StreetsBoolExp.fromJson(e as Map<String, dynamic>))
          .toList(),
      areas: json['areas'] == null
          ? null
          : AreasBoolExp.fromJson(json['areas'] as Map<String, dynamic>),
      color: json['color'] == null
          ? null
          : BigintComparisonExp.fromJson(json['color'] as Map<String, dynamic>),
      families: json['families'] == null
          ? null
          : FamiliesBoolExp.fromJson(json['families'] as Map<String, dynamic>),
      id: json['id'] == null
          ? null
          : UuidComparisonExp.fromJson(json['id'] as Map<String, dynamic>),
      isUserAllowedToRead: json['isUserAllowedToRead'] == null
          ? null
          : BooleanComparisonExp.fromJson(
              json['isUserAllowedToRead'] as Map<String, dynamic>),
      isUserAllowedToWrite: json['isUserAllowedToWrite'] == null
          ? null
          : BooleanComparisonExp.fromJson(
              json['isUserAllowedToWrite'] as Map<String, dynamic>),
      lastEdit: json['lastEdit'] == null
          ? null
          : JsonbComparisonExp.fromJson(
              json['lastEdit'] as Map<String, dynamic>),
      line: json['line'] == null
          ? null
          : GeographyComparisonExp.fromJson(
              json['line'] as Map<String, dynamic>),
      name: json['name'] == null
          ? null
          : StringComparisonExp.fromJson(json['name'] as Map<String, dynamic>),
      persons: json['persons'] == null
          ? null
          : PersonsBoolExp.fromJson(json['persons'] as Map<String, dynamic>),
      photoUpdatedAt: json['photoUpdatedAt'] == null
          ? null
          : TimestamptzComparisonExp.fromJson(
              json['photoUpdatedAt'] as Map<String, dynamic>),
      stores: json['stores'] == null
          ? null
          : StoresBoolExp.fromJson(json['stores'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StreetsBoolExpToJson(StreetsBoolExp instance) =>
    <String, dynamic>{
      '_and': instance.$and?.map((e) => e.toJson()).toList(),
      '_not': instance.$not?.toJson(),
      '_or': instance.$or?.map((e) => e.toJson()).toList(),
      'areas': instance.areas?.toJson(),
      'color': instance.color?.toJson(),
      'families': instance.families?.toJson(),
      'id': instance.id?.toJson(),
      'isUserAllowedToRead': instance.isUserAllowedToRead?.toJson(),
      'isUserAllowedToWrite': instance.isUserAllowedToWrite?.toJson(),
      'lastEdit': instance.lastEdit?.toJson(),
      'line': instance.line?.toJson(),
      'name': instance.name?.toJson(),
      'persons': instance.persons?.toJson(),
      'photoUpdatedAt': instance.photoUpdatedAt?.toJson(),
      'stores': instance.stores?.toJson(),
    };

JobsBoolExp _$JobsBoolExpFromJson(Map<String, dynamic> json) => JobsBoolExp(
      $and: (json['_and'] as List<dynamic>?)
          ?.map((e) => JobsBoolExp.fromJson(e as Map<String, dynamic>))
          .toList(),
      $not: json['_not'] == null
          ? null
          : JobsBoolExp.fromJson(json['_not'] as Map<String, dynamic>),
      $or: (json['_or'] as List<dynamic>?)
          ?.map((e) => JobsBoolExp.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] == null
          ? null
          : UuidComparisonExp.fromJson(json['id'] as Map<String, dynamic>),
      name: json['name'] == null
          ? null
          : StringComparisonExp.fromJson(json['name'] as Map<String, dynamic>),
      persons: json['persons'] == null
          ? null
          : PersonsBoolExp.fromJson(json['persons'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$JobsBoolExpToJson(JobsBoolExp instance) =>
    <String, dynamic>{
      '_and': instance.$and?.map((e) => e.toJson()).toList(),
      '_not': instance.$not?.toJson(),
      '_or': instance.$or?.map((e) => e.toJson()).toList(),
      'id': instance.id?.toJson(),
      'name': instance.name?.toJson(),
      'persons': instance.persons?.toJson(),
    };

HistoryKodasHistoryBoolExp _$HistoryKodasHistoryBoolExpFromJson(
        Map<String, dynamic> json) =>
    HistoryKodasHistoryBoolExp(
      $and: (json['_and'] as List<dynamic>?)
          ?.map((e) =>
              HistoryKodasHistoryBoolExp.fromJson(e as Map<String, dynamic>))
          .toList(),
      $not: json['_not'] == null
          ? null
          : HistoryKodasHistoryBoolExp.fromJson(
              json['_not'] as Map<String, dynamic>),
      $or: (json['_or'] as List<dynamic>?)
          ?.map((e) =>
              HistoryKodasHistoryBoolExp.fromJson(e as Map<String, dynamic>))
          .toList(),
      day: json['day'] == null
          ? null
          : HistoryAttendanceDaysBoolExp.fromJson(
              json['day'] as Map<String, dynamic>),
      dayId: json['dayId'] == null
          ? null
          : DateComparisonExp.fromJson(json['dayId'] as Map<String, dynamic>),
      id: json['id'] == null
          ? null
          : UuidComparisonExp.fromJson(json['id'] as Map<String, dynamic>),
      person: json['person'] == null
          ? null
          : PersonsBoolExp.fromJson(json['person'] as Map<String, dynamic>),
      personId: json['personId'] == null
          ? null
          : UuidComparisonExp.fromJson(
              json['personId'] as Map<String, dynamic>),
      recordedBy: json['recordedBy'] == null
          ? null
          : UuidComparisonExp.fromJson(
              json['recordedBy'] as Map<String, dynamic>),
      time: json['time'] == null
          ? null
          : DateComparisonExp.fromJson(json['time'] as Map<String, dynamic>),
      user: json['user'] == null
          ? null
          : UsersBoolExp.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$HistoryKodasHistoryBoolExpToJson(
        HistoryKodasHistoryBoolExp instance) =>
    <String, dynamic>{
      '_and': instance.$and?.map((e) => e.toJson()).toList(),
      '_not': instance.$not?.toJson(),
      '_or': instance.$or?.map((e) => e.toJson()).toList(),
      'day': instance.day?.toJson(),
      'dayId': instance.dayId?.toJson(),
      'id': instance.id?.toJson(),
      'person': instance.person?.toJson(),
      'personId': instance.personId?.toJson(),
      'recordedBy': instance.recordedBy?.toJson(),
      'time': instance.time?.toJson(),
      'user': instance.user?.toJson(),
    };

PersonTypesBoolExp _$PersonTypesBoolExpFromJson(Map<String, dynamic> json) =>
    PersonTypesBoolExp(
      $and: (json['_and'] as List<dynamic>?)
          ?.map((e) => PersonTypesBoolExp.fromJson(e as Map<String, dynamic>))
          .toList(),
      $not: json['_not'] == null
          ? null
          : PersonTypesBoolExp.fromJson(json['_not'] as Map<String, dynamic>),
      $or: (json['_or'] as List<dynamic>?)
          ?.map((e) => PersonTypesBoolExp.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] == null
          ? null
          : UuidComparisonExp.fromJson(json['id'] as Map<String, dynamic>),
      name: json['name'] == null
          ? null
          : StringComparisonExp.fromJson(json['name'] as Map<String, dynamic>),
      order: json['order'] == null
          ? null
          : IntComparisonExp.fromJson(json['order'] as Map<String, dynamic>),
      persons: json['persons'] == null
          ? null
          : PersonsBoolExp.fromJson(json['persons'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PersonTypesBoolExpToJson(PersonTypesBoolExp instance) =>
    <String, dynamic>{
      '_and': instance.$and?.map((e) => e.toJson()).toList(),
      '_not': instance.$not?.toJson(),
      '_or': instance.$or?.map((e) => e.toJson()).toList(),
      'id': instance.id?.toJson(),
      'name': instance.name?.toJson(),
      'order': instance.order?.toJson(),
      'persons': instance.persons?.toJson(),
    };

QualificationsBoolExp _$QualificationsBoolExpFromJson(
        Map<String, dynamic> json) =>
    QualificationsBoolExp(
      $and: (json['_and'] as List<dynamic>?)
          ?.map(
              (e) => QualificationsBoolExp.fromJson(e as Map<String, dynamic>))
          .toList(),
      $not: json['_not'] == null
          ? null
          : QualificationsBoolExp.fromJson(
              json['_not'] as Map<String, dynamic>),
      $or: (json['_or'] as List<dynamic>?)
          ?.map(
              (e) => QualificationsBoolExp.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] == null
          ? null
          : UuidComparisonExp.fromJson(json['id'] as Map<String, dynamic>),
      name: json['name'] == null
          ? null
          : StringComparisonExp.fromJson(json['name'] as Map<String, dynamic>),
      persons: json['persons'] == null
          ? null
          : PersonsBoolExp.fromJson(json['persons'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$QualificationsBoolExpToJson(
        QualificationsBoolExp instance) =>
    <String, dynamic>{
      '_and': instance.$and?.map((e) => e.toJson()).toList(),
      '_not': instance.$not?.toJson(),
      '_or': instance.$or?.map((e) => e.toJson()).toList(),
      'id': instance.id?.toJson(),
      'name': instance.name?.toJson(),
      'persons': instance.persons?.toJson(),
    };

SchoolsBoolExp _$SchoolsBoolExpFromJson(Map<String, dynamic> json) =>
    SchoolsBoolExp(
      $and: (json['_and'] as List<dynamic>?)
          ?.map((e) => SchoolsBoolExp.fromJson(e as Map<String, dynamic>))
          .toList(),
      $not: json['_not'] == null
          ? null
          : SchoolsBoolExp.fromJson(json['_not'] as Map<String, dynamic>),
      $or: (json['_or'] as List<dynamic>?)
          ?.map((e) => SchoolsBoolExp.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] == null
          ? null
          : UuidComparisonExp.fromJson(json['id'] as Map<String, dynamic>),
      name: json['name'] == null
          ? null
          : StringComparisonExp.fromJson(json['name'] as Map<String, dynamic>),
      persons: json['persons'] == null
          ? null
          : PersonsBoolExp.fromJson(json['persons'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SchoolsBoolExpToJson(SchoolsBoolExp instance) =>
    <String, dynamic>{
      '_and': instance.$and?.map((e) => e.toJson()).toList(),
      '_not': instance.$not?.toJson(),
      '_or': instance.$or?.map((e) => e.toJson()).toList(),
      'id': instance.id?.toJson(),
      'name': instance.name?.toJson(),
      'persons': instance.persons?.toJson(),
    };

PersonsServicesBoolExp _$PersonsServicesBoolExpFromJson(
        Map<String, dynamic> json) =>
    PersonsServicesBoolExp(
      $and: (json['_and'] as List<dynamic>?)
          ?.map(
              (e) => PersonsServicesBoolExp.fromJson(e as Map<String, dynamic>))
          .toList(),
      $not: json['_not'] == null
          ? null
          : PersonsServicesBoolExp.fromJson(
              json['_not'] as Map<String, dynamic>),
      $or: (json['_or'] as List<dynamic>?)
          ?.map(
              (e) => PersonsServicesBoolExp.fromJson(e as Map<String, dynamic>))
          .toList(),
      person: json['person'] == null
          ? null
          : PersonsBoolExp.fromJson(json['person'] as Map<String, dynamic>),
      personId: json['personId'] == null
          ? null
          : UuidComparisonExp.fromJson(
              json['personId'] as Map<String, dynamic>),
      relId: json['relId'] == null
          ? null
          : UuidComparisonExp.fromJson(json['relId'] as Map<String, dynamic>),
      service: json['service'] == null
          ? null
          : ServicesBoolExp.fromJson(json['service'] as Map<String, dynamic>),
      serviceId: json['serviceId'] == null
          ? null
          : UuidComparisonExp.fromJson(
              json['serviceId'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PersonsServicesBoolExpToJson(
        PersonsServicesBoolExp instance) =>
    <String, dynamic>{
      '_and': instance.$and?.map((e) => e.toJson()).toList(),
      '_not': instance.$not?.toJson(),
      '_or': instance.$or?.map((e) => e.toJson()).toList(),
      'person': instance.person?.toJson(),
      'personId': instance.personId?.toJson(),
      'relId': instance.relId?.toJson(),
      'service': instance.service?.toJson(),
      'serviceId': instance.serviceId?.toJson(),
    };

ServicesBoolExp _$ServicesBoolExpFromJson(Map<String, dynamic> json) =>
    ServicesBoolExp(
      $and: (json['_and'] as List<dynamic>?)
          ?.map((e) => ServicesBoolExp.fromJson(e as Map<String, dynamic>))
          .toList(),
      $not: json['_not'] == null
          ? null
          : ServicesBoolExp.fromJson(json['_not'] as Map<String, dynamic>),
      $or: (json['_or'] as List<dynamic>?)
          ?.map((e) => ServicesBoolExp.fromJson(e as Map<String, dynamic>))
          .toList(),
      attendanceDaysConstraints: json['attendanceDaysConstraints'] == null
          ? null
          : HistoryAttendanceDaysConstraintsBoolExp.fromJson(
              json['attendanceDaysConstraints'] as Map<String, dynamic>),
      attendanceHistory: json['attendanceHistory'] == null
          ? null
          : HistoryAttendanceHistoryBoolExp.fromJson(
              json['attendanceHistory'] as Map<String, dynamic>),
      classes: json['classes'] == null
          ? null
          : ClassesBoolExp.fromJson(json['classes'] as Map<String, dynamic>),
      color: json['color'] == null
          ? null
          : IntComparisonExp.fromJson(json['color'] as Map<String, dynamic>),
      firestoreId: json['firestoreId'] == null
          ? null
          : StringComparisonExp.fromJson(
              json['firestoreId'] as Map<String, dynamic>),
      fromStudyYear: json['fromStudyYear'] == null
          ? null
          : StudyYearsBoolExp.fromJson(
              json['fromStudyYear'] as Map<String, dynamic>),
      groups: json['groups'] == null
          ? null
          : GroupsBoolExp.fromJson(json['groups'] as Map<String, dynamic>),
      id: json['id'] == null
          ? null
          : UuidComparisonExp.fromJson(json['id'] as Map<String, dynamic>),
      isUserAllowedToRead: json['isUserAllowedToRead'] == null
          ? null
          : BooleanComparisonExp.fromJson(
              json['isUserAllowedToRead'] as Map<String, dynamic>),
      isUserAllowedToWrite: json['isUserAllowedToWrite'] == null
          ? null
          : BooleanComparisonExp.fromJson(
              json['isUserAllowedToWrite'] as Map<String, dynamic>),
      lastEdit: json['lastEdit'] == null
          ? null
          : JsonbComparisonExp.fromJson(
              json['lastEdit'] as Map<String, dynamic>),
      name: json['name'] == null
          ? null
          : StringComparisonExp.fromJson(json['name'] as Map<String, dynamic>),
      nextService: json['nextService'] == null
          ? null
          : UuidComparisonExp.fromJson(
              json['nextService'] as Map<String, dynamic>),
      persons: json['persons'] == null
          ? null
          : PersonsServicesBoolExp.fromJson(
              json['persons'] as Map<String, dynamic>),
      photoUpdatedAt: json['photoUpdatedAt'] == null
          ? null
          : TimestamptzComparisonExp.fromJson(
              json['photoUpdatedAt'] as Map<String, dynamic>),
      studyYearFrom: json['studyYearFrom'] == null
          ? null
          : SmallintComparisonExp.fromJson(
              json['studyYearFrom'] as Map<String, dynamic>),
      studyYearTo: json['studyYearTo'] == null
          ? null
          : SmallintComparisonExp.fromJson(
              json['studyYearTo'] as Map<String, dynamic>),
      toStudyYear: json['toStudyYear'] == null
          ? null
          : StudyYearsBoolExp.fromJson(
              json['toStudyYear'] as Map<String, dynamic>),
      users: json['users'] == null
          ? null
          : UsersPermissionsBoolExp.fromJson(
              json['users'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ServicesBoolExpToJson(ServicesBoolExp instance) =>
    <String, dynamic>{
      '_and': instance.$and?.map((e) => e.toJson()).toList(),
      '_not': instance.$not?.toJson(),
      '_or': instance.$or?.map((e) => e.toJson()).toList(),
      'attendanceDaysConstraints': instance.attendanceDaysConstraints?.toJson(),
      'attendanceHistory': instance.attendanceHistory?.toJson(),
      'classes': instance.classes?.toJson(),
      'color': instance.color?.toJson(),
      'firestoreId': instance.firestoreId?.toJson(),
      'fromStudyYear': instance.fromStudyYear?.toJson(),
      'groups': instance.groups?.toJson(),
      'id': instance.id?.toJson(),
      'isUserAllowedToRead': instance.isUserAllowedToRead?.toJson(),
      'isUserAllowedToWrite': instance.isUserAllowedToWrite?.toJson(),
      'lastEdit': instance.lastEdit?.toJson(),
      'name': instance.name?.toJson(),
      'nextService': instance.nextService?.toJson(),
      'persons': instance.persons?.toJson(),
      'photoUpdatedAt': instance.photoUpdatedAt?.toJson(),
      'studyYearFrom': instance.studyYearFrom?.toJson(),
      'studyYearTo': instance.studyYearTo?.toJson(),
      'toStudyYear': instance.toStudyYear?.toJson(),
      'users': instance.users?.toJson(),
    };

StudyYearsBoolExp _$StudyYearsBoolExpFromJson(Map<String, dynamic> json) =>
    StudyYearsBoolExp(
      $and: (json['_and'] as List<dynamic>?)
          ?.map((e) => StudyYearsBoolExp.fromJson(e as Map<String, dynamic>))
          .toList(),
      $not: json['_not'] == null
          ? null
          : StudyYearsBoolExp.fromJson(json['_not'] as Map<String, dynamic>),
      $or: (json['_or'] as List<dynamic>?)
          ?.map((e) => StudyYearsBoolExp.fromJson(e as Map<String, dynamic>))
          .toList(),
      attendanceDaysConstraints: json['attendanceDaysConstraints'] == null
          ? null
          : HistoryAttendanceDaysConstraintsBoolExp.fromJson(
              json['attendanceDaysConstraints'] as Map<String, dynamic>),
      classes: json['classes'] == null
          ? null
          : ClassesBoolExp.fromJson(json['classes'] as Map<String, dynamic>),
      name: json['name'] == null
          ? null
          : StringComparisonExp.fromJson(json['name'] as Map<String, dynamic>),
      order: json['order'] == null
          ? null
          : SmallintComparisonExp.fromJson(
              json['order'] as Map<String, dynamic>),
      persons: json['persons'] == null
          ? null
          : PersonsBoolExp.fromJson(json['persons'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StudyYearsBoolExpToJson(StudyYearsBoolExp instance) =>
    <String, dynamic>{
      '_and': instance.$and?.map((e) => e.toJson()).toList(),
      '_not': instance.$not?.toJson(),
      '_or': instance.$or?.map((e) => e.toJson()).toList(),
      'attendanceDaysConstraints': instance.attendanceDaysConstraints?.toJson(),
      'classes': instance.classes?.toJson(),
      'name': instance.name?.toJson(),
      'order': instance.order?.toJson(),
      'persons': instance.persons?.toJson(),
    };

SmallintComparisonExp _$SmallintComparisonExpFromJson(
        Map<String, dynamic> json) =>
    SmallintComparisonExp(
      $eq: json['_eq'] as int?,
      $gt: json['_gt'] as int?,
      $gte: json['_gte'] as int?,
      $in: (json['_in'] as List<dynamic>?)?.map((e) => e as int).toList(),
      $isNull: json['_isNull'] as bool?,
      $lt: json['_lt'] as int?,
      $lte: json['_lte'] as int?,
      $neq: json['_neq'] as int?,
      $nin: (json['_nin'] as List<dynamic>?)?.map((e) => e as int).toList(),
    );

Map<String, dynamic> _$SmallintComparisonExpToJson(
        SmallintComparisonExp instance) =>
    <String, dynamic>{
      '_eq': instance.$eq,
      '_gt': instance.$gt,
      '_gte': instance.$gte,
      '_in': instance.$in,
      '_isNull': instance.$isNull,
      '_lt': instance.$lt,
      '_lte': instance.$lte,
      '_neq': instance.$neq,
      '_nin': instance.$nin,
    };

ShammasLevelsBoolExp _$ShammasLevelsBoolExpFromJson(
        Map<String, dynamic> json) =>
    ShammasLevelsBoolExp(
      $and: (json['_and'] as List<dynamic>?)
          ?.map((e) => ShammasLevelsBoolExp.fromJson(e as Map<String, dynamic>))
          .toList(),
      $not: json['_not'] == null
          ? null
          : ShammasLevelsBoolExp.fromJson(json['_not'] as Map<String, dynamic>),
      $or: (json['_or'] as List<dynamic>?)
          ?.map((e) => ShammasLevelsBoolExp.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] == null
          ? null
          : UuidComparisonExp.fromJson(json['id'] as Map<String, dynamic>),
      name: json['name'] == null
          ? null
          : StringComparisonExp.fromJson(json['name'] as Map<String, dynamic>),
      order: json['order'] == null
          ? null
          : IntComparisonExp.fromJson(json['order'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ShammasLevelsBoolExpToJson(
        ShammasLevelsBoolExp instance) =>
    <String, dynamic>{
      '_and': instance.$and?.map((e) => e.toJson()).toList(),
      '_not': instance.$not?.toJson(),
      '_or': instance.$or?.map((e) => e.toJson()).toList(),
      'id': instance.id?.toJson(),
      'name': instance.name?.toJson(),
      'order': instance.order?.toJson(),
    };

PersonStatesBoolExp _$PersonStatesBoolExpFromJson(Map<String, dynamic> json) =>
    PersonStatesBoolExp(
      $and: (json['_and'] as List<dynamic>?)
          ?.map((e) => PersonStatesBoolExp.fromJson(e as Map<String, dynamic>))
          .toList(),
      $not: json['_not'] == null
          ? null
          : PersonStatesBoolExp.fromJson(json['_not'] as Map<String, dynamic>),
      $or: (json['_or'] as List<dynamic>?)
          ?.map((e) => PersonStatesBoolExp.fromJson(e as Map<String, dynamic>))
          .toList(),
      color: json['color'] == null
          ? null
          : BigintComparisonExp.fromJson(json['color'] as Map<String, dynamic>),
      id: json['id'] == null
          ? null
          : UuidComparisonExp.fromJson(json['id'] as Map<String, dynamic>),
      name: json['name'] == null
          ? null
          : StringComparisonExp.fromJson(json['name'] as Map<String, dynamic>),
      persons: json['persons'] == null
          ? null
          : PersonsBoolExp.fromJson(json['persons'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PersonStatesBoolExpToJson(
        PersonStatesBoolExp instance) =>
    <String, dynamic>{
      '_and': instance.$and?.map((e) => e.toJson()).toList(),
      '_not': instance.$not?.toJson(),
      '_or': instance.$or?.map((e) => e.toJson()).toList(),
      'color': instance.color?.toJson(),
      'id': instance.id?.toJson(),
      'name': instance.name?.toJson(),
      'persons': instance.persons?.toJson(),
    };

PersonsTagsBoolExp _$PersonsTagsBoolExpFromJson(Map<String, dynamic> json) =>
    PersonsTagsBoolExp(
      $and: (json['_and'] as List<dynamic>?)
          ?.map((e) => PersonsTagsBoolExp.fromJson(e as Map<String, dynamic>))
          .toList(),
      $not: json['_not'] == null
          ? null
          : PersonsTagsBoolExp.fromJson(json['_not'] as Map<String, dynamic>),
      $or: (json['_or'] as List<dynamic>?)
          ?.map((e) => PersonsTagsBoolExp.fromJson(e as Map<String, dynamic>))
          .toList(),
      person: json['person'] == null
          ? null
          : PersonsBoolExp.fromJson(json['person'] as Map<String, dynamic>),
      personId: json['personId'] == null
          ? null
          : UuidComparisonExp.fromJson(
              json['personId'] as Map<String, dynamic>),
      relId: json['relId'] == null
          ? null
          : UuidComparisonExp.fromJson(json['relId'] as Map<String, dynamic>),
      tag: json['tag'] == null
          ? null
          : TagsBoolExp.fromJson(json['tag'] as Map<String, dynamic>),
      tagId: json['tagId'] == null
          ? null
          : UuidComparisonExp.fromJson(json['tagId'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PersonsTagsBoolExpToJson(PersonsTagsBoolExp instance) =>
    <String, dynamic>{
      '_and': instance.$and?.map((e) => e.toJson()).toList(),
      '_not': instance.$not?.toJson(),
      '_or': instance.$or?.map((e) => e.toJson()).toList(),
      'person': instance.person?.toJson(),
      'personId': instance.personId?.toJson(),
      'relId': instance.relId?.toJson(),
      'tag': instance.tag?.toJson(),
      'tagId': instance.tagId?.toJson(),
    };

TagsBoolExp _$TagsBoolExpFromJson(Map<String, dynamic> json) => TagsBoolExp(
      $and: (json['_and'] as List<dynamic>?)
          ?.map((e) => TagsBoolExp.fromJson(e as Map<String, dynamic>))
          .toList(),
      $not: json['_not'] == null
          ? null
          : TagsBoolExp.fromJson(json['_not'] as Map<String, dynamic>),
      $or: (json['_or'] as List<dynamic>?)
          ?.map((e) => TagsBoolExp.fromJson(e as Map<String, dynamic>))
          .toList(),
      color: json['color'] == null
          ? null
          : BigintComparisonExp.fromJson(json['color'] as Map<String, dynamic>),
      id: json['id'] == null
          ? null
          : UuidComparisonExp.fromJson(json['id'] as Map<String, dynamic>),
      name: json['name'] == null
          ? null
          : StringComparisonExp.fromJson(json['name'] as Map<String, dynamic>),
      persons: json['persons'] == null
          ? null
          : PersonsTagsBoolExp.fromJson(
              json['persons'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TagsBoolExpToJson(TagsBoolExp instance) =>
    <String, dynamic>{
      '_and': instance.$and?.map((e) => e.toJson()).toList(),
      '_not': instance.$not?.toJson(),
      '_or': instance.$or?.map((e) => e.toJson()).toList(),
      'color': instance.color?.toJson(),
      'id': instance.id?.toJson(),
      'name': instance.name?.toJson(),
      'persons': instance.persons?.toJson(),
    };

HistoryVisitHistoryBoolExp _$HistoryVisitHistoryBoolExpFromJson(
        Map<String, dynamic> json) =>
    HistoryVisitHistoryBoolExp(
      $and: (json['_and'] as List<dynamic>?)
          ?.map((e) =>
              HistoryVisitHistoryBoolExp.fromJson(e as Map<String, dynamic>))
          .toList(),
      $not: json['_not'] == null
          ? null
          : HistoryVisitHistoryBoolExp.fromJson(
              json['_not'] as Map<String, dynamic>),
      $or: (json['_or'] as List<dynamic>?)
          ?.map((e) =>
              HistoryVisitHistoryBoolExp.fromJson(e as Map<String, dynamic>))
          .toList(),
      person: json['person'] == null
          ? null
          : PersonsBoolExp.fromJson(json['person'] as Map<String, dynamic>),
      personId: json['personId'] == null
          ? null
          : UuidComparisonExp.fromJson(
              json['personId'] as Map<String, dynamic>),
      recordedBy: json['recordedBy'] == null
          ? null
          : UuidComparisonExp.fromJson(
              json['recordedBy'] as Map<String, dynamic>),
      time: json['time'] == null
          ? null
          : TimestamptzComparisonExp.fromJson(
              json['time'] as Map<String, dynamic>),
      user: json['user'] == null
          ? null
          : UsersBoolExp.fromJson(json['user'] as Map<String, dynamic>),
      userRole: json['userRole'] == null
          ? null
          : StringComparisonExp.fromJson(
              json['userRole'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$HistoryVisitHistoryBoolExpToJson(
        HistoryVisitHistoryBoolExp instance) =>
    <String, dynamic>{
      '_and': instance.$and?.map((e) => e.toJson()).toList(),
      '_not': instance.$not?.toJson(),
      '_or': instance.$or?.map((e) => e.toJson()).toList(),
      'person': instance.person?.toJson(),
      'personId': instance.personId?.toJson(),
      'recordedBy': instance.recordedBy?.toJson(),
      'time': instance.time?.toJson(),
      'user': instance.user?.toJson(),
      'userRole': instance.userRole?.toJson(),
    };

DaterangeComparisonExp _$DaterangeComparisonExpFromJson(
        Map<String, dynamic> json) =>
    DaterangeComparisonExp(
      $eq: json['_eq'] as String?,
      $gt: json['_gt'] as String?,
      $gte: json['_gte'] as String?,
      $in: (json['_in'] as List<dynamic>?)?.map((e) => e as String).toList(),
      $isNull: json['_isNull'] as bool?,
      $lt: json['_lt'] as String?,
      $lte: json['_lte'] as String?,
      $neq: json['_neq'] as String?,
      $nin: (json['_nin'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$DaterangeComparisonExpToJson(
        DaterangeComparisonExp instance) =>
    <String, dynamic>{
      '_eq': instance.$eq,
      '_gt': instance.$gt,
      '_gte': instance.$gte,
      '_in': instance.$in,
      '_isNull': instance.$isNull,
      '_lt': instance.$lt,
      '_lte': instance.$lte,
      '_neq': instance.$neq,
      '_nin': instance.$nin,
    };

TimestampComparisonExp _$TimestampComparisonExpFromJson(
        Map<String, dynamic> json) =>
    TimestampComparisonExp(
      $eq: json['_eq'] == null ? null : DateTime.parse(json['_eq'] as String),
      $gt: json['_gt'] == null ? null : DateTime.parse(json['_gt'] as String),
      $gte:
          json['_gte'] == null ? null : DateTime.parse(json['_gte'] as String),
      $in: (json['_in'] as List<dynamic>?)
          ?.map((e) => DateTime.parse(e as String))
          .toList(),
      $isNull: json['_isNull'] as bool?,
      $lt: json['_lt'] == null ? null : DateTime.parse(json['_lt'] as String),
      $lte:
          json['_lte'] == null ? null : DateTime.parse(json['_lte'] as String),
      $neq:
          json['_neq'] == null ? null : DateTime.parse(json['_neq'] as String),
      $nin: (json['_nin'] as List<dynamic>?)
          ?.map((e) => DateTime.parse(e as String))
          .toList(),
    );

Map<String, dynamic> _$TimestampComparisonExpToJson(
        TimestampComparisonExp instance) =>
    <String, dynamic>{
      '_eq': instance.$eq?.toIso8601String(),
      '_gt': instance.$gt?.toIso8601String(),
      '_gte': instance.$gte?.toIso8601String(),
      '_in': instance.$in?.map((e) => e.toIso8601String()).toList(),
      '_isNull': instance.$isNull,
      '_lt': instance.$lt?.toIso8601String(),
      '_lte': instance.$lte?.toIso8601String(),
      '_neq': instance.$neq?.toIso8601String(),
      '_nin': instance.$nin?.map((e) => e.toIso8601String()).toList(),
    };

TimeComparisonExp _$TimeComparisonExpFromJson(Map<String, dynamic> json) =>
    TimeComparisonExp(
      $eq: json['_eq'] == null ? null : DateTime.parse(json['_eq'] as String),
      $gt: json['_gt'] == null ? null : DateTime.parse(json['_gt'] as String),
      $gte:
          json['_gte'] == null ? null : DateTime.parse(json['_gte'] as String),
      $in: (json['_in'] as List<dynamic>?)
          ?.map((e) => DateTime.parse(e as String))
          .toList(),
      $isNull: json['_isNull'] as bool?,
      $lt: json['_lt'] == null ? null : DateTime.parse(json['_lt'] as String),
      $lte:
          json['_lte'] == null ? null : DateTime.parse(json['_lte'] as String),
      $neq:
          json['_neq'] == null ? null : DateTime.parse(json['_neq'] as String),
      $nin: (json['_nin'] as List<dynamic>?)
          ?.map((e) => DateTime.parse(e as String))
          .toList(),
    );

Map<String, dynamic> _$TimeComparisonExpToJson(TimeComparisonExp instance) =>
    <String, dynamic>{
      '_eq': instance.$eq?.toIso8601String(),
      '_gt': instance.$gt?.toIso8601String(),
      '_gte': instance.$gte?.toIso8601String(),
      '_in': instance.$in?.map((e) => e.toIso8601String()).toList(),
      '_isNull': instance.$isNull,
      '_lt': instance.$lt?.toIso8601String(),
      '_lte': instance.$lte?.toIso8601String(),
      '_neq': instance.$neq?.toIso8601String(),
      '_nin': instance.$nin?.map((e) => e.toIso8601String()).toList(),
    };

GetClassesStream$SubscriptionRoot$Classes
    _$GetClassesStream$SubscriptionRoot$ClassesFromJson(
            Map<String, dynamic> json) =>
        GetClassesStream$SubscriptionRoot$Classes()
          ..id = fromGraphQLUuidToDartUuidValue(json['id'])
          ..name = json['name'] as String
          ..color = json['color'] as int?
          ..photoUpdatedAt = json['photoUpdatedAt'] == null
              ? null
              : DateTime.parse(json['photoUpdatedAt'] as String);

Map<String, dynamic> _$GetClassesStream$SubscriptionRoot$ClassesToJson(
        GetClassesStream$SubscriptionRoot$Classes instance) =>
    <String, dynamic>{
      'id': fromDartUuidValueToGraphQLUuid(instance.id),
      'name': instance.name,
      'color': instance.color,
      'photoUpdatedAt': instance.photoUpdatedAt?.toIso8601String(),
    };

GetClassesStream$SubscriptionRoot _$GetClassesStream$SubscriptionRootFromJson(
        Map<String, dynamic> json) =>
    GetClassesStream$SubscriptionRoot()
      ..classes = (json['classes'] as List<dynamic>)
          .map((e) => GetClassesStream$SubscriptionRoot$Classes.fromJson(
              e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$GetClassesStream$SubscriptionRootToJson(
        GetClassesStream$SubscriptionRoot instance) =>
    <String, dynamic>{
      'classes': instance.classes.map((e) => e.toJson()).toList(),
    };

GetFamiliesStream$SubscriptionRoot$Families
    _$GetFamiliesStream$SubscriptionRoot$FamiliesFromJson(
            Map<String, dynamic> json) =>
        GetFamiliesStream$SubscriptionRoot$Families()
          ..id = fromGraphQLUuidToDartUuidValue(json['id'])
          ..name = json['name'] as String
          ..color = json['color'] as int?
          ..photoUpdatedAt = json['photoUpdatedAt'] == null
              ? null
              : DateTime.parse(json['photoUpdatedAt'] as String);

Map<String, dynamic> _$GetFamiliesStream$SubscriptionRoot$FamiliesToJson(
        GetFamiliesStream$SubscriptionRoot$Families instance) =>
    <String, dynamic>{
      'id': fromDartUuidValueToGraphQLUuid(instance.id),
      'name': instance.name,
      'color': instance.color,
      'photoUpdatedAt': instance.photoUpdatedAt?.toIso8601String(),
    };

GetFamiliesStream$SubscriptionRoot _$GetFamiliesStream$SubscriptionRootFromJson(
        Map<String, dynamic> json) =>
    GetFamiliesStream$SubscriptionRoot()
      ..families = (json['families'] as List<dynamic>)
          .map((e) => GetFamiliesStream$SubscriptionRoot$Families.fromJson(
              e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$GetFamiliesStream$SubscriptionRootToJson(
        GetFamiliesStream$SubscriptionRoot instance) =>
    <String, dynamic>{
      'families': instance.families.map((e) => e.toJson()).toList(),
    };

GetGroupsStream$SubscriptionRoot$Groups
    _$GetGroupsStream$SubscriptionRoot$GroupsFromJson(
            Map<String, dynamic> json) =>
        GetGroupsStream$SubscriptionRoot$Groups()
          ..id = fromGraphQLUuidToDartUuidValue(json['id'])
          ..name = json['name'] as String
          ..photoUpdatedAt = json['photoUpdatedAt'] == null
              ? null
              : DateTime.parse(json['photoUpdatedAt'] as String);

Map<String, dynamic> _$GetGroupsStream$SubscriptionRoot$GroupsToJson(
        GetGroupsStream$SubscriptionRoot$Groups instance) =>
    <String, dynamic>{
      'id': fromDartUuidValueToGraphQLUuid(instance.id),
      'name': instance.name,
      'photoUpdatedAt': instance.photoUpdatedAt?.toIso8601String(),
    };

GetGroupsStream$SubscriptionRoot _$GetGroupsStream$SubscriptionRootFromJson(
        Map<String, dynamic> json) =>
    GetGroupsStream$SubscriptionRoot()
      ..groups = (json['groups'] as List<dynamic>)
          .map((e) => GetGroupsStream$SubscriptionRoot$Groups.fromJson(
              e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$GetGroupsStream$SubscriptionRootToJson(
        GetGroupsStream$SubscriptionRoot instance) =>
    <String, dynamic>{
      'groups': instance.groups.map((e) => e.toJson()).toList(),
    };

GetChurchesStream$SubscriptionRoot$Churches
    _$GetChurchesStream$SubscriptionRoot$ChurchesFromJson(
            Map<String, dynamic> json) =>
        GetChurchesStream$SubscriptionRoot$Churches()
          ..id = fromGraphQLUuidToDartUuidValue(json['id'])
          ..name = json['name'] as String;

Map<String, dynamic> _$GetChurchesStream$SubscriptionRoot$ChurchesToJson(
        GetChurchesStream$SubscriptionRoot$Churches instance) =>
    <String, dynamic>{
      'id': fromDartUuidValueToGraphQLUuid(instance.id),
      'name': instance.name,
    };

GetChurchesStream$SubscriptionRoot _$GetChurchesStream$SubscriptionRootFromJson(
        Map<String, dynamic> json) =>
    GetChurchesStream$SubscriptionRoot()
      ..churches = (json['churches'] as List<dynamic>)
          .map((e) => GetChurchesStream$SubscriptionRoot$Churches.fromJson(
              e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$GetChurchesStream$SubscriptionRootToJson(
        GetChurchesStream$SubscriptionRoot instance) =>
    <String, dynamic>{
      'churches': instance.churches.map((e) => e.toJson()).toList(),
    };

GetCollegesStream$SubscriptionRoot$Colleges
    _$GetCollegesStream$SubscriptionRoot$CollegesFromJson(
            Map<String, dynamic> json) =>
        GetCollegesStream$SubscriptionRoot$Colleges()
          ..id = fromGraphQLUuidToDartUuidValue(json['id'])
          ..name = json['name'] as String;

Map<String, dynamic> _$GetCollegesStream$SubscriptionRoot$CollegesToJson(
        GetCollegesStream$SubscriptionRoot$Colleges instance) =>
    <String, dynamic>{
      'id': fromDartUuidValueToGraphQLUuid(instance.id),
      'name': instance.name,
    };

GetCollegesStream$SubscriptionRoot _$GetCollegesStream$SubscriptionRootFromJson(
        Map<String, dynamic> json) =>
    GetCollegesStream$SubscriptionRoot()
      ..colleges = (json['colleges'] as List<dynamic>)
          .map((e) => GetCollegesStream$SubscriptionRoot$Colleges.fromJson(
              e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$GetCollegesStream$SubscriptionRootToJson(
        GetCollegesStream$SubscriptionRoot instance) =>
    <String, dynamic>{
      'colleges': instance.colleges.map((e) => e.toJson()).toList(),
    };

GetFathersStream$SubscriptionRoot$Fathers
    _$GetFathersStream$SubscriptionRoot$FathersFromJson(
            Map<String, dynamic> json) =>
        GetFathersStream$SubscriptionRoot$Fathers()
          ..id = fromGraphQLUuidToDartUuidValue(json['id'])
          ..name = json['name'] as String;

Map<String, dynamic> _$GetFathersStream$SubscriptionRoot$FathersToJson(
        GetFathersStream$SubscriptionRoot$Fathers instance) =>
    <String, dynamic>{
      'id': fromDartUuidValueToGraphQLUuid(instance.id),
      'name': instance.name,
    };

GetFathersStream$SubscriptionRoot _$GetFathersStream$SubscriptionRootFromJson(
        Map<String, dynamic> json) =>
    GetFathersStream$SubscriptionRoot()
      ..fathers = (json['fathers'] as List<dynamic>)
          .map((e) => GetFathersStream$SubscriptionRoot$Fathers.fromJson(
              e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$GetFathersStream$SubscriptionRootToJson(
        GetFathersStream$SubscriptionRoot instance) =>
    <String, dynamic>{
      'fathers': instance.fathers.map((e) => e.toJson()).toList(),
    };

GetJobsStream$SubscriptionRoot$Jobs
    _$GetJobsStream$SubscriptionRoot$JobsFromJson(Map<String, dynamic> json) =>
        GetJobsStream$SubscriptionRoot$Jobs()
          ..id = fromGraphQLUuidToDartUuidValue(json['id'])
          ..name = json['name'] as String;

Map<String, dynamic> _$GetJobsStream$SubscriptionRoot$JobsToJson(
        GetJobsStream$SubscriptionRoot$Jobs instance) =>
    <String, dynamic>{
      'id': fromDartUuidValueToGraphQLUuid(instance.id),
      'name': instance.name,
    };

GetJobsStream$SubscriptionRoot _$GetJobsStream$SubscriptionRootFromJson(
        Map<String, dynamic> json) =>
    GetJobsStream$SubscriptionRoot()
      ..jobs = (json['jobs'] as List<dynamic>)
          .map((e) => GetJobsStream$SubscriptionRoot$Jobs.fromJson(
              e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$GetJobsStream$SubscriptionRootToJson(
        GetJobsStream$SubscriptionRoot instance) =>
    <String, dynamic>{
      'jobs': instance.jobs.map((e) => e.toJson()).toList(),
    };

GetPersonStatesStream$SubscriptionRoot$PersonStates
    _$GetPersonStatesStream$SubscriptionRoot$PersonStatesFromJson(
            Map<String, dynamic> json) =>
        GetPersonStatesStream$SubscriptionRoot$PersonStates()
          ..id = fromGraphQLUuidToDartUuidValue(json['id'])
          ..name = json['name'] as String
          ..color = json['color'] as int;

Map<String, dynamic>
    _$GetPersonStatesStream$SubscriptionRoot$PersonStatesToJson(
            GetPersonStatesStream$SubscriptionRoot$PersonStates instance) =>
        <String, dynamic>{
          'id': fromDartUuidValueToGraphQLUuid(instance.id),
          'name': instance.name,
          'color': instance.color,
        };

GetPersonStatesStream$SubscriptionRoot
    _$GetPersonStatesStream$SubscriptionRootFromJson(
            Map<String, dynamic> json) =>
        GetPersonStatesStream$SubscriptionRoot()
          ..personStates = (json['personStates'] as List<dynamic>)
              .map((e) =>
                  GetPersonStatesStream$SubscriptionRoot$PersonStates.fromJson(
                      e as Map<String, dynamic>))
              .toList();

Map<String, dynamic> _$GetPersonStatesStream$SubscriptionRootToJson(
        GetPersonStatesStream$SubscriptionRoot instance) =>
    <String, dynamic>{
      'personStates': instance.personStates.map((e) => e.toJson()).toList(),
    };

GetPersonTypesStream$SubscriptionRoot$PersonTypes
    _$GetPersonTypesStream$SubscriptionRoot$PersonTypesFromJson(
            Map<String, dynamic> json) =>
        GetPersonTypesStream$SubscriptionRoot$PersonTypes()
          ..id = fromGraphQLUuidToDartUuidValue(json['id'])
          ..order = json['order'] as int
          ..name = json['name'] as String;

Map<String, dynamic> _$GetPersonTypesStream$SubscriptionRoot$PersonTypesToJson(
        GetPersonTypesStream$SubscriptionRoot$PersonTypes instance) =>
    <String, dynamic>{
      'id': fromDartUuidValueToGraphQLUuid(instance.id),
      'order': instance.order,
      'name': instance.name,
    };

GetPersonTypesStream$SubscriptionRoot
    _$GetPersonTypesStream$SubscriptionRootFromJson(
            Map<String, dynamic> json) =>
        GetPersonTypesStream$SubscriptionRoot()
          ..personTypes = (json['personTypes'] as List<dynamic>)
              .map((e) =>
                  GetPersonTypesStream$SubscriptionRoot$PersonTypes.fromJson(
                      e as Map<String, dynamic>))
              .toList();

Map<String, dynamic> _$GetPersonTypesStream$SubscriptionRootToJson(
        GetPersonTypesStream$SubscriptionRoot instance) =>
    <String, dynamic>{
      'personTypes': instance.personTypes.map((e) => e.toJson()).toList(),
    };

GetQualificationsStream$SubscriptionRoot$Qualifications
    _$GetQualificationsStream$SubscriptionRoot$QualificationsFromJson(
            Map<String, dynamic> json) =>
        GetQualificationsStream$SubscriptionRoot$Qualifications()
          ..id = fromGraphQLUuidToDartUuidValue(json['id'])
          ..name = json['name'] as String;

Map<String, dynamic>
    _$GetQualificationsStream$SubscriptionRoot$QualificationsToJson(
            GetQualificationsStream$SubscriptionRoot$Qualifications instance) =>
        <String, dynamic>{
          'id': fromDartUuidValueToGraphQLUuid(instance.id),
          'name': instance.name,
        };

GetQualificationsStream$SubscriptionRoot
    _$GetQualificationsStream$SubscriptionRootFromJson(
            Map<String, dynamic> json) =>
        GetQualificationsStream$SubscriptionRoot()
          ..qualifications = (json['qualifications'] as List<dynamic>)
              .map((e) =>
                  GetQualificationsStream$SubscriptionRoot$Qualifications
                      .fromJson(e as Map<String, dynamic>))
              .toList();

Map<String, dynamic> _$GetQualificationsStream$SubscriptionRootToJson(
        GetQualificationsStream$SubscriptionRoot instance) =>
    <String, dynamic>{
      'qualifications': instance.qualifications.map((e) => e.toJson()).toList(),
    };

GetSchoolsStream$SubscriptionRoot$Schools
    _$GetSchoolsStream$SubscriptionRoot$SchoolsFromJson(
            Map<String, dynamic> json) =>
        GetSchoolsStream$SubscriptionRoot$Schools()
          ..id = fromGraphQLUuidToDartUuidValue(json['id'])
          ..name = json['name'] as String;

Map<String, dynamic> _$GetSchoolsStream$SubscriptionRoot$SchoolsToJson(
        GetSchoolsStream$SubscriptionRoot$Schools instance) =>
    <String, dynamic>{
      'id': fromDartUuidValueToGraphQLUuid(instance.id),
      'name': instance.name,
    };

GetSchoolsStream$SubscriptionRoot _$GetSchoolsStream$SubscriptionRootFromJson(
        Map<String, dynamic> json) =>
    GetSchoolsStream$SubscriptionRoot()
      ..schools = (json['schools'] as List<dynamic>)
          .map((e) => GetSchoolsStream$SubscriptionRoot$Schools.fromJson(
              e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$GetSchoolsStream$SubscriptionRootToJson(
        GetSchoolsStream$SubscriptionRoot instance) =>
    <String, dynamic>{
      'schools': instance.schools.map((e) => e.toJson()).toList(),
    };

GetShammasLevelsStream$SubscriptionRoot$ShammasLevels
    _$GetShammasLevelsStream$SubscriptionRoot$ShammasLevelsFromJson(
            Map<String, dynamic> json) =>
        GetShammasLevelsStream$SubscriptionRoot$ShammasLevels()
          ..id = fromGraphQLUuidToDartUuidValue(json['id'])
          ..order = json['order'] as int
          ..name = json['name'] as String;

Map<String, dynamic>
    _$GetShammasLevelsStream$SubscriptionRoot$ShammasLevelsToJson(
            GetShammasLevelsStream$SubscriptionRoot$ShammasLevels instance) =>
        <String, dynamic>{
          'id': fromDartUuidValueToGraphQLUuid(instance.id),
          'order': instance.order,
          'name': instance.name,
        };

GetShammasLevelsStream$SubscriptionRoot
    _$GetShammasLevelsStream$SubscriptionRootFromJson(
            Map<String, dynamic> json) =>
        GetShammasLevelsStream$SubscriptionRoot()
          ..shammasLevels = (json['shammasLevels'] as List<dynamic>)
              .map((e) => GetShammasLevelsStream$SubscriptionRoot$ShammasLevels
                  .fromJson(e as Map<String, dynamic>))
              .toList();

Map<String, dynamic> _$GetShammasLevelsStream$SubscriptionRootToJson(
        GetShammasLevelsStream$SubscriptionRoot instance) =>
    <String, dynamic>{
      'shammasLevels': instance.shammasLevels.map((e) => e.toJson()).toList(),
    };

GetStudyYearName$QueryRoot$StudyYears
    _$GetStudyYearName$QueryRoot$StudyYearsFromJson(
            Map<String, dynamic> json) =>
        GetStudyYearName$QueryRoot$StudyYears()
          ..order = json['order'] as int
          ..name = json['name'] as String;

Map<String, dynamic> _$GetStudyYearName$QueryRoot$StudyYearsToJson(
        GetStudyYearName$QueryRoot$StudyYears instance) =>
    <String, dynamic>{
      'order': instance.order,
      'name': instance.name,
    };

GetStudyYearName$QueryRoot _$GetStudyYearName$QueryRootFromJson(
        Map<String, dynamic> json) =>
    GetStudyYearName$QueryRoot()
      ..studyYearsByPk = json['studyYearsByPk'] == null
          ? null
          : GetStudyYearName$QueryRoot$StudyYears.fromJson(
              json['studyYearsByPk'] as Map<String, dynamic>);

Map<String, dynamic> _$GetStudyYearName$QueryRootToJson(
        GetStudyYearName$QueryRoot instance) =>
    <String, dynamic>{
      'studyYearsByPk': instance.studyYearsByPk?.toJson(),
    };

GetStudyYearsStream$SubscriptionRoot$StudyYears
    _$GetStudyYearsStream$SubscriptionRoot$StudyYearsFromJson(
            Map<String, dynamic> json) =>
        GetStudyYearsStream$SubscriptionRoot$StudyYears()
          ..order = json['order'] as int
          ..name = json['name'] as String;

Map<String, dynamic> _$GetStudyYearsStream$SubscriptionRoot$StudyYearsToJson(
        GetStudyYearsStream$SubscriptionRoot$StudyYears instance) =>
    <String, dynamic>{
      'order': instance.order,
      'name': instance.name,
    };

GetStudyYearsStream$SubscriptionRoot
    _$GetStudyYearsStream$SubscriptionRootFromJson(Map<String, dynamic> json) =>
        GetStudyYearsStream$SubscriptionRoot()
          ..studyYears = (json['studyYears'] as List<dynamic>)
              .map((e) =>
                  GetStudyYearsStream$SubscriptionRoot$StudyYears.fromJson(
                      e as Map<String, dynamic>))
              .toList();

Map<String, dynamic> _$GetStudyYearsStream$SubscriptionRootToJson(
        GetStudyYearsStream$SubscriptionRoot instance) =>
    <String, dynamic>{
      'studyYears': instance.studyYears.map((e) => e.toJson()).toList(),
    };

GetTagsStream$SubscriptionRoot$Tags
    _$GetTagsStream$SubscriptionRoot$TagsFromJson(Map<String, dynamic> json) =>
        GetTagsStream$SubscriptionRoot$Tags()
          ..id = fromGraphQLUuidToDartUuidValue(json['id'])
          ..name = json['name'] as String
          ..color = json['color'] as int?;

Map<String, dynamic> _$GetTagsStream$SubscriptionRoot$TagsToJson(
        GetTagsStream$SubscriptionRoot$Tags instance) =>
    <String, dynamic>{
      'id': fromDartUuidValueToGraphQLUuid(instance.id),
      'name': instance.name,
      'color': instance.color,
    };

GetTagsStream$SubscriptionRoot _$GetTagsStream$SubscriptionRootFromJson(
        Map<String, dynamic> json) =>
    GetTagsStream$SubscriptionRoot()
      ..tags = (json['tags'] as List<dynamic>)
          .map((e) => GetTagsStream$SubscriptionRoot$Tags.fromJson(
              e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$GetTagsStream$SubscriptionRootToJson(
        GetTagsStream$SubscriptionRoot instance) =>
    <String, dynamic>{
      'tags': instance.tags.map((e) => e.toJson()).toList(),
    };

InsertPersonLastConfession$MutationRoot$HistoryConfessionHistory$Persons
    _$InsertPersonLastConfession$MutationRoot$HistoryConfessionHistory$PersonsFromJson(
            Map<String, dynamic> json) =>
        InsertPersonLastConfession$MutationRoot$HistoryConfessionHistory$Persons()
          ..id = fromGraphQLUuidToDartUuidValue(json['id'])
          ..name = json['name'] as String
          ..color = json['color'] as int?
          ..photoUpdatedAt = json['photoUpdatedAt'] == null
              ? null
              : DateTime.parse(json['photoUpdatedAt'] as String);

Map<String, dynamic>
    _$InsertPersonLastConfession$MutationRoot$HistoryConfessionHistory$PersonsToJson(
            InsertPersonLastConfession$MutationRoot$HistoryConfessionHistory$Persons
                instance) =>
        <String, dynamic>{
          'id': fromDartUuidValueToGraphQLUuid(instance.id),
          'name': instance.name,
          'color': instance.color,
          'photoUpdatedAt': instance.photoUpdatedAt?.toIso8601String(),
        };

InsertPersonLastConfession$MutationRoot$HistoryConfessionHistory
    _$InsertPersonLastConfession$MutationRoot$HistoryConfessionHistoryFromJson(
            Map<String, dynamic> json) =>
        InsertPersonLastConfession$MutationRoot$HistoryConfessionHistory()
          ..person =
              InsertPersonLastConfession$MutationRoot$HistoryConfessionHistory$Persons
                  .fromJson(json['person'] as Map<String, dynamic>);

Map<String, dynamic>
    _$InsertPersonLastConfession$MutationRoot$HistoryConfessionHistoryToJson(
            InsertPersonLastConfession$MutationRoot$HistoryConfessionHistory
                instance) =>
        <String, dynamic>{
          'person': instance.person.toJson(),
        };

InsertPersonLastConfession$MutationRoot
    _$InsertPersonLastConfession$MutationRootFromJson(
            Map<String, dynamic> json) =>
        InsertPersonLastConfession$MutationRoot()
          ..insertHistoryConfessionHistoryOne = json[
                      'insertHistoryConfessionHistoryOne'] ==
                  null
              ? null
              : InsertPersonLastConfession$MutationRoot$HistoryConfessionHistory
                  .fromJson(json['insertHistoryConfessionHistoryOne']
                      as Map<String, dynamic>);

Map<String, dynamic> _$InsertPersonLastConfession$MutationRootToJson(
        InsertPersonLastConfession$MutationRoot instance) =>
    <String, dynamic>{
      'insertHistoryConfessionHistoryOne':
          instance.insertHistoryConfessionHistoryOne?.toJson(),
    };

InsertPersonLastKodas$MutationRoot$HistoryKodasHistory$Persons
    _$InsertPersonLastKodas$MutationRoot$HistoryKodasHistory$PersonsFromJson(
            Map<String, dynamic> json) =>
        InsertPersonLastKodas$MutationRoot$HistoryKodasHistory$Persons()
          ..id = fromGraphQLUuidToDartUuidValue(json['id'])
          ..name = json['name'] as String
          ..color = json['color'] as int?
          ..photoUpdatedAt = json['photoUpdatedAt'] == null
              ? null
              : DateTime.parse(json['photoUpdatedAt'] as String);

Map<String, dynamic>
    _$InsertPersonLastKodas$MutationRoot$HistoryKodasHistory$PersonsToJson(
            InsertPersonLastKodas$MutationRoot$HistoryKodasHistory$Persons
                instance) =>
        <String, dynamic>{
          'id': fromDartUuidValueToGraphQLUuid(instance.id),
          'name': instance.name,
          'color': instance.color,
          'photoUpdatedAt': instance.photoUpdatedAt?.toIso8601String(),
        };

InsertPersonLastKodas$MutationRoot$HistoryKodasHistory
    _$InsertPersonLastKodas$MutationRoot$HistoryKodasHistoryFromJson(
            Map<String, dynamic> json) =>
        InsertPersonLastKodas$MutationRoot$HistoryKodasHistory()
          ..person =
              InsertPersonLastKodas$MutationRoot$HistoryKodasHistory$Persons
                  .fromJson(json['person'] as Map<String, dynamic>);

Map<String, dynamic>
    _$InsertPersonLastKodas$MutationRoot$HistoryKodasHistoryToJson(
            InsertPersonLastKodas$MutationRoot$HistoryKodasHistory instance) =>
        <String, dynamic>{
          'person': instance.person.toJson(),
        };

InsertPersonLastKodas$MutationRoot _$InsertPersonLastKodas$MutationRootFromJson(
        Map<String, dynamic> json) =>
    InsertPersonLastKodas$MutationRoot()
      ..insertHistoryKodasHistoryOne =
          json['insertHistoryKodasHistoryOne'] == null
              ? null
              : InsertPersonLastKodas$MutationRoot$HistoryKodasHistory.fromJson(
                  json['insertHistoryKodasHistoryOne'] as Map<String, dynamic>);

Map<String, dynamic> _$InsertPersonLastKodas$MutationRootToJson(
        InsertPersonLastKodas$MutationRoot instance) =>
    <String, dynamic>{
      'insertHistoryKodasHistoryOne':
          instance.insertHistoryKodasHistoryOne?.toJson(),
    };

InsertPersonLastCall$MutationRoot$HistoryCallHistory$Persons
    _$InsertPersonLastCall$MutationRoot$HistoryCallHistory$PersonsFromJson(
            Map<String, dynamic> json) =>
        InsertPersonLastCall$MutationRoot$HistoryCallHistory$Persons()
          ..id = fromGraphQLUuidToDartUuidValue(json['id'])
          ..name = json['name'] as String
          ..color = json['color'] as int?
          ..photoUpdatedAt = json['photoUpdatedAt'] == null
              ? null
              : DateTime.parse(json['photoUpdatedAt'] as String);

Map<String, dynamic>
    _$InsertPersonLastCall$MutationRoot$HistoryCallHistory$PersonsToJson(
            InsertPersonLastCall$MutationRoot$HistoryCallHistory$Persons
                instance) =>
        <String, dynamic>{
          'id': fromDartUuidValueToGraphQLUuid(instance.id),
          'name': instance.name,
          'color': instance.color,
          'photoUpdatedAt': instance.photoUpdatedAt?.toIso8601String(),
        };

InsertPersonLastCall$MutationRoot$HistoryCallHistory
    _$InsertPersonLastCall$MutationRoot$HistoryCallHistoryFromJson(
            Map<String, dynamic> json) =>
        InsertPersonLastCall$MutationRoot$HistoryCallHistory()
          ..person =
              InsertPersonLastCall$MutationRoot$HistoryCallHistory$Persons
                  .fromJson(json['person'] as Map<String, dynamic>);

Map<String, dynamic>
    _$InsertPersonLastCall$MutationRoot$HistoryCallHistoryToJson(
            InsertPersonLastCall$MutationRoot$HistoryCallHistory instance) =>
        <String, dynamic>{
          'person': instance.person.toJson(),
        };

InsertPersonLastCall$MutationRoot _$InsertPersonLastCall$MutationRootFromJson(
        Map<String, dynamic> json) =>
    InsertPersonLastCall$MutationRoot()
      ..insertHistoryCallHistoryOne =
          json['insertHistoryCallHistoryOne'] == null
              ? null
              : InsertPersonLastCall$MutationRoot$HistoryCallHistory.fromJson(
                  json['insertHistoryCallHistoryOne'] as Map<String, dynamic>);

Map<String, dynamic> _$InsertPersonLastCall$MutationRootToJson(
        InsertPersonLastCall$MutationRoot instance) =>
    <String, dynamic>{
      'insertHistoryCallHistoryOne':
          instance.insertHistoryCallHistoryOne?.toJson(),
    };

InsertPersonLastVisit$MutationRoot$HistoryVisitHistory$Persons
    _$InsertPersonLastVisit$MutationRoot$HistoryVisitHistory$PersonsFromJson(
            Map<String, dynamic> json) =>
        InsertPersonLastVisit$MutationRoot$HistoryVisitHistory$Persons()
          ..id = fromGraphQLUuidToDartUuidValue(json['id'])
          ..name = json['name'] as String
          ..color = json['color'] as int?
          ..photoUpdatedAt = json['photoUpdatedAt'] == null
              ? null
              : DateTime.parse(json['photoUpdatedAt'] as String);

Map<String, dynamic>
    _$InsertPersonLastVisit$MutationRoot$HistoryVisitHistory$PersonsToJson(
            InsertPersonLastVisit$MutationRoot$HistoryVisitHistory$Persons
                instance) =>
        <String, dynamic>{
          'id': fromDartUuidValueToGraphQLUuid(instance.id),
          'name': instance.name,
          'color': instance.color,
          'photoUpdatedAt': instance.photoUpdatedAt?.toIso8601String(),
        };

InsertPersonLastVisit$MutationRoot$HistoryVisitHistory
    _$InsertPersonLastVisit$MutationRoot$HistoryVisitHistoryFromJson(
            Map<String, dynamic> json) =>
        InsertPersonLastVisit$MutationRoot$HistoryVisitHistory()
          ..person =
              InsertPersonLastVisit$MutationRoot$HistoryVisitHistory$Persons
                  .fromJson(json['person'] as Map<String, dynamic>);

Map<String, dynamic>
    _$InsertPersonLastVisit$MutationRoot$HistoryVisitHistoryToJson(
            InsertPersonLastVisit$MutationRoot$HistoryVisitHistory instance) =>
        <String, dynamic>{
          'person': instance.person.toJson(),
        };

InsertPersonLastVisit$MutationRoot _$InsertPersonLastVisit$MutationRootFromJson(
        Map<String, dynamic> json) =>
    InsertPersonLastVisit$MutationRoot()
      ..insertHistoryVisitHistoryOne =
          json['insertHistoryVisitHistoryOne'] == null
              ? null
              : InsertPersonLastVisit$MutationRoot$HistoryVisitHistory.fromJson(
                  json['insertHistoryVisitHistoryOne'] as Map<String, dynamic>);

Map<String, dynamic> _$InsertPersonLastVisit$MutationRootToJson(
        InsertPersonLastVisit$MutationRoot instance) =>
    <String, dynamic>{
      'insertHistoryVisitHistoryOne':
          instance.insertHistoryVisitHistoryOne?.toJson(),
    };

UpdatePersonSpiritData$MutationRoot$HistoryConfessionHistory$Persons
    _$UpdatePersonSpiritData$MutationRoot$HistoryConfessionHistory$PersonsFromJson(
            Map<String, dynamic> json) =>
        UpdatePersonSpiritData$MutationRoot$HistoryConfessionHistory$Persons()
          ..id = fromGraphQLUuidToDartUuidValue(json['id'])
          ..name = json['name'] as String
          ..color = json['color'] as int?
          ..photoUpdatedAt = json['photoUpdatedAt'] == null
              ? null
              : DateTime.parse(json['photoUpdatedAt'] as String);

Map<String, dynamic>
    _$UpdatePersonSpiritData$MutationRoot$HistoryConfessionHistory$PersonsToJson(
            UpdatePersonSpiritData$MutationRoot$HistoryConfessionHistory$Persons
                instance) =>
        <String, dynamic>{
          'id': fromDartUuidValueToGraphQLUuid(instance.id),
          'name': instance.name,
          'color': instance.color,
          'photoUpdatedAt': instance.photoUpdatedAt?.toIso8601String(),
        };

UpdatePersonSpiritData$MutationRoot$HistoryConfessionHistory
    _$UpdatePersonSpiritData$MutationRoot$HistoryConfessionHistoryFromJson(
            Map<String, dynamic> json) =>
        UpdatePersonSpiritData$MutationRoot$HistoryConfessionHistory()
          ..person =
              UpdatePersonSpiritData$MutationRoot$HistoryConfessionHistory$Persons
                  .fromJson(json['person'] as Map<String, dynamic>);

Map<String, dynamic>
    _$UpdatePersonSpiritData$MutationRoot$HistoryConfessionHistoryToJson(
            UpdatePersonSpiritData$MutationRoot$HistoryConfessionHistory
                instance) =>
        <String, dynamic>{
          'person': instance.person.toJson(),
        };

UpdatePersonSpiritData$MutationRoot$HistoryKodasHistory$Persons
    _$UpdatePersonSpiritData$MutationRoot$HistoryKodasHistory$PersonsFromJson(
            Map<String, dynamic> json) =>
        UpdatePersonSpiritData$MutationRoot$HistoryKodasHistory$Persons()
          ..id = fromGraphQLUuidToDartUuidValue(json['id'])
          ..name = json['name'] as String
          ..color = json['color'] as int?
          ..photoUpdatedAt = json['photoUpdatedAt'] == null
              ? null
              : DateTime.parse(json['photoUpdatedAt'] as String);

Map<String, dynamic>
    _$UpdatePersonSpiritData$MutationRoot$HistoryKodasHistory$PersonsToJson(
            UpdatePersonSpiritData$MutationRoot$HistoryKodasHistory$Persons
                instance) =>
        <String, dynamic>{
          'id': fromDartUuidValueToGraphQLUuid(instance.id),
          'name': instance.name,
          'color': instance.color,
          'photoUpdatedAt': instance.photoUpdatedAt?.toIso8601String(),
        };

UpdatePersonSpiritData$MutationRoot$HistoryKodasHistory
    _$UpdatePersonSpiritData$MutationRoot$HistoryKodasHistoryFromJson(
            Map<String, dynamic> json) =>
        UpdatePersonSpiritData$MutationRoot$HistoryKodasHistory()
          ..person =
              UpdatePersonSpiritData$MutationRoot$HistoryKodasHistory$Persons
                  .fromJson(json['person'] as Map<String, dynamic>);

Map<String, dynamic>
    _$UpdatePersonSpiritData$MutationRoot$HistoryKodasHistoryToJson(
            UpdatePersonSpiritData$MutationRoot$HistoryKodasHistory instance) =>
        <String, dynamic>{
          'person': instance.person.toJson(),
        };

UpdatePersonSpiritData$MutationRoot
    _$UpdatePersonSpiritData$MutationRootFromJson(Map<String, dynamic> json) =>
        UpdatePersonSpiritData$MutationRoot()
          ..insertHistoryConfessionHistoryOne =
              json['insertHistoryConfessionHistoryOne'] == null
                  ? null
                  : UpdatePersonSpiritData$MutationRoot$HistoryConfessionHistory
                      .fromJson(json['insertHistoryConfessionHistoryOne']
                          as Map<String, dynamic>)
          ..insertHistoryKodasHistoryOne =
              json['insertHistoryKodasHistoryOne'] == null
                  ? null
                  : UpdatePersonSpiritData$MutationRoot$HistoryKodasHistory
                      .fromJson(json['insertHistoryKodasHistoryOne']
                          as Map<String, dynamic>);

Map<String, dynamic> _$UpdatePersonSpiritData$MutationRootToJson(
        UpdatePersonSpiritData$MutationRoot instance) =>
    <String, dynamic>{
      'insertHistoryConfessionHistoryOne':
          instance.insertHistoryConfessionHistoryOne?.toJson(),
      'insertHistoryKodasHistoryOne':
          instance.insertHistoryKodasHistoryOne?.toJson(),
    };

DeletePerson$MutationRoot$Persons _$DeletePerson$MutationRoot$PersonsFromJson(
        Map<String, dynamic> json) =>
    DeletePerson$MutationRoot$Persons()
      ..id = fromGraphQLUuidToDartUuidValue(json['id'])
      ..name = json['name'] as String
      ..color = json['color'] as int?
      ..photoUpdatedAt = json['photoUpdatedAt'] == null
          ? null
          : DateTime.parse(json['photoUpdatedAt'] as String);

Map<String, dynamic> _$DeletePerson$MutationRoot$PersonsToJson(
        DeletePerson$MutationRoot$Persons instance) =>
    <String, dynamic>{
      'id': fromDartUuidValueToGraphQLUuid(instance.id),
      'name': instance.name,
      'color': instance.color,
      'photoUpdatedAt': instance.photoUpdatedAt?.toIso8601String(),
    };

DeletePerson$MutationRoot _$DeletePerson$MutationRootFromJson(
        Map<String, dynamic> json) =>
    DeletePerson$MutationRoot()
      ..deletePersonsByPk = json['deletePersonsByPk'] == null
          ? null
          : DeletePerson$MutationRoot$Persons.fromJson(
              json['deletePersonsByPk'] as Map<String, dynamic>);

Map<String, dynamic> _$DeletePerson$MutationRootToJson(
        DeletePerson$MutationRoot instance) =>
    <String, dynamic>{
      'deletePersonsByPk': instance.deletePersonsByPk?.toJson(),
    };

UpdatePerson$MutationRoot$PersonsGroupsMutationResponse
    _$UpdatePerson$MutationRoot$PersonsGroupsMutationResponseFromJson(
            Map<String, dynamic> json) =>
        UpdatePerson$MutationRoot$PersonsGroupsMutationResponse()
          ..affectedRows = json['affected_rows'] as int;

Map<String, dynamic>
    _$UpdatePerson$MutationRoot$PersonsGroupsMutationResponseToJson(
            UpdatePerson$MutationRoot$PersonsGroupsMutationResponse instance) =>
        <String, dynamic>{
          'affected_rows': instance.affectedRows,
        };

UpdatePerson$MutationRoot$PersonsServicesMutationResponse
    _$UpdatePerson$MutationRoot$PersonsServicesMutationResponseFromJson(
            Map<String, dynamic> json) =>
        UpdatePerson$MutationRoot$PersonsServicesMutationResponse()
          ..affectedRows = json['affected_rows'] as int;

Map<String,
    dynamic> _$UpdatePerson$MutationRoot$PersonsServicesMutationResponseToJson(
        UpdatePerson$MutationRoot$PersonsServicesMutationResponse instance) =>
    <String, dynamic>{
      'affected_rows': instance.affectedRows,
    };

UpdatePerson$MutationRoot$PersonsTagsMutationResponse
    _$UpdatePerson$MutationRoot$PersonsTagsMutationResponseFromJson(
            Map<String, dynamic> json) =>
        UpdatePerson$MutationRoot$PersonsTagsMutationResponse()
          ..affectedRows = json['affected_rows'] as int;

Map<String, dynamic>
    _$UpdatePerson$MutationRoot$PersonsTagsMutationResponseToJson(
            UpdatePerson$MutationRoot$PersonsTagsMutationResponse instance) =>
        <String, dynamic>{
          'affected_rows': instance.affectedRows,
        };

UpdatePerson$MutationRoot$Persons _$UpdatePerson$MutationRoot$PersonsFromJson(
        Map<String, dynamic> json) =>
    UpdatePerson$MutationRoot$Persons()
      ..id = fromGraphQLUuidToDartUuidValue(json['id'])
      ..name = json['name'] as String
      ..color = json['color'] as int?
      ..photoUpdatedAt = json['photoUpdatedAt'] == null
          ? null
          : DateTime.parse(json['photoUpdatedAt'] as String);

Map<String, dynamic> _$UpdatePerson$MutationRoot$PersonsToJson(
        UpdatePerson$MutationRoot$Persons instance) =>
    <String, dynamic>{
      'id': fromDartUuidValueToGraphQLUuid(instance.id),
      'name': instance.name,
      'color': instance.color,
      'photoUpdatedAt': instance.photoUpdatedAt?.toIso8601String(),
    };

UpdatePerson$MutationRoot$HistoryConfessionHistory$Persons
    _$UpdatePerson$MutationRoot$HistoryConfessionHistory$PersonsFromJson(
            Map<String, dynamic> json) =>
        UpdatePerson$MutationRoot$HistoryConfessionHistory$Persons()
          ..id = fromGraphQLUuidToDartUuidValue(json['id'])
          ..name = json['name'] as String;

Map<String,
    dynamic> _$UpdatePerson$MutationRoot$HistoryConfessionHistory$PersonsToJson(
        UpdatePerson$MutationRoot$HistoryConfessionHistory$Persons instance) =>
    <String, dynamic>{
      'id': fromDartUuidValueToGraphQLUuid(instance.id),
      'name': instance.name,
    };

UpdatePerson$MutationRoot$HistoryConfessionHistory
    _$UpdatePerson$MutationRoot$HistoryConfessionHistoryFromJson(
            Map<String, dynamic> json) =>
        UpdatePerson$MutationRoot$HistoryConfessionHistory()
          ..person = UpdatePerson$MutationRoot$HistoryConfessionHistory$Persons
              .fromJson(json['person'] as Map<String, dynamic>);

Map<String, dynamic> _$UpdatePerson$MutationRoot$HistoryConfessionHistoryToJson(
        UpdatePerson$MutationRoot$HistoryConfessionHistory instance) =>
    <String, dynamic>{
      'person': instance.person.toJson(),
    };

UpdatePerson$MutationRoot$HistoryKodasHistory$Persons
    _$UpdatePerson$MutationRoot$HistoryKodasHistory$PersonsFromJson(
            Map<String, dynamic> json) =>
        UpdatePerson$MutationRoot$HistoryKodasHistory$Persons()
          ..id = fromGraphQLUuidToDartUuidValue(json['id'])
          ..name = json['name'] as String;

Map<String, dynamic>
    _$UpdatePerson$MutationRoot$HistoryKodasHistory$PersonsToJson(
            UpdatePerson$MutationRoot$HistoryKodasHistory$Persons instance) =>
        <String, dynamic>{
          'id': fromDartUuidValueToGraphQLUuid(instance.id),
          'name': instance.name,
        };

UpdatePerson$MutationRoot$HistoryKodasHistory
    _$UpdatePerson$MutationRoot$HistoryKodasHistoryFromJson(
            Map<String, dynamic> json) =>
        UpdatePerson$MutationRoot$HistoryKodasHistory()
          ..person =
              UpdatePerson$MutationRoot$HistoryKodasHistory$Persons.fromJson(
                  json['person'] as Map<String, dynamic>);

Map<String, dynamic> _$UpdatePerson$MutationRoot$HistoryKodasHistoryToJson(
        UpdatePerson$MutationRoot$HistoryKodasHistory instance) =>
    <String, dynamic>{
      'person': instance.person.toJson(),
    };

UpdatePerson$MutationRoot$HistoryCallHistory$Persons
    _$UpdatePerson$MutationRoot$HistoryCallHistory$PersonsFromJson(
            Map<String, dynamic> json) =>
        UpdatePerson$MutationRoot$HistoryCallHistory$Persons()
          ..id = fromGraphQLUuidToDartUuidValue(json['id'])
          ..name = json['name'] as String;

Map<String, dynamic>
    _$UpdatePerson$MutationRoot$HistoryCallHistory$PersonsToJson(
            UpdatePerson$MutationRoot$HistoryCallHistory$Persons instance) =>
        <String, dynamic>{
          'id': fromDartUuidValueToGraphQLUuid(instance.id),
          'name': instance.name,
        };

UpdatePerson$MutationRoot$HistoryCallHistory
    _$UpdatePerson$MutationRoot$HistoryCallHistoryFromJson(
            Map<String, dynamic> json) =>
        UpdatePerson$MutationRoot$HistoryCallHistory()
          ..person =
              UpdatePerson$MutationRoot$HistoryCallHistory$Persons.fromJson(
                  json['person'] as Map<String, dynamic>);

Map<String, dynamic> _$UpdatePerson$MutationRoot$HistoryCallHistoryToJson(
        UpdatePerson$MutationRoot$HistoryCallHistory instance) =>
    <String, dynamic>{
      'person': instance.person.toJson(),
    };

UpdatePerson$MutationRoot$HistoryVisitHistory$Persons
    _$UpdatePerson$MutationRoot$HistoryVisitHistory$PersonsFromJson(
            Map<String, dynamic> json) =>
        UpdatePerson$MutationRoot$HistoryVisitHistory$Persons()
          ..id = fromGraphQLUuidToDartUuidValue(json['id'])
          ..name = json['name'] as String;

Map<String, dynamic>
    _$UpdatePerson$MutationRoot$HistoryVisitHistory$PersonsToJson(
            UpdatePerson$MutationRoot$HistoryVisitHistory$Persons instance) =>
        <String, dynamic>{
          'id': fromDartUuidValueToGraphQLUuid(instance.id),
          'name': instance.name,
        };

UpdatePerson$MutationRoot$HistoryVisitHistory
    _$UpdatePerson$MutationRoot$HistoryVisitHistoryFromJson(
            Map<String, dynamic> json) =>
        UpdatePerson$MutationRoot$HistoryVisitHistory()
          ..person =
              UpdatePerson$MutationRoot$HistoryVisitHistory$Persons.fromJson(
                  json['person'] as Map<String, dynamic>);

Map<String, dynamic> _$UpdatePerson$MutationRoot$HistoryVisitHistoryToJson(
        UpdatePerson$MutationRoot$HistoryVisitHistory instance) =>
    <String, dynamic>{
      'person': instance.person.toJson(),
    };

UpdatePerson$MutationRoot _$UpdatePerson$MutationRootFromJson(
        Map<String, dynamic> json) =>
    UpdatePerson$MutationRoot()
      ..insertPersonsGroups = json['insertPersonsGroups'] == null
          ? null
          : UpdatePerson$MutationRoot$PersonsGroupsMutationResponse.fromJson(
              json['insertPersonsGroups'] as Map<String, dynamic>)
      ..insertPersonsServices = json['insertPersonsServices'] == null
          ? null
          : UpdatePerson$MutationRoot$PersonsServicesMutationResponse.fromJson(
              json['insertPersonsServices'] as Map<String, dynamic>)
      ..insertPersonsTags = json['insertPersonsTags'] == null
          ? null
          : UpdatePerson$MutationRoot$PersonsTagsMutationResponse.fromJson(
              json['insertPersonsTags'] as Map<String, dynamic>)
      ..deletePersonsGroups = json['deletePersonsGroups'] == null
          ? null
          : UpdatePerson$MutationRoot$PersonsGroupsMutationResponse.fromJson(
              json['deletePersonsGroups'] as Map<String, dynamic>)
      ..deletePersonsServices = json['deletePersonsServices'] == null
          ? null
          : UpdatePerson$MutationRoot$PersonsServicesMutationResponse.fromJson(
              json['deletePersonsServices'] as Map<String, dynamic>)
      ..deletePersonsTags = json['deletePersonsTags'] == null
          ? null
          : UpdatePerson$MutationRoot$PersonsTagsMutationResponse.fromJson(
              json['deletePersonsTags'] as Map<String, dynamic>)
      ..updatePersonsByPk = json['updatePersonsByPk'] == null
          ? null
          : UpdatePerson$MutationRoot$Persons.fromJson(
              json['updatePersonsByPk'] as Map<String, dynamic>)
      ..insertHistoryConfessionHistoryOne =
          json['insertHistoryConfessionHistoryOne'] == null
              ? null
              : UpdatePerson$MutationRoot$HistoryConfessionHistory.fromJson(
                  json['insertHistoryConfessionHistoryOne']
                      as Map<String, dynamic>)
      ..insertHistoryKodasHistoryOne =
          json['insertHistoryKodasHistoryOne'] == null
              ? null
              : UpdatePerson$MutationRoot$HistoryKodasHistory.fromJson(
                  json['insertHistoryKodasHistoryOne'] as Map<String, dynamic>)
      ..insertHistoryCallHistoryOne =
          json['insertHistoryCallHistoryOne'] == null
              ? null
              : UpdatePerson$MutationRoot$HistoryCallHistory.fromJson(
                  json['insertHistoryCallHistoryOne'] as Map<String, dynamic>)
      ..insertHistoryVisitHistoryOne =
          json['insertHistoryVisitHistoryOne'] == null
              ? null
              : UpdatePerson$MutationRoot$HistoryVisitHistory.fromJson(
                  json['insertHistoryVisitHistoryOne'] as Map<String, dynamic>);

Map<String, dynamic> _$UpdatePerson$MutationRootToJson(
        UpdatePerson$MutationRoot instance) =>
    <String, dynamic>{
      'insertPersonsGroups': instance.insertPersonsGroups?.toJson(),
      'insertPersonsServices': instance.insertPersonsServices?.toJson(),
      'insertPersonsTags': instance.insertPersonsTags?.toJson(),
      'deletePersonsGroups': instance.deletePersonsGroups?.toJson(),
      'deletePersonsServices': instance.deletePersonsServices?.toJson(),
      'deletePersonsTags': instance.deletePersonsTags?.toJson(),
      'updatePersonsByPk': instance.updatePersonsByPk?.toJson(),
      'insertHistoryConfessionHistoryOne':
          instance.insertHistoryConfessionHistoryOne?.toJson(),
      'insertHistoryKodasHistoryOne':
          instance.insertHistoryKodasHistoryOne?.toJson(),
      'insertHistoryCallHistoryOne':
          instance.insertHistoryCallHistoryOne?.toJson(),
      'insertHistoryVisitHistoryOne':
          instance.insertHistoryVisitHistoryOne?.toJson(),
    };

PersonsSetInput _$PersonsSetInputFromJson(Map<String, dynamic> json) =>
    PersonsSetInput(
      address: json['address'] as String?,
      birthdate: json['birthdate'] == null
          ? null
          : DateTime.parse(json['birthdate'] as String),
      churchId:
          fromGraphQLUuidNullableToDartUuidValueNullable(json['churchId']),
      collegeId:
          fromGraphQLUuidNullableToDartUuidValueNullable(json['collegeId']),
      color: json['color'] as int?,
      familyId:
          fromGraphQLUuidNullableToDartUuidValueNullable(json['familyId']),
      fatherId:
          fromGraphQLUuidNullableToDartUuidValueNullable(json['fatherId']),
      firestoreId: json['firestoreId'] as String?,
      gender: json['gender'] as bool?,
      geolocation:
          fromGraphQLGeographyNullableToDartJsonNullable(json['geolocation']),
      id: fromGraphQLUuidNullableToDartUuidValueNullable(json['id']),
      isServant: json['isServant'] as bool?,
      isShammas: json['isShammas'] as bool?,
      isStudent: json['isStudent'] as bool?,
      jobDescription: json['jobDescription'] as String?,
      jobId: fromGraphQLUuidNullableToDartUuidValueNullable(json['jobId']),
      mainPhone: json['mainPhone'] as String?,
      name: json['name'] as String?,
      notes: json['notes'] as String?,
      otherPhones:
          fromGraphQLJsonbNullableToDartJsonNullable(json['otherPhones']),
      personTypeId:
          fromGraphQLUuidNullableToDartUuidValueNullable(json['personTypeId']),
      photoUpdatedAt: json['photoUpdatedAt'] == null
          ? null
          : DateTime.parse(json['photoUpdatedAt'] as String),
      qualificationId: fromGraphQLUuidNullableToDartUuidValueNullable(
          json['qualificationId']),
      schoolId:
          fromGraphQLUuidNullableToDartUuidValueNullable(json['schoolId']),
      shammasLevelId: fromGraphQLUuidNullableToDartUuidValueNullable(
          json['shammasLevelId']),
      stateId: fromGraphQLUuidNullableToDartUuidValueNullable(json['stateId']),
      storeId: fromGraphQLUuidNullableToDartUuidValueNullable(json['storeId']),
      studyYearId: json['studyYearId'] as int?,
      uid: fromGraphQLUuidNullableToDartUuidValueNullable(json['uid']),
    );

Map<String, dynamic> _$PersonsSetInputToJson(PersonsSetInput instance) =>
    <String, dynamic>{
      'address': instance.address,
      'birthdate': instance.birthdate?.toIso8601String(),
      'churchId':
          fromDartUuidValueNullableToGraphQLUuidNullable(instance.churchId),
      'collegeId':
          fromDartUuidValueNullableToGraphQLUuidNullable(instance.collegeId),
      'color': instance.color,
      'familyId':
          fromDartUuidValueNullableToGraphQLUuidNullable(instance.familyId),
      'fatherId':
          fromDartUuidValueNullableToGraphQLUuidNullable(instance.fatherId),
      'firestoreId': instance.firestoreId,
      'gender': instance.gender,
      'geolocation':
          fromDartJsonNullableToGraphQLGeographyNullable(instance.geolocation),
      'id': fromDartUuidValueNullableToGraphQLUuidNullable(instance.id),
      'isServant': instance.isServant,
      'isShammas': instance.isShammas,
      'isStudent': instance.isStudent,
      'jobDescription': instance.jobDescription,
      'jobId': fromDartUuidValueNullableToGraphQLUuidNullable(instance.jobId),
      'mainPhone': instance.mainPhone,
      'name': instance.name,
      'notes': instance.notes,
      'otherPhones':
          fromDartJsonNullableToGraphQLJsonbNullable(instance.otherPhones),
      'personTypeId':
          fromDartUuidValueNullableToGraphQLUuidNullable(instance.personTypeId),
      'photoUpdatedAt': instance.photoUpdatedAt?.toIso8601String(),
      'qualificationId': fromDartUuidValueNullableToGraphQLUuidNullable(
          instance.qualificationId),
      'schoolId':
          fromDartUuidValueNullableToGraphQLUuidNullable(instance.schoolId),
      'shammasLevelId': fromDartUuidValueNullableToGraphQLUuidNullable(
          instance.shammasLevelId),
      'stateId':
          fromDartUuidValueNullableToGraphQLUuidNullable(instance.stateId),
      'storeId':
          fromDartUuidValueNullableToGraphQLUuidNullable(instance.storeId),
      'studyYearId': instance.studyYearId,
      'uid': fromDartUuidValueNullableToGraphQLUuidNullable(instance.uid),
    };

PersonsGroupsInsertInput _$PersonsGroupsInsertInputFromJson(
        Map<String, dynamic> json) =>
    PersonsGroupsInsertInput(
      group: json['group'] == null
          ? null
          : GroupsObjRelInsertInput.fromJson(
              json['group'] as Map<String, dynamic>),
      groupId: fromGraphQLUuidNullableToDartUuidValueNullable(json['groupId']),
      person: json['person'] == null
          ? null
          : PersonsObjRelInsertInput.fromJson(
              json['person'] as Map<String, dynamic>),
      personId:
          fromGraphQLUuidNullableToDartUuidValueNullable(json['personId']),
      relId: fromGraphQLUuidNullableToDartUuidValueNullable(json['relId']),
    );

Map<String, dynamic> _$PersonsGroupsInsertInputToJson(
        PersonsGroupsInsertInput instance) =>
    <String, dynamic>{
      'group': instance.group?.toJson(),
      'groupId':
          fromDartUuidValueNullableToGraphQLUuidNullable(instance.groupId),
      'person': instance.person?.toJson(),
      'personId':
          fromDartUuidValueNullableToGraphQLUuidNullable(instance.personId),
      'relId': fromDartUuidValueNullableToGraphQLUuidNullable(instance.relId),
    };

GroupsObjRelInsertInput _$GroupsObjRelInsertInputFromJson(
        Map<String, dynamic> json) =>
    GroupsObjRelInsertInput(
      data: GroupsInsertInput.fromJson(json['data'] as Map<String, dynamic>),
      onConflict: json['onConflict'] == null
          ? null
          : GroupsOnConflict.fromJson(
              json['onConflict'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GroupsObjRelInsertInputToJson(
        GroupsObjRelInsertInput instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'onConflict': instance.onConflict?.toJson(),
    };

GroupsInsertInput _$GroupsInsertInputFromJson(Map<String, dynamic> json) =>
    GroupsInsertInput(
      adminUsers: json['adminUsers'] == null
          ? null
          : UsersPermissionsArrRelInsertInput.fromJson(
              json['adminUsers'] as Map<String, dynamic>),
      attendanceDaysConstraints: json['attendanceDaysConstraints'] == null
          ? null
          : HistoryAttendanceDaysConstraintsArrRelInsertInput.fromJson(
              json['attendanceDaysConstraints'] as Map<String, dynamic>),
      attendanceHistory: json['attendanceHistory'] == null
          ? null
          : HistoryAttendanceHistoryArrRelInsertInput.fromJson(
              json['attendanceHistory'] as Map<String, dynamic>),
      color: json['color'] as int?,
      id: fromGraphQLUuidNullableToDartUuidValueNullable(json['id']),
      name: json['name'] as String?,
      persons: json['persons'] == null
          ? null
          : PersonsGroupsArrRelInsertInput.fromJson(
              json['persons'] as Map<String, dynamic>),
      photoUpdatedAt: json['photoUpdatedAt'] == null
          ? null
          : DateTime.parse(json['photoUpdatedAt'] as String),
      service: json['service'] == null
          ? null
          : ServicesObjRelInsertInput.fromJson(
              json['service'] as Map<String, dynamic>),
      serviceId:
          fromGraphQLUuidNullableToDartUuidValueNullable(json['serviceId']),
      validity: json['validity'] as String?,
    );

Map<String, dynamic> _$GroupsInsertInputToJson(GroupsInsertInput instance) =>
    <String, dynamic>{
      'adminUsers': instance.adminUsers?.toJson(),
      'attendanceDaysConstraints': instance.attendanceDaysConstraints?.toJson(),
      'attendanceHistory': instance.attendanceHistory?.toJson(),
      'color': instance.color,
      'id': fromDartUuidValueNullableToGraphQLUuidNullable(instance.id),
      'name': instance.name,
      'persons': instance.persons?.toJson(),
      'photoUpdatedAt': instance.photoUpdatedAt?.toIso8601String(),
      'service': instance.service?.toJson(),
      'serviceId':
          fromDartUuidValueNullableToGraphQLUuidNullable(instance.serviceId),
      'validity': instance.validity,
    };

UsersPermissionsArrRelInsertInput _$UsersPermissionsArrRelInsertInputFromJson(
        Map<String, dynamic> json) =>
    UsersPermissionsArrRelInsertInput(
      data: (json['data'] as List<dynamic>)
          .map((e) =>
              UsersPermissionsInsertInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      onConflict: json['onConflict'] == null
          ? null
          : UsersPermissionsOnConflict.fromJson(
              json['onConflict'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UsersPermissionsArrRelInsertInputToJson(
        UsersPermissionsArrRelInsertInput instance) =>
    <String, dynamic>{
      'data': instance.data.map((e) => e.toJson()).toList(),
      'onConflict': instance.onConflict?.toJson(),
    };

UsersPermissionsInsertInput _$UsersPermissionsInsertInputFromJson(
        Map<String, dynamic> json) =>
    UsersPermissionsInsertInput(
      adminOnArea:
          fromGraphQLUuidNullableToDartUuidValueNullable(json['adminOnArea']),
      adminOnGroup:
          fromGraphQLUuidNullableToDartUuidValueNullable(json['adminOnGroup']),
      adminOnService: fromGraphQLUuidNullableToDartUuidValueNullable(
          json['adminOnService']),
      area: json['area'] == null
          ? null
          : AreasObjRelInsertInput.fromJson(
              json['area'] as Map<String, dynamic>),
      areaAdminOnUsers: json['areaAdminOnUsers'] as bool?,
      areaAllowEdit: json['areaAllowEdit'] as bool?,
      classes: json['classes'] == null
          ? null
          : ClassesArrRelInsertInput.fromJson(
              json['classes'] as Map<String, dynamic>),
      group: json['group'] == null
          ? null
          : GroupsObjRelInsertInput.fromJson(
              json['group'] as Map<String, dynamic>),
      groupAdminOnUsers: json['groupAdminOnUsers'] as bool?,
      groupAllowEdit: json['groupAllowEdit'] as bool?,
      permissionId:
          fromGraphQLUuidNullableToDartUuidValueNullable(json['permissionId']),
      service: json['service'] == null
          ? null
          : ServicesObjRelInsertInput.fromJson(
              json['service'] as Map<String, dynamic>),
      serviceAdminOnUsers: json['serviceAdminOnUsers'] as bool?,
      serviceAllowEdit: json['serviceAllowEdit'] as bool?,
      serviceGender: json['serviceGender'] as bool?,
      serviceStudyYear: json['serviceStudyYear'] as int?,
      serviceStudyYearData: json['serviceStudyYearData'] == null
          ? null
          : StudyYearsObjRelInsertInput.fromJson(
              json['serviceStudyYearData'] as Map<String, dynamic>),
      uid: fromGraphQLUuidNullableToDartUuidValueNullable(json['uid']),
      user: json['user'] == null
          ? null
          : UsersObjRelInsertInput.fromJson(
              json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UsersPermissionsInsertInputToJson(
        UsersPermissionsInsertInput instance) =>
    <String, dynamic>{
      'adminOnArea':
          fromDartUuidValueNullableToGraphQLUuidNullable(instance.adminOnArea),
      'adminOnGroup':
          fromDartUuidValueNullableToGraphQLUuidNullable(instance.adminOnGroup),
      'adminOnService': fromDartUuidValueNullableToGraphQLUuidNullable(
          instance.adminOnService),
      'area': instance.area?.toJson(),
      'areaAdminOnUsers': instance.areaAdminOnUsers,
      'areaAllowEdit': instance.areaAllowEdit,
      'classes': instance.classes?.toJson(),
      'group': instance.group?.toJson(),
      'groupAdminOnUsers': instance.groupAdminOnUsers,
      'groupAllowEdit': instance.groupAllowEdit,
      'permissionId':
          fromDartUuidValueNullableToGraphQLUuidNullable(instance.permissionId),
      'service': instance.service?.toJson(),
      'serviceAdminOnUsers': instance.serviceAdminOnUsers,
      'serviceAllowEdit': instance.serviceAllowEdit,
      'serviceGender': instance.serviceGender,
      'serviceStudyYear': instance.serviceStudyYear,
      'serviceStudyYearData': instance.serviceStudyYearData?.toJson(),
      'uid': fromDartUuidValueNullableToGraphQLUuidNullable(instance.uid),
      'user': instance.user?.toJson(),
    };

AreasObjRelInsertInput _$AreasObjRelInsertInputFromJson(
        Map<String, dynamic> json) =>
    AreasObjRelInsertInput(
      data: AreasInsertInput.fromJson(json['data'] as Map<String, dynamic>),
      onConflict: json['onConflict'] == null
          ? null
          : AreasOnConflict.fromJson(
              json['onConflict'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AreasObjRelInsertInputToJson(
        AreasObjRelInsertInput instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'onConflict': instance.onConflict?.toJson(),
    };

AreasInsertInput _$AreasInsertInputFromJson(Map<String, dynamic> json) =>
    AreasInsertInput(
      adminUsers: json['adminUsers'] == null
          ? null
          : UsersPermissionsArrRelInsertInput.fromJson(
              json['adminUsers'] as Map<String, dynamic>),
      bounds: fromGraphQLGeographyNullableToDartJsonNullable(json['bounds']),
      color: json['color'] as int?,
      firestoreId: json['firestoreId'] as String?,
      id: fromGraphQLUuidNullableToDartUuidValueNullable(json['id']),
      name: json['name'] as String?,
      photoUpdatedAt: json['photoUpdatedAt'] == null
          ? null
          : DateTime.parse(json['photoUpdatedAt'] as String),
    );

Map<String, dynamic> _$AreasInsertInputToJson(AreasInsertInput instance) =>
    <String, dynamic>{
      'adminUsers': instance.adminUsers?.toJson(),
      'bounds': fromDartJsonNullableToGraphQLGeographyNullable(instance.bounds),
      'color': instance.color,
      'firestoreId': instance.firestoreId,
      'id': fromDartUuidValueNullableToGraphQLUuidNullable(instance.id),
      'name': instance.name,
      'photoUpdatedAt': instance.photoUpdatedAt?.toIso8601String(),
    };

AreasOnConflict _$AreasOnConflictFromJson(Map<String, dynamic> json) =>
    AreasOnConflict(
      constraint: $enumDecode(_$AreasConstraintEnumMap, json['constraint'],
          unknownValue: AreasConstraint.artemisUnknown),
      updateColumns: (json['update_columns'] as List<dynamic>)
          .map((e) => $enumDecode(_$AreasUpdateColumnEnumMap, e,
              unknownValue: AreasUpdateColumn.artemisUnknown))
          .toList(),
      where: json['where'] == null
          ? null
          : AreasBoolExp.fromJson(json['where'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AreasOnConflictToJson(AreasOnConflict instance) =>
    <String, dynamic>{
      'constraint': _$AreasConstraintEnumMap[instance.constraint]!,
      'update_columns': instance.updateColumns
          .map((e) => _$AreasUpdateColumnEnumMap[e]!)
          .toList(),
      'where': instance.where?.toJson(),
    };

const _$AreasConstraintEnumMap = {
  AreasConstraint.areasFirestoreIdKey: 'areas_firestore_id_key',
  AreasConstraint.areasPkey: 'areas_pkey',
  AreasConstraint.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

const _$AreasUpdateColumnEnumMap = {
  AreasUpdateColumn.bounds: 'bounds',
  AreasUpdateColumn.color: 'color',
  AreasUpdateColumn.firestoreId: 'firestoreId',
  AreasUpdateColumn.id: 'id',
  AreasUpdateColumn.name: 'name',
  AreasUpdateColumn.photoUpdatedAt: 'photoUpdatedAt',
  AreasUpdateColumn.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

ClassesArrRelInsertInput _$ClassesArrRelInsertInputFromJson(
        Map<String, dynamic> json) =>
    ClassesArrRelInsertInput(
      data: (json['data'] as List<dynamic>)
          .map((e) => ClassesInsertInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      onConflict: json['onConflict'] == null
          ? null
          : ClassesOnConflict.fromJson(
              json['onConflict'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ClassesArrRelInsertInputToJson(
        ClassesArrRelInsertInput instance) =>
    <String, dynamic>{
      'data': instance.data.map((e) => e.toJson()).toList(),
      'onConflict': instance.onConflict?.toJson(),
    };

ClassesInsertInput _$ClassesInsertInputFromJson(Map<String, dynamic> json) =>
    ClassesInsertInput(
      attendanceDaysConstraints: json['attendanceDaysConstraints'] == null
          ? null
          : HistoryAttendanceDaysConstraintsArrRelInsertInput.fromJson(
              json['attendanceDaysConstraints'] as Map<String, dynamic>),
      attendanceHistory: json['attendanceHistory'] == null
          ? null
          : HistoryAttendanceHistoryArrRelInsertInput.fromJson(
              json['attendanceHistory'] as Map<String, dynamic>),
      color: json['color'] as int?,
      id: fromGraphQLUuidNullableToDartUuidValueNullable(json['id']),
      name: json['name'] as String?,
      photoUpdatedAt: json['photoUpdatedAt'] == null
          ? null
          : DateTime.parse(json['photoUpdatedAt'] as String),
      service: json['service'] == null
          ? null
          : ServicesObjRelInsertInput.fromJson(
              json['service'] as Map<String, dynamic>),
      serviceGender: json['serviceGender'] as bool?,
      serviceId:
          fromGraphQLUuidNullableToDartUuidValueNullable(json['serviceId']),
      serviceStudyYear: json['serviceStudyYear'] as int?,
      studyYear: json['studyYear'] == null
          ? null
          : StudyYearsObjRelInsertInput.fromJson(
              json['studyYear'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ClassesInsertInputToJson(ClassesInsertInput instance) =>
    <String, dynamic>{
      'attendanceDaysConstraints': instance.attendanceDaysConstraints?.toJson(),
      'attendanceHistory': instance.attendanceHistory?.toJson(),
      'color': instance.color,
      'id': fromDartUuidValueNullableToGraphQLUuidNullable(instance.id),
      'name': instance.name,
      'photoUpdatedAt': instance.photoUpdatedAt?.toIso8601String(),
      'service': instance.service?.toJson(),
      'serviceGender': instance.serviceGender,
      'serviceId':
          fromDartUuidValueNullableToGraphQLUuidNullable(instance.serviceId),
      'serviceStudyYear': instance.serviceStudyYear,
      'studyYear': instance.studyYear?.toJson(),
    };

HistoryAttendanceDaysConstraintsArrRelInsertInput
    _$HistoryAttendanceDaysConstraintsArrRelInsertInputFromJson(
            Map<String, dynamic> json) =>
        HistoryAttendanceDaysConstraintsArrRelInsertInput(
          data: (json['data'] as List<dynamic>)
              .map((e) => HistoryAttendanceDaysConstraintsInsertInput.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
          onConflict: json['onConflict'] == null
              ? null
              : HistoryAttendanceDaysConstraintsOnConflict.fromJson(
                  json['onConflict'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$HistoryAttendanceDaysConstraintsArrRelInsertInputToJson(
        HistoryAttendanceDaysConstraintsArrRelInsertInput instance) =>
    <String, dynamic>{
      'data': instance.data.map((e) => e.toJson()).toList(),
      'onConflict': instance.onConflict?.toJson(),
    };

HistoryAttendanceDaysConstraintsInsertInput
    _$HistoryAttendanceDaysConstraintsInsertInputFromJson(
            Map<String, dynamic> json) =>
        HistoryAttendanceDaysConstraintsInsertInput(
          day: json['day'] == null
              ? null
              : HistoryAttendanceDaysObjRelInsertInput.fromJson(
                  json['day'] as Map<String, dynamic>),
          dayId: json['dayId'] == null
              ? null
              : DateTime.parse(json['dayId'] as String),
          group: json['group'] == null
              ? null
              : GroupsObjRelInsertInput.fromJson(
                  json['group'] as Map<String, dynamic>),
          groupId:
              fromGraphQLUuidNullableToDartUuidValueNullable(json['groupId']),
          id: fromGraphQLUuidNullableToDartUuidValueNullable(json['id']),
          service: json['service'] == null
              ? null
              : ServicesObjRelInsertInput.fromJson(
                  json['service'] as Map<String, dynamic>),
          serviceGender: json['serviceGender'] as bool?,
          serviceId:
              fromGraphQLUuidNullableToDartUuidValueNullable(json['serviceId']),
          serviceStudyYear: json['serviceStudyYear'] as int?,
          studyYear: json['studyYear'] == null
              ? null
              : StudyYearsObjRelInsertInput.fromJson(
                  json['studyYear'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$HistoryAttendanceDaysConstraintsInsertInputToJson(
        HistoryAttendanceDaysConstraintsInsertInput instance) =>
    <String, dynamic>{
      'day': instance.day?.toJson(),
      'dayId': instance.dayId?.toIso8601String(),
      'group': instance.group?.toJson(),
      'groupId':
          fromDartUuidValueNullableToGraphQLUuidNullable(instance.groupId),
      'id': fromDartUuidValueNullableToGraphQLUuidNullable(instance.id),
      'service': instance.service?.toJson(),
      'serviceGender': instance.serviceGender,
      'serviceId':
          fromDartUuidValueNullableToGraphQLUuidNullable(instance.serviceId),
      'serviceStudyYear': instance.serviceStudyYear,
      'studyYear': instance.studyYear?.toJson(),
    };

HistoryAttendanceDaysObjRelInsertInput
    _$HistoryAttendanceDaysObjRelInsertInputFromJson(
            Map<String, dynamic> json) =>
        HistoryAttendanceDaysObjRelInsertInput(
          data: HistoryAttendanceDaysInsertInput.fromJson(
              json['data'] as Map<String, dynamic>),
          onConflict: json['onConflict'] == null
              ? null
              : HistoryAttendanceDaysOnConflict.fromJson(
                  json['onConflict'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$HistoryAttendanceDaysObjRelInsertInputToJson(
        HistoryAttendanceDaysObjRelInsertInput instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'onConflict': instance.onConflict?.toJson(),
    };

HistoryAttendanceDaysInsertInput _$HistoryAttendanceDaysInsertInputFromJson(
        Map<String, dynamic> json) =>
    HistoryAttendanceDaysInsertInput(
      attendanceHistory: json['attendanceHistory'] == null
          ? null
          : HistoryAttendanceHistoryArrRelInsertInput.fromJson(
              json['attendanceHistory'] as Map<String, dynamic>),
      confessionHistory: json['confessionHistory'] == null
          ? null
          : HistoryConfessionHistoryArrRelInsertInput.fromJson(
              json['confessionHistory'] as Map<String, dynamic>),
      constraints: json['constraints'] == null
          ? null
          : HistoryAttendanceDaysConstraintsArrRelInsertInput.fromJson(
              json['constraints'] as Map<String, dynamic>),
      day: json['day'] == null ? null : DateTime.parse(json['day'] as String),
      kodasHistory: json['kodasHistory'] == null
          ? null
          : HistoryKodasHistoryArrRelInsertInput.fromJson(
              json['kodasHistory'] as Map<String, dynamic>),
      notes: json['notes'] as String?,
    );

Map<String, dynamic> _$HistoryAttendanceDaysInsertInputToJson(
        HistoryAttendanceDaysInsertInput instance) =>
    <String, dynamic>{
      'attendanceHistory': instance.attendanceHistory?.toJson(),
      'confessionHistory': instance.confessionHistory?.toJson(),
      'constraints': instance.constraints?.toJson(),
      'day': instance.day?.toIso8601String(),
      'kodasHistory': instance.kodasHistory?.toJson(),
      'notes': instance.notes,
    };

HistoryAttendanceHistoryArrRelInsertInput
    _$HistoryAttendanceHistoryArrRelInsertInputFromJson(
            Map<String, dynamic> json) =>
        HistoryAttendanceHistoryArrRelInsertInput(
          data: (json['data'] as List<dynamic>)
              .map((e) => HistoryAttendanceHistoryInsertInput.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
          onConflict: json['onConflict'] == null
              ? null
              : HistoryAttendanceHistoryOnConflict.fromJson(
                  json['onConflict'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$HistoryAttendanceHistoryArrRelInsertInputToJson(
        HistoryAttendanceHistoryArrRelInsertInput instance) =>
    <String, dynamic>{
      'data': instance.data.map((e) => e.toJson()).toList(),
      'onConflict': instance.onConflict?.toJson(),
    };

HistoryAttendanceHistoryInsertInput
    _$HistoryAttendanceHistoryInsertInputFromJson(Map<String, dynamic> json) =>
        HistoryAttendanceHistoryInsertInput(
          asAdmin: json['asAdmin'] as bool?,
          kw$class: json['class'] == null
              ? null
              : ClassesObjRelInsertInput.fromJson(
                  json['class'] as Map<String, dynamic>),
          day: json['day'] == null
              ? null
              : HistoryAttendanceDaysObjRelInsertInput.fromJson(
                  json['day'] as Map<String, dynamic>),
          dayId: json['dayId'] == null
              ? null
              : DateTime.parse(json['dayId'] as String),
          group: json['group'] == null
              ? null
              : GroupsObjRelInsertInput.fromJson(
                  json['group'] as Map<String, dynamic>),
          groupId:
              fromGraphQLUuidNullableToDartUuidValueNullable(json['groupId']),
          id: fromGraphQLUuidNullableToDartUuidValueNullable(json['id']),
          person: json['person'] == null
              ? null
              : PersonsObjRelInsertInput.fromJson(
                  json['person'] as Map<String, dynamic>),
          personId:
              fromGraphQLUuidNullableToDartUuidValueNullable(json['personId']),
          recordedBy: fromGraphQLUuidNullableToDartUuidValueNullable(
              json['recordedBy']),
          service: json['service'] == null
              ? null
              : ServicesObjRelInsertInput.fromJson(
                  json['service'] as Map<String, dynamic>),
          serviceGender: json['serviceGender'] as bool?,
          serviceId:
              fromGraphQLUuidNullableToDartUuidValueNullable(json['serviceId']),
          serviceStudyYear: json['serviceStudyYear'] as int?,
          studyYear: json['studyYear'] == null
              ? null
              : StudyYearsObjRelInsertInput.fromJson(
                  json['studyYear'] as Map<String, dynamic>),
          time: json['time'] == null
              ? null
              : DateTime.parse(json['time'] as String),
          user: json['user'] == null
              ? null
              : UsersObjRelInsertInput.fromJson(
                  json['user'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$HistoryAttendanceHistoryInsertInputToJson(
        HistoryAttendanceHistoryInsertInput instance) =>
    <String, dynamic>{
      'asAdmin': instance.asAdmin,
      'class': instance.kw$class?.toJson(),
      'day': instance.day?.toJson(),
      'dayId': instance.dayId?.toIso8601String(),
      'group': instance.group?.toJson(),
      'groupId':
          fromDartUuidValueNullableToGraphQLUuidNullable(instance.groupId),
      'id': fromDartUuidValueNullableToGraphQLUuidNullable(instance.id),
      'person': instance.person?.toJson(),
      'personId':
          fromDartUuidValueNullableToGraphQLUuidNullable(instance.personId),
      'recordedBy':
          fromDartUuidValueNullableToGraphQLUuidNullable(instance.recordedBy),
      'service': instance.service?.toJson(),
      'serviceGender': instance.serviceGender,
      'serviceId':
          fromDartUuidValueNullableToGraphQLUuidNullable(instance.serviceId),
      'serviceStudyYear': instance.serviceStudyYear,
      'studyYear': instance.studyYear?.toJson(),
      'time': instance.time?.toIso8601String(),
      'user': instance.user?.toJson(),
    };

ClassesObjRelInsertInput _$ClassesObjRelInsertInputFromJson(
        Map<String, dynamic> json) =>
    ClassesObjRelInsertInput(
      data: ClassesInsertInput.fromJson(json['data'] as Map<String, dynamic>),
      onConflict: json['onConflict'] == null
          ? null
          : ClassesOnConflict.fromJson(
              json['onConflict'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ClassesObjRelInsertInputToJson(
        ClassesObjRelInsertInput instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'onConflict': instance.onConflict?.toJson(),
    };

ClassesOnConflict _$ClassesOnConflictFromJson(Map<String, dynamic> json) =>
    ClassesOnConflict(
      constraint: $enumDecode(_$ClassesConstraintEnumMap, json['constraint'],
          unknownValue: ClassesConstraint.artemisUnknown),
      updateColumns: (json['update_columns'] as List<dynamic>)
          .map((e) => $enumDecode(_$ClassesUpdateColumnEnumMap, e,
              unknownValue: ClassesUpdateColumn.artemisUnknown))
          .toList(),
      where: json['where'] == null
          ? null
          : ClassesBoolExp.fromJson(json['where'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ClassesOnConflictToJson(ClassesOnConflict instance) =>
    <String, dynamic>{
      'constraint': _$ClassesConstraintEnumMap[instance.constraint]!,
      'update_columns': instance.updateColumns
          .map((e) => _$ClassesUpdateColumnEnumMap[e]!)
          .toList(),
      'where': instance.where?.toJson(),
    };

const _$ClassesConstraintEnumMap = {
  ClassesConstraint.classesPkey: 'classes_pkey',
  ClassesConstraint.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

const _$ClassesUpdateColumnEnumMap = {
  ClassesUpdateColumn.color: 'color',
  ClassesUpdateColumn.id: 'id',
  ClassesUpdateColumn.name: 'name',
  ClassesUpdateColumn.photoUpdatedAt: 'photoUpdatedAt',
  ClassesUpdateColumn.serviceGender: 'serviceGender',
  ClassesUpdateColumn.serviceId: 'serviceId',
  ClassesUpdateColumn.serviceStudyYear: 'serviceStudyYear',
  ClassesUpdateColumn.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

PersonsObjRelInsertInput _$PersonsObjRelInsertInputFromJson(
        Map<String, dynamic> json) =>
    PersonsObjRelInsertInput(
      data: PersonsInsertInput.fromJson(json['data'] as Map<String, dynamic>),
      onConflict: json['onConflict'] == null
          ? null
          : PersonsOnConflict.fromJson(
              json['onConflict'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PersonsObjRelInsertInputToJson(
        PersonsObjRelInsertInput instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'onConflict': instance.onConflict?.toJson(),
    };

PersonsInsertInput _$PersonsInsertInputFromJson(Map<String, dynamic> json) =>
    PersonsInsertInput(
      address: json['address'] as String?,
      attendanceHistory: json['attendanceHistory'] == null
          ? null
          : HistoryAttendanceHistoryArrRelInsertInput.fromJson(
              json['attendanceHistory'] as Map<String, dynamic>),
      birthdate: json['birthdate'] == null
          ? null
          : DateTime.parse(json['birthdate'] as String),
      callHistory: json['callHistory'] == null
          ? null
          : HistoryCallHistoryArrRelInsertInput.fromJson(
              json['callHistory'] as Map<String, dynamic>),
      church: json['church'] == null
          ? null
          : ChurchesObjRelInsertInput.fromJson(
              json['church'] as Map<String, dynamic>),
      churchId:
          fromGraphQLUuidNullableToDartUuidValueNullable(json['churchId']),
      college: json['college'] == null
          ? null
          : CollegesObjRelInsertInput.fromJson(
              json['college'] as Map<String, dynamic>),
      collegeId:
          fromGraphQLUuidNullableToDartUuidValueNullable(json['collegeId']),
      color: json['color'] as int?,
      confessionHistory: json['confessionHistory'] == null
          ? null
          : HistoryConfessionHistoryArrRelInsertInput.fromJson(
              json['confessionHistory'] as Map<String, dynamic>),
      editHistory: json['editHistory'] == null
          ? null
          : HistoryEditHistoryArrRelInsertInput.fromJson(
              json['editHistory'] as Map<String, dynamic>),
      family: json['family'] == null
          ? null
          : FamiliesObjRelInsertInput.fromJson(
              json['family'] as Map<String, dynamic>),
      familyId:
          fromGraphQLUuidNullableToDartUuidValueNullable(json['familyId']),
      father: json['father'] == null
          ? null
          : FathersObjRelInsertInput.fromJson(
              json['father'] as Map<String, dynamic>),
      fatherId:
          fromGraphQLUuidNullableToDartUuidValueNullable(json['fatherId']),
      firestoreId: json['firestoreId'] as String?,
      gender: json['gender'] as bool?,
      geolocation:
          fromGraphQLGeographyNullableToDartJsonNullable(json['geolocation']),
      groups: json['groups'] == null
          ? null
          : PersonsGroupsArrRelInsertInput.fromJson(
              json['groups'] as Map<String, dynamic>),
      id: fromGraphQLUuidNullableToDartUuidValueNullable(json['id']),
      isServant: json['isServant'] as bool?,
      isShammas: json['isShammas'] as bool?,
      isStudent: json['isStudent'] as bool?,
      job: json['job'] == null
          ? null
          : JobsObjRelInsertInput.fromJson(json['job'] as Map<String, dynamic>),
      jobDescription: json['jobDescription'] as String?,
      jobId: fromGraphQLUuidNullableToDartUuidValueNullable(json['jobId']),
      kodasHistory: json['kodasHistory'] == null
          ? null
          : HistoryKodasHistoryArrRelInsertInput.fromJson(
              json['kodasHistory'] as Map<String, dynamic>),
      mainPhone: json['mainPhone'] as String?,
      name: json['name'] as String?,
      notes: json['notes'] as String?,
      otherPhones:
          fromGraphQLJsonbNullableToDartJsonNullable(json['otherPhones']),
      personType: json['personType'] == null
          ? null
          : PersonTypesObjRelInsertInput.fromJson(
              json['personType'] as Map<String, dynamic>),
      personTypeId:
          fromGraphQLUuidNullableToDartUuidValueNullable(json['personTypeId']),
      photoUpdatedAt: json['photoUpdatedAt'] == null
          ? null
          : DateTime.parse(json['photoUpdatedAt'] as String),
      qualification: json['qualification'] == null
          ? null
          : QualificationsObjRelInsertInput.fromJson(
              json['qualification'] as Map<String, dynamic>),
      qualificationId: fromGraphQLUuidNullableToDartUuidValueNullable(
          json['qualificationId']),
      school: json['school'] == null
          ? null
          : SchoolsObjRelInsertInput.fromJson(
              json['school'] as Map<String, dynamic>),
      schoolId:
          fromGraphQLUuidNullableToDartUuidValueNullable(json['schoolId']),
      services: json['services'] == null
          ? null
          : PersonsServicesArrRelInsertInput.fromJson(
              json['services'] as Map<String, dynamic>),
      shammasLevel: json['shammasLevel'] == null
          ? null
          : ShammasLevelsObjRelInsertInput.fromJson(
              json['shammasLevel'] as Map<String, dynamic>),
      shammasLevelId: fromGraphQLUuidNullableToDartUuidValueNullable(
          json['shammasLevelId']),
      state: json['state'] == null
          ? null
          : PersonStatesObjRelInsertInput.fromJson(
              json['state'] as Map<String, dynamic>),
      stateId: fromGraphQLUuidNullableToDartUuidValueNullable(json['stateId']),
      storeId: fromGraphQLUuidNullableToDartUuidValueNullable(json['storeId']),
      studyYear: json['studyYear'] == null
          ? null
          : StudyYearsObjRelInsertInput.fromJson(
              json['studyYear'] as Map<String, dynamic>),
      studyYearId: json['studyYearId'] as int?,
      tags: json['tags'] == null
          ? null
          : PersonsTagsArrRelInsertInput.fromJson(
              json['tags'] as Map<String, dynamic>),
      uid: fromGraphQLUuidNullableToDartUuidValueNullable(json['uid']),
      user: json['user'] == null
          ? null
          : UsersObjRelInsertInput.fromJson(
              json['user'] as Map<String, dynamic>),
      visitHistory: json['visitHistory'] == null
          ? null
          : HistoryVisitHistoryArrRelInsertInput.fromJson(
              json['visitHistory'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PersonsInsertInputToJson(PersonsInsertInput instance) =>
    <String, dynamic>{
      'address': instance.address,
      'attendanceHistory': instance.attendanceHistory?.toJson(),
      'birthdate': instance.birthdate?.toIso8601String(),
      'callHistory': instance.callHistory?.toJson(),
      'church': instance.church?.toJson(),
      'churchId':
          fromDartUuidValueNullableToGraphQLUuidNullable(instance.churchId),
      'college': instance.college?.toJson(),
      'collegeId':
          fromDartUuidValueNullableToGraphQLUuidNullable(instance.collegeId),
      'color': instance.color,
      'confessionHistory': instance.confessionHistory?.toJson(),
      'editHistory': instance.editHistory?.toJson(),
      'family': instance.family?.toJson(),
      'familyId':
          fromDartUuidValueNullableToGraphQLUuidNullable(instance.familyId),
      'father': instance.father?.toJson(),
      'fatherId':
          fromDartUuidValueNullableToGraphQLUuidNullable(instance.fatherId),
      'firestoreId': instance.firestoreId,
      'gender': instance.gender,
      'geolocation':
          fromDartJsonNullableToGraphQLGeographyNullable(instance.geolocation),
      'groups': instance.groups?.toJson(),
      'id': fromDartUuidValueNullableToGraphQLUuidNullable(instance.id),
      'isServant': instance.isServant,
      'isShammas': instance.isShammas,
      'isStudent': instance.isStudent,
      'job': instance.job?.toJson(),
      'jobDescription': instance.jobDescription,
      'jobId': fromDartUuidValueNullableToGraphQLUuidNullable(instance.jobId),
      'kodasHistory': instance.kodasHistory?.toJson(),
      'mainPhone': instance.mainPhone,
      'name': instance.name,
      'notes': instance.notes,
      'otherPhones':
          fromDartJsonNullableToGraphQLJsonbNullable(instance.otherPhones),
      'personType': instance.personType?.toJson(),
      'personTypeId':
          fromDartUuidValueNullableToGraphQLUuidNullable(instance.personTypeId),
      'photoUpdatedAt': instance.photoUpdatedAt?.toIso8601String(),
      'qualification': instance.qualification?.toJson(),
      'qualificationId': fromDartUuidValueNullableToGraphQLUuidNullable(
          instance.qualificationId),
      'school': instance.school?.toJson(),
      'schoolId':
          fromDartUuidValueNullableToGraphQLUuidNullable(instance.schoolId),
      'services': instance.services?.toJson(),
      'shammasLevel': instance.shammasLevel?.toJson(),
      'shammasLevelId': fromDartUuidValueNullableToGraphQLUuidNullable(
          instance.shammasLevelId),
      'state': instance.state?.toJson(),
      'stateId':
          fromDartUuidValueNullableToGraphQLUuidNullable(instance.stateId),
      'storeId':
          fromDartUuidValueNullableToGraphQLUuidNullable(instance.storeId),
      'studyYear': instance.studyYear?.toJson(),
      'studyYearId': instance.studyYearId,
      'tags': instance.tags?.toJson(),
      'uid': fromDartUuidValueNullableToGraphQLUuidNullable(instance.uid),
      'user': instance.user?.toJson(),
      'visitHistory': instance.visitHistory?.toJson(),
    };

HistoryCallHistoryArrRelInsertInput
    _$HistoryCallHistoryArrRelInsertInputFromJson(Map<String, dynamic> json) =>
        HistoryCallHistoryArrRelInsertInput(
          data: (json['data'] as List<dynamic>)
              .map((e) => HistoryCallHistoryInsertInput.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
          onConflict: json['onConflict'] == null
              ? null
              : HistoryCallHistoryOnConflict.fromJson(
                  json['onConflict'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$HistoryCallHistoryArrRelInsertInputToJson(
        HistoryCallHistoryArrRelInsertInput instance) =>
    <String, dynamic>{
      'data': instance.data.map((e) => e.toJson()).toList(),
      'onConflict': instance.onConflict?.toJson(),
    };

HistoryCallHistoryInsertInput _$HistoryCallHistoryInsertInputFromJson(
        Map<String, dynamic> json) =>
    HistoryCallHistoryInsertInput(
      person: json['person'] == null
          ? null
          : PersonsObjRelInsertInput.fromJson(
              json['person'] as Map<String, dynamic>),
      personId:
          fromGraphQLUuidNullableToDartUuidValueNullable(json['personId']),
      recordedBy:
          fromGraphQLUuidNullableToDartUuidValueNullable(json['recordedBy']),
      time:
          json['time'] == null ? null : DateTime.parse(json['time'] as String),
      user: json['user'] == null
          ? null
          : UsersObjRelInsertInput.fromJson(
              json['user'] as Map<String, dynamic>),
      userRole: json['userRole'] as String?,
    );

Map<String, dynamic> _$HistoryCallHistoryInsertInputToJson(
        HistoryCallHistoryInsertInput instance) =>
    <String, dynamic>{
      'person': instance.person?.toJson(),
      'personId':
          fromDartUuidValueNullableToGraphQLUuidNullable(instance.personId),
      'recordedBy':
          fromDartUuidValueNullableToGraphQLUuidNullable(instance.recordedBy),
      'time': instance.time?.toIso8601String(),
      'user': instance.user?.toJson(),
      'userRole': instance.userRole,
    };

UsersObjRelInsertInput _$UsersObjRelInsertInputFromJson(
        Map<String, dynamic> json) =>
    UsersObjRelInsertInput(
      data: UsersInsertInput.fromJson(json['data'] as Map<String, dynamic>),
      onConflict: json['onConflict'] == null
          ? null
          : UsersOnConflict.fromJson(
              json['onConflict'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UsersObjRelInsertInputToJson(
        UsersObjRelInsertInput instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'onConflict': instance.onConflict?.toJson(),
    };

UsersInsertInput _$UsersInsertInputFromJson(Map<String, dynamic> json) =>
    UsersInsertInput(
      adminOn: json['adminOn'] == null
          ? null
          : UsersPermissionsArrRelInsertInput.fromJson(
              json['adminOn'] as Map<String, dynamic>),
      name: json['name'] as String?,
      person: json['person'] == null
          ? null
          : PersonsObjRelInsertInput.fromJson(
              json['person'] as Map<String, dynamic>),
      photoUpdatedAt: json['photoUpdatedAt'] == null
          ? null
          : DateTime.parse(json['photoUpdatedAt'] as String),
      uid: fromGraphQLUuidNullableToDartUuidValueNullable(json['uid']),
      userData: json['userData'] == null
          ? null
          : UsersDataObjRelInsertInput.fromJson(
              json['userData'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UsersInsertInputToJson(UsersInsertInput instance) =>
    <String, dynamic>{
      'adminOn': instance.adminOn?.toJson(),
      'name': instance.name,
      'person': instance.person?.toJson(),
      'photoUpdatedAt': instance.photoUpdatedAt?.toIso8601String(),
      'uid': fromDartUuidValueNullableToGraphQLUuidNullable(instance.uid),
      'userData': instance.userData?.toJson(),
    };

UsersDataObjRelInsertInput _$UsersDataObjRelInsertInputFromJson(
        Map<String, dynamic> json) =>
    UsersDataObjRelInsertInput(
      data: UsersDataInsertInput.fromJson(json['data'] as Map<String, dynamic>),
      onConflict: json['onConflict'] == null
          ? null
          : UsersDataOnConflict.fromJson(
              json['onConflict'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UsersDataObjRelInsertInputToJson(
        UsersDataObjRelInsertInput instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'onConflict': instance.onConflict?.toJson(),
    };

UsersDataInsertInput _$UsersDataInsertInputFromJson(
        Map<String, dynamic> json) =>
    UsersDataInsertInput(
      email: json['email'] as String?,
      firebaseAuthUid: json['firebaseAuthUid'] as String?,
      firestoreId: json['firestoreId'] as String?,
      permissions: (json['permissions'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      uid: fromGraphQLUuidNullableToDartUuidValueNullable(json['uid']),
      user: json['user'] == null
          ? null
          : UsersObjRelInsertInput.fromJson(
              json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UsersDataInsertInputToJson(
        UsersDataInsertInput instance) =>
    <String, dynamic>{
      'email': instance.email,
      'firebaseAuthUid': instance.firebaseAuthUid,
      'firestoreId': instance.firestoreId,
      'permissions': instance.permissions,
      'uid': fromDartUuidValueNullableToGraphQLUuidNullable(instance.uid),
      'user': instance.user?.toJson(),
    };

UsersDataOnConflict _$UsersDataOnConflictFromJson(Map<String, dynamic> json) =>
    UsersDataOnConflict(
      constraint: $enumDecode(_$UsersDataConstraintEnumMap, json['constraint'],
          unknownValue: UsersDataConstraint.artemisUnknown),
      updateColumns: (json['update_columns'] as List<dynamic>)
          .map((e) => $enumDecode(_$UsersDataUpdateColumnEnumMap, e,
              unknownValue: UsersDataUpdateColumn.artemisUnknown))
          .toList(),
      where: json['where'] == null
          ? null
          : UsersDataBoolExp.fromJson(json['where'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UsersDataOnConflictToJson(
        UsersDataOnConflict instance) =>
    <String, dynamic>{
      'constraint': _$UsersDataConstraintEnumMap[instance.constraint]!,
      'update_columns': instance.updateColumns
          .map((e) => _$UsersDataUpdateColumnEnumMap[e]!)
          .toList(),
      'where': instance.where?.toJson(),
    };

const _$UsersDataConstraintEnumMap = {
  UsersDataConstraint.usersDataEmailKey: 'users_data_email_key',
  UsersDataConstraint.usersDataFirebaseAuthIdKey:
      'users_data_firebase_auth_id_key',
  UsersDataConstraint.usersDataFirestoreIdKey: 'users_data_firestore_id_key',
  UsersDataConstraint.usersDataPkey: 'users_data_pkey',
  UsersDataConstraint.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

const _$UsersDataUpdateColumnEnumMap = {
  UsersDataUpdateColumn.email: 'email',
  UsersDataUpdateColumn.firebaseAuthUid: 'firebaseAuthUid',
  UsersDataUpdateColumn.firestoreId: 'firestoreId',
  UsersDataUpdateColumn.permissions: 'permissions',
  UsersDataUpdateColumn.uid: 'uid',
  UsersDataUpdateColumn.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

UsersOnConflict _$UsersOnConflictFromJson(Map<String, dynamic> json) =>
    UsersOnConflict(
      constraint: $enumDecode(_$UsersConstraintEnumMap, json['constraint'],
          unknownValue: UsersConstraint.artemisUnknown),
      updateColumns: (json['update_columns'] as List<dynamic>)
          .map((e) => $enumDecode(_$UsersUpdateColumnEnumMap, e,
              unknownValue: UsersUpdateColumn.artemisUnknown))
          .toList(),
      where: json['where'] == null
          ? null
          : UsersBoolExp.fromJson(json['where'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UsersOnConflictToJson(UsersOnConflict instance) =>
    <String, dynamic>{
      'constraint': _$UsersConstraintEnumMap[instance.constraint]!,
      'update_columns': instance.updateColumns
          .map((e) => _$UsersUpdateColumnEnumMap[e]!)
          .toList(),
      'where': instance.where?.toJson(),
    };

const _$UsersConstraintEnumMap = {
  UsersConstraint.usersPkey: 'users_pkey',
  UsersConstraint.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

const _$UsersUpdateColumnEnumMap = {
  UsersUpdateColumn.name: 'name',
  UsersUpdateColumn.photoUpdatedAt: 'photoUpdatedAt',
  UsersUpdateColumn.uid: 'uid',
  UsersUpdateColumn.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

HistoryCallHistoryOnConflict _$HistoryCallHistoryOnConflictFromJson(
        Map<String, dynamic> json) =>
    HistoryCallHistoryOnConflict(
      constraint: $enumDecode(
          _$HistoryCallHistoryConstraintEnumMap, json['constraint'],
          unknownValue: HistoryCallHistoryConstraint.artemisUnknown),
      updateColumns: (json['update_columns'] as List<dynamic>)
          .map((e) => $enumDecode(_$HistoryCallHistoryUpdateColumnEnumMap, e,
              unknownValue: HistoryCallHistoryUpdateColumn.artemisUnknown))
          .toList(),
      where: json['where'] == null
          ? null
          : HistoryCallHistoryBoolExp.fromJson(
              json['where'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$HistoryCallHistoryOnConflictToJson(
        HistoryCallHistoryOnConflict instance) =>
    <String, dynamic>{
      'constraint': _$HistoryCallHistoryConstraintEnumMap[instance.constraint]!,
      'update_columns': instance.updateColumns
          .map((e) => _$HistoryCallHistoryUpdateColumnEnumMap[e]!)
          .toList(),
      'where': instance.where?.toJson(),
    };

const _$HistoryCallHistoryConstraintEnumMap = {
  HistoryCallHistoryConstraint.callHistoryPkey: 'call_history_pkey',
  HistoryCallHistoryConstraint.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

const _$HistoryCallHistoryUpdateColumnEnumMap = {
  HistoryCallHistoryUpdateColumn.personId: 'personId',
  HistoryCallHistoryUpdateColumn.recordedBy: 'recordedBy',
  HistoryCallHistoryUpdateColumn.time: 'time',
  HistoryCallHistoryUpdateColumn.userRole: 'userRole',
  HistoryCallHistoryUpdateColumn.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

ChurchesObjRelInsertInput _$ChurchesObjRelInsertInputFromJson(
        Map<String, dynamic> json) =>
    ChurchesObjRelInsertInput(
      data: ChurchesInsertInput.fromJson(json['data'] as Map<String, dynamic>),
      onConflict: json['onConflict'] == null
          ? null
          : ChurchesOnConflict.fromJson(
              json['onConflict'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ChurchesObjRelInsertInputToJson(
        ChurchesObjRelInsertInput instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'onConflict': instance.onConflict?.toJson(),
    };

ChurchesInsertInput _$ChurchesInsertInputFromJson(Map<String, dynamic> json) =>
    ChurchesInsertInput(
      fathers: json['fathers'] == null
          ? null
          : FathersArrRelInsertInput.fromJson(
              json['fathers'] as Map<String, dynamic>),
      id: fromGraphQLUuidNullableToDartUuidValueNullable(json['id']),
      name: json['name'] as String?,
      persons: json['persons'] == null
          ? null
          : PersonsArrRelInsertInput.fromJson(
              json['persons'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ChurchesInsertInputToJson(
        ChurchesInsertInput instance) =>
    <String, dynamic>{
      'fathers': instance.fathers?.toJson(),
      'id': fromDartUuidValueNullableToGraphQLUuidNullable(instance.id),
      'name': instance.name,
      'persons': instance.persons?.toJson(),
    };

FathersArrRelInsertInput _$FathersArrRelInsertInputFromJson(
        Map<String, dynamic> json) =>
    FathersArrRelInsertInput(
      data: (json['data'] as List<dynamic>)
          .map((e) => FathersInsertInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      onConflict: json['onConflict'] == null
          ? null
          : FathersOnConflict.fromJson(
              json['onConflict'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FathersArrRelInsertInputToJson(
        FathersArrRelInsertInput instance) =>
    <String, dynamic>{
      'data': instance.data.map((e) => e.toJson()).toList(),
      'onConflict': instance.onConflict?.toJson(),
    };

FathersInsertInput _$FathersInsertInputFromJson(Map<String, dynamic> json) =>
    FathersInsertInput(
      church: json['church'] == null
          ? null
          : ChurchesObjRelInsertInput.fromJson(
              json['church'] as Map<String, dynamic>),
      churchId:
          fromGraphQLUuidNullableToDartUuidValueNullable(json['churchId']),
      id: fromGraphQLUuidNullableToDartUuidValueNullable(json['id']),
      name: json['name'] as String?,
      persons: json['persons'] == null
          ? null
          : PersonsArrRelInsertInput.fromJson(
              json['persons'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FathersInsertInputToJson(FathersInsertInput instance) =>
    <String, dynamic>{
      'church': instance.church?.toJson(),
      'churchId':
          fromDartUuidValueNullableToGraphQLUuidNullable(instance.churchId),
      'id': fromDartUuidValueNullableToGraphQLUuidNullable(instance.id),
      'name': instance.name,
      'persons': instance.persons?.toJson(),
    };

PersonsArrRelInsertInput _$PersonsArrRelInsertInputFromJson(
        Map<String, dynamic> json) =>
    PersonsArrRelInsertInput(
      data: (json['data'] as List<dynamic>)
          .map((e) => PersonsInsertInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      onConflict: json['onConflict'] == null
          ? null
          : PersonsOnConflict.fromJson(
              json['onConflict'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PersonsArrRelInsertInputToJson(
        PersonsArrRelInsertInput instance) =>
    <String, dynamic>{
      'data': instance.data.map((e) => e.toJson()).toList(),
      'onConflict': instance.onConflict?.toJson(),
    };

PersonsOnConflict _$PersonsOnConflictFromJson(Map<String, dynamic> json) =>
    PersonsOnConflict(
      constraint: $enumDecode(_$PersonsConstraintEnumMap, json['constraint'],
          unknownValue: PersonsConstraint.artemisUnknown),
      updateColumns: (json['update_columns'] as List<dynamic>)
          .map((e) => $enumDecode(_$PersonsUpdateColumnEnumMap, e,
              unknownValue: PersonsUpdateColumn.artemisUnknown))
          .toList(),
      where: json['where'] == null
          ? null
          : PersonsBoolExp.fromJson(json['where'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PersonsOnConflictToJson(PersonsOnConflict instance) =>
    <String, dynamic>{
      'constraint': _$PersonsConstraintEnumMap[instance.constraint]!,
      'update_columns': instance.updateColumns
          .map((e) => _$PersonsUpdateColumnEnumMap[e]!)
          .toList(),
      'where': instance.where?.toJson(),
    };

const _$PersonsConstraintEnumMap = {
  PersonsConstraint.personsFirestoreIdKey: 'persons_firestore_id_key',
  PersonsConstraint.personsMainPhoneBirthdateKey:
      'persons_mainPhone_birthdate_key',
  PersonsConstraint.personsPkey: 'persons_pkey',
  PersonsConstraint.personsUidKey: 'persons_uid_key',
  PersonsConstraint.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

const _$PersonsUpdateColumnEnumMap = {
  PersonsUpdateColumn.address: 'address',
  PersonsUpdateColumn.birthdate: 'birthdate',
  PersonsUpdateColumn.churchId: 'churchId',
  PersonsUpdateColumn.collegeId: 'collegeId',
  PersonsUpdateColumn.color: 'color',
  PersonsUpdateColumn.familyId: 'familyId',
  PersonsUpdateColumn.fatherId: 'fatherId',
  PersonsUpdateColumn.firestoreId: 'firestoreId',
  PersonsUpdateColumn.gender: 'gender',
  PersonsUpdateColumn.geolocation: 'geolocation',
  PersonsUpdateColumn.id: 'id',
  PersonsUpdateColumn.isServant: 'isServant',
  PersonsUpdateColumn.isShammas: 'isShammas',
  PersonsUpdateColumn.isStudent: 'isStudent',
  PersonsUpdateColumn.jobDescription: 'jobDescription',
  PersonsUpdateColumn.jobId: 'jobId',
  PersonsUpdateColumn.mainPhone: 'mainPhone',
  PersonsUpdateColumn.name: 'name',
  PersonsUpdateColumn.notes: 'notes',
  PersonsUpdateColumn.otherPhones: 'otherPhones',
  PersonsUpdateColumn.personTypeId: 'personTypeId',
  PersonsUpdateColumn.photoUpdatedAt: 'photoUpdatedAt',
  PersonsUpdateColumn.qualificationId: 'qualificationId',
  PersonsUpdateColumn.schoolId: 'schoolId',
  PersonsUpdateColumn.shammasLevelId: 'shammasLevelId',
  PersonsUpdateColumn.stateId: 'stateId',
  PersonsUpdateColumn.storeId: 'storeId',
  PersonsUpdateColumn.studyYearId: 'studyYearId',
  PersonsUpdateColumn.uid: 'uid',
  PersonsUpdateColumn.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

FathersOnConflict _$FathersOnConflictFromJson(Map<String, dynamic> json) =>
    FathersOnConflict(
      constraint: $enumDecode(_$FathersConstraintEnumMap, json['constraint'],
          unknownValue: FathersConstraint.artemisUnknown),
      updateColumns: (json['update_columns'] as List<dynamic>)
          .map((e) => $enumDecode(_$FathersUpdateColumnEnumMap, e,
              unknownValue: FathersUpdateColumn.artemisUnknown))
          .toList(),
      where: json['where'] == null
          ? null
          : FathersBoolExp.fromJson(json['where'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FathersOnConflictToJson(FathersOnConflict instance) =>
    <String, dynamic>{
      'constraint': _$FathersConstraintEnumMap[instance.constraint]!,
      'update_columns': instance.updateColumns
          .map((e) => _$FathersUpdateColumnEnumMap[e]!)
          .toList(),
      'where': instance.where?.toJson(),
    };

const _$FathersConstraintEnumMap = {
  FathersConstraint.fathersNameKey: 'fathers_name_key',
  FathersConstraint.fathersPkey: 'fathers_pkey',
  FathersConstraint.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

const _$FathersUpdateColumnEnumMap = {
  FathersUpdateColumn.churchId: 'churchId',
  FathersUpdateColumn.id: 'id',
  FathersUpdateColumn.name: 'name',
  FathersUpdateColumn.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

ChurchesOnConflict _$ChurchesOnConflictFromJson(Map<String, dynamic> json) =>
    ChurchesOnConflict(
      constraint: $enumDecode(_$ChurchesConstraintEnumMap, json['constraint'],
          unknownValue: ChurchesConstraint.artemisUnknown),
      updateColumns: (json['update_columns'] as List<dynamic>)
          .map((e) => $enumDecode(_$ChurchesUpdateColumnEnumMap, e,
              unknownValue: ChurchesUpdateColumn.artemisUnknown))
          .toList(),
      where: json['where'] == null
          ? null
          : ChurchesBoolExp.fromJson(json['where'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ChurchesOnConflictToJson(ChurchesOnConflict instance) =>
    <String, dynamic>{
      'constraint': _$ChurchesConstraintEnumMap[instance.constraint]!,
      'update_columns': instance.updateColumns
          .map((e) => _$ChurchesUpdateColumnEnumMap[e]!)
          .toList(),
      'where': instance.where?.toJson(),
    };

const _$ChurchesConstraintEnumMap = {
  ChurchesConstraint.churchesNameKey: 'churches_name_key',
  ChurchesConstraint.churchesPkey: 'churches_pkey',
  ChurchesConstraint.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

const _$ChurchesUpdateColumnEnumMap = {
  ChurchesUpdateColumn.id: 'id',
  ChurchesUpdateColumn.name: 'name',
  ChurchesUpdateColumn.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

CollegesObjRelInsertInput _$CollegesObjRelInsertInputFromJson(
        Map<String, dynamic> json) =>
    CollegesObjRelInsertInput(
      data: CollegesInsertInput.fromJson(json['data'] as Map<String, dynamic>),
      onConflict: json['onConflict'] == null
          ? null
          : CollegesOnConflict.fromJson(
              json['onConflict'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CollegesObjRelInsertInputToJson(
        CollegesObjRelInsertInput instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'onConflict': instance.onConflict?.toJson(),
    };

CollegesInsertInput _$CollegesInsertInputFromJson(Map<String, dynamic> json) =>
    CollegesInsertInput(
      id: fromGraphQLUuidNullableToDartUuidValueNullable(json['id']),
      name: json['name'] as String?,
      persons: json['persons'] == null
          ? null
          : PersonsArrRelInsertInput.fromJson(
              json['persons'] as Map<String, dynamic>),
      university: json['university'] == null
          ? null
          : UniversitiesObjRelInsertInput.fromJson(
              json['university'] as Map<String, dynamic>),
      universityId:
          fromGraphQLUuidNullableToDartUuidValueNullable(json['universityId']),
    );

Map<String, dynamic> _$CollegesInsertInputToJson(
        CollegesInsertInput instance) =>
    <String, dynamic>{
      'id': fromDartUuidValueNullableToGraphQLUuidNullable(instance.id),
      'name': instance.name,
      'persons': instance.persons?.toJson(),
      'university': instance.university?.toJson(),
      'universityId':
          fromDartUuidValueNullableToGraphQLUuidNullable(instance.universityId),
    };

UniversitiesObjRelInsertInput _$UniversitiesObjRelInsertInputFromJson(
        Map<String, dynamic> json) =>
    UniversitiesObjRelInsertInput(
      data: UniversitiesInsertInput.fromJson(
          json['data'] as Map<String, dynamic>),
      onConflict: json['onConflict'] == null
          ? null
          : UniversitiesOnConflict.fromJson(
              json['onConflict'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UniversitiesObjRelInsertInputToJson(
        UniversitiesObjRelInsertInput instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'onConflict': instance.onConflict?.toJson(),
    };

UniversitiesInsertInput _$UniversitiesInsertInputFromJson(
        Map<String, dynamic> json) =>
    UniversitiesInsertInput(
      colleges: json['colleges'] == null
          ? null
          : CollegesArrRelInsertInput.fromJson(
              json['colleges'] as Map<String, dynamic>),
      id: fromGraphQLUuidNullableToDartUuidValueNullable(json['id']),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$UniversitiesInsertInputToJson(
        UniversitiesInsertInput instance) =>
    <String, dynamic>{
      'colleges': instance.colleges?.toJson(),
      'id': fromDartUuidValueNullableToGraphQLUuidNullable(instance.id),
      'name': instance.name,
    };

CollegesArrRelInsertInput _$CollegesArrRelInsertInputFromJson(
        Map<String, dynamic> json) =>
    CollegesArrRelInsertInput(
      data: (json['data'] as List<dynamic>)
          .map((e) => CollegesInsertInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      onConflict: json['onConflict'] == null
          ? null
          : CollegesOnConflict.fromJson(
              json['onConflict'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CollegesArrRelInsertInputToJson(
        CollegesArrRelInsertInput instance) =>
    <String, dynamic>{
      'data': instance.data.map((e) => e.toJson()).toList(),
      'onConflict': instance.onConflict?.toJson(),
    };

CollegesOnConflict _$CollegesOnConflictFromJson(Map<String, dynamic> json) =>
    CollegesOnConflict(
      constraint: $enumDecode(_$CollegesConstraintEnumMap, json['constraint'],
          unknownValue: CollegesConstraint.artemisUnknown),
      updateColumns: (json['update_columns'] as List<dynamic>)
          .map((e) => $enumDecode(_$CollegesUpdateColumnEnumMap, e,
              unknownValue: CollegesUpdateColumn.artemisUnknown))
          .toList(),
      where: json['where'] == null
          ? null
          : CollegesBoolExp.fromJson(json['where'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CollegesOnConflictToJson(CollegesOnConflict instance) =>
    <String, dynamic>{
      'constraint': _$CollegesConstraintEnumMap[instance.constraint]!,
      'update_columns': instance.updateColumns
          .map((e) => _$CollegesUpdateColumnEnumMap[e]!)
          .toList(),
      'where': instance.where?.toJson(),
    };

const _$CollegesConstraintEnumMap = {
  CollegesConstraint.collegesNameKey: 'colleges_name_key',
  CollegesConstraint.collegesPkey: 'colleges_pkey',
  CollegesConstraint.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

const _$CollegesUpdateColumnEnumMap = {
  CollegesUpdateColumn.id: 'id',
  CollegesUpdateColumn.name: 'name',
  CollegesUpdateColumn.universityId: 'universityId',
  CollegesUpdateColumn.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

UniversitiesOnConflict _$UniversitiesOnConflictFromJson(
        Map<String, dynamic> json) =>
    UniversitiesOnConflict(
      constraint: $enumDecode(
          _$UniversitiesConstraintEnumMap, json['constraint'],
          unknownValue: UniversitiesConstraint.artemisUnknown),
      updateColumns: (json['update_columns'] as List<dynamic>)
          .map((e) => $enumDecode(_$UniversitiesUpdateColumnEnumMap, e,
              unknownValue: UniversitiesUpdateColumn.artemisUnknown))
          .toList(),
      where: json['where'] == null
          ? null
          : UniversitiesBoolExp.fromJson(json['where'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UniversitiesOnConflictToJson(
        UniversitiesOnConflict instance) =>
    <String, dynamic>{
      'constraint': _$UniversitiesConstraintEnumMap[instance.constraint]!,
      'update_columns': instance.updateColumns
          .map((e) => _$UniversitiesUpdateColumnEnumMap[e]!)
          .toList(),
      'where': instance.where?.toJson(),
    };

const _$UniversitiesConstraintEnumMap = {
  UniversitiesConstraint.universitiesNameKey: 'universities_name_key',
  UniversitiesConstraint.universitiesPkey: 'universities_pkey',
  UniversitiesConstraint.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

const _$UniversitiesUpdateColumnEnumMap = {
  UniversitiesUpdateColumn.id: 'id',
  UniversitiesUpdateColumn.name: 'name',
  UniversitiesUpdateColumn.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

HistoryConfessionHistoryArrRelInsertInput
    _$HistoryConfessionHistoryArrRelInsertInputFromJson(
            Map<String, dynamic> json) =>
        HistoryConfessionHistoryArrRelInsertInput(
          data: (json['data'] as List<dynamic>)
              .map((e) => HistoryConfessionHistoryInsertInput.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
          onConflict: json['onConflict'] == null
              ? null
              : HistoryConfessionHistoryOnConflict.fromJson(
                  json['onConflict'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$HistoryConfessionHistoryArrRelInsertInputToJson(
        HistoryConfessionHistoryArrRelInsertInput instance) =>
    <String, dynamic>{
      'data': instance.data.map((e) => e.toJson()).toList(),
      'onConflict': instance.onConflict?.toJson(),
    };

HistoryConfessionHistoryInsertInput
    _$HistoryConfessionHistoryInsertInputFromJson(Map<String, dynamic> json) =>
        HistoryConfessionHistoryInsertInput(
          day: json['day'] == null
              ? null
              : HistoryAttendanceDaysObjRelInsertInput.fromJson(
                  json['day'] as Map<String, dynamic>),
          dayId: json['dayId'] == null
              ? null
              : DateTime.parse(json['dayId'] as String),
          id: fromGraphQLUuidNullableToDartUuidValueNullable(json['id']),
          person: json['person'] == null
              ? null
              : PersonsObjRelInsertInput.fromJson(
                  json['person'] as Map<String, dynamic>),
          personId:
              fromGraphQLUuidNullableToDartUuidValueNullable(json['personId']),
          recordedBy: fromGraphQLUuidNullableToDartUuidValueNullable(
              json['recordedBy']),
          user: json['user'] == null
              ? null
              : UsersObjRelInsertInput.fromJson(
                  json['user'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$HistoryConfessionHistoryInsertInputToJson(
        HistoryConfessionHistoryInsertInput instance) =>
    <String, dynamic>{
      'day': instance.day?.toJson(),
      'dayId': instance.dayId?.toIso8601String(),
      'id': fromDartUuidValueNullableToGraphQLUuidNullable(instance.id),
      'person': instance.person?.toJson(),
      'personId':
          fromDartUuidValueNullableToGraphQLUuidNullable(instance.personId),
      'recordedBy':
          fromDartUuidValueNullableToGraphQLUuidNullable(instance.recordedBy),
      'user': instance.user?.toJson(),
    };

HistoryConfessionHistoryOnConflict _$HistoryConfessionHistoryOnConflictFromJson(
        Map<String, dynamic> json) =>
    HistoryConfessionHistoryOnConflict(
      constraint: $enumDecode(
          _$HistoryConfessionHistoryConstraintEnumMap, json['constraint'],
          unknownValue: HistoryConfessionHistoryConstraint.artemisUnknown),
      updateColumns: (json['update_columns'] as List<dynamic>)
          .map((e) => $enumDecode(
              _$HistoryConfessionHistoryUpdateColumnEnumMap, e,
              unknownValue:
                  HistoryConfessionHistoryUpdateColumn.artemisUnknown))
          .toList(),
      where: json['where'] == null
          ? null
          : HistoryConfessionHistoryBoolExp.fromJson(
              json['where'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$HistoryConfessionHistoryOnConflictToJson(
        HistoryConfessionHistoryOnConflict instance) =>
    <String, dynamic>{
      'constraint':
          _$HistoryConfessionHistoryConstraintEnumMap[instance.constraint]!,
      'update_columns': instance.updateColumns
          .map((e) => _$HistoryConfessionHistoryUpdateColumnEnumMap[e]!)
          .toList(),
      'where': instance.where?.toJson(),
    };

const _$HistoryConfessionHistoryConstraintEnumMap = {
  HistoryConfessionHistoryConstraint.confessionHistoryDayIDPersonIDKey:
      'confession_history_dayID_personID_key',
  HistoryConfessionHistoryConstraint.confessionHistoryPkey:
      'confession_history_pkey',
  HistoryConfessionHistoryConstraint.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

const _$HistoryConfessionHistoryUpdateColumnEnumMap = {
  HistoryConfessionHistoryUpdateColumn.dayId: 'dayId',
  HistoryConfessionHistoryUpdateColumn.id: 'id',
  HistoryConfessionHistoryUpdateColumn.personId: 'personId',
  HistoryConfessionHistoryUpdateColumn.recordedBy: 'recordedBy',
  HistoryConfessionHistoryUpdateColumn.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

HistoryEditHistoryArrRelInsertInput
    _$HistoryEditHistoryArrRelInsertInputFromJson(Map<String, dynamic> json) =>
        HistoryEditHistoryArrRelInsertInput(
          data: (json['data'] as List<dynamic>)
              .map((e) => HistoryEditHistoryInsertInput.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
          onConflict: json['onConflict'] == null
              ? null
              : HistoryEditHistoryOnConflict.fromJson(
                  json['onConflict'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$HistoryEditHistoryArrRelInsertInputToJson(
        HistoryEditHistoryArrRelInsertInput instance) =>
    <String, dynamic>{
      'data': instance.data.map((e) => e.toJson()).toList(),
      'onConflict': instance.onConflict?.toJson(),
    };

HistoryEditHistoryInsertInput _$HistoryEditHistoryInsertInputFromJson(
        Map<String, dynamic> json) =>
    HistoryEditHistoryInsertInput(
      auditId: fromGraphQLUuidNullableToDartUuidValueNullable(json['auditId']),
      recordId:
          fromGraphQLUuidNullableToDartUuidValueNullable(json['recordId']),
      recordedBy:
          fromGraphQLUuidNullableToDartUuidValueNullable(json['recordedBy']),
      table: json['table'] as String?,
      time:
          json['time'] == null ? null : DateTime.parse(json['time'] as String),
      user: json['user'] == null
          ? null
          : UsersObjRelInsertInput.fromJson(
              json['user'] as Map<String, dynamic>),
      userRole: json['userRole'] as String?,
    );

Map<String, dynamic> _$HistoryEditHistoryInsertInputToJson(
        HistoryEditHistoryInsertInput instance) =>
    <String, dynamic>{
      'auditId':
          fromDartUuidValueNullableToGraphQLUuidNullable(instance.auditId),
      'recordId':
          fromDartUuidValueNullableToGraphQLUuidNullable(instance.recordId),
      'recordedBy':
          fromDartUuidValueNullableToGraphQLUuidNullable(instance.recordedBy),
      'table': instance.table,
      'time': instance.time?.toIso8601String(),
      'user': instance.user?.toJson(),
      'userRole': instance.userRole,
    };

HistoryEditHistoryOnConflict _$HistoryEditHistoryOnConflictFromJson(
        Map<String, dynamic> json) =>
    HistoryEditHistoryOnConflict(
      constraint: $enumDecode(
          _$HistoryEditHistoryConstraintEnumMap, json['constraint'],
          unknownValue: HistoryEditHistoryConstraint.artemisUnknown),
      updateColumns: (json['update_columns'] as List<dynamic>)
          .map((e) => $enumDecode(_$HistoryEditHistoryUpdateColumnEnumMap, e,
              unknownValue: HistoryEditHistoryUpdateColumn.artemisUnknown))
          .toList(),
      where: json['where'] == null
          ? null
          : HistoryEditHistoryBoolExp.fromJson(
              json['where'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$HistoryEditHistoryOnConflictToJson(
        HistoryEditHistoryOnConflict instance) =>
    <String, dynamic>{
      'constraint': _$HistoryEditHistoryConstraintEnumMap[instance.constraint]!,
      'update_columns': instance.updateColumns
          .map((e) => _$HistoryEditHistoryUpdateColumnEnumMap[e]!)
          .toList(),
      'where': instance.where?.toJson(),
    };

const _$HistoryEditHistoryConstraintEnumMap = {
  HistoryEditHistoryConstraint.editHistoryPkey: 'edit_history_pkey',
  HistoryEditHistoryConstraint.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

const _$HistoryEditHistoryUpdateColumnEnumMap = {
  HistoryEditHistoryUpdateColumn.auditId: 'auditId',
  HistoryEditHistoryUpdateColumn.recordId: 'recordId',
  HistoryEditHistoryUpdateColumn.recordedBy: 'recordedBy',
  HistoryEditHistoryUpdateColumn.table: 'table',
  HistoryEditHistoryUpdateColumn.time: 'time',
  HistoryEditHistoryUpdateColumn.userRole: 'userRole',
  HistoryEditHistoryUpdateColumn.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

FamiliesObjRelInsertInput _$FamiliesObjRelInsertInputFromJson(
        Map<String, dynamic> json) =>
    FamiliesObjRelInsertInput(
      data: FamiliesInsertInput.fromJson(json['data'] as Map<String, dynamic>),
      onConflict: json['onConflict'] == null
          ? null
          : FamiliesOnConflict.fromJson(
              json['onConflict'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FamiliesObjRelInsertInputToJson(
        FamiliesObjRelInsertInput instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'onConflict': instance.onConflict?.toJson(),
    };

FamiliesInsertInput _$FamiliesInsertInputFromJson(Map<String, dynamic> json) =>
    FamiliesInsertInput(
      address: json['address'] as String?,
      color: json['color'] as int?,
      families: json['families'] == null
          ? null
          : FamiliesFamiliesArrRelInsertInput.fromJson(
              json['families'] as Map<String, dynamic>),
      family: json['family'] == null
          ? null
          : FamiliesFamiliesObjRelInsertInput.fromJson(
              json['family'] as Map<String, dynamic>),
      geolocation:
          fromGraphQLGeographyNullableToDartJsonNullable(json['geolocation']),
      id: fromGraphQLUuidNullableToDartUuidValueNullable(json['id']),
      name: json['name'] as String?,
      notes: json['notes'] as String?,
      persons: json['persons'] == null
          ? null
          : PersonsArrRelInsertInput.fromJson(
              json['persons'] as Map<String, dynamic>),
      photoUpdatedAt: json['photoUpdatedAt'] == null
          ? null
          : DateTime.parse(json['photoUpdatedAt'] as String),
      stores: json['stores'] == null
          ? null
          : StoresArrRelInsertInput.fromJson(
              json['stores'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FamiliesInsertInputToJson(
        FamiliesInsertInput instance) =>
    <String, dynamic>{
      'address': instance.address,
      'color': instance.color,
      'families': instance.families?.toJson(),
      'family': instance.family?.toJson(),
      'geolocation':
          fromDartJsonNullableToGraphQLGeographyNullable(instance.geolocation),
      'id': fromDartUuidValueNullableToGraphQLUuidNullable(instance.id),
      'name': instance.name,
      'notes': instance.notes,
      'persons': instance.persons?.toJson(),
      'photoUpdatedAt': instance.photoUpdatedAt?.toIso8601String(),
      'stores': instance.stores?.toJson(),
    };

FamiliesFamiliesArrRelInsertInput _$FamiliesFamiliesArrRelInsertInputFromJson(
        Map<String, dynamic> json) =>
    FamiliesFamiliesArrRelInsertInput(
      data: (json['data'] as List<dynamic>)
          .map((e) =>
              FamiliesFamiliesInsertInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      onConflict: json['onConflict'] == null
          ? null
          : FamiliesFamiliesOnConflict.fromJson(
              json['onConflict'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FamiliesFamiliesArrRelInsertInputToJson(
        FamiliesFamiliesArrRelInsertInput instance) =>
    <String, dynamic>{
      'data': instance.data.map((e) => e.toJson()).toList(),
      'onConflict': instance.onConflict?.toJson(),
    };

FamiliesFamiliesInsertInput _$FamiliesFamiliesInsertInputFromJson(
        Map<String, dynamic> json) =>
    FamiliesFamiliesInsertInput(
      innerFamily: json['innerFamily'] == null
          ? null
          : FamiliesObjRelInsertInput.fromJson(
              json['innerFamily'] as Map<String, dynamic>),
      innerFamilyId:
          fromGraphQLUuidNullableToDartUuidValueNullable(json['innerFamilyId']),
      outerFamily: json['outerFamily'] == null
          ? null
          : FamiliesObjRelInsertInput.fromJson(
              json['outerFamily'] as Map<String, dynamic>),
      outerFamilyId:
          fromGraphQLUuidNullableToDartUuidValueNullable(json['outerFamilyId']),
    );

Map<String, dynamic> _$FamiliesFamiliesInsertInputToJson(
        FamiliesFamiliesInsertInput instance) =>
    <String, dynamic>{
      'innerFamily': instance.innerFamily?.toJson(),
      'innerFamilyId': fromDartUuidValueNullableToGraphQLUuidNullable(
          instance.innerFamilyId),
      'outerFamily': instance.outerFamily?.toJson(),
      'outerFamilyId': fromDartUuidValueNullableToGraphQLUuidNullable(
          instance.outerFamilyId),
    };

FamiliesFamiliesOnConflict _$FamiliesFamiliesOnConflictFromJson(
        Map<String, dynamic> json) =>
    FamiliesFamiliesOnConflict(
      constraint: $enumDecode(
          _$FamiliesFamiliesConstraintEnumMap, json['constraint'],
          unknownValue: FamiliesFamiliesConstraint.artemisUnknown),
      updateColumns: (json['update_columns'] as List<dynamic>)
          .map((e) => $enumDecode(_$FamiliesFamiliesUpdateColumnEnumMap, e,
              unknownValue: FamiliesFamiliesUpdateColumn.artemisUnknown))
          .toList(),
      where: json['where'] == null
          ? null
          : FamiliesFamiliesBoolExp.fromJson(
              json['where'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FamiliesFamiliesOnConflictToJson(
        FamiliesFamiliesOnConflict instance) =>
    <String, dynamic>{
      'constraint': _$FamiliesFamiliesConstraintEnumMap[instance.constraint]!,
      'update_columns': instance.updateColumns
          .map((e) => _$FamiliesFamiliesUpdateColumnEnumMap[e]!)
          .toList(),
      'where': instance.where?.toJson(),
    };

const _$FamiliesFamiliesConstraintEnumMap = {
  FamiliesFamiliesConstraint.familiesFamiliesOuterFamilyIDInnerFamilyIDKey:
      'families_families_outerFamilyID_innerFamilyID_key',
  FamiliesFamiliesConstraint.familiesFamiliesPkey: 'families_families_pkey',
  FamiliesFamiliesConstraint.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

const _$FamiliesFamiliesUpdateColumnEnumMap = {
  FamiliesFamiliesUpdateColumn.innerFamilyId: 'innerFamilyId',
  FamiliesFamiliesUpdateColumn.outerFamilyId: 'outerFamilyId',
  FamiliesFamiliesUpdateColumn.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

FamiliesFamiliesObjRelInsertInput _$FamiliesFamiliesObjRelInsertInputFromJson(
        Map<String, dynamic> json) =>
    FamiliesFamiliesObjRelInsertInput(
      data: FamiliesFamiliesInsertInput.fromJson(
          json['data'] as Map<String, dynamic>),
      onConflict: json['onConflict'] == null
          ? null
          : FamiliesFamiliesOnConflict.fromJson(
              json['onConflict'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FamiliesFamiliesObjRelInsertInputToJson(
        FamiliesFamiliesObjRelInsertInput instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'onConflict': instance.onConflict?.toJson(),
    };

StoresArrRelInsertInput _$StoresArrRelInsertInputFromJson(
        Map<String, dynamic> json) =>
    StoresArrRelInsertInput(
      data: (json['data'] as List<dynamic>)
          .map((e) => StoresInsertInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      onConflict: json['onConflict'] == null
          ? null
          : StoresOnConflict.fromJson(
              json['onConflict'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StoresArrRelInsertInputToJson(
        StoresArrRelInsertInput instance) =>
    <String, dynamic>{
      'data': instance.data.map((e) => e.toJson()).toList(),
      'onConflict': instance.onConflict?.toJson(),
    };

StoresInsertInput _$StoresInsertInputFromJson(Map<String, dynamic> json) =>
    StoresInsertInput(
      adminFamily:
          fromGraphQLUuidNullableToDartUuidValueNullable(json['adminFamily']),
      color: json['color'] as int?,
      family: json['family'] == null
          ? null
          : FamiliesObjRelInsertInput.fromJson(
              json['family'] as Map<String, dynamic>),
      geolocation:
          fromGraphQLGeographyNullableToDartJsonNullable(json['geolocation']),
      id: fromGraphQLUuidNullableToDartUuidValueNullable(json['id']),
      name: json['name'] as String?,
      photoUpdatedAt: json['photoUpdatedAt'] == null
          ? null
          : DateTime.parse(json['photoUpdatedAt'] as String),
    );

Map<String, dynamic> _$StoresInsertInputToJson(StoresInsertInput instance) =>
    <String, dynamic>{
      'adminFamily':
          fromDartUuidValueNullableToGraphQLUuidNullable(instance.adminFamily),
      'color': instance.color,
      'family': instance.family?.toJson(),
      'geolocation':
          fromDartJsonNullableToGraphQLGeographyNullable(instance.geolocation),
      'id': fromDartUuidValueNullableToGraphQLUuidNullable(instance.id),
      'name': instance.name,
      'photoUpdatedAt': instance.photoUpdatedAt?.toIso8601String(),
    };

StoresOnConflict _$StoresOnConflictFromJson(Map<String, dynamic> json) =>
    StoresOnConflict(
      constraint: $enumDecode(_$StoresConstraintEnumMap, json['constraint'],
          unknownValue: StoresConstraint.artemisUnknown),
      updateColumns: (json['update_columns'] as List<dynamic>)
          .map((e) => $enumDecode(_$StoresUpdateColumnEnumMap, e,
              unknownValue: StoresUpdateColumn.artemisUnknown))
          .toList(),
      where: json['where'] == null
          ? null
          : StoresBoolExp.fromJson(json['where'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StoresOnConflictToJson(StoresOnConflict instance) =>
    <String, dynamic>{
      'constraint': _$StoresConstraintEnumMap[instance.constraint]!,
      'update_columns': instance.updateColumns
          .map((e) => _$StoresUpdateColumnEnumMap[e]!)
          .toList(),
      'where': instance.where?.toJson(),
    };

const _$StoresConstraintEnumMap = {
  StoresConstraint.storesPkey: 'stores_pkey',
  StoresConstraint.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

const _$StoresUpdateColumnEnumMap = {
  StoresUpdateColumn.adminFamily: 'adminFamily',
  StoresUpdateColumn.color: 'color',
  StoresUpdateColumn.geolocation: 'geolocation',
  StoresUpdateColumn.id: 'id',
  StoresUpdateColumn.name: 'name',
  StoresUpdateColumn.photoUpdatedAt: 'photoUpdatedAt',
  StoresUpdateColumn.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

FamiliesOnConflict _$FamiliesOnConflictFromJson(Map<String, dynamic> json) =>
    FamiliesOnConflict(
      constraint: $enumDecode(_$FamiliesConstraintEnumMap, json['constraint'],
          unknownValue: FamiliesConstraint.artemisUnknown),
      updateColumns: (json['update_columns'] as List<dynamic>)
          .map((e) => $enumDecode(_$FamiliesUpdateColumnEnumMap, e,
              unknownValue: FamiliesUpdateColumn.artemisUnknown))
          .toList(),
      where: json['where'] == null
          ? null
          : FamiliesBoolExp.fromJson(json['where'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FamiliesOnConflictToJson(FamiliesOnConflict instance) =>
    <String, dynamic>{
      'constraint': _$FamiliesConstraintEnumMap[instance.constraint]!,
      'update_columns': instance.updateColumns
          .map((e) => _$FamiliesUpdateColumnEnumMap[e]!)
          .toList(),
      'where': instance.where?.toJson(),
    };

const _$FamiliesConstraintEnumMap = {
  FamiliesConstraint.familiesPkey: 'families_pkey',
  FamiliesConstraint.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

const _$FamiliesUpdateColumnEnumMap = {
  FamiliesUpdateColumn.address: 'address',
  FamiliesUpdateColumn.color: 'color',
  FamiliesUpdateColumn.geolocation: 'geolocation',
  FamiliesUpdateColumn.id: 'id',
  FamiliesUpdateColumn.name: 'name',
  FamiliesUpdateColumn.notes: 'notes',
  FamiliesUpdateColumn.photoUpdatedAt: 'photoUpdatedAt',
  FamiliesUpdateColumn.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

FathersObjRelInsertInput _$FathersObjRelInsertInputFromJson(
        Map<String, dynamic> json) =>
    FathersObjRelInsertInput(
      data: FathersInsertInput.fromJson(json['data'] as Map<String, dynamic>),
      onConflict: json['onConflict'] == null
          ? null
          : FathersOnConflict.fromJson(
              json['onConflict'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FathersObjRelInsertInputToJson(
        FathersObjRelInsertInput instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'onConflict': instance.onConflict?.toJson(),
    };

PersonsGroupsArrRelInsertInput _$PersonsGroupsArrRelInsertInputFromJson(
        Map<String, dynamic> json) =>
    PersonsGroupsArrRelInsertInput(
      data: (json['data'] as List<dynamic>)
          .map((e) =>
              PersonsGroupsInsertInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      onConflict: json['onConflict'] == null
          ? null
          : PersonsGroupsOnConflict.fromJson(
              json['onConflict'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PersonsGroupsArrRelInsertInputToJson(
        PersonsGroupsArrRelInsertInput instance) =>
    <String, dynamic>{
      'data': instance.data.map((e) => e.toJson()).toList(),
      'onConflict': instance.onConflict?.toJson(),
    };

PersonsGroupsOnConflict _$PersonsGroupsOnConflictFromJson(
        Map<String, dynamic> json) =>
    PersonsGroupsOnConflict(
      constraint: $enumDecode(
          _$PersonsGroupsConstraintEnumMap, json['constraint'],
          unknownValue: PersonsGroupsConstraint.artemisUnknown),
      updateColumns: (json['update_columns'] as List<dynamic>)
          .map((e) => $enumDecode(_$PersonsGroupsUpdateColumnEnumMap, e,
              unknownValue: PersonsGroupsUpdateColumn.artemisUnknown))
          .toList(),
      where: json['where'] == null
          ? null
          : PersonsGroupsBoolExp.fromJson(
              json['where'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PersonsGroupsOnConflictToJson(
        PersonsGroupsOnConflict instance) =>
    <String, dynamic>{
      'constraint': _$PersonsGroupsConstraintEnumMap[instance.constraint]!,
      'update_columns': instance.updateColumns
          .map((e) => _$PersonsGroupsUpdateColumnEnumMap[e]!)
          .toList(),
      'where': instance.where?.toJson(),
    };

const _$PersonsGroupsConstraintEnumMap = {
  PersonsGroupsConstraint.personsGroupsPersonIDGroupIDKey:
      'persons_groups_personID_groupID_key',
  PersonsGroupsConstraint.personsGroupsPkey: 'persons_groups_pkey',
  PersonsGroupsConstraint.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

const _$PersonsGroupsUpdateColumnEnumMap = {
  PersonsGroupsUpdateColumn.groupId: 'groupId',
  PersonsGroupsUpdateColumn.personId: 'personId',
  PersonsGroupsUpdateColumn.relId: 'relId',
  PersonsGroupsUpdateColumn.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

JobsObjRelInsertInput _$JobsObjRelInsertInputFromJson(
        Map<String, dynamic> json) =>
    JobsObjRelInsertInput(
      data: JobsInsertInput.fromJson(json['data'] as Map<String, dynamic>),
      onConflict: json['onConflict'] == null
          ? null
          : JobsOnConflict.fromJson(json['onConflict'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$JobsObjRelInsertInputToJson(
        JobsObjRelInsertInput instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'onConflict': instance.onConflict?.toJson(),
    };

JobsInsertInput _$JobsInsertInputFromJson(Map<String, dynamic> json) =>
    JobsInsertInput(
      id: fromGraphQLUuidNullableToDartUuidValueNullable(json['id']),
      name: json['name'] as String?,
      persons: json['persons'] == null
          ? null
          : PersonsArrRelInsertInput.fromJson(
              json['persons'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$JobsInsertInputToJson(JobsInsertInput instance) =>
    <String, dynamic>{
      'id': fromDartUuidValueNullableToGraphQLUuidNullable(instance.id),
      'name': instance.name,
      'persons': instance.persons?.toJson(),
    };

JobsOnConflict _$JobsOnConflictFromJson(Map<String, dynamic> json) =>
    JobsOnConflict(
      constraint: $enumDecode(_$JobsConstraintEnumMap, json['constraint'],
          unknownValue: JobsConstraint.artemisUnknown),
      updateColumns: (json['update_columns'] as List<dynamic>)
          .map((e) => $enumDecode(_$JobsUpdateColumnEnumMap, e,
              unknownValue: JobsUpdateColumn.artemisUnknown))
          .toList(),
      where: json['where'] == null
          ? null
          : JobsBoolExp.fromJson(json['where'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$JobsOnConflictToJson(JobsOnConflict instance) =>
    <String, dynamic>{
      'constraint': _$JobsConstraintEnumMap[instance.constraint]!,
      'update_columns': instance.updateColumns
          .map((e) => _$JobsUpdateColumnEnumMap[e]!)
          .toList(),
      'where': instance.where?.toJson(),
    };

const _$JobsConstraintEnumMap = {
  JobsConstraint.jobsNameKey: 'jobs_name_key',
  JobsConstraint.jobsPkey: 'jobs_pkey',
  JobsConstraint.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

const _$JobsUpdateColumnEnumMap = {
  JobsUpdateColumn.id: 'id',
  JobsUpdateColumn.name: 'name',
  JobsUpdateColumn.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

HistoryKodasHistoryArrRelInsertInput
    _$HistoryKodasHistoryArrRelInsertInputFromJson(Map<String, dynamic> json) =>
        HistoryKodasHistoryArrRelInsertInput(
          data: (json['data'] as List<dynamic>)
              .map((e) => HistoryKodasHistoryInsertInput.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
          onConflict: json['onConflict'] == null
              ? null
              : HistoryKodasHistoryOnConflict.fromJson(
                  json['onConflict'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$HistoryKodasHistoryArrRelInsertInputToJson(
        HistoryKodasHistoryArrRelInsertInput instance) =>
    <String, dynamic>{
      'data': instance.data.map((e) => e.toJson()).toList(),
      'onConflict': instance.onConflict?.toJson(),
    };

HistoryKodasHistoryInsertInput _$HistoryKodasHistoryInsertInputFromJson(
        Map<String, dynamic> json) =>
    HistoryKodasHistoryInsertInput(
      day: json['day'] == null
          ? null
          : HistoryAttendanceDaysObjRelInsertInput.fromJson(
              json['day'] as Map<String, dynamic>),
      dayId: json['dayId'] == null
          ? null
          : DateTime.parse(json['dayId'] as String),
      id: fromGraphQLUuidNullableToDartUuidValueNullable(json['id']),
      person: json['person'] == null
          ? null
          : PersonsObjRelInsertInput.fromJson(
              json['person'] as Map<String, dynamic>),
      personId:
          fromGraphQLUuidNullableToDartUuidValueNullable(json['personId']),
      recordedBy:
          fromGraphQLUuidNullableToDartUuidValueNullable(json['recordedBy']),
      user: json['user'] == null
          ? null
          : UsersObjRelInsertInput.fromJson(
              json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$HistoryKodasHistoryInsertInputToJson(
        HistoryKodasHistoryInsertInput instance) =>
    <String, dynamic>{
      'day': instance.day?.toJson(),
      'dayId': instance.dayId?.toIso8601String(),
      'id': fromDartUuidValueNullableToGraphQLUuidNullable(instance.id),
      'person': instance.person?.toJson(),
      'personId':
          fromDartUuidValueNullableToGraphQLUuidNullable(instance.personId),
      'recordedBy':
          fromDartUuidValueNullableToGraphQLUuidNullable(instance.recordedBy),
      'user': instance.user?.toJson(),
    };

HistoryKodasHistoryOnConflict _$HistoryKodasHistoryOnConflictFromJson(
        Map<String, dynamic> json) =>
    HistoryKodasHistoryOnConflict(
      constraint: $enumDecode(
          _$HistoryKodasHistoryConstraintEnumMap, json['constraint'],
          unknownValue: HistoryKodasHistoryConstraint.artemisUnknown),
      updateColumns: (json['update_columns'] as List<dynamic>)
          .map((e) => $enumDecode(_$HistoryKodasHistoryUpdateColumnEnumMap, e,
              unknownValue: HistoryKodasHistoryUpdateColumn.artemisUnknown))
          .toList(),
      where: json['where'] == null
          ? null
          : HistoryKodasHistoryBoolExp.fromJson(
              json['where'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$HistoryKodasHistoryOnConflictToJson(
        HistoryKodasHistoryOnConflict instance) =>
    <String, dynamic>{
      'constraint':
          _$HistoryKodasHistoryConstraintEnumMap[instance.constraint]!,
      'update_columns': instance.updateColumns
          .map((e) => _$HistoryKodasHistoryUpdateColumnEnumMap[e]!)
          .toList(),
      'where': instance.where?.toJson(),
    };

const _$HistoryKodasHistoryConstraintEnumMap = {
  HistoryKodasHistoryConstraint.kodasHistoryDayIDPersonIDKey:
      'kodas_history_dayID_personID_key',
  HistoryKodasHistoryConstraint.kodasHistoryPkey: 'kodas_history_pkey',
  HistoryKodasHistoryConstraint.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

const _$HistoryKodasHistoryUpdateColumnEnumMap = {
  HistoryKodasHistoryUpdateColumn.dayId: 'dayId',
  HistoryKodasHistoryUpdateColumn.id: 'id',
  HistoryKodasHistoryUpdateColumn.personId: 'personId',
  HistoryKodasHistoryUpdateColumn.recordedBy: 'recordedBy',
  HistoryKodasHistoryUpdateColumn.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

PersonTypesObjRelInsertInput _$PersonTypesObjRelInsertInputFromJson(
        Map<String, dynamic> json) =>
    PersonTypesObjRelInsertInput(
      data:
          PersonTypesInsertInput.fromJson(json['data'] as Map<String, dynamic>),
      onConflict: json['onConflict'] == null
          ? null
          : PersonTypesOnConflict.fromJson(
              json['onConflict'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PersonTypesObjRelInsertInputToJson(
        PersonTypesObjRelInsertInput instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'onConflict': instance.onConflict?.toJson(),
    };

PersonTypesInsertInput _$PersonTypesInsertInputFromJson(
        Map<String, dynamic> json) =>
    PersonTypesInsertInput(
      id: fromGraphQLUuidNullableToDartUuidValueNullable(json['id']),
      name: json['name'] as String?,
      order: json['order'] as int?,
      persons: json['persons'] == null
          ? null
          : PersonsArrRelInsertInput.fromJson(
              json['persons'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PersonTypesInsertInputToJson(
        PersonTypesInsertInput instance) =>
    <String, dynamic>{
      'id': fromDartUuidValueNullableToGraphQLUuidNullable(instance.id),
      'name': instance.name,
      'order': instance.order,
      'persons': instance.persons?.toJson(),
    };

PersonTypesOnConflict _$PersonTypesOnConflictFromJson(
        Map<String, dynamic> json) =>
    PersonTypesOnConflict(
      constraint: $enumDecode(
          _$PersonTypesConstraintEnumMap, json['constraint'],
          unknownValue: PersonTypesConstraint.artemisUnknown),
      updateColumns: (json['update_columns'] as List<dynamic>)
          .map((e) => $enumDecode(_$PersonTypesUpdateColumnEnumMap, e,
              unknownValue: PersonTypesUpdateColumn.artemisUnknown))
          .toList(),
      where: json['where'] == null
          ? null
          : PersonTypesBoolExp.fromJson(json['where'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PersonTypesOnConflictToJson(
        PersonTypesOnConflict instance) =>
    <String, dynamic>{
      'constraint': _$PersonTypesConstraintEnumMap[instance.constraint]!,
      'update_columns': instance.updateColumns
          .map((e) => _$PersonTypesUpdateColumnEnumMap[e]!)
          .toList(),
      'where': instance.where?.toJson(),
    };

const _$PersonTypesConstraintEnumMap = {
  PersonTypesConstraint.personTypesNameKey: 'personTypes_name_key',
  PersonTypesConstraint.personTypesOrderKey: 'personTypes_order_key',
  PersonTypesConstraint.personTypesPkey: 'personTypes_pkey',
  PersonTypesConstraint.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

const _$PersonTypesUpdateColumnEnumMap = {
  PersonTypesUpdateColumn.id: 'id',
  PersonTypesUpdateColumn.name: 'name',
  PersonTypesUpdateColumn.order: 'order',
  PersonTypesUpdateColumn.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

QualificationsObjRelInsertInput _$QualificationsObjRelInsertInputFromJson(
        Map<String, dynamic> json) =>
    QualificationsObjRelInsertInput(
      data: QualificationsInsertInput.fromJson(
          json['data'] as Map<String, dynamic>),
      onConflict: json['onConflict'] == null
          ? null
          : QualificationsOnConflict.fromJson(
              json['onConflict'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$QualificationsObjRelInsertInputToJson(
        QualificationsObjRelInsertInput instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'onConflict': instance.onConflict?.toJson(),
    };

QualificationsInsertInput _$QualificationsInsertInputFromJson(
        Map<String, dynamic> json) =>
    QualificationsInsertInput(
      id: fromGraphQLUuidNullableToDartUuidValueNullable(json['id']),
      name: json['name'] as String?,
      persons: json['persons'] == null
          ? null
          : PersonsArrRelInsertInput.fromJson(
              json['persons'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$QualificationsInsertInputToJson(
        QualificationsInsertInput instance) =>
    <String, dynamic>{
      'id': fromDartUuidValueNullableToGraphQLUuidNullable(instance.id),
      'name': instance.name,
      'persons': instance.persons?.toJson(),
    };

QualificationsOnConflict _$QualificationsOnConflictFromJson(
        Map<String, dynamic> json) =>
    QualificationsOnConflict(
      constraint: $enumDecode(
          _$QualificationsConstraintEnumMap, json['constraint'],
          unknownValue: QualificationsConstraint.artemisUnknown),
      updateColumns: (json['update_columns'] as List<dynamic>)
          .map((e) => $enumDecode(_$QualificationsUpdateColumnEnumMap, e,
              unknownValue: QualificationsUpdateColumn.artemisUnknown))
          .toList(),
      where: json['where'] == null
          ? null
          : QualificationsBoolExp.fromJson(
              json['where'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$QualificationsOnConflictToJson(
        QualificationsOnConflict instance) =>
    <String, dynamic>{
      'constraint': _$QualificationsConstraintEnumMap[instance.constraint]!,
      'update_columns': instance.updateColumns
          .map((e) => _$QualificationsUpdateColumnEnumMap[e]!)
          .toList(),
      'where': instance.where?.toJson(),
    };

const _$QualificationsConstraintEnumMap = {
  QualificationsConstraint.qualificationsNameKey: 'qualifications_name_key',
  QualificationsConstraint.qualificationsPkey: 'qualifications_pkey',
  QualificationsConstraint.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

const _$QualificationsUpdateColumnEnumMap = {
  QualificationsUpdateColumn.id: 'id',
  QualificationsUpdateColumn.name: 'name',
  QualificationsUpdateColumn.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

SchoolsObjRelInsertInput _$SchoolsObjRelInsertInputFromJson(
        Map<String, dynamic> json) =>
    SchoolsObjRelInsertInput(
      data: SchoolsInsertInput.fromJson(json['data'] as Map<String, dynamic>),
      onConflict: json['onConflict'] == null
          ? null
          : SchoolsOnConflict.fromJson(
              json['onConflict'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SchoolsObjRelInsertInputToJson(
        SchoolsObjRelInsertInput instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'onConflict': instance.onConflict?.toJson(),
    };

SchoolsInsertInput _$SchoolsInsertInputFromJson(Map<String, dynamic> json) =>
    SchoolsInsertInput(
      id: fromGraphQLUuidNullableToDartUuidValueNullable(json['id']),
      name: json['name'] as String?,
      persons: json['persons'] == null
          ? null
          : PersonsArrRelInsertInput.fromJson(
              json['persons'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SchoolsInsertInputToJson(SchoolsInsertInput instance) =>
    <String, dynamic>{
      'id': fromDartUuidValueNullableToGraphQLUuidNullable(instance.id),
      'name': instance.name,
      'persons': instance.persons?.toJson(),
    };

SchoolsOnConflict _$SchoolsOnConflictFromJson(Map<String, dynamic> json) =>
    SchoolsOnConflict(
      constraint: $enumDecode(_$SchoolsConstraintEnumMap, json['constraint'],
          unknownValue: SchoolsConstraint.artemisUnknown),
      updateColumns: (json['update_columns'] as List<dynamic>)
          .map((e) => $enumDecode(_$SchoolsUpdateColumnEnumMap, e,
              unknownValue: SchoolsUpdateColumn.artemisUnknown))
          .toList(),
      where: json['where'] == null
          ? null
          : SchoolsBoolExp.fromJson(json['where'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SchoolsOnConflictToJson(SchoolsOnConflict instance) =>
    <String, dynamic>{
      'constraint': _$SchoolsConstraintEnumMap[instance.constraint]!,
      'update_columns': instance.updateColumns
          .map((e) => _$SchoolsUpdateColumnEnumMap[e]!)
          .toList(),
      'where': instance.where?.toJson(),
    };

const _$SchoolsConstraintEnumMap = {
  SchoolsConstraint.schoolsNameKey: 'schools_name_key',
  SchoolsConstraint.schoolsPkey: 'schools_pkey',
  SchoolsConstraint.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

const _$SchoolsUpdateColumnEnumMap = {
  SchoolsUpdateColumn.id: 'id',
  SchoolsUpdateColumn.name: 'name',
  SchoolsUpdateColumn.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

PersonsServicesArrRelInsertInput _$PersonsServicesArrRelInsertInputFromJson(
        Map<String, dynamic> json) =>
    PersonsServicesArrRelInsertInput(
      data: (json['data'] as List<dynamic>)
          .map((e) =>
              PersonsServicesInsertInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      onConflict: json['onConflict'] == null
          ? null
          : PersonsServicesOnConflict.fromJson(
              json['onConflict'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PersonsServicesArrRelInsertInputToJson(
        PersonsServicesArrRelInsertInput instance) =>
    <String, dynamic>{
      'data': instance.data.map((e) => e.toJson()).toList(),
      'onConflict': instance.onConflict?.toJson(),
    };

PersonsServicesInsertInput _$PersonsServicesInsertInputFromJson(
        Map<String, dynamic> json) =>
    PersonsServicesInsertInput(
      person: json['person'] == null
          ? null
          : PersonsObjRelInsertInput.fromJson(
              json['person'] as Map<String, dynamic>),
      personId:
          fromGraphQLUuidNullableToDartUuidValueNullable(json['personId']),
      relId: fromGraphQLUuidNullableToDartUuidValueNullable(json['relId']),
      service: json['service'] == null
          ? null
          : ServicesObjRelInsertInput.fromJson(
              json['service'] as Map<String, dynamic>),
      serviceId:
          fromGraphQLUuidNullableToDartUuidValueNullable(json['serviceId']),
    );

Map<String, dynamic> _$PersonsServicesInsertInputToJson(
        PersonsServicesInsertInput instance) =>
    <String, dynamic>{
      'person': instance.person?.toJson(),
      'personId':
          fromDartUuidValueNullableToGraphQLUuidNullable(instance.personId),
      'relId': fromDartUuidValueNullableToGraphQLUuidNullable(instance.relId),
      'service': instance.service?.toJson(),
      'serviceId':
          fromDartUuidValueNullableToGraphQLUuidNullable(instance.serviceId),
    };

ServicesObjRelInsertInput _$ServicesObjRelInsertInputFromJson(
        Map<String, dynamic> json) =>
    ServicesObjRelInsertInput(
      data: ServicesInsertInput.fromJson(json['data'] as Map<String, dynamic>),
      onConflict: json['onConflict'] == null
          ? null
          : ServicesOnConflict.fromJson(
              json['onConflict'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ServicesObjRelInsertInputToJson(
        ServicesObjRelInsertInput instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'onConflict': instance.onConflict?.toJson(),
    };

ServicesInsertInput _$ServicesInsertInputFromJson(Map<String, dynamic> json) =>
    ServicesInsertInput(
      attendanceDaysConstraints: json['attendanceDaysConstraints'] == null
          ? null
          : HistoryAttendanceDaysConstraintsArrRelInsertInput.fromJson(
              json['attendanceDaysConstraints'] as Map<String, dynamic>),
      attendanceHistory: json['attendanceHistory'] == null
          ? null
          : HistoryAttendanceHistoryArrRelInsertInput.fromJson(
              json['attendanceHistory'] as Map<String, dynamic>),
      classes: json['classes'] == null
          ? null
          : ClassesArrRelInsertInput.fromJson(
              json['classes'] as Map<String, dynamic>),
      color: json['color'] as int?,
      firestoreId: json['firestoreId'] as String?,
      fromStudyYear: json['fromStudyYear'] == null
          ? null
          : StudyYearsObjRelInsertInput.fromJson(
              json['fromStudyYear'] as Map<String, dynamic>),
      groups: json['groups'] == null
          ? null
          : GroupsArrRelInsertInput.fromJson(
              json['groups'] as Map<String, dynamic>),
      id: fromGraphQLUuidNullableToDartUuidValueNullable(json['id']),
      name: json['name'] as String?,
      nextService:
          fromGraphQLUuidNullableToDartUuidValueNullable(json['nextService']),
      persons: json['persons'] == null
          ? null
          : PersonsServicesArrRelInsertInput.fromJson(
              json['persons'] as Map<String, dynamic>),
      photoUpdatedAt: json['photoUpdatedAt'] == null
          ? null
          : DateTime.parse(json['photoUpdatedAt'] as String),
      studyYearFrom: json['studyYearFrom'] as int?,
      studyYearTo: json['studyYearTo'] as int?,
      toStudyYear: json['toStudyYear'] == null
          ? null
          : StudyYearsObjRelInsertInput.fromJson(
              json['toStudyYear'] as Map<String, dynamic>),
      users: json['users'] == null
          ? null
          : UsersPermissionsArrRelInsertInput.fromJson(
              json['users'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ServicesInsertInputToJson(
        ServicesInsertInput instance) =>
    <String, dynamic>{
      'attendanceDaysConstraints': instance.attendanceDaysConstraints?.toJson(),
      'attendanceHistory': instance.attendanceHistory?.toJson(),
      'classes': instance.classes?.toJson(),
      'color': instance.color,
      'firestoreId': instance.firestoreId,
      'fromStudyYear': instance.fromStudyYear?.toJson(),
      'groups': instance.groups?.toJson(),
      'id': fromDartUuidValueNullableToGraphQLUuidNullable(instance.id),
      'name': instance.name,
      'nextService':
          fromDartUuidValueNullableToGraphQLUuidNullable(instance.nextService),
      'persons': instance.persons?.toJson(),
      'photoUpdatedAt': instance.photoUpdatedAt?.toIso8601String(),
      'studyYearFrom': instance.studyYearFrom,
      'studyYearTo': instance.studyYearTo,
      'toStudyYear': instance.toStudyYear?.toJson(),
      'users': instance.users?.toJson(),
    };

StudyYearsObjRelInsertInput _$StudyYearsObjRelInsertInputFromJson(
        Map<String, dynamic> json) =>
    StudyYearsObjRelInsertInput(
      data:
          StudyYearsInsertInput.fromJson(json['data'] as Map<String, dynamic>),
      onConflict: json['onConflict'] == null
          ? null
          : StudyYearsOnConflict.fromJson(
              json['onConflict'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StudyYearsObjRelInsertInputToJson(
        StudyYearsObjRelInsertInput instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'onConflict': instance.onConflict?.toJson(),
    };

StudyYearsInsertInput _$StudyYearsInsertInputFromJson(
        Map<String, dynamic> json) =>
    StudyYearsInsertInput(
      attendanceDaysConstraints: json['attendanceDaysConstraints'] == null
          ? null
          : HistoryAttendanceDaysConstraintsArrRelInsertInput.fromJson(
              json['attendanceDaysConstraints'] as Map<String, dynamic>),
      classes: json['classes'] == null
          ? null
          : ClassesArrRelInsertInput.fromJson(
              json['classes'] as Map<String, dynamic>),
      name: json['name'] as String?,
      order: json['order'] as int?,
      persons: json['persons'] == null
          ? null
          : PersonsArrRelInsertInput.fromJson(
              json['persons'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StudyYearsInsertInputToJson(
        StudyYearsInsertInput instance) =>
    <String, dynamic>{
      'attendanceDaysConstraints': instance.attendanceDaysConstraints?.toJson(),
      'classes': instance.classes?.toJson(),
      'name': instance.name,
      'order': instance.order,
      'persons': instance.persons?.toJson(),
    };

StudyYearsOnConflict _$StudyYearsOnConflictFromJson(
        Map<String, dynamic> json) =>
    StudyYearsOnConflict(
      constraint: $enumDecode(_$StudyYearsConstraintEnumMap, json['constraint'],
          unknownValue: StudyYearsConstraint.artemisUnknown),
      updateColumns: (json['update_columns'] as List<dynamic>)
          .map((e) => $enumDecode(_$StudyYearsUpdateColumnEnumMap, e,
              unknownValue: StudyYearsUpdateColumn.artemisUnknown))
          .toList(),
      where: json['where'] == null
          ? null
          : StudyYearsBoolExp.fromJson(json['where'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StudyYearsOnConflictToJson(
        StudyYearsOnConflict instance) =>
    <String, dynamic>{
      'constraint': _$StudyYearsConstraintEnumMap[instance.constraint]!,
      'update_columns': instance.updateColumns
          .map((e) => _$StudyYearsUpdateColumnEnumMap[e]!)
          .toList(),
      'where': instance.where?.toJson(),
    };

const _$StudyYearsConstraintEnumMap = {
  StudyYearsConstraint.studyYearsNameKey: 'studyYears_name_key',
  StudyYearsConstraint.studyYearsOrderKey: 'studyYears_order_key',
  StudyYearsConstraint.studyYearsPkey: 'studyYears_pkey',
  StudyYearsConstraint.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

const _$StudyYearsUpdateColumnEnumMap = {
  StudyYearsUpdateColumn.name: 'name',
  StudyYearsUpdateColumn.order: 'order',
  StudyYearsUpdateColumn.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

GroupsArrRelInsertInput _$GroupsArrRelInsertInputFromJson(
        Map<String, dynamic> json) =>
    GroupsArrRelInsertInput(
      data: (json['data'] as List<dynamic>)
          .map((e) => GroupsInsertInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      onConflict: json['onConflict'] == null
          ? null
          : GroupsOnConflict.fromJson(
              json['onConflict'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GroupsArrRelInsertInputToJson(
        GroupsArrRelInsertInput instance) =>
    <String, dynamic>{
      'data': instance.data.map((e) => e.toJson()).toList(),
      'onConflict': instance.onConflict?.toJson(),
    };

GroupsOnConflict _$GroupsOnConflictFromJson(Map<String, dynamic> json) =>
    GroupsOnConflict(
      constraint: $enumDecode(_$GroupsConstraintEnumMap, json['constraint'],
          unknownValue: GroupsConstraint.artemisUnknown),
      updateColumns: (json['update_columns'] as List<dynamic>)
          .map((e) => $enumDecode(_$GroupsUpdateColumnEnumMap, e,
              unknownValue: GroupsUpdateColumn.artemisUnknown))
          .toList(),
      where: json['where'] == null
          ? null
          : GroupsBoolExp.fromJson(json['where'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GroupsOnConflictToJson(GroupsOnConflict instance) =>
    <String, dynamic>{
      'constraint': _$GroupsConstraintEnumMap[instance.constraint]!,
      'update_columns': instance.updateColumns
          .map((e) => _$GroupsUpdateColumnEnumMap[e]!)
          .toList(),
      'where': instance.where?.toJson(),
    };

const _$GroupsConstraintEnumMap = {
  GroupsConstraint.groupsPkey: 'groups_pkey',
  GroupsConstraint.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

const _$GroupsUpdateColumnEnumMap = {
  GroupsUpdateColumn.color: 'color',
  GroupsUpdateColumn.id: 'id',
  GroupsUpdateColumn.name: 'name',
  GroupsUpdateColumn.photoUpdatedAt: 'photoUpdatedAt',
  GroupsUpdateColumn.serviceId: 'serviceId',
  GroupsUpdateColumn.validity: 'validity',
  GroupsUpdateColumn.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

ServicesOnConflict _$ServicesOnConflictFromJson(Map<String, dynamic> json) =>
    ServicesOnConflict(
      constraint: $enumDecode(_$ServicesConstraintEnumMap, json['constraint'],
          unknownValue: ServicesConstraint.artemisUnknown),
      updateColumns: (json['update_columns'] as List<dynamic>)
          .map((e) => $enumDecode(_$ServicesUpdateColumnEnumMap, e,
              unknownValue: ServicesUpdateColumn.artemisUnknown))
          .toList(),
      where: json['where'] == null
          ? null
          : ServicesBoolExp.fromJson(json['where'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ServicesOnConflictToJson(ServicesOnConflict instance) =>
    <String, dynamic>{
      'constraint': _$ServicesConstraintEnumMap[instance.constraint]!,
      'update_columns': instance.updateColumns
          .map((e) => _$ServicesUpdateColumnEnumMap[e]!)
          .toList(),
      'where': instance.where?.toJson(),
    };

const _$ServicesConstraintEnumMap = {
  ServicesConstraint.servicesFirestoreIdKey: 'services_firestore_id_key',
  ServicesConstraint.servicesNameKey: 'services_name_key',
  ServicesConstraint.servicesPkey: 'services_pkey',
  ServicesConstraint.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

const _$ServicesUpdateColumnEnumMap = {
  ServicesUpdateColumn.color: 'color',
  ServicesUpdateColumn.firestoreId: 'firestoreId',
  ServicesUpdateColumn.id: 'id',
  ServicesUpdateColumn.name: 'name',
  ServicesUpdateColumn.nextService: 'nextService',
  ServicesUpdateColumn.photoUpdatedAt: 'photoUpdatedAt',
  ServicesUpdateColumn.studyYearFrom: 'studyYearFrom',
  ServicesUpdateColumn.studyYearTo: 'studyYearTo',
  ServicesUpdateColumn.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

PersonsServicesOnConflict _$PersonsServicesOnConflictFromJson(
        Map<String, dynamic> json) =>
    PersonsServicesOnConflict(
      constraint: $enumDecode(
          _$PersonsServicesConstraintEnumMap, json['constraint'],
          unknownValue: PersonsServicesConstraint.artemisUnknown),
      updateColumns: (json['update_columns'] as List<dynamic>)
          .map((e) => $enumDecode(_$PersonsServicesUpdateColumnEnumMap, e,
              unknownValue: PersonsServicesUpdateColumn.artemisUnknown))
          .toList(),
      where: json['where'] == null
          ? null
          : PersonsServicesBoolExp.fromJson(
              json['where'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PersonsServicesOnConflictToJson(
        PersonsServicesOnConflict instance) =>
    <String, dynamic>{
      'constraint': _$PersonsServicesConstraintEnumMap[instance.constraint]!,
      'update_columns': instance.updateColumns
          .map((e) => _$PersonsServicesUpdateColumnEnumMap[e]!)
          .toList(),
      'where': instance.where?.toJson(),
    };

const _$PersonsServicesConstraintEnumMap = {
  PersonsServicesConstraint.personsServicesPersonIDServiceIDKey:
      'persons_services_personID_serviceID_key',
  PersonsServicesConstraint.personsServicesPkey: 'persons_services_pkey',
  PersonsServicesConstraint.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

const _$PersonsServicesUpdateColumnEnumMap = {
  PersonsServicesUpdateColumn.personId: 'personId',
  PersonsServicesUpdateColumn.relId: 'relId',
  PersonsServicesUpdateColumn.serviceId: 'serviceId',
  PersonsServicesUpdateColumn.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

ShammasLevelsObjRelInsertInput _$ShammasLevelsObjRelInsertInputFromJson(
        Map<String, dynamic> json) =>
    ShammasLevelsObjRelInsertInput(
      data: ShammasLevelsInsertInput.fromJson(
          json['data'] as Map<String, dynamic>),
      onConflict: json['onConflict'] == null
          ? null
          : ShammasLevelsOnConflict.fromJson(
              json['onConflict'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ShammasLevelsObjRelInsertInputToJson(
        ShammasLevelsObjRelInsertInput instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'onConflict': instance.onConflict?.toJson(),
    };

ShammasLevelsInsertInput _$ShammasLevelsInsertInputFromJson(
        Map<String, dynamic> json) =>
    ShammasLevelsInsertInput(
      id: fromGraphQLUuidNullableToDartUuidValueNullable(json['id']),
      name: json['name'] as String?,
      order: json['order'] as int?,
    );

Map<String, dynamic> _$ShammasLevelsInsertInputToJson(
        ShammasLevelsInsertInput instance) =>
    <String, dynamic>{
      'id': fromDartUuidValueNullableToGraphQLUuidNullable(instance.id),
      'name': instance.name,
      'order': instance.order,
    };

ShammasLevelsOnConflict _$ShammasLevelsOnConflictFromJson(
        Map<String, dynamic> json) =>
    ShammasLevelsOnConflict(
      constraint: $enumDecode(
          _$ShammasLevelsConstraintEnumMap, json['constraint'],
          unknownValue: ShammasLevelsConstraint.artemisUnknown),
      updateColumns: (json['update_columns'] as List<dynamic>)
          .map((e) => $enumDecode(_$ShammasLevelsUpdateColumnEnumMap, e,
              unknownValue: ShammasLevelsUpdateColumn.artemisUnknown))
          .toList(),
      where: json['where'] == null
          ? null
          : ShammasLevelsBoolExp.fromJson(
              json['where'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ShammasLevelsOnConflictToJson(
        ShammasLevelsOnConflict instance) =>
    <String, dynamic>{
      'constraint': _$ShammasLevelsConstraintEnumMap[instance.constraint]!,
      'update_columns': instance.updateColumns
          .map((e) => _$ShammasLevelsUpdateColumnEnumMap[e]!)
          .toList(),
      'where': instance.where?.toJson(),
    };

const _$ShammasLevelsConstraintEnumMap = {
  ShammasLevelsConstraint.shammasLevelNameKey: 'shammas_level_name_key',
  ShammasLevelsConstraint.shammasLevelOrderKey: 'shammas_level_order_key',
  ShammasLevelsConstraint.shammasLevelPkey: 'shammas_level_pkey',
  ShammasLevelsConstraint.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

const _$ShammasLevelsUpdateColumnEnumMap = {
  ShammasLevelsUpdateColumn.id: 'id',
  ShammasLevelsUpdateColumn.name: 'name',
  ShammasLevelsUpdateColumn.order: 'order',
  ShammasLevelsUpdateColumn.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

PersonStatesObjRelInsertInput _$PersonStatesObjRelInsertInputFromJson(
        Map<String, dynamic> json) =>
    PersonStatesObjRelInsertInput(
      data: PersonStatesInsertInput.fromJson(
          json['data'] as Map<String, dynamic>),
      onConflict: json['onConflict'] == null
          ? null
          : PersonStatesOnConflict.fromJson(
              json['onConflict'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PersonStatesObjRelInsertInputToJson(
        PersonStatesObjRelInsertInput instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'onConflict': instance.onConflict?.toJson(),
    };

PersonStatesInsertInput _$PersonStatesInsertInputFromJson(
        Map<String, dynamic> json) =>
    PersonStatesInsertInput(
      color: json['color'] as int?,
      id: fromGraphQLUuidNullableToDartUuidValueNullable(json['id']),
      name: json['name'] as String?,
      persons: json['persons'] == null
          ? null
          : PersonsArrRelInsertInput.fromJson(
              json['persons'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PersonStatesInsertInputToJson(
        PersonStatesInsertInput instance) =>
    <String, dynamic>{
      'color': instance.color,
      'id': fromDartUuidValueNullableToGraphQLUuidNullable(instance.id),
      'name': instance.name,
      'persons': instance.persons?.toJson(),
    };

PersonStatesOnConflict _$PersonStatesOnConflictFromJson(
        Map<String, dynamic> json) =>
    PersonStatesOnConflict(
      constraint: $enumDecode(
          _$PersonStatesConstraintEnumMap, json['constraint'],
          unknownValue: PersonStatesConstraint.artemisUnknown),
      updateColumns: (json['update_columns'] as List<dynamic>)
          .map((e) => $enumDecode(_$PersonStatesUpdateColumnEnumMap, e,
              unknownValue: PersonStatesUpdateColumn.artemisUnknown))
          .toList(),
      where: json['where'] == null
          ? null
          : PersonStatesBoolExp.fromJson(json['where'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PersonStatesOnConflictToJson(
        PersonStatesOnConflict instance) =>
    <String, dynamic>{
      'constraint': _$PersonStatesConstraintEnumMap[instance.constraint]!,
      'update_columns': instance.updateColumns
          .map((e) => _$PersonStatesUpdateColumnEnumMap[e]!)
          .toList(),
      'where': instance.where?.toJson(),
    };

const _$PersonStatesConstraintEnumMap = {
  PersonStatesConstraint.statesColorKey: 'states_color_key',
  PersonStatesConstraint.statesNameKey: 'states_name_key',
  PersonStatesConstraint.statesPkey: 'states_pkey',
  PersonStatesConstraint.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

const _$PersonStatesUpdateColumnEnumMap = {
  PersonStatesUpdateColumn.color: 'color',
  PersonStatesUpdateColumn.id: 'id',
  PersonStatesUpdateColumn.name: 'name',
  PersonStatesUpdateColumn.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

PersonsTagsArrRelInsertInput _$PersonsTagsArrRelInsertInputFromJson(
        Map<String, dynamic> json) =>
    PersonsTagsArrRelInsertInput(
      data: (json['data'] as List<dynamic>)
          .map(
              (e) => PersonsTagsInsertInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      onConflict: json['onConflict'] == null
          ? null
          : PersonsTagsOnConflict.fromJson(
              json['onConflict'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PersonsTagsArrRelInsertInputToJson(
        PersonsTagsArrRelInsertInput instance) =>
    <String, dynamic>{
      'data': instance.data.map((e) => e.toJson()).toList(),
      'onConflict': instance.onConflict?.toJson(),
    };

PersonsTagsInsertInput _$PersonsTagsInsertInputFromJson(
        Map<String, dynamic> json) =>
    PersonsTagsInsertInput(
      person: json['person'] == null
          ? null
          : PersonsObjRelInsertInput.fromJson(
              json['person'] as Map<String, dynamic>),
      personId:
          fromGraphQLUuidNullableToDartUuidValueNullable(json['personId']),
      relId: fromGraphQLUuidNullableToDartUuidValueNullable(json['relId']),
      tag: json['tag'] == null
          ? null
          : TagsObjRelInsertInput.fromJson(json['tag'] as Map<String, dynamic>),
      tagId: fromGraphQLUuidNullableToDartUuidValueNullable(json['tagId']),
    );

Map<String, dynamic> _$PersonsTagsInsertInputToJson(
        PersonsTagsInsertInput instance) =>
    <String, dynamic>{
      'person': instance.person?.toJson(),
      'personId':
          fromDartUuidValueNullableToGraphQLUuidNullable(instance.personId),
      'relId': fromDartUuidValueNullableToGraphQLUuidNullable(instance.relId),
      'tag': instance.tag?.toJson(),
      'tagId': fromDartUuidValueNullableToGraphQLUuidNullable(instance.tagId),
    };

TagsObjRelInsertInput _$TagsObjRelInsertInputFromJson(
        Map<String, dynamic> json) =>
    TagsObjRelInsertInput(
      data: TagsInsertInput.fromJson(json['data'] as Map<String, dynamic>),
      onConflict: json['onConflict'] == null
          ? null
          : TagsOnConflict.fromJson(json['onConflict'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TagsObjRelInsertInputToJson(
        TagsObjRelInsertInput instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'onConflict': instance.onConflict?.toJson(),
    };

TagsInsertInput _$TagsInsertInputFromJson(Map<String, dynamic> json) =>
    TagsInsertInput(
      color: json['color'] as int?,
      id: fromGraphQLUuidNullableToDartUuidValueNullable(json['id']),
      name: json['name'] as String?,
      persons: json['persons'] == null
          ? null
          : PersonsTagsArrRelInsertInput.fromJson(
              json['persons'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TagsInsertInputToJson(TagsInsertInput instance) =>
    <String, dynamic>{
      'color': instance.color,
      'id': fromDartUuidValueNullableToGraphQLUuidNullable(instance.id),
      'name': instance.name,
      'persons': instance.persons?.toJson(),
    };

TagsOnConflict _$TagsOnConflictFromJson(Map<String, dynamic> json) =>
    TagsOnConflict(
      constraint: $enumDecode(_$TagsConstraintEnumMap, json['constraint'],
          unknownValue: TagsConstraint.artemisUnknown),
      updateColumns: (json['update_columns'] as List<dynamic>)
          .map((e) => $enumDecode(_$TagsUpdateColumnEnumMap, e,
              unknownValue: TagsUpdateColumn.artemisUnknown))
          .toList(),
      where: json['where'] == null
          ? null
          : TagsBoolExp.fromJson(json['where'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TagsOnConflictToJson(TagsOnConflict instance) =>
    <String, dynamic>{
      'constraint': _$TagsConstraintEnumMap[instance.constraint]!,
      'update_columns': instance.updateColumns
          .map((e) => _$TagsUpdateColumnEnumMap[e]!)
          .toList(),
      'where': instance.where?.toJson(),
    };

const _$TagsConstraintEnumMap = {
  TagsConstraint.tagsNameKey: 'tags_name_key',
  TagsConstraint.tagsPkey: 'tags_pkey',
  TagsConstraint.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

const _$TagsUpdateColumnEnumMap = {
  TagsUpdateColumn.color: 'color',
  TagsUpdateColumn.id: 'id',
  TagsUpdateColumn.name: 'name',
  TagsUpdateColumn.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

PersonsTagsOnConflict _$PersonsTagsOnConflictFromJson(
        Map<String, dynamic> json) =>
    PersonsTagsOnConflict(
      constraint: $enumDecode(
          _$PersonsTagsConstraintEnumMap, json['constraint'],
          unknownValue: PersonsTagsConstraint.artemisUnknown),
      updateColumns: (json['update_columns'] as List<dynamic>)
          .map((e) => $enumDecode(_$PersonsTagsUpdateColumnEnumMap, e,
              unknownValue: PersonsTagsUpdateColumn.artemisUnknown))
          .toList(),
      where: json['where'] == null
          ? null
          : PersonsTagsBoolExp.fromJson(json['where'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PersonsTagsOnConflictToJson(
        PersonsTagsOnConflict instance) =>
    <String, dynamic>{
      'constraint': _$PersonsTagsConstraintEnumMap[instance.constraint]!,
      'update_columns': instance.updateColumns
          .map((e) => _$PersonsTagsUpdateColumnEnumMap[e]!)
          .toList(),
      'where': instance.where?.toJson(),
    };

const _$PersonsTagsConstraintEnumMap = {
  PersonsTagsConstraint.personsTagsPkey: 'persons_tags_pkey',
  PersonsTagsConstraint.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

const _$PersonsTagsUpdateColumnEnumMap = {
  PersonsTagsUpdateColumn.personId: 'personId',
  PersonsTagsUpdateColumn.relId: 'relId',
  PersonsTagsUpdateColumn.tagId: 'tagId',
  PersonsTagsUpdateColumn.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

HistoryVisitHistoryArrRelInsertInput
    _$HistoryVisitHistoryArrRelInsertInputFromJson(Map<String, dynamic> json) =>
        HistoryVisitHistoryArrRelInsertInput(
          data: (json['data'] as List<dynamic>)
              .map((e) => HistoryVisitHistoryInsertInput.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
          onConflict: json['onConflict'] == null
              ? null
              : HistoryVisitHistoryOnConflict.fromJson(
                  json['onConflict'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$HistoryVisitHistoryArrRelInsertInputToJson(
        HistoryVisitHistoryArrRelInsertInput instance) =>
    <String, dynamic>{
      'data': instance.data.map((e) => e.toJson()).toList(),
      'onConflict': instance.onConflict?.toJson(),
    };

HistoryVisitHistoryInsertInput _$HistoryVisitHistoryInsertInputFromJson(
        Map<String, dynamic> json) =>
    HistoryVisitHistoryInsertInput(
      person: json['person'] == null
          ? null
          : PersonsObjRelInsertInput.fromJson(
              json['person'] as Map<String, dynamic>),
      personId:
          fromGraphQLUuidNullableToDartUuidValueNullable(json['personId']),
      recordedBy:
          fromGraphQLUuidNullableToDartUuidValueNullable(json['recordedBy']),
      time:
          json['time'] == null ? null : DateTime.parse(json['time'] as String),
      user: json['user'] == null
          ? null
          : UsersObjRelInsertInput.fromJson(
              json['user'] as Map<String, dynamic>),
      userRole: json['userRole'] as String?,
    );

Map<String, dynamic> _$HistoryVisitHistoryInsertInputToJson(
        HistoryVisitHistoryInsertInput instance) =>
    <String, dynamic>{
      'person': instance.person?.toJson(),
      'personId':
          fromDartUuidValueNullableToGraphQLUuidNullable(instance.personId),
      'recordedBy':
          fromDartUuidValueNullableToGraphQLUuidNullable(instance.recordedBy),
      'time': instance.time?.toIso8601String(),
      'user': instance.user?.toJson(),
      'userRole': instance.userRole,
    };

HistoryVisitHistoryOnConflict _$HistoryVisitHistoryOnConflictFromJson(
        Map<String, dynamic> json) =>
    HistoryVisitHistoryOnConflict(
      constraint: $enumDecode(
          _$HistoryVisitHistoryConstraintEnumMap, json['constraint'],
          unknownValue: HistoryVisitHistoryConstraint.artemisUnknown),
      updateColumns: (json['update_columns'] as List<dynamic>)
          .map((e) => $enumDecode(_$HistoryVisitHistoryUpdateColumnEnumMap, e,
              unknownValue: HistoryVisitHistoryUpdateColumn.artemisUnknown))
          .toList(),
      where: json['where'] == null
          ? null
          : HistoryVisitHistoryBoolExp.fromJson(
              json['where'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$HistoryVisitHistoryOnConflictToJson(
        HistoryVisitHistoryOnConflict instance) =>
    <String, dynamic>{
      'constraint':
          _$HistoryVisitHistoryConstraintEnumMap[instance.constraint]!,
      'update_columns': instance.updateColumns
          .map((e) => _$HistoryVisitHistoryUpdateColumnEnumMap[e]!)
          .toList(),
      'where': instance.where?.toJson(),
    };

const _$HistoryVisitHistoryConstraintEnumMap = {
  HistoryVisitHistoryConstraint.visitHistoryPkey: 'visit_history_pkey',
  HistoryVisitHistoryConstraint.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

const _$HistoryVisitHistoryUpdateColumnEnumMap = {
  HistoryVisitHistoryUpdateColumn.personId: 'personId',
  HistoryVisitHistoryUpdateColumn.recordedBy: 'recordedBy',
  HistoryVisitHistoryUpdateColumn.time: 'time',
  HistoryVisitHistoryUpdateColumn.userRole: 'userRole',
  HistoryVisitHistoryUpdateColumn.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

HistoryAttendanceHistoryOnConflict _$HistoryAttendanceHistoryOnConflictFromJson(
        Map<String, dynamic> json) =>
    HistoryAttendanceHistoryOnConflict(
      constraint: $enumDecode(
          _$HistoryAttendanceHistoryConstraintEnumMap, json['constraint'],
          unknownValue: HistoryAttendanceHistoryConstraint.artemisUnknown),
      updateColumns: (json['update_columns'] as List<dynamic>)
          .map((e) => $enumDecode(
              _$HistoryAttendanceHistoryUpdateColumnEnumMap, e,
              unknownValue:
                  HistoryAttendanceHistoryUpdateColumn.artemisUnknown))
          .toList(),
      where: json['where'] == null
          ? null
          : HistoryAttendanceHistoryBoolExp.fromJson(
              json['where'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$HistoryAttendanceHistoryOnConflictToJson(
        HistoryAttendanceHistoryOnConflict instance) =>
    <String, dynamic>{
      'constraint':
          _$HistoryAttendanceHistoryConstraintEnumMap[instance.constraint]!,
      'update_columns': instance.updateColumns
          .map((e) => _$HistoryAttendanceHistoryUpdateColumnEnumMap[e]!)
          .toList(),
      'where': instance.where?.toJson(),
    };

const _$HistoryAttendanceHistoryConstraintEnumMap = {
  HistoryAttendanceHistoryConstraint
          .attendanceHistoryDayIDServiceIDGroupIDPersonIDKey:
      'attendance_history_dayID_serviceID_groupID_personID_key',
  HistoryAttendanceHistoryConstraint.attendanceHistoryPkey:
      'attendance_history_pkey',
  HistoryAttendanceHistoryConstraint.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

const _$HistoryAttendanceHistoryUpdateColumnEnumMap = {
  HistoryAttendanceHistoryUpdateColumn.asAdmin: 'asAdmin',
  HistoryAttendanceHistoryUpdateColumn.dayId: 'dayId',
  HistoryAttendanceHistoryUpdateColumn.groupId: 'groupId',
  HistoryAttendanceHistoryUpdateColumn.id: 'id',
  HistoryAttendanceHistoryUpdateColumn.personId: 'personId',
  HistoryAttendanceHistoryUpdateColumn.recordedBy: 'recordedBy',
  HistoryAttendanceHistoryUpdateColumn.serviceGender: 'serviceGender',
  HistoryAttendanceHistoryUpdateColumn.serviceId: 'serviceId',
  HistoryAttendanceHistoryUpdateColumn.serviceStudyYear: 'serviceStudyYear',
  HistoryAttendanceHistoryUpdateColumn.time: 'time',
  HistoryAttendanceHistoryUpdateColumn.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

HistoryAttendanceDaysOnConflict _$HistoryAttendanceDaysOnConflictFromJson(
        Map<String, dynamic> json) =>
    HistoryAttendanceDaysOnConflict(
      constraint: $enumDecode(
          _$HistoryAttendanceDaysConstraintEnumMap, json['constraint'],
          unknownValue: HistoryAttendanceDaysConstraint.artemisUnknown),
      updateColumns: (json['update_columns'] as List<dynamic>)
          .map((e) => $enumDecode(_$HistoryAttendanceDaysUpdateColumnEnumMap, e,
              unknownValue: HistoryAttendanceDaysUpdateColumn.artemisUnknown))
          .toList(),
      where: json['where'] == null
          ? null
          : HistoryAttendanceDaysBoolExp.fromJson(
              json['where'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$HistoryAttendanceDaysOnConflictToJson(
        HistoryAttendanceDaysOnConflict instance) =>
    <String, dynamic>{
      'constraint':
          _$HistoryAttendanceDaysConstraintEnumMap[instance.constraint]!,
      'update_columns': instance.updateColumns
          .map((e) => _$HistoryAttendanceDaysUpdateColumnEnumMap[e]!)
          .toList(),
      'where': instance.where?.toJson(),
    };

const _$HistoryAttendanceDaysConstraintEnumMap = {
  HistoryAttendanceDaysConstraint.attendanceDaysPkey: 'attendance_days_pkey',
  HistoryAttendanceDaysConstraint.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

const _$HistoryAttendanceDaysUpdateColumnEnumMap = {
  HistoryAttendanceDaysUpdateColumn.day: 'day',
  HistoryAttendanceDaysUpdateColumn.notes: 'notes',
  HistoryAttendanceDaysUpdateColumn.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

HistoryAttendanceDaysConstraintsOnConflict
    _$HistoryAttendanceDaysConstraintsOnConflictFromJson(
            Map<String, dynamic> json) =>
        HistoryAttendanceDaysConstraintsOnConflict(
          constraint: $enumDecode(
              _$HistoryAttendanceDaysConstraintsConstraintEnumMap,
              json['constraint'],
              unknownValue:
                  HistoryAttendanceDaysConstraintsConstraint.artemisUnknown),
          updateColumns: (json['update_columns'] as List<dynamic>)
              .map((e) => $enumDecode(
                  _$HistoryAttendanceDaysConstraintsUpdateColumnEnumMap, e,
                  unknownValue: HistoryAttendanceDaysConstraintsUpdateColumn
                      .artemisUnknown))
              .toList(),
          where: json['where'] == null
              ? null
              : HistoryAttendanceDaysConstraintsBoolExp.fromJson(
                  json['where'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$HistoryAttendanceDaysConstraintsOnConflictToJson(
        HistoryAttendanceDaysConstraintsOnConflict instance) =>
    <String, dynamic>{
      'constraint': _$HistoryAttendanceDaysConstraintsConstraintEnumMap[
          instance.constraint]!,
      'update_columns': instance.updateColumns
          .map((e) => _$HistoryAttendanceDaysConstraintsUpdateColumnEnumMap[e]!)
          .toList(),
      'where': instance.where?.toJson(),
    };

const _$HistoryAttendanceDaysConstraintsConstraintEnumMap = {
  HistoryAttendanceDaysConstraintsConstraint
          .attendanceDaysConstraintsDayServiceServiceStudyYearSKey:
      'attendance_days_constraints_day_service_service_studyYear_s_key',
  HistoryAttendanceDaysConstraintsConstraint.attendanceDaysConstraintsPkey:
      'attendance_days_constraints_pkey',
  HistoryAttendanceDaysConstraintsConstraint.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

const _$HistoryAttendanceDaysConstraintsUpdateColumnEnumMap = {
  HistoryAttendanceDaysConstraintsUpdateColumn.dayId: 'dayId',
  HistoryAttendanceDaysConstraintsUpdateColumn.groupId: 'groupId',
  HistoryAttendanceDaysConstraintsUpdateColumn.id: 'id',
  HistoryAttendanceDaysConstraintsUpdateColumn.serviceGender: 'serviceGender',
  HistoryAttendanceDaysConstraintsUpdateColumn.serviceId: 'serviceId',
  HistoryAttendanceDaysConstraintsUpdateColumn.serviceStudyYear:
      'serviceStudyYear',
  HistoryAttendanceDaysConstraintsUpdateColumn.artemisUnknown:
      'ARTEMIS_UNKNOWN',
};

UsersPermissionsOnConflict _$UsersPermissionsOnConflictFromJson(
        Map<String, dynamic> json) =>
    UsersPermissionsOnConflict(
      constraint: $enumDecode(
          _$UsersPermissionsConstraintEnumMap, json['constraint'],
          unknownValue: UsersPermissionsConstraint.artemisUnknown),
      updateColumns: (json['update_columns'] as List<dynamic>)
          .map((e) => $enumDecode(_$UsersPermissionsUpdateColumnEnumMap, e,
              unknownValue: UsersPermissionsUpdateColumn.artemisUnknown))
          .toList(),
      where: json['where'] == null
          ? null
          : UsersPermissionsBoolExp.fromJson(
              json['where'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UsersPermissionsOnConflictToJson(
        UsersPermissionsOnConflict instance) =>
    <String, dynamic>{
      'constraint': _$UsersPermissionsConstraintEnumMap[instance.constraint]!,
      'update_columns': instance.updateColumns
          .map((e) => _$UsersPermissionsUpdateColumnEnumMap[e]!)
          .toList(),
      'where': instance.where?.toJson(),
    };

const _$UsersPermissionsConstraintEnumMap = {
  UsersPermissionsConstraint.usersPermissionsArea: 'users_permissions_area',
  UsersPermissionsConstraint.usersPermissionsGroup: 'users_permissions_group',
  UsersPermissionsConstraint.usersPermissionsPermissionIdKey:
      'users_permissions_permission_id_key',
  UsersPermissionsConstraint.usersPermissionsPkey: 'users_permissions_pkey',
  UsersPermissionsConstraint.usersPermissionsService:
      'users_permissions_service',
  UsersPermissionsConstraint.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

const _$UsersPermissionsUpdateColumnEnumMap = {
  UsersPermissionsUpdateColumn.adminOnArea: 'adminOnArea',
  UsersPermissionsUpdateColumn.adminOnGroup: 'adminOnGroup',
  UsersPermissionsUpdateColumn.adminOnService: 'adminOnService',
  UsersPermissionsUpdateColumn.areaAdminOnUsers: 'areaAdminOnUsers',
  UsersPermissionsUpdateColumn.areaAllowEdit: 'areaAllowEdit',
  UsersPermissionsUpdateColumn.groupAdminOnUsers: 'groupAdminOnUsers',
  UsersPermissionsUpdateColumn.groupAllowEdit: 'groupAllowEdit',
  UsersPermissionsUpdateColumn.permissionId: 'permissionId',
  UsersPermissionsUpdateColumn.serviceAdminOnUsers: 'serviceAdminOnUsers',
  UsersPermissionsUpdateColumn.serviceAllowEdit: 'serviceAllowEdit',
  UsersPermissionsUpdateColumn.serviceGender: 'serviceGender',
  UsersPermissionsUpdateColumn.serviceStudyYear: 'serviceStudyYear',
  UsersPermissionsUpdateColumn.uid: 'uid',
  UsersPermissionsUpdateColumn.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

InsertPerson$MutationRoot$Persons _$InsertPerson$MutationRoot$PersonsFromJson(
        Map<String, dynamic> json) =>
    InsertPerson$MutationRoot$Persons()
      ..id = fromGraphQLUuidToDartUuidValue(json['id'])
      ..name = json['name'] as String
      ..color = json['color'] as int?
      ..photoUpdatedAt = json['photoUpdatedAt'] == null
          ? null
          : DateTime.parse(json['photoUpdatedAt'] as String);

Map<String, dynamic> _$InsertPerson$MutationRoot$PersonsToJson(
        InsertPerson$MutationRoot$Persons instance) =>
    <String, dynamic>{
      'id': fromDartUuidValueToGraphQLUuid(instance.id),
      'name': instance.name,
      'color': instance.color,
      'photoUpdatedAt': instance.photoUpdatedAt?.toIso8601String(),
    };

InsertPerson$MutationRoot _$InsertPerson$MutationRootFromJson(
        Map<String, dynamic> json) =>
    InsertPerson$MutationRoot()
      ..insertPersonsOne = json['insertPersonsOne'] == null
          ? null
          : InsertPerson$MutationRoot$Persons.fromJson(
              json['insertPersonsOne'] as Map<String, dynamic>);

Map<String, dynamic> _$InsertPerson$MutationRootToJson(
        InsertPerson$MutationRoot instance) =>
    <String, dynamic>{
      'insertPersonsOne': instance.insertPersonsOne?.toJson(),
    };

GetPersonsAttendanceWarning$QueryRoot$Persons
    _$GetPersonsAttendanceWarning$QueryRoot$PersonsFromJson(
            Map<String, dynamic> json) =>
        GetPersonsAttendanceWarning$QueryRoot$Persons()
          ..name = json['name'] as String;

Map<String, dynamic> _$GetPersonsAttendanceWarning$QueryRoot$PersonsToJson(
        GetPersonsAttendanceWarning$QueryRoot$Persons instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

GetPersonsAttendanceWarning$QueryRoot
    _$GetPersonsAttendanceWarning$QueryRootFromJson(
            Map<String, dynamic> json) =>
        GetPersonsAttendanceWarning$QueryRoot()
          ..persons = (json['persons'] as List<dynamic>)
              .map((e) =>
                  GetPersonsAttendanceWarning$QueryRoot$Persons.fromJson(
                      e as Map<String, dynamic>))
              .toList();

Map<String, dynamic> _$GetPersonsAttendanceWarning$QueryRootToJson(
        GetPersonsAttendanceWarning$QueryRoot instance) =>
    <String, dynamic>{
      'persons': instance.persons.map((e) => e.toJson()).toList(),
    };

GetPersonsKodasWarning$QueryRoot$Persons
    _$GetPersonsKodasWarning$QueryRoot$PersonsFromJson(
            Map<String, dynamic> json) =>
        GetPersonsKodasWarning$QueryRoot$Persons()
          ..name = json['name'] as String;

Map<String, dynamic> _$GetPersonsKodasWarning$QueryRoot$PersonsToJson(
        GetPersonsKodasWarning$QueryRoot$Persons instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

GetPersonsKodasWarning$QueryRoot _$GetPersonsKodasWarning$QueryRootFromJson(
        Map<String, dynamic> json) =>
    GetPersonsKodasWarning$QueryRoot()
      ..persons = (json['persons'] as List<dynamic>)
          .map((e) => GetPersonsKodasWarning$QueryRoot$Persons.fromJson(
              e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$GetPersonsKodasWarning$QueryRootToJson(
        GetPersonsKodasWarning$QueryRoot instance) =>
    <String, dynamic>{
      'persons': instance.persons.map((e) => e.toJson()).toList(),
    };

GetPersonsConfessionWarning$QueryRoot$Persons
    _$GetPersonsConfessionWarning$QueryRoot$PersonsFromJson(
            Map<String, dynamic> json) =>
        GetPersonsConfessionWarning$QueryRoot$Persons()
          ..name = json['name'] as String;

Map<String, dynamic> _$GetPersonsConfessionWarning$QueryRoot$PersonsToJson(
        GetPersonsConfessionWarning$QueryRoot$Persons instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

GetPersonsConfessionWarning$QueryRoot
    _$GetPersonsConfessionWarning$QueryRootFromJson(
            Map<String, dynamic> json) =>
        GetPersonsConfessionWarning$QueryRoot()
          ..persons = (json['persons'] as List<dynamic>)
              .map((e) =>
                  GetPersonsConfessionWarning$QueryRoot$Persons.fromJson(
                      e as Map<String, dynamic>))
              .toList();

Map<String, dynamic> _$GetPersonsConfessionWarning$QueryRootToJson(
        GetPersonsConfessionWarning$QueryRoot instance) =>
    <String, dynamic>{
      'persons': instance.persons.map((e) => e.toJson()).toList(),
    };

GetPersonsVisitWarning$QueryRoot$Persons
    _$GetPersonsVisitWarning$QueryRoot$PersonsFromJson(
            Map<String, dynamic> json) =>
        GetPersonsVisitWarning$QueryRoot$Persons()
          ..name = json['name'] as String;

Map<String, dynamic> _$GetPersonsVisitWarning$QueryRoot$PersonsToJson(
        GetPersonsVisitWarning$QueryRoot$Persons instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

GetPersonsVisitWarning$QueryRoot _$GetPersonsVisitWarning$QueryRootFromJson(
        Map<String, dynamic> json) =>
    GetPersonsVisitWarning$QueryRoot()
      ..persons = (json['persons'] as List<dynamic>)
          .map((e) => GetPersonsVisitWarning$QueryRoot$Persons.fromJson(
              e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$GetPersonsVisitWarning$QueryRootToJson(
        GetPersonsVisitWarning$QueryRoot instance) =>
    <String, dynamic>{
      'persons': instance.persons.map((e) => e.toJson()).toList(),
    };

GetPersonsBirthday$QueryRoot$Persons
    _$GetPersonsBirthday$QueryRoot$PersonsFromJson(Map<String, dynamic> json) =>
        GetPersonsBirthday$QueryRoot$Persons()..name = json['name'] as String;

Map<String, dynamic> _$GetPersonsBirthday$QueryRoot$PersonsToJson(
        GetPersonsBirthday$QueryRoot$Persons instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

GetPersonsBirthday$QueryRoot _$GetPersonsBirthday$QueryRootFromJson(
        Map<String, dynamic> json) =>
    GetPersonsBirthday$QueryRoot()
      ..persons = (json['persons'] as List<dynamic>)
          .map((e) => GetPersonsBirthday$QueryRoot$Persons.fromJson(
              e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$GetPersonsBirthday$QueryRootToJson(
        GetPersonsBirthday$QueryRoot instance) =>
    <String, dynamic>{
      'persons': instance.persons.map((e) => e.toJson()).toList(),
    };

GetMorePersonData$QueryRoot$Persons$Areas
    _$GetMorePersonData$QueryRoot$Persons$AreasFromJson(
            Map<String, dynamic> json) =>
        GetMorePersonData$QueryRoot$Persons$Areas()
          ..id = fromGraphQLUuidToDartUuidValue(json['id'])
          ..name = json['name'] as String
          ..color = json['color'] as int?
          ..photoUpdatedAt = json['photoUpdatedAt'] == null
              ? null
              : DateTime.parse(json['photoUpdatedAt'] as String);

Map<String, dynamic> _$GetMorePersonData$QueryRoot$Persons$AreasToJson(
        GetMorePersonData$QueryRoot$Persons$Areas instance) =>
    <String, dynamic>{
      'id': fromDartUuidValueToGraphQLUuid(instance.id),
      'name': instance.name,
      'color': instance.color,
      'photoUpdatedAt': instance.photoUpdatedAt?.toIso8601String(),
    };

GetMorePersonData$QueryRoot$Persons$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields
    _$GetMorePersonData$QueryRoot$Persons$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFieldsFromJson(
            Map<String, dynamic> json) =>
        GetMorePersonData$QueryRoot$Persons$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields()
          ..dayId = json['dayId'] == null
              ? null
              : DateTime.parse(json['dayId'] as String);

Map<String, dynamic>
    _$GetMorePersonData$QueryRoot$Persons$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFieldsToJson(
            GetMorePersonData$QueryRoot$Persons$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields
                instance) =>
        <String, dynamic>{
          'dayId': instance.dayId?.toIso8601String(),
        };

GetMorePersonData$QueryRoot$Persons$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields
    _$GetMorePersonData$QueryRoot$Persons$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFieldsFromJson(
            Map<String, dynamic> json) =>
        GetMorePersonData$QueryRoot$Persons$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields()
          ..max = json['max'] == null
              ? null
              : GetMorePersonData$QueryRoot$Persons$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields
                  .fromJson(json['max'] as Map<String, dynamic>);

Map<String, dynamic>
    _$GetMorePersonData$QueryRoot$Persons$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFieldsToJson(
            GetMorePersonData$QueryRoot$Persons$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields
                instance) =>
        <String, dynamic>{
          'max': instance.max?.toJson(),
        };

GetMorePersonData$QueryRoot$Persons$Classes$HistoryAttendanceHistoryAggregate
    _$GetMorePersonData$QueryRoot$Persons$Classes$HistoryAttendanceHistoryAggregateFromJson(
            Map<String, dynamic> json) =>
        GetMorePersonData$QueryRoot$Persons$Classes$HistoryAttendanceHistoryAggregate()
          ..aggregate = json['aggregate'] == null
              ? null
              : GetMorePersonData$QueryRoot$Persons$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields
                  .fromJson(json['aggregate'] as Map<String, dynamic>);

Map<String, dynamic>
    _$GetMorePersonData$QueryRoot$Persons$Classes$HistoryAttendanceHistoryAggregateToJson(
            GetMorePersonData$QueryRoot$Persons$Classes$HistoryAttendanceHistoryAggregate
                instance) =>
        <String, dynamic>{
          'aggregate': instance.aggregate?.toJson(),
        };

GetMorePersonData$QueryRoot$Persons$Classes
    _$GetMorePersonData$QueryRoot$Persons$ClassesFromJson(
            Map<String, dynamic> json) =>
        GetMorePersonData$QueryRoot$Persons$Classes()
          ..id = fromGraphQLUuidToDartUuidValue(json['id'])
          ..name = json['name'] as String
          ..color = json['color'] as int?
          ..photoUpdatedAt = json['photoUpdatedAt'] == null
              ? null
              : DateTime.parse(json['photoUpdatedAt'] as String)
          ..attendanceHistoryAggregate =
              GetMorePersonData$QueryRoot$Persons$Classes$HistoryAttendanceHistoryAggregate
                  .fromJson(json['attendanceHistoryAggregate']
                      as Map<String, dynamic>);

Map<String, dynamic> _$GetMorePersonData$QueryRoot$Persons$ClassesToJson(
        GetMorePersonData$QueryRoot$Persons$Classes instance) =>
    <String, dynamic>{
      'id': fromDartUuidValueToGraphQLUuid(instance.id),
      'name': instance.name,
      'color': instance.color,
      'photoUpdatedAt': instance.photoUpdatedAt?.toIso8601String(),
      'attendanceHistoryAggregate':
          instance.attendanceHistoryAggregate.toJson(),
    };

GetMorePersonData$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields
    _$GetMorePersonData$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFieldsFromJson(
            Map<String, dynamic> json) =>
        GetMorePersonData$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields()
          ..dayId = json['dayId'] == null
              ? null
              : DateTime.parse(json['dayId'] as String);

Map<String, dynamic>
    _$GetMorePersonData$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFieldsToJson(
            GetMorePersonData$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields
                instance) =>
        <String, dynamic>{
          'dayId': instance.dayId?.toIso8601String(),
        };

GetMorePersonData$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields
    _$GetMorePersonData$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFieldsFromJson(
            Map<String, dynamic> json) =>
        GetMorePersonData$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields()
          ..max = json['max'] == null
              ? null
              : GetMorePersonData$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields
                  .fromJson(json['max'] as Map<String, dynamic>);

Map<String, dynamic>
    _$GetMorePersonData$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFieldsToJson(
            GetMorePersonData$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields
                instance) =>
        <String, dynamic>{
          'max': instance.max?.toJson(),
        };

GetMorePersonData$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate
    _$GetMorePersonData$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregateFromJson(
            Map<String, dynamic> json) =>
        GetMorePersonData$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate()
          ..aggregate = json['aggregate'] == null
              ? null
              : GetMorePersonData$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields
                  .fromJson(json['aggregate'] as Map<String, dynamic>);

Map<String, dynamic>
    _$GetMorePersonData$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregateToJson(
            GetMorePersonData$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate
                instance) =>
        <String, dynamic>{
          'aggregate': instance.aggregate?.toJson(),
        };

GetMorePersonData$QueryRoot$Persons$PersonsGroups$Groups
    _$GetMorePersonData$QueryRoot$Persons$PersonsGroups$GroupsFromJson(
            Map<String, dynamic> json) =>
        GetMorePersonData$QueryRoot$Persons$PersonsGroups$Groups()
          ..id = fromGraphQLUuidToDartUuidValue(json['id'])
          ..name = json['name'] as String
          ..color = json['color'] as int?
          ..photoUpdatedAt = json['photoUpdatedAt'] == null
              ? null
              : DateTime.parse(json['photoUpdatedAt'] as String)
          ..attendanceHistoryAggregate =
              GetMorePersonData$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate
                  .fromJson(json['attendanceHistoryAggregate']
                      as Map<String, dynamic>);

Map<String,
    dynamic> _$GetMorePersonData$QueryRoot$Persons$PersonsGroups$GroupsToJson(
        GetMorePersonData$QueryRoot$Persons$PersonsGroups$Groups instance) =>
    <String, dynamic>{
      'id': fromDartUuidValueToGraphQLUuid(instance.id),
      'name': instance.name,
      'color': instance.color,
      'photoUpdatedAt': instance.photoUpdatedAt?.toIso8601String(),
      'attendanceHistoryAggregate':
          instance.attendanceHistoryAggregate.toJson(),
    };

GetMorePersonData$QueryRoot$Persons$PersonsGroups
    _$GetMorePersonData$QueryRoot$Persons$PersonsGroupsFromJson(
            Map<String, dynamic> json) =>
        GetMorePersonData$QueryRoot$Persons$PersonsGroups()
          ..group =
              GetMorePersonData$QueryRoot$Persons$PersonsGroups$Groups.fromJson(
                  json['group'] as Map<String, dynamic>);

Map<String, dynamic> _$GetMorePersonData$QueryRoot$Persons$PersonsGroupsToJson(
        GetMorePersonData$QueryRoot$Persons$PersonsGroups instance) =>
    <String, dynamic>{
      'group': instance.group.toJson(),
    };

GetMorePersonData$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields
    _$GetMorePersonData$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFieldsFromJson(
            Map<String, dynamic> json) =>
        GetMorePersonData$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields()
          ..dayId = json['dayId'] == null
              ? null
              : DateTime.parse(json['dayId'] as String);

Map<String, dynamic>
    _$GetMorePersonData$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFieldsToJson(
            GetMorePersonData$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields
                instance) =>
        <String, dynamic>{
          'dayId': instance.dayId?.toIso8601String(),
        };

GetMorePersonData$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields
    _$GetMorePersonData$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFieldsFromJson(
            Map<String, dynamic> json) =>
        GetMorePersonData$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields()
          ..max = json['max'] == null
              ? null
              : GetMorePersonData$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields
                  .fromJson(json['max'] as Map<String, dynamic>);

Map<String, dynamic>
    _$GetMorePersonData$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFieldsToJson(
            GetMorePersonData$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields
                instance) =>
        <String, dynamic>{
          'max': instance.max?.toJson(),
        };

GetMorePersonData$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate
    _$GetMorePersonData$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregateFromJson(
            Map<String, dynamic> json) =>
        GetMorePersonData$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate()
          ..aggregate = json['aggregate'] == null
              ? null
              : GetMorePersonData$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields
                  .fromJson(json['aggregate'] as Map<String, dynamic>);

Map<String, dynamic>
    _$GetMorePersonData$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregateToJson(
            GetMorePersonData$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate
                instance) =>
        <String, dynamic>{
          'aggregate': instance.aggregate?.toJson(),
        };

GetMorePersonData$QueryRoot$Persons$PersonsServices$Services
    _$GetMorePersonData$QueryRoot$Persons$PersonsServices$ServicesFromJson(
            Map<String, dynamic> json) =>
        GetMorePersonData$QueryRoot$Persons$PersonsServices$Services()
          ..id = fromGraphQLUuidToDartUuidValue(json['id'])
          ..name = json['name'] as String
          ..color = json['color'] as int?
          ..photoUpdatedAt = json['photoUpdatedAt'] == null
              ? null
              : DateTime.parse(json['photoUpdatedAt'] as String)
          ..attendanceHistoryAggregate =
              GetMorePersonData$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate
                  .fromJson(json['attendanceHistoryAggregate']
                      as Map<String, dynamic>);

Map<String, dynamic>
    _$GetMorePersonData$QueryRoot$Persons$PersonsServices$ServicesToJson(
            GetMorePersonData$QueryRoot$Persons$PersonsServices$Services
                instance) =>
        <String, dynamic>{
          'id': fromDartUuidValueToGraphQLUuid(instance.id),
          'name': instance.name,
          'color': instance.color,
          'photoUpdatedAt': instance.photoUpdatedAt?.toIso8601String(),
          'attendanceHistoryAggregate':
              instance.attendanceHistoryAggregate.toJson(),
        };

GetMorePersonData$QueryRoot$Persons$PersonsServices
    _$GetMorePersonData$QueryRoot$Persons$PersonsServicesFromJson(
            Map<String, dynamic> json) =>
        GetMorePersonData$QueryRoot$Persons$PersonsServices()
          ..service =
              GetMorePersonData$QueryRoot$Persons$PersonsServices$Services
                  .fromJson(json['service'] as Map<String, dynamic>);

Map<String, dynamic>
    _$GetMorePersonData$QueryRoot$Persons$PersonsServicesToJson(
            GetMorePersonData$QueryRoot$Persons$PersonsServices instance) =>
        <String, dynamic>{
          'service': instance.service.toJson(),
        };

GetMorePersonData$QueryRoot$Persons
    _$GetMorePersonData$QueryRoot$PersonsFromJson(Map<String, dynamic> json) =>
        GetMorePersonData$QueryRoot$Persons()
          ..id = fromGraphQLUuidToDartUuidValue(json['id'])
          ..name = json['name'] as String
          ..areas = (json['areas'] as List<dynamic>?)
              ?.map((e) => GetMorePersonData$QueryRoot$Persons$Areas.fromJson(
                  e as Map<String, dynamic>))
              .toList()
          ..classes = (json['classes'] as List<dynamic>?)
              ?.map((e) => GetMorePersonData$QueryRoot$Persons$Classes.fromJson(
                  e as Map<String, dynamic>))
              .toList()
          ..groups = (json['groups'] as List<dynamic>)
              .map((e) =>
                  GetMorePersonData$QueryRoot$Persons$PersonsGroups.fromJson(
                      e as Map<String, dynamic>))
              .toList()
          ..services = (json['services'] as List<dynamic>)
              .map((e) =>
                  GetMorePersonData$QueryRoot$Persons$PersonsServices.fromJson(
                      e as Map<String, dynamic>))
              .toList();

Map<String, dynamic> _$GetMorePersonData$QueryRoot$PersonsToJson(
        GetMorePersonData$QueryRoot$Persons instance) =>
    <String, dynamic>{
      'id': fromDartUuidValueToGraphQLUuid(instance.id),
      'name': instance.name,
      'areas': instance.areas?.map((e) => e.toJson()).toList(),
      'classes': instance.classes?.map((e) => e.toJson()).toList(),
      'groups': instance.groups.map((e) => e.toJson()).toList(),
      'services': instance.services.map((e) => e.toJson()).toList(),
    };

GetMorePersonData$QueryRoot _$GetMorePersonData$QueryRootFromJson(
        Map<String, dynamic> json) =>
    GetMorePersonData$QueryRoot()
      ..personsByPk = json['personsByPk'] == null
          ? null
          : GetMorePersonData$QueryRoot$Persons.fromJson(
              json['personsByPk'] as Map<String, dynamic>);

Map<String, dynamic> _$GetMorePersonData$QueryRootToJson(
        GetMorePersonData$QueryRoot instance) =>
    <String, dynamic>{
      'personsByPk': instance.personsByPk?.toJson(),
    };

PersonsGeolocations$QueryRoot$Areas
    _$PersonsGeolocations$QueryRoot$AreasFromJson(Map<String, dynamic> json) =>
        PersonsGeolocations$QueryRoot$Areas()
          ..id = fromGraphQLUuidToDartUuidValue(json['id'])
          ..name = json['name'] as String
          ..color = json['color'] as int?
          ..bounds =
              fromGraphQLGeographyNullableToDartJsonNullable(json['bounds']);

Map<String, dynamic> _$PersonsGeolocations$QueryRoot$AreasToJson(
        PersonsGeolocations$QueryRoot$Areas instance) =>
    <String, dynamic>{
      'id': fromDartUuidValueToGraphQLUuid(instance.id),
      'name': instance.name,
      'color': instance.color,
      'bounds': fromDartJsonNullableToGraphQLGeographyNullable(instance.bounds),
    };

PersonsGeolocations$QueryRoot$Streets
    _$PersonsGeolocations$QueryRoot$StreetsFromJson(
            Map<String, dynamic> json) =>
        PersonsGeolocations$QueryRoot$Streets()
          ..id = fromGraphQLUuidToDartUuidValue(json['id'])
          ..name = json['name'] as String
          ..color = json['color'] as int?
          ..line = fromGraphQLGeographyNullableToDartJsonNullable(json['line']);

Map<String, dynamic> _$PersonsGeolocations$QueryRoot$StreetsToJson(
        PersonsGeolocations$QueryRoot$Streets instance) =>
    <String, dynamic>{
      'id': fromDartUuidValueToGraphQLUuid(instance.id),
      'name': instance.name,
      'color': instance.color,
      'line': fromDartJsonNullableToGraphQLGeographyNullable(instance.line),
    };

PersonsGeolocations$QueryRoot$Families
    _$PersonsGeolocations$QueryRoot$FamiliesFromJson(
            Map<String, dynamic> json) =>
        PersonsGeolocations$QueryRoot$Families()
          ..id = fromGraphQLUuidToDartUuidValue(json['id'])
          ..name = json['name'] as String
          ..color = json['color'] as int?
          ..geolocation = fromGraphQLGeographyNullableToDartJsonNullable(
              json['geolocation']);

Map<String, dynamic> _$PersonsGeolocations$QueryRoot$FamiliesToJson(
        PersonsGeolocations$QueryRoot$Families instance) =>
    <String, dynamic>{
      'id': fromDartUuidValueToGraphQLUuid(instance.id),
      'name': instance.name,
      'color': instance.color,
      'geolocation':
          fromDartJsonNullableToGraphQLGeographyNullable(instance.geolocation),
    };

PersonsGeolocations$QueryRoot$Persons
    _$PersonsGeolocations$QueryRoot$PersonsFromJson(
            Map<String, dynamic> json) =>
        PersonsGeolocations$QueryRoot$Persons()
          ..id = fromGraphQLUuidToDartUuidValue(json['id'])
          ..name = json['name'] as String
          ..color = json['color'] as int?
          ..geolocation = fromGraphQLGeographyNullableToDartJsonNullable(
              json['geolocation']);

Map<String, dynamic> _$PersonsGeolocations$QueryRoot$PersonsToJson(
        PersonsGeolocations$QueryRoot$Persons instance) =>
    <String, dynamic>{
      'id': fromDartUuidValueToGraphQLUuid(instance.id),
      'name': instance.name,
      'color': instance.color,
      'geolocation':
          fromDartJsonNullableToGraphQLGeographyNullable(instance.geolocation),
    };

PersonsGeolocations$QueryRoot _$PersonsGeolocations$QueryRootFromJson(
        Map<String, dynamic> json) =>
    PersonsGeolocations$QueryRoot()
      ..areas = (json['areas'] as List<dynamic>)
          .map((e) => PersonsGeolocations$QueryRoot$Areas.fromJson(
              e as Map<String, dynamic>))
          .toList()
      ..streets = (json['streets'] as List<dynamic>)
          .map((e) => PersonsGeolocations$QueryRoot$Streets.fromJson(
              e as Map<String, dynamic>))
          .toList()
      ..families = (json['families'] as List<dynamic>)
          .map((e) => PersonsGeolocations$QueryRoot$Families.fromJson(
              e as Map<String, dynamic>))
          .toList()
      ..persons = (json['persons'] as List<dynamic>)
          .map((e) => PersonsGeolocations$QueryRoot$Persons.fromJson(
              e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$PersonsGeolocations$QueryRootToJson(
        PersonsGeolocations$QueryRoot instance) =>
    <String, dynamic>{
      'areas': instance.areas.map((e) => e.toJson()).toList(),
      'streets': instance.streets.map((e) => e.toJson()).toList(),
      'families': instance.families.map((e) => e.toJson()).toList(),
      'persons': instance.persons.map((e) => e.toJson()).toList(),
    };

AnalyzePerson$QueryRoot$Persons$HistoryCallHistoryAggregate$HistoryCallHistoryAggregateFields$HistoryCallHistoryMaxFields
    _$AnalyzePerson$QueryRoot$Persons$HistoryCallHistoryAggregate$HistoryCallHistoryAggregateFields$HistoryCallHistoryMaxFieldsFromJson(
            Map<String, dynamic> json) =>
        AnalyzePerson$QueryRoot$Persons$HistoryCallHistoryAggregate$HistoryCallHistoryAggregateFields$HistoryCallHistoryMaxFields()
          ..time = json['time'] == null
              ? null
              : DateTime.parse(json['time'] as String);

Map<String, dynamic>
    _$AnalyzePerson$QueryRoot$Persons$HistoryCallHistoryAggregate$HistoryCallHistoryAggregateFields$HistoryCallHistoryMaxFieldsToJson(
            AnalyzePerson$QueryRoot$Persons$HistoryCallHistoryAggregate$HistoryCallHistoryAggregateFields$HistoryCallHistoryMaxFields
                instance) =>
        <String, dynamic>{
          'time': instance.time?.toIso8601String(),
        };

AnalyzePerson$QueryRoot$Persons$HistoryCallHistoryAggregate$HistoryCallHistoryAggregateFields
    _$AnalyzePerson$QueryRoot$Persons$HistoryCallHistoryAggregate$HistoryCallHistoryAggregateFieldsFromJson(
            Map<String, dynamic> json) =>
        AnalyzePerson$QueryRoot$Persons$HistoryCallHistoryAggregate$HistoryCallHistoryAggregateFields()
          ..count = json['count'] as int
          ..max = json['max'] == null
              ? null
              : AnalyzePerson$QueryRoot$Persons$HistoryCallHistoryAggregate$HistoryCallHistoryAggregateFields$HistoryCallHistoryMaxFields
                  .fromJson(json['max'] as Map<String, dynamic>);

Map<String, dynamic>
    _$AnalyzePerson$QueryRoot$Persons$HistoryCallHistoryAggregate$HistoryCallHistoryAggregateFieldsToJson(
            AnalyzePerson$QueryRoot$Persons$HistoryCallHistoryAggregate$HistoryCallHistoryAggregateFields
                instance) =>
        <String, dynamic>{
          'count': instance.count,
          'max': instance.max?.toJson(),
        };

AnalyzePerson$QueryRoot$Persons$HistoryCallHistoryAggregate$HistoryCallHistory
    _$AnalyzePerson$QueryRoot$Persons$HistoryCallHistoryAggregate$HistoryCallHistoryFromJson(
            Map<String, dynamic> json) =>
        AnalyzePerson$QueryRoot$Persons$HistoryCallHistoryAggregate$HistoryCallHistory()
          ..time = DateTime.parse(json['time'] as String);

Map<String, dynamic>
    _$AnalyzePerson$QueryRoot$Persons$HistoryCallHistoryAggregate$HistoryCallHistoryToJson(
            AnalyzePerson$QueryRoot$Persons$HistoryCallHistoryAggregate$HistoryCallHistory
                instance) =>
        <String, dynamic>{
          'time': instance.time.toIso8601String(),
        };

AnalyzePerson$QueryRoot$Persons$HistoryCallHistoryAggregate
    _$AnalyzePerson$QueryRoot$Persons$HistoryCallHistoryAggregateFromJson(
            Map<String, dynamic> json) =>
        AnalyzePerson$QueryRoot$Persons$HistoryCallHistoryAggregate()
          ..aggregate = json['aggregate'] == null
              ? null
              : AnalyzePerson$QueryRoot$Persons$HistoryCallHistoryAggregate$HistoryCallHistoryAggregateFields
                  .fromJson(json['aggregate'] as Map<String, dynamic>)
          ..nodes = (json['nodes'] as List<dynamic>)
              .map((e) =>
                  AnalyzePerson$QueryRoot$Persons$HistoryCallHistoryAggregate$HistoryCallHistory
                      .fromJson(e as Map<String, dynamic>))
              .toList();

Map<String, dynamic>
    _$AnalyzePerson$QueryRoot$Persons$HistoryCallHistoryAggregateToJson(
            AnalyzePerson$QueryRoot$Persons$HistoryCallHistoryAggregate
                instance) =>
        <String, dynamic>{
          'aggregate': instance.aggregate?.toJson(),
          'nodes': instance.nodes.map((e) => e.toJson()).toList(),
        };

AnalyzePerson$QueryRoot$Persons$HistoryVisitHistoryAggregate$HistoryVisitHistoryAggregateFields$HistoryVisitHistoryMaxFields
    _$AnalyzePerson$QueryRoot$Persons$HistoryVisitHistoryAggregate$HistoryVisitHistoryAggregateFields$HistoryVisitHistoryMaxFieldsFromJson(
            Map<String, dynamic> json) =>
        AnalyzePerson$QueryRoot$Persons$HistoryVisitHistoryAggregate$HistoryVisitHistoryAggregateFields$HistoryVisitHistoryMaxFields()
          ..time = json['time'] == null
              ? null
              : DateTime.parse(json['time'] as String);

Map<String, dynamic>
    _$AnalyzePerson$QueryRoot$Persons$HistoryVisitHistoryAggregate$HistoryVisitHistoryAggregateFields$HistoryVisitHistoryMaxFieldsToJson(
            AnalyzePerson$QueryRoot$Persons$HistoryVisitHistoryAggregate$HistoryVisitHistoryAggregateFields$HistoryVisitHistoryMaxFields
                instance) =>
        <String, dynamic>{
          'time': instance.time?.toIso8601String(),
        };

AnalyzePerson$QueryRoot$Persons$HistoryVisitHistoryAggregate$HistoryVisitHistoryAggregateFields
    _$AnalyzePerson$QueryRoot$Persons$HistoryVisitHistoryAggregate$HistoryVisitHistoryAggregateFieldsFromJson(
            Map<String, dynamic> json) =>
        AnalyzePerson$QueryRoot$Persons$HistoryVisitHistoryAggregate$HistoryVisitHistoryAggregateFields()
          ..count = json['count'] as int
          ..max = json['max'] == null
              ? null
              : AnalyzePerson$QueryRoot$Persons$HistoryVisitHistoryAggregate$HistoryVisitHistoryAggregateFields$HistoryVisitHistoryMaxFields
                  .fromJson(json['max'] as Map<String, dynamic>);

Map<String, dynamic>
    _$AnalyzePerson$QueryRoot$Persons$HistoryVisitHistoryAggregate$HistoryVisitHistoryAggregateFieldsToJson(
            AnalyzePerson$QueryRoot$Persons$HistoryVisitHistoryAggregate$HistoryVisitHistoryAggregateFields
                instance) =>
        <String, dynamic>{
          'count': instance.count,
          'max': instance.max?.toJson(),
        };

AnalyzePerson$QueryRoot$Persons$HistoryVisitHistoryAggregate$HistoryVisitHistory
    _$AnalyzePerson$QueryRoot$Persons$HistoryVisitHistoryAggregate$HistoryVisitHistoryFromJson(
            Map<String, dynamic> json) =>
        AnalyzePerson$QueryRoot$Persons$HistoryVisitHistoryAggregate$HistoryVisitHistory()
          ..time = DateTime.parse(json['time'] as String);

Map<String, dynamic>
    _$AnalyzePerson$QueryRoot$Persons$HistoryVisitHistoryAggregate$HistoryVisitHistoryToJson(
            AnalyzePerson$QueryRoot$Persons$HistoryVisitHistoryAggregate$HistoryVisitHistory
                instance) =>
        <String, dynamic>{
          'time': instance.time.toIso8601String(),
        };

AnalyzePerson$QueryRoot$Persons$HistoryVisitHistoryAggregate
    _$AnalyzePerson$QueryRoot$Persons$HistoryVisitHistoryAggregateFromJson(
            Map<String, dynamic> json) =>
        AnalyzePerson$QueryRoot$Persons$HistoryVisitHistoryAggregate()
          ..aggregate = json['aggregate'] == null
              ? null
              : AnalyzePerson$QueryRoot$Persons$HistoryVisitHistoryAggregate$HistoryVisitHistoryAggregateFields
                  .fromJson(json['aggregate'] as Map<String, dynamic>)
          ..nodes = (json['nodes'] as List<dynamic>)
              .map((e) =>
                  AnalyzePerson$QueryRoot$Persons$HistoryVisitHistoryAggregate$HistoryVisitHistory
                      .fromJson(e as Map<String, dynamic>))
              .toList();

Map<String, dynamic>
    _$AnalyzePerson$QueryRoot$Persons$HistoryVisitHistoryAggregateToJson(
            AnalyzePerson$QueryRoot$Persons$HistoryVisitHistoryAggregate
                instance) =>
        <String, dynamic>{
          'aggregate': instance.aggregate?.toJson(),
          'nodes': instance.nodes.map((e) => e.toJson()).toList(),
        };

AnalyzePerson$QueryRoot$Persons$HistoryEditHistoryAggregate$HistoryEditHistoryAggregateFields$HistoryEditHistoryMaxFields
    _$AnalyzePerson$QueryRoot$Persons$HistoryEditHistoryAggregate$HistoryEditHistoryAggregateFields$HistoryEditHistoryMaxFieldsFromJson(
            Map<String, dynamic> json) =>
        AnalyzePerson$QueryRoot$Persons$HistoryEditHistoryAggregate$HistoryEditHistoryAggregateFields$HistoryEditHistoryMaxFields()
          ..time = json['time'] == null
              ? null
              : DateTime.parse(json['time'] as String);

Map<String, dynamic>
    _$AnalyzePerson$QueryRoot$Persons$HistoryEditHistoryAggregate$HistoryEditHistoryAggregateFields$HistoryEditHistoryMaxFieldsToJson(
            AnalyzePerson$QueryRoot$Persons$HistoryEditHistoryAggregate$HistoryEditHistoryAggregateFields$HistoryEditHistoryMaxFields
                instance) =>
        <String, dynamic>{
          'time': instance.time?.toIso8601String(),
        };

AnalyzePerson$QueryRoot$Persons$HistoryEditHistoryAggregate$HistoryEditHistoryAggregateFields
    _$AnalyzePerson$QueryRoot$Persons$HistoryEditHistoryAggregate$HistoryEditHistoryAggregateFieldsFromJson(
            Map<String, dynamic> json) =>
        AnalyzePerson$QueryRoot$Persons$HistoryEditHistoryAggregate$HistoryEditHistoryAggregateFields()
          ..count = json['count'] as int
          ..max = json['max'] == null
              ? null
              : AnalyzePerson$QueryRoot$Persons$HistoryEditHistoryAggregate$HistoryEditHistoryAggregateFields$HistoryEditHistoryMaxFields
                  .fromJson(json['max'] as Map<String, dynamic>);

Map<String, dynamic>
    _$AnalyzePerson$QueryRoot$Persons$HistoryEditHistoryAggregate$HistoryEditHistoryAggregateFieldsToJson(
            AnalyzePerson$QueryRoot$Persons$HistoryEditHistoryAggregate$HistoryEditHistoryAggregateFields
                instance) =>
        <String, dynamic>{
          'count': instance.count,
          'max': instance.max?.toJson(),
        };

AnalyzePerson$QueryRoot$Persons$HistoryEditHistoryAggregate$HistoryEditHistory
    _$AnalyzePerson$QueryRoot$Persons$HistoryEditHistoryAggregate$HistoryEditHistoryFromJson(
            Map<String, dynamic> json) =>
        AnalyzePerson$QueryRoot$Persons$HistoryEditHistoryAggregate$HistoryEditHistory()
          ..time = DateTime.parse(json['time'] as String);

Map<String, dynamic>
    _$AnalyzePerson$QueryRoot$Persons$HistoryEditHistoryAggregate$HistoryEditHistoryToJson(
            AnalyzePerson$QueryRoot$Persons$HistoryEditHistoryAggregate$HistoryEditHistory
                instance) =>
        <String, dynamic>{
          'time': instance.time.toIso8601String(),
        };

AnalyzePerson$QueryRoot$Persons$HistoryEditHistoryAggregate
    _$AnalyzePerson$QueryRoot$Persons$HistoryEditHistoryAggregateFromJson(
            Map<String, dynamic> json) =>
        AnalyzePerson$QueryRoot$Persons$HistoryEditHistoryAggregate()
          ..aggregate = json['aggregate'] == null
              ? null
              : AnalyzePerson$QueryRoot$Persons$HistoryEditHistoryAggregate$HistoryEditHistoryAggregateFields
                  .fromJson(json['aggregate'] as Map<String, dynamic>)
          ..nodes = (json['nodes'] as List<dynamic>)
              .map((e) =>
                  AnalyzePerson$QueryRoot$Persons$HistoryEditHistoryAggregate$HistoryEditHistory
                      .fromJson(e as Map<String, dynamic>))
              .toList();

Map<String, dynamic>
    _$AnalyzePerson$QueryRoot$Persons$HistoryEditHistoryAggregateToJson(
            AnalyzePerson$QueryRoot$Persons$HistoryEditHistoryAggregate
                instance) =>
        <String, dynamic>{
          'aggregate': instance.aggregate?.toJson(),
          'nodes': instance.nodes.map((e) => e.toJson()).toList(),
        };

AnalyzePerson$QueryRoot$Persons$HistoryKodasHistoryAggregate$HistoryKodasHistoryAggregateFields$HistoryKodasHistoryMaxFields
    _$AnalyzePerson$QueryRoot$Persons$HistoryKodasHistoryAggregate$HistoryKodasHistoryAggregateFields$HistoryKodasHistoryMaxFieldsFromJson(
            Map<String, dynamic> json) =>
        AnalyzePerson$QueryRoot$Persons$HistoryKodasHistoryAggregate$HistoryKodasHistoryAggregateFields$HistoryKodasHistoryMaxFields()
          ..time = json['time'] == null
              ? null
              : DateTime.parse(json['time'] as String);

Map<String, dynamic>
    _$AnalyzePerson$QueryRoot$Persons$HistoryKodasHistoryAggregate$HistoryKodasHistoryAggregateFields$HistoryKodasHistoryMaxFieldsToJson(
            AnalyzePerson$QueryRoot$Persons$HistoryKodasHistoryAggregate$HistoryKodasHistoryAggregateFields$HistoryKodasHistoryMaxFields
                instance) =>
        <String, dynamic>{
          'time': instance.time?.toIso8601String(),
        };

AnalyzePerson$QueryRoot$Persons$HistoryKodasHistoryAggregate$HistoryKodasHistoryAggregateFields
    _$AnalyzePerson$QueryRoot$Persons$HistoryKodasHistoryAggregate$HistoryKodasHistoryAggregateFieldsFromJson(
            Map<String, dynamic> json) =>
        AnalyzePerson$QueryRoot$Persons$HistoryKodasHistoryAggregate$HistoryKodasHistoryAggregateFields()
          ..count = json['count'] as int
          ..max = json['max'] == null
              ? null
              : AnalyzePerson$QueryRoot$Persons$HistoryKodasHistoryAggregate$HistoryKodasHistoryAggregateFields$HistoryKodasHistoryMaxFields
                  .fromJson(json['max'] as Map<String, dynamic>);

Map<String, dynamic>
    _$AnalyzePerson$QueryRoot$Persons$HistoryKodasHistoryAggregate$HistoryKodasHistoryAggregateFieldsToJson(
            AnalyzePerson$QueryRoot$Persons$HistoryKodasHistoryAggregate$HistoryKodasHistoryAggregateFields
                instance) =>
        <String, dynamic>{
          'count': instance.count,
          'max': instance.max?.toJson(),
        };

AnalyzePerson$QueryRoot$Persons$HistoryKodasHistoryAggregate$HistoryKodasHistory
    _$AnalyzePerson$QueryRoot$Persons$HistoryKodasHistoryAggregate$HistoryKodasHistoryFromJson(
            Map<String, dynamic> json) =>
        AnalyzePerson$QueryRoot$Persons$HistoryKodasHistoryAggregate$HistoryKodasHistory()
          ..time = json['time'] == null
              ? null
              : DateTime.parse(json['time'] as String);

Map<String, dynamic>
    _$AnalyzePerson$QueryRoot$Persons$HistoryKodasHistoryAggregate$HistoryKodasHistoryToJson(
            AnalyzePerson$QueryRoot$Persons$HistoryKodasHistoryAggregate$HistoryKodasHistory
                instance) =>
        <String, dynamic>{
          'time': instance.time?.toIso8601String(),
        };

AnalyzePerson$QueryRoot$Persons$HistoryKodasHistoryAggregate
    _$AnalyzePerson$QueryRoot$Persons$HistoryKodasHistoryAggregateFromJson(
            Map<String, dynamic> json) =>
        AnalyzePerson$QueryRoot$Persons$HistoryKodasHistoryAggregate()
          ..aggregate = json['aggregate'] == null
              ? null
              : AnalyzePerson$QueryRoot$Persons$HistoryKodasHistoryAggregate$HistoryKodasHistoryAggregateFields
                  .fromJson(json['aggregate'] as Map<String, dynamic>)
          ..nodes = (json['nodes'] as List<dynamic>)
              .map((e) =>
                  AnalyzePerson$QueryRoot$Persons$HistoryKodasHistoryAggregate$HistoryKodasHistory
                      .fromJson(e as Map<String, dynamic>))
              .toList();

Map<String, dynamic>
    _$AnalyzePerson$QueryRoot$Persons$HistoryKodasHistoryAggregateToJson(
            AnalyzePerson$QueryRoot$Persons$HistoryKodasHistoryAggregate
                instance) =>
        <String, dynamic>{
          'aggregate': instance.aggregate?.toJson(),
          'nodes': instance.nodes.map((e) => e.toJson()).toList(),
        };

AnalyzePerson$QueryRoot$Persons$HistoryConfessionHistoryAggregate$HistoryConfessionHistoryAggregateFields$HistoryConfessionHistoryMaxFields
    _$AnalyzePerson$QueryRoot$Persons$HistoryConfessionHistoryAggregate$HistoryConfessionHistoryAggregateFields$HistoryConfessionHistoryMaxFieldsFromJson(
            Map<String, dynamic> json) =>
        AnalyzePerson$QueryRoot$Persons$HistoryConfessionHistoryAggregate$HistoryConfessionHistoryAggregateFields$HistoryConfessionHistoryMaxFields()
          ..time = json['time'] == null
              ? null
              : DateTime.parse(json['time'] as String);

Map<String, dynamic>
    _$AnalyzePerson$QueryRoot$Persons$HistoryConfessionHistoryAggregate$HistoryConfessionHistoryAggregateFields$HistoryConfessionHistoryMaxFieldsToJson(
            AnalyzePerson$QueryRoot$Persons$HistoryConfessionHistoryAggregate$HistoryConfessionHistoryAggregateFields$HistoryConfessionHistoryMaxFields
                instance) =>
        <String, dynamic>{
          'time': instance.time?.toIso8601String(),
        };

AnalyzePerson$QueryRoot$Persons$HistoryConfessionHistoryAggregate$HistoryConfessionHistoryAggregateFields
    _$AnalyzePerson$QueryRoot$Persons$HistoryConfessionHistoryAggregate$HistoryConfessionHistoryAggregateFieldsFromJson(
            Map<String, dynamic> json) =>
        AnalyzePerson$QueryRoot$Persons$HistoryConfessionHistoryAggregate$HistoryConfessionHistoryAggregateFields()
          ..count = json['count'] as int
          ..max = json['max'] == null
              ? null
              : AnalyzePerson$QueryRoot$Persons$HistoryConfessionHistoryAggregate$HistoryConfessionHistoryAggregateFields$HistoryConfessionHistoryMaxFields
                  .fromJson(json['max'] as Map<String, dynamic>);

Map<String, dynamic>
    _$AnalyzePerson$QueryRoot$Persons$HistoryConfessionHistoryAggregate$HistoryConfessionHistoryAggregateFieldsToJson(
            AnalyzePerson$QueryRoot$Persons$HistoryConfessionHistoryAggregate$HistoryConfessionHistoryAggregateFields
                instance) =>
        <String, dynamic>{
          'count': instance.count,
          'max': instance.max?.toJson(),
        };

AnalyzePerson$QueryRoot$Persons$HistoryConfessionHistoryAggregate$HistoryConfessionHistory
    _$AnalyzePerson$QueryRoot$Persons$HistoryConfessionHistoryAggregate$HistoryConfessionHistoryFromJson(
            Map<String, dynamic> json) =>
        AnalyzePerson$QueryRoot$Persons$HistoryConfessionHistoryAggregate$HistoryConfessionHistory()
          ..time = json['time'] == null
              ? null
              : DateTime.parse(json['time'] as String);

Map<String, dynamic>
    _$AnalyzePerson$QueryRoot$Persons$HistoryConfessionHistoryAggregate$HistoryConfessionHistoryToJson(
            AnalyzePerson$QueryRoot$Persons$HistoryConfessionHistoryAggregate$HistoryConfessionHistory
                instance) =>
        <String, dynamic>{
          'time': instance.time?.toIso8601String(),
        };

AnalyzePerson$QueryRoot$Persons$HistoryConfessionHistoryAggregate
    _$AnalyzePerson$QueryRoot$Persons$HistoryConfessionHistoryAggregateFromJson(
            Map<String, dynamic> json) =>
        AnalyzePerson$QueryRoot$Persons$HistoryConfessionHistoryAggregate()
          ..aggregate = json['aggregate'] == null
              ? null
              : AnalyzePerson$QueryRoot$Persons$HistoryConfessionHistoryAggregate$HistoryConfessionHistoryAggregateFields
                  .fromJson(json['aggregate'] as Map<String, dynamic>)
          ..nodes = (json['nodes'] as List<dynamic>)
              .map((e) =>
                  AnalyzePerson$QueryRoot$Persons$HistoryConfessionHistoryAggregate$HistoryConfessionHistory
                      .fromJson(e as Map<String, dynamic>))
              .toList();

Map<String, dynamic>
    _$AnalyzePerson$QueryRoot$Persons$HistoryConfessionHistoryAggregateToJson(
            AnalyzePerson$QueryRoot$Persons$HistoryConfessionHistoryAggregate
                instance) =>
        <String, dynamic>{
          'aggregate': instance.aggregate?.toJson(),
          'nodes': instance.nodes.map((e) => e.toJson()).toList(),
        };

AnalyzePerson$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields
    _$AnalyzePerson$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFieldsFromJson(
            Map<String, dynamic> json) =>
        AnalyzePerson$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields()
          ..dayId = json['dayId'] == null
              ? null
              : DateTime.parse(json['dayId'] as String);

Map<String, dynamic>
    _$AnalyzePerson$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFieldsToJson(
            AnalyzePerson$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields
                instance) =>
        <String, dynamic>{
          'dayId': instance.dayId?.toIso8601String(),
        };

AnalyzePerson$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields
    _$AnalyzePerson$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFieldsFromJson(
            Map<String, dynamic> json) =>
        AnalyzePerson$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields()
          ..count = json['count'] as int
          ..max = json['max'] == null
              ? null
              : AnalyzePerson$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields
                  .fromJson(json['max'] as Map<String, dynamic>);

Map<String, dynamic>
    _$AnalyzePerson$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFieldsToJson(
            AnalyzePerson$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields
                instance) =>
        <String, dynamic>{
          'count': instance.count,
          'max': instance.max?.toJson(),
        };

AnalyzePerson$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistory
    _$AnalyzePerson$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryFromJson(
            Map<String, dynamic> json) =>
        AnalyzePerson$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistory()
          ..dayId = DateTime.parse(json['dayId'] as String);

Map<String, dynamic>
    _$AnalyzePerson$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryToJson(
            AnalyzePerson$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistory
                instance) =>
        <String, dynamic>{
          'dayId': instance.dayId.toIso8601String(),
        };

AnalyzePerson$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate
    _$AnalyzePerson$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregateFromJson(
            Map<String, dynamic> json) =>
        AnalyzePerson$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate()
          ..aggregate = json['aggregate'] == null
              ? null
              : AnalyzePerson$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields
                  .fromJson(json['aggregate'] as Map<String, dynamic>)
          ..nodes = (json['nodes'] as List<dynamic>)
              .map((e) =>
                  AnalyzePerson$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistory
                      .fromJson(e as Map<String, dynamic>))
              .toList();

Map<String, dynamic>
    _$AnalyzePerson$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregateToJson(
            AnalyzePerson$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate
                instance) =>
        <String, dynamic>{
          'aggregate': instance.aggregate?.toJson(),
          'nodes': instance.nodes.map((e) => e.toJson()).toList(),
        };

AnalyzePerson$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsAggregateFields
    _$AnalyzePerson$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsAggregateFieldsFromJson(
            Map<String, dynamic> json) =>
        AnalyzePerson$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsAggregateFields()
          ..count = json['count'] as int;

Map<String, dynamic>
    _$AnalyzePerson$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsAggregateFieldsToJson(
            AnalyzePerson$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsAggregateFields
                instance) =>
        <String, dynamic>{
          'count': instance.count,
        };

AnalyzePerson$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraints
    _$AnalyzePerson$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsFromJson(
            Map<String, dynamic> json) =>
        AnalyzePerson$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraints()
          ..dayId = DateTime.parse(json['dayId'] as String);

Map<String, dynamic>
    _$AnalyzePerson$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsToJson(
            AnalyzePerson$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraints
                instance) =>
        <String, dynamic>{
          'dayId': instance.dayId.toIso8601String(),
        };

AnalyzePerson$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceDaysConstraintsAggregate
    _$AnalyzePerson$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceDaysConstraintsAggregateFromJson(
            Map<String, dynamic> json) =>
        AnalyzePerson$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceDaysConstraintsAggregate()
          ..aggregate = json['aggregate'] == null
              ? null
              : AnalyzePerson$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsAggregateFields
                  .fromJson(json['aggregate'] as Map<String, dynamic>)
          ..nodes = (json['nodes'] as List<dynamic>)
              .map((e) =>
                  AnalyzePerson$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraints
                      .fromJson(e as Map<String, dynamic>))
              .toList();

Map<String, dynamic>
    _$AnalyzePerson$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceDaysConstraintsAggregateToJson(
            AnalyzePerson$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceDaysConstraintsAggregate
                instance) =>
        <String, dynamic>{
          'aggregate': instance.aggregate?.toJson(),
          'nodes': instance.nodes.map((e) => e.toJson()).toList(),
        };

AnalyzePerson$QueryRoot$Persons$PersonsServices$Services
    _$AnalyzePerson$QueryRoot$Persons$PersonsServices$ServicesFromJson(
            Map<String, dynamic> json) =>
        AnalyzePerson$QueryRoot$Persons$PersonsServices$Services()
          ..id = fromGraphQLUuidToDartUuidValue(json['id'])
          ..name = json['name'] as String
          ..color = json['color'] as int?
          ..attendanceHistoryAggregate =
              AnalyzePerson$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate
                  .fromJson(json['attendanceHistoryAggregate']
                      as Map<String, dynamic>)
          ..attendanceDaysConstraintsAggregate =
              AnalyzePerson$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceDaysConstraintsAggregate
                  .fromJson(json['attendanceDaysConstraintsAggregate']
                      as Map<String, dynamic>);

Map<String,
    dynamic> _$AnalyzePerson$QueryRoot$Persons$PersonsServices$ServicesToJson(
        AnalyzePerson$QueryRoot$Persons$PersonsServices$Services instance) =>
    <String, dynamic>{
      'id': fromDartUuidValueToGraphQLUuid(instance.id),
      'name': instance.name,
      'color': instance.color,
      'attendanceHistoryAggregate':
          instance.attendanceHistoryAggregate.toJson(),
      'attendanceDaysConstraintsAggregate':
          instance.attendanceDaysConstraintsAggregate.toJson(),
    };

AnalyzePerson$QueryRoot$Persons$PersonsServices
    _$AnalyzePerson$QueryRoot$Persons$PersonsServicesFromJson(
            Map<String, dynamic> json) =>
        AnalyzePerson$QueryRoot$Persons$PersonsServices()
          ..service =
              AnalyzePerson$QueryRoot$Persons$PersonsServices$Services.fromJson(
                  json['service'] as Map<String, dynamic>);

Map<String, dynamic> _$AnalyzePerson$QueryRoot$Persons$PersonsServicesToJson(
        AnalyzePerson$QueryRoot$Persons$PersonsServices instance) =>
    <String, dynamic>{
      'service': instance.service.toJson(),
    };

AnalyzePerson$QueryRoot$Persons$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields
    _$AnalyzePerson$QueryRoot$Persons$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFieldsFromJson(
            Map<String, dynamic> json) =>
        AnalyzePerson$QueryRoot$Persons$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields()
          ..dayId = json['dayId'] == null
              ? null
              : DateTime.parse(json['dayId'] as String);

Map<String, dynamic>
    _$AnalyzePerson$QueryRoot$Persons$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFieldsToJson(
            AnalyzePerson$QueryRoot$Persons$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields
                instance) =>
        <String, dynamic>{
          'dayId': instance.dayId?.toIso8601String(),
        };

AnalyzePerson$QueryRoot$Persons$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields
    _$AnalyzePerson$QueryRoot$Persons$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFieldsFromJson(
            Map<String, dynamic> json) =>
        AnalyzePerson$QueryRoot$Persons$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields()
          ..count = json['count'] as int
          ..max = json['max'] == null
              ? null
              : AnalyzePerson$QueryRoot$Persons$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields
                  .fromJson(json['max'] as Map<String, dynamic>);

Map<String, dynamic>
    _$AnalyzePerson$QueryRoot$Persons$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFieldsToJson(
            AnalyzePerson$QueryRoot$Persons$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields
                instance) =>
        <String, dynamic>{
          'count': instance.count,
          'max': instance.max?.toJson(),
        };

AnalyzePerson$QueryRoot$Persons$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistory
    _$AnalyzePerson$QueryRoot$Persons$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryFromJson(
            Map<String, dynamic> json) =>
        AnalyzePerson$QueryRoot$Persons$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistory()
          ..dayId = DateTime.parse(json['dayId'] as String);

Map<String, dynamic>
    _$AnalyzePerson$QueryRoot$Persons$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryToJson(
            AnalyzePerson$QueryRoot$Persons$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistory
                instance) =>
        <String, dynamic>{
          'dayId': instance.dayId.toIso8601String(),
        };

AnalyzePerson$QueryRoot$Persons$Classes$HistoryAttendanceHistoryAggregate
    _$AnalyzePerson$QueryRoot$Persons$Classes$HistoryAttendanceHistoryAggregateFromJson(
            Map<String, dynamic> json) =>
        AnalyzePerson$QueryRoot$Persons$Classes$HistoryAttendanceHistoryAggregate()
          ..aggregate = json['aggregate'] == null
              ? null
              : AnalyzePerson$QueryRoot$Persons$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields
                  .fromJson(json['aggregate'] as Map<String, dynamic>)
          ..nodes = (json['nodes'] as List<dynamic>)
              .map((e) =>
                  AnalyzePerson$QueryRoot$Persons$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistory
                      .fromJson(e as Map<String, dynamic>))
              .toList();

Map<String, dynamic>
    _$AnalyzePerson$QueryRoot$Persons$Classes$HistoryAttendanceHistoryAggregateToJson(
            AnalyzePerson$QueryRoot$Persons$Classes$HistoryAttendanceHistoryAggregate
                instance) =>
        <String, dynamic>{
          'aggregate': instance.aggregate?.toJson(),
          'nodes': instance.nodes.map((e) => e.toJson()).toList(),
        };

AnalyzePerson$QueryRoot$Persons$Classes$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsAggregateFields
    _$AnalyzePerson$QueryRoot$Persons$Classes$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsAggregateFieldsFromJson(
            Map<String, dynamic> json) =>
        AnalyzePerson$QueryRoot$Persons$Classes$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsAggregateFields()
          ..count = json['count'] as int;

Map<String, dynamic>
    _$AnalyzePerson$QueryRoot$Persons$Classes$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsAggregateFieldsToJson(
            AnalyzePerson$QueryRoot$Persons$Classes$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsAggregateFields
                instance) =>
        <String, dynamic>{
          'count': instance.count,
        };

AnalyzePerson$QueryRoot$Persons$Classes$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraints
    _$AnalyzePerson$QueryRoot$Persons$Classes$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsFromJson(
            Map<String, dynamic> json) =>
        AnalyzePerson$QueryRoot$Persons$Classes$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraints()
          ..dayId = DateTime.parse(json['dayId'] as String);

Map<String, dynamic>
    _$AnalyzePerson$QueryRoot$Persons$Classes$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsToJson(
            AnalyzePerson$QueryRoot$Persons$Classes$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraints
                instance) =>
        <String, dynamic>{
          'dayId': instance.dayId.toIso8601String(),
        };

AnalyzePerson$QueryRoot$Persons$Classes$HistoryAttendanceDaysConstraintsAggregate
    _$AnalyzePerson$QueryRoot$Persons$Classes$HistoryAttendanceDaysConstraintsAggregateFromJson(
            Map<String, dynamic> json) =>
        AnalyzePerson$QueryRoot$Persons$Classes$HistoryAttendanceDaysConstraintsAggregate()
          ..aggregate = json['aggregate'] == null
              ? null
              : AnalyzePerson$QueryRoot$Persons$Classes$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsAggregateFields
                  .fromJson(json['aggregate'] as Map<String, dynamic>)
          ..nodes = (json['nodes'] as List<dynamic>)
              .map((e) =>
                  AnalyzePerson$QueryRoot$Persons$Classes$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraints
                      .fromJson(e as Map<String, dynamic>))
              .toList();

Map<String, dynamic>
    _$AnalyzePerson$QueryRoot$Persons$Classes$HistoryAttendanceDaysConstraintsAggregateToJson(
            AnalyzePerson$QueryRoot$Persons$Classes$HistoryAttendanceDaysConstraintsAggregate
                instance) =>
        <String, dynamic>{
          'aggregate': instance.aggregate?.toJson(),
          'nodes': instance.nodes.map((e) => e.toJson()).toList(),
        };

AnalyzePerson$QueryRoot$Persons$Classes
    _$AnalyzePerson$QueryRoot$Persons$ClassesFromJson(
            Map<String, dynamic> json) =>
        AnalyzePerson$QueryRoot$Persons$Classes()
          ..id = fromGraphQLUuidToDartUuidValue(json['id'])
          ..name = json['name'] as String
          ..color = json['color'] as int?
          ..attendanceHistoryAggregate =
              AnalyzePerson$QueryRoot$Persons$Classes$HistoryAttendanceHistoryAggregate
                  .fromJson(json['attendanceHistoryAggregate']
                      as Map<String, dynamic>)
          ..attendanceDaysConstraintsAggregate =
              AnalyzePerson$QueryRoot$Persons$Classes$HistoryAttendanceDaysConstraintsAggregate
                  .fromJson(json['attendanceDaysConstraintsAggregate']
                      as Map<String, dynamic>);

Map<String, dynamic> _$AnalyzePerson$QueryRoot$Persons$ClassesToJson(
        AnalyzePerson$QueryRoot$Persons$Classes instance) =>
    <String, dynamic>{
      'id': fromDartUuidValueToGraphQLUuid(instance.id),
      'name': instance.name,
      'color': instance.color,
      'attendanceHistoryAggregate':
          instance.attendanceHistoryAggregate.toJson(),
      'attendanceDaysConstraintsAggregate':
          instance.attendanceDaysConstraintsAggregate.toJson(),
    };

AnalyzePerson$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields
    _$AnalyzePerson$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFieldsFromJson(
            Map<String, dynamic> json) =>
        AnalyzePerson$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields()
          ..dayId = json['dayId'] == null
              ? null
              : DateTime.parse(json['dayId'] as String);

Map<String, dynamic>
    _$AnalyzePerson$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFieldsToJson(
            AnalyzePerson$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields
                instance) =>
        <String, dynamic>{
          'dayId': instance.dayId?.toIso8601String(),
        };

AnalyzePerson$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields
    _$AnalyzePerson$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFieldsFromJson(
            Map<String, dynamic> json) =>
        AnalyzePerson$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields()
          ..count = json['count'] as int
          ..max = json['max'] == null
              ? null
              : AnalyzePerson$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields
                  .fromJson(json['max'] as Map<String, dynamic>);

Map<String, dynamic>
    _$AnalyzePerson$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFieldsToJson(
            AnalyzePerson$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields
                instance) =>
        <String, dynamic>{
          'count': instance.count,
          'max': instance.max?.toJson(),
        };

AnalyzePerson$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistory
    _$AnalyzePerson$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryFromJson(
            Map<String, dynamic> json) =>
        AnalyzePerson$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistory()
          ..dayId = DateTime.parse(json['dayId'] as String);

Map<String, dynamic>
    _$AnalyzePerson$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryToJson(
            AnalyzePerson$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistory
                instance) =>
        <String, dynamic>{
          'dayId': instance.dayId.toIso8601String(),
        };

AnalyzePerson$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate
    _$AnalyzePerson$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregateFromJson(
            Map<String, dynamic> json) =>
        AnalyzePerson$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate()
          ..aggregate = json['aggregate'] == null
              ? null
              : AnalyzePerson$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields
                  .fromJson(json['aggregate'] as Map<String, dynamic>)
          ..nodes = (json['nodes'] as List<dynamic>)
              .map((e) =>
                  AnalyzePerson$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistory
                      .fromJson(e as Map<String, dynamic>))
              .toList();

Map<String, dynamic>
    _$AnalyzePerson$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregateToJson(
            AnalyzePerson$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate
                instance) =>
        <String, dynamic>{
          'aggregate': instance.aggregate?.toJson(),
          'nodes': instance.nodes.map((e) => e.toJson()).toList(),
        };

AnalyzePerson$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsAggregateFields
    _$AnalyzePerson$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsAggregateFieldsFromJson(
            Map<String, dynamic> json) =>
        AnalyzePerson$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsAggregateFields()
          ..count = json['count'] as int;

Map<String, dynamic>
    _$AnalyzePerson$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsAggregateFieldsToJson(
            AnalyzePerson$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsAggregateFields
                instance) =>
        <String, dynamic>{
          'count': instance.count,
        };

AnalyzePerson$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraints
    _$AnalyzePerson$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsFromJson(
            Map<String, dynamic> json) =>
        AnalyzePerson$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraints()
          ..dayId = DateTime.parse(json['dayId'] as String);

Map<String, dynamic>
    _$AnalyzePerson$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsToJson(
            AnalyzePerson$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraints
                instance) =>
        <String, dynamic>{
          'dayId': instance.dayId.toIso8601String(),
        };

AnalyzePerson$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceDaysConstraintsAggregate
    _$AnalyzePerson$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceDaysConstraintsAggregateFromJson(
            Map<String, dynamic> json) =>
        AnalyzePerson$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceDaysConstraintsAggregate()
          ..aggregate = json['aggregate'] == null
              ? null
              : AnalyzePerson$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsAggregateFields
                  .fromJson(json['aggregate'] as Map<String, dynamic>)
          ..nodes = (json['nodes'] as List<dynamic>)
              .map((e) =>
                  AnalyzePerson$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraints
                      .fromJson(e as Map<String, dynamic>))
              .toList();

Map<String, dynamic>
    _$AnalyzePerson$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceDaysConstraintsAggregateToJson(
            AnalyzePerson$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceDaysConstraintsAggregate
                instance) =>
        <String, dynamic>{
          'aggregate': instance.aggregate?.toJson(),
          'nodes': instance.nodes.map((e) => e.toJson()).toList(),
        };

AnalyzePerson$QueryRoot$Persons$PersonsGroups$Groups
    _$AnalyzePerson$QueryRoot$Persons$PersonsGroups$GroupsFromJson(
            Map<String, dynamic> json) =>
        AnalyzePerson$QueryRoot$Persons$PersonsGroups$Groups()
          ..id = fromGraphQLUuidToDartUuidValue(json['id'])
          ..name = json['name'] as String
          ..color = json['color'] as int?
          ..attendanceHistoryAggregate =
              AnalyzePerson$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate
                  .fromJson(json['attendanceHistoryAggregate']
                      as Map<String, dynamic>)
          ..attendanceDaysConstraintsAggregate =
              AnalyzePerson$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceDaysConstraintsAggregate
                  .fromJson(json['attendanceDaysConstraintsAggregate']
                      as Map<String, dynamic>);

Map<String, dynamic>
    _$AnalyzePerson$QueryRoot$Persons$PersonsGroups$GroupsToJson(
            AnalyzePerson$QueryRoot$Persons$PersonsGroups$Groups instance) =>
        <String, dynamic>{
          'id': fromDartUuidValueToGraphQLUuid(instance.id),
          'name': instance.name,
          'color': instance.color,
          'attendanceHistoryAggregate':
              instance.attendanceHistoryAggregate.toJson(),
          'attendanceDaysConstraintsAggregate':
              instance.attendanceDaysConstraintsAggregate.toJson(),
        };

AnalyzePerson$QueryRoot$Persons$PersonsGroups
    _$AnalyzePerson$QueryRoot$Persons$PersonsGroupsFromJson(
            Map<String, dynamic> json) =>
        AnalyzePerson$QueryRoot$Persons$PersonsGroups()
          ..group =
              AnalyzePerson$QueryRoot$Persons$PersonsGroups$Groups.fromJson(
                  json['group'] as Map<String, dynamic>);

Map<String, dynamic> _$AnalyzePerson$QueryRoot$Persons$PersonsGroupsToJson(
        AnalyzePerson$QueryRoot$Persons$PersonsGroups instance) =>
    <String, dynamic>{
      'group': instance.group.toJson(),
    };

AnalyzePerson$QueryRoot$Persons _$AnalyzePerson$QueryRoot$PersonsFromJson(
        Map<String, dynamic> json) =>
    AnalyzePerson$QueryRoot$Persons()
      ..id = fromGraphQLUuidToDartUuidValue(json['id'])
      ..name = json['name'] as String
      ..callHistoryAggregate =
          AnalyzePerson$QueryRoot$Persons$HistoryCallHistoryAggregate.fromJson(
              json['callHistoryAggregate'] as Map<String, dynamic>)
      ..visitHistoryAggregate =
          AnalyzePerson$QueryRoot$Persons$HistoryVisitHistoryAggregate.fromJson(
              json['visitHistoryAggregate'] as Map<String, dynamic>)
      ..editHistoryAggregate =
          AnalyzePerson$QueryRoot$Persons$HistoryEditHistoryAggregate.fromJson(
              json['editHistoryAggregate'] as Map<String, dynamic>)
      ..kodasHistoryAggregate =
          AnalyzePerson$QueryRoot$Persons$HistoryKodasHistoryAggregate.fromJson(
              json['kodasHistoryAggregate'] as Map<String, dynamic>)
      ..confessionHistoryAggregate =
          AnalyzePerson$QueryRoot$Persons$HistoryConfessionHistoryAggregate
              .fromJson(
                  json['confessionHistoryAggregate'] as Map<String, dynamic>)
      ..services = (json['services'] as List<dynamic>)
          .map((e) => AnalyzePerson$QueryRoot$Persons$PersonsServices.fromJson(
              e as Map<String, dynamic>))
          .toList()
      ..classes = (json['classes'] as List<dynamic>?)
          ?.map((e) => AnalyzePerson$QueryRoot$Persons$Classes.fromJson(
              e as Map<String, dynamic>))
          .toList()
      ..groups = (json['groups'] as List<dynamic>)
          .map((e) => AnalyzePerson$QueryRoot$Persons$PersonsGroups.fromJson(
              e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$AnalyzePerson$QueryRoot$PersonsToJson(
        AnalyzePerson$QueryRoot$Persons instance) =>
    <String, dynamic>{
      'id': fromDartUuidValueToGraphQLUuid(instance.id),
      'name': instance.name,
      'callHistoryAggregate': instance.callHistoryAggregate.toJson(),
      'visitHistoryAggregate': instance.visitHistoryAggregate.toJson(),
      'editHistoryAggregate': instance.editHistoryAggregate.toJson(),
      'kodasHistoryAggregate': instance.kodasHistoryAggregate.toJson(),
      'confessionHistoryAggregate':
          instance.confessionHistoryAggregate.toJson(),
      'services': instance.services.map((e) => e.toJson()).toList(),
      'classes': instance.classes?.map((e) => e.toJson()).toList(),
      'groups': instance.groups.map((e) => e.toJson()).toList(),
    };

AnalyzePerson$QueryRoot _$AnalyzePerson$QueryRootFromJson(
        Map<String, dynamic> json) =>
    AnalyzePerson$QueryRoot()
      ..personsByPk = json['personsByPk'] == null
          ? null
          : AnalyzePerson$QueryRoot$Persons.fromJson(
              json['personsByPk'] as Map<String, dynamic>);

Map<String, dynamic> _$AnalyzePerson$QueryRootToJson(
        AnalyzePerson$QueryRoot instance) =>
    <String, dynamic>{
      'personsByPk': instance.personsByPk?.toJson(),
    };

GetPersonClassesAndGroups$QueryRoot$Persons$Classes$Services
    _$GetPersonClassesAndGroups$QueryRoot$Persons$Classes$ServicesFromJson(
            Map<String, dynamic> json) =>
        GetPersonClassesAndGroups$QueryRoot$Persons$Classes$Services()
          ..id = fromGraphQLUuidToDartUuidValue(json['id'])
          ..name = json['name'] as String
          ..color = json['color'] as int?
          ..photoUpdatedAt = json['photoUpdatedAt'] == null
              ? null
              : DateTime.parse(json['photoUpdatedAt'] as String);

Map<String, dynamic>
    _$GetPersonClassesAndGroups$QueryRoot$Persons$Classes$ServicesToJson(
            GetPersonClassesAndGroups$QueryRoot$Persons$Classes$Services
                instance) =>
        <String, dynamic>{
          'id': fromDartUuidValueToGraphQLUuid(instance.id),
          'name': instance.name,
          'color': instance.color,
          'photoUpdatedAt': instance.photoUpdatedAt?.toIso8601String(),
        };

GetPersonClassesAndGroups$QueryRoot$Persons$Classes
    _$GetPersonClassesAndGroups$QueryRoot$Persons$ClassesFromJson(
            Map<String, dynamic> json) =>
        GetPersonClassesAndGroups$QueryRoot$Persons$Classes()
          ..id = fromGraphQLUuidToDartUuidValue(json['id'])
          ..name = json['name'] as String
          ..color = json['color'] as int?
          ..photoUpdatedAt = json['photoUpdatedAt'] == null
              ? null
              : DateTime.parse(json['photoUpdatedAt'] as String)
          ..service =
              GetPersonClassesAndGroups$QueryRoot$Persons$Classes$Services
                  .fromJson(json['service'] as Map<String, dynamic>);

Map<String, dynamic>
    _$GetPersonClassesAndGroups$QueryRoot$Persons$ClassesToJson(
            GetPersonClassesAndGroups$QueryRoot$Persons$Classes instance) =>
        <String, dynamic>{
          'id': fromDartUuidValueToGraphQLUuid(instance.id),
          'name': instance.name,
          'color': instance.color,
          'photoUpdatedAt': instance.photoUpdatedAt?.toIso8601String(),
          'service': instance.service.toJson(),
        };

GetPersonClassesAndGroups$QueryRoot$Persons$PersonsGroups$Groups$Services
    _$GetPersonClassesAndGroups$QueryRoot$Persons$PersonsGroups$Groups$ServicesFromJson(
            Map<String, dynamic> json) =>
        GetPersonClassesAndGroups$QueryRoot$Persons$PersonsGroups$Groups$Services()
          ..id = fromGraphQLUuidToDartUuidValue(json['id'])
          ..name = json['name'] as String
          ..color = json['color'] as int?
          ..photoUpdatedAt = json['photoUpdatedAt'] == null
              ? null
              : DateTime.parse(json['photoUpdatedAt'] as String);

Map<String, dynamic>
    _$GetPersonClassesAndGroups$QueryRoot$Persons$PersonsGroups$Groups$ServicesToJson(
            GetPersonClassesAndGroups$QueryRoot$Persons$PersonsGroups$Groups$Services
                instance) =>
        <String, dynamic>{
          'id': fromDartUuidValueToGraphQLUuid(instance.id),
          'name': instance.name,
          'color': instance.color,
          'photoUpdatedAt': instance.photoUpdatedAt?.toIso8601String(),
        };

GetPersonClassesAndGroups$QueryRoot$Persons$PersonsGroups$Groups
    _$GetPersonClassesAndGroups$QueryRoot$Persons$PersonsGroups$GroupsFromJson(
            Map<String, dynamic> json) =>
        GetPersonClassesAndGroups$QueryRoot$Persons$PersonsGroups$Groups()
          ..id = fromGraphQLUuidToDartUuidValue(json['id'])
          ..name = json['name'] as String
          ..color = json['color'] as int?
          ..photoUpdatedAt = json['photoUpdatedAt'] == null
              ? null
              : DateTime.parse(json['photoUpdatedAt'] as String)
          ..service =
              GetPersonClassesAndGroups$QueryRoot$Persons$PersonsGroups$Groups$Services
                  .fromJson(json['service'] as Map<String, dynamic>);

Map<String, dynamic>
    _$GetPersonClassesAndGroups$QueryRoot$Persons$PersonsGroups$GroupsToJson(
            GetPersonClassesAndGroups$QueryRoot$Persons$PersonsGroups$Groups
                instance) =>
        <String, dynamic>{
          'id': fromDartUuidValueToGraphQLUuid(instance.id),
          'name': instance.name,
          'color': instance.color,
          'photoUpdatedAt': instance.photoUpdatedAt?.toIso8601String(),
          'service': instance.service.toJson(),
        };

GetPersonClassesAndGroups$QueryRoot$Persons$PersonsGroups
    _$GetPersonClassesAndGroups$QueryRoot$Persons$PersonsGroupsFromJson(
            Map<String, dynamic> json) =>
        GetPersonClassesAndGroups$QueryRoot$Persons$PersonsGroups()
          ..group =
              GetPersonClassesAndGroups$QueryRoot$Persons$PersonsGroups$Groups
                  .fromJson(json['group'] as Map<String, dynamic>);

Map<String,
    dynamic> _$GetPersonClassesAndGroups$QueryRoot$Persons$PersonsGroupsToJson(
        GetPersonClassesAndGroups$QueryRoot$Persons$PersonsGroups instance) =>
    <String, dynamic>{
      'group': instance.group.toJson(),
    };

GetPersonClassesAndGroups$QueryRoot$Persons
    _$GetPersonClassesAndGroups$QueryRoot$PersonsFromJson(
            Map<String, dynamic> json) =>
        GetPersonClassesAndGroups$QueryRoot$Persons()
          ..id = fromGraphQLUuidToDartUuidValue(json['id'])
          ..name = json['name'] as String
          ..classes = (json['classes'] as List<dynamic>?)
              ?.map((e) =>
                  GetPersonClassesAndGroups$QueryRoot$Persons$Classes.fromJson(
                      e as Map<String, dynamic>))
              .toList()
          ..groups = (json['groups'] as List<dynamic>)
              .map((e) =>
                  GetPersonClassesAndGroups$QueryRoot$Persons$PersonsGroups
                      .fromJson(e as Map<String, dynamic>))
              .toList();

Map<String, dynamic> _$GetPersonClassesAndGroups$QueryRoot$PersonsToJson(
        GetPersonClassesAndGroups$QueryRoot$Persons instance) =>
    <String, dynamic>{
      'id': fromDartUuidValueToGraphQLUuid(instance.id),
      'name': instance.name,
      'classes': instance.classes?.map((e) => e.toJson()).toList(),
      'groups': instance.groups.map((e) => e.toJson()).toList(),
    };

GetPersonClassesAndGroups$QueryRoot
    _$GetPersonClassesAndGroups$QueryRootFromJson(Map<String, dynamic> json) =>
        GetPersonClassesAndGroups$QueryRoot()
          ..personsByPk = json['personsByPk'] == null
              ? null
              : GetPersonClassesAndGroups$QueryRoot$Persons.fromJson(
                  json['personsByPk'] as Map<String, dynamic>);

Map<String, dynamic> _$GetPersonClassesAndGroups$QueryRootToJson(
        GetPersonClassesAndGroups$QueryRoot instance) =>
    <String, dynamic>{
      'personsByPk': instance.personsByPk?.toJson(),
    };

GetFullPersonData$QueryRoot$Persons$Churches
    _$GetFullPersonData$QueryRoot$Persons$ChurchesFromJson(
            Map<String, dynamic> json) =>
        GetFullPersonData$QueryRoot$Persons$Churches()
          ..id = fromGraphQLUuidToDartUuidValue(json['id'])
          ..name = json['name'] as String;

Map<String, dynamic> _$GetFullPersonData$QueryRoot$Persons$ChurchesToJson(
        GetFullPersonData$QueryRoot$Persons$Churches instance) =>
    <String, dynamic>{
      'id': fromDartUuidValueToGraphQLUuid(instance.id),
      'name': instance.name,
    };

GetFullPersonData$QueryRoot$Persons$Colleges
    _$GetFullPersonData$QueryRoot$Persons$CollegesFromJson(
            Map<String, dynamic> json) =>
        GetFullPersonData$QueryRoot$Persons$Colleges()
          ..id = fromGraphQLUuidToDartUuidValue(json['id'])
          ..name = json['name'] as String;

Map<String, dynamic> _$GetFullPersonData$QueryRoot$Persons$CollegesToJson(
        GetFullPersonData$QueryRoot$Persons$Colleges instance) =>
    <String, dynamic>{
      'id': fromDartUuidValueToGraphQLUuid(instance.id),
      'name': instance.name,
    };

GetFullPersonData$QueryRoot$Persons$Families
    _$GetFullPersonData$QueryRoot$Persons$FamiliesFromJson(
            Map<String, dynamic> json) =>
        GetFullPersonData$QueryRoot$Persons$Families()
          ..id = fromGraphQLUuidToDartUuidValue(json['id'])
          ..name = json['name'] as String
          ..color = json['color'] as int?
          ..photoUpdatedAt = json['photoUpdatedAt'] == null
              ? null
              : DateTime.parse(json['photoUpdatedAt'] as String);

Map<String, dynamic> _$GetFullPersonData$QueryRoot$Persons$FamiliesToJson(
        GetFullPersonData$QueryRoot$Persons$Families instance) =>
    <String, dynamic>{
      'id': fromDartUuidValueToGraphQLUuid(instance.id),
      'name': instance.name,
      'color': instance.color,
      'photoUpdatedAt': instance.photoUpdatedAt?.toIso8601String(),
    };

GetFullPersonData$QueryRoot$Persons$Fathers$Churches
    _$GetFullPersonData$QueryRoot$Persons$Fathers$ChurchesFromJson(
            Map<String, dynamic> json) =>
        GetFullPersonData$QueryRoot$Persons$Fathers$Churches()
          ..id = fromGraphQLUuidToDartUuidValue(json['id'])
          ..name = json['name'] as String;

Map<String, dynamic>
    _$GetFullPersonData$QueryRoot$Persons$Fathers$ChurchesToJson(
            GetFullPersonData$QueryRoot$Persons$Fathers$Churches instance) =>
        <String, dynamic>{
          'id': fromDartUuidValueToGraphQLUuid(instance.id),
          'name': instance.name,
        };

GetFullPersonData$QueryRoot$Persons$Fathers
    _$GetFullPersonData$QueryRoot$Persons$FathersFromJson(
            Map<String, dynamic> json) =>
        GetFullPersonData$QueryRoot$Persons$Fathers()
          ..id = fromGraphQLUuidToDartUuidValue(json['id'])
          ..name = json['name'] as String
          ..church = json['church'] == null
              ? null
              : GetFullPersonData$QueryRoot$Persons$Fathers$Churches.fromJson(
                  json['church'] as Map<String, dynamic>);

Map<String, dynamic> _$GetFullPersonData$QueryRoot$Persons$FathersToJson(
        GetFullPersonData$QueryRoot$Persons$Fathers instance) =>
    <String, dynamic>{
      'id': fromDartUuidValueToGraphQLUuid(instance.id),
      'name': instance.name,
      'church': instance.church?.toJson(),
    };

GetFullPersonData$QueryRoot$Persons$PersonsGroups$Groups$Services
    _$GetFullPersonData$QueryRoot$Persons$PersonsGroups$Groups$ServicesFromJson(
            Map<String, dynamic> json) =>
        GetFullPersonData$QueryRoot$Persons$PersonsGroups$Groups$Services()
          ..id = fromGraphQLUuidToDartUuidValue(json['id'])
          ..name = json['name'] as String
          ..color = json['color'] as int?
          ..photoUpdatedAt = json['photoUpdatedAt'] == null
              ? null
              : DateTime.parse(json['photoUpdatedAt'] as String);

Map<String, dynamic>
    _$GetFullPersonData$QueryRoot$Persons$PersonsGroups$Groups$ServicesToJson(
            GetFullPersonData$QueryRoot$Persons$PersonsGroups$Groups$Services
                instance) =>
        <String, dynamic>{
          'id': fromDartUuidValueToGraphQLUuid(instance.id),
          'name': instance.name,
          'color': instance.color,
          'photoUpdatedAt': instance.photoUpdatedAt?.toIso8601String(),
        };

GetFullPersonData$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields
    _$GetFullPersonData$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFieldsFromJson(
            Map<String, dynamic> json) =>
        GetFullPersonData$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields()
          ..time = json['time'] == null
              ? null
              : DateTime.parse(json['time'] as String);

Map<String, dynamic>
    _$GetFullPersonData$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFieldsToJson(
            GetFullPersonData$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields
                instance) =>
        <String, dynamic>{
          'time': instance.time?.toIso8601String(),
        };

GetFullPersonData$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields
    _$GetFullPersonData$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFieldsFromJson(
            Map<String, dynamic> json) =>
        GetFullPersonData$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields()
          ..max = json['max'] == null
              ? null
              : GetFullPersonData$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields
                  .fromJson(json['max'] as Map<String, dynamic>);

Map<String, dynamic>
    _$GetFullPersonData$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFieldsToJson(
            GetFullPersonData$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields
                instance) =>
        <String, dynamic>{
          'max': instance.max?.toJson(),
        };

GetFullPersonData$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate
    _$GetFullPersonData$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregateFromJson(
            Map<String, dynamic> json) =>
        GetFullPersonData$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate()
          ..aggregate = json['aggregate'] == null
              ? null
              : GetFullPersonData$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields
                  .fromJson(json['aggregate'] as Map<String, dynamic>);

Map<String, dynamic>
    _$GetFullPersonData$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregateToJson(
            GetFullPersonData$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate
                instance) =>
        <String, dynamic>{
          'aggregate': instance.aggregate?.toJson(),
        };

GetFullPersonData$QueryRoot$Persons$PersonsGroups$Groups
    _$GetFullPersonData$QueryRoot$Persons$PersonsGroups$GroupsFromJson(
            Map<String, dynamic> json) =>
        GetFullPersonData$QueryRoot$Persons$PersonsGroups$Groups()
          ..id = fromGraphQLUuidToDartUuidValue(json['id'])
          ..name = json['name'] as String
          ..color = json['color'] as int?
          ..photoUpdatedAt = json['photoUpdatedAt'] == null
              ? null
              : DateTime.parse(json['photoUpdatedAt'] as String)
          ..service =
              GetFullPersonData$QueryRoot$Persons$PersonsGroups$Groups$Services
                  .fromJson(json['service'] as Map<String, dynamic>)
          ..attendanceHistoryAggregate =
              GetFullPersonData$QueryRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate
                  .fromJson(json['attendanceHistoryAggregate']
                      as Map<String, dynamic>);

Map<String,
    dynamic> _$GetFullPersonData$QueryRoot$Persons$PersonsGroups$GroupsToJson(
        GetFullPersonData$QueryRoot$Persons$PersonsGroups$Groups instance) =>
    <String, dynamic>{
      'id': fromDartUuidValueToGraphQLUuid(instance.id),
      'name': instance.name,
      'color': instance.color,
      'photoUpdatedAt': instance.photoUpdatedAt?.toIso8601String(),
      'service': instance.service.toJson(),
      'attendanceHistoryAggregate':
          instance.attendanceHistoryAggregate.toJson(),
    };

GetFullPersonData$QueryRoot$Persons$PersonsGroups
    _$GetFullPersonData$QueryRoot$Persons$PersonsGroupsFromJson(
            Map<String, dynamic> json) =>
        GetFullPersonData$QueryRoot$Persons$PersonsGroups()
          ..group =
              GetFullPersonData$QueryRoot$Persons$PersonsGroups$Groups.fromJson(
                  json['group'] as Map<String, dynamic>);

Map<String, dynamic> _$GetFullPersonData$QueryRoot$Persons$PersonsGroupsToJson(
        GetFullPersonData$QueryRoot$Persons$PersonsGroups instance) =>
    <String, dynamic>{
      'group': instance.group.toJson(),
    };

GetFullPersonData$QueryRoot$Persons$Jobs
    _$GetFullPersonData$QueryRoot$Persons$JobsFromJson(
            Map<String, dynamic> json) =>
        GetFullPersonData$QueryRoot$Persons$Jobs()
          ..id = fromGraphQLUuidToDartUuidValue(json['id'])
          ..name = json['name'] as String;

Map<String, dynamic> _$GetFullPersonData$QueryRoot$Persons$JobsToJson(
        GetFullPersonData$QueryRoot$Persons$Jobs instance) =>
    <String, dynamic>{
      'id': fromDartUuidValueToGraphQLUuid(instance.id),
      'name': instance.name,
    };

GetFullPersonData$QueryRoot$Persons$PersonTypes
    _$GetFullPersonData$QueryRoot$Persons$PersonTypesFromJson(
            Map<String, dynamic> json) =>
        GetFullPersonData$QueryRoot$Persons$PersonTypes()
          ..id = fromGraphQLUuidToDartUuidValue(json['id'])
          ..name = json['name'] as String;

Map<String, dynamic> _$GetFullPersonData$QueryRoot$Persons$PersonTypesToJson(
        GetFullPersonData$QueryRoot$Persons$PersonTypes instance) =>
    <String, dynamic>{
      'id': fromDartUuidValueToGraphQLUuid(instance.id),
      'name': instance.name,
    };

GetFullPersonData$QueryRoot$Persons$Qualifications
    _$GetFullPersonData$QueryRoot$Persons$QualificationsFromJson(
            Map<String, dynamic> json) =>
        GetFullPersonData$QueryRoot$Persons$Qualifications()
          ..id = fromGraphQLUuidToDartUuidValue(json['id'])
          ..name = json['name'] as String;

Map<String, dynamic> _$GetFullPersonData$QueryRoot$Persons$QualificationsToJson(
        GetFullPersonData$QueryRoot$Persons$Qualifications instance) =>
    <String, dynamic>{
      'id': fromDartUuidValueToGraphQLUuid(instance.id),
      'name': instance.name,
    };

GetFullPersonData$QueryRoot$Persons$Schools
    _$GetFullPersonData$QueryRoot$Persons$SchoolsFromJson(
            Map<String, dynamic> json) =>
        GetFullPersonData$QueryRoot$Persons$Schools()
          ..id = fromGraphQLUuidToDartUuidValue(json['id'])
          ..name = json['name'] as String;

Map<String, dynamic> _$GetFullPersonData$QueryRoot$Persons$SchoolsToJson(
        GetFullPersonData$QueryRoot$Persons$Schools instance) =>
    <String, dynamic>{
      'id': fromDartUuidValueToGraphQLUuid(instance.id),
      'name': instance.name,
    };

GetFullPersonData$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields
    _$GetFullPersonData$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFieldsFromJson(
            Map<String, dynamic> json) =>
        GetFullPersonData$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields()
          ..time = json['time'] == null
              ? null
              : DateTime.parse(json['time'] as String);

Map<String, dynamic>
    _$GetFullPersonData$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFieldsToJson(
            GetFullPersonData$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields
                instance) =>
        <String, dynamic>{
          'time': instance.time?.toIso8601String(),
        };

GetFullPersonData$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields
    _$GetFullPersonData$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFieldsFromJson(
            Map<String, dynamic> json) =>
        GetFullPersonData$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields()
          ..max = json['max'] == null
              ? null
              : GetFullPersonData$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields
                  .fromJson(json['max'] as Map<String, dynamic>);

Map<String, dynamic>
    _$GetFullPersonData$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFieldsToJson(
            GetFullPersonData$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields
                instance) =>
        <String, dynamic>{
          'max': instance.max?.toJson(),
        };

GetFullPersonData$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate
    _$GetFullPersonData$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregateFromJson(
            Map<String, dynamic> json) =>
        GetFullPersonData$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate()
          ..aggregate = json['aggregate'] == null
              ? null
              : GetFullPersonData$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields
                  .fromJson(json['aggregate'] as Map<String, dynamic>);

Map<String, dynamic>
    _$GetFullPersonData$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregateToJson(
            GetFullPersonData$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate
                instance) =>
        <String, dynamic>{
          'aggregate': instance.aggregate?.toJson(),
        };

GetFullPersonData$QueryRoot$Persons$PersonsServices$Services
    _$GetFullPersonData$QueryRoot$Persons$PersonsServices$ServicesFromJson(
            Map<String, dynamic> json) =>
        GetFullPersonData$QueryRoot$Persons$PersonsServices$Services()
          ..id = fromGraphQLUuidToDartUuidValue(json['id'])
          ..name = json['name'] as String
          ..color = json['color'] as int?
          ..photoUpdatedAt = json['photoUpdatedAt'] == null
              ? null
              : DateTime.parse(json['photoUpdatedAt'] as String)
          ..attendanceHistoryAggregate =
              GetFullPersonData$QueryRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate
                  .fromJson(json['attendanceHistoryAggregate']
                      as Map<String, dynamic>);

Map<String, dynamic>
    _$GetFullPersonData$QueryRoot$Persons$PersonsServices$ServicesToJson(
            GetFullPersonData$QueryRoot$Persons$PersonsServices$Services
                instance) =>
        <String, dynamic>{
          'id': fromDartUuidValueToGraphQLUuid(instance.id),
          'name': instance.name,
          'color': instance.color,
          'photoUpdatedAt': instance.photoUpdatedAt?.toIso8601String(),
          'attendanceHistoryAggregate':
              instance.attendanceHistoryAggregate.toJson(),
        };

GetFullPersonData$QueryRoot$Persons$PersonsServices
    _$GetFullPersonData$QueryRoot$Persons$PersonsServicesFromJson(
            Map<String, dynamic> json) =>
        GetFullPersonData$QueryRoot$Persons$PersonsServices()
          ..service =
              GetFullPersonData$QueryRoot$Persons$PersonsServices$Services
                  .fromJson(json['service'] as Map<String, dynamic>);

Map<String, dynamic>
    _$GetFullPersonData$QueryRoot$Persons$PersonsServicesToJson(
            GetFullPersonData$QueryRoot$Persons$PersonsServices instance) =>
        <String, dynamic>{
          'service': instance.service.toJson(),
        };

GetFullPersonData$QueryRoot$Persons$ShammasLevels
    _$GetFullPersonData$QueryRoot$Persons$ShammasLevelsFromJson(
            Map<String, dynamic> json) =>
        GetFullPersonData$QueryRoot$Persons$ShammasLevels()
          ..id = fromGraphQLUuidToDartUuidValue(json['id'])
          ..name = json['name'] as String
          ..order = json['order'] as int;

Map<String, dynamic> _$GetFullPersonData$QueryRoot$Persons$ShammasLevelsToJson(
        GetFullPersonData$QueryRoot$Persons$ShammasLevels instance) =>
    <String, dynamic>{
      'id': fromDartUuidValueToGraphQLUuid(instance.id),
      'name': instance.name,
      'order': instance.order,
    };

GetFullPersonData$QueryRoot$Persons$PersonStates
    _$GetFullPersonData$QueryRoot$Persons$PersonStatesFromJson(
            Map<String, dynamic> json) =>
        GetFullPersonData$QueryRoot$Persons$PersonStates()
          ..id = fromGraphQLUuidToDartUuidValue(json['id'])
          ..color = json['color'] as int
          ..name = json['name'] as String;

Map<String, dynamic> _$GetFullPersonData$QueryRoot$Persons$PersonStatesToJson(
        GetFullPersonData$QueryRoot$Persons$PersonStates instance) =>
    <String, dynamic>{
      'id': fromDartUuidValueToGraphQLUuid(instance.id),
      'color': instance.color,
      'name': instance.name,
    };

GetFullPersonData$QueryRoot$Persons$StudyYears
    _$GetFullPersonData$QueryRoot$Persons$StudyYearsFromJson(
            Map<String, dynamic> json) =>
        GetFullPersonData$QueryRoot$Persons$StudyYears()
          ..name = json['name'] as String
          ..order = json['order'] as int;

Map<String, dynamic> _$GetFullPersonData$QueryRoot$Persons$StudyYearsToJson(
        GetFullPersonData$QueryRoot$Persons$StudyYears instance) =>
    <String, dynamic>{
      'name': instance.name,
      'order': instance.order,
    };

GetFullPersonData$QueryRoot$Persons$PersonsTags$Tags
    _$GetFullPersonData$QueryRoot$Persons$PersonsTags$TagsFromJson(
            Map<String, dynamic> json) =>
        GetFullPersonData$QueryRoot$Persons$PersonsTags$Tags()
          ..id = fromGraphQLUuidToDartUuidValue(json['id'])
          ..name = json['name'] as String
          ..color = json['color'] as int?;

Map<String, dynamic>
    _$GetFullPersonData$QueryRoot$Persons$PersonsTags$TagsToJson(
            GetFullPersonData$QueryRoot$Persons$PersonsTags$Tags instance) =>
        <String, dynamic>{
          'id': fromDartUuidValueToGraphQLUuid(instance.id),
          'name': instance.name,
          'color': instance.color,
        };

GetFullPersonData$QueryRoot$Persons$PersonsTags
    _$GetFullPersonData$QueryRoot$Persons$PersonsTagsFromJson(
            Map<String, dynamic> json) =>
        GetFullPersonData$QueryRoot$Persons$PersonsTags()
          ..tag = GetFullPersonData$QueryRoot$Persons$PersonsTags$Tags.fromJson(
              json['tag'] as Map<String, dynamic>);

Map<String, dynamic> _$GetFullPersonData$QueryRoot$Persons$PersonsTagsToJson(
        GetFullPersonData$QueryRoot$Persons$PersonsTags instance) =>
    <String, dynamic>{
      'tag': instance.tag.toJson(),
    };

GetFullPersonData$QueryRoot$Persons
    _$GetFullPersonData$QueryRoot$PersonsFromJson(Map<String, dynamic> json) =>
        GetFullPersonData$QueryRoot$Persons()
          ..id = fromGraphQLUuidToDartUuidValue(json['id'])
          ..name = json['name'] as String
          ..color = json['color'] as int?
          ..photoUpdatedAt = json['photoUpdatedAt'] == null
              ? null
              : DateTime.parse(json['photoUpdatedAt'] as String)
          ..address = json['address'] as String?
          ..birthdate = json['birthdate'] == null
              ? null
              : DateTime.parse(json['birthdate'] as String)
          ..church = json['church'] == null
              ? null
              : GetFullPersonData$QueryRoot$Persons$Churches.fromJson(
                  json['church'] as Map<String, dynamic>)
          ..college = json['college'] == null
              ? null
              : GetFullPersonData$QueryRoot$Persons$Colleges.fromJson(
                  json['college'] as Map<String, dynamic>)
          ..family = json['family'] == null
              ? null
              : GetFullPersonData$QueryRoot$Persons$Families.fromJson(
                  json['family'] as Map<String, dynamic>)
          ..father = json['father'] == null
              ? null
              : GetFullPersonData$QueryRoot$Persons$Fathers.fromJson(
                  json['father'] as Map<String, dynamic>)
          ..gender = json['gender'] as bool
          ..geolocation = fromGraphQLGeographyNullableToDartJsonNullable(
              json['geolocation'])
          ..groups = (json['groups'] as List<dynamic>)
              .map((e) =>
                  GetFullPersonData$QueryRoot$Persons$PersonsGroups.fromJson(
                      e as Map<String, dynamic>))
              .toList()
          ..isServant = json['isServant'] as bool
          ..isShammas = json['isShammas'] as bool
          ..isStudent = json['isStudent'] as bool?
          ..job = json['job'] == null
              ? null
              : GetFullPersonData$QueryRoot$Persons$Jobs.fromJson(
                  json['job'] as Map<String, dynamic>)
          ..jobDescription = json['jobDescription'] as String?
          ..mainPhone = json['mainPhone'] as String?
          ..notes = json['notes'] as String?
          ..otherPhones = fromGraphQLJsonbToDartJson(json['otherPhones'])
          ..personType = json['personType'] == null
              ? null
              : GetFullPersonData$QueryRoot$Persons$PersonTypes.fromJson(
                  json['personType'] as Map<String, dynamic>)
          ..qualification = json['qualification'] == null
              ? null
              : GetFullPersonData$QueryRoot$Persons$Qualifications.fromJson(
                  json['qualification'] as Map<String, dynamic>)
          ..school = json['school'] == null
              ? null
              : GetFullPersonData$QueryRoot$Persons$Schools.fromJson(
                  json['school'] as Map<String, dynamic>)
          ..services = (json['services'] as List<dynamic>)
              .map((e) =>
                  GetFullPersonData$QueryRoot$Persons$PersonsServices.fromJson(
                      e as Map<String, dynamic>))
              .toList()
          ..shammasLevel = json['shammasLevel'] == null
              ? null
              : GetFullPersonData$QueryRoot$Persons$ShammasLevels.fromJson(
                  json['shammasLevel'] as Map<String, dynamic>)
          ..state = json['state'] == null
              ? null
              : GetFullPersonData$QueryRoot$Persons$PersonStates.fromJson(
                  json['state'] as Map<String, dynamic>)
          ..studyYear = json['studyYear'] == null
              ? null
              : GetFullPersonData$QueryRoot$Persons$StudyYears.fromJson(
                  json['studyYear'] as Map<String, dynamic>)
          ..tags = (json['tags'] as List<dynamic>)
              .map((e) =>
                  GetFullPersonData$QueryRoot$Persons$PersonsTags.fromJson(
                      e as Map<String, dynamic>))
              .toList();

Map<String, dynamic> _$GetFullPersonData$QueryRoot$PersonsToJson(
        GetFullPersonData$QueryRoot$Persons instance) =>
    <String, dynamic>{
      'id': fromDartUuidValueToGraphQLUuid(instance.id),
      'name': instance.name,
      'color': instance.color,
      'photoUpdatedAt': instance.photoUpdatedAt?.toIso8601String(),
      'address': instance.address,
      'birthdate': instance.birthdate?.toIso8601String(),
      'church': instance.church?.toJson(),
      'college': instance.college?.toJson(),
      'family': instance.family?.toJson(),
      'father': instance.father?.toJson(),
      'gender': instance.gender,
      'geolocation':
          fromDartJsonNullableToGraphQLGeographyNullable(instance.geolocation),
      'groups': instance.groups.map((e) => e.toJson()).toList(),
      'isServant': instance.isServant,
      'isShammas': instance.isShammas,
      'isStudent': instance.isStudent,
      'job': instance.job?.toJson(),
      'jobDescription': instance.jobDescription,
      'mainPhone': instance.mainPhone,
      'notes': instance.notes,
      'otherPhones': fromDartJsonToGraphQLJsonb(instance.otherPhones),
      'personType': instance.personType?.toJson(),
      'qualification': instance.qualification?.toJson(),
      'school': instance.school?.toJson(),
      'services': instance.services.map((e) => e.toJson()).toList(),
      'shammasLevel': instance.shammasLevel?.toJson(),
      'state': instance.state?.toJson(),
      'studyYear': instance.studyYear?.toJson(),
      'tags': instance.tags.map((e) => e.toJson()).toList(),
    };

GetFullPersonData$QueryRoot _$GetFullPersonData$QueryRootFromJson(
        Map<String, dynamic> json) =>
    GetFullPersonData$QueryRoot()
      ..personsByPk = json['personsByPk'] == null
          ? null
          : GetFullPersonData$QueryRoot$Persons.fromJson(
              json['personsByPk'] as Map<String, dynamic>);

Map<String, dynamic> _$GetFullPersonData$QueryRootToJson(
        GetFullPersonData$QueryRoot instance) =>
    <String, dynamic>{
      'personsByPk': instance.personsByPk?.toJson(),
    };

GetPersonsStream$SubscriptionRoot$Persons
    _$GetPersonsStream$SubscriptionRoot$PersonsFromJson(
            Map<String, dynamic> json) =>
        GetPersonsStream$SubscriptionRoot$Persons()
          ..id = fromGraphQLUuidToDartUuidValue(json['id'])
          ..name = json['name'] as String
          ..color = json['color'] as int?
          ..photoUpdatedAt = json['photoUpdatedAt'] == null
              ? null
              : DateTime.parse(json['photoUpdatedAt'] as String);

Map<String, dynamic> _$GetPersonsStream$SubscriptionRoot$PersonsToJson(
        GetPersonsStream$SubscriptionRoot$Persons instance) =>
    <String, dynamic>{
      'id': fromDartUuidValueToGraphQLUuid(instance.id),
      'name': instance.name,
      'color': instance.color,
      'photoUpdatedAt': instance.photoUpdatedAt?.toIso8601String(),
    };

GetPersonsStream$SubscriptionRoot _$GetPersonsStream$SubscriptionRootFromJson(
        Map<String, dynamic> json) =>
    GetPersonsStream$SubscriptionRoot()
      ..persons = (json['persons'] as List<dynamic>)
          .map((e) => GetPersonsStream$SubscriptionRoot$Persons.fromJson(
              e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$GetPersonsStream$SubscriptionRootToJson(
        GetPersonsStream$SubscriptionRoot instance) =>
    <String, dynamic>{
      'persons': instance.persons.map((e) => e.toJson()).toList(),
    };

WatchPerson$SubscriptionRoot$Persons$Areas
    _$WatchPerson$SubscriptionRoot$Persons$AreasFromJson(
            Map<String, dynamic> json) =>
        WatchPerson$SubscriptionRoot$Persons$Areas()
          ..id = fromGraphQLUuidToDartUuidValue(json['id'])
          ..name = json['name'] as String
          ..color = json['color'] as int?
          ..photoUpdatedAt = json['photoUpdatedAt'] == null
              ? null
              : DateTime.parse(json['photoUpdatedAt'] as String);

Map<String, dynamic> _$WatchPerson$SubscriptionRoot$Persons$AreasToJson(
        WatchPerson$SubscriptionRoot$Persons$Areas instance) =>
    <String, dynamic>{
      'id': fromDartUuidValueToGraphQLUuid(instance.id),
      'name': instance.name,
      'color': instance.color,
      'photoUpdatedAt': instance.photoUpdatedAt?.toIso8601String(),
    };

WatchPerson$SubscriptionRoot$Persons$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields
    _$WatchPerson$SubscriptionRoot$Persons$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFieldsFromJson(
            Map<String, dynamic> json) =>
        WatchPerson$SubscriptionRoot$Persons$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields()
          ..time = json['time'] == null
              ? null
              : DateTime.parse(json['time'] as String);

Map<String, dynamic>
    _$WatchPerson$SubscriptionRoot$Persons$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFieldsToJson(
            WatchPerson$SubscriptionRoot$Persons$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields
                instance) =>
        <String, dynamic>{
          'time': instance.time?.toIso8601String(),
        };

WatchPerson$SubscriptionRoot$Persons$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields
    _$WatchPerson$SubscriptionRoot$Persons$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFieldsFromJson(
            Map<String, dynamic> json) =>
        WatchPerson$SubscriptionRoot$Persons$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields()
          ..max = json['max'] == null
              ? null
              : WatchPerson$SubscriptionRoot$Persons$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields
                  .fromJson(json['max'] as Map<String, dynamic>);

Map<String, dynamic>
    _$WatchPerson$SubscriptionRoot$Persons$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFieldsToJson(
            WatchPerson$SubscriptionRoot$Persons$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields
                instance) =>
        <String, dynamic>{
          'max': instance.max?.toJson(),
        };

WatchPerson$SubscriptionRoot$Persons$Classes$HistoryAttendanceHistoryAggregate
    _$WatchPerson$SubscriptionRoot$Persons$Classes$HistoryAttendanceHistoryAggregateFromJson(
            Map<String, dynamic> json) =>
        WatchPerson$SubscriptionRoot$Persons$Classes$HistoryAttendanceHistoryAggregate()
          ..aggregate = json['aggregate'] == null
              ? null
              : WatchPerson$SubscriptionRoot$Persons$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields
                  .fromJson(json['aggregate'] as Map<String, dynamic>);

Map<String, dynamic>
    _$WatchPerson$SubscriptionRoot$Persons$Classes$HistoryAttendanceHistoryAggregateToJson(
            WatchPerson$SubscriptionRoot$Persons$Classes$HistoryAttendanceHistoryAggregate
                instance) =>
        <String, dynamic>{
          'aggregate': instance.aggregate?.toJson(),
        };

WatchPerson$SubscriptionRoot$Persons$Classes
    _$WatchPerson$SubscriptionRoot$Persons$ClassesFromJson(
            Map<String, dynamic> json) =>
        WatchPerson$SubscriptionRoot$Persons$Classes()
          ..id = fromGraphQLUuidToDartUuidValue(json['id'])
          ..name = json['name'] as String
          ..color = json['color'] as int?
          ..photoUpdatedAt = json['photoUpdatedAt'] == null
              ? null
              : DateTime.parse(json['photoUpdatedAt'] as String)
          ..attendanceHistoryAggregate =
              WatchPerson$SubscriptionRoot$Persons$Classes$HistoryAttendanceHistoryAggregate
                  .fromJson(json['attendanceHistoryAggregate']
                      as Map<String, dynamic>);

Map<String, dynamic> _$WatchPerson$SubscriptionRoot$Persons$ClassesToJson(
        WatchPerson$SubscriptionRoot$Persons$Classes instance) =>
    <String, dynamic>{
      'id': fromDartUuidValueToGraphQLUuid(instance.id),
      'name': instance.name,
      'color': instance.color,
      'photoUpdatedAt': instance.photoUpdatedAt?.toIso8601String(),
      'attendanceHistoryAggregate':
          instance.attendanceHistoryAggregate.toJson(),
    };

WatchPerson$SubscriptionRoot$Persons$Churches
    _$WatchPerson$SubscriptionRoot$Persons$ChurchesFromJson(
            Map<String, dynamic> json) =>
        WatchPerson$SubscriptionRoot$Persons$Churches()
          ..id = fromGraphQLUuidToDartUuidValue(json['id'])
          ..name = json['name'] as String;

Map<String, dynamic> _$WatchPerson$SubscriptionRoot$Persons$ChurchesToJson(
        WatchPerson$SubscriptionRoot$Persons$Churches instance) =>
    <String, dynamic>{
      'id': fromDartUuidValueToGraphQLUuid(instance.id),
      'name': instance.name,
    };

WatchPerson$SubscriptionRoot$Persons$Colleges
    _$WatchPerson$SubscriptionRoot$Persons$CollegesFromJson(
            Map<String, dynamic> json) =>
        WatchPerson$SubscriptionRoot$Persons$Colleges()
          ..id = fromGraphQLUuidToDartUuidValue(json['id'])
          ..name = json['name'] as String;

Map<String, dynamic> _$WatchPerson$SubscriptionRoot$Persons$CollegesToJson(
        WatchPerson$SubscriptionRoot$Persons$Colleges instance) =>
    <String, dynamic>{
      'id': fromDartUuidValueToGraphQLUuid(instance.id),
      'name': instance.name,
    };

WatchPerson$SubscriptionRoot$Persons$Families
    _$WatchPerson$SubscriptionRoot$Persons$FamiliesFromJson(
            Map<String, dynamic> json) =>
        WatchPerson$SubscriptionRoot$Persons$Families()
          ..id = fromGraphQLUuidToDartUuidValue(json['id'])
          ..name = json['name'] as String
          ..color = json['color'] as int?
          ..photoUpdatedAt = json['photoUpdatedAt'] == null
              ? null
              : DateTime.parse(json['photoUpdatedAt'] as String);

Map<String, dynamic> _$WatchPerson$SubscriptionRoot$Persons$FamiliesToJson(
        WatchPerson$SubscriptionRoot$Persons$Families instance) =>
    <String, dynamic>{
      'id': fromDartUuidValueToGraphQLUuid(instance.id),
      'name': instance.name,
      'color': instance.color,
      'photoUpdatedAt': instance.photoUpdatedAt?.toIso8601String(),
    };

WatchPerson$SubscriptionRoot$Persons$Fathers$Churches
    _$WatchPerson$SubscriptionRoot$Persons$Fathers$ChurchesFromJson(
            Map<String, dynamic> json) =>
        WatchPerson$SubscriptionRoot$Persons$Fathers$Churches()
          ..id = fromGraphQLUuidToDartUuidValue(json['id'])
          ..name = json['name'] as String;

Map<String, dynamic>
    _$WatchPerson$SubscriptionRoot$Persons$Fathers$ChurchesToJson(
            WatchPerson$SubscriptionRoot$Persons$Fathers$Churches instance) =>
        <String, dynamic>{
          'id': fromDartUuidValueToGraphQLUuid(instance.id),
          'name': instance.name,
        };

WatchPerson$SubscriptionRoot$Persons$Fathers
    _$WatchPerson$SubscriptionRoot$Persons$FathersFromJson(
            Map<String, dynamic> json) =>
        WatchPerson$SubscriptionRoot$Persons$Fathers()
          ..id = fromGraphQLUuidToDartUuidValue(json['id'])
          ..name = json['name'] as String
          ..church = json['church'] == null
              ? null
              : WatchPerson$SubscriptionRoot$Persons$Fathers$Churches.fromJson(
                  json['church'] as Map<String, dynamic>);

Map<String, dynamic> _$WatchPerson$SubscriptionRoot$Persons$FathersToJson(
        WatchPerson$SubscriptionRoot$Persons$Fathers instance) =>
    <String, dynamic>{
      'id': fromDartUuidValueToGraphQLUuid(instance.id),
      'name': instance.name,
      'church': instance.church?.toJson(),
    };

WatchPerson$SubscriptionRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields
    _$WatchPerson$SubscriptionRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFieldsFromJson(
            Map<String, dynamic> json) =>
        WatchPerson$SubscriptionRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields()
          ..time = json['time'] == null
              ? null
              : DateTime.parse(json['time'] as String);

Map<String, dynamic>
    _$WatchPerson$SubscriptionRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFieldsToJson(
            WatchPerson$SubscriptionRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields
                instance) =>
        <String, dynamic>{
          'time': instance.time?.toIso8601String(),
        };

WatchPerson$SubscriptionRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields
    _$WatchPerson$SubscriptionRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFieldsFromJson(
            Map<String, dynamic> json) =>
        WatchPerson$SubscriptionRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields()
          ..max = json['max'] == null
              ? null
              : WatchPerson$SubscriptionRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields
                  .fromJson(json['max'] as Map<String, dynamic>);

Map<String, dynamic>
    _$WatchPerson$SubscriptionRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFieldsToJson(
            WatchPerson$SubscriptionRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields
                instance) =>
        <String, dynamic>{
          'max': instance.max?.toJson(),
        };

WatchPerson$SubscriptionRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate
    _$WatchPerson$SubscriptionRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregateFromJson(
            Map<String, dynamic> json) =>
        WatchPerson$SubscriptionRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate()
          ..aggregate = json['aggregate'] == null
              ? null
              : WatchPerson$SubscriptionRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields
                  .fromJson(json['aggregate'] as Map<String, dynamic>);

Map<String, dynamic>
    _$WatchPerson$SubscriptionRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregateToJson(
            WatchPerson$SubscriptionRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate
                instance) =>
        <String, dynamic>{
          'aggregate': instance.aggregate?.toJson(),
        };

WatchPerson$SubscriptionRoot$Persons$PersonsGroups$Groups
    _$WatchPerson$SubscriptionRoot$Persons$PersonsGroups$GroupsFromJson(
            Map<String, dynamic> json) =>
        WatchPerson$SubscriptionRoot$Persons$PersonsGroups$Groups()
          ..id = fromGraphQLUuidToDartUuidValue(json['id'])
          ..name = json['name'] as String
          ..color = json['color'] as int?
          ..photoUpdatedAt = json['photoUpdatedAt'] == null
              ? null
              : DateTime.parse(json['photoUpdatedAt'] as String)
          ..attendanceHistoryAggregate =
              WatchPerson$SubscriptionRoot$Persons$PersonsGroups$Groups$HistoryAttendanceHistoryAggregate
                  .fromJson(json['attendanceHistoryAggregate']
                      as Map<String, dynamic>);

Map<String,
    dynamic> _$WatchPerson$SubscriptionRoot$Persons$PersonsGroups$GroupsToJson(
        WatchPerson$SubscriptionRoot$Persons$PersonsGroups$Groups instance) =>
    <String, dynamic>{
      'id': fromDartUuidValueToGraphQLUuid(instance.id),
      'name': instance.name,
      'color': instance.color,
      'photoUpdatedAt': instance.photoUpdatedAt?.toIso8601String(),
      'attendanceHistoryAggregate':
          instance.attendanceHistoryAggregate.toJson(),
    };

WatchPerson$SubscriptionRoot$Persons$PersonsGroups
    _$WatchPerson$SubscriptionRoot$Persons$PersonsGroupsFromJson(
            Map<String, dynamic> json) =>
        WatchPerson$SubscriptionRoot$Persons$PersonsGroups()
          ..group = WatchPerson$SubscriptionRoot$Persons$PersonsGroups$Groups
              .fromJson(json['group'] as Map<String, dynamic>);

Map<String, dynamic> _$WatchPerson$SubscriptionRoot$Persons$PersonsGroupsToJson(
        WatchPerson$SubscriptionRoot$Persons$PersonsGroups instance) =>
    <String, dynamic>{
      'group': instance.group.toJson(),
    };

WatchPerson$SubscriptionRoot$Persons$Jobs
    _$WatchPerson$SubscriptionRoot$Persons$JobsFromJson(
            Map<String, dynamic> json) =>
        WatchPerson$SubscriptionRoot$Persons$Jobs()
          ..id = fromGraphQLUuidToDartUuidValue(json['id'])
          ..name = json['name'] as String;

Map<String, dynamic> _$WatchPerson$SubscriptionRoot$Persons$JobsToJson(
        WatchPerson$SubscriptionRoot$Persons$Jobs instance) =>
    <String, dynamic>{
      'id': fromDartUuidValueToGraphQLUuid(instance.id),
      'name': instance.name,
    };

WatchPerson$SubscriptionRoot$Persons$PersonTypes
    _$WatchPerson$SubscriptionRoot$Persons$PersonTypesFromJson(
            Map<String, dynamic> json) =>
        WatchPerson$SubscriptionRoot$Persons$PersonTypes()
          ..id = fromGraphQLUuidToDartUuidValue(json['id'])
          ..name = json['name'] as String;

Map<String, dynamic> _$WatchPerson$SubscriptionRoot$Persons$PersonTypesToJson(
        WatchPerson$SubscriptionRoot$Persons$PersonTypes instance) =>
    <String, dynamic>{
      'id': fromDartUuidValueToGraphQLUuid(instance.id),
      'name': instance.name,
    };

WatchPerson$SubscriptionRoot$Persons$Qualifications
    _$WatchPerson$SubscriptionRoot$Persons$QualificationsFromJson(
            Map<String, dynamic> json) =>
        WatchPerson$SubscriptionRoot$Persons$Qualifications()
          ..id = fromGraphQLUuidToDartUuidValue(json['id'])
          ..name = json['name'] as String;

Map<String, dynamic>
    _$WatchPerson$SubscriptionRoot$Persons$QualificationsToJson(
            WatchPerson$SubscriptionRoot$Persons$Qualifications instance) =>
        <String, dynamic>{
          'id': fromDartUuidValueToGraphQLUuid(instance.id),
          'name': instance.name,
        };

WatchPerson$SubscriptionRoot$Persons$Schools
    _$WatchPerson$SubscriptionRoot$Persons$SchoolsFromJson(
            Map<String, dynamic> json) =>
        WatchPerson$SubscriptionRoot$Persons$Schools()
          ..id = fromGraphQLUuidToDartUuidValue(json['id'])
          ..name = json['name'] as String;

Map<String, dynamic> _$WatchPerson$SubscriptionRoot$Persons$SchoolsToJson(
        WatchPerson$SubscriptionRoot$Persons$Schools instance) =>
    <String, dynamic>{
      'id': fromDartUuidValueToGraphQLUuid(instance.id),
      'name': instance.name,
    };

WatchPerson$SubscriptionRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields
    _$WatchPerson$SubscriptionRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFieldsFromJson(
            Map<String, dynamic> json) =>
        WatchPerson$SubscriptionRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields()
          ..time = json['time'] == null
              ? null
              : DateTime.parse(json['time'] as String);

Map<String, dynamic>
    _$WatchPerson$SubscriptionRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFieldsToJson(
            WatchPerson$SubscriptionRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields
                instance) =>
        <String, dynamic>{
          'time': instance.time?.toIso8601String(),
        };

WatchPerson$SubscriptionRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields
    _$WatchPerson$SubscriptionRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFieldsFromJson(
            Map<String, dynamic> json) =>
        WatchPerson$SubscriptionRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields()
          ..max = json['max'] == null
              ? null
              : WatchPerson$SubscriptionRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields
                  .fromJson(json['max'] as Map<String, dynamic>);

Map<String, dynamic>
    _$WatchPerson$SubscriptionRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFieldsToJson(
            WatchPerson$SubscriptionRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields
                instance) =>
        <String, dynamic>{
          'max': instance.max?.toJson(),
        };

WatchPerson$SubscriptionRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate
    _$WatchPerson$SubscriptionRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregateFromJson(
            Map<String, dynamic> json) =>
        WatchPerson$SubscriptionRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate()
          ..aggregate = json['aggregate'] == null
              ? null
              : WatchPerson$SubscriptionRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields
                  .fromJson(json['aggregate'] as Map<String, dynamic>);

Map<String, dynamic>
    _$WatchPerson$SubscriptionRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregateToJson(
            WatchPerson$SubscriptionRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate
                instance) =>
        <String, dynamic>{
          'aggregate': instance.aggregate?.toJson(),
        };

WatchPerson$SubscriptionRoot$Persons$PersonsServices$Services
    _$WatchPerson$SubscriptionRoot$Persons$PersonsServices$ServicesFromJson(
            Map<String, dynamic> json) =>
        WatchPerson$SubscriptionRoot$Persons$PersonsServices$Services()
          ..id = fromGraphQLUuidToDartUuidValue(json['id'])
          ..name = json['name'] as String
          ..color = json['color'] as int?
          ..photoUpdatedAt = json['photoUpdatedAt'] == null
              ? null
              : DateTime.parse(json['photoUpdatedAt'] as String)
          ..attendanceHistoryAggregate =
              WatchPerson$SubscriptionRoot$Persons$PersonsServices$Services$HistoryAttendanceHistoryAggregate
                  .fromJson(json['attendanceHistoryAggregate']
                      as Map<String, dynamic>);

Map<String, dynamic>
    _$WatchPerson$SubscriptionRoot$Persons$PersonsServices$ServicesToJson(
            WatchPerson$SubscriptionRoot$Persons$PersonsServices$Services
                instance) =>
        <String, dynamic>{
          'id': fromDartUuidValueToGraphQLUuid(instance.id),
          'name': instance.name,
          'color': instance.color,
          'photoUpdatedAt': instance.photoUpdatedAt?.toIso8601String(),
          'attendanceHistoryAggregate':
              instance.attendanceHistoryAggregate.toJson(),
        };

WatchPerson$SubscriptionRoot$Persons$PersonsServices
    _$WatchPerson$SubscriptionRoot$Persons$PersonsServicesFromJson(
            Map<String, dynamic> json) =>
        WatchPerson$SubscriptionRoot$Persons$PersonsServices()
          ..service =
              WatchPerson$SubscriptionRoot$Persons$PersonsServices$Services
                  .fromJson(json['service'] as Map<String, dynamic>);

Map<String, dynamic>
    _$WatchPerson$SubscriptionRoot$Persons$PersonsServicesToJson(
            WatchPerson$SubscriptionRoot$Persons$PersonsServices instance) =>
        <String, dynamic>{
          'service': instance.service.toJson(),
        };

WatchPerson$SubscriptionRoot$Persons$ShammasLevels
    _$WatchPerson$SubscriptionRoot$Persons$ShammasLevelsFromJson(
            Map<String, dynamic> json) =>
        WatchPerson$SubscriptionRoot$Persons$ShammasLevels()
          ..id = fromGraphQLUuidToDartUuidValue(json['id'])
          ..name = json['name'] as String
          ..order = json['order'] as int;

Map<String, dynamic> _$WatchPerson$SubscriptionRoot$Persons$ShammasLevelsToJson(
        WatchPerson$SubscriptionRoot$Persons$ShammasLevels instance) =>
    <String, dynamic>{
      'id': fromDartUuidValueToGraphQLUuid(instance.id),
      'name': instance.name,
      'order': instance.order,
    };

WatchPerson$SubscriptionRoot$Persons$PersonStates
    _$WatchPerson$SubscriptionRoot$Persons$PersonStatesFromJson(
            Map<String, dynamic> json) =>
        WatchPerson$SubscriptionRoot$Persons$PersonStates()
          ..id = fromGraphQLUuidToDartUuidValue(json['id'])
          ..color = json['color'] as int
          ..name = json['name'] as String;

Map<String, dynamic> _$WatchPerson$SubscriptionRoot$Persons$PersonStatesToJson(
        WatchPerson$SubscriptionRoot$Persons$PersonStates instance) =>
    <String, dynamic>{
      'id': fromDartUuidValueToGraphQLUuid(instance.id),
      'color': instance.color,
      'name': instance.name,
    };

WatchPerson$SubscriptionRoot$Persons$Streets
    _$WatchPerson$SubscriptionRoot$Persons$StreetsFromJson(
            Map<String, dynamic> json) =>
        WatchPerson$SubscriptionRoot$Persons$Streets()
          ..id = fromGraphQLUuidToDartUuidValue(json['id'])
          ..name = json['name'] as String
          ..color = json['color'] as int?
          ..photoUpdatedAt = json['photoUpdatedAt'] == null
              ? null
              : DateTime.parse(json['photoUpdatedAt'] as String);

Map<String, dynamic> _$WatchPerson$SubscriptionRoot$Persons$StreetsToJson(
        WatchPerson$SubscriptionRoot$Persons$Streets instance) =>
    <String, dynamic>{
      'id': fromDartUuidValueToGraphQLUuid(instance.id),
      'name': instance.name,
      'color': instance.color,
      'photoUpdatedAt': instance.photoUpdatedAt?.toIso8601String(),
    };

WatchPerson$SubscriptionRoot$Persons$StudyYears
    _$WatchPerson$SubscriptionRoot$Persons$StudyYearsFromJson(
            Map<String, dynamic> json) =>
        WatchPerson$SubscriptionRoot$Persons$StudyYears()
          ..name = json['name'] as String
          ..order = json['order'] as int;

Map<String, dynamic> _$WatchPerson$SubscriptionRoot$Persons$StudyYearsToJson(
        WatchPerson$SubscriptionRoot$Persons$StudyYears instance) =>
    <String, dynamic>{
      'name': instance.name,
      'order': instance.order,
    };

WatchPerson$SubscriptionRoot$Persons$PersonsTags$Tags
    _$WatchPerson$SubscriptionRoot$Persons$PersonsTags$TagsFromJson(
            Map<String, dynamic> json) =>
        WatchPerson$SubscriptionRoot$Persons$PersonsTags$Tags()
          ..id = fromGraphQLUuidToDartUuidValue(json['id'])
          ..name = json['name'] as String
          ..color = json['color'] as int?;

Map<String, dynamic>
    _$WatchPerson$SubscriptionRoot$Persons$PersonsTags$TagsToJson(
            WatchPerson$SubscriptionRoot$Persons$PersonsTags$Tags instance) =>
        <String, dynamic>{
          'id': fromDartUuidValueToGraphQLUuid(instance.id),
          'name': instance.name,
          'color': instance.color,
        };

WatchPerson$SubscriptionRoot$Persons$PersonsTags
    _$WatchPerson$SubscriptionRoot$Persons$PersonsTagsFromJson(
            Map<String, dynamic> json) =>
        WatchPerson$SubscriptionRoot$Persons$PersonsTags()
          ..tag =
              WatchPerson$SubscriptionRoot$Persons$PersonsTags$Tags.fromJson(
                  json['tag'] as Map<String, dynamic>);

Map<String, dynamic> _$WatchPerson$SubscriptionRoot$Persons$PersonsTagsToJson(
        WatchPerson$SubscriptionRoot$Persons$PersonsTags instance) =>
    <String, dynamic>{
      'tag': instance.tag.toJson(),
    };

WatchPerson$SubscriptionRoot$Persons$Users$UsersData
    _$WatchPerson$SubscriptionRoot$Persons$Users$UsersDataFromJson(
            Map<String, dynamic> json) =>
        WatchPerson$SubscriptionRoot$Persons$Users$UsersData()
          ..uid = fromGraphQLUuidToDartUuidValue(json['uid'])
          ..email = json['email'] as String;

Map<String, dynamic>
    _$WatchPerson$SubscriptionRoot$Persons$Users$UsersDataToJson(
            WatchPerson$SubscriptionRoot$Persons$Users$UsersData instance) =>
        <String, dynamic>{
          'uid': fromDartUuidValueToGraphQLUuid(instance.uid),
          'email': instance.email,
        };

WatchPerson$SubscriptionRoot$Persons$Users
    _$WatchPerson$SubscriptionRoot$Persons$UsersFromJson(
            Map<String, dynamic> json) =>
        WatchPerson$SubscriptionRoot$Persons$Users()
          ..uid = fromGraphQLUuidToDartUuidValue(json['uid'])
          ..name = json['name'] as String
          ..userData = json['userData'] == null
              ? null
              : WatchPerson$SubscriptionRoot$Persons$Users$UsersData.fromJson(
                  json['userData'] as Map<String, dynamic>);

Map<String, dynamic> _$WatchPerson$SubscriptionRoot$Persons$UsersToJson(
        WatchPerson$SubscriptionRoot$Persons$Users instance) =>
    <String, dynamic>{
      'uid': fromDartUuidValueToGraphQLUuid(instance.uid),
      'name': instance.name,
      'userData': instance.userData?.toJson(),
    };

WatchPerson$SubscriptionRoot$Persons
    _$WatchPerson$SubscriptionRoot$PersonsFromJson(Map<String, dynamic> json) =>
        WatchPerson$SubscriptionRoot$Persons()
          ..id = fromGraphQLUuidToDartUuidValue(json['id'])
          ..name = json['name'] as String
          ..color = json['color'] as int?
          ..photoUpdatedAt = json['photoUpdatedAt'] == null
              ? null
              : DateTime.parse(json['photoUpdatedAt'] as String)
          ..address = json['address'] as String?
          ..birthdate = json['birthdate'] == null
              ? null
              : DateTime.parse(json['birthdate'] as String)
          ..areas = (json['areas'] as List<dynamic>?)
              ?.map((e) => WatchPerson$SubscriptionRoot$Persons$Areas.fromJson(
                  e as Map<String, dynamic>))
              .toList()
          ..classes = (json['classes'] as List<dynamic>?)
              ?.map((e) =>
                  WatchPerson$SubscriptionRoot$Persons$Classes.fromJson(
                      e as Map<String, dynamic>))
              .toList()
          ..church = json['church'] == null
              ? null
              : WatchPerson$SubscriptionRoot$Persons$Churches.fromJson(
                  json['church'] as Map<String, dynamic>)
          ..college = json['college'] == null
              ? null
              : WatchPerson$SubscriptionRoot$Persons$Colleges.fromJson(
                  json['college'] as Map<String, dynamic>)
          ..family = json['family'] == null
              ? null
              : WatchPerson$SubscriptionRoot$Persons$Families.fromJson(
                  json['family'] as Map<String, dynamic>)
          ..father = json['father'] == null
              ? null
              : WatchPerson$SubscriptionRoot$Persons$Fathers.fromJson(
                  json['father'] as Map<String, dynamic>)
          ..gender = json['gender'] as bool
          ..geolocation = fromGraphQLGeographyNullableToDartJsonNullable(
              json['geolocation'])
          ..groups = (json['groups'] as List<dynamic>)
              .map((e) =>
                  WatchPerson$SubscriptionRoot$Persons$PersonsGroups.fromJson(
                      e as Map<String, dynamic>))
              .toList()
          ..isServant = json['isServant'] as bool
          ..isShammas = json['isShammas'] as bool
          ..isStudent = json['isStudent'] as bool?
          ..job = json['job'] == null
              ? null
              : WatchPerson$SubscriptionRoot$Persons$Jobs.fromJson(
                  json['job'] as Map<String, dynamic>)
          ..jobDescription = json['jobDescription'] as String?
          ..lastCall =
              fromGraphQLJsonbNullableToDartJsonNullable(json['lastCall'])
          ..lastConfession =
              fromGraphQLJsonbNullableToDartJsonNullable(json['lastConfession'])
          ..lastEdit =
              fromGraphQLJsonbNullableToDartJsonNullable(json['lastEdit'])
          ..lastKodas =
              fromGraphQLJsonbNullableToDartJsonNullable(json['lastKodas'])
          ..lastVisit =
              fromGraphQLJsonbNullableToDartJsonNullable(json['lastVisit'])
          ..mainPhone = json['mainPhone'] as String?
          ..notes = json['notes'] as String?
          ..otherPhones = fromGraphQLJsonbToDartJson(json['otherPhones'])
          ..personType = json['personType'] == null
              ? null
              : WatchPerson$SubscriptionRoot$Persons$PersonTypes.fromJson(
                  json['personType'] as Map<String, dynamic>)
          ..qualification = json['qualification'] == null
              ? null
              : WatchPerson$SubscriptionRoot$Persons$Qualifications.fromJson(
                  json['qualification'] as Map<String, dynamic>)
          ..school = json['school'] == null
              ? null
              : WatchPerson$SubscriptionRoot$Persons$Schools.fromJson(
                  json['school'] as Map<String, dynamic>)
          ..services = (json['services'] as List<dynamic>)
              .map((e) =>
                  WatchPerson$SubscriptionRoot$Persons$PersonsServices.fromJson(
                      e as Map<String, dynamic>))
              .toList()
          ..shammasLevel = json['shammasLevel'] == null
              ? null
              : WatchPerson$SubscriptionRoot$Persons$ShammasLevels.fromJson(
                  json['shammasLevel'] as Map<String, dynamic>)
          ..state = json['state'] == null
              ? null
              : WatchPerson$SubscriptionRoot$Persons$PersonStates.fromJson(
                  json['state'] as Map<String, dynamic>)
          ..streets = (json['streets'] as List<dynamic>?)
              ?.map((e) =>
                  WatchPerson$SubscriptionRoot$Persons$Streets.fromJson(
                      e as Map<String, dynamic>))
              .toList()
          ..studyYear = json['studyYear'] == null
              ? null
              : WatchPerson$SubscriptionRoot$Persons$StudyYears.fromJson(
                  json['studyYear'] as Map<String, dynamic>)
          ..tags = (json['tags'] as List<dynamic>)
              .map((e) =>
                  WatchPerson$SubscriptionRoot$Persons$PersonsTags.fromJson(
                      e as Map<String, dynamic>))
              .toList()
          ..uid = fromGraphQLUuidNullableToDartUuidValueNullable(json['uid'])
          ..user = json['user'] == null
              ? null
              : WatchPerson$SubscriptionRoot$Persons$Users.fromJson(
                  json['user'] as Map<String, dynamic>);

Map<String, dynamic> _$WatchPerson$SubscriptionRoot$PersonsToJson(
        WatchPerson$SubscriptionRoot$Persons instance) =>
    <String, dynamic>{
      'id': fromDartUuidValueToGraphQLUuid(instance.id),
      'name': instance.name,
      'color': instance.color,
      'photoUpdatedAt': instance.photoUpdatedAt?.toIso8601String(),
      'address': instance.address,
      'birthdate': instance.birthdate?.toIso8601String(),
      'areas': instance.areas?.map((e) => e.toJson()).toList(),
      'classes': instance.classes?.map((e) => e.toJson()).toList(),
      'church': instance.church?.toJson(),
      'college': instance.college?.toJson(),
      'family': instance.family?.toJson(),
      'father': instance.father?.toJson(),
      'gender': instance.gender,
      'geolocation':
          fromDartJsonNullableToGraphQLGeographyNullable(instance.geolocation),
      'groups': instance.groups.map((e) => e.toJson()).toList(),
      'isServant': instance.isServant,
      'isShammas': instance.isShammas,
      'isStudent': instance.isStudent,
      'job': instance.job?.toJson(),
      'jobDescription': instance.jobDescription,
      'lastCall': fromDartJsonNullableToGraphQLJsonbNullable(instance.lastCall),
      'lastConfession':
          fromDartJsonNullableToGraphQLJsonbNullable(instance.lastConfession),
      'lastEdit': fromDartJsonNullableToGraphQLJsonbNullable(instance.lastEdit),
      'lastKodas':
          fromDartJsonNullableToGraphQLJsonbNullable(instance.lastKodas),
      'lastVisit':
          fromDartJsonNullableToGraphQLJsonbNullable(instance.lastVisit),
      'mainPhone': instance.mainPhone,
      'notes': instance.notes,
      'otherPhones': fromDartJsonToGraphQLJsonb(instance.otherPhones),
      'personType': instance.personType?.toJson(),
      'qualification': instance.qualification?.toJson(),
      'school': instance.school?.toJson(),
      'services': instance.services.map((e) => e.toJson()).toList(),
      'shammasLevel': instance.shammasLevel?.toJson(),
      'state': instance.state?.toJson(),
      'streets': instance.streets?.map((e) => e.toJson()).toList(),
      'studyYear': instance.studyYear?.toJson(),
      'tags': instance.tags.map((e) => e.toJson()).toList(),
      'uid': fromDartUuidValueNullableToGraphQLUuidNullable(instance.uid),
      'user': instance.user?.toJson(),
    };

WatchPerson$SubscriptionRoot _$WatchPerson$SubscriptionRootFromJson(
        Map<String, dynamic> json) =>
    WatchPerson$SubscriptionRoot()
      ..personsByPk = json['personsByPk'] == null
          ? null
          : WatchPerson$SubscriptionRoot$Persons.fromJson(
              json['personsByPk'] as Map<String, dynamic>);

Map<String, dynamic> _$WatchPerson$SubscriptionRootToJson(
        WatchPerson$SubscriptionRoot instance) =>
    <String, dynamic>{
      'personsByPk': instance.personsByPk?.toJson(),
    };

CallHistory$SubscriptionRoot$HistoryCallHistory$Users
    _$CallHistory$SubscriptionRoot$HistoryCallHistory$UsersFromJson(
            Map<String, dynamic> json) =>
        CallHistory$SubscriptionRoot$HistoryCallHistory$Users()
          ..uid = fromGraphQLUuidToDartUuidValue(json['uid'])
          ..name = json['name'] as String
          ..photoUpdatedAt = json['photoUpdatedAt'] == null
              ? null
              : DateTime.parse(json['photoUpdatedAt'] as String);

Map<String, dynamic>
    _$CallHistory$SubscriptionRoot$HistoryCallHistory$UsersToJson(
            CallHistory$SubscriptionRoot$HistoryCallHistory$Users instance) =>
        <String, dynamic>{
          'uid': fromDartUuidValueToGraphQLUuid(instance.uid),
          'name': instance.name,
          'photoUpdatedAt': instance.photoUpdatedAt?.toIso8601String(),
        };

CallHistory$SubscriptionRoot$HistoryCallHistory
    _$CallHistory$SubscriptionRoot$HistoryCallHistoryFromJson(
            Map<String, dynamic> json) =>
        CallHistory$SubscriptionRoot$HistoryCallHistory()
          ..time = DateTime.parse(json['time'] as String)
          ..user = json['user'] == null
              ? null
              : CallHistory$SubscriptionRoot$HistoryCallHistory$Users.fromJson(
                  json['user'] as Map<String, dynamic>);

Map<String, dynamic> _$CallHistory$SubscriptionRoot$HistoryCallHistoryToJson(
        CallHistory$SubscriptionRoot$HistoryCallHistory instance) =>
    <String, dynamic>{
      'time': instance.time.toIso8601String(),
      'user': instance.user?.toJson(),
    };

CallHistory$SubscriptionRoot _$CallHistory$SubscriptionRootFromJson(
        Map<String, dynamic> json) =>
    CallHistory$SubscriptionRoot()
      ..historyCallHistory = (json['historyCallHistory'] as List<dynamic>)
          .map((e) => CallHistory$SubscriptionRoot$HistoryCallHistory.fromJson(
              e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$CallHistory$SubscriptionRootToJson(
        CallHistory$SubscriptionRoot instance) =>
    <String, dynamic>{
      'historyCallHistory':
          instance.historyCallHistory.map((e) => e.toJson()).toList(),
    };

VisitHistory$SubscriptionRoot$HistoryVisitHistory$Users
    _$VisitHistory$SubscriptionRoot$HistoryVisitHistory$UsersFromJson(
            Map<String, dynamic> json) =>
        VisitHistory$SubscriptionRoot$HistoryVisitHistory$Users()
          ..uid = fromGraphQLUuidToDartUuidValue(json['uid'])
          ..name = json['name'] as String
          ..photoUpdatedAt = json['photoUpdatedAt'] == null
              ? null
              : DateTime.parse(json['photoUpdatedAt'] as String);

Map<String, dynamic>
    _$VisitHistory$SubscriptionRoot$HistoryVisitHistory$UsersToJson(
            VisitHistory$SubscriptionRoot$HistoryVisitHistory$Users instance) =>
        <String, dynamic>{
          'uid': fromDartUuidValueToGraphQLUuid(instance.uid),
          'name': instance.name,
          'photoUpdatedAt': instance.photoUpdatedAt?.toIso8601String(),
        };

VisitHistory$SubscriptionRoot$HistoryVisitHistory
    _$VisitHistory$SubscriptionRoot$HistoryVisitHistoryFromJson(
            Map<String, dynamic> json) =>
        VisitHistory$SubscriptionRoot$HistoryVisitHistory()
          ..time = DateTime.parse(json['time'] as String)
          ..user = json['user'] == null
              ? null
              : VisitHistory$SubscriptionRoot$HistoryVisitHistory$Users
                  .fromJson(json['user'] as Map<String, dynamic>);

Map<String, dynamic> _$VisitHistory$SubscriptionRoot$HistoryVisitHistoryToJson(
        VisitHistory$SubscriptionRoot$HistoryVisitHistory instance) =>
    <String, dynamic>{
      'time': instance.time.toIso8601String(),
      'user': instance.user?.toJson(),
    };

VisitHistory$SubscriptionRoot _$VisitHistory$SubscriptionRootFromJson(
        Map<String, dynamic> json) =>
    VisitHistory$SubscriptionRoot()
      ..historyVisitHistory = (json['historyVisitHistory'] as List<dynamic>)
          .map((e) =>
              VisitHistory$SubscriptionRoot$HistoryVisitHistory.fromJson(
                  e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$VisitHistory$SubscriptionRootToJson(
        VisitHistory$SubscriptionRoot instance) =>
    <String, dynamic>{
      'historyVisitHistory':
          instance.historyVisitHistory.map((e) => e.toJson()).toList(),
    };

ConfessionHistory$SubscriptionRoot$HistoryConfessionHistory$Users
    _$ConfessionHistory$SubscriptionRoot$HistoryConfessionHistory$UsersFromJson(
            Map<String, dynamic> json) =>
        ConfessionHistory$SubscriptionRoot$HistoryConfessionHistory$Users()
          ..uid = fromGraphQLUuidToDartUuidValue(json['uid'])
          ..name = json['name'] as String
          ..photoUpdatedAt = json['photoUpdatedAt'] == null
              ? null
              : DateTime.parse(json['photoUpdatedAt'] as String);

Map<String, dynamic>
    _$ConfessionHistory$SubscriptionRoot$HistoryConfessionHistory$UsersToJson(
            ConfessionHistory$SubscriptionRoot$HistoryConfessionHistory$Users
                instance) =>
        <String, dynamic>{
          'uid': fromDartUuidValueToGraphQLUuid(instance.uid),
          'name': instance.name,
          'photoUpdatedAt': instance.photoUpdatedAt?.toIso8601String(),
        };

ConfessionHistory$SubscriptionRoot$HistoryConfessionHistory
    _$ConfessionHistory$SubscriptionRoot$HistoryConfessionHistoryFromJson(
            Map<String, dynamic> json) =>
        ConfessionHistory$SubscriptionRoot$HistoryConfessionHistory()
          ..time = json['time'] == null
              ? null
              : DateTime.parse(json['time'] as String)
          ..user =
              ConfessionHistory$SubscriptionRoot$HistoryConfessionHistory$Users
                  .fromJson(json['user'] as Map<String, dynamic>);

Map<String, dynamic>
    _$ConfessionHistory$SubscriptionRoot$HistoryConfessionHistoryToJson(
            ConfessionHistory$SubscriptionRoot$HistoryConfessionHistory
                instance) =>
        <String, dynamic>{
          'time': instance.time?.toIso8601String(),
          'user': instance.user.toJson(),
        };

ConfessionHistory$SubscriptionRoot _$ConfessionHistory$SubscriptionRootFromJson(
        Map<String, dynamic> json) =>
    ConfessionHistory$SubscriptionRoot()
      ..historyConfessionHistory =
          (json['historyConfessionHistory'] as List<dynamic>)
              .map((e) =>
                  ConfessionHistory$SubscriptionRoot$HistoryConfessionHistory
                      .fromJson(e as Map<String, dynamic>))
              .toList();

Map<String, dynamic> _$ConfessionHistory$SubscriptionRootToJson(
        ConfessionHistory$SubscriptionRoot instance) =>
    <String, dynamic>{
      'historyConfessionHistory':
          instance.historyConfessionHistory.map((e) => e.toJson()).toList(),
    };

KodasHistory$SubscriptionRoot$HistoryKodasHistory$Users
    _$KodasHistory$SubscriptionRoot$HistoryKodasHistory$UsersFromJson(
            Map<String, dynamic> json) =>
        KodasHistory$SubscriptionRoot$HistoryKodasHistory$Users()
          ..uid = fromGraphQLUuidToDartUuidValue(json['uid'])
          ..name = json['name'] as String
          ..photoUpdatedAt = json['photoUpdatedAt'] == null
              ? null
              : DateTime.parse(json['photoUpdatedAt'] as String);

Map<String, dynamic>
    _$KodasHistory$SubscriptionRoot$HistoryKodasHistory$UsersToJson(
            KodasHistory$SubscriptionRoot$HistoryKodasHistory$Users instance) =>
        <String, dynamic>{
          'uid': fromDartUuidValueToGraphQLUuid(instance.uid),
          'name': instance.name,
          'photoUpdatedAt': instance.photoUpdatedAt?.toIso8601String(),
        };

KodasHistory$SubscriptionRoot$HistoryKodasHistory
    _$KodasHistory$SubscriptionRoot$HistoryKodasHistoryFromJson(
            Map<String, dynamic> json) =>
        KodasHistory$SubscriptionRoot$HistoryKodasHistory()
          ..time = json['time'] == null
              ? null
              : DateTime.parse(json['time'] as String)
          ..user =
              KodasHistory$SubscriptionRoot$HistoryKodasHistory$Users.fromJson(
                  json['user'] as Map<String, dynamic>);

Map<String, dynamic> _$KodasHistory$SubscriptionRoot$HistoryKodasHistoryToJson(
        KodasHistory$SubscriptionRoot$HistoryKodasHistory instance) =>
    <String, dynamic>{
      'time': instance.time?.toIso8601String(),
      'user': instance.user.toJson(),
    };

KodasHistory$SubscriptionRoot _$KodasHistory$SubscriptionRootFromJson(
        Map<String, dynamic> json) =>
    KodasHistory$SubscriptionRoot()
      ..historyKodasHistory = (json['historyKodasHistory'] as List<dynamic>)
          .map((e) =>
              KodasHistory$SubscriptionRoot$HistoryKodasHistory.fromJson(
                  e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$KodasHistory$SubscriptionRootToJson(
        KodasHistory$SubscriptionRoot instance) =>
    <String, dynamic>{
      'historyKodasHistory':
          instance.historyKodasHistory.map((e) => e.toJson()).toList(),
    };

PersonEditHistory$SubscriptionRoot$HistoryEditHistory$Users
    _$PersonEditHistory$SubscriptionRoot$HistoryEditHistory$UsersFromJson(
            Map<String, dynamic> json) =>
        PersonEditHistory$SubscriptionRoot$HistoryEditHistory$Users()
          ..uid = fromGraphQLUuidToDartUuidValue(json['uid'])
          ..name = json['name'] as String
          ..photoUpdatedAt = json['photoUpdatedAt'] == null
              ? null
              : DateTime.parse(json['photoUpdatedAt'] as String);

Map<String, dynamic>
    _$PersonEditHistory$SubscriptionRoot$HistoryEditHistory$UsersToJson(
            PersonEditHistory$SubscriptionRoot$HistoryEditHistory$Users
                instance) =>
        <String, dynamic>{
          'uid': fromDartUuidValueToGraphQLUuid(instance.uid),
          'name': instance.name,
          'photoUpdatedAt': instance.photoUpdatedAt?.toIso8601String(),
        };

PersonEditHistory$SubscriptionRoot$HistoryEditHistory
    _$PersonEditHistory$SubscriptionRoot$HistoryEditHistoryFromJson(
            Map<String, dynamic> json) =>
        PersonEditHistory$SubscriptionRoot$HistoryEditHistory()
          ..time = DateTime.parse(json['time'] as String)
          ..user = json['user'] == null
              ? null
              : PersonEditHistory$SubscriptionRoot$HistoryEditHistory$Users
                  .fromJson(json['user'] as Map<String, dynamic>);

Map<String, dynamic>
    _$PersonEditHistory$SubscriptionRoot$HistoryEditHistoryToJson(
            PersonEditHistory$SubscriptionRoot$HistoryEditHistory instance) =>
        <String, dynamic>{
          'time': instance.time.toIso8601String(),
          'user': instance.user?.toJson(),
        };

PersonEditHistory$SubscriptionRoot _$PersonEditHistory$SubscriptionRootFromJson(
        Map<String, dynamic> json) =>
    PersonEditHistory$SubscriptionRoot()
      ..historyEditHistory = (json['historyEditHistory'] as List<dynamic>)
          .map((e) =>
              PersonEditHistory$SubscriptionRoot$HistoryEditHistory.fromJson(
                  e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$PersonEditHistory$SubscriptionRootToJson(
        PersonEditHistory$SubscriptionRoot instance) =>
    <String, dynamic>{
      'historyEditHistory':
          instance.historyEditHistory.map((e) => e.toJson()).toList(),
    };

PersonServiceAttendance$SubscriptionRoot$HistoryAttendanceHistory
    _$PersonServiceAttendance$SubscriptionRoot$HistoryAttendanceHistoryFromJson(
            Map<String, dynamic> json) =>
        PersonServiceAttendance$SubscriptionRoot$HistoryAttendanceHistory()
          ..recordedBy = fromGraphQLUuidToDartUuidValue(json['recordedBy'])
          ..time = DateTime.parse(json['time'] as String);

Map<String, dynamic>
    _$PersonServiceAttendance$SubscriptionRoot$HistoryAttendanceHistoryToJson(
            PersonServiceAttendance$SubscriptionRoot$HistoryAttendanceHistory
                instance) =>
        <String, dynamic>{
          'recordedBy': fromDartUuidValueToGraphQLUuid(instance.recordedBy),
          'time': instance.time.toIso8601String(),
        };

PersonServiceAttendance$SubscriptionRoot
    _$PersonServiceAttendance$SubscriptionRootFromJson(
            Map<String, dynamic> json) =>
        PersonServiceAttendance$SubscriptionRoot()
          ..historyAttendanceHistory = (json['historyAttendanceHistory']
                  as List<dynamic>)
              .map((e) =>
                  PersonServiceAttendance$SubscriptionRoot$HistoryAttendanceHistory
                      .fromJson(e as Map<String, dynamic>))
              .toList();

Map<String, dynamic> _$PersonServiceAttendance$SubscriptionRootToJson(
        PersonServiceAttendance$SubscriptionRoot instance) =>
    <String, dynamic>{
      'historyAttendanceHistory':
          instance.historyAttendanceHistory.map((e) => e.toJson()).toList(),
    };

PersonClassAttendance$SubscriptionRoot$HistoryAttendanceHistory
    _$PersonClassAttendance$SubscriptionRoot$HistoryAttendanceHistoryFromJson(
            Map<String, dynamic> json) =>
        PersonClassAttendance$SubscriptionRoot$HistoryAttendanceHistory()
          ..recordedBy = fromGraphQLUuidToDartUuidValue(json['recordedBy'])
          ..time = DateTime.parse(json['time'] as String);

Map<String, dynamic>
    _$PersonClassAttendance$SubscriptionRoot$HistoryAttendanceHistoryToJson(
            PersonClassAttendance$SubscriptionRoot$HistoryAttendanceHistory
                instance) =>
        <String, dynamic>{
          'recordedBy': fromDartUuidValueToGraphQLUuid(instance.recordedBy),
          'time': instance.time.toIso8601String(),
        };

PersonClassAttendance$SubscriptionRoot
    _$PersonClassAttendance$SubscriptionRootFromJson(
            Map<String, dynamic> json) =>
        PersonClassAttendance$SubscriptionRoot()
          ..historyAttendanceHistory = (json['historyAttendanceHistory']
                  as List<dynamic>)
              .map((e) =>
                  PersonClassAttendance$SubscriptionRoot$HistoryAttendanceHistory
                      .fromJson(e as Map<String, dynamic>))
              .toList();

Map<String, dynamic> _$PersonClassAttendance$SubscriptionRootToJson(
        PersonClassAttendance$SubscriptionRoot instance) =>
    <String, dynamic>{
      'historyAttendanceHistory':
          instance.historyAttendanceHistory.map((e) => e.toJson()).toList(),
    };

PersonGroupAttendance$SubscriptionRoot$HistoryAttendanceHistory
    _$PersonGroupAttendance$SubscriptionRoot$HistoryAttendanceHistoryFromJson(
            Map<String, dynamic> json) =>
        PersonGroupAttendance$SubscriptionRoot$HistoryAttendanceHistory()
          ..recordedBy = fromGraphQLUuidToDartUuidValue(json['recordedBy'])
          ..time = DateTime.parse(json['time'] as String);

Map<String, dynamic>
    _$PersonGroupAttendance$SubscriptionRoot$HistoryAttendanceHistoryToJson(
            PersonGroupAttendance$SubscriptionRoot$HistoryAttendanceHistory
                instance) =>
        <String, dynamic>{
          'recordedBy': fromDartUuidValueToGraphQLUuid(instance.recordedBy),
          'time': instance.time.toIso8601String(),
        };

PersonGroupAttendance$SubscriptionRoot
    _$PersonGroupAttendance$SubscriptionRootFromJson(
            Map<String, dynamic> json) =>
        PersonGroupAttendance$SubscriptionRoot()
          ..historyAttendanceHistory = (json['historyAttendanceHistory']
                  as List<dynamic>)
              .map((e) =>
                  PersonGroupAttendance$SubscriptionRoot$HistoryAttendanceHistory
                      .fromJson(e as Map<String, dynamic>))
              .toList();

Map<String, dynamic> _$PersonGroupAttendance$SubscriptionRootToJson(
        PersonGroupAttendance$SubscriptionRoot instance) =>
    <String, dynamic>{
      'historyAttendanceHistory':
          instance.historyAttendanceHistory.map((e) => e.toJson()).toList(),
    };

GetServicesStream$SubscriptionRoot$Services$StudyYears
    _$GetServicesStream$SubscriptionRoot$Services$StudyYearsFromJson(
            Map<String, dynamic> json) =>
        GetServicesStream$SubscriptionRoot$Services$StudyYears()
          ..name = json['name'] as String
          ..order = json['order'] as int;

Map<String, dynamic>
    _$GetServicesStream$SubscriptionRoot$Services$StudyYearsToJson(
            GetServicesStream$SubscriptionRoot$Services$StudyYears instance) =>
        <String, dynamic>{
          'name': instance.name,
          'order': instance.order,
        };

GetServicesStream$SubscriptionRoot$Services$Classes$StudyYears
    _$GetServicesStream$SubscriptionRoot$Services$Classes$StudyYearsFromJson(
            Map<String, dynamic> json) =>
        GetServicesStream$SubscriptionRoot$Services$Classes$StudyYears()
          ..name = json['name'] as String
          ..order = json['order'] as int;

Map<String, dynamic>
    _$GetServicesStream$SubscriptionRoot$Services$Classes$StudyYearsToJson(
            GetServicesStream$SubscriptionRoot$Services$Classes$StudyYears
                instance) =>
        <String, dynamic>{
          'name': instance.name,
          'order': instance.order,
        };

GetServicesStream$SubscriptionRoot$Services$Classes
    _$GetServicesStream$SubscriptionRoot$Services$ClassesFromJson(
            Map<String, dynamic> json) =>
        GetServicesStream$SubscriptionRoot$Services$Classes()
          ..id = fromGraphQLUuidToDartUuidValue(json['id'])
          ..name = json['name'] as String
          ..color = json['color'] as int?
          ..photoUpdatedAt = json['photoUpdatedAt'] == null
              ? null
              : DateTime.parse(json['photoUpdatedAt'] as String)
          ..studyYear =
              GetServicesStream$SubscriptionRoot$Services$Classes$StudyYears
                  .fromJson(json['studyYear'] as Map<String, dynamic>);

Map<String, dynamic>
    _$GetServicesStream$SubscriptionRoot$Services$ClassesToJson(
            GetServicesStream$SubscriptionRoot$Services$Classes instance) =>
        <String, dynamic>{
          'id': fromDartUuidValueToGraphQLUuid(instance.id),
          'name': instance.name,
          'color': instance.color,
          'photoUpdatedAt': instance.photoUpdatedAt?.toIso8601String(),
          'studyYear': instance.studyYear.toJson(),
        };

GetServicesStream$SubscriptionRoot$Services$Groups
    _$GetServicesStream$SubscriptionRoot$Services$GroupsFromJson(
            Map<String, dynamic> json) =>
        GetServicesStream$SubscriptionRoot$Services$Groups()
          ..id = fromGraphQLUuidToDartUuidValue(json['id'])
          ..name = json['name'] as String
          ..color = json['color'] as int?
          ..photoUpdatedAt = json['photoUpdatedAt'] == null
              ? null
              : DateTime.parse(json['photoUpdatedAt'] as String);

Map<String, dynamic> _$GetServicesStream$SubscriptionRoot$Services$GroupsToJson(
        GetServicesStream$SubscriptionRoot$Services$Groups instance) =>
    <String, dynamic>{
      'id': fromDartUuidValueToGraphQLUuid(instance.id),
      'name': instance.name,
      'color': instance.color,
      'photoUpdatedAt': instance.photoUpdatedAt?.toIso8601String(),
    };

GetServicesStream$SubscriptionRoot$Services
    _$GetServicesStream$SubscriptionRoot$ServicesFromJson(
            Map<String, dynamic> json) =>
        GetServicesStream$SubscriptionRoot$Services()
          ..id = fromGraphQLUuidToDartUuidValue(json['id'])
          ..name = json['name'] as String
          ..color = json['color'] as int?
          ..photoUpdatedAt = json['photoUpdatedAt'] == null
              ? null
              : DateTime.parse(json['photoUpdatedAt'] as String)
          ..fromStudyYear = json['fromStudyYear'] == null
              ? null
              : GetServicesStream$SubscriptionRoot$Services$StudyYears.fromJson(
                  json['fromStudyYear'] as Map<String, dynamic>)
          ..toStudyYear = json['toStudyYear'] == null
              ? null
              : GetServicesStream$SubscriptionRoot$Services$StudyYears.fromJson(
                  json['toStudyYear'] as Map<String, dynamic>)
          ..classes = (json['classes'] as List<dynamic>)
              .map((e) =>
                  GetServicesStream$SubscriptionRoot$Services$Classes.fromJson(
                      e as Map<String, dynamic>))
              .toList()
          ..groups = (json['groups'] as List<dynamic>)
              .map((e) =>
                  GetServicesStream$SubscriptionRoot$Services$Groups.fromJson(
                      e as Map<String, dynamic>))
              .toList();

Map<String, dynamic> _$GetServicesStream$SubscriptionRoot$ServicesToJson(
        GetServicesStream$SubscriptionRoot$Services instance) =>
    <String, dynamic>{
      'id': fromDartUuidValueToGraphQLUuid(instance.id),
      'name': instance.name,
      'color': instance.color,
      'photoUpdatedAt': instance.photoUpdatedAt?.toIso8601String(),
      'fromStudyYear': instance.fromStudyYear?.toJson(),
      'toStudyYear': instance.toStudyYear?.toJson(),
      'classes': instance.classes.map((e) => e.toJson()).toList(),
      'groups': instance.groups.map((e) => e.toJson()).toList(),
    };

GetServicesStream$SubscriptionRoot _$GetServicesStream$SubscriptionRootFromJson(
        Map<String, dynamic> json) =>
    GetServicesStream$SubscriptionRoot()
      ..services = (json['services'] as List<dynamic>)
          .map((e) => GetServicesStream$SubscriptionRoot$Services.fromJson(
              e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$GetServicesStream$SubscriptionRootToJson(
        GetServicesStream$SubscriptionRoot instance) =>
    <String, dynamic>{
      'services': instance.services.map((e) => e.toJson()).toList(),
    };

GetStreetsStream$SubscriptionRoot$Streets
    _$GetStreetsStream$SubscriptionRoot$StreetsFromJson(
            Map<String, dynamic> json) =>
        GetStreetsStream$SubscriptionRoot$Streets()
          ..id = fromGraphQLUuidToDartUuidValue(json['id'])
          ..name = json['name'] as String
          ..line = fromGraphQLGeographyNullableToDartJsonNullable(json['line'])
          ..color = json['color'] as int?
          ..photoUpdatedAt = json['photoUpdatedAt'] == null
              ? null
              : DateTime.parse(json['photoUpdatedAt'] as String);

Map<String, dynamic> _$GetStreetsStream$SubscriptionRoot$StreetsToJson(
        GetStreetsStream$SubscriptionRoot$Streets instance) =>
    <String, dynamic>{
      'id': fromDartUuidValueToGraphQLUuid(instance.id),
      'name': instance.name,
      'line': fromDartJsonNullableToGraphQLGeographyNullable(instance.line),
      'color': instance.color,
      'photoUpdatedAt': instance.photoUpdatedAt?.toIso8601String(),
    };

GetStreetsStream$SubscriptionRoot _$GetStreetsStream$SubscriptionRootFromJson(
        Map<String, dynamic> json) =>
    GetStreetsStream$SubscriptionRoot()
      ..streets = (json['streets'] as List<dynamic>)
          .map((e) => GetStreetsStream$SubscriptionRoot$Streets.fromJson(
              e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$GetStreetsStream$SubscriptionRootToJson(
        GetStreetsStream$SubscriptionRoot instance) =>
    <String, dynamic>{
      'streets': instance.streets.map((e) => e.toJson()).toList(),
    };

AnalyzeUserAttendance$QueryRoot$Users$ServicesHistory$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields
    _$AnalyzeUserAttendance$QueryRoot$Users$ServicesHistory$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFieldsFromJson(
            Map<String, dynamic> json) =>
        AnalyzeUserAttendance$QueryRoot$Users$ServicesHistory$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields()
          ..dayId = json['dayId'] == null
              ? null
              : DateTime.parse(json['dayId'] as String);

Map<String, dynamic>
    _$AnalyzeUserAttendance$QueryRoot$Users$ServicesHistory$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFieldsToJson(
            AnalyzeUserAttendance$QueryRoot$Users$ServicesHistory$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields
                instance) =>
        <String, dynamic>{
          'dayId': instance.dayId?.toIso8601String(),
        };

AnalyzeUserAttendance$QueryRoot$Users$ServicesHistory$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields
    _$AnalyzeUserAttendance$QueryRoot$Users$ServicesHistory$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFieldsFromJson(
            Map<String, dynamic> json) =>
        AnalyzeUserAttendance$QueryRoot$Users$ServicesHistory$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields()
          ..count = json['count'] as int
          ..max = json['max'] == null
              ? null
              : AnalyzeUserAttendance$QueryRoot$Users$ServicesHistory$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields
                  .fromJson(json['max'] as Map<String, dynamic>);

Map<String, dynamic>
    _$AnalyzeUserAttendance$QueryRoot$Users$ServicesHistory$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFieldsToJson(
            AnalyzeUserAttendance$QueryRoot$Users$ServicesHistory$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields
                instance) =>
        <String, dynamic>{
          'count': instance.count,
          'max': instance.max?.toJson(),
        };

AnalyzeUserAttendance$QueryRoot$Users$ServicesHistory$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistory
    _$AnalyzeUserAttendance$QueryRoot$Users$ServicesHistory$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryFromJson(
            Map<String, dynamic> json) =>
        AnalyzeUserAttendance$QueryRoot$Users$ServicesHistory$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistory()
          ..dayId = DateTime.parse(json['dayId'] as String);

Map<String, dynamic>
    _$AnalyzeUserAttendance$QueryRoot$Users$ServicesHistory$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryToJson(
            AnalyzeUserAttendance$QueryRoot$Users$ServicesHistory$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistory
                instance) =>
        <String, dynamic>{
          'dayId': instance.dayId.toIso8601String(),
        };

AnalyzeUserAttendance$QueryRoot$Users$ServicesHistory$Services$HistoryAttendanceHistoryAggregate
    _$AnalyzeUserAttendance$QueryRoot$Users$ServicesHistory$Services$HistoryAttendanceHistoryAggregateFromJson(
            Map<String, dynamic> json) =>
        AnalyzeUserAttendance$QueryRoot$Users$ServicesHistory$Services$HistoryAttendanceHistoryAggregate()
          ..aggregate = json['aggregate'] == null
              ? null
              : AnalyzeUserAttendance$QueryRoot$Users$ServicesHistory$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields
                  .fromJson(json['aggregate'] as Map<String, dynamic>)
          ..nodes = (json['nodes'] as List<dynamic>)
              .map((e) =>
                  AnalyzeUserAttendance$QueryRoot$Users$ServicesHistory$Services$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistory
                      .fromJson(e as Map<String, dynamic>))
              .toList();

Map<String, dynamic>
    _$AnalyzeUserAttendance$QueryRoot$Users$ServicesHistory$Services$HistoryAttendanceHistoryAggregateToJson(
            AnalyzeUserAttendance$QueryRoot$Users$ServicesHistory$Services$HistoryAttendanceHistoryAggregate
                instance) =>
        <String, dynamic>{
          'aggregate': instance.aggregate?.toJson(),
          'nodes': instance.nodes.map((e) => e.toJson()).toList(),
        };

AnalyzeUserAttendance$QueryRoot$Users$ServicesHistory$Services$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsAggregateFields
    _$AnalyzeUserAttendance$QueryRoot$Users$ServicesHistory$Services$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsAggregateFieldsFromJson(
            Map<String, dynamic> json) =>
        AnalyzeUserAttendance$QueryRoot$Users$ServicesHistory$Services$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsAggregateFields()
          ..count = json['count'] as int;

Map<String, dynamic>
    _$AnalyzeUserAttendance$QueryRoot$Users$ServicesHistory$Services$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsAggregateFieldsToJson(
            AnalyzeUserAttendance$QueryRoot$Users$ServicesHistory$Services$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsAggregateFields
                instance) =>
        <String, dynamic>{
          'count': instance.count,
        };

AnalyzeUserAttendance$QueryRoot$Users$ServicesHistory$Services$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraints
    _$AnalyzeUserAttendance$QueryRoot$Users$ServicesHistory$Services$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsFromJson(
            Map<String, dynamic> json) =>
        AnalyzeUserAttendance$QueryRoot$Users$ServicesHistory$Services$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraints()
          ..dayId = DateTime.parse(json['dayId'] as String);

Map<String, dynamic>
    _$AnalyzeUserAttendance$QueryRoot$Users$ServicesHistory$Services$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsToJson(
            AnalyzeUserAttendance$QueryRoot$Users$ServicesHistory$Services$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraints
                instance) =>
        <String, dynamic>{
          'dayId': instance.dayId.toIso8601String(),
        };

AnalyzeUserAttendance$QueryRoot$Users$ServicesHistory$Services$HistoryAttendanceDaysConstraintsAggregate
    _$AnalyzeUserAttendance$QueryRoot$Users$ServicesHistory$Services$HistoryAttendanceDaysConstraintsAggregateFromJson(
            Map<String, dynamic> json) =>
        AnalyzeUserAttendance$QueryRoot$Users$ServicesHistory$Services$HistoryAttendanceDaysConstraintsAggregate()
          ..aggregate = json['aggregate'] == null
              ? null
              : AnalyzeUserAttendance$QueryRoot$Users$ServicesHistory$Services$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsAggregateFields
                  .fromJson(json['aggregate'] as Map<String, dynamic>)
          ..nodes = (json['nodes'] as List<dynamic>)
              .map((e) =>
                  AnalyzeUserAttendance$QueryRoot$Users$ServicesHistory$Services$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraints
                      .fromJson(e as Map<String, dynamic>))
              .toList();

Map<String, dynamic>
    _$AnalyzeUserAttendance$QueryRoot$Users$ServicesHistory$Services$HistoryAttendanceDaysConstraintsAggregateToJson(
            AnalyzeUserAttendance$QueryRoot$Users$ServicesHistory$Services$HistoryAttendanceDaysConstraintsAggregate
                instance) =>
        <String, dynamic>{
          'aggregate': instance.aggregate?.toJson(),
          'nodes': instance.nodes.map((e) => e.toJson()).toList(),
        };

AnalyzeUserAttendance$QueryRoot$Users$ServicesHistory$Services
    _$AnalyzeUserAttendance$QueryRoot$Users$ServicesHistory$ServicesFromJson(
            Map<String, dynamic> json) =>
        AnalyzeUserAttendance$QueryRoot$Users$ServicesHistory$Services()
          ..id = fromGraphQLUuidToDartUuidValue(json['id'])
          ..name = json['name'] as String
          ..color = json['color'] as int?
          ..attendanceHistoryAggregate =
              AnalyzeUserAttendance$QueryRoot$Users$ServicesHistory$Services$HistoryAttendanceHistoryAggregate
                  .fromJson(json['attendanceHistoryAggregate']
                      as Map<String, dynamic>)
          ..attendanceDaysConstraintsAggregate =
              AnalyzeUserAttendance$QueryRoot$Users$ServicesHistory$Services$HistoryAttendanceDaysConstraintsAggregate
                  .fromJson(json['attendanceDaysConstraintsAggregate']
                      as Map<String, dynamic>);

Map<String, dynamic>
    _$AnalyzeUserAttendance$QueryRoot$Users$ServicesHistory$ServicesToJson(
            AnalyzeUserAttendance$QueryRoot$Users$ServicesHistory$Services
                instance) =>
        <String, dynamic>{
          'id': fromDartUuidValueToGraphQLUuid(instance.id),
          'name': instance.name,
          'color': instance.color,
          'attendanceHistoryAggregate':
              instance.attendanceHistoryAggregate.toJson(),
          'attendanceDaysConstraintsAggregate':
              instance.attendanceDaysConstraintsAggregate.toJson(),
        };

AnalyzeUserAttendance$QueryRoot$Users$ServicesHistory
    _$AnalyzeUserAttendance$QueryRoot$Users$ServicesHistoryFromJson(
            Map<String, dynamic> json) =>
        AnalyzeUserAttendance$QueryRoot$Users$ServicesHistory()
          ..permissionId = fromGraphQLUuidToDartUuidValue(json['permissionId'])
          ..service = json['service'] == null
              ? null
              : AnalyzeUserAttendance$QueryRoot$Users$ServicesHistory$Services
                  .fromJson(json['service'] as Map<String, dynamic>);

Map<String, dynamic>
    _$AnalyzeUserAttendance$QueryRoot$Users$ServicesHistoryToJson(
            AnalyzeUserAttendance$QueryRoot$Users$ServicesHistory instance) =>
        <String, dynamic>{
          'permissionId': fromDartUuidValueToGraphQLUuid(instance.permissionId),
          'service': instance.service?.toJson(),
        };

AnalyzeUserAttendance$QueryRoot$Users$ClassesHistory$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields
    _$AnalyzeUserAttendance$QueryRoot$Users$ClassesHistory$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFieldsFromJson(
            Map<String, dynamic> json) =>
        AnalyzeUserAttendance$QueryRoot$Users$ClassesHistory$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields()
          ..dayId = json['dayId'] == null
              ? null
              : DateTime.parse(json['dayId'] as String);

Map<String, dynamic>
    _$AnalyzeUserAttendance$QueryRoot$Users$ClassesHistory$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFieldsToJson(
            AnalyzeUserAttendance$QueryRoot$Users$ClassesHistory$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields
                instance) =>
        <String, dynamic>{
          'dayId': instance.dayId?.toIso8601String(),
        };

AnalyzeUserAttendance$QueryRoot$Users$ClassesHistory$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields
    _$AnalyzeUserAttendance$QueryRoot$Users$ClassesHistory$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFieldsFromJson(
            Map<String, dynamic> json) =>
        AnalyzeUserAttendance$QueryRoot$Users$ClassesHistory$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields()
          ..count = json['count'] as int
          ..max = json['max'] == null
              ? null
              : AnalyzeUserAttendance$QueryRoot$Users$ClassesHistory$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields
                  .fromJson(json['max'] as Map<String, dynamic>);

Map<String, dynamic>
    _$AnalyzeUserAttendance$QueryRoot$Users$ClassesHistory$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFieldsToJson(
            AnalyzeUserAttendance$QueryRoot$Users$ClassesHistory$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields
                instance) =>
        <String, dynamic>{
          'count': instance.count,
          'max': instance.max?.toJson(),
        };

AnalyzeUserAttendance$QueryRoot$Users$ClassesHistory$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistory
    _$AnalyzeUserAttendance$QueryRoot$Users$ClassesHistory$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryFromJson(
            Map<String, dynamic> json) =>
        AnalyzeUserAttendance$QueryRoot$Users$ClassesHistory$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistory()
          ..dayId = DateTime.parse(json['dayId'] as String);

Map<String, dynamic>
    _$AnalyzeUserAttendance$QueryRoot$Users$ClassesHistory$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryToJson(
            AnalyzeUserAttendance$QueryRoot$Users$ClassesHistory$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistory
                instance) =>
        <String, dynamic>{
          'dayId': instance.dayId.toIso8601String(),
        };

AnalyzeUserAttendance$QueryRoot$Users$ClassesHistory$Classes$HistoryAttendanceHistoryAggregate
    _$AnalyzeUserAttendance$QueryRoot$Users$ClassesHistory$Classes$HistoryAttendanceHistoryAggregateFromJson(
            Map<String, dynamic> json) =>
        AnalyzeUserAttendance$QueryRoot$Users$ClassesHistory$Classes$HistoryAttendanceHistoryAggregate()
          ..aggregate = json['aggregate'] == null
              ? null
              : AnalyzeUserAttendance$QueryRoot$Users$ClassesHistory$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields
                  .fromJson(json['aggregate'] as Map<String, dynamic>)
          ..nodes = (json['nodes'] as List<dynamic>)
              .map((e) =>
                  AnalyzeUserAttendance$QueryRoot$Users$ClassesHistory$Classes$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistory
                      .fromJson(e as Map<String, dynamic>))
              .toList();

Map<String, dynamic>
    _$AnalyzeUserAttendance$QueryRoot$Users$ClassesHistory$Classes$HistoryAttendanceHistoryAggregateToJson(
            AnalyzeUserAttendance$QueryRoot$Users$ClassesHistory$Classes$HistoryAttendanceHistoryAggregate
                instance) =>
        <String, dynamic>{
          'aggregate': instance.aggregate?.toJson(),
          'nodes': instance.nodes.map((e) => e.toJson()).toList(),
        };

AnalyzeUserAttendance$QueryRoot$Users$ClassesHistory$Classes$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsAggregateFields
    _$AnalyzeUserAttendance$QueryRoot$Users$ClassesHistory$Classes$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsAggregateFieldsFromJson(
            Map<String, dynamic> json) =>
        AnalyzeUserAttendance$QueryRoot$Users$ClassesHistory$Classes$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsAggregateFields()
          ..count = json['count'] as int;

Map<String, dynamic>
    _$AnalyzeUserAttendance$QueryRoot$Users$ClassesHistory$Classes$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsAggregateFieldsToJson(
            AnalyzeUserAttendance$QueryRoot$Users$ClassesHistory$Classes$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsAggregateFields
                instance) =>
        <String, dynamic>{
          'count': instance.count,
        };

AnalyzeUserAttendance$QueryRoot$Users$ClassesHistory$Classes$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraints
    _$AnalyzeUserAttendance$QueryRoot$Users$ClassesHistory$Classes$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsFromJson(
            Map<String, dynamic> json) =>
        AnalyzeUserAttendance$QueryRoot$Users$ClassesHistory$Classes$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraints()
          ..dayId = DateTime.parse(json['dayId'] as String);

Map<String, dynamic>
    _$AnalyzeUserAttendance$QueryRoot$Users$ClassesHistory$Classes$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsToJson(
            AnalyzeUserAttendance$QueryRoot$Users$ClassesHistory$Classes$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraints
                instance) =>
        <String, dynamic>{
          'dayId': instance.dayId.toIso8601String(),
        };

AnalyzeUserAttendance$QueryRoot$Users$ClassesHistory$Classes$HistoryAttendanceDaysConstraintsAggregate
    _$AnalyzeUserAttendance$QueryRoot$Users$ClassesHistory$Classes$HistoryAttendanceDaysConstraintsAggregateFromJson(
            Map<String, dynamic> json) =>
        AnalyzeUserAttendance$QueryRoot$Users$ClassesHistory$Classes$HistoryAttendanceDaysConstraintsAggregate()
          ..aggregate = json['aggregate'] == null
              ? null
              : AnalyzeUserAttendance$QueryRoot$Users$ClassesHistory$Classes$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsAggregateFields
                  .fromJson(json['aggregate'] as Map<String, dynamic>)
          ..nodes = (json['nodes'] as List<dynamic>)
              .map((e) =>
                  AnalyzeUserAttendance$QueryRoot$Users$ClassesHistory$Classes$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraints
                      .fromJson(e as Map<String, dynamic>))
              .toList();

Map<String, dynamic>
    _$AnalyzeUserAttendance$QueryRoot$Users$ClassesHistory$Classes$HistoryAttendanceDaysConstraintsAggregateToJson(
            AnalyzeUserAttendance$QueryRoot$Users$ClassesHistory$Classes$HistoryAttendanceDaysConstraintsAggregate
                instance) =>
        <String, dynamic>{
          'aggregate': instance.aggregate?.toJson(),
          'nodes': instance.nodes.map((e) => e.toJson()).toList(),
        };

AnalyzeUserAttendance$QueryRoot$Users$ClassesHistory$Classes
    _$AnalyzeUserAttendance$QueryRoot$Users$ClassesHistory$ClassesFromJson(
            Map<String, dynamic> json) =>
        AnalyzeUserAttendance$QueryRoot$Users$ClassesHistory$Classes()
          ..id = fromGraphQLUuidToDartUuidValue(json['id'])
          ..name = json['name'] as String
          ..color = json['color'] as int?
          ..attendanceHistoryAggregate =
              AnalyzeUserAttendance$QueryRoot$Users$ClassesHistory$Classes$HistoryAttendanceHistoryAggregate
                  .fromJson(json['attendanceHistoryAggregate']
                      as Map<String, dynamic>)
          ..attendanceDaysConstraintsAggregate =
              AnalyzeUserAttendance$QueryRoot$Users$ClassesHistory$Classes$HistoryAttendanceDaysConstraintsAggregate
                  .fromJson(json['attendanceDaysConstraintsAggregate']
                      as Map<String, dynamic>);

Map<String, dynamic>
    _$AnalyzeUserAttendance$QueryRoot$Users$ClassesHistory$ClassesToJson(
            AnalyzeUserAttendance$QueryRoot$Users$ClassesHistory$Classes
                instance) =>
        <String, dynamic>{
          'id': fromDartUuidValueToGraphQLUuid(instance.id),
          'name': instance.name,
          'color': instance.color,
          'attendanceHistoryAggregate':
              instance.attendanceHistoryAggregate.toJson(),
          'attendanceDaysConstraintsAggregate':
              instance.attendanceDaysConstraintsAggregate.toJson(),
        };

AnalyzeUserAttendance$QueryRoot$Users$ClassesHistory
    _$AnalyzeUserAttendance$QueryRoot$Users$ClassesHistoryFromJson(
            Map<String, dynamic> json) =>
        AnalyzeUserAttendance$QueryRoot$Users$ClassesHistory()
          ..permissionId = fromGraphQLUuidToDartUuidValue(json['permissionId'])
          ..classes = (json['classes'] as List<dynamic>)
              .map((e) =>
                  AnalyzeUserAttendance$QueryRoot$Users$ClassesHistory$Classes
                      .fromJson(e as Map<String, dynamic>))
              .toList();

Map<String, dynamic>
    _$AnalyzeUserAttendance$QueryRoot$Users$ClassesHistoryToJson(
            AnalyzeUserAttendance$QueryRoot$Users$ClassesHistory instance) =>
        <String, dynamic>{
          'permissionId': fromDartUuidValueToGraphQLUuid(instance.permissionId),
          'classes': instance.classes.map((e) => e.toJson()).toList(),
        };

AnalyzeUserAttendance$QueryRoot$Users$GroupsHistory$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields
    _$AnalyzeUserAttendance$QueryRoot$Users$GroupsHistory$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFieldsFromJson(
            Map<String, dynamic> json) =>
        AnalyzeUserAttendance$QueryRoot$Users$GroupsHistory$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields()
          ..dayId = json['dayId'] == null
              ? null
              : DateTime.parse(json['dayId'] as String);

Map<String, dynamic>
    _$AnalyzeUserAttendance$QueryRoot$Users$GroupsHistory$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFieldsToJson(
            AnalyzeUserAttendance$QueryRoot$Users$GroupsHistory$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields
                instance) =>
        <String, dynamic>{
          'dayId': instance.dayId?.toIso8601String(),
        };

AnalyzeUserAttendance$QueryRoot$Users$GroupsHistory$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields
    _$AnalyzeUserAttendance$QueryRoot$Users$GroupsHistory$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFieldsFromJson(
            Map<String, dynamic> json) =>
        AnalyzeUserAttendance$QueryRoot$Users$GroupsHistory$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields()
          ..count = json['count'] as int
          ..max = json['max'] == null
              ? null
              : AnalyzeUserAttendance$QueryRoot$Users$GroupsHistory$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields$HistoryAttendanceHistoryMaxFields
                  .fromJson(json['max'] as Map<String, dynamic>);

Map<String, dynamic>
    _$AnalyzeUserAttendance$QueryRoot$Users$GroupsHistory$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFieldsToJson(
            AnalyzeUserAttendance$QueryRoot$Users$GroupsHistory$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields
                instance) =>
        <String, dynamic>{
          'count': instance.count,
          'max': instance.max?.toJson(),
        };

AnalyzeUserAttendance$QueryRoot$Users$GroupsHistory$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistory
    _$AnalyzeUserAttendance$QueryRoot$Users$GroupsHistory$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryFromJson(
            Map<String, dynamic> json) =>
        AnalyzeUserAttendance$QueryRoot$Users$GroupsHistory$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistory()
          ..dayId = DateTime.parse(json['dayId'] as String);

Map<String, dynamic>
    _$AnalyzeUserAttendance$QueryRoot$Users$GroupsHistory$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryToJson(
            AnalyzeUserAttendance$QueryRoot$Users$GroupsHistory$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistory
                instance) =>
        <String, dynamic>{
          'dayId': instance.dayId.toIso8601String(),
        };

AnalyzeUserAttendance$QueryRoot$Users$GroupsHistory$Groups$HistoryAttendanceHistoryAggregate
    _$AnalyzeUserAttendance$QueryRoot$Users$GroupsHistory$Groups$HistoryAttendanceHistoryAggregateFromJson(
            Map<String, dynamic> json) =>
        AnalyzeUserAttendance$QueryRoot$Users$GroupsHistory$Groups$HistoryAttendanceHistoryAggregate()
          ..aggregate = json['aggregate'] == null
              ? null
              : AnalyzeUserAttendance$QueryRoot$Users$GroupsHistory$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistoryAggregateFields
                  .fromJson(json['aggregate'] as Map<String, dynamic>)
          ..nodes = (json['nodes'] as List<dynamic>)
              .map((e) =>
                  AnalyzeUserAttendance$QueryRoot$Users$GroupsHistory$Groups$HistoryAttendanceHistoryAggregate$HistoryAttendanceHistory
                      .fromJson(e as Map<String, dynamic>))
              .toList();

Map<String, dynamic>
    _$AnalyzeUserAttendance$QueryRoot$Users$GroupsHistory$Groups$HistoryAttendanceHistoryAggregateToJson(
            AnalyzeUserAttendance$QueryRoot$Users$GroupsHistory$Groups$HistoryAttendanceHistoryAggregate
                instance) =>
        <String, dynamic>{
          'aggregate': instance.aggregate?.toJson(),
          'nodes': instance.nodes.map((e) => e.toJson()).toList(),
        };

AnalyzeUserAttendance$QueryRoot$Users$GroupsHistory$Groups$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsAggregateFields
    _$AnalyzeUserAttendance$QueryRoot$Users$GroupsHistory$Groups$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsAggregateFieldsFromJson(
            Map<String, dynamic> json) =>
        AnalyzeUserAttendance$QueryRoot$Users$GroupsHistory$Groups$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsAggregateFields()
          ..count = json['count'] as int;

Map<String, dynamic>
    _$AnalyzeUserAttendance$QueryRoot$Users$GroupsHistory$Groups$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsAggregateFieldsToJson(
            AnalyzeUserAttendance$QueryRoot$Users$GroupsHistory$Groups$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsAggregateFields
                instance) =>
        <String, dynamic>{
          'count': instance.count,
        };

AnalyzeUserAttendance$QueryRoot$Users$GroupsHistory$Groups$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraints
    _$AnalyzeUserAttendance$QueryRoot$Users$GroupsHistory$Groups$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsFromJson(
            Map<String, dynamic> json) =>
        AnalyzeUserAttendance$QueryRoot$Users$GroupsHistory$Groups$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraints()
          ..dayId = DateTime.parse(json['dayId'] as String);

Map<String, dynamic>
    _$AnalyzeUserAttendance$QueryRoot$Users$GroupsHistory$Groups$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsToJson(
            AnalyzeUserAttendance$QueryRoot$Users$GroupsHistory$Groups$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraints
                instance) =>
        <String, dynamic>{
          'dayId': instance.dayId.toIso8601String(),
        };

AnalyzeUserAttendance$QueryRoot$Users$GroupsHistory$Groups$HistoryAttendanceDaysConstraintsAggregate
    _$AnalyzeUserAttendance$QueryRoot$Users$GroupsHistory$Groups$HistoryAttendanceDaysConstraintsAggregateFromJson(
            Map<String, dynamic> json) =>
        AnalyzeUserAttendance$QueryRoot$Users$GroupsHistory$Groups$HistoryAttendanceDaysConstraintsAggregate()
          ..aggregate = json['aggregate'] == null
              ? null
              : AnalyzeUserAttendance$QueryRoot$Users$GroupsHistory$Groups$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraintsAggregateFields
                  .fromJson(json['aggregate'] as Map<String, dynamic>)
          ..nodes = (json['nodes'] as List<dynamic>)
              .map((e) =>
                  AnalyzeUserAttendance$QueryRoot$Users$GroupsHistory$Groups$HistoryAttendanceDaysConstraintsAggregate$HistoryAttendanceDaysConstraints
                      .fromJson(e as Map<String, dynamic>))
              .toList();

Map<String, dynamic>
    _$AnalyzeUserAttendance$QueryRoot$Users$GroupsHistory$Groups$HistoryAttendanceDaysConstraintsAggregateToJson(
            AnalyzeUserAttendance$QueryRoot$Users$GroupsHistory$Groups$HistoryAttendanceDaysConstraintsAggregate
                instance) =>
        <String, dynamic>{
          'aggregate': instance.aggregate?.toJson(),
          'nodes': instance.nodes.map((e) => e.toJson()).toList(),
        };

AnalyzeUserAttendance$QueryRoot$Users$GroupsHistory$Groups
    _$AnalyzeUserAttendance$QueryRoot$Users$GroupsHistory$GroupsFromJson(
            Map<String, dynamic> json) =>
        AnalyzeUserAttendance$QueryRoot$Users$GroupsHistory$Groups()
          ..id = fromGraphQLUuidToDartUuidValue(json['id'])
          ..name = json['name'] as String
          ..color = json['color'] as int?
          ..attendanceHistoryAggregate =
              AnalyzeUserAttendance$QueryRoot$Users$GroupsHistory$Groups$HistoryAttendanceHistoryAggregate
                  .fromJson(json['attendanceHistoryAggregate']
                      as Map<String, dynamic>)
          ..attendanceDaysConstraintsAggregate =
              AnalyzeUserAttendance$QueryRoot$Users$GroupsHistory$Groups$HistoryAttendanceDaysConstraintsAggregate
                  .fromJson(json['attendanceDaysConstraintsAggregate']
                      as Map<String, dynamic>);

Map<String,
    dynamic> _$AnalyzeUserAttendance$QueryRoot$Users$GroupsHistory$GroupsToJson(
        AnalyzeUserAttendance$QueryRoot$Users$GroupsHistory$Groups instance) =>
    <String, dynamic>{
      'id': fromDartUuidValueToGraphQLUuid(instance.id),
      'name': instance.name,
      'color': instance.color,
      'attendanceHistoryAggregate':
          instance.attendanceHistoryAggregate.toJson(),
      'attendanceDaysConstraintsAggregate':
          instance.attendanceDaysConstraintsAggregate.toJson(),
    };

AnalyzeUserAttendance$QueryRoot$Users$GroupsHistory
    _$AnalyzeUserAttendance$QueryRoot$Users$GroupsHistoryFromJson(
            Map<String, dynamic> json) =>
        AnalyzeUserAttendance$QueryRoot$Users$GroupsHistory()
          ..permissionId = fromGraphQLUuidToDartUuidValue(json['permissionId'])
          ..group = json['group'] == null
              ? null
              : AnalyzeUserAttendance$QueryRoot$Users$GroupsHistory$Groups
                  .fromJson(json['group'] as Map<String, dynamic>);

Map<String, dynamic>
    _$AnalyzeUserAttendance$QueryRoot$Users$GroupsHistoryToJson(
            AnalyzeUserAttendance$QueryRoot$Users$GroupsHistory instance) =>
        <String, dynamic>{
          'permissionId': fromDartUuidValueToGraphQLUuid(instance.permissionId),
          'group': instance.group?.toJson(),
        };

AnalyzeUserAttendance$QueryRoot$Users
    _$AnalyzeUserAttendance$QueryRoot$UsersFromJson(
            Map<String, dynamic> json) =>
        AnalyzeUserAttendance$QueryRoot$Users()
          ..uid = fromGraphQLUuidToDartUuidValue(json['uid'])
          ..name = json['name'] as String
          ..servicesHistory = (json['servicesHistory'] as List<dynamic>)
              .map((e) => AnalyzeUserAttendance$QueryRoot$Users$ServicesHistory
                  .fromJson(e as Map<String, dynamic>))
              .toList()
          ..classesHistory = (json['classesHistory'] as List<dynamic>)
              .map((e) =>
                  AnalyzeUserAttendance$QueryRoot$Users$ClassesHistory.fromJson(
                      e as Map<String, dynamic>))
              .toList()
          ..groupsHistory = (json['groupsHistory'] as List<dynamic>)
              .map((e) =>
                  AnalyzeUserAttendance$QueryRoot$Users$GroupsHistory.fromJson(
                      e as Map<String, dynamic>))
              .toList();

Map<String, dynamic> _$AnalyzeUserAttendance$QueryRoot$UsersToJson(
        AnalyzeUserAttendance$QueryRoot$Users instance) =>
    <String, dynamic>{
      'uid': fromDartUuidValueToGraphQLUuid(instance.uid),
      'name': instance.name,
      'servicesHistory':
          instance.servicesHistory.map((e) => e.toJson()).toList(),
      'classesHistory': instance.classesHistory.map((e) => e.toJson()).toList(),
      'groupsHistory': instance.groupsHistory.map((e) => e.toJson()).toList(),
    };

AnalyzeUserAttendance$QueryRoot _$AnalyzeUserAttendance$QueryRootFromJson(
        Map<String, dynamic> json) =>
    AnalyzeUserAttendance$QueryRoot()
      ..usersByPk = json['usersByPk'] == null
          ? null
          : AnalyzeUserAttendance$QueryRoot$Users.fromJson(
              json['usersByPk'] as Map<String, dynamic>);

Map<String, dynamic> _$AnalyzeUserAttendance$QueryRootToJson(
        AnalyzeUserAttendance$QueryRoot instance) =>
    <String, dynamic>{
      'usersByPk': instance.usersByPk?.toJson(),
    };

GetUserInfoStream$SubscriptionRoot$Users$UsersData
    _$GetUserInfoStream$SubscriptionRoot$Users$UsersDataFromJson(
            Map<String, dynamic> json) =>
        GetUserInfoStream$SubscriptionRoot$Users$UsersData()
          ..uid = fromGraphQLUuidToDartUuidValue(json['uid'])
          ..firebaseAuthUid = json['firebaseAuthUid'] as String
          ..email = json['email'] as String
          ..permissions = (json['permissions'] as List<dynamic>)
              .map((e) => e as String)
              .toList();

Map<String, dynamic> _$GetUserInfoStream$SubscriptionRoot$Users$UsersDataToJson(
        GetUserInfoStream$SubscriptionRoot$Users$UsersData instance) =>
    <String, dynamic>{
      'uid': fromDartUuidValueToGraphQLUuid(instance.uid),
      'firebaseAuthUid': instance.firebaseAuthUid,
      'email': instance.email,
      'permissions': instance.permissions,
    };

GetUserInfoStream$SubscriptionRoot$Users$Persons$ShammasLevels
    _$GetUserInfoStream$SubscriptionRoot$Users$Persons$ShammasLevelsFromJson(
            Map<String, dynamic> json) =>
        GetUserInfoStream$SubscriptionRoot$Users$Persons$ShammasLevels()
          ..id = fromGraphQLUuidToDartUuidValue(json['id'])
          ..name = json['name'] as String
          ..order = json['order'] as int;

Map<String, dynamic>
    _$GetUserInfoStream$SubscriptionRoot$Users$Persons$ShammasLevelsToJson(
            GetUserInfoStream$SubscriptionRoot$Users$Persons$ShammasLevels
                instance) =>
        <String, dynamic>{
          'id': fromDartUuidValueToGraphQLUuid(instance.id),
          'name': instance.name,
          'order': instance.order,
        };

GetUserInfoStream$SubscriptionRoot$Users$Persons
    _$GetUserInfoStream$SubscriptionRoot$Users$PersonsFromJson(
            Map<String, dynamic> json) =>
        GetUserInfoStream$SubscriptionRoot$Users$Persons()
          ..id = fromGraphQLUuidToDartUuidValue(json['id'])
          ..name = json['name'] as String
          ..address = json['address'] as String?
          ..geolocation = fromGraphQLGeographyNullableToDartJsonNullable(
              json['geolocation'])
          ..mainPhone = json['mainPhone'] as String?
          ..otherPhones = fromGraphQLJsonbToDartJson(json['otherPhones'])
          ..birthdate = json['birthdate'] == null
              ? null
              : DateTime.parse(json['birthdate'] as String)
          ..gender = json['gender'] as bool
          ..isShammas = json['isShammas'] as bool
          ..shammasLevel = json['shammasLevel'] == null
              ? null
              : GetUserInfoStream$SubscriptionRoot$Users$Persons$ShammasLevels
                  .fromJson(json['shammasLevel'] as Map<String, dynamic>)
          ..schoolId =
              fromGraphQLUuidNullableToDartUuidValueNullable(json['schoolId'])
          ..collegeId =
              fromGraphQLUuidNullableToDartUuidValueNullable(json['collegeId'])
          ..churchId =
              fromGraphQLUuidNullableToDartUuidValueNullable(json['churchId'])
          ..fatherId =
              fromGraphQLUuidNullableToDartUuidValueNullable(json['fatherId'])
          ..isStudent = json['isStudent'] as bool?
          ..jobId =
              fromGraphQLUuidNullableToDartUuidValueNullable(json['jobId'])
          ..jobDescription = json['jobDescription'] as String?
          ..qualificationId = fromGraphQLUuidNullableToDartUuidValueNullable(
              json['qualificationId'])
          ..personTypeId = fromGraphQLUuidNullableToDartUuidValueNullable(
              json['personTypeId'])
          ..stateId =
              fromGraphQLUuidNullableToDartUuidValueNullable(json['stateId'])
          ..isServant = json['isServant'] as bool
          ..notes = json['notes'] as String?
          ..familyId =
              fromGraphQLUuidNullableToDartUuidValueNullable(json['familyId'])
          ..storeId =
              fromGraphQLUuidNullableToDartUuidValueNullable(json['storeId'])
          ..studyYearId = json['studyYearId'] as int?
          ..color = json['color'] as int?
          ..photoUpdatedAt = json['photoUpdatedAt'] == null
              ? null
              : DateTime.parse(json['photoUpdatedAt'] as String)
          ..lastKodas =
              fromGraphQLJsonbNullableToDartJsonNullable(json['lastKodas'])
          ..lastConfession = fromGraphQLJsonbNullableToDartJsonNullable(
              json['lastConfession']);

Map<String, dynamic> _$GetUserInfoStream$SubscriptionRoot$Users$PersonsToJson(
        GetUserInfoStream$SubscriptionRoot$Users$Persons instance) =>
    <String, dynamic>{
      'id': fromDartUuidValueToGraphQLUuid(instance.id),
      'name': instance.name,
      'address': instance.address,
      'geolocation':
          fromDartJsonNullableToGraphQLGeographyNullable(instance.geolocation),
      'mainPhone': instance.mainPhone,
      'otherPhones': fromDartJsonToGraphQLJsonb(instance.otherPhones),
      'birthdate': instance.birthdate?.toIso8601String(),
      'gender': instance.gender,
      'isShammas': instance.isShammas,
      'shammasLevel': instance.shammasLevel?.toJson(),
      'schoolId':
          fromDartUuidValueNullableToGraphQLUuidNullable(instance.schoolId),
      'collegeId':
          fromDartUuidValueNullableToGraphQLUuidNullable(instance.collegeId),
      'churchId':
          fromDartUuidValueNullableToGraphQLUuidNullable(instance.churchId),
      'fatherId':
          fromDartUuidValueNullableToGraphQLUuidNullable(instance.fatherId),
      'isStudent': instance.isStudent,
      'jobId': fromDartUuidValueNullableToGraphQLUuidNullable(instance.jobId),
      'jobDescription': instance.jobDescription,
      'qualificationId': fromDartUuidValueNullableToGraphQLUuidNullable(
          instance.qualificationId),
      'personTypeId':
          fromDartUuidValueNullableToGraphQLUuidNullable(instance.personTypeId),
      'stateId':
          fromDartUuidValueNullableToGraphQLUuidNullable(instance.stateId),
      'isServant': instance.isServant,
      'notes': instance.notes,
      'familyId':
          fromDartUuidValueNullableToGraphQLUuidNullable(instance.familyId),
      'storeId':
          fromDartUuidValueNullableToGraphQLUuidNullable(instance.storeId),
      'studyYearId': instance.studyYearId,
      'color': instance.color,
      'photoUpdatedAt': instance.photoUpdatedAt?.toIso8601String(),
      'lastKodas':
          fromDartJsonNullableToGraphQLJsonbNullable(instance.lastKodas),
      'lastConfession':
          fromDartJsonNullableToGraphQLJsonbNullable(instance.lastConfession),
    };

GetUserInfoStream$SubscriptionRoot$Users
    _$GetUserInfoStream$SubscriptionRoot$UsersFromJson(
            Map<String, dynamic> json) =>
        GetUserInfoStream$SubscriptionRoot$Users()
          ..uid = fromGraphQLUuidToDartUuidValue(json['uid'])
          ..name = json['name'] as String
          ..photoUpdatedAt = json['photoUpdatedAt'] == null
              ? null
              : DateTime.parse(json['photoUpdatedAt'] as String)
          ..userData = json['userData'] == null
              ? null
              : GetUserInfoStream$SubscriptionRoot$Users$UsersData.fromJson(
                  json['userData'] as Map<String, dynamic>)
          ..person = json['person'] == null
              ? null
              : GetUserInfoStream$SubscriptionRoot$Users$Persons.fromJson(
                  json['person'] as Map<String, dynamic>);

Map<String, dynamic> _$GetUserInfoStream$SubscriptionRoot$UsersToJson(
        GetUserInfoStream$SubscriptionRoot$Users instance) =>
    <String, dynamic>{
      'uid': fromDartUuidValueToGraphQLUuid(instance.uid),
      'name': instance.name,
      'photoUpdatedAt': instance.photoUpdatedAt?.toIso8601String(),
      'userData': instance.userData?.toJson(),
      'person': instance.person?.toJson(),
    };

GetUserInfoStream$SubscriptionRoot _$GetUserInfoStream$SubscriptionRootFromJson(
        Map<String, dynamic> json) =>
    GetUserInfoStream$SubscriptionRoot()
      ..usersByPk = json['usersByPk'] == null
          ? null
          : GetUserInfoStream$SubscriptionRoot$Users.fromJson(
              json['usersByPk'] as Map<String, dynamic>);

Map<String, dynamic> _$GetUserInfoStream$SubscriptionRootToJson(
        GetUserInfoStream$SubscriptionRoot instance) =>
    <String, dynamic>{
      'usersByPk': instance.usersByPk?.toJson(),
    };

WatchUser$SubscriptionRoot$Users$Persons
    _$WatchUser$SubscriptionRoot$Users$PersonsFromJson(
            Map<String, dynamic> json) =>
        WatchUser$SubscriptionRoot$Users$Persons()
          ..id = fromGraphQLUuidToDartUuidValue(json['id'])
          ..name = json['name'] as String
          ..color = json['color'] as int?
          ..photoUpdatedAt = json['photoUpdatedAt'] == null
              ? null
              : DateTime.parse(json['photoUpdatedAt'] as String);

Map<String, dynamic> _$WatchUser$SubscriptionRoot$Users$PersonsToJson(
        WatchUser$SubscriptionRoot$Users$Persons instance) =>
    <String, dynamic>{
      'id': fromDartUuidValueToGraphQLUuid(instance.id),
      'name': instance.name,
      'color': instance.color,
      'photoUpdatedAt': instance.photoUpdatedAt?.toIso8601String(),
    };

WatchUser$SubscriptionRoot$Users$UsersPermissions$Areas
    _$WatchUser$SubscriptionRoot$Users$UsersPermissions$AreasFromJson(
            Map<String, dynamic> json) =>
        WatchUser$SubscriptionRoot$Users$UsersPermissions$Areas()
          ..id = fromGraphQLUuidToDartUuidValue(json['id'])
          ..name = json['name'] as String
          ..color = json['color'] as int?
          ..photoUpdatedAt = json['photoUpdatedAt'] == null
              ? null
              : DateTime.parse(json['photoUpdatedAt'] as String);

Map<String, dynamic>
    _$WatchUser$SubscriptionRoot$Users$UsersPermissions$AreasToJson(
            WatchUser$SubscriptionRoot$Users$UsersPermissions$Areas instance) =>
        <String, dynamic>{
          'id': fromDartUuidValueToGraphQLUuid(instance.id),
          'name': instance.name,
          'color': instance.color,
          'photoUpdatedAt': instance.photoUpdatedAt?.toIso8601String(),
        };

WatchUser$SubscriptionRoot$Users$UsersPermissions$Services
    _$WatchUser$SubscriptionRoot$Users$UsersPermissions$ServicesFromJson(
            Map<String, dynamic> json) =>
        WatchUser$SubscriptionRoot$Users$UsersPermissions$Services()
          ..id = fromGraphQLUuidToDartUuidValue(json['id'])
          ..name = json['name'] as String
          ..color = json['color'] as int?
          ..photoUpdatedAt = json['photoUpdatedAt'] == null
              ? null
              : DateTime.parse(json['photoUpdatedAt'] as String);

Map<String,
    dynamic> _$WatchUser$SubscriptionRoot$Users$UsersPermissions$ServicesToJson(
        WatchUser$SubscriptionRoot$Users$UsersPermissions$Services instance) =>
    <String, dynamic>{
      'id': fromDartUuidValueToGraphQLUuid(instance.id),
      'name': instance.name,
      'color': instance.color,
      'photoUpdatedAt': instance.photoUpdatedAt?.toIso8601String(),
    };

WatchUser$SubscriptionRoot$Users$UsersPermissions$StudyYears
    _$WatchUser$SubscriptionRoot$Users$UsersPermissions$StudyYearsFromJson(
            Map<String, dynamic> json) =>
        WatchUser$SubscriptionRoot$Users$UsersPermissions$StudyYears()
          ..name = json['name'] as String
          ..order = json['order'] as int;

Map<String, dynamic>
    _$WatchUser$SubscriptionRoot$Users$UsersPermissions$StudyYearsToJson(
            WatchUser$SubscriptionRoot$Users$UsersPermissions$StudyYears
                instance) =>
        <String, dynamic>{
          'name': instance.name,
          'order': instance.order,
        };

WatchUser$SubscriptionRoot$Users$UsersPermissions$Classes
    _$WatchUser$SubscriptionRoot$Users$UsersPermissions$ClassesFromJson(
            Map<String, dynamic> json) =>
        WatchUser$SubscriptionRoot$Users$UsersPermissions$Classes()
          ..id = fromGraphQLUuidToDartUuidValue(json['id'])
          ..name = json['name'] as String
          ..color = json['color'] as int?
          ..photoUpdatedAt = json['photoUpdatedAt'] == null
              ? null
              : DateTime.parse(json['photoUpdatedAt'] as String);

Map<String,
    dynamic> _$WatchUser$SubscriptionRoot$Users$UsersPermissions$ClassesToJson(
        WatchUser$SubscriptionRoot$Users$UsersPermissions$Classes instance) =>
    <String, dynamic>{
      'id': fromDartUuidValueToGraphQLUuid(instance.id),
      'name': instance.name,
      'color': instance.color,
      'photoUpdatedAt': instance.photoUpdatedAt?.toIso8601String(),
    };

WatchUser$SubscriptionRoot$Users$UsersPermissions$Groups
    _$WatchUser$SubscriptionRoot$Users$UsersPermissions$GroupsFromJson(
            Map<String, dynamic> json) =>
        WatchUser$SubscriptionRoot$Users$UsersPermissions$Groups()
          ..id = fromGraphQLUuidToDartUuidValue(json['id'])
          ..name = json['name'] as String
          ..color = json['color'] as int?
          ..photoUpdatedAt = json['photoUpdatedAt'] == null
              ? null
              : DateTime.parse(json['photoUpdatedAt'] as String);

Map<String,
    dynamic> _$WatchUser$SubscriptionRoot$Users$UsersPermissions$GroupsToJson(
        WatchUser$SubscriptionRoot$Users$UsersPermissions$Groups instance) =>
    <String, dynamic>{
      'id': fromDartUuidValueToGraphQLUuid(instance.id),
      'name': instance.name,
      'color': instance.color,
      'photoUpdatedAt': instance.photoUpdatedAt?.toIso8601String(),
    };

WatchUser$SubscriptionRoot$Users$UsersPermissions
    _$WatchUser$SubscriptionRoot$Users$UsersPermissionsFromJson(
            Map<String, dynamic> json) =>
        WatchUser$SubscriptionRoot$Users$UsersPermissions()
          ..permissionId = fromGraphQLUuidToDartUuidValue(json['permissionId'])
          ..area = json['area'] == null
              ? null
              : WatchUser$SubscriptionRoot$Users$UsersPermissions$Areas
                  .fromJson(json['area'] as Map<String, dynamic>)
          ..areaAllowEdit = json['areaAllowEdit'] as bool?
          ..areaAdminOnUsers = json['areaAdminOnUsers'] as bool?
          ..service = json['service'] == null
              ? null
              : WatchUser$SubscriptionRoot$Users$UsersPermissions$Services
                  .fromJson(json['service'] as Map<String, dynamic>)
          ..serviceStudyYearData = json['serviceStudyYearData'] == null
              ? null
              : WatchUser$SubscriptionRoot$Users$UsersPermissions$StudyYears
                  .fromJson(
                      json['serviceStudyYearData'] as Map<String, dynamic>)
          ..serviceGender = json['serviceGender'] as bool?
          ..serviceAllowEdit = json['serviceAllowEdit'] as bool?
          ..serviceAdminOnUsers = json['serviceAdminOnUsers'] as bool?
          ..classes = (json['classes'] as List<dynamic>)
              .map((e) =>
                  WatchUser$SubscriptionRoot$Users$UsersPermissions$Classes
                      .fromJson(e as Map<String, dynamic>))
              .toList()
          ..group = json['group'] == null
              ? null
              : WatchUser$SubscriptionRoot$Users$UsersPermissions$Groups
                  .fromJson(json['group'] as Map<String, dynamic>)
          ..groupAllowEdit = json['groupAllowEdit'] as bool?
          ..groupAdminOnUsers = json['groupAdminOnUsers'] as bool?;

Map<String, dynamic> _$WatchUser$SubscriptionRoot$Users$UsersPermissionsToJson(
        WatchUser$SubscriptionRoot$Users$UsersPermissions instance) =>
    <String, dynamic>{
      'permissionId': fromDartUuidValueToGraphQLUuid(instance.permissionId),
      'area': instance.area?.toJson(),
      'areaAllowEdit': instance.areaAllowEdit,
      'areaAdminOnUsers': instance.areaAdminOnUsers,
      'service': instance.service?.toJson(),
      'serviceStudyYearData': instance.serviceStudyYearData?.toJson(),
      'serviceGender': instance.serviceGender,
      'serviceAllowEdit': instance.serviceAllowEdit,
      'serviceAdminOnUsers': instance.serviceAdminOnUsers,
      'classes': instance.classes.map((e) => e.toJson()).toList(),
      'group': instance.group?.toJson(),
      'groupAllowEdit': instance.groupAllowEdit,
      'groupAdminOnUsers': instance.groupAdminOnUsers,
    };

WatchUser$SubscriptionRoot$Users$UsersData
    _$WatchUser$SubscriptionRoot$Users$UsersDataFromJson(
            Map<String, dynamic> json) =>
        WatchUser$SubscriptionRoot$Users$UsersData()
          ..uid = fromGraphQLUuidToDartUuidValue(json['uid'])
          ..email = json['email'] as String
          ..lastEdit =
              fromGraphQLJsonbNullableToDartJsonNullable(json['lastEdit'])
          ..permissions = (json['permissions'] as List<dynamic>)
              .map((e) => e as String)
              .toList();

Map<String, dynamic> _$WatchUser$SubscriptionRoot$Users$UsersDataToJson(
        WatchUser$SubscriptionRoot$Users$UsersData instance) =>
    <String, dynamic>{
      'uid': fromDartUuidValueToGraphQLUuid(instance.uid),
      'email': instance.email,
      'lastEdit': fromDartJsonNullableToGraphQLJsonbNullable(instance.lastEdit),
      'permissions': instance.permissions,
    };

WatchUser$SubscriptionRoot$Users _$WatchUser$SubscriptionRoot$UsersFromJson(
        Map<String, dynamic> json) =>
    WatchUser$SubscriptionRoot$Users()
      ..uid = fromGraphQLUuidToDartUuidValue(json['uid'])
      ..name = json['name'] as String
      ..photoUpdatedAt = json['photoUpdatedAt'] == null
          ? null
          : DateTime.parse(json['photoUpdatedAt'] as String)
      ..person = json['person'] == null
          ? null
          : WatchUser$SubscriptionRoot$Users$Persons.fromJson(
              json['person'] as Map<String, dynamic>)
      ..adminOn = (json['adminOn'] as List<dynamic>)
          .map((e) =>
              WatchUser$SubscriptionRoot$Users$UsersPermissions.fromJson(
                  e as Map<String, dynamic>))
          .toList()
      ..userData = json['userData'] == null
          ? null
          : WatchUser$SubscriptionRoot$Users$UsersData.fromJson(
              json['userData'] as Map<String, dynamic>);

Map<String, dynamic> _$WatchUser$SubscriptionRoot$UsersToJson(
        WatchUser$SubscriptionRoot$Users instance) =>
    <String, dynamic>{
      'uid': fromDartUuidValueToGraphQLUuid(instance.uid),
      'name': instance.name,
      'photoUpdatedAt': instance.photoUpdatedAt?.toIso8601String(),
      'person': instance.person?.toJson(),
      'adminOn': instance.adminOn.map((e) => e.toJson()).toList(),
      'userData': instance.userData?.toJson(),
    };

WatchUser$SubscriptionRoot _$WatchUser$SubscriptionRootFromJson(
        Map<String, dynamic> json) =>
    WatchUser$SubscriptionRoot()
      ..usersByPk = json['usersByPk'] == null
          ? null
          : WatchUser$SubscriptionRoot$Users.fromJson(
              json['usersByPk'] as Map<String, dynamic>);

Map<String, dynamic> _$WatchUser$SubscriptionRootToJson(
        WatchUser$SubscriptionRoot instance) =>
    <String, dynamic>{
      'usersByPk': instance.usersByPk?.toJson(),
    };

UserEditHistory$SubscriptionRoot$HistoryEditHistory$Users
    _$UserEditHistory$SubscriptionRoot$HistoryEditHistory$UsersFromJson(
            Map<String, dynamic> json) =>
        UserEditHistory$SubscriptionRoot$HistoryEditHistory$Users()
          ..uid = fromGraphQLUuidToDartUuidValue(json['uid'])
          ..name = json['name'] as String
          ..photoUpdatedAt = json['photoUpdatedAt'] == null
              ? null
              : DateTime.parse(json['photoUpdatedAt'] as String);

Map<String,
    dynamic> _$UserEditHistory$SubscriptionRoot$HistoryEditHistory$UsersToJson(
        UserEditHistory$SubscriptionRoot$HistoryEditHistory$Users instance) =>
    <String, dynamic>{
      'uid': fromDartUuidValueToGraphQLUuid(instance.uid),
      'name': instance.name,
      'photoUpdatedAt': instance.photoUpdatedAt?.toIso8601String(),
    };

UserEditHistory$SubscriptionRoot$HistoryEditHistory
    _$UserEditHistory$SubscriptionRoot$HistoryEditHistoryFromJson(
            Map<String, dynamic> json) =>
        UserEditHistory$SubscriptionRoot$HistoryEditHistory()
          ..time = DateTime.parse(json['time'] as String)
          ..user = json['user'] == null
              ? null
              : UserEditHistory$SubscriptionRoot$HistoryEditHistory$Users
                  .fromJson(json['user'] as Map<String, dynamic>);

Map<String, dynamic>
    _$UserEditHistory$SubscriptionRoot$HistoryEditHistoryToJson(
            UserEditHistory$SubscriptionRoot$HistoryEditHistory instance) =>
        <String, dynamic>{
          'time': instance.time.toIso8601String(),
          'user': instance.user?.toJson(),
        };

UserEditHistory$SubscriptionRoot _$UserEditHistory$SubscriptionRootFromJson(
        Map<String, dynamic> json) =>
    UserEditHistory$SubscriptionRoot()
      ..historyEditHistory = (json['historyEditHistory'] as List<dynamic>)
          .map((e) =>
              UserEditHistory$SubscriptionRoot$HistoryEditHistory.fromJson(
                  e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$UserEditHistory$SubscriptionRootToJson(
        UserEditHistory$SubscriptionRoot instance) =>
    <String, dynamic>{
      'historyEditHistory':
          instance.historyEditHistory.map((e) => e.toJson()).toList(),
    };

GetAreasStreamArguments _$GetAreasStreamArgumentsFromJson(
        Map<String, dynamic> json) =>
    GetAreasStreamArguments(
      addWhere: (json['addWhere'] as List<dynamic>?)
          ?.map((e) => AreasBoolExp.fromJson(e as Map<String, dynamic>))
          .toList(),
      limit: json['limit'] as int?,
    );

Map<String, dynamic> _$GetAreasStreamArgumentsToJson(
        GetAreasStreamArguments instance) =>
    <String, dynamic>{
      'addWhere': instance.addWhere?.map((e) => e.toJson()).toList(),
      'limit': instance.limit,
    };

GetClassesStreamArguments _$GetClassesStreamArgumentsFromJson(
        Map<String, dynamic> json) =>
    GetClassesStreamArguments(
      addWhere: (json['addWhere'] as List<dynamic>?)
          ?.map((e) => ClassesBoolExp.fromJson(e as Map<String, dynamic>))
          .toList(),
      limit: json['limit'] as int?,
    );

Map<String, dynamic> _$GetClassesStreamArgumentsToJson(
        GetClassesStreamArguments instance) =>
    <String, dynamic>{
      'addWhere': instance.addWhere?.map((e) => e.toJson()).toList(),
      'limit': instance.limit,
    };

GetFamiliesStreamArguments _$GetFamiliesStreamArgumentsFromJson(
        Map<String, dynamic> json) =>
    GetFamiliesStreamArguments(
      addWhere: (json['addWhere'] as List<dynamic>?)
          ?.map((e) => FamiliesBoolExp.fromJson(e as Map<String, dynamic>))
          .toList(),
      limit: json['limit'] as int?,
    );

Map<String, dynamic> _$GetFamiliesStreamArgumentsToJson(
        GetFamiliesStreamArguments instance) =>
    <String, dynamic>{
      'addWhere': instance.addWhere?.map((e) => e.toJson()).toList(),
      'limit': instance.limit,
    };

GetGroupsStreamArguments _$GetGroupsStreamArgumentsFromJson(
        Map<String, dynamic> json) =>
    GetGroupsStreamArguments(
      addWhere: (json['addWhere'] as List<dynamic>?)
          ?.map((e) => GroupsBoolExp.fromJson(e as Map<String, dynamic>))
          .toList(),
      limit: json['limit'] as int?,
    );

Map<String, dynamic> _$GetGroupsStreamArgumentsToJson(
        GetGroupsStreamArguments instance) =>
    <String, dynamic>{
      'addWhere': instance.addWhere?.map((e) => e.toJson()).toList(),
      'limit': instance.limit,
    };

GetChurchesStreamArguments _$GetChurchesStreamArgumentsFromJson(
        Map<String, dynamic> json) =>
    GetChurchesStreamArguments(
      addWhere: (json['addWhere'] as List<dynamic>?)
          ?.map((e) => ChurchesBoolExp.fromJson(e as Map<String, dynamic>))
          .toList(),
      limit: json['limit'] as int?,
    );

Map<String, dynamic> _$GetChurchesStreamArgumentsToJson(
        GetChurchesStreamArguments instance) =>
    <String, dynamic>{
      'addWhere': instance.addWhere?.map((e) => e.toJson()).toList(),
      'limit': instance.limit,
    };

GetCollegesStreamArguments _$GetCollegesStreamArgumentsFromJson(
        Map<String, dynamic> json) =>
    GetCollegesStreamArguments(
      addWhere: (json['addWhere'] as List<dynamic>?)
          ?.map((e) => CollegesBoolExp.fromJson(e as Map<String, dynamic>))
          .toList(),
      limit: json['limit'] as int?,
    );

Map<String, dynamic> _$GetCollegesStreamArgumentsToJson(
        GetCollegesStreamArguments instance) =>
    <String, dynamic>{
      'addWhere': instance.addWhere?.map((e) => e.toJson()).toList(),
      'limit': instance.limit,
    };

GetFathersStreamArguments _$GetFathersStreamArgumentsFromJson(
        Map<String, dynamic> json) =>
    GetFathersStreamArguments(
      addWhere: (json['addWhere'] as List<dynamic>?)
          ?.map((e) => FathersBoolExp.fromJson(e as Map<String, dynamic>))
          .toList(),
      limit: json['limit'] as int?,
    );

Map<String, dynamic> _$GetFathersStreamArgumentsToJson(
        GetFathersStreamArguments instance) =>
    <String, dynamic>{
      'addWhere': instance.addWhere?.map((e) => e.toJson()).toList(),
      'limit': instance.limit,
    };

GetJobsStreamArguments _$GetJobsStreamArgumentsFromJson(
        Map<String, dynamic> json) =>
    GetJobsStreamArguments(
      addWhere: (json['addWhere'] as List<dynamic>?)
          ?.map((e) => JobsBoolExp.fromJson(e as Map<String, dynamic>))
          .toList(),
      limit: json['limit'] as int?,
    );

Map<String, dynamic> _$GetJobsStreamArgumentsToJson(
        GetJobsStreamArguments instance) =>
    <String, dynamic>{
      'addWhere': instance.addWhere?.map((e) => e.toJson()).toList(),
      'limit': instance.limit,
    };

GetPersonStatesStreamArguments _$GetPersonStatesStreamArgumentsFromJson(
        Map<String, dynamic> json) =>
    GetPersonStatesStreamArguments(
      addWhere: (json['addWhere'] as List<dynamic>?)
          ?.map((e) => PersonStatesBoolExp.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetPersonStatesStreamArgumentsToJson(
        GetPersonStatesStreamArguments instance) =>
    <String, dynamic>{
      'addWhere': instance.addWhere?.map((e) => e.toJson()).toList(),
    };

GetPersonTypesStreamArguments _$GetPersonTypesStreamArgumentsFromJson(
        Map<String, dynamic> json) =>
    GetPersonTypesStreamArguments(
      addWhere: (json['addWhere'] as List<dynamic>?)
          ?.map((e) => PersonTypesBoolExp.fromJson(e as Map<String, dynamic>))
          .toList(),
      limit: json['limit'] as int?,
    );

Map<String, dynamic> _$GetPersonTypesStreamArgumentsToJson(
        GetPersonTypesStreamArguments instance) =>
    <String, dynamic>{
      'addWhere': instance.addWhere?.map((e) => e.toJson()).toList(),
      'limit': instance.limit,
    };

GetQualificationsStreamArguments _$GetQualificationsStreamArgumentsFromJson(
        Map<String, dynamic> json) =>
    GetQualificationsStreamArguments(
      addWhere: (json['addWhere'] as List<dynamic>?)
          ?.map(
              (e) => QualificationsBoolExp.fromJson(e as Map<String, dynamic>))
          .toList(),
      limit: json['limit'] as int?,
    );

Map<String, dynamic> _$GetQualificationsStreamArgumentsToJson(
        GetQualificationsStreamArguments instance) =>
    <String, dynamic>{
      'addWhere': instance.addWhere?.map((e) => e.toJson()).toList(),
      'limit': instance.limit,
    };

GetSchoolsStreamArguments _$GetSchoolsStreamArgumentsFromJson(
        Map<String, dynamic> json) =>
    GetSchoolsStreamArguments(
      addWhere: (json['addWhere'] as List<dynamic>?)
          ?.map((e) => SchoolsBoolExp.fromJson(e as Map<String, dynamic>))
          .toList(),
      limit: json['limit'] as int?,
    );

Map<String, dynamic> _$GetSchoolsStreamArgumentsToJson(
        GetSchoolsStreamArguments instance) =>
    <String, dynamic>{
      'addWhere': instance.addWhere?.map((e) => e.toJson()).toList(),
      'limit': instance.limit,
    };

GetShammasLevelsStreamArguments _$GetShammasLevelsStreamArgumentsFromJson(
        Map<String, dynamic> json) =>
    GetShammasLevelsStreamArguments(
      addWhere: (json['addWhere'] as List<dynamic>?)
          ?.map((e) => ShammasLevelsBoolExp.fromJson(e as Map<String, dynamic>))
          .toList(),
      limit: json['limit'] as int?,
    );

Map<String, dynamic> _$GetShammasLevelsStreamArgumentsToJson(
        GetShammasLevelsStreamArguments instance) =>
    <String, dynamic>{
      'addWhere': instance.addWhere?.map((e) => e.toJson()).toList(),
      'limit': instance.limit,
    };

GetStudyYearNameArguments _$GetStudyYearNameArgumentsFromJson(
        Map<String, dynamic> json) =>
    GetStudyYearNameArguments(
      order: json['order'] as int,
    );

Map<String, dynamic> _$GetStudyYearNameArgumentsToJson(
        GetStudyYearNameArguments instance) =>
    <String, dynamic>{
      'order': instance.order,
    };

GetStudyYearsStreamArguments _$GetStudyYearsStreamArgumentsFromJson(
        Map<String, dynamic> json) =>
    GetStudyYearsStreamArguments(
      addWhere: (json['addWhere'] as List<dynamic>?)
          ?.map((e) => StudyYearsBoolExp.fromJson(e as Map<String, dynamic>))
          .toList(),
      limit: json['limit'] as int?,
    );

Map<String, dynamic> _$GetStudyYearsStreamArgumentsToJson(
        GetStudyYearsStreamArguments instance) =>
    <String, dynamic>{
      'addWhere': instance.addWhere?.map((e) => e.toJson()).toList(),
      'limit': instance.limit,
    };

GetTagsStreamArguments _$GetTagsStreamArgumentsFromJson(
        Map<String, dynamic> json) =>
    GetTagsStreamArguments(
      addWhere: (json['addWhere'] as List<dynamic>?)
          ?.map((e) => TagsBoolExp.fromJson(e as Map<String, dynamic>))
          .toList(),
      limit: json['limit'] as int?,
    );

Map<String, dynamic> _$GetTagsStreamArgumentsToJson(
        GetTagsStreamArguments instance) =>
    <String, dynamic>{
      'addWhere': instance.addWhere?.map((e) => e.toJson()).toList(),
      'limit': instance.limit,
    };

InsertPersonLastConfessionArguments
    _$InsertPersonLastConfessionArgumentsFromJson(Map<String, dynamic> json) =>
        InsertPersonLastConfessionArguments(
          personId: fromGraphQLUuidToDartUuidValue(json['personId']),
          lastConfession: DateTime.parse(json['lastConfession'] as String),
        );

Map<String, dynamic> _$InsertPersonLastConfessionArgumentsToJson(
        InsertPersonLastConfessionArguments instance) =>
    <String, dynamic>{
      'personId': fromDartUuidValueToGraphQLUuid(instance.personId),
      'lastConfession': instance.lastConfession.toIso8601String(),
    };

InsertPersonLastKodasArguments _$InsertPersonLastKodasArgumentsFromJson(
        Map<String, dynamic> json) =>
    InsertPersonLastKodasArguments(
      personId: fromGraphQLUuidToDartUuidValue(json['personId']),
      lastKodas: DateTime.parse(json['lastKodas'] as String),
    );

Map<String, dynamic> _$InsertPersonLastKodasArgumentsToJson(
        InsertPersonLastKodasArguments instance) =>
    <String, dynamic>{
      'personId': fromDartUuidValueToGraphQLUuid(instance.personId),
      'lastKodas': instance.lastKodas.toIso8601String(),
    };

InsertPersonLastCallArguments _$InsertPersonLastCallArgumentsFromJson(
        Map<String, dynamic> json) =>
    InsertPersonLastCallArguments(
      personId: fromGraphQLUuidToDartUuidValue(json['personId']),
      lastCall: DateTime.parse(json['lastCall'] as String),
    );

Map<String, dynamic> _$InsertPersonLastCallArgumentsToJson(
        InsertPersonLastCallArguments instance) =>
    <String, dynamic>{
      'personId': fromDartUuidValueToGraphQLUuid(instance.personId),
      'lastCall': instance.lastCall.toIso8601String(),
    };

InsertPersonLastVisitArguments _$InsertPersonLastVisitArgumentsFromJson(
        Map<String, dynamic> json) =>
    InsertPersonLastVisitArguments(
      personId: fromGraphQLUuidToDartUuidValue(json['personId']),
      lastVisit: DateTime.parse(json['lastVisit'] as String),
    );

Map<String, dynamic> _$InsertPersonLastVisitArgumentsToJson(
        InsertPersonLastVisitArguments instance) =>
    <String, dynamic>{
      'personId': fromDartUuidValueToGraphQLUuid(instance.personId),
      'lastVisit': instance.lastVisit.toIso8601String(),
    };

UpdatePersonSpiritDataArguments _$UpdatePersonSpiritDataArgumentsFromJson(
        Map<String, dynamic> json) =>
    UpdatePersonSpiritDataArguments(
      personId: fromGraphQLUuidToDartUuidValue(json['personId']),
      lastConfession: DateTime.parse(json['lastConfession'] as String),
      lastKodas: DateTime.parse(json['lastKodas'] as String),
    );

Map<String, dynamic> _$UpdatePersonSpiritDataArgumentsToJson(
        UpdatePersonSpiritDataArguments instance) =>
    <String, dynamic>{
      'personId': fromDartUuidValueToGraphQLUuid(instance.personId),
      'lastConfession': instance.lastConfession.toIso8601String(),
      'lastKodas': instance.lastKodas.toIso8601String(),
    };

DeletePersonArguments _$DeletePersonArgumentsFromJson(
        Map<String, dynamic> json) =>
    DeletePersonArguments(
      personId: fromGraphQLUuidToDartUuidValue(json['personId']),
    );

Map<String, dynamic> _$DeletePersonArgumentsToJson(
        DeletePersonArguments instance) =>
    <String, dynamic>{
      'personId': fromDartUuidValueToGraphQLUuid(instance.personId),
    };

UpdatePersonArguments _$UpdatePersonArgumentsFromJson(
        Map<String, dynamic> json) =>
    UpdatePersonArguments(
      personId: fromGraphQLUuidToDartUuidValue(json['personId']),
      newPerson:
          PersonsSetInput.fromJson(json['newPerson'] as Map<String, dynamic>),
      newGroups: (json['newGroups'] as List<dynamic>)
          .map((e) =>
              PersonsGroupsInsertInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      deleteGroups: fromGraphQLListNullableUuidToDartListNullableUuidValue(
          json['deleteGroups'] as List?),
      newServices: (json['newServices'] as List<dynamic>)
          .map((e) =>
              PersonsServicesInsertInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      deleteServices: fromGraphQLListNullableUuidToDartListNullableUuidValue(
          json['deleteServices'] as List?),
      newTags: (json['newTags'] as List<dynamic>)
          .map(
              (e) => PersonsTagsInsertInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      deleteTags: fromGraphQLListNullableUuidToDartListNullableUuidValue(
          json['deleteTags'] as List?),
      lastConfession: json['lastConfession'] == null
          ? null
          : DateTime.parse(json['lastConfession'] as String),
      lastKodas: json['lastKodas'] == null
          ? null
          : DateTime.parse(json['lastKodas'] as String),
      lastCall: json['lastCall'] == null
          ? null
          : DateTime.parse(json['lastCall'] as String),
      lastVisit: json['lastVisit'] == null
          ? null
          : DateTime.parse(json['lastVisit'] as String),
    );

Map<String, dynamic> _$UpdatePersonArgumentsToJson(
        UpdatePersonArguments instance) =>
    <String, dynamic>{
      'personId': fromDartUuidValueToGraphQLUuid(instance.personId),
      'newPerson': instance.newPerson.toJson(),
      'newGroups': instance.newGroups.map((e) => e.toJson()).toList(),
      'deleteGroups': fromDartListNullableUuidValueToGraphQLListNullableUuid(
          instance.deleteGroups),
      'newServices': instance.newServices.map((e) => e.toJson()).toList(),
      'deleteServices': fromDartListNullableUuidValueToGraphQLListNullableUuid(
          instance.deleteServices),
      'newTags': instance.newTags.map((e) => e.toJson()).toList(),
      'deleteTags': fromDartListNullableUuidValueToGraphQLListNullableUuid(
          instance.deleteTags),
      'lastConfession': instance.lastConfession?.toIso8601String(),
      'lastKodas': instance.lastKodas?.toIso8601String(),
      'lastCall': instance.lastCall?.toIso8601String(),
      'lastVisit': instance.lastVisit?.toIso8601String(),
    };

InsertPersonArguments _$InsertPersonArgumentsFromJson(
        Map<String, dynamic> json) =>
    InsertPersonArguments(
      newPerson: PersonsInsertInput.fromJson(
          json['newPerson'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InsertPersonArgumentsToJson(
        InsertPersonArguments instance) =>
    <String, dynamic>{
      'newPerson': instance.newPerson.toJson(),
    };

GetPersonsAttendanceWarningArguments
    _$GetPersonsAttendanceWarningArgumentsFromJson(Map<String, dynamic> json) =>
        GetPersonsAttendanceWarningArguments(
          dateFilter: DateTime.parse(json['dateFilter'] as String),
        );

Map<String, dynamic> _$GetPersonsAttendanceWarningArgumentsToJson(
        GetPersonsAttendanceWarningArguments instance) =>
    <String, dynamic>{
      'dateFilter': instance.dateFilter.toIso8601String(),
    };

GetPersonsKodasWarningArguments _$GetPersonsKodasWarningArgumentsFromJson(
        Map<String, dynamic> json) =>
    GetPersonsKodasWarningArguments(
      dateFilter: DateTime.parse(json['dateFilter'] as String),
    );

Map<String, dynamic> _$GetPersonsKodasWarningArgumentsToJson(
        GetPersonsKodasWarningArguments instance) =>
    <String, dynamic>{
      'dateFilter': instance.dateFilter.toIso8601String(),
    };

GetPersonsConfessionWarningArguments
    _$GetPersonsConfessionWarningArgumentsFromJson(Map<String, dynamic> json) =>
        GetPersonsConfessionWarningArguments(
          dateFilter: DateTime.parse(json['dateFilter'] as String),
        );

Map<String, dynamic> _$GetPersonsConfessionWarningArgumentsToJson(
        GetPersonsConfessionWarningArguments instance) =>
    <String, dynamic>{
      'dateFilter': instance.dateFilter.toIso8601String(),
    };

GetPersonsVisitWarningArguments _$GetPersonsVisitWarningArgumentsFromJson(
        Map<String, dynamic> json) =>
    GetPersonsVisitWarningArguments(
      dateFilter: DateTime.parse(json['dateFilter'] as String),
    );

Map<String, dynamic> _$GetPersonsVisitWarningArgumentsToJson(
        GetPersonsVisitWarningArguments instance) =>
    <String, dynamic>{
      'dateFilter': instance.dateFilter.toIso8601String(),
    };

GetPersonsBirthdayArguments _$GetPersonsBirthdayArgumentsFromJson(
        Map<String, dynamic> json) =>
    GetPersonsBirthdayArguments(
      dateFilter: json['dateFilter'] as String,
    );

Map<String, dynamic> _$GetPersonsBirthdayArgumentsToJson(
        GetPersonsBirthdayArguments instance) =>
    <String, dynamic>{
      'dateFilter': instance.dateFilter,
    };

GetMorePersonDataArguments _$GetMorePersonDataArgumentsFromJson(
        Map<String, dynamic> json) =>
    GetMorePersonDataArguments(
      id: fromGraphQLUuidToDartUuidValue(json['id']),
      areasAfter: json['areasAfter'] as String?,
      classesAfter: json['classesAfter'] as String?,
      groupsAfter: json['groupsAfter'] as String?,
      servicesAfter: json['servicesAfter'] as String?,
    );

Map<String, dynamic> _$GetMorePersonDataArgumentsToJson(
        GetMorePersonDataArguments instance) =>
    <String, dynamic>{
      'id': fromDartUuidValueToGraphQLUuid(instance.id),
      'areasAfter': instance.areasAfter,
      'classesAfter': instance.classesAfter,
      'groupsAfter': instance.groupsAfter,
      'servicesAfter': instance.servicesAfter,
    };

PersonsGeolocationsArguments _$PersonsGeolocationsArgumentsFromJson(
        Map<String, dynamic> json) =>
    PersonsGeolocationsArguments(
      areasIds: fromGraphQLListNullableUuidToDartListNullableUuidValue(
          json['areasIds'] as List?),
      streetsIds: fromGraphQLListNullableUuidToDartListNullableUuidValue(
          json['streetsIds'] as List?),
      familiesIds: fromGraphQLListNullableUuidToDartListNullableUuidValue(
          json['familiesIds'] as List?),
      personsConditions: (json['personsConditions'] as List<dynamic>?)
          ?.map((e) => PersonsBoolExp.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PersonsGeolocationsArgumentsToJson(
        PersonsGeolocationsArguments instance) =>
    <String, dynamic>{
      'areasIds': fromDartListNullableUuidValueToGraphQLListNullableUuid(
          instance.areasIds),
      'streetsIds': fromDartListNullableUuidValueToGraphQLListNullableUuid(
          instance.streetsIds),
      'familiesIds': fromDartListNullableUuidValueToGraphQLListNullableUuid(
          instance.familiesIds),
      'personsConditions':
          instance.personsConditions?.map((e) => e.toJson()).toList(),
    };

AnalyzePersonArguments _$AnalyzePersonArgumentsFromJson(
        Map<String, dynamic> json) =>
    AnalyzePersonArguments(
      dateFrom: DateTime.parse(json['dateFrom'] as String),
      dateTo: DateTime.parse(json['dateTo'] as String),
      timeFrom: DateTime.parse(json['timeFrom'] as String),
      timeTo: DateTime.parse(json['timeTo'] as String),
      personId: fromGraphQLUuidToDartUuidValue(json['personId']),
      groupsIds: fromGraphQLListNullableUuidToDartListNullableUuidValue(
          json['groupsIds'] as List?),
      classesIds: fromGraphQLListNullableUuidToDartListNullableUuidValue(
          json['classesIds'] as List?),
      servicesIds: fromGraphQLListNullableUuidToDartListNullableUuidValue(
          json['servicesIds'] as List?),
      callHistory: json['callHistory'] as bool,
      visitHistory: json['visitHistory'] as bool,
      editHistory: json['editHistory'] as bool,
      confessionHistory: json['confessionHistory'] as bool,
      kodasHistory: json['kodasHistory'] as bool,
    );

Map<String, dynamic> _$AnalyzePersonArgumentsToJson(
        AnalyzePersonArguments instance) =>
    <String, dynamic>{
      'dateFrom': instance.dateFrom.toIso8601String(),
      'dateTo': instance.dateTo.toIso8601String(),
      'timeFrom': instance.timeFrom.toIso8601String(),
      'timeTo': instance.timeTo.toIso8601String(),
      'personId': fromDartUuidValueToGraphQLUuid(instance.personId),
      'groupsIds': fromDartListNullableUuidValueToGraphQLListNullableUuid(
          instance.groupsIds),
      'classesIds': fromDartListNullableUuidValueToGraphQLListNullableUuid(
          instance.classesIds),
      'servicesIds': fromDartListNullableUuidValueToGraphQLListNullableUuid(
          instance.servicesIds),
      'callHistory': instance.callHistory,
      'visitHistory': instance.visitHistory,
      'editHistory': instance.editHistory,
      'confessionHistory': instance.confessionHistory,
      'kodasHistory': instance.kodasHistory,
    };

GetPersonClassesAndGroupsArguments _$GetPersonClassesAndGroupsArgumentsFromJson(
        Map<String, dynamic> json) =>
    GetPersonClassesAndGroupsArguments(
      id: fromGraphQLUuidToDartUuidValue(json['id']),
    );

Map<String, dynamic> _$GetPersonClassesAndGroupsArgumentsToJson(
        GetPersonClassesAndGroupsArguments instance) =>
    <String, dynamic>{
      'id': fromDartUuidValueToGraphQLUuid(instance.id),
    };

GetFullPersonDataArguments _$GetFullPersonDataArgumentsFromJson(
        Map<String, dynamic> json) =>
    GetFullPersonDataArguments(
      id: fromGraphQLUuidToDartUuidValue(json['id']),
    );

Map<String, dynamic> _$GetFullPersonDataArgumentsToJson(
        GetFullPersonDataArguments instance) =>
    <String, dynamic>{
      'id': fromDartUuidValueToGraphQLUuid(instance.id),
    };

GetPersonsStreamArguments _$GetPersonsStreamArgumentsFromJson(
        Map<String, dynamic> json) =>
    GetPersonsStreamArguments(
      addWhere: (json['addWhere'] as List<dynamic>?)
          ?.map((e) => PersonsBoolExp.fromJson(e as Map<String, dynamic>))
          .toList(),
      limit: json['limit'] as int?,
    );

Map<String, dynamic> _$GetPersonsStreamArgumentsToJson(
        GetPersonsStreamArguments instance) =>
    <String, dynamic>{
      'addWhere': instance.addWhere?.map((e) => e.toJson()).toList(),
      'limit': instance.limit,
    };

WatchPersonArguments _$WatchPersonArgumentsFromJson(
        Map<String, dynamic> json) =>
    WatchPersonArguments(
      id: fromGraphQLUuidToDartUuidValue(json['id']),
    );

Map<String, dynamic> _$WatchPersonArgumentsToJson(
        WatchPersonArguments instance) =>
    <String, dynamic>{
      'id': fromDartUuidValueToGraphQLUuid(instance.id),
    };

CallHistoryArguments _$CallHistoryArgumentsFromJson(
        Map<String, dynamic> json) =>
    CallHistoryArguments(
      personId: fromGraphQLUuidToDartUuidValue(json['personId']),
      addWhere: (json['addWhere'] as List<dynamic>?)
          ?.map((e) =>
              HistoryCallHistoryBoolExp.fromJson(e as Map<String, dynamic>))
          .toList(),
      limit: json['limit'] as int?,
    );

Map<String, dynamic> _$CallHistoryArgumentsToJson(
        CallHistoryArguments instance) =>
    <String, dynamic>{
      'personId': fromDartUuidValueToGraphQLUuid(instance.personId),
      'addWhere': instance.addWhere?.map((e) => e.toJson()).toList(),
      'limit': instance.limit,
    };

VisitHistoryArguments _$VisitHistoryArgumentsFromJson(
        Map<String, dynamic> json) =>
    VisitHistoryArguments(
      personId: fromGraphQLUuidToDartUuidValue(json['personId']),
      addWhere: (json['addWhere'] as List<dynamic>?)
          ?.map((e) =>
              HistoryVisitHistoryBoolExp.fromJson(e as Map<String, dynamic>))
          .toList(),
      limit: json['limit'] as int?,
    );

Map<String, dynamic> _$VisitHistoryArgumentsToJson(
        VisitHistoryArguments instance) =>
    <String, dynamic>{
      'personId': fromDartUuidValueToGraphQLUuid(instance.personId),
      'addWhere': instance.addWhere?.map((e) => e.toJson()).toList(),
      'limit': instance.limit,
    };

ConfessionHistoryArguments _$ConfessionHistoryArgumentsFromJson(
        Map<String, dynamic> json) =>
    ConfessionHistoryArguments(
      personId: fromGraphQLUuidToDartUuidValue(json['personId']),
      addWhere: (json['addWhere'] as List<dynamic>?)
          ?.map((e) => HistoryConfessionHistoryBoolExp.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      limit: json['limit'] as int?,
    );

Map<String, dynamic> _$ConfessionHistoryArgumentsToJson(
        ConfessionHistoryArguments instance) =>
    <String, dynamic>{
      'personId': fromDartUuidValueToGraphQLUuid(instance.personId),
      'addWhere': instance.addWhere?.map((e) => e.toJson()).toList(),
      'limit': instance.limit,
    };

KodasHistoryArguments _$KodasHistoryArgumentsFromJson(
        Map<String, dynamic> json) =>
    KodasHistoryArguments(
      personId: fromGraphQLUuidToDartUuidValue(json['personId']),
      addWhere: (json['addWhere'] as List<dynamic>?)
          ?.map((e) =>
              HistoryKodasHistoryBoolExp.fromJson(e as Map<String, dynamic>))
          .toList(),
      limit: json['limit'] as int?,
    );

Map<String, dynamic> _$KodasHistoryArgumentsToJson(
        KodasHistoryArguments instance) =>
    <String, dynamic>{
      'personId': fromDartUuidValueToGraphQLUuid(instance.personId),
      'addWhere': instance.addWhere?.map((e) => e.toJson()).toList(),
      'limit': instance.limit,
    };

PersonEditHistoryArguments _$PersonEditHistoryArgumentsFromJson(
        Map<String, dynamic> json) =>
    PersonEditHistoryArguments(
      personId: fromGraphQLUuidToDartUuidValue(json['personId']),
      addWhere: (json['addWhere'] as List<dynamic>?)
          ?.map((e) =>
              HistoryEditHistoryBoolExp.fromJson(e as Map<String, dynamic>))
          .toList(),
      limit: json['limit'] as int?,
    );

Map<String, dynamic> _$PersonEditHistoryArgumentsToJson(
        PersonEditHistoryArguments instance) =>
    <String, dynamic>{
      'personId': fromDartUuidValueToGraphQLUuid(instance.personId),
      'addWhere': instance.addWhere?.map((e) => e.toJson()).toList(),
      'limit': instance.limit,
    };

PersonServiceAttendanceArguments _$PersonServiceAttendanceArgumentsFromJson(
        Map<String, dynamic> json) =>
    PersonServiceAttendanceArguments(
      personId: fromGraphQLUuidToDartUuidValue(json['personId']),
      serviceId: fromGraphQLUuidToDartUuidValue(json['serviceId']),
      asAdmin: json['asAdmin'] as bool,
      limit: json['limit'] as int,
      addWhere: (json['addWhere'] as List<dynamic>?)
          ?.map((e) => HistoryAttendanceHistoryBoolExp.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PersonServiceAttendanceArgumentsToJson(
        PersonServiceAttendanceArguments instance) =>
    <String, dynamic>{
      'personId': fromDartUuidValueToGraphQLUuid(instance.personId),
      'serviceId': fromDartUuidValueToGraphQLUuid(instance.serviceId),
      'asAdmin': instance.asAdmin,
      'limit': instance.limit,
      'addWhere': instance.addWhere?.map((e) => e.toJson()).toList(),
    };

PersonClassAttendanceArguments _$PersonClassAttendanceArgumentsFromJson(
        Map<String, dynamic> json) =>
    PersonClassAttendanceArguments(
      personId: fromGraphQLUuidToDartUuidValue(json['personId']),
      classId: fromGraphQLUuidToDartUuidValue(json['classId']),
      asAdmin: json['asAdmin'] as bool,
      limit: json['limit'] as int,
      addWhere: (json['addWhere'] as List<dynamic>?)
          ?.map((e) => HistoryAttendanceHistoryBoolExp.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PersonClassAttendanceArgumentsToJson(
        PersonClassAttendanceArguments instance) =>
    <String, dynamic>{
      'personId': fromDartUuidValueToGraphQLUuid(instance.personId),
      'classId': fromDartUuidValueToGraphQLUuid(instance.classId),
      'asAdmin': instance.asAdmin,
      'limit': instance.limit,
      'addWhere': instance.addWhere?.map((e) => e.toJson()).toList(),
    };

PersonGroupAttendanceArguments _$PersonGroupAttendanceArgumentsFromJson(
        Map<String, dynamic> json) =>
    PersonGroupAttendanceArguments(
      personId: fromGraphQLUuidToDartUuidValue(json['personId']),
      groupId: fromGraphQLUuidToDartUuidValue(json['groupId']),
      asAdmin: json['asAdmin'] as bool,
      limit: json['limit'] as int,
      addWhere: (json['addWhere'] as List<dynamic>?)
          ?.map((e) => HistoryAttendanceHistoryBoolExp.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PersonGroupAttendanceArgumentsToJson(
        PersonGroupAttendanceArguments instance) =>
    <String, dynamic>{
      'personId': fromDartUuidValueToGraphQLUuid(instance.personId),
      'groupId': fromDartUuidValueToGraphQLUuid(instance.groupId),
      'asAdmin': instance.asAdmin,
      'limit': instance.limit,
      'addWhere': instance.addWhere?.map((e) => e.toJson()).toList(),
    };

GetServicesStreamArguments _$GetServicesStreamArgumentsFromJson(
        Map<String, dynamic> json) =>
    GetServicesStreamArguments(
      addWhere: (json['addWhere'] as List<dynamic>?)
          ?.map((e) => ServicesBoolExp.fromJson(e as Map<String, dynamic>))
          .toList(),
      groupsAddWhere: (json['groupsAddWhere'] as List<dynamic>?)
          ?.map((e) => GroupsBoolExp.fromJson(e as Map<String, dynamic>))
          .toList(),
      classesAddWhere: (json['classesAddWhere'] as List<dynamic>?)
          ?.map((e) => ClassesBoolExp.fromJson(e as Map<String, dynamic>))
          .toList(),
      limit: json['limit'] as int?,
    );

Map<String, dynamic> _$GetServicesStreamArgumentsToJson(
        GetServicesStreamArguments instance) =>
    <String, dynamic>{
      'addWhere': instance.addWhere?.map((e) => e.toJson()).toList(),
      'groupsAddWhere':
          instance.groupsAddWhere?.map((e) => e.toJson()).toList(),
      'classesAddWhere':
          instance.classesAddWhere?.map((e) => e.toJson()).toList(),
      'limit': instance.limit,
    };

GetStreetsStreamArguments _$GetStreetsStreamArgumentsFromJson(
        Map<String, dynamic> json) =>
    GetStreetsStreamArguments(
      addWhere: (json['addWhere'] as List<dynamic>?)
          ?.map((e) => StreetsBoolExp.fromJson(e as Map<String, dynamic>))
          .toList(),
      limit: json['limit'] as int?,
    );

Map<String, dynamic> _$GetStreetsStreamArgumentsToJson(
        GetStreetsStreamArguments instance) =>
    <String, dynamic>{
      'addWhere': instance.addWhere?.map((e) => e.toJson()).toList(),
      'limit': instance.limit,
    };

AnalyzeUserAttendanceArguments _$AnalyzeUserAttendanceArgumentsFromJson(
        Map<String, dynamic> json) =>
    AnalyzeUserAttendanceArguments(
      dateFrom: DateTime.parse(json['dateFrom'] as String),
      dateTo: DateTime.parse(json['dateTo'] as String),
      personId: fromGraphQLUuidToDartUuidValue(json['personId']),
      userId: fromGraphQLUuidToDartUuidValue(json['userId']),
      groupsIds: fromGraphQLListNullableUuidToDartListNullableUuidValue(
          json['groupsIds'] as List?),
      classesIds: fromGraphQLListNullableUuidToDartListNullableUuidValue(
          json['classesIds'] as List?),
      servicesIds: fromGraphQLListNullableUuidToDartListNullableUuidValue(
          json['servicesIds'] as List?),
    );

Map<String, dynamic> _$AnalyzeUserAttendanceArgumentsToJson(
        AnalyzeUserAttendanceArguments instance) =>
    <String, dynamic>{
      'dateFrom': instance.dateFrom.toIso8601String(),
      'dateTo': instance.dateTo.toIso8601String(),
      'personId': fromDartUuidValueToGraphQLUuid(instance.personId),
      'userId': fromDartUuidValueToGraphQLUuid(instance.userId),
      'groupsIds': fromDartListNullableUuidValueToGraphQLListNullableUuid(
          instance.groupsIds),
      'classesIds': fromDartListNullableUuidValueToGraphQLListNullableUuid(
          instance.classesIds),
      'servicesIds': fromDartListNullableUuidValueToGraphQLListNullableUuid(
          instance.servicesIds),
    };

GetUserInfoStreamArguments _$GetUserInfoStreamArgumentsFromJson(
        Map<String, dynamic> json) =>
    GetUserInfoStreamArguments(
      uid: fromGraphQLUuidToDartUuidValue(json['uid']),
    );

Map<String, dynamic> _$GetUserInfoStreamArgumentsToJson(
        GetUserInfoStreamArguments instance) =>
    <String, dynamic>{
      'uid': fromDartUuidValueToGraphQLUuid(instance.uid),
    };

WatchUserArguments _$WatchUserArgumentsFromJson(Map<String, dynamic> json) =>
    WatchUserArguments(
      uid: fromGraphQLUuidToDartUuidValue(json['uid']),
    );

Map<String, dynamic> _$WatchUserArgumentsToJson(WatchUserArguments instance) =>
    <String, dynamic>{
      'uid': fromDartUuidValueToGraphQLUuid(instance.uid),
    };

UserEditHistoryArguments _$UserEditHistoryArgumentsFromJson(
        Map<String, dynamic> json) =>
    UserEditHistoryArguments(
      userId: fromGraphQLUuidToDartUuidValue(json['userId']),
      addWhere: (json['addWhere'] as List<dynamic>?)
          ?.map((e) =>
              HistoryEditHistoryBoolExp.fromJson(e as Map<String, dynamic>))
          .toList(),
      limit: json['limit'] as int?,
    );

Map<String, dynamic> _$UserEditHistoryArgumentsToJson(
        UserEditHistoryArguments instance) =>
    <String, dynamic>{
      'userId': fromDartUuidValueToGraphQLUuid(instance.userId),
      'addWhere': instance.addWhere?.map((e) => e.toJson()).toList(),
      'limit': instance.limit,
    };
