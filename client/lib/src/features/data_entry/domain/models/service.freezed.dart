// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Service {
  /// Create a copy of Service
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ServiceCopyWith<Service> get copyWith =>
      _$ServiceCopyWithImpl<Service>(this as Service, _$identity);

  @override
  bool operator ==(Object other) {
    final _this = this as Service;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Service &&
            (identical(other.id, _this.id) || other.id == _this.id) &&
            (identical(other.name, _this.name) || other.name == _this.name) &&
            (identical(other.studyYearFrom, _this.studyYearFrom) ||
                other.studyYearFrom == _this.studyYearFrom) &&
            (identical(other.studyYearTo, _this.studyYearTo) ||
                other.studyYearTo == _this.studyYearTo) &&
            (identical(other.studyYearFromId, _this.studyYearFromId) ||
                other.studyYearFromId == _this.studyYearFromId) &&
            (identical(other.studyYearToId, _this.studyYearToId) ||
                other.studyYearToId == _this.studyYearToId) &&
            (identical(other.nextService, _this.nextService) ||
                other.nextService == _this.nextService) &&
            (identical(other.nextServiceId, _this.nextServiceId) ||
                other.nextServiceId == _this.nextServiceId) &&
            (identical(other.defaultMeeting, _this.defaultMeeting) ||
                other.defaultMeeting == _this.defaultMeeting) &&
            (identical(other.color, _this.color) ||
                other.color == _this.color) &&
            (identical(other.photoUpdatedAt, _this.photoUpdatedAt) ||
                other.photoUpdatedAt == _this.photoUpdatedAt) &&
            (identical(other.blurhash, _this.blurhash) ||
                other.blurhash == _this.blurhash) &&
            const DeepCollectionEquality().equals(
              other.classes,
              _this.classes,
            ) &&
            const DeepCollectionEquality().equals(other.groups, _this.groups) &&
            const DeepCollectionEquality().equals(
              other.meetings,
              _this.meetings,
            ) &&
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
    final _this = this as Service;
    return Object.hash(
      runtimeType,
      _this.id,
      _this.name,
      _this.studyYearFrom,
      _this.studyYearTo,
      _this.studyYearFromId,
      _this.studyYearToId,
      _this.nextService,
      _this.nextServiceId,
      _this.defaultMeeting,
      _this.color,
      _this.photoUpdatedAt,
      _this.blurhash,
      const DeepCollectionEquality().hash(_this.classes),
      const DeepCollectionEquality().hash(_this.groups),
      const DeepCollectionEquality().hash(_this.meetings),
      _this.lastEdit,
      const DeepCollectionEquality().hash(_this.adminUsers),
      _this.userCanEdit,
    );
  }

  @override
  String toString() {
    final _this = this as Service;
    return 'Service(id: ${_this.id}, name: ${_this.name}, studyYearFrom: ${_this.studyYearFrom}, studyYearTo: ${_this.studyYearTo}, studyYearFromId: ${_this.studyYearFromId}, studyYearToId: ${_this.studyYearToId}, nextService: ${_this.nextService}, nextServiceId: ${_this.nextServiceId}, defaultMeeting: ${_this.defaultMeeting}, color: ${_this.color}, photoUpdatedAt: ${_this.photoUpdatedAt}, blurhash: ${_this.blurhash}, classes: ${_this.classes}, groups: ${_this.groups}, meetings: ${_this.meetings}, lastEdit: ${_this.lastEdit}, adminUsers: ${_this.adminUsers}, userCanEdit: ${_this.userCanEdit})';
  }
}

/// @nodoc
abstract mixin class $ServiceCopyWith<$Res> {
  factory $ServiceCopyWith(Service value, $Res Function(Service) _then) =
      _$ServiceCopyWithImpl;
  @useResult
  $Res call({
    String id,
    String name,
    bool userCanEdit,
    StudyYear? studyYearFrom,
    StudyYear? studyYearTo,
    int? studyYearFromId,
    int? studyYearToId,
    Service? nextService,
    String? nextServiceId,
    Meeting? defaultMeeting,
    Color? color,
    DateTime? photoUpdatedAt,
    String? blurhash,
    List<Class>? classes,
    List<Group>? groups,
    List<Meeting>? meetings,
    LastRecordedByInfo? lastEdit,
    List<User>? adminUsers,
  });

  $StudyYearCopyWith<$Res>? get studyYearFrom;
  $StudyYearCopyWith<$Res>? get studyYearTo;
  $ServiceCopyWith<$Res>? get nextService;
  $MeetingCopyWith<$Res>? get defaultMeeting;
  $LastRecordedByInfoCopyWith<$Res>? get lastEdit;
}

