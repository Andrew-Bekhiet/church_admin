// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_setting.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NotificationSetting {
  int get hours;
  int get minutes;
  int get intervalInDays;

  /// Create a copy of NotificationSetting
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NotificationSettingCopyWith<NotificationSetting> get copyWith =>
      _$NotificationSettingCopyWithImpl<NotificationSetting>(
        this as NotificationSetting,
        _$identity,
      );

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NotificationSetting &&
            (identical(other.hours, hours) || other.hours == hours) &&
            (identical(other.minutes, minutes) || other.minutes == minutes) &&
            (identical(other.intervalInDays, intervalInDays) ||
                other.intervalInDays == intervalInDays));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, hours, minutes, intervalInDays);

  @override
  String toString() {
    return 'NotificationSetting(hours: $hours, minutes: $minutes, intervalInDays: $intervalInDays)';
  }
}

/// @nodoc
abstract mixin class $NotificationSettingCopyWith<$Res> {
  factory $NotificationSettingCopyWith(
    NotificationSetting value,
    $Res Function(NotificationSetting) _then,
  ) = _$NotificationSettingCopyWithImpl;
  @useResult
  $Res call({int hours, int minutes, int intervalInDays});
}

/// @nodoc
class _$NotificationSettingCopyWithImpl<$Res>
    implements $NotificationSettingCopyWith<$Res> {
  _$NotificationSettingCopyWithImpl(this._self, this._then);

  final NotificationSetting _self;
  final $Res Function(NotificationSetting) _then;

  /// Create a copy of NotificationSetting
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hours = null,
    Object? minutes = null,
    Object? intervalInDays = null,
  }) {
    return _then(
      NotificationSetting(
        hours: null == hours
            ? _self.hours
            : hours // ignore: cast_nullable_to_non_nullable
                  as int,
        minutes: null == minutes
            ? _self.minutes
            : minutes // ignore: cast_nullable_to_non_nullable
                  as int,
        intervalInDays: null == intervalInDays
            ? _self.intervalInDays
            : intervalInDays // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}
