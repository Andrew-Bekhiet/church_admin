import 'package:church_admin/church_admin.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification.freezed.dart';
part 'notification.g.dart';

@immutable
@freezed
@JsonSerializable()
class Notification with _$Notification {
  @override
  final String id;
  @override
  final String title;
  @override
  final String body;
  @override
  final DateTime sentTime;
  @override
  final String senderUID;
  @override
  final String? imageURL;
  @override
  final NotificationType type;
  @override
  final Json? additionalData;

  const Notification({
    required this.id,
    required this.title,
    required this.body,
    required this.sentTime,
    required this.senderUID,
    this.imageURL,
    this.type = NotificationType.remote,
    this.additionalData,
  });

  factory Notification.fromJson(Map<String, Object?> json) =>
      _$NotificationFromJson(json);

  Map<String, dynamic> toJson() => _$NotificationToJson(this);

  factory Notification.fromRemoteMessage(RemoteMessage message) => Notification(
    id: message.messageId ?? DateTime.now().millisecondsSinceEpoch.toString(),
    type: NotificationType.values.byName(
      message.data['type'] ?? NotificationType.remote.name,
    ),
    body:
        message.notification?.body ??
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

enum NotificationType {
  local,
  remote,
  manualPushRemote,
  triggerShorebirdUpdate,
}
