// Part 3 of the schema
part of "schema.graphql.dart";

abstract class CopyWith_Input_AddressesSetInput<TRes> {
  factory CopyWith_Input_AddressesSetInput(
    Input_AddressesSetInput instance,
    TRes Function(Input_AddressesSetInput) then,
  ) = _CopyWithImpl_Input_AddressesSetInput;

  factory CopyWith_Input_AddressesSetInput.stub(TRes res) =
      _CopyWithStubImpl_Input_AddressesSetInput;

  TRes call({
    int? apartmentNumber,
    UuidValue? areaId,
    String? countryIsoCode,
    UuidValue? districtId,
    UuidValue? familyId,
    Map<String, dynamic>? geolocation,
    int? houseNumber,
    String? specialLandmark,
    UuidValue? storeId,
    int? storeyNumber,
    UuidValue? streetId,
    String? substreetName,
  });
}

class _CopyWithImpl_Input_AddressesSetInput<TRes>
    implements CopyWith_Input_AddressesSetInput<TRes> {
  _CopyWithImpl_Input_AddressesSetInput(this._instance, this._then);

  final Input_AddressesSetInput _instance;

  final TRes Function(Input_AddressesSetInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? apartmentNumber = _undefined,
    Object? areaId = _undefined,
    Object? countryIsoCode = _undefined,
    Object? districtId = _undefined,
    Object? familyId = _undefined,
    Object? geolocation = _undefined,
    Object? houseNumber = _undefined,
    Object? specialLandmark = _undefined,
    Object? storeId = _undefined,
    Object? storeyNumber = _undefined,
    Object? streetId = _undefined,
    Object? substreetName = _undefined,
  }) => _then(
    Input_AddressesSetInput._({
      ..._instance._$data,
      if (apartmentNumber != _undefined)
        'apartmentNumber': (apartmentNumber as int?),
      if (areaId != _undefined) 'areaId': (areaId as UuidValue?),
      if (countryIsoCode != _undefined)
        'countryIsoCode': (countryIsoCode as String?),
      if (districtId != _undefined) 'districtId': (districtId as UuidValue?),
      if (familyId != _undefined) 'familyId': (familyId as UuidValue?),
      if (geolocation != _undefined)
        'geolocation': (geolocation as Map<String, dynamic>?),
      if (houseNumber != _undefined) 'houseNumber': (houseNumber as int?),
      if (specialLandmark != _undefined)
        'specialLandmark': (specialLandmark as String?),
      if (storeId != _undefined) 'storeId': (storeId as UuidValue?),
      if (storeyNumber != _undefined) 'storeyNumber': (storeyNumber as int?),
      if (streetId != _undefined) 'streetId': (streetId as UuidValue?),
      if (substreetName != _undefined)
        'substreetName': (substreetName as String?),
    }),
  );
}

class _CopyWithStubImpl_Input_AddressesSetInput<TRes>
    implements CopyWith_Input_AddressesSetInput<TRes> {
  _CopyWithStubImpl_Input_AddressesSetInput(this._res);

  TRes _res;

  call({
    int? apartmentNumber,
    UuidValue? areaId,
    String? countryIsoCode,
    UuidValue? districtId,
    UuidValue? familyId,
    Map<String, dynamic>? geolocation,
    int? houseNumber,
    String? specialLandmark,
    UuidValue? storeId,
    int? storeyNumber,
    UuidValue? streetId,
    String? substreetName,
  }) => _res;
}

class Input_AddressesStddevOrderBy {
  factory Input_AddressesStddevOrderBy({
    Enum_OrderBy? apartmentNumber,
    Enum_OrderBy? houseNumber,
    Enum_OrderBy? storeyNumber,
  }) => Input_AddressesStddevOrderBy._({
    if (apartmentNumber != null) r'apartmentNumber': apartmentNumber,
    if (houseNumber != null) r'houseNumber': houseNumber,
    if (storeyNumber != null) r'storeyNumber': storeyNumber,
  });

  Input_AddressesStddevOrderBy._(this._$data);

  factory Input_AddressesStddevOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('apartmentNumber')) {
      final l$apartmentNumber = data['apartmentNumber'];
      result$data['apartmentNumber'] = l$apartmentNumber == null
          ? null
          : fromJson_Enum_OrderBy((l$apartmentNumber as String));
    }
    if (data.containsKey('houseNumber')) {
      final l$houseNumber = data['houseNumber'];
      result$data['houseNumber'] = l$houseNumber == null
          ? null
          : fromJson_Enum_OrderBy((l$houseNumber as String));
    }
    if (data.containsKey('storeyNumber')) {
      final l$storeyNumber = data['storeyNumber'];
      result$data['storeyNumber'] = l$storeyNumber == null
          ? null
          : fromJson_Enum_OrderBy((l$storeyNumber as String));
    }
    return Input_AddressesStddevOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get apartmentNumber =>
      (_$data['apartmentNumber'] as Enum_OrderBy?);

  Enum_OrderBy? get houseNumber => (_$data['houseNumber'] as Enum_OrderBy?);

  Enum_OrderBy? get storeyNumber => (_$data['storeyNumber'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('apartmentNumber')) {
      final l$apartmentNumber = apartmentNumber;
      result$data['apartmentNumber'] = l$apartmentNumber == null
          ? null
          : toJson_Enum_OrderBy(l$apartmentNumber);
    }
    if (_$data.containsKey('houseNumber')) {
      final l$houseNumber = houseNumber;
      result$data['houseNumber'] = l$houseNumber == null
          ? null
          : toJson_Enum_OrderBy(l$houseNumber);
    }
    if (_$data.containsKey('storeyNumber')) {
      final l$storeyNumber = storeyNumber;
      result$data['storeyNumber'] = l$storeyNumber == null
          ? null
          : toJson_Enum_OrderBy(l$storeyNumber);
    }
    return result$data;
  }

  CopyWith_Input_AddressesStddevOrderBy<Input_AddressesStddevOrderBy>
  get copyWith => CopyWith_Input_AddressesStddevOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AddressesStddevOrderBy ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$apartmentNumber = apartmentNumber;
    final lOther$apartmentNumber = other.apartmentNumber;
    if (_$data.containsKey('apartmentNumber') !=
        other._$data.containsKey('apartmentNumber')) {
      return false;
    }
    if (l$apartmentNumber != lOther$apartmentNumber) {
      return false;
    }
    final l$houseNumber = houseNumber;
    final lOther$houseNumber = other.houseNumber;
    if (_$data.containsKey('houseNumber') !=
        other._$data.containsKey('houseNumber')) {
      return false;
    }
    if (l$houseNumber != lOther$houseNumber) {
      return false;
    }
    final l$storeyNumber = storeyNumber;
    final lOther$storeyNumber = other.storeyNumber;
    if (_$data.containsKey('storeyNumber') !=
        other._$data.containsKey('storeyNumber')) {
      return false;
    }
    if (l$storeyNumber != lOther$storeyNumber) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$apartmentNumber = apartmentNumber;
    final l$houseNumber = houseNumber;
    final l$storeyNumber = storeyNumber;
    return Object.hashAll([
      _$data.containsKey('apartmentNumber') ? l$apartmentNumber : const {},
      _$data.containsKey('houseNumber') ? l$houseNumber : const {},
      _$data.containsKey('storeyNumber') ? l$storeyNumber : const {},
    ]);
  }
}

abstract class CopyWith_Input_AddressesStddevOrderBy<TRes> {
  factory CopyWith_Input_AddressesStddevOrderBy(
    Input_AddressesStddevOrderBy instance,
    TRes Function(Input_AddressesStddevOrderBy) then,
  ) = _CopyWithImpl_Input_AddressesStddevOrderBy;

  factory CopyWith_Input_AddressesStddevOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_AddressesStddevOrderBy;

  TRes call({
    Enum_OrderBy? apartmentNumber,
    Enum_OrderBy? houseNumber,
    Enum_OrderBy? storeyNumber,
  });
}

class _CopyWithImpl_Input_AddressesStddevOrderBy<TRes>
    implements CopyWith_Input_AddressesStddevOrderBy<TRes> {
  _CopyWithImpl_Input_AddressesStddevOrderBy(this._instance, this._then);

  final Input_AddressesStddevOrderBy _instance;

  final TRes Function(Input_AddressesStddevOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? apartmentNumber = _undefined,
    Object? houseNumber = _undefined,
    Object? storeyNumber = _undefined,
  }) => _then(
    Input_AddressesStddevOrderBy._({
      ..._instance._$data,
      if (apartmentNumber != _undefined)
        'apartmentNumber': (apartmentNumber as Enum_OrderBy?),
      if (houseNumber != _undefined)
        'houseNumber': (houseNumber as Enum_OrderBy?),
      if (storeyNumber != _undefined)
        'storeyNumber': (storeyNumber as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_AddressesStddevOrderBy<TRes>
    implements CopyWith_Input_AddressesStddevOrderBy<TRes> {
  _CopyWithStubImpl_Input_AddressesStddevOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? apartmentNumber,
    Enum_OrderBy? houseNumber,
    Enum_OrderBy? storeyNumber,
  }) => _res;
}

class Input_AddressesStddevPopOrderBy {
  factory Input_AddressesStddevPopOrderBy({
    Enum_OrderBy? apartmentNumber,
    Enum_OrderBy? houseNumber,
    Enum_OrderBy? storeyNumber,
  }) => Input_AddressesStddevPopOrderBy._({
    if (apartmentNumber != null) r'apartmentNumber': apartmentNumber,
    if (houseNumber != null) r'houseNumber': houseNumber,
    if (storeyNumber != null) r'storeyNumber': storeyNumber,
  });

  Input_AddressesStddevPopOrderBy._(this._$data);

  factory Input_AddressesStddevPopOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('apartmentNumber')) {
      final l$apartmentNumber = data['apartmentNumber'];
      result$data['apartmentNumber'] = l$apartmentNumber == null
          ? null
          : fromJson_Enum_OrderBy((l$apartmentNumber as String));
    }
    if (data.containsKey('houseNumber')) {
      final l$houseNumber = data['houseNumber'];
      result$data['houseNumber'] = l$houseNumber == null
          ? null
          : fromJson_Enum_OrderBy((l$houseNumber as String));
    }
    if (data.containsKey('storeyNumber')) {
      final l$storeyNumber = data['storeyNumber'];
      result$data['storeyNumber'] = l$storeyNumber == null
          ? null
          : fromJson_Enum_OrderBy((l$storeyNumber as String));
    }
    return Input_AddressesStddevPopOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get apartmentNumber =>
      (_$data['apartmentNumber'] as Enum_OrderBy?);

  Enum_OrderBy? get houseNumber => (_$data['houseNumber'] as Enum_OrderBy?);

  Enum_OrderBy? get storeyNumber => (_$data['storeyNumber'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('apartmentNumber')) {
      final l$apartmentNumber = apartmentNumber;
      result$data['apartmentNumber'] = l$apartmentNumber == null
          ? null
          : toJson_Enum_OrderBy(l$apartmentNumber);
    }
    if (_$data.containsKey('houseNumber')) {
      final l$houseNumber = houseNumber;
      result$data['houseNumber'] = l$houseNumber == null
          ? null
          : toJson_Enum_OrderBy(l$houseNumber);
    }
    if (_$data.containsKey('storeyNumber')) {
      final l$storeyNumber = storeyNumber;
      result$data['storeyNumber'] = l$storeyNumber == null
          ? null
          : toJson_Enum_OrderBy(l$storeyNumber);
    }
    return result$data;
  }

  CopyWith_Input_AddressesStddevPopOrderBy<Input_AddressesStddevPopOrderBy>
  get copyWith => CopyWith_Input_AddressesStddevPopOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AddressesStddevPopOrderBy ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$apartmentNumber = apartmentNumber;
    final lOther$apartmentNumber = other.apartmentNumber;
    if (_$data.containsKey('apartmentNumber') !=
        other._$data.containsKey('apartmentNumber')) {
      return false;
    }
    if (l$apartmentNumber != lOther$apartmentNumber) {
      return false;
    }
    final l$houseNumber = houseNumber;
    final lOther$houseNumber = other.houseNumber;
    if (_$data.containsKey('houseNumber') !=
        other._$data.containsKey('houseNumber')) {
      return false;
    }
    if (l$houseNumber != lOther$houseNumber) {
      return false;
    }
    final l$storeyNumber = storeyNumber;
    final lOther$storeyNumber = other.storeyNumber;
    if (_$data.containsKey('storeyNumber') !=
        other._$data.containsKey('storeyNumber')) {
      return false;
    }
    if (l$storeyNumber != lOther$storeyNumber) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$apartmentNumber = apartmentNumber;
    final l$houseNumber = houseNumber;
    final l$storeyNumber = storeyNumber;
    return Object.hashAll([
      _$data.containsKey('apartmentNumber') ? l$apartmentNumber : const {},
      _$data.containsKey('houseNumber') ? l$houseNumber : const {},
      _$data.containsKey('storeyNumber') ? l$storeyNumber : const {},
    ]);
  }
}

