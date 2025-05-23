// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Service {
  String get id;
  String get name;
  StudyYear? get studyYearFrom;
  StudyYear? get studyYearTo;
  int? get studyYearFromId;
  int? get studyYearToId;
  Service? get nextService;
  String? get nextServiceId;
  @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
  Color? get color;
  DateTime? get photoUpdatedAt;
  String? get blurhash;
  List<Class>? get classes;
  List<Group>? get groups;
  LastRecordedByInfo? get lastEdit;
  @JsonKey(fromJson: adminUsersFromJson, toJson: adminUsersToJson)
  List<User>? get adminUsers;
  HistoryAggregateData? get attendanceHistoryAggregate;
  HistoryAggregateData? get attendanceDaysConstraintsAggregate;

  /// Create a copy of Service
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ServiceCopyWith<Service> get copyWith =>
      _$ServiceCopyWithImpl<Service>(this as Service, _$identity);

  /// Serializes this Service to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Service &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.studyYearFrom, studyYearFrom) ||
                other.studyYearFrom == studyYearFrom) &&
            (identical(other.studyYearTo, studyYearTo) ||
                other.studyYearTo == studyYearTo) &&
            (identical(other.studyYearFromId, studyYearFromId) ||
                other.studyYearFromId == studyYearFromId) &&
            (identical(other.studyYearToId, studyYearToId) ||
                other.studyYearToId == studyYearToId) &&
            (identical(other.nextService, nextService) ||
                other.nextService == nextService) &&
            (identical(other.nextServiceId, nextServiceId) ||
                other.nextServiceId == nextServiceId) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.photoUpdatedAt, photoUpdatedAt) ||
                other.photoUpdatedAt == photoUpdatedAt) &&
            (identical(other.blurhash, blurhash) ||
                other.blurhash == blurhash) &&
            const DeepCollectionEquality().equals(other.classes, classes) &&
            const DeepCollectionEquality().equals(other.groups, groups) &&
            (identical(other.lastEdit, lastEdit) ||
                other.lastEdit == lastEdit) &&
            const DeepCollectionEquality()
                .equals(other.adminUsers, adminUsers) &&
            (identical(other.attendanceHistoryAggregate,
                    attendanceHistoryAggregate) ||
                other.attendanceHistoryAggregate ==
                    attendanceHistoryAggregate) &&
            (identical(other.attendanceDaysConstraintsAggregate,
                    attendanceDaysConstraintsAggregate) ||
                other.attendanceDaysConstraintsAggregate ==
                    attendanceDaysConstraintsAggregate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      studyYearFrom,
      studyYearTo,
      studyYearFromId,
      studyYearToId,
      nextService,
      nextServiceId,
      color,
      photoUpdatedAt,
      blurhash,
      const DeepCollectionEquality().hash(classes),
      const DeepCollectionEquality().hash(groups),
      lastEdit,
      const DeepCollectionEquality().hash(adminUsers),
      attendanceHistoryAggregate,
      attendanceDaysConstraintsAggregate);

  @override
  String toString() {
    return 'Service(id: $id, name: $name, studyYearFrom: $studyYearFrom, studyYearTo: $studyYearTo, studyYearFromId: $studyYearFromId, studyYearToId: $studyYearToId, nextService: $nextService, nextServiceId: $nextServiceId, color: $color, photoUpdatedAt: $photoUpdatedAt, blurhash: $blurhash, classes: $classes, groups: $groups, lastEdit: $lastEdit, adminUsers: $adminUsers, attendanceHistoryAggregate: $attendanceHistoryAggregate, attendanceDaysConstraintsAggregate: $attendanceDaysConstraintsAggregate)';
  }
}

