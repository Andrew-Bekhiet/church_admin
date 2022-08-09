// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'group.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
  Service? get service => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'attendanceHistory_aggregate',
      fromJson: analysisDataFromJson,
      toJson: analysisDataToJson)
  AnalysisData<DateTime>? get attendanceHistoryAggregate =>
      throw _privateConstructorUsedError;
  @JsonKey(
      name: 'attendanceDaysConstraints_aggregate',
      fromJson: analysisDataFromJson,
      toJson: analysisDataToJson)
  AnalysisData<DateTime>? get attendanceDaysConstraintsAggregate =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GroupCopyWith<Group> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupCopyWith<$Res> {
  factory $GroupCopyWith(Group value, $Res Function(Group) then) =
      _$GroupCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
          Color? color,
      DateTime? photoUpdatedAt,
      Service? service,
      @JsonKey(name: 'attendanceHistory_aggregate', fromJson: analysisDataFromJson, toJson: analysisDataToJson)
          AnalysisData<DateTime>? attendanceHistoryAggregate,
      @JsonKey(name: 'attendanceDaysConstraints_aggregate', fromJson: analysisDataFromJson, toJson: analysisDataToJson)
          AnalysisData<DateTime>? attendanceDaysConstraintsAggregate});

  $ServiceCopyWith<$Res>? get service;
  $AnalysisDataCopyWith<DateTime, $Res>? get attendanceHistoryAggregate;
  $AnalysisDataCopyWith<DateTime, $Res>? get attendanceDaysConstraintsAggregate;
}

/// @nodoc
class _$GroupCopyWithImpl<$Res> implements $GroupCopyWith<$Res> {
  _$GroupCopyWithImpl(this._value, this._then);

  final Group _value;
  // ignore: unused_field
  final $Res Function(Group) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? color = freezed,
    Object? photoUpdatedAt = freezed,
    Object? service = freezed,
    Object? attendanceHistoryAggregate = freezed,
    Object? attendanceDaysConstraintsAggregate = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color?,
      photoUpdatedAt: photoUpdatedAt == freezed
          ? _value.photoUpdatedAt
          : photoUpdatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      service: service == freezed
          ? _value.service
          : service // ignore: cast_nullable_to_non_nullable
              as Service?,
      attendanceHistoryAggregate: attendanceHistoryAggregate == freezed
          ? _value.attendanceHistoryAggregate
          : attendanceHistoryAggregate // ignore: cast_nullable_to_non_nullable
              as AnalysisData<DateTime>?,
      attendanceDaysConstraintsAggregate: attendanceDaysConstraintsAggregate ==
              freezed
          ? _value.attendanceDaysConstraintsAggregate
          : attendanceDaysConstraintsAggregate // ignore: cast_nullable_to_non_nullable
              as AnalysisData<DateTime>?,
    ));
  }

  @override
  $ServiceCopyWith<$Res>? get service {
    if (_value.service == null) {
      return null;
    }

    return $ServiceCopyWith<$Res>(_value.service!, (value) {
      return _then(_value.copyWith(service: value));
    });
  }

  @override
  $AnalysisDataCopyWith<DateTime, $Res>? get attendanceHistoryAggregate {
    if (_value.attendanceHistoryAggregate == null) {
      return null;
    }

    return $AnalysisDataCopyWith<DateTime, $Res>(
        _value.attendanceHistoryAggregate!, (value) {
      return _then(_value.copyWith(attendanceHistoryAggregate: value));
    });
  }

  @override
  $AnalysisDataCopyWith<DateTime, $Res>?
      get attendanceDaysConstraintsAggregate {
    if (_value.attendanceDaysConstraintsAggregate == null) {
      return null;
    }

    return $AnalysisDataCopyWith<DateTime, $Res>(
        _value.attendanceDaysConstraintsAggregate!, (value) {
      return _then(_value.copyWith(attendanceDaysConstraintsAggregate: value));
    });
  }
}

/// @nodoc
abstract class _$$_GroupCopyWith<$Res> implements $GroupCopyWith<$Res> {
  factory _$$_GroupCopyWith(_$_Group value, $Res Function(_$_Group) then) =
      __$$_GroupCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
          Color? color,
      DateTime? photoUpdatedAt,
      Service? service,
      @JsonKey(name: 'attendanceHistory_aggregate', fromJson: analysisDataFromJson, toJson: analysisDataToJson)
          AnalysisData<DateTime>? attendanceHistoryAggregate,
      @JsonKey(name: 'attendanceDaysConstraints_aggregate', fromJson: analysisDataFromJson, toJson: analysisDataToJson)
          AnalysisData<DateTime>? attendanceDaysConstraintsAggregate});

  @override
  $ServiceCopyWith<$Res>? get service;
  @override
  $AnalysisDataCopyWith<DateTime, $Res>? get attendanceHistoryAggregate;
  @override
  $AnalysisDataCopyWith<DateTime, $Res>? get attendanceDaysConstraintsAggregate;
}

