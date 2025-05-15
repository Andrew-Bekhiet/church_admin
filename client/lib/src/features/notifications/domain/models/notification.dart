import 'package:church_admin/church_admin.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification.freezed.dart';
part 'notification.g.dart';

@immutable
@freezed
abstract class Notification with _$Notification {
  const factory Notification({
    required String id,
    required String title,
    required String body,
    required DateTime sentTime,
    required String senderUID,
    String? imageURL,
    @Default(NotificationType.remote) NotificationType type,
    Json? additionalData,
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
        imageURL: _getImageURL(message),
        additionalData: message.data,
      );

  static String? _getImageURL(RemoteMessage message) {
    if (message.data['imageURL'] != null) return message.data['imageURL'];

    switch (CurrentPlatformService.I.effectiveValue) {
      case PlatformValue.android:
        return message.notification?.android?.imageUrl;

      case PlatformValue.ios:
        return message.notification?.apple?.imageUrl;

      case PlatformValue.web:
        return message.notification?.web?.image;

      default:
        return null;
    }
  }
}

enum NotificationType { local, remote, manualPushRemote }
