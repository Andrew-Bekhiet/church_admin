// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_preferences.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserPreferences {
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
    final _this = this as UserPreferences;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserPreferences &&
            (identical(other.uid, _this.uid) || other.uid == _this.uid) &&
            const DeepCollectionEquality().equals(
              other.orderByPreferences,
              _this.orderByPreferences,
            ) &&
            const DeepCollectionEquality().equals(
              other.secondLinePreferences,
              _this.secondLinePreferences,
            ) &&
            (identical(other.themeChoice, _this.themeChoice) ||
                other.themeChoice == _this.themeChoice) &&
            (identical(other.greatFeastTheme, _this.greatFeastTheme) ||
                other.greatFeastTheme == _this.greatFeastTheme) &&
            (identical(other.lastHomeMode, _this.lastHomeMode) ||
                other.lastHomeMode == _this.lastHomeMode) &&
            (identical(other.updatedAt, _this.updatedAt) ||
                other.updatedAt == _this.updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as UserPreferences;
    return Object.hash(
      runtimeType,
      _this.uid,
      const DeepCollectionEquality().hash(_this.orderByPreferences),
      const DeepCollectionEquality().hash(_this.secondLinePreferences),
      _this.themeChoice,
      _this.greatFeastTheme,
      _this.lastHomeMode,
      _this.updatedAt,
    );
  }

  @override
  String toString() {
    final _this = this as UserPreferences;
    return 'UserPreferences(uid: ${_this.uid}, orderByPreferences: ${_this.orderByPreferences}, secondLinePreferences: ${_this.secondLinePreferences}, themeChoice: ${_this.themeChoice}, greatFeastTheme: ${_this.greatFeastTheme}, lastHomeMode: ${_this.lastHomeMode}, updatedAt: ${_this.updatedAt})';
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
    Json orderByPreferences,
    Json secondLinePreferences,
    ThemeChoice themeChoice,
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
    Object? secondLinePreferences = null,
    Object? themeChoice = null,
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
                  as Json,
        secondLinePreferences: null == secondLinePreferences
            ? _self.secondLinePreferences
            : secondLinePreferences // ignore: cast_nullable_to_non_nullable
                  as Json,
        themeChoice: null == themeChoice
            ? _self.themeChoice
            : themeChoice // ignore: cast_nullable_to_non_nullable
                  as ThemeChoice,
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
