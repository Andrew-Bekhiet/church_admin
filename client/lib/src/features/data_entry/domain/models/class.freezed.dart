// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'class.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Class {
  /// Create a copy of Class
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ClassCopyWith<Class> get copyWith =>
      _$ClassCopyWithImpl<Class>(this as Class, _$identity);

  @override
  bool operator ==(Object other) {
    final _this = this as Class;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Class &&
            (identical(other.id, _this.id) || other.id == _this.id) &&
            (identical(other.name, _this.name) || other.name == _this.name) &&
            (identical(other.color, _this.color) ||
                other.color == _this.color) &&
            (identical(other.photoUpdatedAt, _this.photoUpdatedAt) ||
                other.photoUpdatedAt == _this.photoUpdatedAt) &&
            (identical(other.blurhash, _this.blurhash) ||
                other.blurhash == _this.blurhash) &&
            (identical(other.service, _this.service) ||
                other.service == _this.service) &&
            (identical(other.serviceId, _this.serviceId) ||
                other.serviceId == _this.serviceId) &&
            (identical(other.studyYear, _this.studyYear) ||
                other.studyYear == _this.studyYear) &&
            (identical(other.serviceStudyYear, _this.serviceStudyYear) ||
                other.serviceStudyYear == _this.serviceStudyYear) &&
            (identical(other.studyYearTo, _this.studyYearTo) ||
                other.studyYearTo == _this.studyYearTo) &&
            (identical(other.serviceStudyYearTo, _this.serviceStudyYearTo) ||
                other.serviceStudyYearTo == _this.serviceStudyYearTo) &&
            (identical(other.serviceGender, _this.serviceGender) ||
                other.serviceGender == _this.serviceGender) &&
            (identical(other.lastEdit, _this.lastEdit) ||
                other.lastEdit == _this.lastEdit) &&
            const DeepCollectionEquality().equals(
              other.adminUsers,
              _this.adminUsers,
            ) &&
            (identical(other.userCanEdit, _this.userCanEdit) ||
                other.userCanEdit == _this.userCanEdit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as Class;
    return Object.hash(
      runtimeType,
      _this.id,
      _this.name,
      _this.color,
      _this.photoUpdatedAt,
      _this.blurhash,
      _this.service,
      _this.serviceId,
      _this.studyYear,
      _this.serviceStudyYear,
      _this.studyYearTo,
      _this.serviceStudyYearTo,
      _this.serviceGender,
      _this.lastEdit,
      const DeepCollectionEquality().hash(_this.adminUsers),
      _this.userCanEdit,
    );
  }

  @override
  String toString() {
    final _this = this as Class;
    return 'Class(id: ${_this.id}, name: ${_this.name}, color: ${_this.color}, photoUpdatedAt: ${_this.photoUpdatedAt}, blurhash: ${_this.blurhash}, service: ${_this.service}, serviceId: ${_this.serviceId}, studyYear: ${_this.studyYear}, serviceStudyYear: ${_this.serviceStudyYear}, studyYearTo: ${_this.studyYearTo}, serviceStudyYearTo: ${_this.serviceStudyYearTo}, serviceGender: ${_this.serviceGender}, lastEdit: ${_this.lastEdit}, adminUsers: ${_this.adminUsers}, userCanEdit: ${_this.userCanEdit})';
  }
}

/// @nodoc
abstract mixin class $ClassCopyWith<$Res> {
  factory $ClassCopyWith(Class value, $Res Function(Class) _then) =
      _$ClassCopyWithImpl;
  @useResult
  $Res call({
    String id,
    String name,
    bool userCanEdit,
    Color? color,
    DateTime? photoUpdatedAt,
    String? blurhash,
    Service? service,
    String? serviceId,
    StudyYear? studyYear,
    int? serviceStudyYear,
    StudyYear? studyYearTo,
    int? serviceStudyYearTo,
    bool? serviceGender,
    LastRecordedByInfo? lastEdit,
    List<User>? adminUsers,
  });

  $ServiceCopyWith<$Res>? get service;
  $StudyYearCopyWith<$Res>? get studyYear;
  $StudyYearCopyWith<$Res>? get studyYearTo;
  $LastRecordedByInfoCopyWith<$Res>? get lastEdit;
}

