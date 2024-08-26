// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'area.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Area _$AreaFromJson(Map<String, dynamic> json) {
  return _Area.fromJson(json);
}

/// @nodoc
mixin _$Area {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(fromJson: polygonFromJson, toJson: polygonToJson)
  Polygon? get bounds => throw _privateConstructorUsedError;
  @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
  Color? get color => throw _privateConstructorUsedError;
  DateTime? get photoUpdatedAt => throw _privateConstructorUsedError;
  String? get blurhash => throw _privateConstructorUsedError;
  LastRecordedByInfo? get lastVisit => throw _privateConstructorUsedError;
  LastRecordedByInfo? get lastEdit => throw _privateConstructorUsedError;
  @JsonKey(fromJson: adminUsersFromJson, toJson: adminUsersToJson)
  List<User>? get adminUsers => throw _privateConstructorUsedError;

  /// Serializes this Area to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Area
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AreaCopyWith<Area> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AreaCopyWith<$Res> {
  factory $AreaCopyWith(Area value, $Res Function(Area) then) =
      _$AreaCopyWithImpl<$Res, Area>;
  @useResult
  $Res call(
      {String id,
      String name,
      @JsonKey(fromJson: polygonFromJson, toJson: polygonToJson)
      Polygon? bounds,
      @JsonKey(fromJson: colorFromInt, toJson: colorToInt) Color? color,
      DateTime? photoUpdatedAt,
      String? blurhash,
      LastRecordedByInfo? lastVisit,
      LastRecordedByInfo? lastEdit,
      @JsonKey(fromJson: adminUsersFromJson, toJson: adminUsersToJson)
      List<User>? adminUsers});

  $LastRecordedByInfoCopyWith<$Res>? get lastVisit;
  $LastRecordedByInfoCopyWith<$Res>? get lastEdit;
}

/// @nodoc
class _$AreaCopyWithImpl<$Res, $Val extends Area>
    implements $AreaCopyWith<$Res> {
  _$AreaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Area
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? bounds = freezed,
    Object? color = freezed,
    Object? photoUpdatedAt = freezed,
    Object? blurhash = freezed,
    Object? lastVisit = freezed,
    Object? lastEdit = freezed,
    Object? adminUsers = freezed,
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
      bounds: freezed == bounds
          ? _value.bounds
          : bounds // ignore: cast_nullable_to_non_nullable
              as Polygon?,
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
      lastVisit: freezed == lastVisit
          ? _value.lastVisit
          : lastVisit // ignore: cast_nullable_to_non_nullable
              as LastRecordedByInfo?,
      lastEdit: freezed == lastEdit
          ? _value.lastEdit
          : lastEdit // ignore: cast_nullable_to_non_nullable
              as LastRecordedByInfo?,
      adminUsers: freezed == adminUsers
          ? _value.adminUsers
          : adminUsers // ignore: cast_nullable_to_non_nullable
              as List<User>?,
    ) as $Val);
  }

  /// Create a copy of Area
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LastRecordedByInfoCopyWith<$Res>? get lastVisit {
    if (_value.lastVisit == null) {
      return null;
    }

    return $LastRecordedByInfoCopyWith<$Res>(_value.lastVisit!, (value) {
      return _then(_value.copyWith(lastVisit: value) as $Val);
    });
  }

  /// Create a copy of Area
  /// with the given fields replaced by the non-null parameter values.
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
}

/// @nodoc
abstract class _$$AreaImplCopyWith<$Res> implements $AreaCopyWith<$Res> {
  factory _$$AreaImplCopyWith(
          _$AreaImpl value, $Res Function(_$AreaImpl) then) =
      __$$AreaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      @JsonKey(fromJson: polygonFromJson, toJson: polygonToJson)
      Polygon? bounds,
      @JsonKey(fromJson: colorFromInt, toJson: colorToInt) Color? color,
      DateTime? photoUpdatedAt,
      String? blurhash,
      LastRecordedByInfo? lastVisit,
      LastRecordedByInfo? lastEdit,
      @JsonKey(fromJson: adminUsersFromJson, toJson: adminUsersToJson)
      List<User>? adminUsers});

  @override
  $LastRecordedByInfoCopyWith<$Res>? get lastVisit;
  @override
  $LastRecordedByInfoCopyWith<$Res>? get lastEdit;
}

