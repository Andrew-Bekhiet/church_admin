// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'last_recorded_by_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LastRecordedByInfo {
  /// Create a copy of LastRecordedByInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LastRecordedByInfoCopyWith<LastRecordedByInfo> get copyWith =>
      _$LastRecordedByInfoCopyWithImpl<LastRecordedByInfo>(
        this as LastRecordedByInfo,
        _$identity,
      );

  @override
  bool operator ==(Object other) {
    final _this = this as LastRecordedByInfo;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LastRecordedByInfo &&
            (identical(other.time, _this.time) || other.time == _this.time) &&
            (identical(other.recordedBy, _this.recordedBy) ||
                other.recordedBy == _this.recordedBy) &&
            (identical(other.user, _this.user) || other.user == _this.user) &&
            (identical(other.isFatherVisit, _this.isFatherVisit) ||
                other.isFatherVisit == _this.isFatherVisit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as LastRecordedByInfo;
    return Object.hash(
      runtimeType,
      _this.time,
      _this.recordedBy,
      _this.user,
      _this.isFatherVisit,
    );
  }

  @override
  String toString() {
    final _this = this as LastRecordedByInfo;
    return 'LastRecordedByInfo(time: ${_this.time}, recordedBy: ${_this.recordedBy}, user: ${_this.user}, isFatherVisit: ${_this.isFatherVisit})';
  }
}

/// @nodoc
abstract mixin class $LastRecordedByInfoCopyWith<$Res> {
  factory $LastRecordedByInfoCopyWith(
    LastRecordedByInfo value,
    $Res Function(LastRecordedByInfo) _then,
  ) = _$LastRecordedByInfoCopyWithImpl;
  @useResult
  $Res call({
    bool isFatherVisit,
    DateTime? time,
    String? recordedBy,
    User? user,
  });

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$LastRecordedByInfoCopyWithImpl<$Res>
    implements $LastRecordedByInfoCopyWith<$Res> {
  _$LastRecordedByInfoCopyWithImpl(this._self, this._then);

  final LastRecordedByInfo _self;
  final $Res Function(LastRecordedByInfo) _then;

  /// Create a copy of LastRecordedByInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isFatherVisit = null,
    Object? time = freezed,
    Object? recordedBy = freezed,
    Object? user = freezed,
  }) {
    return _then(
      LastRecordedByInfo(
        isFatherVisit: null == isFatherVisit
            ? _self.isFatherVisit
            : isFatherVisit // ignore: cast_nullable_to_non_nullable
                  as bool,
        time: freezed == time
            ? _self.time!
            : time // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        recordedBy: freezed == recordedBy
            ? _self.recordedBy
            : recordedBy // ignore: cast_nullable_to_non_nullable
                  as String?,
        user: freezed == user
            ? _self.user
            : user // ignore: cast_nullable_to_non_nullable
                  as User?,
      ),
    );
  }

  /// Create a copy of LastRecordedByInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_self.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_self.user!, (value) {
      return _then(_self.copyWith(user: value));
    });
  }
}
