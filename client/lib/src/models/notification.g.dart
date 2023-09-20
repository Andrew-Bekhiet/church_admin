// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class NotificationAdapter extends TypeAdapter<Notification> {
  @override
  final int typeId = 0;

  @override
  Notification read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Notification(
      id: fields[0] as String,
      title: fields[1] as String,
      body: fields[2] as String,
      sentTime: fields[3] as DateTime,
      senderUID: fields[4] as String,
      photoURL: fields[5] as String?,
      type: fields[6] == null
          ? NotificationType.remote
          : fields[6] as NotificationType,
      additionalData: (fields[7] as Map?)?.cast<String, dynamic>(),
    );
  }

  @override
  void write(BinaryWriter writer, Notification obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.body)
      ..writeByte(3)
      ..write(obj.sentTime)
      ..writeByte(4)
      ..write(obj.senderUID)
      ..writeByte(5)
      ..write(obj.photoURL)
      ..writeByte(6)
      ..write(obj.type)
      ..writeByte(7)
      ..write(obj.additionalData);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NotificationAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class NotificationTypeAdapter extends TypeAdapter<NotificationType> {
  @override
  final int typeId = 1;

  @override
  NotificationType read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return NotificationType.local;
      case 1:
        return NotificationType.remote;
      case 2:
        return NotificationType.manualPushRemote;
      default:
        return NotificationType.remote;
    }
  }

  @override
  void write(BinaryWriter writer, NotificationType obj) {
    switch (obj) {
      case NotificationType.local:
        writer.writeByte(0);
        break;
      case NotificationType.remote:
        writer.writeByte(1);
        break;
      case NotificationType.manualPushRemote:
        writer.writeByte(2);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NotificationTypeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Notification _$$_NotificationFromJson(Map json) => _$_Notification(
      id: json['id'] as String,
      title: json['title'] as String,
      body: json['body'] as String,
      sentTime: DateTime.parse(json['sentTime'] as String),
      senderUID: json['senderUID'] as String,
      photoURL: json['photoURL'] as String?,
      type: $enumDecodeNullable(_$NotificationTypeEnumMap, json['type']) ??
          NotificationType.remote,
      additionalData: (json['additionalData'] as Map?)?.map(
        (k, e) => MapEntry(k as String, e),
      ),
    );

Map<String, dynamic> _$$_NotificationToJson(_$_Notification instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'body': instance.body,
      'sentTime': instance.sentTime.toIso8601String(),
      'senderUID': instance.senderUID,
      'photoURL': instance.photoURL,
      'type': _$NotificationTypeEnumMap[instance.type]!,
      'additionalData': instance.additionalData,
    };

const _$NotificationTypeEnumMap = {
  NotificationType.local: 'local',
  NotificationType.remote: 'remote',
  NotificationType.manualPushRemote: 'manualPushRemote',
};
