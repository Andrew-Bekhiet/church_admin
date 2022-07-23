// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'last_edit_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LastEditInfo _$$_LastEditInfoFromJson(Map<String, dynamic> json) =>
    _$_LastEditInfo(
      time: DateTime.parse(json['time'] as String),
      userUID: json['user_uid'] as String,
    );

Map<String, dynamic> _$$_LastEditInfoToJson(_$_LastEditInfo instance) =>
    <String, dynamic>{
      'time': instance.time.toIso8601String(),
      'user_uid': instance.userUID,
    };
