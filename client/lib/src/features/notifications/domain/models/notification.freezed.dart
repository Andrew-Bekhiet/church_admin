// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Notification {
  String get id;
  String get title;
  String get body;
  DateTime get sentTime;
  String get senderUID;
  String? get imageURL;
  NotificationType get type;
  Json? get additionalData;

  /// Create a copy of Notification
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NotificationCopyWith<Notification> get copyWith =>
      _$NotificationCopyWithImpl<Notification>(
        this as Notification,
        _$identity,
      );

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Notification &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.sentTime, sentTime) ||
                other.sentTime == sentTime) &&
            (identical(other.senderUID, senderUID) ||
                other.senderUID == senderUID) &&
            (identical(other.imageURL, imageURL) ||
                other.imageURL == imageURL) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(
              other.additionalData,
              additionalData,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    title,
    body,
    sentTime,
    senderUID,
    imageURL,
    type,
    const DeepCollectionEquality().hash(additionalData),
  );

  @override
  String toString() {
    return 'Notification(id: $id, title: $title, body: $body, sentTime: $sentTime, senderUID: $senderUID, imageURL: $imageURL, type: $type, additionalData: $additionalData)';
  }
}

/// @nodoc
abstract mixin class $NotificationCopyWith<$Res> {
  factory $NotificationCopyWith(
    Notification value,
    $Res Function(Notification) _then,
  ) = _$NotificationCopyWithImpl;
  @useResult
  $Res call({
    String id,
    String title,
    String body,
    DateTime sentTime,
    String senderUID,
    NotificationType type,
    String? imageURL,
    Map<String, dynamic>? additionalData,
  });
}

/// @nodoc
class _$NotificationCopyWithImpl<$Res> implements $NotificationCopyWith<$Res> {
  _$NotificationCopyWithImpl(this._self, this._then);

  final Notification _self;
  final $Res Function(Notification) _then;

  /// Create a copy of Notification
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? body = null,
    Object? sentTime = null,
    Object? senderUID = null,
    Object? type = null,
    Object? imageURL = freezed,
    Object? additionalData = freezed,
  }) {
    return _then(
      Notification(
        id: null == id
            ? _self.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        title: null == title
            ? _self.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        body: null == body
            ? _self.body
            : body // ignore: cast_nullable_to_non_nullable
                  as String,
        sentTime: null == sentTime
            ? _self.sentTime
            : sentTime // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        senderUID: null == senderUID
            ? _self.senderUID
            : senderUID // ignore: cast_nullable_to_non_nullable
                  as String,
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as NotificationType,
        imageURL: freezed == imageURL
            ? _self.imageURL
            : imageURL // ignore: cast_nullable_to_non_nullable
                  as String?,
        additionalData: freezed == additionalData
            ? _self.additionalData
            : additionalData // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>?,
      ),
    );
  }
}