/// @nodoc
class __$$AreaImplCopyWithImpl<$Res>
    extends _$AreaCopyWithImpl<$Res, _$AreaImpl>
    implements _$$AreaImplCopyWith<$Res> {
  __$$AreaImplCopyWithImpl(_$AreaImpl _value, $Res Function(_$AreaImpl) _then)
      : super(_value, _then);

  /// Create a copy of Area
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? bounds = freezed,
    Object? color = freezed,
    Object? photoUpdatedAt = freezed,
    Object? blurhash = freezed,
    Object? lastVisit = freezed,
    Object? lastEdit = freezed,
    Object? adminUsers = freezed,
  }) {
    return _then(_$AreaImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      bounds: freezed == bounds
          ? _value.bounds
          : bounds // ignore: cast_nullable_to_non_nullable
              as Polygon?,
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
      lastVisit: freezed == lastVisit
          ? _value.lastVisit
          : lastVisit // ignore: cast_nullable_to_non_nullable
              as LastRecordedByInfo?,
      lastEdit: freezed == lastEdit
          ? _value.lastEdit
          : lastEdit // ignore: cast_nullable_to_non_nullable
              as LastRecordedByInfo?,
      adminUsers: freezed == adminUsers
          ? _value._adminUsers
          : adminUsers // ignore: cast_nullable_to_non_nullable
              as List<User>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AreaImpl extends _Area {
  _$AreaImpl(
      {required this.id,
      required this.name,
      @JsonKey(fromJson: polygonFromJson, toJson: polygonToJson) this.bounds,
      @JsonKey(fromJson: colorFromInt, toJson: colorToInt) this.color,
      this.photoUpdatedAt,
      this.blurhash,
      this.lastVisit,
      this.lastEdit,
      @JsonKey(fromJson: adminUsersFromJson, toJson: adminUsersToJson)
      final List<User>? adminUsers})
      : _adminUsers = adminUsers,
        super._();

  factory _$AreaImpl.fromJson(Map<String, dynamic> json) =>
      _$$AreaImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  @JsonKey(fromJson: polygonFromJson, toJson: polygonToJson)
  final Polygon? bounds;
  @override
  @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
  final Color? color;
  @override
  final DateTime? photoUpdatedAt;
  @override
  final String? blurhash;
  @override
  final LastRecordedByInfo? lastVisit;
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
  String toString() {
    return 'Area(id: $id, name: $name, bounds: $bounds, color: $color, photoUpdatedAt: $photoUpdatedAt, blurhash: $blurhash, lastVisit: $lastVisit, lastEdit: $lastEdit, adminUsers: $adminUsers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AreaImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.bounds, bounds) || other.bounds == bounds) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.photoUpdatedAt, photoUpdatedAt) ||
                other.photoUpdatedAt == photoUpdatedAt) &&
            (identical(other.blurhash, blurhash) ||
                other.blurhash == blurhash) &&
            (identical(other.lastVisit, lastVisit) ||
                other.lastVisit == lastVisit) &&
            (identical(other.lastEdit, lastEdit) ||
                other.lastEdit == lastEdit) &&
            const DeepCollectionEquality()
                .equals(other._adminUsers, _adminUsers));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      bounds,
      color,
      photoUpdatedAt,
      blurhash,
      lastVisit,
      lastEdit,
      const DeepCollectionEquality().hash(_adminUsers));

  /// Create a copy of Area
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AreaImplCopyWith<_$AreaImpl> get copyWith =>
      __$$AreaImplCopyWithImpl<_$AreaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AreaImplToJson(
      this,
    );
  }
}

abstract class _Area extends Area {
  factory _Area(
      {required final String id,
      required final String name,
      @JsonKey(fromJson: polygonFromJson, toJson: polygonToJson)
      final Polygon? bounds,
      @JsonKey(fromJson: colorFromInt, toJson: colorToInt) final Color? color,
      final DateTime? photoUpdatedAt,
      final String? blurhash,
      final LastRecordedByInfo? lastVisit,
      final LastRecordedByInfo? lastEdit,
      @JsonKey(fromJson: adminUsersFromJson, toJson: adminUsersToJson)
      final List<User>? adminUsers}) = _$AreaImpl;
  _Area._() : super._();

  factory _Area.fromJson(Map<String, dynamic> json) = _$AreaImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  @JsonKey(fromJson: polygonFromJson, toJson: polygonToJson)
  Polygon? get bounds;
  @override
  @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
  Color? get color;
  @override
  DateTime? get photoUpdatedAt;
  @override
  String? get blurhash;
  @override
  LastRecordedByInfo? get lastVisit;
  @override
  LastRecordedByInfo? get lastEdit;
  @override
  @JsonKey(fromJson: adminUsersFromJson, toJson: adminUsersToJson)
  List<User>? get adminUsers;

  /// Create a copy of Area
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AreaImplCopyWith<_$AreaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
