import 'package:church_admin/church_admin.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'notification.freezed.dart';
part 'notification.g.dart';

@immutable
@freezed
@HiveType(typeId: 0)
class Notification with _$Notification {
  const factory Notification({
    @HiveField(0) required String id,
    @HiveField(1) required String title,
    @HiveField(2) required String body,
    @HiveField(3) required DateTime sentTime,
    @HiveField(4) required String senderUID,
    @HiveField(5, defaultValue: NotificationType.remote)
    @Default(NotificationType.remote)
        NotificationType type,
    @HiveField(6) Json? additionalData,
  }) = _Notification;

  factory Notification.fromJson(Map<String, Object?> json) =>
      _$NotificationFromJson(json);

  factory Notification.fromRemoteMessage(RemoteMessage message) => Notification(
        id: message.messageId ??
            DateTime.now().millisecondsSinceEpoch.toString(),
        type: message.notification == null
            ? NotificationType.manualPushRemote
            : NotificationType.remote,
        body: message.notification?.body ??
            message.data['body'] ??
            message.data['content'],
        title: message.notification?.title ?? message.data['title'],
        sentTime: message.sentTime ?? DateTime.now(),
        senderUID: message.data['senderUID']!,
        additionalData: message.data,
      );
}

enum NotificationType { local, remote, manualPushRemote }