abstract class CopyWith_Input_AddressesStddevPopOrderBy<TRes> {
  factory CopyWith_Input_AddressesStddevPopOrderBy(
    Input_AddressesStddevPopOrderBy instance,
    TRes Function(Input_AddressesStddevPopOrderBy) then,
  ) = _CopyWithImpl_Input_AddressesStddevPopOrderBy;

  factory CopyWith_Input_AddressesStddevPopOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_AddressesStddevPopOrderBy;

  TRes call({
    Enum_OrderBy? apartmentNumber,
    Enum_OrderBy? houseNumber,
    Enum_OrderBy? storeyNumber,
  });
}

class _CopyWithImpl_Input_AddressesStddevPopOrderBy<TRes>
    implements CopyWith_Input_AddressesStddevPopOrderBy<TRes> {
  _CopyWithImpl_Input_AddressesStddevPopOrderBy(this._instance, this._then);

  final Input_AddressesStddevPopOrderBy _instance;

  final TRes Function(Input_AddressesStddevPopOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? apartmentNumber = _undefined,
    Object? houseNumber = _undefined,
    Object? storeyNumber = _undefined,
  }) => _then(
    Input_AddressesStddevPopOrderBy._({
      ..._instance._$data,
      if (apartmentNumber != _undefined)
        'apartmentNumber': (apartmentNumber as Enum_OrderBy?),
      if (houseNumber != _undefined)
        'houseNumber': (houseNumber as Enum_OrderBy?),
      if (storeyNumber != _undefined)
        'storeyNumber': (storeyNumber as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_AddressesStddevPopOrderBy<TRes>
    implements CopyWith_Input_AddressesStddevPopOrderBy<TRes> {
  _CopyWithStubImpl_Input_AddressesStddevPopOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? apartmentNumber,
    Enum_OrderBy? houseNumber,
    Enum_OrderBy? storeyNumber,
  }) => _res;
}

class Input_AddressesStddevSampOrderBy {
  factory Input_AddressesStddevSampOrderBy({
    Enum_OrderBy? apartmentNumber,
    Enum_OrderBy? houseNumber,
    Enum_OrderBy? storeyNumber,
  }) => Input_AddressesStddevSampOrderBy._({
    if (apartmentNumber != null) r'apartmentNumber': apartmentNumber,
    if (houseNumber != null) r'houseNumber': houseNumber,
    if (storeyNumber != null) r'storeyNumber': storeyNumber,
  });

  Input_AddressesStddevSampOrderBy._(this._$data);

  factory Input_AddressesStddevSampOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('apartmentNumber')) {
      final l$apartmentNumber = data['apartmentNumber'];
      result$data['apartmentNumber'] = l$apartmentNumber == null
          ? null
          : fromJson_Enum_OrderBy((l$apartmentNumber as String));
    }
    if (data.containsKey('houseNumber')) {
      final l$houseNumber = data['houseNumber'];
      result$data['houseNumber'] = l$houseNumber == null
          ? null
          : fromJson_Enum_OrderBy((l$houseNumber as String));
    }
    if (data.containsKey('storeyNumber')) {
      final l$storeyNumber = data['storeyNumber'];
      result$data['storeyNumber'] = l$storeyNumber == null
          ? null
          : fromJson_Enum_OrderBy((l$storeyNumber as String));
    }
    return Input_AddressesStddevSampOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get apartmentNumber =>
      (_$data['apartmentNumber'] as Enum_OrderBy?);

  Enum_OrderBy? get houseNumber => (_$data['houseNumber'] as Enum_OrderBy?);

  Enum_OrderBy? get storeyNumber => (_$data['storeyNumber'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('apartmentNumber')) {
      final l$apartmentNumber = apartmentNumber;
      result$data['apartmentNumber'] = l$apartmentNumber == null
          ? null
          : toJson_Enum_OrderBy(l$apartmentNumber);
    }
    if (_$data.containsKey('houseNumber')) {
      final l$houseNumber = houseNumber;
      result$data['houseNumber'] = l$houseNumber == null
          ? null
          : toJson_Enum_OrderBy(l$houseNumber);
    }
    if (_$data.containsKey('storeyNumber')) {
      final l$storeyNumber = storeyNumber;
      result$data['storeyNumber'] = l$storeyNumber == null
          ? null
          : toJson_Enum_OrderBy(l$storeyNumber);
    }
    return result$data;
  }

  CopyWith_Input_AddressesStddevSampOrderBy<Input_AddressesStddevSampOrderBy>
  get copyWith => CopyWith_Input_AddressesStddevSampOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AddressesStddevSampOrderBy ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$apartmentNumber = apartmentNumber;
    final lOther$apartmentNumber = other.apartmentNumber;
    if (_$data.containsKey('apartmentNumber') !=
        other._$data.containsKey('apartmentNumber')) {
      return false;
    }
    if (l$apartmentNumber != lOther$apartmentNumber) {
      return false;
    }
    final l$houseNumber = houseNumber;
    final lOther$houseNumber = other.houseNumber;
    if (_$data.containsKey('houseNumber') !=
        other._$data.containsKey('houseNumber')) {
      return false;
    }
    if (l$houseNumber != lOther$houseNumber) {
      return false;
    }
    final l$storeyNumber = storeyNumber;
    final lOther$storeyNumber = other.storeyNumber;
    if (_$data.containsKey('storeyNumber') !=
        other._$data.containsKey('storeyNumber')) {
      return false;
    }
    if (l$storeyNumber != lOther$storeyNumber) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$apartmentNumber = apartmentNumber;
    final l$houseNumber = houseNumber;
    final l$storeyNumber = storeyNumber;
    return Object.hashAll([
      _$data.containsKey('apartmentNumber') ? l$apartmentNumber : const {},
      _$data.containsKey('houseNumber') ? l$houseNumber : const {},
      _$data.containsKey('storeyNumber') ? l$storeyNumber : const {},
    ]);
  }
}

abstract class CopyWith_Input_AddressesStddevSampOrderBy<TRes> {
  factory CopyWith_Input_AddressesStddevSampOrderBy(
    Input_AddressesStddevSampOrderBy instance,
    TRes Function(Input_AddressesStddevSampOrderBy) then,
  ) = _CopyWithImpl_Input_AddressesStddevSampOrderBy;

  factory CopyWith_Input_AddressesStddevSampOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_AddressesStddevSampOrderBy;

  TRes call({
    Enum_OrderBy? apartmentNumber,
    Enum_OrderBy? houseNumber,
    Enum_OrderBy? storeyNumber,
  });
}

