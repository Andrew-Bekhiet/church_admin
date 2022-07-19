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
  @JsonKey(fromJson: studyYearFromJson, toJson: studyYearToJson)
  StudyYear? get fromStudyYear => throw _privateConstructorUsedError;
  @JsonKey(fromJson: studyYearFromJson, toJson: studyYearToJson)
  StudyYear? get toStudyYear => throw _privateConstructorUsedError;
  @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
  Color? get color => throw _privateConstructorUsedError;
  DateTime? get photoUpdatedAt => throw _privateConstructorUsedError;
  @JsonKey(fromJson: groupsFromJson, toJson: groupsToJson)
  List<Group>? get groups => throw _privateConstructorUsedError;

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
      @JsonKey(fromJson: studyYearFromJson, toJson: studyYearToJson)
          StudyYear? fromStudyYear,
      @JsonKey(fromJson: studyYearFromJson, toJson: studyYearToJson)
          StudyYear? toStudyYear,
      @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
          Color? color,
      DateTime? photoUpdatedAt,
      @JsonKey(fromJson: groupsFromJson, toJson: groupsToJson)
          List<Group>? groups});

  $StudyYearCopyWith<$Res>? get fromStudyYear;
  $StudyYearCopyWith<$Res>? get toStudyYear;
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
    Object? groups = freezed,
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
      groups: groups == freezed
          ? _value.groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<Group>?,
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
      @JsonKey(fromJson: studyYearFromJson, toJson: studyYearToJson)
          StudyYear? fromStudyYear,
      @JsonKey(fromJson: studyYearFromJson, toJson: studyYearToJson)
          StudyYear? toStudyYear,
      @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
          Color? color,
      DateTime? photoUpdatedAt,
      @JsonKey(fromJson: groupsFromJson, toJson: groupsToJson)
          List<Group>? groups});

  @override
  $StudyYearCopyWith<$Res>? get fromStudyYear;
  @override
  $StudyYearCopyWith<$Res>? get toStudyYear;
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
    Object? groups = freezed,
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
      groups: groups == freezed
          ? _value._groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<Group>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Service extends _Service {
  _$_Service(
      {required this.id,
      required this.name,
      @JsonKey(fromJson: studyYearFromJson, toJson: studyYearToJson)
          this.fromStudyYear,
      @JsonKey(fromJson: studyYearFromJson, toJson: studyYearToJson)
          this.toStudyYear,
      @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
          this.color,
      this.photoUpdatedAt,
      @JsonKey(fromJson: groupsFromJson, toJson: groupsToJson)
          final List<Group>? groups})
      : _groups = groups,
        super._();

  factory _$_Service.fromJson(Map<String, dynamic> json) =>
      _$$_ServiceFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  @JsonKey(fromJson: studyYearFromJson, toJson: studyYearToJson)
  final StudyYear? fromStudyYear;
  @override
  @JsonKey(fromJson: studyYearFromJson, toJson: studyYearToJson)
  final StudyYear? toStudyYear;
  @override
  @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
  final Color? color;
  @override
  final DateTime? photoUpdatedAt;
  final List<Group>? _groups;
  @override
  @JsonKey(fromJson: groupsFromJson, toJson: groupsToJson)
  List<Group>? get groups {
    final value = _groups;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Service(id: $id, name: $name, fromStudyYear: $fromStudyYear, toStudyYear: $toStudyYear, color: $color, photoUpdatedAt: $photoUpdatedAt, groups: $groups)';
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
            const DeepCollectionEquality().equals(other._groups, _groups));
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
      const DeepCollectionEquality().hash(_groups));

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
      @JsonKey(fromJson: studyYearFromJson, toJson: studyYearToJson)
          final StudyYear? fromStudyYear,
      @JsonKey(fromJson: studyYearFromJson, toJson: studyYearToJson)
          final StudyYear? toStudyYear,
      @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
          final Color? color,
      final DateTime? photoUpdatedAt,
      @JsonKey(fromJson: groupsFromJson, toJson: groupsToJson)
          final List<Group>? groups}) = _$_Service;
  _Service._() : super._();

  factory _Service.fromJson(Map<String, dynamic> json) = _$_Service.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  @JsonKey(fromJson: studyYearFromJson, toJson: studyYearToJson)
  StudyYear? get fromStudyYear;
  @override
  @JsonKey(fromJson: studyYearFromJson, toJson: studyYearToJson)
  StudyYear? get toStudyYear;
  @override
  @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
  Color? get color;
  @override
  DateTime? get photoUpdatedAt;
  @override
  @JsonKey(fromJson: groupsFromJson, toJson: groupsToJson)
  List<Group>? get groups;
  @override
  @JsonKey(ignore: true)
  _$$_ServiceCopyWith<_$_Service> get copyWith =>
      throw _privateConstructorUsedError;
}
