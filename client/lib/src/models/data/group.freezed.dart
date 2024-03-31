// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'group.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Group _$GroupFromJson(Map<String, dynamic> json) {
  return _Group.fromJson(json);
}

/// @nodoc
mixin _$Group {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
  Color? get color => throw _privateConstructorUsedError;
  DateTime? get photoUpdatedAt => throw _privateConstructorUsedError;
  String? get blurhash => throw _privateConstructorUsedError;
  String? get serviceId => throw _privateConstructorUsedError;
  Service? get service => throw _privateConstructorUsedError;
  @JsonKey(fromJson: dateRangeFromString, toJson: dateRangeToString)
  DateTimeRange? get validity => throw _privateConstructorUsedError;
  LastRecordedByInfo? get lastEdit => throw _privateConstructorUsedError;
  @JsonKey(fromJson: adminUsersFromJson, toJson: adminUsersToJson)
  List<User>? get adminUsers => throw _privateConstructorUsedError;
  HistoryAggregateData? get attendanceHistoryAggregate =>
      throw _privateConstructorUsedError;
  HistoryAggregateData? get attendanceDaysConstraintsAggregate =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GroupCopyWith<Group> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupCopyWith<$Res> {
  factory $GroupCopyWith(Group value, $Res Function(Group) then) =
      _$GroupCopyWithImpl<$Res, Group>;
  @useResult
  $Res call(
      {String id,
      String name,
      @JsonKey(fromJson: colorFromInt, toJson: colorToInt) Color? color,
      DateTime? photoUpdatedAt,
      String? blurhash,
      String? serviceId,
      Service? service,
      @JsonKey(fromJson: dateRangeFromString, toJson: dateRangeToString)
      DateTimeRange? validity,
      LastRecordedByInfo? lastEdit,
      @JsonKey(fromJson: adminUsersFromJson, toJson: adminUsersToJson)
      List<User>? adminUsers,
      HistoryAggregateData? attendanceHistoryAggregate,
      HistoryAggregateData? attendanceDaysConstraintsAggregate});

  $ServiceCopyWith<$Res>? get service;
  $LastRecordedByInfoCopyWith<$Res>? get lastEdit;
  $HistoryAggregateDataCopyWith<$Res>? get attendanceHistoryAggregate;
  $HistoryAggregateDataCopyWith<$Res>? get attendanceDaysConstraintsAggregate;
}

/// @nodoc
class _$GroupCopyWithImpl<$Res, $Val extends Group>
    implements $GroupCopyWith<$Res> {
  _$GroupCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? color = freezed,
    Object? photoUpdatedAt = freezed,
    Object? blurhash = freezed,
    Object? serviceId = freezed,
    Object? service = freezed,
    Object? validity = freezed,
    Object? lastEdit = freezed,
    Object? adminUsers = freezed,
    Object? attendanceHistoryAggregate = freezed,
    Object? attendanceDaysConstraintsAggregate = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color?,
      photoUpdatedAt: freezed == photoUpdatedAt
          ? _value.photoUpdatedAt
          : photoUpdatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      blurhash: freezed == blurhash
          ? _value.blurhash
          : blurhash // ignore: cast_nullable_to_non_nullable
              as String?,
      serviceId: freezed == serviceId
          ? _value.serviceId
          : serviceId // ignore: cast_nullable_to_non_nullable
              as String?,
      service: freezed == service
          ? _value.service
          : service // ignore: cast_nullable_to_non_nullable
              as Service?,
      validity: freezed == validity
          ? _value.validity
          : validity // ignore: cast_nullable_to_non_nullable
              as DateTimeRange?,
      lastEdit: freezed == lastEdit
          ? _value.lastEdit
          : lastEdit // ignore: cast_nullable_to_non_nullable
              as LastRecordedByInfo?,
      adminUsers: freezed == adminUsers
          ? _value.adminUsers
          : adminUsers // ignore: cast_nullable_to_non_nullable
              as List<User>?,
      attendanceHistoryAggregate: freezed == attendanceHistoryAggregate
          ? _value.attendanceHistoryAggregate
          : attendanceHistoryAggregate // ignore: cast_nullable_to_non_nullable
              as HistoryAggregateData?,
      attendanceDaysConstraintsAggregate: freezed ==
              attendanceDaysConstraintsAggregate
          ? _value.attendanceDaysConstraintsAggregate
          : attendanceDaysConstraintsAggregate // ignore: cast_nullable_to_non_nullable
              as HistoryAggregateData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ServiceCopyWith<$Res>? get service {
    if (_value.service == null) {
      return null;
    }

    return $ServiceCopyWith<$Res>(_value.service!, (value) {
      return _then(_value.copyWith(service: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LastRecordedByInfoCopyWith<$Res>? get lastEdit {
    if (_value.lastEdit == null) {
      return null;
    }

    return $LastRecordedByInfoCopyWith<$Res>(_value.lastEdit!, (value) {
      return _then(_value.copyWith(lastEdit: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $HistoryAggregateDataCopyWith<$Res>? get attendanceHistoryAggregate {
    if (_value.attendanceHistoryAggregate == null) {
      return null;
    }

    return $HistoryAggregateDataCopyWith<$Res>(
        _value.attendanceHistoryAggregate!, (value) {
      return _then(_value.copyWith(attendanceHistoryAggregate: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $HistoryAggregateDataCopyWith<$Res>? get attendanceDaysConstraintsAggregate {
    if (_value.attendanceDaysConstraintsAggregate == null) {
      return null;
    }

    return $HistoryAggregateDataCopyWith<$Res>(
        _value.attendanceDaysConstraintsAggregate!, (value) {
      return _then(
          _value.copyWith(attendanceDaysConstraintsAggregate: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GroupImplCopyWith<$Res> implements $GroupCopyWith<$Res> {
  factory _$$GroupImplCopyWith(
          _$GroupImpl value, $Res Function(_$GroupImpl) then) =
      __$$GroupImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      @JsonKey(fromJson: colorFromInt, toJson: colorToInt) Color? color,
      DateTime? photoUpdatedAt,
      String? blurhash,
      String? serviceId,
      Service? service,
      @JsonKey(fromJson: dateRangeFromString, toJson: dateRangeToString)
      DateTimeRange? validity,
      LastRecordedByInfo? lastEdit,
      @JsonKey(fromJson: adminUsersFromJson, toJson: adminUsersToJson)
      List<User>? adminUsers,
      HistoryAggregateData? attendanceHistoryAggregate,
      HistoryAggregateData? attendanceDaysConstraintsAggregate});

  @override
  $ServiceCopyWith<$Res>? get service;
  @override
  $LastRecordedByInfoCopyWith<$Res>? get lastEdit;
  @override
  $HistoryAggregateDataCopyWith<$Res>? get attendanceHistoryAggregate;
  @override
  $HistoryAggregateDataCopyWith<$Res>? get attendanceDaysConstraintsAggregate;
}

/// @nodoc
class __$$GroupImplCopyWithImpl<$Res>
    extends _$GroupCopyWithImpl<$Res, _$GroupImpl>
    implements _$$GroupImplCopyWith<$Res> {
  __$$GroupImplCopyWithImpl(
      _$GroupImpl _value, $Res Function(_$GroupImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? color = freezed,
    Object? photoUpdatedAt = freezed,
    Object? blurhash = freezed,
    Object? serviceId = freezed,
    Object? service = freezed,
    Object? validity = freezed,
    Object? lastEdit = freezed,
    Object? adminUsers = freezed,
    Object? attendanceHistoryAggregate = freezed,
    Object? attendanceDaysConstraintsAggregate = freezed,
  }) {
    return _then(_$GroupImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color?,
      photoUpdatedAt: freezed == photoUpdatedAt
          ? _value.photoUpdatedAt
          : photoUpdatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      blurhash: freezed == blurhash
          ? _value.blurhash
          : blurhash // ignore: cast_nullable_to_non_nullable
              as String?,
      serviceId: freezed == serviceId
          ? _value.serviceId
          : serviceId // ignore: cast_nullable_to_non_nullable
              as String?,
      service: freezed == service
          ? _value.service
          : service // ignore: cast_nullable_to_non_nullable
              as Service?,
      validity: freezed == validity
          ? _value.validity
          : validity // ignore: cast_nullable_to_non_nullable
              as DateTimeRange?,
      lastEdit: freezed == lastEdit
          ? _value.lastEdit
          : lastEdit // ignore: cast_nullable_to_non_nullable
              as LastRecordedByInfo?,
      adminUsers: freezed == adminUsers
          ? _value._adminUsers
          : adminUsers // ignore: cast_nullable_to_non_nullable
              as List<User>?,
      attendanceHistoryAggregate: freezed == attendanceHistoryAggregate
          ? _value.attendanceHistoryAggregate
          : attendanceHistoryAggregate // ignore: cast_nullable_to_non_nullable
              as HistoryAggregateData?,
      attendanceDaysConstraintsAggregate: freezed ==
              attendanceDaysConstraintsAggregate
          ? _value.attendanceDaysConstraintsAggregate
          : attendanceDaysConstraintsAggregate // ignore: cast_nullable_to_non_nullable
              as HistoryAggregateData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GroupImpl extends _Group {
  _$GroupImpl(
      {required this.id,
      required this.name,
      @JsonKey(fromJson: colorFromInt, toJson: colorToInt) this.color,
      this.photoUpdatedAt,
      this.blurhash,
      this.serviceId,
      this.service,
      @JsonKey(fromJson: dateRangeFromString, toJson: dateRangeToString)
      this.validity,
      this.lastEdit,
      @JsonKey(fromJson: adminUsersFromJson, toJson: adminUsersToJson)
      final List<User>? adminUsers,
      this.attendanceHistoryAggregate,
      this.attendanceDaysConstraintsAggregate})
      : _adminUsers = adminUsers,
        super._();

  factory _$GroupImpl.fromJson(Map<String, dynamic> json) =>
      _$$GroupImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
  final Color? color;
  @override
  final DateTime? photoUpdatedAt;
  @override
  final String? blurhash;
  @override
  final String? serviceId;
  @override
  final Service? service;
  @override
  @JsonKey(fromJson: dateRangeFromString, toJson: dateRangeToString)
  final DateTimeRange? validity;
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

  @override
  String toString() {
    return 'Group(id: $id, name: $name, color: $color, photoUpdatedAt: $photoUpdatedAt, blurhash: $blurhash, serviceId: $serviceId, service: $service, validity: $validity, lastEdit: $lastEdit, adminUsers: $adminUsers, attendanceHistoryAggregate: $attendanceHistoryAggregate, attendanceDaysConstraintsAggregate: $attendanceDaysConstraintsAggregate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.photoUpdatedAt, photoUpdatedAt) ||
                other.photoUpdatedAt == photoUpdatedAt) &&
            (identical(other.blurhash, blurhash) ||
                other.blurhash == blurhash) &&
            (identical(other.serviceId, serviceId) ||
                other.serviceId == serviceId) &&
            (identical(other.service, service) || other.service == service) &&
            (identical(other.validity, validity) ||
                other.validity == validity) &&
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

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      color,
      photoUpdatedAt,
      blurhash,
      serviceId,
      service,
      validity,
      lastEdit,
      const DeepCollectionEquality().hash(_adminUsers),
      attendanceHistoryAggregate,
      attendanceDaysConstraintsAggregate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupImplCopyWith<_$GroupImpl> get copyWith =>
      __$$GroupImplCopyWithImpl<_$GroupImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GroupImplToJson(
      this,
    );
  }
}

abstract class _Group extends Group {
  factory _Group(
      {required final String id,
      required final String name,
      @JsonKey(fromJson: colorFromInt, toJson: colorToInt) final Color? color,
      final DateTime? photoUpdatedAt,
      final String? blurhash,
      final String? serviceId,
      final Service? service,
      @JsonKey(fromJson: dateRangeFromString, toJson: dateRangeToString)
      final DateTimeRange? validity,
      final LastRecordedByInfo? lastEdit,
      @JsonKey(fromJson: adminUsersFromJson, toJson: adminUsersToJson)
      final List<User>? adminUsers,
      final HistoryAggregateData? attendanceHistoryAggregate,
      final HistoryAggregateData?
          attendanceDaysConstraintsAggregate}) = _$GroupImpl;
  _Group._() : super._();

  factory _Group.fromJson(Map<String, dynamic> json) = _$GroupImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
  Color? get color;
  @override
  DateTime? get photoUpdatedAt;
  @override
  String? get blurhash;
  @override
  String? get serviceId;
  @override
  Service? get service;
  @override
  @JsonKey(fromJson: dateRangeFromString, toJson: dateRangeToString)
  DateTimeRange? get validity;
  @override
  LastRecordedByInfo? get lastEdit;
  @override
  @JsonKey(fromJson: adminUsersFromJson, toJson: adminUsersToJson)
  List<User>? get adminUsers;
  @override
  HistoryAggregateData? get attendanceHistoryAggregate;
  @override
  HistoryAggregateData? get attendanceDaysConstraintsAggregate;
  @override
  @JsonKey(ignore: true)
  _$$GroupImplCopyWith<_$GroupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
