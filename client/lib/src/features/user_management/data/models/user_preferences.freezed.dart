// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_preferences.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserPreferences {
  String get uid;
  Json get orderByPreferences;
  bool? get darkTheme;
  bool get greatFeastTheme;
  HomeMode? get lastHomeMode;
  DateTime? get updatedAt;

  /// Create a copy of UserPreferences
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserPreferencesCopyWith<UserPreferences> get copyWith =>
      _$UserPreferencesCopyWithImpl<UserPreferences>(
        this as UserPreferences,
        _$identity,
      );

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserPreferences &&
            (identical(other.uid, uid) || other.uid == uid) &&
            const DeepCollectionEquality().equals(
              other.orderByPreferences,
              orderByPreferences,
            ) &&
            (identical(other.darkTheme, darkTheme) ||
                other.darkTheme == darkTheme) &&
            (identical(other.greatFeastTheme, greatFeastTheme) ||
                other.greatFeastTheme == greatFeastTheme) &&
            (identical(other.lastHomeMode, lastHomeMode) ||
                other.lastHomeMode == lastHomeMode) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    uid,
    const DeepCollectionEquality().hash(orderByPreferences),
    darkTheme,
    greatFeastTheme,
    lastHomeMode,
    updatedAt,
  );

  @override
  String toString() {
    return 'UserPreferences(uid: $uid, orderByPreferences: $orderByPreferences, darkTheme: $darkTheme, greatFeastTheme: $greatFeastTheme, lastHomeMode: $lastHomeMode, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class $UserPreferencesCopyWith<$Res> {
  factory $UserPreferencesCopyWith(
    UserPreferences value,
    $Res Function(UserPreferences) _then,
  ) = _$UserPreferencesCopyWithImpl;
  @useResult
  $Res call({
    String uid,
    Map<String, dynamic> orderByPreferences,
    bool? darkTheme,
    bool greatFeastTheme,
    HomeMode? lastHomeMode,
    DateTime? updatedAt,
  });
}

/// @nodoc
class _$UserPreferencesCopyWithImpl<$Res>
    implements $UserPreferencesCopyWith<$Res> {
  _$UserPreferencesCopyWithImpl(this._self, this._then);

  final UserPreferences _self;
  final $Res Function(UserPreferences) _then;

  /// Create a copy of UserPreferences
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? orderByPreferences = null,
    Object? darkTheme = freezed,
    Object? greatFeastTheme = null,
    Object? lastHomeMode = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      UserPreferences(
        uid: null == uid
            ? _self.uid
            : uid // ignore: cast_nullable_to_non_nullable
                  as String,
        orderByPreferences: null == orderByPreferences
            ? _self.orderByPreferences
            : orderByPreferences // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>,
        darkTheme: freezed == darkTheme
            ? _self.darkTheme
            : darkTheme // ignore: cast_nullable_to_non_nullable
                  as bool?,
        greatFeastTheme: null == greatFeastTheme
            ? _self.greatFeastTheme
            : greatFeastTheme // ignore: cast_nullable_to_non_nullable
                  as bool,
        lastHomeMode: freezed == lastHomeMode
            ? _self.lastHomeMode
            : lastHomeMode // ignore: cast_nullable_to_non_nullable
                  as HomeMode?,
        updatedAt: freezed == updatedAt
            ? _self.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
      ),
    );
  }
}