class _CopyWithImpl_Input_AddressesStddevSampOrderBy<TRes>
    implements CopyWith_Input_AddressesStddevSampOrderBy<TRes> {
  _CopyWithImpl_Input_AddressesStddevSampOrderBy(this._instance, this._then);

  final Input_AddressesStddevSampOrderBy _instance;

  final TRes Function(Input_AddressesStddevSampOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? apartmentNumber = _undefined,
    Object? houseNumber = _undefined,
    Object? storeyNumber = _undefined,
  }) => _then(
    Input_AddressesStddevSampOrderBy._({
      ..._instance._$data,
      if (apartmentNumber != _undefined)
        'apartmentNumber': (apartmentNumber as Enum_OrderBy?),
      if (houseNumber != _undefined)
        'houseNumber': (houseNumber as Enum_OrderBy?),
      if (storeyNumber != _undefined)
        'storeyNumber': (storeyNumber as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_AddressesStddevSampOrderBy<TRes>
    implements CopyWith_Input_AddressesStddevSampOrderBy<TRes> {
  _CopyWithStubImpl_Input_AddressesStddevSampOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? apartmentNumber,
    Enum_OrderBy? houseNumber,
    Enum_OrderBy? storeyNumber,
  }) => _res;
}

class Input_AddressesStreamCursorInput {
  factory Input_AddressesStreamCursorInput({
    required Input_AddressesStreamCursorValueInput initialValue,
    Enum_CursorOrdering? ordering,
  }) => Input_AddressesStreamCursorInput._({
    r'initialValue': initialValue,
    if (ordering != null) r'ordering': ordering,
  });

  Input_AddressesStreamCursorInput._(this._$data);

  factory Input_AddressesStreamCursorInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$initialValue = data['initialValue'];
    result$data['initialValue'] =
        Input_AddressesStreamCursorValueInput.fromJson(
          (l$initialValue as Map<String, dynamic>),
        );
    if (data.containsKey('ordering')) {
      final l$ordering = data['ordering'];
      result$data['ordering'] = l$ordering == null
          ? null
          : fromJson_Enum_CursorOrdering((l$ordering as String));
    }
    return Input_AddressesStreamCursorInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_AddressesStreamCursorValueInput get initialValue =>
      (_$data['initialValue'] as Input_AddressesStreamCursorValueInput);

  Enum_CursorOrdering? get ordering =>
      (_$data['ordering'] as Enum_CursorOrdering?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$initialValue = initialValue;
    result$data['initialValue'] = l$initialValue.toJson();
    if (_$data.containsKey('ordering')) {
      final l$ordering = ordering;
      result$data['ordering'] = l$ordering == null
          ? null
          : toJson_Enum_CursorOrdering(l$ordering);
    }
    return result$data;
  }

  CopyWith_Input_AddressesStreamCursorInput<Input_AddressesStreamCursorInput>
  get copyWith => CopyWith_Input_AddressesStreamCursorInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AddressesStreamCursorInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$initialValue = initialValue;
    final lOther$initialValue = other.initialValue;
    if (l$initialValue != lOther$initialValue) {
      return false;
    }
    final l$ordering = ordering;
    final lOther$ordering = other.ordering;
    if (_$data.containsKey('ordering') !=
        other._$data.containsKey('ordering')) {
      return false;
    }
    if (l$ordering != lOther$ordering) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$initialValue = initialValue;
    final l$ordering = ordering;
    return Object.hashAll([
      l$initialValue,
      _$data.containsKey('ordering') ? l$ordering : const {},
    ]);
  }
}

abstract class CopyWith_Input_AddressesStreamCursorInput<TRes> {
  factory CopyWith_Input_AddressesStreamCursorInput(
    Input_AddressesStreamCursorInput instance,
    TRes Function(Input_AddressesStreamCursorInput) then,
  ) = _CopyWithImpl_Input_AddressesStreamCursorInput;

  factory CopyWith_Input_AddressesStreamCursorInput.stub(TRes res) =
      _CopyWithStubImpl_Input_AddressesStreamCursorInput;

  TRes call({
    Input_AddressesStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  });
  CopyWith_Input_AddressesStreamCursorValueInput<TRes> get initialValue;
}

class _CopyWithImpl_Input_AddressesStreamCursorInput<TRes>
    implements CopyWith_Input_AddressesStreamCursorInput<TRes> {
  _CopyWithImpl_Input_AddressesStreamCursorInput(this._instance, this._then);

  final Input_AddressesStreamCursorInput _instance;

  final TRes Function(Input_AddressesStreamCursorInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? initialValue = _undefined,
    Object? ordering = _undefined,
  }) => _then(
    Input_AddressesStreamCursorInput._({
      ..._instance._$data,
      if (initialValue != _undefined && initialValue != null)
        'initialValue': (initialValue as Input_AddressesStreamCursorValueInput),
      if (ordering != _undefined)
        'ordering': (ordering as Enum_CursorOrdering?),
    }),
  );

  CopyWith_Input_AddressesStreamCursorValueInput<TRes> get initialValue {
    final local$initialValue = _instance.initialValue;
    return CopyWith_Input_AddressesStreamCursorValueInput(
      local$initialValue,
      (e) => call(initialValue: e),
    );
  }
}

class _CopyWithStubImpl_Input_AddressesStreamCursorInput<TRes>
    implements CopyWith_Input_AddressesStreamCursorInput<TRes> {
  _CopyWithStubImpl_Input_AddressesStreamCursorInput(this._res);

  TRes _res;

  call({
    Input_AddressesStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  }) => _res;

  CopyWith_Input_AddressesStreamCursorValueInput<TRes> get initialValue =>
      CopyWith_Input_AddressesStreamCursorValueInput.stub(_res);
}

class Input_AddressesStreamCursorValueInput {
  factory Input_AddressesStreamCursorValueInput({
    int? apartmentNumber,
    UuidValue? areaId,
    String? countryIsoCode,
    UuidValue? districtId,
    UuidValue? familyId,
    Map<String, dynamic>? geolocation,
    int? houseNumber,
    UuidValue? id,
    String? specialLandmark,
    UuidValue? storeId,
    int? storeyNumber,
    UuidValue? streetId,
    String? substreetName,
  }) => Input_AddressesStreamCursorValueInput._({
    if (apartmentNumber != null) r'apartmentNumber': apartmentNumber,
    if (areaId != null) r'areaId': areaId,
    if (countryIsoCode != null) r'countryIsoCode': countryIsoCode,
    if (districtId != null) r'districtId': districtId,
    if (familyId != null) r'familyId': familyId,
    if (geolocation != null) r'geolocation': geolocation,
    if (houseNumber != null) r'houseNumber': houseNumber,
    if (id != null) r'id': id,
    if (specialLandmark != null) r'specialLandmark': specialLandmark,
    if (storeId != null) r'storeId': storeId,
    if (storeyNumber != null) r'storeyNumber': storeyNumber,
    if (streetId != null) r'streetId': streetId,
    if (substreetName != null) r'substreetName': substreetName,
  });

  Input_AddressesStreamCursorValueInput._(this._$data);

  factory Input_AddressesStreamCursorValueInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('apartmentNumber')) {
      final l$apartmentNumber = data['apartmentNumber'];
      result$data['apartmentNumber'] = (l$apartmentNumber as int?);
    }
    if (data.containsKey('areaId')) {
      final l$areaId = data['areaId'];
      result$data['areaId'] = l$areaId == null ? null : stringToUuid(l$areaId);
    }
    if (data.containsKey('countryIsoCode')) {
      final l$countryIsoCode = data['countryIsoCode'];
      result$data['countryIsoCode'] = (l$countryIsoCode as String?);
    }
    if (data.containsKey('districtId')) {
      final l$districtId = data['districtId'];
      result$data['districtId'] = l$districtId == null
          ? null
          : stringToUuid(l$districtId);
    }
    if (data.containsKey('familyId')) {
      final l$familyId = data['familyId'];
      result$data['familyId'] = l$familyId == null
          ? null
          : stringToUuid(l$familyId);
    }
    if (data.containsKey('geolocation')) {
      final l$geolocation = data['geolocation'];
      result$data['geolocation'] = (l$geolocation as Map<String, dynamic>?);
    }
    if (data.containsKey('houseNumber')) {
      final l$houseNumber = data['houseNumber'];
      result$data['houseNumber'] = (l$houseNumber as int?);
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null ? null : stringToUuid(l$id);
    }
    if (data.containsKey('specialLandmark')) {
      final l$specialLandmark = data['specialLandmark'];
      result$data['specialLandmark'] = (l$specialLandmark as String?);
    }
    if (data.containsKey('storeId')) {
      final l$storeId = data['storeId'];
      result$data['storeId'] = l$storeId == null
          ? null
          : stringToUuid(l$storeId);
    }
    if (data.containsKey('storeyNumber')) {
      final l$storeyNumber = data['storeyNumber'];
      result$data['storeyNumber'] = (l$storeyNumber as int?);
    }
    if (data.containsKey('streetId')) {
      final l$streetId = data['streetId'];
      result$data['streetId'] = l$streetId == null
          ? null
          : stringToUuid(l$streetId);
    }
    if (data.containsKey('substreetName')) {
      final l$substreetName = data['substreetName'];
      result$data['substreetName'] = (l$substreetName as String?);
    }
    return Input_AddressesStreamCursorValueInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get apartmentNumber => (_$data['apartmentNumber'] as int?);

  UuidValue? get areaId => (_$data['areaId'] as UuidValue?);

  String? get countryIsoCode => (_$data['countryIsoCode'] as String?);

  UuidValue? get districtId => (_$data['districtId'] as UuidValue?);

  UuidValue? get familyId => (_$data['familyId'] as UuidValue?);

  Map<String, dynamic>? get geolocation =>
      (_$data['geolocation'] as Map<String, dynamic>?);

  int? get houseNumber => (_$data['houseNumber'] as int?);

  UuidValue? get id => (_$data['id'] as UuidValue?);

  String? get specialLandmark => (_$data['specialLandmark'] as String?);

  UuidValue? get storeId => (_$data['storeId'] as UuidValue?);

  int? get storeyNumber => (_$data['storeyNumber'] as int?);

  UuidValue? get streetId => (_$data['streetId'] as UuidValue?);

  String? get substreetName => (_$data['substreetName'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('apartmentNumber')) {
      final l$apartmentNumber = apartmentNumber;
      result$data['apartmentNumber'] = l$apartmentNumber;
    }
    if (_$data.containsKey('areaId')) {
      final l$areaId = areaId;
      result$data['areaId'] = l$areaId == null ? null : uuidToString(l$areaId);
    }
    if (_$data.containsKey('countryIsoCode')) {
      final l$countryIsoCode = countryIsoCode;
      result$data['countryIsoCode'] = l$countryIsoCode;
    }
    if (_$data.containsKey('districtId')) {
      final l$districtId = districtId;
      result$data['districtId'] = l$districtId == null
          ? null
          : uuidToString(l$districtId);
    }
    if (_$data.containsKey('familyId')) {
      final l$familyId = familyId;
      result$data['familyId'] = l$familyId == null
          ? null
          : uuidToString(l$familyId);
    }
    if (_$data.containsKey('geolocation')) {
      final l$geolocation = geolocation;
      result$data['geolocation'] = l$geolocation;
    }
    if (_$data.containsKey('houseNumber')) {
      final l$houseNumber = houseNumber;
      result$data['houseNumber'] = l$houseNumber;
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : uuidToString(l$id);
    }
    if (_$data.containsKey('specialLandmark')) {
      final l$specialLandmark = specialLandmark;
      result$data['specialLandmark'] = l$specialLandmark;
    }
    if (_$data.containsKey('storeId')) {
      final l$storeId = storeId;
      result$data['storeId'] = l$storeId == null
          ? null
          : uuidToString(l$storeId);
    }
    if (_$data.containsKey('storeyNumber')) {
      final l$storeyNumber = storeyNumber;
      result$data['storeyNumber'] = l$storeyNumber;
    }
    if (_$data.containsKey('streetId')) {
      final l$streetId = streetId;
      result$data['streetId'] = l$streetId == null
          ? null
          : uuidToString(l$streetId);
    }
    if (_$data.containsKey('substreetName')) {
      final l$substreetName = substreetName;
      result$data['substreetName'] = l$substreetName;
    }
    return result$data;
  }

  CopyWith_Input_AddressesStreamCursorValueInput<
    Input_AddressesStreamCursorValueInput
  >
  get copyWith =>
      CopyWith_Input_AddressesStreamCursorValueInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AddressesStreamCursorValueInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$apartmentNumber = apartmentNumber;
    final lOther$apartmentNumber = other.apartmentNumber;
    if (_$data.containsKey('apartmentNumber') !=
        other._$data.containsKey('apartmentNumber')) {
      return false;
    }
    if (l$apartmentNumber != lOther$apartmentNumber) {
      return false;
    }
    final l$areaId = areaId;
    final lOther$areaId = other.areaId;
    if (_$data.containsKey('areaId') != other._$data.containsKey('areaId')) {
      return false;
    }
    if (l$areaId != lOther$areaId) {
      return false;
    }
    final l$countryIsoCode = countryIsoCode;
    final lOther$countryIsoCode = other.countryIsoCode;
    if (_$data.containsKey('countryIsoCode') !=
        other._$data.containsKey('countryIsoCode')) {
      return false;
    }
    if (l$countryIsoCode != lOther$countryIsoCode) {
      return false;
    }
    final l$districtId = districtId;
    final lOther$districtId = other.districtId;
    if (_$data.containsKey('districtId') !=
        other._$data.containsKey('districtId')) {
      return false;
    }
    if (l$districtId != lOther$districtId) {
      return false;
    }
    final l$familyId = familyId;
    final lOther$familyId = other.familyId;
    if (_$data.containsKey('familyId') !=
        other._$data.containsKey('familyId')) {
      return false;
    }
    if (l$familyId != lOther$familyId) {
      return false;
    }
    final l$geolocation = geolocation;
    final lOther$geolocation = other.geolocation;
    if (_$data.containsKey('geolocation') !=
        other._$data.containsKey('geolocation')) {
      return false;
    }
    if (l$geolocation != lOther$geolocation) {
      return false;
    }
    final l$houseNumber = houseNumber;
    final lOther$houseNumber = other.houseNumber;
    if (_$data.containsKey('houseNumber') !=
        other._$data.containsKey('houseNumber')) {
      return false;
    }
    if (l$houseNumber != lOther$houseNumber) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$specialLandmark = specialLandmark;
    final lOther$specialLandmark = other.specialLandmark;
    if (_$data.containsKey('specialLandmark') !=
        other._$data.containsKey('specialLandmark')) {
      return false;
    }
    if (l$specialLandmark != lOther$specialLandmark) {
      return false;
    }
    final l$storeId = storeId;
    final lOther$storeId = other.storeId;
    if (_$data.containsKey('storeId') != other._$data.containsKey('storeId')) {
      return false;
    }
    if (l$storeId != lOther$storeId) {
      return false;
    }
    final l$storeyNumber = storeyNumber;
    final lOther$storeyNumber = other.storeyNumber;
    if (_$data.containsKey('storeyNumber') !=
        other._$data.containsKey('storeyNumber')) {
      return false;
    }
    if (l$storeyNumber != lOther$storeyNumber) {
      return false;
    }
    final l$streetId = streetId;
    final lOther$streetId = other.streetId;
    if (_$data.containsKey('streetId') !=
        other._$data.containsKey('streetId')) {
      return false;
    }
    if (l$streetId != lOther$streetId) {
      return false;
    }
    final l$substreetName = substreetName;
    final lOther$substreetName = other.substreetName;
    if (_$data.containsKey('substreetName') !=
        other._$data.containsKey('substreetName')) {
      return false;
    }
    if (l$substreetName != lOther$substreetName) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$apartmentNumber = apartmentNumber;
    final l$areaId = areaId;
    final l$countryIsoCode = countryIsoCode;
    final l$districtId = districtId;
    final l$familyId = familyId;
    final l$geolocation = geolocation;
    final l$houseNumber = houseNumber;
    final l$id = id;
    final l$specialLandmark = specialLandmark;
    final l$storeId = storeId;
    final l$storeyNumber = storeyNumber;
    final l$streetId = streetId;
    final l$substreetName = substreetName;
    return Object.hashAll([
      _$data.containsKey('apartmentNumber') ? l$apartmentNumber : const {},
      _$data.containsKey('areaId') ? l$areaId : const {},
      _$data.containsKey('countryIsoCode') ? l$countryIsoCode : const {},
      _$data.containsKey('districtId') ? l$districtId : const {},
      _$data.containsKey('familyId') ? l$familyId : const {},
      _$data.containsKey('geolocation') ? l$geolocation : const {},
      _$data.containsKey('houseNumber') ? l$houseNumber : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('specialLandmark') ? l$specialLandmark : const {},
      _$data.containsKey('storeId') ? l$storeId : const {},
      _$data.containsKey('storeyNumber') ? l$storeyNumber : const {},
      _$data.containsKey('streetId') ? l$streetId : const {},
      _$data.containsKey('substreetName') ? l$substreetName : const {},
    ]);
  }
}