/// @nodoc
class __$$_GroupCopyWithImpl<$Res> extends _$GroupCopyWithImpl<$Res>
    implements _$$_GroupCopyWith<$Res> {
  __$$_GroupCopyWithImpl(_$_Group _value, $Res Function(_$_Group) _then)
      : super(_value, (v) => _then(v as _$_Group));

  @override
  _$_Group get _value => super._value as _$_Group;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? color = freezed,
    Object? photoUpdatedAt = freezed,
    Object? service = freezed,
    Object? attendanceHistoryAggregate = freezed,
    Object? attendanceDaysConstraintsAggregate = freezed,
  }) {
    return _then(_$_Group(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color?,
      photoUpdatedAt: photoUpdatedAt == freezed
          ? _value.photoUpdatedAt
          : photoUpdatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      service: service == freezed
          ? _value.service
          : service // ignore: cast_nullable_to_non_nullable
              as Service?,
      attendanceHistoryAggregate: attendanceHistoryAggregate == freezed
          ? _value.attendanceHistoryAggregate
          : attendanceHistoryAggregate // ignore: cast_nullable_to_non_nullable
              as AnalysisData<DateTime>?,
      attendanceDaysConstraintsAggregate: attendanceDaysConstraintsAggregate ==
              freezed
          ? _value.attendanceDaysConstraintsAggregate
          : attendanceDaysConstraintsAggregate // ignore: cast_nullable_to_non_nullable
              as AnalysisData<DateTime>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Group extends _Group {
  _$_Group(
      {required this.id,
      required this.name,
      @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
          this.color,
      this.photoUpdatedAt,
      this.service,
      @JsonKey(name: 'attendanceHistory_aggregate', fromJson: analysisDataFromJson, toJson: analysisDataToJson)
          this.attendanceHistoryAggregate,
      @JsonKey(name: 'attendanceDaysConstraints_aggregate', fromJson: analysisDataFromJson, toJson: analysisDataToJson)
          this.attendanceDaysConstraintsAggregate})
      : super._();

  factory _$_Group.fromJson(Map<String, dynamic> json) =>
      _$$_GroupFromJson(json);

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
  final Service? service;
  @override
  @JsonKey(
      name: 'attendanceHistory_aggregate',
      fromJson: analysisDataFromJson,
      toJson: analysisDataToJson)
  final AnalysisData<DateTime>? attendanceHistoryAggregate;
  @override
  @JsonKey(
      name: 'attendanceDaysConstraints_aggregate',
      fromJson: analysisDataFromJson,
      toJson: analysisDataToJson)
  final AnalysisData<DateTime>? attendanceDaysConstraintsAggregate;

  @override
  String toString() {
    return 'Group(id: $id, name: $name, color: $color, photoUpdatedAt: $photoUpdatedAt, service: $service, attendanceHistoryAggregate: $attendanceHistoryAggregate, attendanceDaysConstraintsAggregate: $attendanceDaysConstraintsAggregate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Group &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.color, color) &&
            const DeepCollectionEquality()
                .equals(other.photoUpdatedAt, photoUpdatedAt) &&
            const DeepCollectionEquality().equals(other.service, service) &&
            const DeepCollectionEquality().equals(
                other.attendanceHistoryAggregate, attendanceHistoryAggregate) &&
            const DeepCollectionEquality().equals(
                other.attendanceDaysConstraintsAggregate,
                attendanceDaysConstraintsAggregate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(color),
      const DeepCollectionEquality().hash(photoUpdatedAt),
      const DeepCollectionEquality().hash(service),
      const DeepCollectionEquality().hash(attendanceHistoryAggregate),
      const DeepCollectionEquality().hash(attendanceDaysConstraintsAggregate));

  @JsonKey(ignore: true)
  @override
  _$$_GroupCopyWith<_$_Group> get copyWith =>
      __$$_GroupCopyWithImpl<_$_Group>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GroupToJson(
      this,
    );
  }
}

abstract class _Group extends Group {
  factory _Group(
      {required final String id,
      required final String name,
      @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
          final Color? color,
      final DateTime? photoUpdatedAt,
      final Service? service,
      @JsonKey(name: 'attendanceHistory_aggregate', fromJson: analysisDataFromJson, toJson: analysisDataToJson)
          final AnalysisData<DateTime>? attendanceHistoryAggregate,
      @JsonKey(name: 'attendanceDaysConstraints_aggregate', fromJson: analysisDataFromJson, toJson: analysisDataToJson)
          final AnalysisData<DateTime>? attendanceDaysConstraintsAggregate}) = _$_Group;
  _Group._() : super._();

  factory _Group.fromJson(Map<String, dynamic> json) = _$_Group.fromJson;

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
  Service? get service;
  @override
  @JsonKey(
      name: 'attendanceHistory_aggregate',
      fromJson: analysisDataFromJson,
      toJson: analysisDataToJson)
  AnalysisData<DateTime>? get attendanceHistoryAggregate;
  @override
  @JsonKey(
      name: 'attendanceDaysConstraints_aggregate',
      fromJson: analysisDataFromJson,
      toJson: analysisDataToJson)
  AnalysisData<DateTime>? get attendanceDaysConstraintsAggregate;
  @override
  @JsonKey(ignore: true)
  _$$_GroupCopyWith<_$_Group> get copyWith =>
      throw _privateConstructorUsedError;
}