/// @nodoc
abstract mixin class $ServiceCopyWith<$Res> {
  factory $ServiceCopyWith(Service value, $Res Function(Service) _then) =
      _$ServiceCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String name,
      StudyYear? studyYearFrom,
      StudyYear? studyYearTo,
      int? studyYearFromId,
      int? studyYearToId,
      Service? nextService,
      String? nextServiceId,
      @JsonKey(fromJson: colorFromInt, toJson: colorToInt) Color? color,
      DateTime? photoUpdatedAt,
      String? blurhash,
      List<Class>? classes,
      List<Group>? groups,
      LastRecordedByInfo? lastEdit,
      @JsonKey(fromJson: adminUsersFromJson, toJson: adminUsersToJson)
      List<User>? adminUsers,
      HistoryAggregateData? attendanceHistoryAggregate,
      HistoryAggregateData? attendanceDaysConstraintsAggregate});

  $StudyYearCopyWith<$Res>? get studyYearFrom;
  $StudyYearCopyWith<$Res>? get studyYearTo;
  $ServiceCopyWith<$Res>? get nextService;
  $LastRecordedByInfoCopyWith<$Res>? get lastEdit;
  $HistoryAggregateDataCopyWith<$Res>? get attendanceHistoryAggregate;
  $HistoryAggregateDataCopyWith<$Res>? get attendanceDaysConstraintsAggregate;
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
    Object? studyYearFrom = freezed,
    Object? studyYearTo = freezed,
    Object? studyYearFromId = freezed,
    Object? studyYearToId = freezed,
    Object? nextService = freezed,
    Object? nextServiceId = freezed,
    Object? color = freezed,
    Object? photoUpdatedAt = freezed,
    Object? blurhash = freezed,
    Object? classes = freezed,
    Object? groups = freezed,
    Object? lastEdit = freezed,
    Object? adminUsers = freezed,
    Object? attendanceHistoryAggregate = freezed,
    Object? attendanceDaysConstraintsAggregate = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
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
      lastEdit: freezed == lastEdit
          ? _self.lastEdit
          : lastEdit // ignore: cast_nullable_to_non_nullable
              as LastRecordedByInfo?,
      adminUsers: freezed == adminUsers
          ? _self.adminUsers
          : adminUsers // ignore: cast_nullable_to_non_nullable
              as List<User>?,
      attendanceHistoryAggregate: freezed == attendanceHistoryAggregate
          ? _self.attendanceHistoryAggregate
          : attendanceHistoryAggregate // ignore: cast_nullable_to_non_nullable
              as HistoryAggregateData?,
      attendanceDaysConstraintsAggregate: freezed ==
              attendanceDaysConstraintsAggregate
          ? _self.attendanceDaysConstraintsAggregate
          : attendanceDaysConstraintsAggregate // ignore: cast_nullable_to_non_nullable
              as HistoryAggregateData?,
    ));
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
  $LastRecordedByInfoCopyWith<$Res>? get lastEdit {
    if (_self.lastEdit == null) {
      return null;
    }

    return $LastRecordedByInfoCopyWith<$Res>(_self.lastEdit!, (value) {
      return _then(_self.copyWith(lastEdit: value));
    });
  }

  /// Create a copy of Service
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HistoryAggregateDataCopyWith<$Res>? get attendanceHistoryAggregate {
    if (_self.attendanceHistoryAggregate == null) {
      return null;
    }

    return $HistoryAggregateDataCopyWith<$Res>(
        _self.attendanceHistoryAggregate!, (value) {
      return _then(_self.copyWith(attendanceHistoryAggregate: value));
    });
  }

  /// Create a copy of Service
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HistoryAggregateDataCopyWith<$Res>? get attendanceDaysConstraintsAggregate {
    if (_self.attendanceDaysConstraintsAggregate == null) {
      return null;
    }

    return $HistoryAggregateDataCopyWith<$Res>(
        _self.attendanceDaysConstraintsAggregate!, (value) {
      return _then(_self.copyWith(attendanceDaysConstraintsAggregate: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _Service extends Service {
  _Service(
      {required this.id,
      required this.name,
      this.studyYearFrom,
      this.studyYearTo,
      this.studyYearFromId,
      this.studyYearToId,
      this.nextService,
      this.nextServiceId,
      @JsonKey(fromJson: colorFromInt, toJson: colorToInt) this.color,
      this.photoUpdatedAt,
      this.blurhash,
      final List<Class>? classes,
      final List<Group>? groups,
      this.lastEdit,
      @JsonKey(fromJson: adminUsersFromJson, toJson: adminUsersToJson)
      final List<User>? adminUsers,
      this.attendanceHistoryAggregate,
      this.attendanceDaysConstraintsAggregate})
      : _classes = classes,
        _groups = groups,
        _adminUsers = adminUsers,
        super._();
  factory _Service.fromJson(Map<String, dynamic> json) =>
      _$ServiceFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final StudyYear? studyYearFrom;
  @override
  final StudyYear? studyYearTo;
  @override
  final int? studyYearFromId;
  @override
  final int? studyYearToId;
  @override
  final Service? nextService;
  @override
  final String? nextServiceId;
  @override
  @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
  final Color? color;
  @override
  final DateTime? photoUpdatedAt;
  @override
  final String? blurhash;
  final List<Class>? _classes;
  @override
  List<Class>? get classes {
    final value = _classes;
    if (value == null) return null;
    if (_classes is EqualUnmodifiableListView) return _classes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Group>? _groups;
  @override
  List<Group>? get groups {
    final value = _groups;
    if (value == null) return null;
    if (_groups is EqualUnmodifiableListView) return _groups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final LastRecordedByInfo? lastEdit;
  final List<User>? _adminUsers;
  @override
  @JsonKey(fromJson: adminUsersFromJson, toJson: adminUsersToJson)
  List<User>? get adminUsers {
    final value = _adminUsers;
    if (value == null) return null;
    if (_adminUsers is EqualUnmodifiableListView) return _adminUsers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final HistoryAggregateData? attendanceHistoryAggregate;
  @override
  final HistoryAggregateData? attendanceDaysConstraintsAggregate;

  /// Create a copy of Service
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ServiceCopyWith<_Service> get copyWith =>
      __$ServiceCopyWithImpl<_Service>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ServiceToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Service &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.studyYearFrom, studyYearFrom) ||
                other.studyYearFrom == studyYearFrom) &&
            (identical(other.studyYearTo, studyYearTo) ||
                other.studyYearTo == studyYearTo) &&
            (identical(other.studyYearFromId, studyYearFromId) ||
                other.studyYearFromId == studyYearFromId) &&
            (identical(other.studyYearToId, studyYearToId) ||
                other.studyYearToId == studyYearToId) &&
            (identical(other.nextService, nextService) ||
                other.nextService == nextService) &&
            (identical(other.nextServiceId, nextServiceId) ||
                other.nextServiceId == nextServiceId) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.photoUpdatedAt, photoUpdatedAt) ||
                other.photoUpdatedAt == photoUpdatedAt) &&
            (identical(other.blurhash, blurhash) ||
                other.blurhash == blurhash) &&
            const DeepCollectionEquality().equals(other._classes, _classes) &&
            const DeepCollectionEquality().equals(other._groups, _groups) &&
            (identical(other.lastEdit, lastEdit) ||
                other.lastEdit == lastEdit) &&
            const DeepCollectionEquality()
                .equals(other._adminUsers, _adminUsers) &&
            (identical(other.attendanceHistoryAggregate,
                    attendanceHistoryAggregate) ||
                other.attendanceHistoryAggregate ==
                    attendanceHistoryAggregate) &&
            (identical(other.attendanceDaysConstraintsAggregate,
                    attendanceDaysConstraintsAggregate) ||
                other.attendanceDaysConstraintsAggregate ==
                    attendanceDaysConstraintsAggregate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      studyYearFrom,
      studyYearTo,
      studyYearFromId,
      studyYearToId,
      nextService,
      nextServiceId,
      color,
      photoUpdatedAt,
      blurhash,
      const DeepCollectionEquality().hash(_classes),
      const DeepCollectionEquality().hash(_groups),
      lastEdit,
      const DeepCollectionEquality().hash(_adminUsers),
      attendanceHistoryAggregate,
      attendanceDaysConstraintsAggregate);

  @override
  String toString() {
    return 'Service(id: $id, name: $name, studyYearFrom: $studyYearFrom, studyYearTo: $studyYearTo, studyYearFromId: $studyYearFromId, studyYearToId: $studyYearToId, nextService: $nextService, nextServiceId: $nextServiceId, color: $color, photoUpdatedAt: $photoUpdatedAt, blurhash: $blurhash, classes: $classes, groups: $groups, lastEdit: $lastEdit, adminUsers: $adminUsers, attendanceHistoryAggregate: $attendanceHistoryAggregate, attendanceDaysConstraintsAggregate: $attendanceDaysConstraintsAggregate)';
  }
}

/// @nodoc
abstract mixin class _$ServiceCopyWith<$Res> implements $ServiceCopyWith<$Res> {
  factory _$ServiceCopyWith(_Service value, $Res Function(_Service) _then) =
      __$ServiceCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      StudyYear? studyYearFrom,
      StudyYear? studyYearTo,
      int? studyYearFromId,
      int? studyYearToId,
      Service? nextService,
      String? nextServiceId,
      @JsonKey(fromJson: colorFromInt, toJson: colorToInt) Color? color,
      DateTime? photoUpdatedAt,
      String? blurhash,
      List<Class>? classes,
      List<Group>? groups,
      LastRecordedByInfo? lastEdit,
      @JsonKey(fromJson: adminUsersFromJson, toJson: adminUsersToJson)
      List<User>? adminUsers,
      HistoryAggregateData? attendanceHistoryAggregate,
      HistoryAggregateData? attendanceDaysConstraintsAggregate});

  @override
  $StudyYearCopyWith<$Res>? get studyYearFrom;
  @override
  $StudyYearCopyWith<$Res>? get studyYearTo;
  @override
  $ServiceCopyWith<$Res>? get nextService;
  @override
  $LastRecordedByInfoCopyWith<$Res>? get lastEdit;
  @override
  $HistoryAggregateDataCopyWith<$Res>? get attendanceHistoryAggregate;
  @override
  $HistoryAggregateDataCopyWith<$Res>? get attendanceDaysConstraintsAggregate;
}

/// @nodoc
class __$ServiceCopyWithImpl<$Res> implements _$ServiceCopyWith<$Res> {
  __$ServiceCopyWithImpl(this._self, this._then);

  final _Service _self;
  final $Res Function(_Service) _then;

  /// Create a copy of Service
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? studyYearFrom = freezed,
    Object? studyYearTo = freezed,
    Object? studyYearFromId = freezed,
    Object? studyYearToId = freezed,
    Object? nextService = freezed,
    Object? nextServiceId = freezed,
    Object? color = freezed,
    Object? photoUpdatedAt = freezed,
    Object? blurhash = freezed,
    Object? classes = freezed,
    Object? groups = freezed,
    Object? lastEdit = freezed,
    Object? adminUsers = freezed,
    Object? attendanceHistoryAggregate = freezed,
    Object? attendanceDaysConstraintsAggregate = freezed,
  }) {
    return _then(_Service(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
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
          ? _self._classes
          : classes // ignore: cast_nullable_to_non_nullable
              as List<Class>?,
      groups: freezed == groups
          ? _self._groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<Group>?,
      lastEdit: freezed == lastEdit
          ? _self.lastEdit
          : lastEdit // ignore: cast_nullable_to_non_nullable
              as LastRecordedByInfo?,
      adminUsers: freezed == adminUsers
          ? _self._adminUsers
          : adminUsers // ignore: cast_nullable_to_non_nullable
              as List<User>?,
      attendanceHistoryAggregate: freezed == attendanceHistoryAggregate
          ? _self.attendanceHistoryAggregate
          : attendanceHistoryAggregate // ignore: cast_nullable_to_non_nullable
              as HistoryAggregateData?,
      attendanceDaysConstraintsAggregate: freezed ==
              attendanceDaysConstraintsAggregate
          ? _self.attendanceDaysConstraintsAggregate
          : attendanceDaysConstraintsAggregate // ignore: cast_nullable_to_non_nullable
              as HistoryAggregateData?,
    ));
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
  $LastRecordedByInfoCopyWith<$Res>? get lastEdit {
    if (_self.lastEdit == null) {
      return null;
    }

    return $LastRecordedByInfoCopyWith<$Res>(_self.lastEdit!, (value) {
      return _then(_self.copyWith(lastEdit: value));
    });
  }

  /// Create a copy of Service
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HistoryAggregateDataCopyWith<$Res>? get attendanceHistoryAggregate {
    if (_self.attendanceHistoryAggregate == null) {
      return null;
    }

    return $HistoryAggregateDataCopyWith<$Res>(
        _self.attendanceHistoryAggregate!, (value) {
      return _then(_self.copyWith(attendanceHistoryAggregate: value));
    });
  }

  /// Create a copy of Service
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HistoryAggregateDataCopyWith<$Res>? get attendanceDaysConstraintsAggregate {
    if (_self.attendanceDaysConstraintsAggregate == null) {
      return null;
    }

    return $HistoryAggregateDataCopyWith<$Res>(
        _self.attendanceDaysConstraintsAggregate!, (value) {
      return _then(_self.copyWith(attendanceDaysConstraintsAggregate: value));
    });
  }
}

// dart format on
