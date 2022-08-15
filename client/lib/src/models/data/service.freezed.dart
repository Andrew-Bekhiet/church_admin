// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Service _$ServiceFromJson(Map<String, dynamic> json) {
  return _Service.fromJson(json);
}

/// @nodoc
mixin _$Service {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  StudyYear? get fromStudyYear => throw _privateConstructorUsedError;
  StudyYear? get toStudyYear => throw _privateConstructorUsedError;
  @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
  Color? get color => throw _privateConstructorUsedError;
  DateTime? get photoUpdatedAt => throw _privateConstructorUsedError;
  List<Class>? get classes => throw _privateConstructorUsedError;
  List<Group>? get groups => throw _privateConstructorUsedError;
  @JsonKey(fromJson: analysisDataFromJson, toJson: analysisDataToJson)
  AnalysisData<DateTime>? get attendanceHistoryAggregate =>
      throw _privateConstructorUsedError;
  @JsonKey(fromJson: analysisDataFromJson, toJson: analysisDataToJson)
  AnalysisData<DateTime>? get attendanceDaysConstraintsAggregate =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServiceCopyWith<Service> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceCopyWith<$Res> {
  factory $ServiceCopyWith(Service value, $Res Function(Service) then) =
      _$ServiceCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      StudyYear? fromStudyYear,
      StudyYear? toStudyYear,
      @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
          Color? color,
      DateTime? photoUpdatedAt,
      List<Class>? classes,
      List<Group>? groups,
      @JsonKey(fromJson: analysisDataFromJson, toJson: analysisDataToJson)
          AnalysisData<DateTime>? attendanceHistoryAggregate,
      @JsonKey(fromJson: analysisDataFromJson, toJson: analysisDataToJson)
          AnalysisData<DateTime>? attendanceDaysConstraintsAggregate});

  $StudyYearCopyWith<$Res>? get fromStudyYear;
  $StudyYearCopyWith<$Res>? get toStudyYear;
  $AnalysisDataCopyWith<DateTime, $Res>? get attendanceHistoryAggregate;
  $AnalysisDataCopyWith<DateTime, $Res>? get attendanceDaysConstraintsAggregate;
}

/// @nodoc
class _$ServiceCopyWithImpl<$Res> implements $ServiceCopyWith<$Res> {
  _$ServiceCopyWithImpl(this._value, this._then);

  final Service _value;
  // ignore: unused_field
  final $Res Function(Service) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? fromStudyYear = freezed,
    Object? toStudyYear = freezed,
    Object? color = freezed,
    Object? photoUpdatedAt = freezed,
    Object? classes = freezed,
    Object? groups = freezed,
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
      fromStudyYear: fromStudyYear == freezed
          ? _value.fromStudyYear
          : fromStudyYear // ignore: cast_nullable_to_non_nullable
              as StudyYear?,
      toStudyYear: toStudyYear == freezed
          ? _value.toStudyYear
          : toStudyYear // ignore: cast_nullable_to_non_nullable
              as StudyYear?,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color?,
      photoUpdatedAt: photoUpdatedAt == freezed
          ? _value.photoUpdatedAt
          : photoUpdatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      classes: classes == freezed
          ? _value.classes
          : classes // ignore: cast_nullable_to_non_nullable
              as List<Class>?,
      groups: groups == freezed
          ? _value.groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<Group>?,
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
  $StudyYearCopyWith<$Res>? get fromStudyYear {
    if (_value.fromStudyYear == null) {
      return null;
    }

    return $StudyYearCopyWith<$Res>(_value.fromStudyYear!, (value) {
      return _then(_value.copyWith(fromStudyYear: value));
    });
  }

