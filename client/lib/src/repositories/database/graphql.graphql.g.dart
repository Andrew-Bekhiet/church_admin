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
          ..bounds = json['bounds'] as Map<String, dynamic>?
          ..color = json['color'] as int?
          ..photoUpdatedAt = json['photoUpdatedAt'] == null
              ? null
              : DateTime.parse(json['photoUpdatedAt'] as String);

Map<String, dynamic> _$GetAreasStream$SubscriptionRoot$AreasToJson(
        GetAreasStream$SubscriptionRoot$Areas instance) =>
    <String, dynamic>{
      'id': fromDartUuidValueToGraphQLUuid(instance.id),
      'name': instance.name,
      'bounds': instance.bounds,
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
      college: json['college'] == null
          ? null
          : CollegesBoolExp.fromJson(json['college'] as Map<String, dynamic>),
      collegeId: json['collegeId'] == null
          ? null
          : UuidComparisonExp.fromJson(
              json['collegeId'] as Map<String, dynamic>),
      color: json['color'] == null
          ? null
          : IntComparisonExp.fromJson(json['color'] as Map<String, dynamic>),
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
          : UuidComparisonExp.fromJson(
              json['shammasLevel'] as Map<String, dynamic>),
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
      time: json['time'] == null
          ? null
          : TimestamptzComparisonExp.fromJson(
              json['time'] as Map<String, dynamic>),
      userRole: json['userRole'] == null
          ? null
          : StringComparisonExp.fromJson(
              json['userRole'] as Map<String, dynamic>),
      userUid: json['userUid'] == null
          ? null
          : UuidComparisonExp.fromJson(json['userUid'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$HistoryCallHistoryBoolExpToJson(
        HistoryCallHistoryBoolExp instance) =>
    <String, dynamic>{
      '_and': instance.$and?.map((e) => e.toJson()).toList(),
      '_not': instance.$not?.toJson(),
      '_or': instance.$or?.map((e) => e.toJson()).toList(),
      'person': instance.person?.toJson(),
      'personId': instance.personId?.toJson(),
      'time': instance.time?.toJson(),
      'userRole': instance.userRole?.toJson(),
      'userUid': instance.userUid?.toJson(),
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
      $eq: json['_eq'] as Map<String, dynamic>?,
      $gt: json['_gt'] as Map<String, dynamic>?,
      $gte: json['_gte'] as Map<String, dynamic>?,
      $in: (json['_in'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList(),
      $isNull: json['_is_null'] as bool?,
      $lt: json['_lt'] as Map<String, dynamic>?,
      $lte: json['_lte'] as Map<String, dynamic>?,
      $neq: json['_neq'] as Map<String, dynamic>?,
      $nin: (json['_nin'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList(),
      $stDWithin: json['_st_d_within'] == null
          ? null
          : StDWithinGeographyInput.fromJson(
              json['_st_d_within'] as Map<String, dynamic>),
      $stIntersects: json['_st_intersects'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$GeographyComparisonExpToJson(
        GeographyComparisonExp instance) =>
    <String, dynamic>{
      '_cast': instance.$cast?.toJson(),
      '_eq': instance.$eq,
      '_gt': instance.$gt,
      '_gte': instance.$gte,
      '_in': instance.$in,
      '_is_null': instance.$isNull,
      '_lt': instance.$lt,
      '_lte': instance.$lte,
      '_neq': instance.$neq,
      '_nin': instance.$nin,
      '_st_d_within': instance.$stDWithin?.toJson(),
      '_st_intersects': instance.$stIntersects,
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
      $eq: json['_eq'] as Map<String, dynamic>?,
      $gt: json['_gt'] as Map<String, dynamic>?,
      $gte: json['_gte'] as Map<String, dynamic>?,
      $in: (json['_in'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList(),
      $isNull: json['_is_null'] as bool?,
      $lt: json['_lt'] as Map<String, dynamic>?,
      $lte: json['_lte'] as Map<String, dynamic>?,
      $neq: json['_neq'] as Map<String, dynamic>?,
      $nin: (json['_nin'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList(),
      $st3dDWithin: json['_st_3d_d_within'] == null
          ? null
          : StDWithinInput.fromJson(
              json['_st_3d_d_within'] as Map<String, dynamic>),
      $st3dIntersects: json['_st_3d_intersects'] as Map<String, dynamic>?,
      $stContains: json['_st_contains'] as Map<String, dynamic>?,
      $stCrosses: json['_st_crosses'] as Map<String, dynamic>?,
      $stDWithin: json['_st_d_within'] == null
          ? null
          : StDWithinInput.fromJson(
              json['_st_d_within'] as Map<String, dynamic>),
      $stEquals: json['_st_equals'] as Map<String, dynamic>?,
      $stIntersects: json['_st_intersects'] as Map<String, dynamic>?,
      $stOverlaps: json['_st_overlaps'] as Map<String, dynamic>?,
      $stTouches: json['_st_touches'] as Map<String, dynamic>?,
      $stWithin: json['_st_within'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$GeometryComparisonExpToJson(
        GeometryComparisonExp instance) =>
    <String, dynamic>{
      '_cast': instance.$cast?.toJson(),
      '_eq': instance.$eq,
      '_gt': instance.$gt,
      '_gte': instance.$gte,
      '_in': instance.$in,
      '_is_null': instance.$isNull,
      '_lt': instance.$lt,
      '_lte': instance.$lte,
      '_neq': instance.$neq,
      '_nin': instance.$nin,
      '_st_3d_d_within': instance.$st3dDWithin?.toJson(),
      '_st_3d_intersects': instance.$st3dIntersects,
      '_st_contains': instance.$stContains,
      '_st_crosses': instance.$stCrosses,
      '_st_d_within': instance.$stDWithin?.toJson(),
      '_st_equals': instance.$stEquals,
      '_st_intersects': instance.$stIntersects,
      '_st_overlaps': instance.$stOverlaps,
      '_st_touches': instance.$stTouches,
      '_st_within': instance.$stWithin,
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
      from: json['from'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$StDWithinInputToJson(StDWithinInput instance) =>
    <String, dynamic>{
      'distance': instance.distance,
      'from': instance.from,
    };

StDWithinGeographyInput _$StDWithinGeographyInputFromJson(
        Map<String, dynamic> json) =>
    StDWithinGeographyInput(
      distance: (json['distance'] as num).toDouble(),
      from: json['from'] as Map<String, dynamic>,
      useSpheroid: json['use_spheroid'] as bool?,
    );

Map<String, dynamic> _$StDWithinGeographyInputToJson(
        StDWithinGeographyInput instance) =>
    <String, dynamic>{
      'distance': instance.distance,
      'from': instance.from,
      'use_spheroid': instance.useSpheroid,
    };

JsonbComparisonExp _$JsonbComparisonExpFromJson(Map<String, dynamic> json) =>
    JsonbComparisonExp(
      $cast: json['_cast'] == null
          ? null
          : JsonbCastExp.fromJson(json['_cast'] as Map<String, dynamic>),
      $containedIn: json['_contained_in'] as Map<String, dynamic>?,
      $contains: json['_contains'] as Map<String, dynamic>?,
      $eq: json['_eq'] as Map<String, dynamic>?,
      $gt: json['_gt'] as Map<String, dynamic>?,
      $gte: json['_gte'] as Map<String, dynamic>?,
      $hasKey: json['_has_key'] as String?,
      $hasKeysAll: (json['_has_keys_all'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      $hasKeysAny: (json['_has_keys_any'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      $in: (json['_in'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList(),
      $isNull: json['_is_null'] as bool?,
      $lt: json['_lt'] as Map<String, dynamic>?,
      $lte: json['_lte'] as Map<String, dynamic>?,
      $neq: json['_neq'] as Map<String, dynamic>?,
      $nin: (json['_nin'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList(),
    );

Map<String, dynamic> _$JsonbComparisonExpToJson(JsonbComparisonExp instance) =>
    <String, dynamic>{
      '_cast': instance.$cast?.toJson(),
      '_contained_in': instance.$containedIn,
      '_contains': instance.$contains,
      '_eq': instance.$eq,
      '_gt': instance.$gt,
      '_gte': instance.$gte,
      '_has_key': instance.$hasKey,
      '_has_keys_all': instance.$hasKeysAll,
      '_has_keys_any': instance.$hasKeysAny,
      '_in': instance.$in,
      '_is_null': instance.$isNull,
      '_lt': instance.$lt,
      '_lte': instance.$lte,
      '_neq': instance.$neq,
      '_nin': instance.$nin,
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
      'user': instance.user?.toJson(),
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
    );

Map<String, dynamic> _$UsersBoolExpToJson(UsersBoolExp instance) =>
    <String, dynamic>{
      '_and': instance.$and?.map((e) => e.toJson()).toList(),
      '_not': instance.$not?.toJson(),
      '_or': instance.$or?.map((e) => e.toJson()).toList(),
      'adminOn': instance.adminOn?.toJson(),
      'email': instance.email?.toJson(),
      'firebaseAuthUid': instance.firebaseAuthUid?.toJson(),
      'firestoreId': instance.firestoreId?.toJson(),
      'isUserAllowedToRead': instance.isUserAllowedToRead?.toJson(),
      'is_user_allowed_to_change': instance.isUserAllowedToChange?.toJson(),
      'lastEdit': instance.lastEdit?.toJson(),
      'permissions': instance.permissions?.toJson(),
      'person': instance.person?.toJson(),
      'photoUpdatedAt': instance.photoUpdatedAt?.toJson(),
      'uid': instance.uid?.toJson(),
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
          : IntComparisonExp.fromJson(json['color'] as Map<String, dynamic>),
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
          : IntComparisonExp.fromJson(json['color'] as Map<String, dynamic>),
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
      time: json['time'] == null
          ? null
          : TimestamptzComparisonExp.fromJson(
              json['time'] as Map<String, dynamic>),
      userRole: json['userRole'] == null
          ? null
          : StringComparisonExp.fromJson(
              json['userRole'] as Map<String, dynamic>),
      userUid: json['userUid'] == null
          ? null
          : UuidComparisonExp.fromJson(json['userUid'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$HistoryVisitHistoryBoolExpToJson(
        HistoryVisitHistoryBoolExp instance) =>
    <String, dynamic>{
      '_and': instance.$and?.map((e) => e.toJson()).toList(),
      '_not': instance.$not?.toJson(),
      '_or': instance.$or?.map((e) => e.toJson()).toList(),
      'person': instance.person?.toJson(),
      'personId': instance.personId?.toJson(),
      'time': instance.time?.toJson(),
      'userRole': instance.userRole?.toJson(),
      'userUid': instance.userUid?.toJson(),
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

UpdatePerson$MutationRoot _$UpdatePerson$MutationRootFromJson(
        Map<String, dynamic> json) =>
    UpdatePerson$MutationRoot()
      ..updatePersonsByPk = json['update_persons_by_pk'] == null
          ? null
          : UpdatePerson$MutationRoot$Persons.fromJson(
              json['update_persons_by_pk'] as Map<String, dynamic>);

Map<String, dynamic> _$UpdatePerson$MutationRootToJson(
        UpdatePerson$MutationRoot instance) =>
    <String, dynamic>{
      'update_persons_by_pk': instance.updatePersonsByPk?.toJson(),
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
      geolocation: json['geolocation'] as Map<String, dynamic>?,
      id: fromGraphQLUuidNullableToDartUuidValueNullable(json['id']),
      isServant: json['isServant'] as bool?,
      isShammas: json['isShammas'] as bool?,
      isStudent: json['isStudent'] as bool?,
      jobDescription: json['jobDescription'] as String?,
      jobId: fromGraphQLUuidNullableToDartUuidValueNullable(json['jobId']),
      mainPhone: json['mainPhone'] as String?,
      name: json['name'] as String?,
      notes: json['notes'] as String?,
      otherPhones: json['otherPhones'] as Map<String, dynamic>?,
      personTypeId:
          fromGraphQLUuidNullableToDartUuidValueNullable(json['personTypeId']),
      photoUpdatedAt: json['photoUpdatedAt'] == null
          ? null
          : DateTime.parse(json['photoUpdatedAt'] as String),
      qualificationId: fromGraphQLUuidNullableToDartUuidValueNullable(
          json['qualificationId']),
      schoolId:
          fromGraphQLUuidNullableToDartUuidValueNullable(json['schoolId']),
      shammasLevel:
          fromGraphQLUuidNullableToDartUuidValueNullable(json['shammasLevel']),
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
      'geolocation': instance.geolocation,
      'id': fromDartUuidValueNullableToGraphQLUuidNullable(instance.id),
      'isServant': instance.isServant,
      'isShammas': instance.isShammas,
      'isStudent': instance.isStudent,
      'jobDescription': instance.jobDescription,
      'jobId': fromDartUuidValueNullableToGraphQLUuidNullable(instance.jobId),
      'mainPhone': instance.mainPhone,
      'name': instance.name,
      'notes': instance.notes,
      'otherPhones': instance.otherPhones,
      'personTypeId':
          fromDartUuidValueNullableToGraphQLUuidNullable(instance.personTypeId),
      'photoUpdatedAt': instance.photoUpdatedAt?.toIso8601String(),
      'qualificationId': fromDartUuidValueNullableToGraphQLUuidNullable(
          instance.qualificationId),
      'schoolId':
          fromDartUuidValueNullableToGraphQLUuidNullable(instance.schoolId),
      'shammasLevel':
          fromDartUuidValueNullableToGraphQLUuidNullable(instance.shammasLevel),
      'stateId':
          fromDartUuidValueNullableToGraphQLUuidNullable(instance.stateId),
      'storeId':
          fromDartUuidValueNullableToGraphQLUuidNullable(instance.storeId),
      'studyYearId': instance.studyYearId,
      'uid': fromDartUuidValueNullableToGraphQLUuidNullable(instance.uid),
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

GetUserInfoStream$SubscriptionRoot$Users$Persons
    _$GetUserInfoStream$SubscriptionRoot$Users$PersonsFromJson(
            Map<String, dynamic> json) =>
        GetUserInfoStream$SubscriptionRoot$Users$Persons()
          ..id = fromGraphQLUuidToDartUuidValue(json['id'])
          ..name = json['name'] as String
          ..address = json['address'] as String?
          ..geolocation = json['geolocation'] as Map<String, dynamic>?
          ..mainPhone = json['mainPhone'] as String?
          ..otherPhones = json['otherPhones'] as Map<String, dynamic>
          ..birthdate = json['birthdate'] == null
              ? null
              : DateTime.parse(json['birthdate'] as String)
          ..gender = json['gender'] as bool
          ..isShammas = json['isShammas'] as bool
          ..shammasLevel = fromGraphQLUuidNullableToDartUuidValueNullable(
              json['shammasLevel'])
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
          ..lastKodas = json['lastKodas'] as Map<String, dynamic>?
          ..lastConfession = json['lastConfession'] as Map<String, dynamic>?;

Map<String, dynamic> _$GetUserInfoStream$SubscriptionRoot$Users$PersonsToJson(
        GetUserInfoStream$SubscriptionRoot$Users$Persons instance) =>
    <String, dynamic>{
      'id': fromDartUuidValueToGraphQLUuid(instance.id),
      'name': instance.name,
      'address': instance.address,
      'geolocation': instance.geolocation,
      'mainPhone': instance.mainPhone,
      'otherPhones': instance.otherPhones,
      'birthdate': instance.birthdate?.toIso8601String(),
      'gender': instance.gender,
      'isShammas': instance.isShammas,
      'shammasLevel':
          fromDartUuidValueNullableToGraphQLUuidNullable(instance.shammasLevel),
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
      'lastKodas': instance.lastKodas,
      'lastConfession': instance.lastConfession,
    };

GetUserInfoStream$SubscriptionRoot$Users
    _$GetUserInfoStream$SubscriptionRoot$UsersFromJson(
            Map<String, dynamic> json) =>
        GetUserInfoStream$SubscriptionRoot$Users()
          ..uid = fromGraphQLUuidToDartUuidValue(json['uid'])
          ..firebaseAuthUid = json['firebaseAuthUid'] as String?
          ..email = json['email'] as String
          ..permissions = (json['permissions'] as List<dynamic>)
              .map((e) => e as String)
              .toList()
          ..person = json['person'] == null
              ? null
              : GetUserInfoStream$SubscriptionRoot$Users$Persons.fromJson(
                  json['person'] as Map<String, dynamic>);

Map<String, dynamic> _$GetUserInfoStream$SubscriptionRoot$UsersToJson(
        GetUserInfoStream$SubscriptionRoot$Users instance) =>
    <String, dynamic>{
      'uid': fromDartUuidValueToGraphQLUuid(instance.uid),
      'firebaseAuthUid': instance.firebaseAuthUid,
      'email': instance.email,
      'permissions': instance.permissions,
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

UpdatePersonArguments _$UpdatePersonArgumentsFromJson(
        Map<String, dynamic> json) =>
    UpdatePersonArguments(
      id: fromGraphQLUuidToDartUuidValue(json['id']),
      newData:
          PersonsSetInput.fromJson(json['newData'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UpdatePersonArgumentsToJson(
        UpdatePersonArguments instance) =>
    <String, dynamic>{
      'id': fromDartUuidValueToGraphQLUuid(instance.id),
      'newData': instance.newData.toJson(),
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