/// @nodoc
class _$ClassCopyWithImpl<$Res> implements $ClassCopyWith<$Res> {
  _$ClassCopyWithImpl(this._self, this._then);

  final Class _self;
  final $Res Function(Class) _then;

  /// Create a copy of Class
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? userCanEdit = null,
    Object? color = freezed,
    Object? photoUpdatedAt = freezed,
    Object? blurhash = freezed,
    Object? service = freezed,
    Object? serviceId = freezed,
    Object? studyYear = freezed,
    Object? serviceStudyYear = freezed,
    Object? studyYearTo = freezed,
    Object? serviceStudyYearTo = freezed,
    Object? serviceGender = freezed,
    Object? lastEdit = freezed,
    Object? adminUsers = freezed,
  }) {
    return _then(
      Class(
        id: null == id
            ? _self.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _self.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        userCanEdit: null == userCanEdit
            ? _self.userCanEdit
            : userCanEdit // ignore: cast_nullable_to_non_nullable
                  as bool,
        color: freezed == color
            ? _self.color
            : color // ignore: cast_nullable_to_non_nullable
                  as Color?,
        photoUpdatedAt: freezed == photoUpdatedAt
            ? _self.photoUpdatedAt
            : photoUpdatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        blurhash: freezed == blurhash
            ? _self.blurhash
            : blurhash // ignore: cast_nullable_to_non_nullable
                  as String?,
        service: freezed == service
            ? _self.service
            : service // ignore: cast_nullable_to_non_nullable
                  as Service?,
        serviceId: freezed == serviceId
            ? _self.serviceId
            : serviceId // ignore: cast_nullable_to_non_nullable
                  as String?,
        studyYear: freezed == studyYear
            ? _self.studyYear
            : studyYear // ignore: cast_nullable_to_non_nullable
                  as StudyYear?,
        serviceStudyYear: freezed == serviceStudyYear
            ? _self.serviceStudyYear
            : serviceStudyYear // ignore: cast_nullable_to_non_nullable
                  as int?,
        studyYearTo: freezed == studyYearTo
            ? _self.studyYearTo
            : studyYearTo // ignore: cast_nullable_to_non_nullable
                  as StudyYear?,
        serviceStudyYearTo: freezed == serviceStudyYearTo
            ? _self.serviceStudyYearTo
            : serviceStudyYearTo // ignore: cast_nullable_to_non_nullable
                  as int?,
        serviceGender: freezed == serviceGender
            ? _self.serviceGender
            : serviceGender // ignore: cast_nullable_to_non_nullable
                  as bool?,
        lastEdit: freezed == lastEdit
            ? _self.lastEdit
            : lastEdit // ignore: cast_nullable_to_non_nullable
                  as LastRecordedByInfo?,
        adminUsers: freezed == adminUsers
            ? _self.adminUsers
            : adminUsers // ignore: cast_nullable_to_non_nullable
                  as List<User>?,
      ),
    );
  }

  /// Create a copy of Class
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ServiceCopyWith<$Res>? get service {
    if (_self.service == null) {
      return null;
    }

    return $ServiceCopyWith<$Res>(_self.service!, (value) {
      return _then(_self.copyWith(service: value));
    });
  }

  /// Create a copy of Class
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StudyYearCopyWith<$Res>? get studyYear {
    if (_self.studyYear == null) {
      return null;
    }

    return $StudyYearCopyWith<$Res>(_self.studyYear!, (value) {
      return _then(_self.copyWith(studyYear: value));
    });
  }

  /// Create a copy of Class
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StudyYearCopyWith<$Res>? get studyYearTo {
    if (_self.studyYearTo == null) {
      return null;
    }

    return $StudyYearCopyWith<$Res>(_self.studyYearTo!, (value) {
      return _then(_self.copyWith(studyYearTo: value));
    });
  }

  /// Create a copy of Class
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LastRecordedByInfoCopyWith<$Res>? get lastEdit {
    if (_self.lastEdit == null) {
      return null;
    }

    return $LastRecordedByInfoCopyWith<$Res>(_self.lastEdit!, (value) {
      return _then(_self.copyWith(lastEdit: value));
    });
  }
}
