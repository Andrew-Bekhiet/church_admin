// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_check.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DataCheck {
  int get completenessPercent;
  bool get isComplete;
  bool get familyCheck;
  bool get addressCheck;
  bool? get userOverride;
  String get familyId;
  List<DataCheckItem> get details;

  /// Create a copy of DataCheck
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DataCheckCopyWith<DataCheck> get copyWith =>
      _$DataCheckCopyWithImpl<DataCheck>(this as DataCheck, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DataCheck &&
            (identical(other.completenessPercent, completenessPercent) ||
                other.completenessPercent == completenessPercent) &&
            (identical(other.isComplete, isComplete) ||
                other.isComplete == isComplete) &&
            (identical(other.familyCheck, familyCheck) ||
                other.familyCheck == familyCheck) &&
            (identical(other.addressCheck, addressCheck) ||
                other.addressCheck == addressCheck) &&
            (identical(other.userOverride, userOverride) ||
                other.userOverride == userOverride) &&
            (identical(other.familyId, familyId) ||
                other.familyId == familyId) &&
            const DeepCollectionEquality().equals(other.details, details));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    completenessPercent,
    isComplete,
    familyCheck,
    addressCheck,
    userOverride,
    familyId,
    const DeepCollectionEquality().hash(details),
  );

  @override
  String toString() {
    return 'DataCheck(completenessPercent: $completenessPercent, isComplete: $isComplete, familyCheck: $familyCheck, addressCheck: $addressCheck, userOverride: $userOverride, familyId: $familyId, details: $details)';
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
    List<DataCheckItem> details,
    bool? userOverride,
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
    Object? details = null,
    Object? userOverride = freezed,
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
        details: null == details
            ? _self.details
            : details // ignore: cast_nullable_to_non_nullable
                  as List<DataCheckItem>,
        userOverride: freezed == userOverride
            ? _self.userOverride
            : userOverride // ignore: cast_nullable_to_non_nullable
                  as bool?,
      ),
    );
  }
}
