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
      $isNull: json['_is_null'] as bool?,
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
      '_is_null': instance.$isNull,
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
      $isNull: json['_is_null'] as bool?,
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
      '_is_null': instance.$isNull,
      '_lt': instance.$lt,
      '_lte': instance.$lte,
      '_neq': instance.$neq,
      '_nin': instance.$nin,
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
      serviceId: json['serviceId'] == null
          ? null
          : UuidComparisonExp.fromJson(
              json['serviceId'] as Map<String, dynamic>),
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
      'serviceId': instance.serviceId?.toJson(),
      'time': instance.time?.toJson(),
      'user': instance.user?.toJson(),
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

DateComparisonExp _$DateComparisonExpFromJson(Map<String, dynamic> json) =>
    DateComparisonExp(
      $eq: json['_eq'] == null ? null : DateTime.parse(json['_eq'] as String),
      $gt: json['_gt'] == null ? null : DateTime.parse(json['_gt'] as String),
      $gte:
          json['_gte'] == null ? null : DateTime.parse(json['_gte'] as String),
      $in: (json['_in'] as List<dynamic>?)
          ?.map((e) => DateTime.parse(e as String))
          .toList(),
      $isNull: json['_is_null'] as bool?,
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
      '_is_null': instance.$isNull,
      '_lt': instance.$lt?.toIso8601String(),
      '_lte': instance.$lte?.toIso8601String(),
      '_neq': instance.$neq?.toIso8601String(),
      '_nin': instance.$nin?.map((e) => e.toIso8601String()).toList(),
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
          : StatesBoolExp.fromJson(json['state'] as Map<String, dynamic>),
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

StringComparisonExp _$StringComparisonExpFromJson(Map<String, dynamic> json) =>
    StringComparisonExp(
      $eq: json['_eq'] as String?,
      $gt: json['_gt'] as String?,
      $gte: json['_gte'] as String?,
      $ilike: json['_ilike'] as String?,
      $in: (json['_in'] as List<dynamic>?)?.map((e) => e as String).toList(),
      $iregex: json['_iregex'] as String?,
      $isNull: json['_is_null'] as bool?,
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
      '_is_null': instance.$isNull,
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
      $isNull: json['_is_null'] as bool?,
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
      '_is_null': instance.$isNull,
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
      userData: json['user_data'] == null
          ? null
          : UsersDataBoolExp.fromJson(
              json['user_data'] as Map<String, dynamic>),
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
      'user_data': instance.userData?.toJson(),
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

JsonbComparisonExp _$JsonbComparisonExpFromJson(Map<String, dynamic> json) =>
    JsonbComparisonExp(
      $cast: json['_cast'] == null
          ? null
          : JsonbCastExp.fromJson(json['_cast'] as Map<String, dynamic>),
      $containedIn:
          fromGraphQLJsonbNullableToDartJsonNullable(json['_contained_in']),
      $contains: fromGraphQLJsonbNullableToDartJsonNullable(json['_contains']),
      $eq: fromGraphQLJsonbNullableToDartJsonNullable(json['_eq']),
      $gt: fromGraphQLJsonbNullableToDartJsonNullable(json['_gt']),
      $gte: fromGraphQLJsonbNullableToDartJsonNullable(json['_gte']),
      $hasKey: json['_has_key'] as String?,
      $hasKeysAll: (json['_has_keys_all'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      $hasKeysAny: (json['_has_keys_any'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      $in: fromGraphQLListNullableJsonbToDartListNullableJson(
          json['_in'] as List<Map<dynamic, dynamic>>?),
      $isNull: json['_is_null'] as bool?,
      $lt: fromGraphQLJsonbNullableToDartJsonNullable(json['_lt']),
      $lte: fromGraphQLJsonbNullableToDartJsonNullable(json['_lte']),
      $neq: fromGraphQLJsonbNullableToDartJsonNullable(json['_neq']),
      $nin: fromGraphQLListNullableJsonbToDartListNullableJson(
          json['_nin'] as List<Map<dynamic, dynamic>>?),
    );

Map<String, dynamic> _$JsonbComparisonExpToJson(JsonbComparisonExp instance) =>
    <String, dynamic>{
      '_cast': instance.$cast?.toJson(),
      '_contained_in':
          fromDartJsonNullableToGraphQLJsonbNullable(instance.$containedIn),
      '_contains':
          fromDartJsonNullableToGraphQLJsonbNullable(instance.$contains),
      '_eq': fromDartJsonNullableToGraphQLJsonbNullable(instance.$eq),
      '_gt': fromDartJsonNullableToGraphQLJsonbNullable(instance.$gt),
      '_gte': fromDartJsonNullableToGraphQLJsonbNullable(instance.$gte),
      '_has_key': instance.$hasKey,
      '_has_keys_all': instance.$hasKeysAll,
      '_has_keys_any': instance.$hasKeysAny,
      '_in': fromDartListNullableJsonToGraphQLListNullableJsonb(instance.$in),
      '_is_null': instance.$isNull,
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

$textComparisonExp _$$textComparisonExpFromJson(Map<String, dynamic> json) =>
    $textComparisonExp(
      $eq: (json['_eq'] as List<dynamic>?)?.map((e) => e as String).toList(),
      $gt: (json['_gt'] as List<dynamic>?)?.map((e) => e as String).toList(),
      $gte: (json['_gte'] as List<dynamic>?)?.map((e) => e as String).toList(),
      $in: (json['_in'] as List<dynamic>?)
          ?.map((e) => (e as List<dynamic>).map((e) => e as String).toList())
          .toList(),
      $isNull: json['_is_null'] as bool?,
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
      '_is_null': instance.$isNull,
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

BigintComparisonExp _$BigintComparisonExpFromJson(Map<String, dynamic> json) =>
    BigintComparisonExp(
      $eq: json['_eq'] as int?,
      $gt: json['_gt'] as int?,
      $gte: json['_gte'] as int?,
      $in: (json['_in'] as List<dynamic>?)?.map((e) => e as int).toList(),
      $isNull: json['_is_null'] as bool?,
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
      '_is_null': instance.$isNull,
      '_lt': instance.$lt,
      '_lte': instance.$lte,
      '_neq': instance.$neq,
      '_nin': instance.$nin,
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
      $isNull: json['_is_null'] as bool?,
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
      '_is_null': instance.$isNull,
      '_lt': instance.$lt?.toIso8601String(),
      '_lte': instance.$lte?.toIso8601String(),
      '_neq': instance.$neq?.toIso8601String(),
      '_nin': instance.$nin?.map((e) => e.toIso8601String()).toList(),
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
      'persons': instance.persons?.toJson(),
      'photoUpdatedAt': instance.photoUpdatedAt?.toJson(),
      'studyYearFrom': instance.studyYearFrom?.toJson(),
      'studyYearTo': instance.studyYearTo?.toJson(),
      'toStudyYear': instance.toStudyYear?.toJson(),
      'users': instance.users?.toJson(),
    };

IntComparisonExp _$IntComparisonExpFromJson(Map<String, dynamic> json) =>
    IntComparisonExp(
      $eq: json['_eq'] as int?,
      $gt: json['_gt'] as int?,
      $gte: json['_gte'] as int?,
      $in: (json['_in'] as List<dynamic>?)?.map((e) => e as int).toList(),
      $isNull: json['_is_null'] as bool?,
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
      '_is_null': instance.$isNull,
      '_lt': instance.$lt,
      '_lte': instance.$lte,
      '_neq': instance.$neq,
      '_nin': instance.$nin,
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
      $isNull: json['_is_null'] as bool?,
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
      '_is_null': instance.$isNull,
      '_lt': instance.$lt,
      '_lte': instance.$lte,
      '_neq': instance.$neq,
      '_nin': instance.$nin,
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
      $isNull: json['_is_null'] as bool?,
      $lt: fromGraphQLGeographyNullableToDartJsonNullable(json['_lt']),
      $lte: fromGraphQLGeographyNullableToDartJsonNullable(json['_lte']),
      $neq: fromGraphQLGeographyNullableToDartJsonNullable(json['_neq']),
      $nin: fromGraphQLListNullableGeographyToDartListNullableJson(
          json['_nin'] as List<Map<dynamic, dynamic>>?),
      $stDWithin: json['_st_d_within'] == null
          ? null
          : StDWithinGeographyInput.fromJson(
              json['_st_d_within'] as Map<String, dynamic>),
      $stIntersects: fromGraphQLGeographyNullableToDartJsonNullable(
          json['_st_intersects']),
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
      '_is_null': instance.$isNull,
      '_lt': fromDartJsonNullableToGraphQLGeographyNullable(instance.$lt),
      '_lte': fromDartJsonNullableToGraphQLGeographyNullable(instance.$lte),
      '_neq': fromDartJsonNullableToGraphQLGeographyNullable(instance.$neq),
      '_nin':
          fromDartListNullableJsonToGraphQLListNullableGeography(instance.$nin),
      '_st_d_within': instance.$stDWithin?.toJson(),
      '_st_intersects': fromDartJsonNullableToGraphQLGeographyNullable(
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
      $isNull: json['_is_null'] as bool?,
      $lt: fromGraphQLGeometryNullableToDartJsonNullable(json['_lt']),
      $lte: fromGraphQLGeometryNullableToDartJsonNullable(json['_lte']),
      $neq: fromGraphQLGeometryNullableToDartJsonNullable(json['_neq']),
      $nin: fromGraphQLListNullableGeometryToDartListNullableJson(
          json['_nin'] as List<Map<dynamic, dynamic>>?),
      $st3dDWithin: json['_st_3d_d_within'] == null
          ? null
          : StDWithinInput.fromJson(
              json['_st_3d_d_within'] as Map<String, dynamic>),
      $st3dIntersects: fromGraphQLGeometryNullableToDartJsonNullable(
          json['_st_3d_intersects']),
      $stContains:
          fromGraphQLGeometryNullableToDartJsonNullable(json['_st_contains']),
      $stCrosses:
          fromGraphQLGeometryNullableToDartJsonNullable(json['_st_crosses']),
      $stDWithin: json['_st_d_within'] == null
          ? null
          : StDWithinInput.fromJson(
              json['_st_d_within'] as Map<String, dynamic>),
      $stEquals:
          fromGraphQLGeometryNullableToDartJsonNullable(json['_st_equals']),
      $stIntersects:
          fromGraphQLGeometryNullableToDartJsonNullable(json['_st_intersects']),
      $stOverlaps:
          fromGraphQLGeometryNullableToDartJsonNullable(json['_st_overlaps']),
      $stTouches:
          fromGraphQLGeometryNullableToDartJsonNullable(json['_st_touches']),
      $stWithin:
          fromGraphQLGeometryNullableToDartJsonNullable(json['_st_within']),
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
      '_is_null': instance.$isNull,
      '_lt': fromDartJsonNullableToGraphQLGeometryNullable(instance.$lt),
      '_lte': fromDartJsonNullableToGraphQLGeometryNullable(instance.$lte),
      '_neq': fromDartJsonNullableToGraphQLGeometryNullable(instance.$neq),
      '_nin':
          fromDartListNullableJsonToGraphQLListNullableGeometry(instance.$nin),
      '_st_3d_d_within': instance.$st3dDWithin?.toJson(),
      '_st_3d_intersects': fromDartJsonNullableToGraphQLGeometryNullable(
          instance.$st3dIntersects),
      '_st_contains':
          fromDartJsonNullableToGraphQLGeometryNullable(instance.$stContains),
      '_st_crosses':
          fromDartJsonNullableToGraphQLGeometryNullable(instance.$stCrosses),
      '_st_d_within': instance.$stDWithin?.toJson(),
      '_st_equals':
          fromDartJsonNullableToGraphQLGeometryNullable(instance.$stEquals),
      '_st_intersects':
          fromDartJsonNullableToGraphQLGeometryNullable(instance.$stIntersects),
      '_st_overlaps':
          fromDartJsonNullableToGraphQLGeometryNullable(instance.$stOverlaps),
      '_st_touches':
          fromDartJsonNullableToGraphQLGeometryNullable(instance.$stTouches),
      '_st_within':
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
          : IntComparisonExp.fromJson(json['color'] as Map<String, dynamic>),
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

StatesBoolExp _$StatesBoolExpFromJson(Map<String, dynamic> json) =>
    StatesBoolExp(
      $and: (json['_and'] as List<dynamic>?)
          ?.map((e) => StatesBoolExp.fromJson(e as Map<String, dynamic>))
          .toList(),
      $not: json['_not'] == null
          ? null
          : StatesBoolExp.fromJson(json['_not'] as Map<String, dynamic>),
      $or: (json['_or'] as List<dynamic>?)
          ?.map((e) => StatesBoolExp.fromJson(e as Map<String, dynamic>))
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

Map<String, dynamic> _$StatesBoolExpToJson(StatesBoolExp instance) =>
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
      $isNull: json['_is_null'] as bool?,
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
      '_is_null': instance.$isNull,
      '_lt': instance.$lt?.toIso8601String(),
      '_lte': instance.$lte?.toIso8601String(),
      '_neq': instance.$neq?.toIso8601String(),
      '_nin': instance.$nin?.map((e) => e.toIso8601String()).toList(),
    };

DaterangeComparisonExp _$DaterangeComparisonExpFromJson(
        Map<String, dynamic> json) =>
    DaterangeComparisonExp(
      $eq: json['_eq'] as String?,
      $gt: json['_gt'] as String?,
      $gte: json['_gte'] as String?,
      $in: (json['_in'] as List<dynamic>?)?.map((e) => e as String).toList(),
      $isNull: json['_is_null'] as bool?,
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
      '_is_null': instance.$isNull,
      '_lt': instance.$lt,
      '_lte': instance.$lte,
      '_neq': instance.$neq,
      '_nin': instance.$nin,
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
                      'insert_history_confession_history_one'] ==
                  null
              ? null
              : InsertPersonLastConfession$MutationRoot$HistoryConfessionHistory
                  .fromJson(json['insert_history_confession_history_one']
                      as Map<String, dynamic>);

Map<String, dynamic> _$InsertPersonLastConfession$MutationRootToJson(
        InsertPersonLastConfession$MutationRoot instance) =>
    <String, dynamic>{
      'insert_history_confession_history_one':
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
          json['insert_history_kodas_history_one'] == null
              ? null
              : InsertPersonLastKodas$MutationRoot$HistoryKodasHistory.fromJson(
                  json['insert_history_kodas_history_one']
                      as Map<String, dynamic>);

Map<String, dynamic> _$InsertPersonLastKodas$MutationRootToJson(
        InsertPersonLastKodas$MutationRoot instance) =>
    <String, dynamic>{
      'insert_history_kodas_history_one':
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
      ..insertHistoryCallHistoryOne = json['insert_history_call_history_one'] ==
              null
          ? null
          : InsertPersonLastCall$MutationRoot$HistoryCallHistory.fromJson(
              json['insert_history_call_history_one'] as Map<String, dynamic>);

Map<String, dynamic> _$InsertPersonLastCall$MutationRootToJson(
        InsertPersonLastCall$MutationRoot instance) =>
    <String, dynamic>{
      'insert_history_call_history_one':
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
          json['insert_history_visit_history_one'] == null
              ? null
              : InsertPersonLastVisit$MutationRoot$HistoryVisitHistory.fromJson(
                  json['insert_history_visit_history_one']
                      as Map<String, dynamic>);

Map<String, dynamic> _$InsertPersonLastVisit$MutationRootToJson(
        InsertPersonLastVisit$MutationRoot instance) =>
    <String, dynamic>{
      'insert_history_visit_history_one':
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
              json['insert_history_confession_history_one'] == null
                  ? null
                  : UpdatePersonSpiritData$MutationRoot$HistoryConfessionHistory
                      .fromJson(json['insert_history_confession_history_one']
                          as Map<String, dynamic>)
          ..insertHistoryKodasHistoryOne =
              json['insert_history_kodas_history_one'] == null
                  ? null
                  : UpdatePersonSpiritData$MutationRoot$HistoryKodasHistory
                      .fromJson(json['insert_history_kodas_history_one']
                          as Map<String, dynamic>);

Map<String, dynamic> _$UpdatePersonSpiritData$MutationRootToJson(
        UpdatePersonSpiritData$MutationRoot instance) =>
    <String, dynamic>{
      'insert_history_confession_history_one':
          instance.insertHistoryConfessionHistoryOne?.toJson(),
      'insert_history_kodas_history_one':
          instance.insertHistoryKodasHistoryOne?.toJson(),
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

GetMorePersonData$QueryRoot$Persons$Classes
    _$GetMorePersonData$QueryRoot$Persons$ClassesFromJson(
            Map<String, dynamic> json) =>
        GetMorePersonData$QueryRoot$Persons$Classes()
          ..id = fromGraphQLUuidToDartUuidValue(json['id'])
          ..name = json['name'] as String
          ..color = json['color'] as int?
          ..photoUpdatedAt = json['photoUpdatedAt'] == null
              ? null
              : DateTime.parse(json['photoUpdatedAt'] as String);

Map<String, dynamic> _$GetMorePersonData$QueryRoot$Persons$ClassesToJson(
        GetMorePersonData$QueryRoot$Persons$Classes instance) =>
    <String, dynamic>{
      'id': fromDartUuidValueToGraphQLUuid(instance.id),
      'name': instance.name,
      'color': instance.color,
      'photoUpdatedAt': instance.photoUpdatedAt?.toIso8601String(),
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
              : DateTime.parse(json['photoUpdatedAt'] as String);

Map<String,
    dynamic> _$GetMorePersonData$QueryRoot$Persons$PersonsGroups$GroupsToJson(
        GetMorePersonData$QueryRoot$Persons$PersonsGroups$Groups instance) =>
    <String, dynamic>{
      'id': fromDartUuidValueToGraphQLUuid(instance.id),
      'name': instance.name,
      'color': instance.color,
      'photoUpdatedAt': instance.photoUpdatedAt?.toIso8601String(),
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

GetMorePersonData$QueryRoot$Persons$PersonsServices$Services
    _$GetMorePersonData$QueryRoot$Persons$PersonsServices$ServicesFromJson(
            Map<String, dynamic> json) =>
        GetMorePersonData$QueryRoot$Persons$PersonsServices$Services()
          ..id = fromGraphQLUuidToDartUuidValue(json['id'])
          ..name = json['name'] as String
          ..color = json['color'] as int?
          ..photoUpdatedAt = json['photoUpdatedAt'] == null
              ? null
              : DateTime.parse(json['photoUpdatedAt'] as String);

Map<String, dynamic>
    _$GetMorePersonData$QueryRoot$Persons$PersonsServices$ServicesToJson(
            GetMorePersonData$QueryRoot$Persons$PersonsServices$Services
                instance) =>
        <String, dynamic>{
          'id': fromDartUuidValueToGraphQLUuid(instance.id),
          'name': instance.name,
          'color': instance.color,
          'photoUpdatedAt': instance.photoUpdatedAt?.toIso8601String(),
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
      ..personsByPk = json['persons_by_pk'] == null
          ? null
          : GetMorePersonData$QueryRoot$Persons.fromJson(
              json['persons_by_pk'] as Map<String, dynamic>);

Map<String, dynamic> _$GetMorePersonData$QueryRootToJson(
        GetMorePersonData$QueryRoot instance) =>
    <String, dynamic>{
      'persons_by_pk': instance.personsByPk?.toJson(),
    };

PersonsGeolocations$QueryRoot$Persons$Areas
    _$PersonsGeolocations$QueryRoot$Persons$AreasFromJson(
            Map<String, dynamic> json) =>
        PersonsGeolocations$QueryRoot$Persons$Areas()
          ..id = fromGraphQLUuidToDartUuidValue(json['id'])
          ..name = json['name'] as String
          ..color = json['color'] as int?
          ..bounds =
              fromGraphQLGeographyNullableToDartJsonNullable(json['bounds']);

Map<String, dynamic> _$PersonsGeolocations$QueryRoot$Persons$AreasToJson(
        PersonsGeolocations$QueryRoot$Persons$Areas instance) =>
    <String, dynamic>{
      'id': fromDartUuidValueToGraphQLUuid(instance.id),
      'name': instance.name,
      'color': instance.color,
      'bounds': fromDartJsonNullableToGraphQLGeographyNullable(instance.bounds),
    };

PersonsGeolocations$QueryRoot$Persons$Streets
    _$PersonsGeolocations$QueryRoot$Persons$StreetsFromJson(
            Map<String, dynamic> json) =>
        PersonsGeolocations$QueryRoot$Persons$Streets()
          ..id = fromGraphQLUuidToDartUuidValue(json['id'])
          ..name = json['name'] as String
          ..color = json['color'] as int?
          ..line = fromGraphQLGeographyNullableToDartJsonNullable(json['line']);

Map<String, dynamic> _$PersonsGeolocations$QueryRoot$Persons$StreetsToJson(
        PersonsGeolocations$QueryRoot$Persons$Streets instance) =>
    <String, dynamic>{
      'id': fromDartUuidValueToGraphQLUuid(instance.id),
      'name': instance.name,
      'color': instance.color,
      'line': fromDartJsonNullableToGraphQLGeographyNullable(instance.line),
    };

PersonsGeolocations$QueryRoot$Persons$Families
    _$PersonsGeolocations$QueryRoot$Persons$FamiliesFromJson(
            Map<String, dynamic> json) =>
        PersonsGeolocations$QueryRoot$Persons$Families()
          ..id = fromGraphQLUuidToDartUuidValue(json['id'])
          ..name = json['name'] as String
          ..color = json['color'] as int?
          ..geolocation = fromGraphQLGeographyNullableToDartJsonNullable(
              json['geolocation']);

Map<String, dynamic> _$PersonsGeolocations$QueryRoot$Persons$FamiliesToJson(
        PersonsGeolocations$QueryRoot$Persons$Families instance) =>
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
          ..geolocation = fromGraphQLGeographyNullableToDartJsonNullable(
              json['geolocation'])
          ..areas = (json['areas'] as List<dynamic>?)
              ?.map((e) => PersonsGeolocations$QueryRoot$Persons$Areas.fromJson(
                  e as Map<String, dynamic>))
              .toList()
          ..streets = (json['streets'] as List<dynamic>?)
              ?.map((e) =>
                  PersonsGeolocations$QueryRoot$Persons$Streets.fromJson(
                      e as Map<String, dynamic>))
              .toList()
          ..family = json['family'] == null
              ? null
              : PersonsGeolocations$QueryRoot$Persons$Families.fromJson(
                  json['family'] as Map<String, dynamic>);

Map<String, dynamic> _$PersonsGeolocations$QueryRoot$PersonsToJson(
        PersonsGeolocations$QueryRoot$Persons instance) =>
    <String, dynamic>{
      'id': fromDartUuidValueToGraphQLUuid(instance.id),
      'name': instance.name,
      'geolocation':
          fromDartJsonNullableToGraphQLGeographyNullable(instance.geolocation),
      'areas': instance.areas?.map((e) => e.toJson()).toList(),
      'streets': instance.streets?.map((e) => e.toJson()).toList(),
      'family': instance.family?.toJson(),
    };

PersonsGeolocations$QueryRoot _$PersonsGeolocations$QueryRootFromJson(
        Map<String, dynamic> json) =>
    PersonsGeolocations$QueryRoot()
      ..persons = (json['persons'] as List<dynamic>)
          .map((e) => PersonsGeolocations$QueryRoot$Persons.fromJson(
              e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$PersonsGeolocations$QueryRootToJson(
        PersonsGeolocations$QueryRoot instance) =>
    <String, dynamic>{
      'persons': instance.persons.map((e) => e.toJson()).toList(),
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

WatchPerson$SubscriptionRoot$Persons$Classes
    _$WatchPerson$SubscriptionRoot$Persons$ClassesFromJson(
            Map<String, dynamic> json) =>
        WatchPerson$SubscriptionRoot$Persons$Classes()
          ..id = fromGraphQLUuidToDartUuidValue(json['id'])
          ..name = json['name'] as String
          ..color = json['color'] as int?
          ..photoUpdatedAt = json['photoUpdatedAt'] == null
              ? null
              : DateTime.parse(json['photoUpdatedAt'] as String);

Map<String, dynamic> _$WatchPerson$SubscriptionRoot$Persons$ClassesToJson(
        WatchPerson$SubscriptionRoot$Persons$Classes instance) =>
    <String, dynamic>{
      'id': fromDartUuidValueToGraphQLUuid(instance.id),
      'name': instance.name,
      'color': instance.color,
      'photoUpdatedAt': instance.photoUpdatedAt?.toIso8601String(),
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

WatchPerson$SubscriptionRoot$Persons$PersonsGroups$Groups
    _$WatchPerson$SubscriptionRoot$Persons$PersonsGroups$GroupsFromJson(
            Map<String, dynamic> json) =>
        WatchPerson$SubscriptionRoot$Persons$PersonsGroups$Groups()
          ..id = fromGraphQLUuidToDartUuidValue(json['id'])
          ..name = json['name'] as String
          ..color = json['color'] as int?
          ..photoUpdatedAt = json['photoUpdatedAt'] == null
              ? null
              : DateTime.parse(json['photoUpdatedAt'] as String);

Map<String,
    dynamic> _$WatchPerson$SubscriptionRoot$Persons$PersonsGroups$GroupsToJson(
        WatchPerson$SubscriptionRoot$Persons$PersonsGroups$Groups instance) =>
    <String, dynamic>{
      'id': fromDartUuidValueToGraphQLUuid(instance.id),
      'name': instance.name,
      'color': instance.color,
      'photoUpdatedAt': instance.photoUpdatedAt?.toIso8601String(),
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

WatchPerson$SubscriptionRoot$Persons$PersonsServices$Services
    _$WatchPerson$SubscriptionRoot$Persons$PersonsServices$ServicesFromJson(
            Map<String, dynamic> json) =>
        WatchPerson$SubscriptionRoot$Persons$PersonsServices$Services()
          ..id = fromGraphQLUuidToDartUuidValue(json['id'])
          ..name = json['name'] as String
          ..color = json['color'] as int?
          ..photoUpdatedAt = json['photoUpdatedAt'] == null
              ? null
              : DateTime.parse(json['photoUpdatedAt'] as String);

Map<String, dynamic>
    _$WatchPerson$SubscriptionRoot$Persons$PersonsServices$ServicesToJson(
            WatchPerson$SubscriptionRoot$Persons$PersonsServices$Services
                instance) =>
        <String, dynamic>{
          'id': fromDartUuidValueToGraphQLUuid(instance.id),
          'name': instance.name,
          'color': instance.color,
          'photoUpdatedAt': instance.photoUpdatedAt?.toIso8601String(),
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

WatchPerson$SubscriptionRoot$Persons$States
    _$WatchPerson$SubscriptionRoot$Persons$StatesFromJson(
            Map<String, dynamic> json) =>
        WatchPerson$SubscriptionRoot$Persons$States()
          ..id = fromGraphQLUuidToDartUuidValue(json['id'])
          ..color = json['color'] as int
          ..name = json['name'] as String;

Map<String, dynamic> _$WatchPerson$SubscriptionRoot$Persons$StatesToJson(
        WatchPerson$SubscriptionRoot$Persons$States instance) =>
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
          ..isStudent = json['isStudent'] as bool
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
              : WatchPerson$SubscriptionRoot$Persons$States.fromJson(
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
          ..uid = fromGraphQLUuidNullableToDartUuidValueNullable(json['uid']);

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
    };

WatchPerson$SubscriptionRoot _$WatchPerson$SubscriptionRootFromJson(
        Map<String, dynamic> json) =>
    WatchPerson$SubscriptionRoot()
      ..personsByPk = json['persons_by_pk'] == null
          ? null
          : WatchPerson$SubscriptionRoot$Persons.fromJson(
              json['persons_by_pk'] as Map<String, dynamic>);

Map<String, dynamic> _$WatchPerson$SubscriptionRootToJson(
        WatchPerson$SubscriptionRoot instance) =>
    <String, dynamic>{
      'persons_by_pk': instance.personsByPk?.toJson(),
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
      ..historyCallHistory = (json['history_call_history'] as List<dynamic>)
          .map((e) => CallHistory$SubscriptionRoot$HistoryCallHistory.fromJson(
              e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$CallHistory$SubscriptionRootToJson(
        CallHistory$SubscriptionRoot instance) =>
    <String, dynamic>{
      'history_call_history':
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
      ..historyVisitHistory = (json['history_visit_history'] as List<dynamic>)
          .map((e) =>
              VisitHistory$SubscriptionRoot$HistoryVisitHistory.fromJson(
                  e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$VisitHistory$SubscriptionRootToJson(
        VisitHistory$SubscriptionRoot instance) =>
    <String, dynamic>{
      'history_visit_history':
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
          (json['history_confession_history'] as List<dynamic>)
              .map((e) =>
                  ConfessionHistory$SubscriptionRoot$HistoryConfessionHistory
                      .fromJson(e as Map<String, dynamic>))
              .toList();

Map<String, dynamic> _$ConfessionHistory$SubscriptionRootToJson(
        ConfessionHistory$SubscriptionRoot instance) =>
    <String, dynamic>{
      'history_confession_history':
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
      ..historyKodasHistory = (json['history_kodas_history'] as List<dynamic>)
          .map((e) =>
              KodasHistory$SubscriptionRoot$HistoryKodasHistory.fromJson(
                  e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$KodasHistory$SubscriptionRootToJson(
        KodasHistory$SubscriptionRoot instance) =>
    <String, dynamic>{
      'history_kodas_history':
          instance.historyKodasHistory.map((e) => e.toJson()).toList(),
    };

EditHistory$SubscriptionRoot$HistoryEditHistory$Users
    _$EditHistory$SubscriptionRoot$HistoryEditHistory$UsersFromJson(
            Map<String, dynamic> json) =>
        EditHistory$SubscriptionRoot$HistoryEditHistory$Users()
          ..uid = fromGraphQLUuidToDartUuidValue(json['uid'])
          ..name = json['name'] as String
          ..photoUpdatedAt = json['photoUpdatedAt'] == null
              ? null
              : DateTime.parse(json['photoUpdatedAt'] as String);

Map<String, dynamic>
    _$EditHistory$SubscriptionRoot$HistoryEditHistory$UsersToJson(
            EditHistory$SubscriptionRoot$HistoryEditHistory$Users instance) =>
        <String, dynamic>{
          'uid': fromDartUuidValueToGraphQLUuid(instance.uid),
          'name': instance.name,
          'photoUpdatedAt': instance.photoUpdatedAt?.toIso8601String(),
        };

EditHistory$SubscriptionRoot$HistoryEditHistory
    _$EditHistory$SubscriptionRoot$HistoryEditHistoryFromJson(
            Map<String, dynamic> json) =>
        EditHistory$SubscriptionRoot$HistoryEditHistory()
          ..time = DateTime.parse(json['time'] as String)
          ..user = json['user'] == null
              ? null
              : EditHistory$SubscriptionRoot$HistoryEditHistory$Users.fromJson(
                  json['user'] as Map<String, dynamic>);

Map<String, dynamic> _$EditHistory$SubscriptionRoot$HistoryEditHistoryToJson(
        EditHistory$SubscriptionRoot$HistoryEditHistory instance) =>
    <String, dynamic>{
      'time': instance.time.toIso8601String(),
      'user': instance.user?.toJson(),
    };

EditHistory$SubscriptionRoot _$EditHistory$SubscriptionRootFromJson(
        Map<String, dynamic> json) =>
    EditHistory$SubscriptionRoot()
      ..historyEditHistory = (json['history_edit_history'] as List<dynamic>)
          .map((e) => EditHistory$SubscriptionRoot$HistoryEditHistory.fromJson(
              e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$EditHistory$SubscriptionRootToJson(
        EditHistory$SubscriptionRoot instance) =>
    <String, dynamic>{
      'history_edit_history':
          instance.historyEditHistory.map((e) => e.toJson()).toList(),
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
      $isNull: json['_is_null'] as bool?,
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
      '_is_null': instance.$isNull,
      '_lt': instance.$lt,
      '_lte': instance.$lte,
      '_neq': instance.$neq,
      '_nin': instance.$nin,
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

GetServicesStream$SubscriptionRoot$Services$Classes
    _$GetServicesStream$SubscriptionRoot$Services$ClassesFromJson(
            Map<String, dynamic> json) =>
        GetServicesStream$SubscriptionRoot$Services$Classes()
          ..id = fromGraphQLUuidToDartUuidValue(json['id'])
          ..name = json['name'] as String
          ..color = json['color'] as int?
          ..photoUpdatedAt = json['photoUpdatedAt'] == null
              ? null
              : DateTime.parse(json['photoUpdatedAt'] as String);

Map<String, dynamic>
    _$GetServicesStream$SubscriptionRoot$Services$ClassesToJson(
            GetServicesStream$SubscriptionRoot$Services$Classes instance) =>
        <String, dynamic>{
          'id': fromDartUuidValueToGraphQLUuid(instance.id),
          'name': instance.name,
          'color': instance.color,
          'photoUpdatedAt': instance.photoUpdatedAt?.toIso8601String(),
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
      ..studyYearsByPk = json['study_years_by_pk'] == null
          ? null
          : GetStudyYearName$QueryRoot$StudyYears.fromJson(
              json['study_years_by_pk'] as Map<String, dynamic>);

Map<String, dynamic> _$GetStudyYearName$QueryRootToJson(
        GetStudyYearName$QueryRoot instance) =>
    <String, dynamic>{
      'study_years_by_pk': instance.studyYearsByPk?.toJson(),
    };

GetUserInfoStream$SubscriptionRoot$Users$UsersData
    _$GetUserInfoStream$SubscriptionRoot$Users$UsersDataFromJson(
            Map<String, dynamic> json) =>
        GetUserInfoStream$SubscriptionRoot$Users$UsersData()
          ..firebaseAuthUid = json['firebaseAuthUid'] as String
          ..email = json['email'] as String
          ..permissions = (json['permissions'] as List<dynamic>)
              .map((e) => e as String)
              .toList();

Map<String, dynamic> _$GetUserInfoStream$SubscriptionRoot$Users$UsersDataToJson(
        GetUserInfoStream$SubscriptionRoot$Users$UsersData instance) =>
    <String, dynamic>{
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
          ..isStudent = json['isStudent'] as bool
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
          ..userData = json['user_data'] == null
              ? null
              : GetUserInfoStream$SubscriptionRoot$Users$UsersData.fromJson(
                  json['user_data'] as Map<String, dynamic>)
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
      'user_data': instance.userData?.toJson(),
      'person': instance.person?.toJson(),
    };

GetUserInfoStream$SubscriptionRoot _$GetUserInfoStream$SubscriptionRootFromJson(
        Map<String, dynamic> json) =>
    GetUserInfoStream$SubscriptionRoot()
      ..usersByPk = json['users_by_pk'] == null
          ? null
          : GetUserInfoStream$SubscriptionRoot$Users.fromJson(
              json['users_by_pk'] as Map<String, dynamic>);

Map<String, dynamic> _$GetUserInfoStream$SubscriptionRootToJson(
        GetUserInfoStream$SubscriptionRoot instance) =>
    <String, dynamic>{
      'users_by_pk': instance.usersByPk?.toJson(),
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
      conditions: json['conditions'] == null
          ? null
          : PersonsBoolExp.fromJson(json['conditions'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PersonsGeolocationsArgumentsToJson(
        PersonsGeolocationsArguments instance) =>
    <String, dynamic>{
      'conditions': instance.conditions?.toJson(),
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

EditHistoryArguments _$EditHistoryArgumentsFromJson(
        Map<String, dynamic> json) =>
    EditHistoryArguments(
      personId: fromGraphQLUuidToDartUuidValue(json['personId']),
      addWhere: (json['addWhere'] as List<dynamic>?)
          ?.map((e) =>
              HistoryEditHistoryBoolExp.fromJson(e as Map<String, dynamic>))
          .toList(),
      limit: json['limit'] as int?,
    );

Map<String, dynamic> _$EditHistoryArgumentsToJson(
        EditHistoryArguments instance) =>
    <String, dynamic>{
      'personId': fromDartUuidValueToGraphQLUuid(instance.personId),
      'addWhere': instance.addWhere?.map((e) => e.toJson()).toList(),
      'limit': instance.limit,
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
