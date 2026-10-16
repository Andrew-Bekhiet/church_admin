// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Notification {
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
    final _this = this as Notification;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Notification &&
            (identical(other.id, _this.id) || other.id == _this.id) &&
            (identical(other.title, _this.title) ||
                other.title == _this.title) &&
            (identical(other.body, _this.body) || other.body == _this.body) &&
            (identical(other.sentTime, _this.sentTime) ||
                other.sentTime == _this.sentTime) &&
            (identical(other.senderUID, _this.senderUID) ||
                other.senderUID == _this.senderUID) &&
            (identical(other.imageURL, _this.imageURL) ||
                other.imageURL == _this.imageURL) &&
            (identical(other.type, _this.type) || other.type == _this.type) &&
            const DeepCollectionEquality().equals(
              other.additionalData,
              _this.additionalData,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as Notification;
    return Object.hash(
      runtimeType,
      _this.id,
      _this.title,
      _this.body,
      _this.sentTime,
      _this.senderUID,
      _this.imageURL,
      _this.type,
      const DeepCollectionEquality().hash(_this.additionalData),
    );
  }

  @override
  String toString() {
    final _this = this as Notification;
    return 'Notification(id: ${_this.id}, title: ${_this.title}, body: ${_this.body}, sentTime: ${_this.sentTime}, senderUID: ${_this.senderUID}, imageURL: ${_this.imageURL}, type: ${_this.type}, additionalData: ${_this.additionalData})';
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
    Json? additionalData,
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
                  as Json?,
      ),
    );
  }
}
