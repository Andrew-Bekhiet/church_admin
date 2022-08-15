// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'class.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Class _$ClassFromJson(Map<String, dynamic> json) {
  return _Class.fromJson(json);
}

/// @nodoc
mixin _$Class {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
  Color? get color => throw _privateConstructorUsedError;
  DateTime? get photoUpdatedAt => throw _privateConstructorUsedError;
  Service? get service => throw _privateConstructorUsedError;
  StudyYear? get studyYear => throw _privateConstructorUsedError;
  @JsonKey(fromJson: analysisDataFromJson, toJson: analysisDataToJson)
  AnalysisData<DateTime>? get attendanceHistoryAggregate =>
      throw _privateConstructorUsedError;
  @JsonKey(fromJson: analysisDataFromJson, toJson: analysisDataToJson)
  AnalysisData<DateTime>? get attendanceDaysConstraintsAggregate =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClassCopyWith<Class> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassCopyWith<$Res> {
  factory $ClassCopyWith(Class value, $Res Function(Class) then) =
      _$ClassCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
          Color? color,
      DateTime? photoUpdatedAt,
      Service? service,
      StudyYear? studyYear,
      @JsonKey(fromJson: analysisDataFromJson, toJson: analysisDataToJson)
          AnalysisData<DateTime>? attendanceHistoryAggregate,
      @JsonKey(fromJson: analysisDataFromJson, toJson: analysisDataToJson)
          AnalysisData<DateTime>? attendanceDaysConstraintsAggregate});

  $ServiceCopyWith<$Res>? get service;
  $StudyYearCopyWith<$Res>? get studyYear;
  $AnalysisDataCopyWith<DateTime, $Res>? get attendanceHistoryAggregate;
  $AnalysisDataCopyWith<DateTime, $Res>? get attendanceDaysConstraintsAggregate;
}

/// @nodoc
class _$ClassCopyWithImpl<$Res> implements $ClassCopyWith<$Res> {
  _$ClassCopyWithImpl(this._value, this._then);