/// @nodoc
class _$ServiceCopyWithImpl<$Res> implements $ServiceCopyWith<$Res> {
  _$ServiceCopyWithImpl(this._self, this._then);

  final Service _self;
  final $Res Function(Service) _then;

  /// Create a copy of Service
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? userCanEdit = null,
    Object? studyYearFrom = freezed,
    Object? studyYearTo = freezed,
    Object? studyYearFromId = freezed,
    Object? studyYearToId = freezed,
    Object? nextService = freezed,
    Object? nextServiceId = freezed,
    Object? defaultMeeting = freezed,
    Object? color = freezed,
    Object? photoUpdatedAt = freezed,
    Object? blurhash = freezed,
    Object? classes = freezed,
    Object? groups = freezed,
    Object? meetings = freezed,
    Object? lastEdit = freezed,
    Object? adminUsers = freezed,
  }) {
    return _then(
      Service(
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
        studyYearFrom: freezed == studyYearFrom
            ? _self.studyYearFrom
            : studyYearFrom // ignore: cast_nullable_to_non_nullable
                  as StudyYear?,
        studyYearTo: freezed == studyYearTo
            ? _self.studyYearTo
            : studyYearTo // ignore: cast_nullable_to_non_nullable
                  as StudyYear?,
        studyYearFromId: freezed == studyYearFromId
            ? _self.studyYearFromId
            : studyYearFromId // ignore: cast_nullable_to_non_nullable
                  as int?,
        studyYearToId: freezed == studyYearToId
            ? _self.studyYearToId
            : studyYearToId // ignore: cast_nullable_to_non_nullable
                  as int?,
        nextService: freezed == nextService
            ? _self.nextService
            : nextService // ignore: cast_nullable_to_non_nullable
                  as Service?,
        nextServiceId: freezed == nextServiceId
            ? _self.nextServiceId
            : nextServiceId // ignore: cast_nullable_to_non_nullable
                  as String?,
        defaultMeeting: freezed == defaultMeeting
            ? _self.defaultMeeting
            : defaultMeeting // ignore: cast_nullable_to_non_nullable
                  as Meeting?,
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
        classes: freezed == classes
            ? _self.classes
            : classes // ignore: cast_nullable_to_non_nullable
                  as List<Class>?,
        groups: freezed == groups
            ? _self.groups
            : groups // ignore: cast_nullable_to_non_nullable
                  as List<Group>?,
        meetings: freezed == meetings
            ? _self.meetings
            : meetings // ignore: cast_nullable_to_non_nullable
                  as List<Meeting>?,
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

  /// Create a copy of Service
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StudyYearCopyWith<$Res>? get studyYearFrom {
    if (_self.studyYearFrom == null) {
      return null;
    }

    return $StudyYearCopyWith<$Res>(_self.studyYearFrom!, (value) {
      return _then(_self.copyWith(studyYearFrom: value));
    });
  }

  /// Create a copy of Service
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

  /// Create a copy of Service
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ServiceCopyWith<$Res>? get nextService {
    if (_self.nextService == null) {
      return null;
    }

    return $ServiceCopyWith<$Res>(_self.nextService!, (value) {
      return _then(_self.copyWith(nextService: value));
    });
  }

  /// Create a copy of Service
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MeetingCopyWith<$Res>? get defaultMeeting {
    if (_self.defaultMeeting == null) {
      return null;
    }

    return $MeetingCopyWith<$Res>(_self.defaultMeeting!, (value) {
      return _then(_self.copyWith(defaultMeeting: value));
    });
  }

  /// Create a copy of Service
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