abstract class CopyWith_Input_AddressesStreamCursorValueInput<TRes> {
  factory CopyWith_Input_AddressesStreamCursorValueInput(
    Input_AddressesStreamCursorValueInput instance,
    TRes Function(Input_AddressesStreamCursorValueInput) then,
  ) = _CopyWithImpl_Input_AddressesStreamCursorValueInput;

  factory CopyWith_Input_AddressesStreamCursorValueInput.stub(TRes res) =
      _CopyWithStubImpl_Input_AddressesStreamCursorValueInput;

  TRes call({
    int? apartmentNumber,
    UuidValue? areaId,
    String? countryIsoCode,
    UuidValue? districtId,
    UuidValue? familyId,
    Map<String, dynamic>? geolocation,
    int? houseNumber,
    UuidValue? id,
    String? specialLandmark,
    UuidValue? storeId,
    int? storeyNumber,
    UuidValue? streetId,
    String? substreetName,
  });
}

class _CopyWithImpl_Input_AddressesStreamCursorValueInput<TRes>
    implements CopyWith_Input_AddressesStreamCursorValueInput<TRes> {
  _CopyWithImpl_Input_AddressesStreamCursorValueInput(
    this._instance,
    this._then,
  );

  final Input_AddressesStreamCursorValueInput _instance;

  final TRes Function(Input_AddressesStreamCursorValueInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? apartmentNumber = _undefined,
    Object? areaId = _undefined,
    Object? countryIsoCode = _undefined,
    Object? districtId = _undefined,
    Object? familyId = _undefined,
    Object? geolocation = _undefined,
    Object? houseNumber = _undefined,
    Object? id = _undefined,
    Object? specialLandmark = _undefined,
    Object? storeId = _undefined,
    Object? storeyNumber = _undefined,
    Object? streetId = _undefined,
    Object? substreetName = _undefined,
  }) => _then(
    Input_AddressesStreamCursorValueInput._({
      ..._instance._$data,
      if (apartmentNumber != _undefined)
        'apartmentNumber': (apartmentNumber as int?),
      if (areaId != _undefined) 'areaId': (areaId as UuidValue?),
      if (countryIsoCode != _undefined)
        'countryIsoCode': (countryIsoCode as String?),
      if (districtId != _undefined) 'districtId': (districtId as UuidValue?),
      if (familyId != _undefined) 'familyId': (familyId as UuidValue?),
      if (geolocation != _undefined)
        'geolocation': (geolocation as Map<String, dynamic>?),
      if (houseNumber != _undefined) 'houseNumber': (houseNumber as int?),
      if (id != _undefined) 'id': (id as UuidValue?),
      if (specialLandmark != _undefined)
        'specialLandmark': (specialLandmark as String?),
      if (storeId != _undefined) 'storeId': (storeId as UuidValue?),
      if (storeyNumber != _undefined) 'storeyNumber': (storeyNumber as int?),
      if (streetId != _undefined) 'streetId': (streetId as UuidValue?),
      if (substreetName != _undefined)
        'substreetName': (substreetName as String?),
    }),
  );
}

class _CopyWithStubImpl_Input_AddressesStreamCursorValueInput<TRes>
    implements CopyWith_Input_AddressesStreamCursorValueInput<TRes> {
  _CopyWithStubImpl_Input_AddressesStreamCursorValueInput(this._res);

  TRes _res;

  call({
    int? apartmentNumber,
    UuidValue? areaId,
    String? countryIsoCode,
    UuidValue? districtId,
    UuidValue? familyId,
    Map<String, dynamic>? geolocation,
    int? houseNumber,
    UuidValue? id,
    String? specialLandmark,
    UuidValue? storeId,
    int? storeyNumber,
    UuidValue? streetId,
    String? substreetName,
  }) => _res;
}

class Input_AddressesSumOrderBy {
  factory Input_AddressesSumOrderBy({
    Enum_OrderBy? apartmentNumber,
    Enum_OrderBy? houseNumber,
    Enum_OrderBy? storeyNumber,
  }) => Input_AddressesSumOrderBy._({
    if (apartmentNumber != null) r'apartmentNumber': apartmentNumber,
    if (houseNumber != null) r'houseNumber': houseNumber,
    if (storeyNumber != null) r'storeyNumber': storeyNumber,
  });

  Input_AddressesSumOrderBy._(this._$data);

  factory Input_AddressesSumOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('apartmentNumber')) {
      final l$apartmentNumber = data['apartmentNumber'];
      result$data['apartmentNumber'] = l$apartmentNumber == null
          ? null
          : fromJson_Enum_OrderBy((l$apartmentNumber as String));
    }
    if (data.containsKey('houseNumber')) {
      final l$houseNumber = data['houseNumber'];
      result$data['houseNumber'] = l$houseNumber == null
          ? null
          : fromJson_Enum_OrderBy((l$houseNumber as String));
    }
    if (data.containsKey('storeyNumber')) {
      final l$storeyNumber = data['storeyNumber'];
      result$data['storeyNumber'] = l$storeyNumber == null
          ? null
          : fromJson_Enum_OrderBy((l$storeyNumber as String));
    }
    return Input_AddressesSumOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get apartmentNumber =>
      (_$data['apartmentNumber'] as Enum_OrderBy?);

  Enum_OrderBy? get houseNumber => (_$data['houseNumber'] as Enum_OrderBy?);

  Enum_OrderBy? get storeyNumber => (_$data['storeyNumber'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('apartmentNumber')) {
      final l$apartmentNumber = apartmentNumber;
      result$data['apartmentNumber'] = l$apartmentNumber == null
          ? null
          : toJson_Enum_OrderBy(l$apartmentNumber);
    }
    if (_$data.containsKey('houseNumber')) {
      final l$houseNumber = houseNumber;
      result$data['houseNumber'] = l$houseNumber == null
          ? null
          : toJson_Enum_OrderBy(l$houseNumber);
    }
    if (_$data.containsKey('storeyNumber')) {
      final l$storeyNumber = storeyNumber;
      result$data['storeyNumber'] = l$storeyNumber == null
          ? null
          : toJson_Enum_OrderBy(l$storeyNumber);
    }
    return result$data;
  }

  CopyWith_Input_AddressesSumOrderBy<Input_AddressesSumOrderBy> get copyWith =>
      CopyWith_Input_AddressesSumOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AddressesSumOrderBy ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$apartmentNumber = apartmentNumber;
    final lOther$apartmentNumber = other.apartmentNumber;
    if (_$data.containsKey('apartmentNumber') !=
        other._$data.containsKey('apartmentNumber')) {
      return false;
    }
    if (l$apartmentNumber != lOther$apartmentNumber) {
      return false;
    }
    final l$houseNumber = houseNumber;
    final lOther$houseNumber = other.houseNumber;
    if (_$data.containsKey('houseNumber') !=
        other._$data.containsKey('houseNumber')) {
      return false;
    }
    if (l$houseNumber != lOther$houseNumber) {
      return false;
    }
    final l$storeyNumber = storeyNumber;
    final lOther$storeyNumber = other.storeyNumber;
    if (_$data.containsKey('storeyNumber') !=
        other._$data.containsKey('storeyNumber')) {
      return false;
    }
    if (l$storeyNumber != lOther$storeyNumber) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$apartmentNumber = apartmentNumber;
    final l$houseNumber = houseNumber;
    final l$storeyNumber = storeyNumber;
    return Object.hashAll([
      _$data.containsKey('apartmentNumber') ? l$apartmentNumber : const {},
      _$data.containsKey('houseNumber') ? l$houseNumber : const {},
      _$data.containsKey('storeyNumber') ? l$storeyNumber : const {},
    ]);
  }
}