  final Class _value;
  // ignore: unused_field
  final $Res Function(Class) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? color = freezed,
    Object? photoUpdatedAt = freezed,
    Object? service = freezed,
    Object? studyYear = freezed,
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
      studyYear: studyYear == freezed
          ? _value.studyYear
          : studyYear // ignore: cast_nullable_to_non_nullable
              as StudyYear?,
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
  $StudyYearCopyWith<$Res>? get studyYear {
    if (_value.studyYear == null) {
      return null;
    }

    return $StudyYearCopyWith<$Res>(_value.studyYear!, (value) {
      return _then(_value.copyWith(studyYear: value));
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
abstract class _$$_ClassCopyWith<$Res> implements $ClassCopyWith<$Res> {
  factory _$$_ClassCopyWith(_$_Class value, $Res Function(_$_Class) then) =
      __$$_ClassCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
          Color? color,
      DateTime? photoUpdatedAt,
      Service? service,
      StudyYear? studyYear,
      @JsonKey(fromJson: analysisDataFromJson, toJson: analysisDataToJson)
          AnalysisData<DateTime>? attendanceHistoryAggregate,
      @JsonKey(fromJson: analysisDataFromJson, toJson: analysisDataToJson)
          AnalysisData<DateTime>? attendanceDaysConstraintsAggregate});

  @override
  $ServiceCopyWith<$Res>? get service;
  @override
  $StudyYearCopyWith<$Res>? get studyYear;
  @override
  $AnalysisDataCopyWith<DateTime, $Res>? get attendanceHistoryAggregate;
  @override
  $AnalysisDataCopyWith<DateTime, $Res>? get attendanceDaysConstraintsAggregate;
}

/// @nodoc
class __$$_ClassCopyWithImpl<$Res> extends _$ClassCopyWithImpl<$Res>
    implements _$$_ClassCopyWith<$Res> {
  __$$_ClassCopyWithImpl(_$_Class _value, $Res Function(_$_Class) _then)
      : super(_value, (v) => _then(v as _$_Class));

  @override
  _$_Class get _value => super._value as _$_Class;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? color = freezed,
    Object? photoUpdatedAt = freezed,
    Object? service = freezed,
    Object? studyYear = freezed,
    Object? attendanceHistoryAggregate = freezed,
    Object? attendanceDaysConstraintsAggregate = freezed,
  }) {
    return _then(_$_Class(
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
      studyYear: studyYear == freezed
          ? _value.studyYear
          : studyYear // ignore: cast_nullable_to_non_nullable
              as StudyYear?,
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
class _$_Class extends _Class {
  _$_Class(
      {required this.id,
      required this.name,
      @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
          this.color,
      this.photoUpdatedAt,
      this.service,
      this.studyYear,
      @JsonKey(fromJson: analysisDataFromJson, toJson: analysisDataToJson)
          this.attendanceHistoryAggregate,
      @JsonKey(fromJson: analysisDataFromJson, toJson: analysisDataToJson)
          this.attendanceDaysConstraintsAggregate})
      : super._();

  factory _$_Class.fromJson(Map<String, dynamic> json) =>
      _$$_ClassFromJson(json);

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
  final StudyYear? studyYear;
  @override
  @JsonKey(fromJson: analysisDataFromJson, toJson: analysisDataToJson)
  final AnalysisData<DateTime>? attendanceHistoryAggregate;
  @override
  @JsonKey(fromJson: analysisDataFromJson, toJson: analysisDataToJson)
  final AnalysisData<DateTime>? attendanceDaysConstraintsAggregate;

  @override
  String toString() {
    return 'Class(id: $id, name: $name, color: $color, photoUpdatedAt: $photoUpdatedAt, service: $service, studyYear: $studyYear, attendanceHistoryAggregate: $attendanceHistoryAggregate, attendanceDaysConstraintsAggregate: $attendanceDaysConstraintsAggregate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Class &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.color, color) &&
            const DeepCollectionEquality()
                .equals(other.photoUpdatedAt, photoUpdatedAt) &&
            const DeepCollectionEquality().equals(other.service, service) &&
            const DeepCollectionEquality().equals(other.studyYear, studyYear) &&
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
      const DeepCollectionEquality().hash(studyYear),
      const DeepCollectionEquality().hash(attendanceHistoryAggregate),
      const DeepCollectionEquality().hash(attendanceDaysConstraintsAggregate));

  @JsonKey(ignore: true)
  @override
  _$$_ClassCopyWith<_$_Class> get copyWith =>
      __$$_ClassCopyWithImpl<_$_Class>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ClassToJson(
      this,
    );
  }
}

abstract class _Class extends Class {
  factory _Class(
      {required final String id,
      required final String name,
      @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
          final Color? color,
      final DateTime? photoUpdatedAt,
      final Service? service,
      final StudyYear? studyYear,
      @JsonKey(fromJson: analysisDataFromJson, toJson: analysisDataToJson)
          final AnalysisData<DateTime>? attendanceHistoryAggregate,
      @JsonKey(fromJson: analysisDataFromJson, toJson: analysisDataToJson)
          final AnalysisData<DateTime>?
              attendanceDaysConstraintsAggregate}) = _$_Class;
  _Class._() : super._();

  factory _Class.fromJson(Map<String, dynamic> json) = _$_Class.fromJson;

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
  StudyYear? get studyYear;
  @override
  @JsonKey(fromJson: analysisDataFromJson, toJson: analysisDataToJson)
  AnalysisData<DateTime>? get attendanceHistoryAggregate;
  @override
  @JsonKey(fromJson: analysisDataFromJson, toJson: analysisDataToJson)
  AnalysisData<DateTime>? get attendanceDaysConstraintsAggregate;
  @override
  @JsonKey(ignore: true)
  _$$_ClassCopyWith<_$_Class> get copyWith =>
      throw _privateConstructorUsedError;
}
