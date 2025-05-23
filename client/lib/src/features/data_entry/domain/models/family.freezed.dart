// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'family.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Family {
  String get id;
  String get name;
  Address? get address;
  String? get notes;
  @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
  Color? get color;
  DateTime? get photoUpdatedAt;
  String? get blurhash;
  @JsonKey(fromJson: familyChildrenFromJson, toJson: familyChildrenToJson)
  List<Family>? get children;
  @JsonKey(fromJson: familyParentsFromJson, toJson: familyParentsToJson)
  List<Family>? get parents;
  LastRecordedByInfo? get lastEdit;

  /// Create a copy of Family
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FamilyCopyWith<Family> get copyWith =>
      _$FamilyCopyWithImpl<Family>(this as Family, _$identity);

  /// Serializes this Family to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Family &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.photoUpdatedAt, photoUpdatedAt) ||
                other.photoUpdatedAt == photoUpdatedAt) &&
            (identical(other.blurhash, blurhash) ||
                other.blurhash == blurhash) &&
            const DeepCollectionEquality().equals(other.children, children) &&
            const DeepCollectionEquality().equals(other.parents, parents) &&
            (identical(other.lastEdit, lastEdit) ||
                other.lastEdit == lastEdit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      address,
      notes,
      color,
      photoUpdatedAt,
      blurhash,
      const DeepCollectionEquality().hash(children),
      const DeepCollectionEquality().hash(parents),
      lastEdit);

  @override
  String toString() {
    return 'Family(id: $id, name: $name, address: $address, notes: $notes, color: $color, photoUpdatedAt: $photoUpdatedAt, blurhash: $blurhash, children: $children, parents: $parents, lastEdit: $lastEdit)';
  }
}

/// @nodoc
abstract mixin class $FamilyCopyWith<$Res> {
  factory $FamilyCopyWith(Family value, $Res Function(Family) _then) =
      _$FamilyCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String name,
      Address? address,
      String? notes,
      @JsonKey(fromJson: colorFromInt, toJson: colorToInt) Color? color,
      DateTime? photoUpdatedAt,
      String? blurhash,
      @JsonKey(fromJson: familyChildrenFromJson, toJson: familyChildrenToJson)
      List<Family>? children,
      @JsonKey(fromJson: familyParentsFromJson, toJson: familyParentsToJson)
      List<Family>? parents,
      LastRecordedByInfo? lastEdit});

  $AddressCopyWith<$Res>? get address;
  $LastRecordedByInfoCopyWith<$Res>? get lastEdit;
}

/// @nodoc
class _$FamilyCopyWithImpl<$Res> implements $FamilyCopyWith<$Res> {
  _$FamilyCopyWithImpl(this._self, this._then);

  final Family _self;
  final $Res Function(Family) _then;

  /// Create a copy of Family
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? address = freezed,
    Object? notes = freezed,
    Object? color = freezed,
    Object? photoUpdatedAt = freezed,
    Object? blurhash = freezed,
    Object? children = freezed,
    Object? parents = freezed,
    Object? lastEdit = freezed,
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
      address: freezed == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
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
      children: freezed == children
          ? _self.children
          : children // ignore: cast_nullable_to_non_nullable
              as List<Family>?,
      parents: freezed == parents
          ? _self.parents
          : parents // ignore: cast_nullable_to_non_nullable
              as List<Family>?,
      lastEdit: freezed == lastEdit
          ? _self.lastEdit
          : lastEdit // ignore: cast_nullable_to_non_nullable
              as LastRecordedByInfo?,
    ));
  }

  /// Create a copy of Family
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res>? get address {
    if (_self.address == null) {
      return null;
    }

    return $AddressCopyWith<$Res>(_self.address!, (value) {
      return _then(_self.copyWith(address: value));
    });
  }

  /// Create a copy of Family
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