abstract class CopyWith_Input_AddressesSumOrderBy<TRes> {
  factory CopyWith_Input_AddressesSumOrderBy(
    Input_AddressesSumOrderBy instance,
    TRes Function(Input_AddressesSumOrderBy) then,
  ) = _CopyWithImpl_Input_AddressesSumOrderBy;

  factory CopyWith_Input_AddressesSumOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_AddressesSumOrderBy;

  TRes call({
    Enum_OrderBy? apartmentNumber,
    Enum_OrderBy? houseNumber,
    Enum_OrderBy? storeyNumber,
  });
}

class _CopyWithImpl_Input_AddressesSumOrderBy<TRes>
    implements CopyWith_Input_AddressesSumOrderBy<TRes> {
  _CopyWithImpl_Input_AddressesSumOrderBy(this._instance, this._then);

  final Input_AddressesSumOrderBy _instance;

  final TRes Function(Input_AddressesSumOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? apartmentNumber = _undefined,
    Object? houseNumber = _undefined,
    Object? storeyNumber = _undefined,
  }) => _then(
    Input_AddressesSumOrderBy._({
      ..._instance._$data,
      if (apartmentNumber != _undefined)
        'apartmentNumber': (apartmentNumber as Enum_OrderBy?),
      if (houseNumber != _undefined)
        'houseNumber': (houseNumber as Enum_OrderBy?),
      if (storeyNumber != _undefined)
        'storeyNumber': (storeyNumber as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_AddressesSumOrderBy<TRes>
    implements CopyWith_Input_AddressesSumOrderBy<TRes> {
  _CopyWithStubImpl_Input_AddressesSumOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? apartmentNumber,
    Enum_OrderBy? houseNumber,
    Enum_OrderBy? storeyNumber,
  }) => _res;
}

class Input_AddressesUpdates {
  factory Input_AddressesUpdates({
    Input_AddressesIncInput? $_inc,
    Input_AddressesSetInput? $_set,
    required Input_AddressesBoolExp where,
  }) => Input_AddressesUpdates._({
    if ($_inc != null) r'_inc': $_inc,
    if ($_set != null) r'_set': $_set,
    r'where': where,
  });

  Input_AddressesUpdates._(this._$data);

  factory Input_AddressesUpdates.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_inc')) {
      final l$$_inc = data['_inc'];
      result$data['_inc'] = l$$_inc == null
          ? null
          : Input_AddressesIncInput.fromJson((l$$_inc as Map<String, dynamic>));
    }
    if (data.containsKey('_set')) {
      final l$$_set = data['_set'];
      result$data['_set'] = l$$_set == null
          ? null
          : Input_AddressesSetInput.fromJson((l$$_set as Map<String, dynamic>));
    }
    final l$where = data['where'];
    result$data['where'] = Input_AddressesBoolExp.fromJson(
      (l$where as Map<String, dynamic>),
    );
    return Input_AddressesUpdates._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_AddressesIncInput? get $_inc =>
      (_$data['_inc'] as Input_AddressesIncInput?);

  Input_AddressesSetInput? get $_set =>
      (_$data['_set'] as Input_AddressesSetInput?);

  Input_AddressesBoolExp get where =>
      (_$data['where'] as Input_AddressesBoolExp);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('_inc')) {
      final l$$_inc = $_inc;
      result$data['_inc'] = l$$_inc?.toJson();
    }
    if (_$data.containsKey('_set')) {
      final l$$_set = $_set;
      result$data['_set'] = l$$_set?.toJson();
    }
    final l$where = where;
    result$data['where'] = l$where.toJson();
    return result$data;
  }

  CopyWith_Input_AddressesUpdates<Input_AddressesUpdates> get copyWith =>
      CopyWith_Input_AddressesUpdates(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AddressesUpdates || runtimeType != other.runtimeType) {
      return false;
    }
    final l$$_inc = $_inc;
    final lOther$$_inc = other.$_inc;
    if (_$data.containsKey('_inc') != other._$data.containsKey('_inc')) {
      return false;
    }
    if (l$$_inc != lOther$$_inc) {
      return false;
    }
    final l$$_set = $_set;
    final lOther$$_set = other.$_set;
    if (_$data.containsKey('_set') != other._$data.containsKey('_set')) {
      return false;
    }
    if (l$$_set != lOther$$_set) {
      return false;
    }
    final l$where = where;
    final lOther$where = other.where;
    if (l$where != lOther$where) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$_inc = $_inc;
    final l$$_set = $_set;
    final l$where = where;
    return Object.hashAll([
      _$data.containsKey('_inc') ? l$$_inc : const {},
      _$data.containsKey('_set') ? l$$_set : const {},
      l$where,
    ]);
  }
}

abstract class CopyWith_Input_AddressesUpdates<TRes> {
  factory CopyWith_Input_AddressesUpdates(
    Input_AddressesUpdates instance,
    TRes Function(Input_AddressesUpdates) then,
  ) = _CopyWithImpl_Input_AddressesUpdates;

  factory CopyWith_Input_AddressesUpdates.stub(TRes res) =
      _CopyWithStubImpl_Input_AddressesUpdates;

  TRes call({
    Input_AddressesIncInput? $_inc,
    Input_AddressesSetInput? $_set,
    Input_AddressesBoolExp? where,
  });
  CopyWith_Input_AddressesIncInput<TRes> get $_inc;
  CopyWith_Input_AddressesSetInput<TRes> get $_set;
  CopyWith_Input_AddressesBoolExp<TRes> get where;
}

class _CopyWithImpl_Input_AddressesUpdates<TRes>
    implements CopyWith_Input_AddressesUpdates<TRes> {
  _CopyWithImpl_Input_AddressesUpdates(this._instance, this._then);

  final Input_AddressesUpdates _instance;

  final TRes Function(Input_AddressesUpdates) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_inc = _undefined,
    Object? $_set = _undefined,
    Object? where = _undefined,
  }) => _then(
    Input_AddressesUpdates._({
      ..._instance._$data,
      if ($_inc != _undefined) '_inc': ($_inc as Input_AddressesIncInput?),
      if ($_set != _undefined) '_set': ($_set as Input_AddressesSetInput?),
      if (where != _undefined && where != null)
        'where': (where as Input_AddressesBoolExp),
    }),
  );

  CopyWith_Input_AddressesIncInput<TRes> get $_inc {
    final local$$_inc = _instance.$_inc;
    return local$$_inc == null
        ? CopyWith_Input_AddressesIncInput.stub(_then(_instance))
        : CopyWith_Input_AddressesIncInput(local$$_inc, (e) => call($_inc: e));
  }

  CopyWith_Input_AddressesSetInput<TRes> get $_set {
    final local$$_set = _instance.$_set;
    return local$$_set == null
        ? CopyWith_Input_AddressesSetInput.stub(_then(_instance))
        : CopyWith_Input_AddressesSetInput(local$$_set, (e) => call($_set: e));
  }

  CopyWith_Input_AddressesBoolExp<TRes> get where {
    final local$where = _instance.where;
    return CopyWith_Input_AddressesBoolExp(local$where, (e) => call(where: e));
  }
}

class _CopyWithStubImpl_Input_AddressesUpdates<TRes>
    implements CopyWith_Input_AddressesUpdates<TRes> {
  _CopyWithStubImpl_Input_AddressesUpdates(this._res);

  TRes _res;

  call({
    Input_AddressesIncInput? $_inc,
    Input_AddressesSetInput? $_set,
    Input_AddressesBoolExp? where,
  }) => _res;

  CopyWith_Input_AddressesIncInput<TRes> get $_inc =>
      CopyWith_Input_AddressesIncInput.stub(_res);

  CopyWith_Input_AddressesSetInput<TRes> get $_set =>
      CopyWith_Input_AddressesSetInput.stub(_res);

  CopyWith_Input_AddressesBoolExp<TRes> get where =>
      CopyWith_Input_AddressesBoolExp.stub(_res);
}

class Input_AddressesVarPopOrderBy {
  factory Input_AddressesVarPopOrderBy({
    Enum_OrderBy? apartmentNumber,
    Enum_OrderBy? houseNumber,
    Enum_OrderBy? storeyNumber,
  }) => Input_AddressesVarPopOrderBy._({
    if (apartmentNumber != null) r'apartmentNumber': apartmentNumber,
    if (houseNumber != null) r'houseNumber': houseNumber,
    if (storeyNumber != null) r'storeyNumber': storeyNumber,
  });

  Input_AddressesVarPopOrderBy._(this._$data);