  @override
  $StudyYearCopyWith<$Res>? get toStudyYear {
    if (_value.toStudyYear == null) {
      return null;
    }

    return $StudyYearCopyWith<$Res>(_value.toStudyYear!, (value) {
      return _then(_value.copyWith(toStudyYear: value));
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
abstract class _$$_ServiceCopyWith<$Res> implements $ServiceCopyWith<$Res> {
  factory _$$_ServiceCopyWith(
          _$_Service value, $Res Function(_$_Service) then) =
      __$$_ServiceCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      StudyYear? fromStudyYear,
      StudyYear? toStudyYear,
      @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
          Color? color,
      DateTime? photoUpdatedAt,
      List<Class>? classes,
      List<Group>? groups,
      @JsonKey(fromJson: analysisDataFromJson, toJson: analysisDataToJson)
          AnalysisData<DateTime>? attendanceHistoryAggregate,
      @JsonKey(fromJson: analysisDataFromJson, toJson: analysisDataToJson)
          AnalysisData<DateTime>? attendanceDaysConstraintsAggregate});

  @override
  $StudyYearCopyWith<$Res>? get fromStudyYear;
  @override
  $StudyYearCopyWith<$Res>? get toStudyYear;
  @override
  $AnalysisDataCopyWith<DateTime, $Res>? get attendanceHistoryAggregate;
  @override
  $AnalysisDataCopyWith<DateTime, $Res>? get attendanceDaysConstraintsAggregate;
}

/// @nodoc
class __$$_ServiceCopyWithImpl<$Res> extends _$ServiceCopyWithImpl<$Res>
    implements _$$_ServiceCopyWith<$Res> {
  __$$_ServiceCopyWithImpl(_$_Service _value, $Res Function(_$_Service) _then)
      : super(_value, (v) => _then(v as _$_Service));

  @override
  _$_Service get _value => super._value as _$_Service;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? fromStudyYear = freezed,
    Object? toStudyYear = freezed,
    Object? color = freezed,
    Object? photoUpdatedAt = freezed,
    Object? classes = freezed,
    Object? groups = freezed,
    Object? attendanceHistoryAggregate = freezed,
    Object? attendanceDaysConstraintsAggregate = freezed,
  }) {
    return _then(_$_Service(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      fromStudyYear: fromStudyYear == freezed
          ? _value.fromStudyYear
          : fromStudyYear // ignore: cast_nullable_to_non_nullable
              as StudyYear?,
      toStudyYear: toStudyYear == freezed
          ? _value.toStudyYear
          : toStudyYear // ignore: cast_nullable_to_non_nullable
              as StudyYear?,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color?,
      photoUpdatedAt: photoUpdatedAt == freezed
          ? _value.photoUpdatedAt
          : photoUpdatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      classes: classes == freezed
          ? _value._classes
          : classes // ignore: cast_nullable_to_non_nullable
              as List<Class>?,
      groups: groups == freezed
          ? _value._groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<Group>?,
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
class _$_Service extends _Service {
  _$_Service(
      {required this.id,
      required this.name,
      this.fromStudyYear,
      this.toStudyYear,
      @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
          this.color,
      this.photoUpdatedAt,
      final List<Class>? classes,
      final List<Group>? groups,
      @JsonKey(fromJson: analysisDataFromJson, toJson: analysisDataToJson)
          this.attendanceHistoryAggregate,
      @JsonKey(fromJson: analysisDataFromJson, toJson: analysisDataToJson)
          this.attendanceDaysConstraintsAggregate})
      : _classes = classes,
        _groups = groups,
        super._();

  factory _$_Service.fromJson(Map<String, dynamic> json) =>
      _$$_ServiceFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final StudyYear? fromStudyYear;
  @override
  final StudyYear? toStudyYear;
  @override
  @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
  final Color? color;
  @override
  final DateTime? photoUpdatedAt;
  final List<Class>? _classes;
  @override
  List<Class>? get classes {
    final value = _classes;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Group>? _groups;
  @override
  List<Group>? get groups {
    final value = _groups;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(fromJson: analysisDataFromJson, toJson: analysisDataToJson)
  final AnalysisData<DateTime>? attendanceHistoryAggregate;
  @override
  @JsonKey(fromJson: analysisDataFromJson, toJson: analysisDataToJson)
  final AnalysisData<DateTime>? attendanceDaysConstraintsAggregate;

  @override
  String toString() {
    return 'Service(id: $id, name: $name, fromStudyYear: $fromStudyYear, toStudyYear: $toStudyYear, color: $color, photoUpdatedAt: $photoUpdatedAt, classes: $classes, groups: $groups, attendanceHistoryAggregate: $attendanceHistoryAggregate, attendanceDaysConstraintsAggregate: $attendanceDaysConstraintsAggregate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Service &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.fromStudyYear, fromStudyYear) &&
            const DeepCollectionEquality()
                .equals(other.toStudyYear, toStudyYear) &&
            const DeepCollectionEquality().equals(other.color, color) &&
            const DeepCollectionEquality()
                .equals(other.photoUpdatedAt, photoUpdatedAt) &&
            const DeepCollectionEquality().equals(other._classes, _classes) &&
            const DeepCollectionEquality().equals(other._groups, _groups) &&
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
      const DeepCollectionEquality().hash(fromStudyYear),
      const DeepCollectionEquality().hash(toStudyYear),
      const DeepCollectionEquality().hash(color),
      const DeepCollectionEquality().hash(photoUpdatedAt),
      const DeepCollectionEquality().hash(_classes),
      const DeepCollectionEquality().hash(_groups),
      const DeepCollectionEquality().hash(attendanceHistoryAggregate),
      const DeepCollectionEquality().hash(attendanceDaysConstraintsAggregate));

  @JsonKey(ignore: true)
  @override
  _$$_ServiceCopyWith<_$_Service> get copyWith =>
      __$$_ServiceCopyWithImpl<_$_Service>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ServiceToJson(
      this,
    );
  }
}

abstract class _Service extends Service {
  factory _Service(
      {required final String id,
      required final String name,
      final StudyYear? fromStudyYear,
      final StudyYear? toStudyYear,
      @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
          final Color? color,
      final DateTime? photoUpdatedAt,
      final List<Class>? classes,
      final List<Group>? groups,
      @JsonKey(fromJson: analysisDataFromJson, toJson: analysisDataToJson)
          final AnalysisData<DateTime>? attendanceHistoryAggregate,
      @JsonKey(fromJson: analysisDataFromJson, toJson: analysisDataToJson)
          final AnalysisData<DateTime>?
              attendanceDaysConstraintsAggregate}) = _$_Service;
  _Service._() : super._();

  factory _Service.fromJson(Map<String, dynamic> json) = _$_Service.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  StudyYear? get fromStudyYear;
  @override
  StudyYear? get toStudyYear;
  @override
  @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
  Color? get color;
  @override
  DateTime? get photoUpdatedAt;
  @override
  List<Class>? get classes;
  @override
  List<Group>? get groups;
  @override
  @JsonKey(fromJson: analysisDataFromJson, toJson: analysisDataToJson)
  AnalysisData<DateTime>? get attendanceHistoryAggregate;
  @override
  @JsonKey(fromJson: analysisDataFromJson, toJson: analysisDataToJson)
  AnalysisData<DateTime>? get attendanceDaysConstraintsAggregate;
  @override
  @JsonKey(ignore: true)
  _$$_ServiceCopyWith<_$_Service> get copyWith =>
      throw _privateConstructorUsedError;
}
