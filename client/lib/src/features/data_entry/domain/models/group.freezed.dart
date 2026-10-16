// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'group.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Group {
  /// Create a copy of Group
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GroupCopyWith<Group> get copyWith =>
      _$GroupCopyWithImpl<Group>(this as Group, _$identity);

  @override
  bool operator ==(Object other) {
    final _this = this as Group;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Group &&
            (identical(other.id, _this.id) || other.id == _this.id) &&
            (identical(other.name, _this.name) || other.name == _this.name) &&
            (identical(other.color, _this.color) ||
                other.color == _this.color) &&
            (identical(other.photoUpdatedAt, _this.photoUpdatedAt) ||
                other.photoUpdatedAt == _this.photoUpdatedAt) &&
            (identical(other.blurhash, _this.blurhash) ||
                other.blurhash == _this.blurhash) &&
            (identical(other.serviceId, _this.serviceId) ||
                other.serviceId == _this.serviceId) &&
            (identical(other.service, _this.service) ||
                other.service == _this.service) &&
            (identical(other.defaultMeeting, _this.defaultMeeting) ||
                other.defaultMeeting == _this.defaultMeeting) &&
            const DeepCollectionEquality().equals(
              other.meetings,
              _this.meetings,
            ) &&
            (identical(other.validity, _this.validity) ||
                other.validity == _this.validity) &&
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
    final _this = this as Group;
    return Object.hash(
      runtimeType,
      _this.id,
      _this.name,
      _this.color,
      _this.photoUpdatedAt,
      _this.blurhash,
      _this.serviceId,
      _this.service,
      _this.defaultMeeting,
      const DeepCollectionEquality().hash(_this.meetings),
      _this.validity,
      _this.lastEdit,
      const DeepCollectionEquality().hash(_this.adminUsers),
      _this.userCanEdit,
    );
  }

  @override
  String toString() {
    final _this = this as Group;
    return 'Group(id: ${_this.id}, name: ${_this.name}, color: ${_this.color}, photoUpdatedAt: ${_this.photoUpdatedAt}, blurhash: ${_this.blurhash}, serviceId: ${_this.serviceId}, service: ${_this.service}, defaultMeeting: ${_this.defaultMeeting}, meetings: ${_this.meetings}, validity: ${_this.validity}, lastEdit: ${_this.lastEdit}, adminUsers: ${_this.adminUsers}, userCanEdit: ${_this.userCanEdit})';
  }
}

/// @nodoc
abstract mixin class $GroupCopyWith<$Res> {
  factory $GroupCopyWith(Group value, $Res Function(Group) _then) =
      _$GroupCopyWithImpl;
  @useResult
  $Res call({
    String id,
    String name,
    bool userCanEdit,
    Color? color,
    DateTime? photoUpdatedAt,
    String? blurhash,
    String? serviceId,
    Service? service,
    Meeting? defaultMeeting,
    DateTimeRange<DateTime>? validity,
    List<Meeting>? meetings,
    LastRecordedByInfo? lastEdit,
    List<User>? adminUsers,
  });

  $ServiceCopyWith<$Res>? get service;
  $MeetingCopyWith<$Res>? get defaultMeeting;
  $LastRecordedByInfoCopyWith<$Res>? get lastEdit;
}

/// @nodoc
class _$GroupCopyWithImpl<$Res> implements $GroupCopyWith<$Res> {
  _$GroupCopyWithImpl(this._self, this._then);

  final Group _self;
  final $Res Function(Group) _then;

  /// Create a copy of Group
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
    Object? serviceId = freezed,
    Object? service = freezed,
    Object? defaultMeeting = freezed,
    Object? validity = freezed,
    Object? meetings = freezed,
    Object? lastEdit = freezed,
    Object? adminUsers = freezed,
  }) {
    return _then(
      Group(
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
        serviceId: freezed == serviceId
            ? _self.serviceId
            : serviceId // ignore: cast_nullable_to_non_nullable
                  as String?,
        service: freezed == service
            ? _self.service
            : service // ignore: cast_nullable_to_non_nullable
                  as Service?,
        defaultMeeting: freezed == defaultMeeting
            ? _self.defaultMeeting
            : defaultMeeting // ignore: cast_nullable_to_non_nullable
                  as Meeting?,
        validity: freezed == validity
            ? _self.validity
            : validity // ignore: cast_nullable_to_non_nullable
                  as DateTimeRange<DateTime>?,
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

  /// Create a copy of Group
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

  /// Create a copy of Group
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

  /// Create a copy of Group
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