  factory Input_AddressesVarPopOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('apartmentNumber')) {
      final l$apartmentNumber = data['apartmentNumber'];
      result$data['apartmentNumber'] = l$apartmentNumber == null
          ? null
          : fromJson_Enum_OrderBy((l$apartmentNumber as String));
    }
    if (data.containsKey('houseNumber')) {
      final l$houseNumber = data['houseNumber'];
      result$data['houseNumber'] = l$houseNumber == null
          ? null
          : fromJson_Enum_OrderBy((l$houseNumber as String));
    }
    if (data.containsKey('storeyNumber')) {
      final l$storeyNumber = data['storeyNumber'];
      result$data['storeyNumber'] = l$storeyNumber == null
          ? null
          : fromJson_Enum_OrderBy((l$storeyNumber as String));
    }
    return Input_AddressesVarPopOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get apartmentNumber =>
      (_$data['apartmentNumber'] as Enum_OrderBy?);

  Enum_OrderBy? get houseNumber => (_$data['houseNumber'] as Enum_OrderBy?);

  Enum_OrderBy? get storeyNumber => (_$data['storeyNumber'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('apartmentNumber')) {
      final l$apartmentNumber = apartmentNumber;
      result$data['apartmentNumber'] = l$apartmentNumber == null
          ? null
          : toJson_Enum_OrderBy(l$apartmentNumber);
    }
    if (_$data.containsKey('houseNumber')) {
      final l$houseNumber = houseNumber;
      result$data['houseNumber'] = l$houseNumber == null
          ? null
          : toJson_Enum_OrderBy(l$houseNumber);
    }
    if (_$data.containsKey('storeyNumber')) {
      final l$storeyNumber = storeyNumber;
      result$data['storeyNumber'] = l$storeyNumber == null
          ? null
          : toJson_Enum_OrderBy(l$storeyNumber);
    }
    return result$data;
  }

  CopyWith_Input_AddressesVarPopOrderBy<Input_AddressesVarPopOrderBy>
  get copyWith => CopyWith_Input_AddressesVarPopOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AddressesVarPopOrderBy ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$apartmentNumber = apartmentNumber;
    final lOther$apartmentNumber = other.apartmentNumber;
    if (_$data.containsKey('apartmentNumber') !=
        other._$data.containsKey('apartmentNumber')) {
      return false;
    }
    if (l$apartmentNumber != lOther$apartmentNumber) {
      return false;
    }
    final l$houseNumber = houseNumber;
    final lOther$houseNumber = other.houseNumber;
    if (_$data.containsKey('houseNumber') !=
        other._$data.containsKey('houseNumber')) {
      return false;
    }
    if (l$houseNumber != lOther$houseNumber) {
      return false;
    }
    final l$storeyNumber = storeyNumber;
    final lOther$storeyNumber = other.storeyNumber;
    if (_$data.containsKey('storeyNumber') !=
        other._$data.containsKey('storeyNumber')) {
      return false;
    }
    if (l$storeyNumber != lOther$storeyNumber) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$apartmentNumber = apartmentNumber;
    final l$houseNumber = houseNumber;
    final l$storeyNumber = storeyNumber;
    return Object.hashAll([
      _$data.containsKey('apartmentNumber') ? l$apartmentNumber : const {},
      _$data.containsKey('houseNumber') ? l$houseNumber : const {},
      _$data.containsKey('storeyNumber') ? l$storeyNumber : const {},
    ]);
  }
}

abstract class CopyWith_Input_AddressesVarPopOrderBy<TRes> {
  factory CopyWith_Input_AddressesVarPopOrderBy(
    Input_AddressesVarPopOrderBy instance,
    TRes Function(Input_AddressesVarPopOrderBy) then,
  ) = _CopyWithImpl_Input_AddressesVarPopOrderBy;

  factory CopyWith_Input_AddressesVarPopOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_AddressesVarPopOrderBy;

  TRes call({
    Enum_OrderBy? apartmentNumber,
    Enum_OrderBy? houseNumber,
    Enum_OrderBy? storeyNumber,
  });
}

class _CopyWithImpl_Input_AddressesVarPopOrderBy<TRes>
    implements CopyWith_Input_AddressesVarPopOrderBy<TRes> {
  _CopyWithImpl_Input_AddressesVarPopOrderBy(this._instance, this._then);

  final Input_AddressesVarPopOrderBy _instance;

  final TRes Function(Input_AddressesVarPopOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? apartmentNumber = _undefined,
    Object? houseNumber = _undefined,
    Object? storeyNumber = _undefined,
  }) => _then(
    Input_AddressesVarPopOrderBy._({
      ..._instance._$data,
      if (apartmentNumber != _undefined)
        'apartmentNumber': (apartmentNumber as Enum_OrderBy?),
      if (houseNumber != _undefined)
        'houseNumber': (houseNumber as Enum_OrderBy?),
      if (storeyNumber != _undefined)
        'storeyNumber': (storeyNumber as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_AddressesVarPopOrderBy<TRes>
    implements CopyWith_Input_AddressesVarPopOrderBy<TRes> {
  _CopyWithStubImpl_Input_AddressesVarPopOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? apartmentNumber,
    Enum_OrderBy? houseNumber,
    Enum_OrderBy? storeyNumber,
  }) => _res;
}

class Input_AddressesVarSampOrderBy {
  factory Input_AddressesVarSampOrderBy({
    Enum_OrderBy? apartmentNumber,
    Enum_OrderBy? houseNumber,
    Enum_OrderBy? storeyNumber,
  }) => Input_AddressesVarSampOrderBy._({
    if (apartmentNumber != null) r'apartmentNumber': apartmentNumber,
    if (houseNumber != null) r'houseNumber': houseNumber,
    if (storeyNumber != null) r'storeyNumber': storeyNumber,
  });

  Input_AddressesVarSampOrderBy._(this._$data);

  factory Input_AddressesVarSampOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('apartmentNumber')) {
      final l$apartmentNumber = data['apartmentNumber'];
      result$data['apartmentNumber'] = l$apartmentNumber == null
          ? null
          : fromJson_Enum_OrderBy((l$apartmentNumber as String));
    }
    if (data.containsKey('houseNumber')) {
      final l$houseNumber = data['houseNumber'];
      result$data['houseNumber'] = l$houseNumber == null
          ? null
          : fromJson_Enum_OrderBy((l$houseNumber as String));
    }
    if (data.containsKey('storeyNumber')) {
      final l$storeyNumber = data['storeyNumber'];
      result$data['storeyNumber'] = l$storeyNumber == null
          ? null
          : fromJson_Enum_OrderBy((l$storeyNumber as String));
    }
    return Input_AddressesVarSampOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get apartmentNumber =>
      (_$data['apartmentNumber'] as Enum_OrderBy?);

  Enum_OrderBy? get houseNumber => (_$data['houseNumber'] as Enum_OrderBy?);

  Enum_OrderBy? get storeyNumber => (_$data['storeyNumber'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('apartmentNumber')) {
      final l$apartmentNumber = apartmentNumber;
      result$data['apartmentNumber'] = l$apartmentNumber == null
          ? null
          : toJson_Enum_OrderBy(l$apartmentNumber);
    }
    if (_$data.containsKey('houseNumber')) {
      final l$houseNumber = houseNumber;
      result$data['houseNumber'] = l$houseNumber == null
          ? null
          : toJson_Enum_OrderBy(l$houseNumber);
    }
    if (_$data.containsKey('storeyNumber')) {
      final l$storeyNumber = storeyNumber;
      result$data['storeyNumber'] = l$storeyNumber == null
          ? null
          : toJson_Enum_OrderBy(l$storeyNumber);
    }
    return result$data;
  }

  CopyWith_Input_AddressesVarSampOrderBy<Input_AddressesVarSampOrderBy>
  get copyWith => CopyWith_Input_AddressesVarSampOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AddressesVarSampOrderBy ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$apartmentNumber = apartmentNumber;
    final lOther$apartmentNumber = other.apartmentNumber;
    if (_$data.containsKey('apartmentNumber') !=
        other._$data.containsKey('apartmentNumber')) {
      return false;
    }
    if (l$apartmentNumber != lOther$apartmentNumber) {
      return false;
    }
    final l$houseNumber = houseNumber;
    final lOther$houseNumber = other.houseNumber;
    if (_$data.containsKey('houseNumber') !=
        other._$data.containsKey('houseNumber')) {
      return false;
    }
    if (l$houseNumber != lOther$houseNumber) {
      return false;
    }
    final l$storeyNumber = storeyNumber;
    final lOther$storeyNumber = other.storeyNumber;
    if (_$data.containsKey('storeyNumber') !=
        other._$data.containsKey('storeyNumber')) {
      return false;
    }
    if (l$storeyNumber != lOther$storeyNumber) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$apartmentNumber = apartmentNumber;
    final l$houseNumber = houseNumber;
    final l$storeyNumber = storeyNumber;
    return Object.hashAll([
      _$data.containsKey('apartmentNumber') ? l$apartmentNumber : const {},
      _$data.containsKey('houseNumber') ? l$houseNumber : const {},
      _$data.containsKey('storeyNumber') ? l$storeyNumber : const {},
    ]);
  }
}

abstract class CopyWith_Input_AddressesVarSampOrderBy<TRes> {
  factory CopyWith_Input_AddressesVarSampOrderBy(
    Input_AddressesVarSampOrderBy instance,
    TRes Function(Input_AddressesVarSampOrderBy) then,
  ) = _CopyWithImpl_Input_AddressesVarSampOrderBy;

  factory CopyWith_Input_AddressesVarSampOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_AddressesVarSampOrderBy;

  TRes call({
    Enum_OrderBy? apartmentNumber,
    Enum_OrderBy? houseNumber,
    Enum_OrderBy? storeyNumber,
  });
}

