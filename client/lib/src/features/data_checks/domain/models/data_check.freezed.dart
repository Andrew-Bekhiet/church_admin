// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_check.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DataCheck {
  /// Create a copy of DataCheck
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DataCheckCopyWith<DataCheck> get copyWith =>
      _$DataCheckCopyWithImpl<DataCheck>(this as DataCheck, _$identity);

  @override
  bool operator ==(Object other) {
    final _this = this as DataCheck;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DataCheck &&
            (identical(other.completenessPercent, _this.completenessPercent) ||
                other.completenessPercent == _this.completenessPercent) &&
            (identical(other.isComplete, _this.isComplete) ||
                other.isComplete == _this.isComplete) &&
            (identical(other.familyCheck, _this.familyCheck) ||
                other.familyCheck == _this.familyCheck) &&
            (identical(other.addressCheck, _this.addressCheck) ||
                other.addressCheck == _this.addressCheck) &&
            (identical(other.userOverride, _this.userOverride) ||
                other.userOverride == _this.userOverride) &&
            (identical(other.familyId, _this.familyId) ||
                other.familyId == _this.familyId) &&
            const DeepCollectionEquality().equals(
              other.checksDetails,
              _this.checksDetails,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as DataCheck;
    return Object.hash(
      runtimeType,
      _this.completenessPercent,
      _this.isComplete,
      _this.familyCheck,
      _this.addressCheck,
      _this.userOverride,
      _this.familyId,
      const DeepCollectionEquality().hash(_this.checksDetails),
    );
  }

  @override
  String toString() {
    final _this = this as DataCheck;
    return 'DataCheck(completenessPercent: ${_this.completenessPercent}, isComplete: ${_this.isComplete}, familyCheck: ${_this.familyCheck}, addressCheck: ${_this.addressCheck}, userOverride: ${_this.userOverride}, familyId: ${_this.familyId}, checksDetails: ${_this.checksDetails})';
  }
}

/// @nodoc
abstract mixin class $DataCheckCopyWith<$Res> {
  factory $DataCheckCopyWith(DataCheck value, $Res Function(DataCheck) _then) =
      _$DataCheckCopyWithImpl;
  @useResult
  $Res call({
    String familyId,
    int completenessPercent,
    bool isComplete,
    bool familyCheck,
    bool addressCheck,
    List<DataCheckDetail> checksDetails,
    DataCheckOverride userOverride,
  });
}

/// @nodoc
class _$DataCheckCopyWithImpl<$Res> implements $DataCheckCopyWith<$Res> {
  _$DataCheckCopyWithImpl(this._self, this._then);

  final DataCheck _self;
  final $Res Function(DataCheck) _then;

  /// Create a copy of DataCheck
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? familyId = null,
    Object? completenessPercent = null,
    Object? isComplete = null,
    Object? familyCheck = null,
    Object? addressCheck = null,
    Object? checksDetails = null,
    Object? userOverride = null,
  }) {
    return _then(
      DataCheck(
        familyId: null == familyId
            ? _self.familyId
            : familyId // ignore: cast_nullable_to_non_nullable
                  as String,
        completenessPercent: null == completenessPercent
            ? _self.completenessPercent
            : completenessPercent // ignore: cast_nullable_to_non_nullable
                  as int,
        isComplete: null == isComplete
            ? _self.isComplete
            : isComplete // ignore: cast_nullable_to_non_nullable
                  as bool,
        familyCheck: null == familyCheck
            ? _self.familyCheck
            : familyCheck // ignore: cast_nullable_to_non_nullable
                  as bool,
        addressCheck: null == addressCheck
            ? _self.addressCheck
            : addressCheck // ignore: cast_nullable_to_non_nullable
                  as bool,
        checksDetails: null == checksDetails
            ? _self.checksDetails
            : checksDetails // ignore: cast_nullable_to_non_nullable
                  as List<DataCheckDetail>,
        userOverride: null == userOverride
            ? _self.userOverride
            : userOverride // ignore: cast_nullable_to_non_nullable
                  as DataCheckOverride,
      ),
    );
  }
}