/// @nodoc
@JsonSerializable()
class _Family extends Family {
  _Family(
      {required this.id,
      required this.name,
      this.address,
      this.notes,
      @JsonKey(fromJson: colorFromInt, toJson: colorToInt) this.color,
      this.photoUpdatedAt,
      this.blurhash,
      @JsonKey(fromJson: familyChildrenFromJson, toJson: familyChildrenToJson)
      final List<Family>? children,
      @JsonKey(fromJson: familyParentsFromJson, toJson: familyParentsToJson)
      final List<Family>? parents,
      this.lastEdit})
      : _children = children,
        _parents = parents,
        super._();
  factory _Family.fromJson(Map<String, dynamic> json) => _$FamilyFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final Address? address;
  @override
  final String? notes;
  @override
  @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
  final Color? color;
  @override
  final DateTime? photoUpdatedAt;
  @override
  final String? blurhash;
  final List<Family>? _children;
  @override
  @JsonKey(fromJson: familyChildrenFromJson, toJson: familyChildrenToJson)
  List<Family>? get children {
    final value = _children;
    if (value == null) return null;
    if (_children is EqualUnmodifiableListView) return _children;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Family>? _parents;
  @override
  @JsonKey(fromJson: familyParentsFromJson, toJson: familyParentsToJson)
  List<Family>? get parents {
    final value = _parents;
    if (value == null) return null;
    if (_parents is EqualUnmodifiableListView) return _parents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final LastRecordedByInfo? lastEdit;

  /// Create a copy of Family
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FamilyCopyWith<_Family> get copyWith =>
      __$FamilyCopyWithImpl<_Family>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$FamilyToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Family &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.photoUpdatedAt, photoUpdatedAt) ||
                other.photoUpdatedAt == photoUpdatedAt) &&
            (identical(other.blurhash, blurhash) ||
                other.blurhash == blurhash) &&
            const DeepCollectionEquality().equals(other._children, _children) &&
            const DeepCollectionEquality().equals(other._parents, _parents) &&
            (identical(other.lastEdit, lastEdit) ||
                other.lastEdit == lastEdit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      address,
      notes,
      color,
      photoUpdatedAt,
      blurhash,
      const DeepCollectionEquality().hash(_children),
      const DeepCollectionEquality().hash(_parents),
      lastEdit);

  @override
  String toString() {
    return 'Family(id: $id, name: $name, address: $address, notes: $notes, color: $color, photoUpdatedAt: $photoUpdatedAt, blurhash: $blurhash, children: $children, parents: $parents, lastEdit: $lastEdit)';
  }
}

/// @nodoc
abstract mixin class _$FamilyCopyWith<$Res> implements $FamilyCopyWith<$Res> {
  factory _$FamilyCopyWith(_Family value, $Res Function(_Family) _then) =
      __$FamilyCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      Address? address,
      String? notes,
      @JsonKey(fromJson: colorFromInt, toJson: colorToInt) Color? color,
      DateTime? photoUpdatedAt,
      String? blurhash,
      @JsonKey(fromJson: familyChildrenFromJson, toJson: familyChildrenToJson)
      List<Family>? children,
      @JsonKey(fromJson: familyParentsFromJson, toJson: familyParentsToJson)
      List<Family>? parents,
      LastRecordedByInfo? lastEdit});

  @override
  $AddressCopyWith<$Res>? get address;
  @override
  $LastRecordedByInfoCopyWith<$Res>? get lastEdit;
}

/// @nodoc
class __$FamilyCopyWithImpl<$Res> implements _$FamilyCopyWith<$Res> {
  __$FamilyCopyWithImpl(this._self, this._then);

  final _Family _self;
  final $Res Function(_Family) _then;

  /// Create a copy of Family
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? address = freezed,
    Object? notes = freezed,
    Object? color = freezed,
    Object? photoUpdatedAt = freezed,
    Object? blurhash = freezed,
    Object? children = freezed,
    Object? parents = freezed,
    Object? lastEdit = freezed,
  }) {
    return _then(_Family(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: freezed == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
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
      children: freezed == children
          ? _self._children
          : children // ignore: cast_nullable_to_non_nullable
              as List<Family>?,
      parents: freezed == parents
          ? _self._parents
          : parents // ignore: cast_nullable_to_non_nullable
              as List<Family>?,
      lastEdit: freezed == lastEdit
          ? _self.lastEdit
          : lastEdit // ignore: cast_nullable_to_non_nullable
              as LastRecordedByInfo?,
    ));
  }

  /// Create a copy of Family
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res>? get address {
    if (_self.address == null) {
      return null;
    }

    return $AddressCopyWith<$Res>(_self.address!, (value) {
      return _then(_self.copyWith(address: value));
    });
  }

  /// Create a copy of Family
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

// dart format on