class _CopyWithImpl_Input_AddressesVarSampOrderBy<TRes>
    implements CopyWith_Input_AddressesVarSampOrderBy<TRes> {
  _CopyWithImpl_Input_AddressesVarSampOrderBy(this._instance, this._then);

  final Input_AddressesVarSampOrderBy _instance;

  final TRes Function(Input_AddressesVarSampOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? apartmentNumber = _undefined,
    Object? houseNumber = _undefined,
    Object? storeyNumber = _undefined,
  }) => _then(
    Input_AddressesVarSampOrderBy._({
      ..._instance._$data,
      if (apartmentNumber != _undefined)
        'apartmentNumber': (apartmentNumber as Enum_OrderBy?),
      if (houseNumber != _undefined)
        'houseNumber': (houseNumber as Enum_OrderBy?),
      if (storeyNumber != _undefined)
        'storeyNumber': (storeyNumber as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_AddressesVarSampOrderBy<TRes>
    implements CopyWith_Input_AddressesVarSampOrderBy<TRes> {
  _CopyWithStubImpl_Input_AddressesVarSampOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? apartmentNumber,
    Enum_OrderBy? houseNumber,
    Enum_OrderBy? storeyNumber,
  }) => _res;
}

class Input_AddressesVarianceOrderBy {
  factory Input_AddressesVarianceOrderBy({
    Enum_OrderBy? apartmentNumber,
    Enum_OrderBy? houseNumber,
    Enum_OrderBy? storeyNumber,
  }) => Input_AddressesVarianceOrderBy._({
    if (apartmentNumber != null) r'apartmentNumber': apartmentNumber,
    if (houseNumber != null) r'houseNumber': houseNumber,
    if (storeyNumber != null) r'storeyNumber': storeyNumber,
  });

  Input_AddressesVarianceOrderBy._(this._$data);

  factory Input_AddressesVarianceOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('apartmentNumber')) {
      final l$apartmentNumber = data['apartmentNumber'];
      result$data['apartmentNumber'] = l$apartmentNumber == null
          ? null
          : fromJson_Enum_OrderBy((l$apartmentNumber as String));
    }
    if (data.containsKey('houseNumber')) {
      final l$houseNumber = data['houseNumber'];
      result$data['houseNumber'] = l$houseNumber == null
          ? null
          : fromJson_Enum_OrderBy((l$houseNumber as String));
    }
    if (data.containsKey('storeyNumber')) {
      final l$storeyNumber = data['storeyNumber'];
      result$data['storeyNumber'] = l$storeyNumber == null
          ? null
          : fromJson_Enum_OrderBy((l$storeyNumber as String));
    }
    return Input_AddressesVarianceOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get apartmentNumber =>
      (_$data['apartmentNumber'] as Enum_OrderBy?);

  Enum_OrderBy? get houseNumber => (_$data['houseNumber'] as Enum_OrderBy?);

  Enum_OrderBy? get storeyNumber => (_$data['storeyNumber'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('apartmentNumber')) {
      final l$apartmentNumber = apartmentNumber;
      result$data['apartmentNumber'] = l$apartmentNumber == null
          ? null
          : toJson_Enum_OrderBy(l$apartmentNumber);
    }
    if (_$data.containsKey('houseNumber')) {
      final l$houseNumber = houseNumber;
      result$data['houseNumber'] = l$houseNumber == null
          ? null
          : toJson_Enum_OrderBy(l$houseNumber);
    }
    if (_$data.containsKey('storeyNumber')) {
      final l$storeyNumber = storeyNumber;
      result$data['storeyNumber'] = l$storeyNumber == null
          ? null
          : toJson_Enum_OrderBy(l$storeyNumber);
    }
    return result$data;
  }

  CopyWith_Input_AddressesVarianceOrderBy<Input_AddressesVarianceOrderBy>
  get copyWith => CopyWith_Input_AddressesVarianceOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AddressesVarianceOrderBy ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$apartmentNumber = apartmentNumber;
    final lOther$apartmentNumber = other.apartmentNumber;
    if (_$data.containsKey('apartmentNumber') !=
        other._$data.containsKey('apartmentNumber')) {
      return false;
    }
    if (l$apartmentNumber != lOther$apartmentNumber) {
      return false;
    }
    final l$houseNumber = houseNumber;
    final lOther$houseNumber = other.houseNumber;
    if (_$data.containsKey('houseNumber') !=
        other._$data.containsKey('houseNumber')) {
      return false;
    }
    if (l$houseNumber != lOther$houseNumber) {
      return false;
    }
    final l$storeyNumber = storeyNumber;
    final lOther$storeyNumber = other.storeyNumber;
    if (_$data.containsKey('storeyNumber') !=
        other._$data.containsKey('storeyNumber')) {
      return false;
    }
    if (l$storeyNumber != lOther$storeyNumber) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$apartmentNumber = apartmentNumber;
    final l$houseNumber = houseNumber;
    final l$storeyNumber = storeyNumber;
    return Object.hashAll([
      _$data.containsKey('apartmentNumber') ? l$apartmentNumber : const {},
      _$data.containsKey('houseNumber') ? l$houseNumber : const {},
      _$data.containsKey('storeyNumber') ? l$storeyNumber : const {},
    ]);
  }
}

abstract class CopyWith_Input_AddressesVarianceOrderBy<TRes> {
  factory CopyWith_Input_AddressesVarianceOrderBy(
    Input_AddressesVarianceOrderBy instance,
    TRes Function(Input_AddressesVarianceOrderBy) then,
  ) = _CopyWithImpl_Input_AddressesVarianceOrderBy;

  factory CopyWith_Input_AddressesVarianceOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_AddressesVarianceOrderBy;

  TRes call({
    Enum_OrderBy? apartmentNumber,
    Enum_OrderBy? houseNumber,
    Enum_OrderBy? storeyNumber,
  });
}

class _CopyWithImpl_Input_AddressesVarianceOrderBy<TRes>
    implements CopyWith_Input_AddressesVarianceOrderBy<TRes> {
  _CopyWithImpl_Input_AddressesVarianceOrderBy(this._instance, this._then);

  final Input_AddressesVarianceOrderBy _instance;

  final TRes Function(Input_AddressesVarianceOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? apartmentNumber = _undefined,
    Object? houseNumber = _undefined,
    Object? storeyNumber = _undefined,
  }) => _then(
    Input_AddressesVarianceOrderBy._({
      ..._instance._$data,
      if (apartmentNumber != _undefined)
        'apartmentNumber': (apartmentNumber as Enum_OrderBy?),
      if (houseNumber != _undefined)
        'houseNumber': (houseNumber as Enum_OrderBy?),
      if (storeyNumber != _undefined)
        'storeyNumber': (storeyNumber as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_AddressesVarianceOrderBy<TRes>
    implements CopyWith_Input_AddressesVarianceOrderBy<TRes> {
  _CopyWithStubImpl_Input_AddressesVarianceOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? apartmentNumber,
    Enum_OrderBy? houseNumber,
    Enum_OrderBy? storeyNumber,
  }) => _res;
}

class Input_AreasBoolExp {
  factory Input_AreasBoolExp({
    List<Input_AreasBoolExp>? $_and,
    Input_AreasBoolExp? $_not,
    List<Input_AreasBoolExp>? $_or,
    Input_AddressesBoolExp? addresses,
    Input_AuthUsersAdminOnBoolExp? adminUsers,
    Input_StringComparisonExp? blurhash,
    Input_GeographyComparisonExp? bounds,
    Input_BigintComparisonExp? color,
    Input_HistoryEditHistoryBoolExp? editHistory,
    Input_HistoryEditHistoryAggregateBoolExp? editHistoryAggregate,
    Input_UuidComparisonExp? id,
    Input_HistoryLatestEditsBoolExp? lastEdit,
    Input_StringComparisonExp? name,
    Input_TimestamptzComparisonExp? photoUpdatedAt,
    Input_AreasStreetsBoolExp? streets,
    Input_BooleanComparisonExp? userCanEdit,
  }) => Input_AreasBoolExp._({
    if ($_and != null) r'_and': $_and,
    if ($_not != null) r'_not': $_not,
    if ($_or != null) r'_or': $_or,
    if (addresses != null) r'addresses': addresses,
    if (adminUsers != null) r'adminUsers': adminUsers,
    if (blurhash != null) r'blurhash': blurhash,
    if (bounds != null) r'bounds': bounds,
    if (color != null) r'color': color,
    if (editHistory != null) r'editHistory': editHistory,
    if (editHistoryAggregate != null)
      r'editHistoryAggregate': editHistoryAggregate,
    if (id != null) r'id': id,
    if (lastEdit != null) r'lastEdit': lastEdit,
    if (name != null) r'name': name,
    if (photoUpdatedAt != null) r'photoUpdatedAt': photoUpdatedAt,
    if (streets != null) r'streets': streets,
    if (userCanEdit != null) r'userCanEdit': userCanEdit,
  });

  Input_AreasBoolExp._(this._$data);

  factory Input_AreasBoolExp.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_and')) {
      final l$$_and = data['_and'];
      result$data['_and'] = (l$$_and as List<dynamic>?)
          ?.map((e) => Input_AreasBoolExp.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('_not')) {
      final l$$_not = data['_not'];
      result$data['_not'] = l$$_not == null
          ? null
          : Input_AreasBoolExp.fromJson((l$$_not as Map<String, dynamic>));
    }
    if (data.containsKey('_or')) {
      final l$$_or = data['_or'];
      result$data['_or'] = (l$$_or as List<dynamic>?)
          ?.map((e) => Input_AreasBoolExp.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('addresses')) {
      final l$addresses = data['addresses'];
      result$data['addresses'] = l$addresses == null
          ? null
          : Input_AddressesBoolExp.fromJson(
              (l$addresses as Map<String, dynamic>),
            );
    }
    if (data.containsKey('adminUsers')) {
      final l$adminUsers = data['adminUsers'];
      result$data['adminUsers'] = l$adminUsers == null
          ? null
          : Input_AuthUsersAdminOnBoolExp.fromJson(
              (l$adminUsers as Map<String, dynamic>),
            );
    }
    if (data.containsKey('blurhash')) {
      final l$blurhash = data['blurhash'];
      result$data['blurhash'] = l$blurhash == null
          ? null
          : Input_StringComparisonExp.fromJson(
              (l$blurhash as Map<String, dynamic>),
            );
    }
    if (data.containsKey('bounds')) {
      final l$bounds = data['bounds'];
      result$data['bounds'] = l$bounds == null
          ? null
          : Input_GeographyComparisonExp.fromJson(
              (l$bounds as Map<String, dynamic>),
            );
    }
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = l$color == null
          ? null
          : Input_BigintComparisonExp.fromJson(
              (l$color as Map<String, dynamic>),
            );
    }
    if (data.containsKey('editHistory')) {
      final l$editHistory = data['editHistory'];
      result$data['editHistory'] = l$editHistory == null
          ? null
          : Input_HistoryEditHistoryBoolExp.fromJson(
              (l$editHistory as Map<String, dynamic>),
            );
    }
    if (data.containsKey('editHistoryAggregate')) {
      final l$editHistoryAggregate = data['editHistoryAggregate'];
      result$data['editHistoryAggregate'] = l$editHistoryAggregate == null
          ? null
          : Input_HistoryEditHistoryAggregateBoolExp.fromJson(
              (l$editHistoryAggregate as Map<String, dynamic>),
            );
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input_UuidComparisonExp.fromJson((l$id as Map<String, dynamic>));
    }
    if (data.containsKey('lastEdit')) {
      final l$lastEdit = data['lastEdit'];
      result$data['lastEdit'] = l$lastEdit == null
          ? null
          : Input_HistoryLatestEditsBoolExp.fromJson(
              (l$lastEdit as Map<String, dynamic>),
            );
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = l$name == null
          ? null
          : Input_StringComparisonExp.fromJson(
              (l$name as Map<String, dynamic>),
            );
    }
    if (data.containsKey('photoUpdatedAt')) {
      final l$photoUpdatedAt = data['photoUpdatedAt'];
      result$data['photoUpdatedAt'] = l$photoUpdatedAt == null
          ? null
          : Input_TimestamptzComparisonExp.fromJson(
              (l$photoUpdatedAt as Map<String, dynamic>),
            );
    }
    if (data.containsKey('streets')) {
      final l$streets = data['streets'];
      result$data['streets'] = l$streets == null
          ? null
          : Input_AreasStreetsBoolExp.fromJson(
              (l$streets as Map<String, dynamic>),
            );
    }
    if (data.containsKey('userCanEdit')) {
      final l$userCanEdit = data['userCanEdit'];
      result$data['userCanEdit'] = l$userCanEdit == null
          ? null
          : Input_BooleanComparisonExp.fromJson(
              (l$userCanEdit as Map<String, dynamic>),
            );
    }
    return Input_AreasBoolExp._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_AreasBoolExp>? get $_and =>
      (_$data['_and'] as List<Input_AreasBoolExp>?);

  Input_AreasBoolExp? get $_not => (_$data['_not'] as Input_AreasBoolExp?);

  List<Input_AreasBoolExp>? get $_or =>
      (_$data['_or'] as List<Input_AreasBoolExp>?);

  Input_AddressesBoolExp? get addresses =>
      (_$data['addresses'] as Input_AddressesBoolExp?);

  Input_AuthUsersAdminOnBoolExp? get adminUsers =>
      (_$data['adminUsers'] as Input_AuthUsersAdminOnBoolExp?);

  Input_StringComparisonExp? get blurhash =>
      (_$data['blurhash'] as Input_StringComparisonExp?);

  Input_GeographyComparisonExp? get bounds =>
      (_$data['bounds'] as Input_GeographyComparisonExp?);

  Input_BigintComparisonExp? get color =>
      (_$data['color'] as Input_BigintComparisonExp?);

  Input_HistoryEditHistoryBoolExp? get editHistory =>
      (_$data['editHistory'] as Input_HistoryEditHistoryBoolExp?);

  Input_HistoryEditHistoryAggregateBoolExp? get editHistoryAggregate =>
      (_$data['editHistoryAggregate']
          as Input_HistoryEditHistoryAggregateBoolExp?);

  Input_UuidComparisonExp? get id => (_$data['id'] as Input_UuidComparisonExp?);

  Input_HistoryLatestEditsBoolExp? get lastEdit =>
      (_$data['lastEdit'] as Input_HistoryLatestEditsBoolExp?);

  Input_StringComparisonExp? get name =>
      (_$data['name'] as Input_StringComparisonExp?);

  Input_TimestamptzComparisonExp? get photoUpdatedAt =>
      (_$data['photoUpdatedAt'] as Input_TimestamptzComparisonExp?);

  Input_AreasStreetsBoolExp? get streets =>
      (_$data['streets'] as Input_AreasStreetsBoolExp?);

  Input_BooleanComparisonExp? get userCanEdit =>
      (_$data['userCanEdit'] as Input_BooleanComparisonExp?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('_and')) {
      final l$$_and = $_and;
      result$data['_and'] = l$$_and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('_not')) {
      final l$$_not = $_not;
      result$data['_not'] = l$$_not?.toJson();
    }
    if (_$data.containsKey('_or')) {
      final l$$_or = $_or;
      result$data['_or'] = l$$_or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('addresses')) {
      final l$addresses = addresses;
      result$data['addresses'] = l$addresses?.toJson();
    }
    if (_$data.containsKey('adminUsers')) {
      final l$adminUsers = adminUsers;
      result$data['adminUsers'] = l$adminUsers?.toJson();
    }
    if (_$data.containsKey('blurhash')) {
      final l$blurhash = blurhash;
      result$data['blurhash'] = l$blurhash?.toJson();
    }
    if (_$data.containsKey('bounds')) {
      final l$bounds = bounds;
      result$data['bounds'] = l$bounds?.toJson();
    }
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color?.toJson();
    }
    if (_$data.containsKey('editHistory')) {
      final l$editHistory = editHistory;
      result$data['editHistory'] = l$editHistory?.toJson();
    }
    if (_$data.containsKey('editHistoryAggregate')) {
      final l$editHistoryAggregate = editHistoryAggregate;
      result$data['editHistoryAggregate'] = l$editHistoryAggregate?.toJson();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    if (_$data.containsKey('lastEdit')) {
      final l$lastEdit = lastEdit;
      result$data['lastEdit'] = l$lastEdit?.toJson();
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name?.toJson();
    }
    if (_$data.containsKey('photoUpdatedAt')) {
      final l$photoUpdatedAt = photoUpdatedAt;
      result$data['photoUpdatedAt'] = l$photoUpdatedAt?.toJson();
    }
    if (_$data.containsKey('streets')) {
      final l$streets = streets;
      result$data['streets'] = l$streets?.toJson();
    }
    if (_$data.containsKey('userCanEdit')) {
      final l$userCanEdit = userCanEdit;
      result$data['userCanEdit'] = l$userCanEdit?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_AreasBoolExp<Input_AreasBoolExp> get copyWith =>
      CopyWith_Input_AreasBoolExp(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AreasBoolExp || runtimeType != other.runtimeType) {
      return false;
    }
    final l$$_and = $_and;
    final lOther$$_and = other.$_and;
    if (_$data.containsKey('_and') != other._$data.containsKey('_and')) {
      return false;
    }
    if (l$$_and != null && lOther$$_and != null) {
      if (l$$_and.length != lOther$$_and.length) {
        return false;
      }
      for (int i = 0; i < l$$_and.length; i++) {
        final l$$_and$entry = l$$_and[i];
        final lOther$$_and$entry = lOther$$_and[i];
        if (l$$_and$entry != lOther$$_and$entry) {
          return false;
        }
      }
    } else if (l$$_and != lOther$$_and) {
      return false;
    }
    final l$$_not = $_not;
    final lOther$$_not = other.$_not;
    if (_$data.containsKey('_not') != other._$data.containsKey('_not')) {
      return false;
    }
    if (l$$_not != lOther$$_not) {
      return false;
    }
    final l$$_or = $_or;
    final lOther$$_or = other.$_or;
    if (_$data.containsKey('_or') != other._$data.containsKey('_or')) {
      return false;
    }
    if (l$$_or != null && lOther$$_or != null) {
      if (l$$_or.length != lOther$$_or.length) {
        return false;
      }
      for (int i = 0; i < l$$_or.length; i++) {
        final l$$_or$entry = l$$_or[i];
        final lOther$$_or$entry = lOther$$_or[i];
        if (l$$_or$entry != lOther$$_or$entry) {
          return false;
        }
      }
    } else if (l$$_or != lOther$$_or) {
      return false;
    }
    final l$addresses = addresses;
    final lOther$addresses = other.addresses;
    if (_$data.containsKey('addresses') !=
        other._$data.containsKey('addresses')) {
      return false;
    }
    if (l$addresses != lOther$addresses) {
      return false;
    }
    final l$adminUsers = adminUsers;
    final lOther$adminUsers = other.adminUsers;
    if (_$data.containsKey('adminUsers') !=
        other._$data.containsKey('adminUsers')) {
      return false;
    }
    if (l$adminUsers != lOther$adminUsers) {
      return false;
    }
    final l$blurhash = blurhash;
    final lOther$blurhash = other.blurhash;
    if (_$data.containsKey('blurhash') !=
        other._$data.containsKey('blurhash')) {
      return false;
    }
    if (l$blurhash != lOther$blurhash) {
      return false;
    }
    final l$bounds = bounds;
    final lOther$bounds = other.bounds;
    if (_$data.containsKey('bounds') != other._$data.containsKey('bounds')) {
      return false;
    }
    if (l$bounds != lOther$bounds) {
      return false;
    }
    final l$color = color;
    final lOther$color = other.color;
    if (_$data.containsKey('color') != other._$data.containsKey('color')) {
      return false;
    }
    if (l$color != lOther$color) {
      return false;
    }
    final l$editHistory = editHistory;
    final lOther$editHistory = other.editHistory;
    if (_$data.containsKey('editHistory') !=
        other._$data.containsKey('editHistory')) {
      return false;
    }
    if (l$editHistory != lOther$editHistory) {
      return false;
    }
    final l$editHistoryAggregate = editHistoryAggregate;
    final lOther$editHistoryAggregate = other.editHistoryAggregate;
    if (_$data.containsKey('editHistoryAggregate') !=
        other._$data.containsKey('editHistoryAggregate')) {
      return false;
    }
    if (l$editHistoryAggregate != lOther$editHistoryAggregate) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$lastEdit = lastEdit;
    final lOther$lastEdit = other.lastEdit;
    if (_$data.containsKey('lastEdit') !=
        other._$data.containsKey('lastEdit')) {
      return false;
    }
    if (l$lastEdit != lOther$lastEdit) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$photoUpdatedAt = photoUpdatedAt;
    final lOther$photoUpdatedAt = other.photoUpdatedAt;
    if (_$data.containsKey('photoUpdatedAt') !=
        other._$data.containsKey('photoUpdatedAt')) {
      return false;
    }
    if (l$photoUpdatedAt != lOther$photoUpdatedAt) {
      return false;
    }
    final l$streets = streets;
    final lOther$streets = other.streets;
    if (_$data.containsKey('streets') != other._$data.containsKey('streets')) {
      return false;
    }
    if (l$streets != lOther$streets) {
      return false;
    }
    final l$userCanEdit = userCanEdit;
    final lOther$userCanEdit = other.userCanEdit;
    if (_$data.containsKey('userCanEdit') !=
        other._$data.containsKey('userCanEdit')) {
      return false;
    }
    if (l$userCanEdit != lOther$userCanEdit) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$_and = $_and;
    final l$$_not = $_not;
    final l$$_or = $_or;
    final l$addresses = addresses;
    final l$adminUsers = adminUsers;
    final l$blurhash = blurhash;
    final l$bounds = bounds;
    final l$color = color;
    final l$editHistory = editHistory;
    final l$editHistoryAggregate = editHistoryAggregate;
    final l$id = id;
    final l$lastEdit = lastEdit;
    final l$name = name;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$streets = streets;
    final l$userCanEdit = userCanEdit;
    return Object.hashAll([
      _$data.containsKey('_and')
          ? l$$_and == null
                ? null
                : Object.hashAll(l$$_and.map((v) => v))
          : const {},
      _$data.containsKey('_not') ? l$$_not : const {},
      _$data.containsKey('_or')
          ? l$$_or == null
                ? null
                : Object.hashAll(l$$_or.map((v) => v))
          : const {},
      _$data.containsKey('addresses') ? l$addresses : const {},
      _$data.containsKey('adminUsers') ? l$adminUsers : const {},
      _$data.containsKey('blurhash') ? l$blurhash : const {},
      _$data.containsKey('bounds') ? l$bounds : const {},
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('editHistory') ? l$editHistory : const {},
      _$data.containsKey('editHistoryAggregate')
          ? l$editHistoryAggregate
          : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('lastEdit') ? l$lastEdit : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('photoUpdatedAt') ? l$photoUpdatedAt : const {},
      _$data.containsKey('streets') ? l$streets : const {},
      _$data.containsKey('userCanEdit') ? l$userCanEdit : const {},
    ]);
  }
}
