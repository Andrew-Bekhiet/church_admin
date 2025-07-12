// Part 17 of the schema
part of "schema.graphql.dart";


abstract class CopyWith_Input_FamiliesOrderBy<TRes> {
  factory CopyWith_Input_FamiliesOrderBy(
    Input_FamiliesOrderBy instance,
    TRes Function(Input_FamiliesOrderBy) then,
  ) = _CopyWithImpl_Input_FamiliesOrderBy;

  factory CopyWith_Input_FamiliesOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_FamiliesOrderBy;

  TRes call({
    Input_AddressesOrderBy? address,
    Enum_OrderBy? addressText,
    Enum_OrderBy? blurhash,
    Input_FamiliesFamiliesAggregateOrderBy? childrenAggregate,
    Enum_OrderBy? color,
    Input_HistoryEditHistoryAggregateOrderBy? editHistoryAggregate,
    Enum_OrderBy? geolocation,
    Enum_OrderBy? id,
    Input_HistoryLatestEditsOrderBy? lastEdit,
    Enum_OrderBy? name,
    Enum_OrderBy? notes,
    Input_FamiliesFamiliesAggregateOrderBy? parentsAggregate,
    Input_PersonsAggregateOrderBy? personsAggregate,
    Enum_OrderBy? photoUpdatedAt,
    Enum_OrderBy? status,
    Input_StoresAggregateOrderBy? storesAggregate,
  });
  CopyWith_Input_AddressesOrderBy<TRes> get address;
  CopyWith_Input_FamiliesFamiliesAggregateOrderBy<TRes> get childrenAggregate;
  CopyWith_Input_HistoryEditHistoryAggregateOrderBy<TRes>
      get editHistoryAggregate;
  CopyWith_Input_HistoryLatestEditsOrderBy<TRes> get lastEdit;
  CopyWith_Input_FamiliesFamiliesAggregateOrderBy<TRes> get parentsAggregate;
  CopyWith_Input_PersonsAggregateOrderBy<TRes> get personsAggregate;
  CopyWith_Input_StoresAggregateOrderBy<TRes> get storesAggregate;
}

class _CopyWithImpl_Input_FamiliesOrderBy<TRes>
    implements CopyWith_Input_FamiliesOrderBy<TRes> {
  _CopyWithImpl_Input_FamiliesOrderBy(
    this._instance,
    this._then,
  );

  final Input_FamiliesOrderBy _instance;

  final TRes Function(Input_FamiliesOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? address = _undefined,
    Object? addressText = _undefined,
    Object? blurhash = _undefined,
    Object? childrenAggregate = _undefined,
    Object? color = _undefined,
    Object? editHistoryAggregate = _undefined,
    Object? geolocation = _undefined,
    Object? id = _undefined,
    Object? lastEdit = _undefined,
    Object? name = _undefined,
    Object? notes = _undefined,
    Object? parentsAggregate = _undefined,
    Object? personsAggregate = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? status = _undefined,
    Object? storesAggregate = _undefined,
  }) =>
      _then(Input_FamiliesOrderBy._({
        ..._instance._$data,
        if (address != _undefined)
          'address': (address as Input_AddressesOrderBy?),
        if (addressText != _undefined)
          'addressText': (addressText as Enum_OrderBy?),
        if (blurhash != _undefined) 'blurhash': (blurhash as Enum_OrderBy?),
        if (childrenAggregate != _undefined)
          'childrenAggregate':
              (childrenAggregate as Input_FamiliesFamiliesAggregateOrderBy?),
        if (color != _undefined) 'color': (color as Enum_OrderBy?),
        if (editHistoryAggregate != _undefined)
          'editHistoryAggregate': (editHistoryAggregate
              as Input_HistoryEditHistoryAggregateOrderBy?),
        if (geolocation != _undefined)
          'geolocation': (geolocation as Enum_OrderBy?),
        if (id != _undefined) 'id': (id as Enum_OrderBy?),
        if (lastEdit != _undefined)
          'lastEdit': (lastEdit as Input_HistoryLatestEditsOrderBy?),
        if (name != _undefined) 'name': (name as Enum_OrderBy?),
        if (notes != _undefined) 'notes': (notes as Enum_OrderBy?),
        if (parentsAggregate != _undefined)
          'parentsAggregate':
              (parentsAggregate as Input_FamiliesFamiliesAggregateOrderBy?),
        if (personsAggregate != _undefined)
          'personsAggregate':
              (personsAggregate as Input_PersonsAggregateOrderBy?),
        if (photoUpdatedAt != _undefined)
          'photoUpdatedAt': (photoUpdatedAt as Enum_OrderBy?),
        if (status != _undefined) 'status': (status as Enum_OrderBy?),
        if (storesAggregate != _undefined)
          'storesAggregate': (storesAggregate as Input_StoresAggregateOrderBy?),
      }));

  CopyWith_Input_AddressesOrderBy<TRes> get address {
    final local$address = _instance.address;
    return local$address == null
        ? CopyWith_Input_AddressesOrderBy.stub(_then(_instance))
        : CopyWith_Input_AddressesOrderBy(
            local$address, (e) => call(address: e));
  }

  CopyWith_Input_FamiliesFamiliesAggregateOrderBy<TRes> get childrenAggregate {
    final local$childrenAggregate = _instance.childrenAggregate;
    return local$childrenAggregate == null
        ? CopyWith_Input_FamiliesFamiliesAggregateOrderBy.stub(_then(_instance))
        : CopyWith_Input_FamiliesFamiliesAggregateOrderBy(
            local$childrenAggregate, (e) => call(childrenAggregate: e));
  }

  CopyWith_Input_HistoryEditHistoryAggregateOrderBy<TRes>
      get editHistoryAggregate {
    final local$editHistoryAggregate = _instance.editHistoryAggregate;
    return local$editHistoryAggregate == null
        ? CopyWith_Input_HistoryEditHistoryAggregateOrderBy.stub(
            _then(_instance))
        : CopyWith_Input_HistoryEditHistoryAggregateOrderBy(
            local$editHistoryAggregate, (e) => call(editHistoryAggregate: e));
  }

  CopyWith_Input_HistoryLatestEditsOrderBy<TRes> get lastEdit {
    final local$lastEdit = _instance.lastEdit;
    return local$lastEdit == null
        ? CopyWith_Input_HistoryLatestEditsOrderBy.stub(_then(_instance))
        : CopyWith_Input_HistoryLatestEditsOrderBy(
            local$lastEdit, (e) => call(lastEdit: e));
  }

  CopyWith_Input_FamiliesFamiliesAggregateOrderBy<TRes> get parentsAggregate {
    final local$parentsAggregate = _instance.parentsAggregate;
    return local$parentsAggregate == null
        ? CopyWith_Input_FamiliesFamiliesAggregateOrderBy.stub(_then(_instance))
        : CopyWith_Input_FamiliesFamiliesAggregateOrderBy(
            local$parentsAggregate, (e) => call(parentsAggregate: e));
  }

  CopyWith_Input_PersonsAggregateOrderBy<TRes> get personsAggregate {
    final local$personsAggregate = _instance.personsAggregate;
    return local$personsAggregate == null
        ? CopyWith_Input_PersonsAggregateOrderBy.stub(_then(_instance))
        : CopyWith_Input_PersonsAggregateOrderBy(
            local$personsAggregate, (e) => call(personsAggregate: e));
  }

  CopyWith_Input_StoresAggregateOrderBy<TRes> get storesAggregate {
    final local$storesAggregate = _instance.storesAggregate;
    return local$storesAggregate == null
        ? CopyWith_Input_StoresAggregateOrderBy.stub(_then(_instance))
        : CopyWith_Input_StoresAggregateOrderBy(
            local$storesAggregate, (e) => call(storesAggregate: e));
  }
}

class _CopyWithStubImpl_Input_FamiliesOrderBy<TRes>
    implements CopyWith_Input_FamiliesOrderBy<TRes> {
  _CopyWithStubImpl_Input_FamiliesOrderBy(this._res);

  TRes _res;

  call({
    Input_AddressesOrderBy? address,
    Enum_OrderBy? addressText,
    Enum_OrderBy? blurhash,
    Input_FamiliesFamiliesAggregateOrderBy? childrenAggregate,
    Enum_OrderBy? color,
    Input_HistoryEditHistoryAggregateOrderBy? editHistoryAggregate,
    Enum_OrderBy? geolocation,
    Enum_OrderBy? id,
    Input_HistoryLatestEditsOrderBy? lastEdit,
    Enum_OrderBy? name,
    Enum_OrderBy? notes,
    Input_FamiliesFamiliesAggregateOrderBy? parentsAggregate,
    Input_PersonsAggregateOrderBy? personsAggregate,
    Enum_OrderBy? photoUpdatedAt,
    Enum_OrderBy? status,
    Input_StoresAggregateOrderBy? storesAggregate,
  }) =>
      _res;

  CopyWith_Input_AddressesOrderBy<TRes> get address =>
      CopyWith_Input_AddressesOrderBy.stub(_res);

  CopyWith_Input_FamiliesFamiliesAggregateOrderBy<TRes> get childrenAggregate =>
      CopyWith_Input_FamiliesFamiliesAggregateOrderBy.stub(_res);

  CopyWith_Input_HistoryEditHistoryAggregateOrderBy<TRes>
      get editHistoryAggregate =>
          CopyWith_Input_HistoryEditHistoryAggregateOrderBy.stub(_res);

  CopyWith_Input_HistoryLatestEditsOrderBy<TRes> get lastEdit =>
      CopyWith_Input_HistoryLatestEditsOrderBy.stub(_res);

  CopyWith_Input_FamiliesFamiliesAggregateOrderBy<TRes> get parentsAggregate =>
      CopyWith_Input_FamiliesFamiliesAggregateOrderBy.stub(_res);

  CopyWith_Input_PersonsAggregateOrderBy<TRes> get personsAggregate =>
      CopyWith_Input_PersonsAggregateOrderBy.stub(_res);

  CopyWith_Input_StoresAggregateOrderBy<TRes> get storesAggregate =>
      CopyWith_Input_StoresAggregateOrderBy.stub(_res);
}

class Input_FamiliesPkColumnsInput {
  factory Input_FamiliesPkColumnsInput({required UuidValue id}) =>
      Input_FamiliesPkColumnsInput._({
        r'id': id,
      });

  Input_FamiliesPkColumnsInput._(this._$data);

  factory Input_FamiliesPkColumnsInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = stringToUuid(l$id);
    return Input_FamiliesPkColumnsInput._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get id => (_$data['id'] as UuidValue);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = uuidToString(l$id);
    return result$data;
  }

  CopyWith_Input_FamiliesPkColumnsInput<Input_FamiliesPkColumnsInput>
      get copyWith => CopyWith_Input_FamiliesPkColumnsInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_FamiliesPkColumnsInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }
}

abstract class CopyWith_Input_FamiliesPkColumnsInput<TRes> {
  factory CopyWith_Input_FamiliesPkColumnsInput(
    Input_FamiliesPkColumnsInput instance,
    TRes Function(Input_FamiliesPkColumnsInput) then,
  ) = _CopyWithImpl_Input_FamiliesPkColumnsInput;

  factory CopyWith_Input_FamiliesPkColumnsInput.stub(TRes res) =
      _CopyWithStubImpl_Input_FamiliesPkColumnsInput;

  TRes call({UuidValue? id});
}

class _CopyWithImpl_Input_FamiliesPkColumnsInput<TRes>
    implements CopyWith_Input_FamiliesPkColumnsInput<TRes> {
  _CopyWithImpl_Input_FamiliesPkColumnsInput(
    this._instance,
    this._then,
  );

  final Input_FamiliesPkColumnsInput _instance;

  final TRes Function(Input_FamiliesPkColumnsInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(Input_FamiliesPkColumnsInput._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as UuidValue),
      }));
}

class _CopyWithStubImpl_Input_FamiliesPkColumnsInput<TRes>
    implements CopyWith_Input_FamiliesPkColumnsInput<TRes> {
  _CopyWithStubImpl_Input_FamiliesPkColumnsInput(this._res);

  TRes _res;

  call({UuidValue? id}) => _res;
}

class Input_FamiliesSetInput {
  factory Input_FamiliesSetInput({
    String? addressText,
    int? color,
    Map<String, dynamic>? geolocation,
    String? name,
    String? notes,
    String? status,
  }) =>
      Input_FamiliesSetInput._({
        if (addressText != null) r'addressText': addressText,
        if (color != null) r'color': color,
        if (geolocation != null) r'geolocation': geolocation,
        if (name != null) r'name': name,
        if (notes != null) r'notes': notes,
        if (status != null) r'status': status,
      });

  Input_FamiliesSetInput._(this._$data);

  factory Input_FamiliesSetInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('addressText')) {
      final l$addressText = data['addressText'];
      result$data['addressText'] = (l$addressText as String?);
    }
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = (l$color as int?);
    }
    if (data.containsKey('geolocation')) {
      final l$geolocation = data['geolocation'];
      result$data['geolocation'] = (l$geolocation as Map<String, dynamic>?);
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('notes')) {
      final l$notes = data['notes'];
      result$data['notes'] = (l$notes as String?);
    }
    if (data.containsKey('status')) {
      final l$status = data['status'];
      result$data['status'] = (l$status as String?);
    }
    return Input_FamiliesSetInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get addressText => (_$data['addressText'] as String?);

  int? get color => (_$data['color'] as int?);

  Map<String, dynamic>? get geolocation =>
      (_$data['geolocation'] as Map<String, dynamic>?);

  String? get name => (_$data['name'] as String?);

  String? get notes => (_$data['notes'] as String?);

  String? get status => (_$data['status'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('addressText')) {
      final l$addressText = addressText;
      result$data['addressText'] = l$addressText;
    }
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color;
    }
    if (_$data.containsKey('geolocation')) {
      final l$geolocation = geolocation;
      result$data['geolocation'] = l$geolocation;
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    if (_$data.containsKey('notes')) {
      final l$notes = notes;
      result$data['notes'] = l$notes;
    }
    if (_$data.containsKey('status')) {
      final l$status = status;
      result$data['status'] = l$status;
    }
    return result$data;
  }

  CopyWith_Input_FamiliesSetInput<Input_FamiliesSetInput> get copyWith =>
      CopyWith_Input_FamiliesSetInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_FamiliesSetInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$addressText = addressText;
    final lOther$addressText = other.addressText;
    if (_$data.containsKey('addressText') !=
        other._$data.containsKey('addressText')) {
      return false;
    }
    if (l$addressText != lOther$addressText) {
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
    final l$geolocation = geolocation;
    final lOther$geolocation = other.geolocation;
    if (_$data.containsKey('geolocation') !=
        other._$data.containsKey('geolocation')) {
      return false;
    }
    if (l$geolocation != lOther$geolocation) {
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
    final l$notes = notes;
    final lOther$notes = other.notes;
    if (_$data.containsKey('notes') != other._$data.containsKey('notes')) {
      return false;
    }
    if (l$notes != lOther$notes) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (_$data.containsKey('status') != other._$data.containsKey('status')) {
      return false;
    }
    if (l$status != lOther$status) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$addressText = addressText;
    final l$color = color;
    final l$geolocation = geolocation;
    final l$name = name;
    final l$notes = notes;
    final l$status = status;
    return Object.hashAll([
      _$data.containsKey('addressText') ? l$addressText : const {},
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('geolocation') ? l$geolocation : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('notes') ? l$notes : const {},
      _$data.containsKey('status') ? l$status : const {},
    ]);
  }
}

abstract class CopyWith_Input_FamiliesSetInput<TRes> {
  factory CopyWith_Input_FamiliesSetInput(
    Input_FamiliesSetInput instance,
    TRes Function(Input_FamiliesSetInput) then,
  ) = _CopyWithImpl_Input_FamiliesSetInput;

  factory CopyWith_Input_FamiliesSetInput.stub(TRes res) =
      _CopyWithStubImpl_Input_FamiliesSetInput;

  TRes call({
    String? addressText,
    int? color,
    Map<String, dynamic>? geolocation,
    String? name,
    String? notes,
    String? status,
  });
}

class _CopyWithImpl_Input_FamiliesSetInput<TRes>
    implements CopyWith_Input_FamiliesSetInput<TRes> {
  _CopyWithImpl_Input_FamiliesSetInput(
    this._instance,
    this._then,
  );

  final Input_FamiliesSetInput _instance;

  final TRes Function(Input_FamiliesSetInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? addressText = _undefined,
    Object? color = _undefined,
    Object? geolocation = _undefined,
    Object? name = _undefined,
    Object? notes = _undefined,
    Object? status = _undefined,
  }) =>
      _then(Input_FamiliesSetInput._({
        ..._instance._$data,
        if (addressText != _undefined) 'addressText': (addressText as String?),
        if (color != _undefined) 'color': (color as int?),
        if (geolocation != _undefined)
          'geolocation': (geolocation as Map<String, dynamic>?),
        if (name != _undefined) 'name': (name as String?),
        if (notes != _undefined) 'notes': (notes as String?),
        if (status != _undefined) 'status': (status as String?),
      }));
}

class _CopyWithStubImpl_Input_FamiliesSetInput<TRes>
    implements CopyWith_Input_FamiliesSetInput<TRes> {
  _CopyWithStubImpl_Input_FamiliesSetInput(this._res);

  TRes _res;

  call({
    String? addressText,
    int? color,
    Map<String, dynamic>? geolocation,
    String? name,
    String? notes,
    String? status,
  }) =>
      _res;
}

class Input_FamiliesStreamCursorInput {
  factory Input_FamiliesStreamCursorInput({
    required Input_FamiliesStreamCursorValueInput initialValue,
    Enum_CursorOrdering? ordering,
  }) =>
      Input_FamiliesStreamCursorInput._({
        r'initialValue': initialValue,
        if (ordering != null) r'ordering': ordering,
      });

  Input_FamiliesStreamCursorInput._(this._$data);

  factory Input_FamiliesStreamCursorInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$initialValue = data['initialValue'];
    result$data['initialValue'] = Input_FamiliesStreamCursorValueInput.fromJson(
        (l$initialValue as Map<String, dynamic>));
    if (data.containsKey('ordering')) {
      final l$ordering = data['ordering'];
      result$data['ordering'] = l$ordering == null
          ? null
          : fromJson_Enum_CursorOrdering((l$ordering as String));
    }
    return Input_FamiliesStreamCursorInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_FamiliesStreamCursorValueInput get initialValue =>
      (_$data['initialValue'] as Input_FamiliesStreamCursorValueInput);

  Enum_CursorOrdering? get ordering =>
      (_$data['ordering'] as Enum_CursorOrdering?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$initialValue = initialValue;
    result$data['initialValue'] = l$initialValue.toJson();
    if (_$data.containsKey('ordering')) {
      final l$ordering = ordering;
      result$data['ordering'] =
          l$ordering == null ? null : toJson_Enum_CursorOrdering(l$ordering);
    }
    return result$data;
  }

  CopyWith_Input_FamiliesStreamCursorInput<Input_FamiliesStreamCursorInput>
      get copyWith => CopyWith_Input_FamiliesStreamCursorInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_FamiliesStreamCursorInput ||
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

abstract class CopyWith_Input_FamiliesStreamCursorInput<TRes> {
  factory CopyWith_Input_FamiliesStreamCursorInput(
    Input_FamiliesStreamCursorInput instance,
    TRes Function(Input_FamiliesStreamCursorInput) then,
  ) = _CopyWithImpl_Input_FamiliesStreamCursorInput;

  factory CopyWith_Input_FamiliesStreamCursorInput.stub(TRes res) =
      _CopyWithStubImpl_Input_FamiliesStreamCursorInput;

  TRes call({
    Input_FamiliesStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  });
  CopyWith_Input_FamiliesStreamCursorValueInput<TRes> get initialValue;
}

class _CopyWithImpl_Input_FamiliesStreamCursorInput<TRes>
    implements CopyWith_Input_FamiliesStreamCursorInput<TRes> {
  _CopyWithImpl_Input_FamiliesStreamCursorInput(
    this._instance,
    this._then,
  );

  final Input_FamiliesStreamCursorInput _instance;

  final TRes Function(Input_FamiliesStreamCursorInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? initialValue = _undefined,
    Object? ordering = _undefined,
  }) =>
      _then(Input_FamiliesStreamCursorInput._({
        ..._instance._$data,
        if (initialValue != _undefined && initialValue != null)
          'initialValue':
              (initialValue as Input_FamiliesStreamCursorValueInput),
        if (ordering != _undefined)
          'ordering': (ordering as Enum_CursorOrdering?),
      }));

  CopyWith_Input_FamiliesStreamCursorValueInput<TRes> get initialValue {
    final local$initialValue = _instance.initialValue;
    return CopyWith_Input_FamiliesStreamCursorValueInput(
        local$initialValue, (e) => call(initialValue: e));
  }
}

class _CopyWithStubImpl_Input_FamiliesStreamCursorInput<TRes>
    implements CopyWith_Input_FamiliesStreamCursorInput<TRes> {
  _CopyWithStubImpl_Input_FamiliesStreamCursorInput(this._res);

  TRes _res;

  call({
    Input_FamiliesStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  }) =>
      _res;

  CopyWith_Input_FamiliesStreamCursorValueInput<TRes> get initialValue =>
      CopyWith_Input_FamiliesStreamCursorValueInput.stub(_res);
}

class Input_FamiliesStreamCursorValueInput {
  factory Input_FamiliesStreamCursorValueInput({
    String? addressText,
    String? blurhash,
    int? color,
    Map<String, dynamic>? geolocation,
    UuidValue? id,
    String? name,
    String? notes,
    DateTime? photoUpdatedAt,
    String? status,
  }) =>
      Input_FamiliesStreamCursorValueInput._({
        if (addressText != null) r'addressText': addressText,
        if (blurhash != null) r'blurhash': blurhash,
        if (color != null) r'color': color,
        if (geolocation != null) r'geolocation': geolocation,
        if (id != null) r'id': id,
        if (name != null) r'name': name,
        if (notes != null) r'notes': notes,
        if (photoUpdatedAt != null) r'photoUpdatedAt': photoUpdatedAt,
        if (status != null) r'status': status,
      });

  Input_FamiliesStreamCursorValueInput._(this._$data);

  factory Input_FamiliesStreamCursorValueInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('addressText')) {
      final l$addressText = data['addressText'];
      result$data['addressText'] = (l$addressText as String?);
    }
    if (data.containsKey('blurhash')) {
      final l$blurhash = data['blurhash'];
      result$data['blurhash'] = (l$blurhash as String?);
    }
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = (l$color as int?);
    }
    if (data.containsKey('geolocation')) {
      final l$geolocation = data['geolocation'];
      result$data['geolocation'] = (l$geolocation as Map<String, dynamic>?);
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null ? null : stringToUuid(l$id);
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('notes')) {
      final l$notes = data['notes'];
      result$data['notes'] = (l$notes as String?);
    }
    if (data.containsKey('photoUpdatedAt')) {
      final l$photoUpdatedAt = data['photoUpdatedAt'];
      result$data['photoUpdatedAt'] =
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt);
    }
    if (data.containsKey('status')) {
      final l$status = data['status'];
      result$data['status'] = (l$status as String?);
    }
    return Input_FamiliesStreamCursorValueInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get addressText => (_$data['addressText'] as String?);

  String? get blurhash => (_$data['blurhash'] as String?);

  int? get color => (_$data['color'] as int?);

  Map<String, dynamic>? get geolocation =>
      (_$data['geolocation'] as Map<String, dynamic>?);

  UuidValue? get id => (_$data['id'] as UuidValue?);

  String? get name => (_$data['name'] as String?);

  String? get notes => (_$data['notes'] as String?);

  DateTime? get photoUpdatedAt => (_$data['photoUpdatedAt'] as DateTime?);

  String? get status => (_$data['status'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('addressText')) {
      final l$addressText = addressText;
      result$data['addressText'] = l$addressText;
    }
    if (_$data.containsKey('blurhash')) {
      final l$blurhash = blurhash;
      result$data['blurhash'] = l$blurhash;
    }
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color;
    }
    if (_$data.containsKey('geolocation')) {
      final l$geolocation = geolocation;
      result$data['geolocation'] = l$geolocation;
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : uuidToString(l$id);
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    if (_$data.containsKey('notes')) {
      final l$notes = notes;
      result$data['notes'] = l$notes;
    }
    if (_$data.containsKey('photoUpdatedAt')) {
      final l$photoUpdatedAt = photoUpdatedAt;
      result$data['photoUpdatedAt'] =
          l$photoUpdatedAt == null ? null : tstzToString(l$photoUpdatedAt);
    }
    if (_$data.containsKey('status')) {
      final l$status = status;
      result$data['status'] = l$status;
    }
    return result$data;
  }

  CopyWith_Input_FamiliesStreamCursorValueInput<
          Input_FamiliesStreamCursorValueInput>
      get copyWith => CopyWith_Input_FamiliesStreamCursorValueInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_FamiliesStreamCursorValueInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$addressText = addressText;
    final lOther$addressText = other.addressText;
    if (_$data.containsKey('addressText') !=
        other._$data.containsKey('addressText')) {
      return false;
    }
    if (l$addressText != lOther$addressText) {
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
    final l$color = color;
    final lOther$color = other.color;
    if (_$data.containsKey('color') != other._$data.containsKey('color')) {
      return false;
    }
    if (l$color != lOther$color) {
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
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
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
    final l$notes = notes;
    final lOther$notes = other.notes;
    if (_$data.containsKey('notes') != other._$data.containsKey('notes')) {
      return false;
    }
    if (l$notes != lOther$notes) {
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
    final l$status = status;
    final lOther$status = other.status;
    if (_$data.containsKey('status') != other._$data.containsKey('status')) {
      return false;
    }
    if (l$status != lOther$status) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$addressText = addressText;
    final l$blurhash = blurhash;
    final l$color = color;
    final l$geolocation = geolocation;
    final l$id = id;
    final l$name = name;
    final l$notes = notes;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$status = status;
    return Object.hashAll([
      _$data.containsKey('addressText') ? l$addressText : const {},
      _$data.containsKey('blurhash') ? l$blurhash : const {},
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('geolocation') ? l$geolocation : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('notes') ? l$notes : const {},
      _$data.containsKey('photoUpdatedAt') ? l$photoUpdatedAt : const {},
      _$data.containsKey('status') ? l$status : const {},
    ]);
  }
}

abstract class CopyWith_Input_FamiliesStreamCursorValueInput<TRes> {
  factory CopyWith_Input_FamiliesStreamCursorValueInput(
    Input_FamiliesStreamCursorValueInput instance,
    TRes Function(Input_FamiliesStreamCursorValueInput) then,
  ) = _CopyWithImpl_Input_FamiliesStreamCursorValueInput;

  factory CopyWith_Input_FamiliesStreamCursorValueInput.stub(TRes res) =
      _CopyWithStubImpl_Input_FamiliesStreamCursorValueInput;

  TRes call({
    String? addressText,
    String? blurhash,
    int? color,
    Map<String, dynamic>? geolocation,
    UuidValue? id,
    String? name,
    String? notes,
    DateTime? photoUpdatedAt,
    String? status,
  });
}

class _CopyWithImpl_Input_FamiliesStreamCursorValueInput<TRes>
    implements CopyWith_Input_FamiliesStreamCursorValueInput<TRes> {
  _CopyWithImpl_Input_FamiliesStreamCursorValueInput(
    this._instance,
    this._then,
  );

  final Input_FamiliesStreamCursorValueInput _instance;

  final TRes Function(Input_FamiliesStreamCursorValueInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? addressText = _undefined,
    Object? blurhash = _undefined,
    Object? color = _undefined,
    Object? geolocation = _undefined,
    Object? id = _undefined,
    Object? name = _undefined,
    Object? notes = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? status = _undefined,
  }) =>
      _then(Input_FamiliesStreamCursorValueInput._({
        ..._instance._$data,
        if (addressText != _undefined) 'addressText': (addressText as String?),
        if (blurhash != _undefined) 'blurhash': (blurhash as String?),
        if (color != _undefined) 'color': (color as int?),
        if (geolocation != _undefined)
          'geolocation': (geolocation as Map<String, dynamic>?),
        if (id != _undefined) 'id': (id as UuidValue?),
        if (name != _undefined) 'name': (name as String?),
        if (notes != _undefined) 'notes': (notes as String?),
        if (photoUpdatedAt != _undefined)
          'photoUpdatedAt': (photoUpdatedAt as DateTime?),
        if (status != _undefined) 'status': (status as String?),
      }));
}

class _CopyWithStubImpl_Input_FamiliesStreamCursorValueInput<TRes>
    implements CopyWith_Input_FamiliesStreamCursorValueInput<TRes> {
  _CopyWithStubImpl_Input_FamiliesStreamCursorValueInput(this._res);

  TRes _res;

  call({
    String? addressText,
    String? blurhash,
    int? color,
    Map<String, dynamic>? geolocation,
    UuidValue? id,
    String? name,
    String? notes,
    DateTime? photoUpdatedAt,
    String? status,
  }) =>
      _res;
}

class Input_FamiliesUpdates {
  factory Input_FamiliesUpdates({
    Input_FamiliesIncInput? $_inc,
    Input_FamiliesSetInput? $_set,
    required Input_FamiliesBoolExp where,
  }) =>
      Input_FamiliesUpdates._({
        if ($_inc != null) r'_inc': $_inc,
        if ($_set != null) r'_set': $_set,
        r'where': where,
      });

  Input_FamiliesUpdates._(this._$data);

  factory Input_FamiliesUpdates.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_inc')) {
      final l$$_inc = data['_inc'];
      result$data['_inc'] = l$$_inc == null
          ? null
          : Input_FamiliesIncInput.fromJson((l$$_inc as Map<String, dynamic>));
    }
    if (data.containsKey('_set')) {
      final l$$_set = data['_set'];
      result$data['_set'] = l$$_set == null
          ? null
          : Input_FamiliesSetInput.fromJson((l$$_set as Map<String, dynamic>));
    }
    final l$where = data['where'];
    result$data['where'] =
        Input_FamiliesBoolExp.fromJson((l$where as Map<String, dynamic>));
    return Input_FamiliesUpdates._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_FamiliesIncInput? get $_inc =>
      (_$data['_inc'] as Input_FamiliesIncInput?);

  Input_FamiliesSetInput? get $_set =>
      (_$data['_set'] as Input_FamiliesSetInput?);

  Input_FamiliesBoolExp get where => (_$data['where'] as Input_FamiliesBoolExp);

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

  CopyWith_Input_FamiliesUpdates<Input_FamiliesUpdates> get copyWith =>
      CopyWith_Input_FamiliesUpdates(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_FamiliesUpdates || runtimeType != other.runtimeType) {
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

abstract class CopyWith_Input_FamiliesUpdates<TRes> {
  factory CopyWith_Input_FamiliesUpdates(
    Input_FamiliesUpdates instance,
    TRes Function(Input_FamiliesUpdates) then,
  ) = _CopyWithImpl_Input_FamiliesUpdates;

  factory CopyWith_Input_FamiliesUpdates.stub(TRes res) =
      _CopyWithStubImpl_Input_FamiliesUpdates;

  TRes call({
    Input_FamiliesIncInput? $_inc,
    Input_FamiliesSetInput? $_set,
    Input_FamiliesBoolExp? where,
  });
  CopyWith_Input_FamiliesIncInput<TRes> get $_inc;
  CopyWith_Input_FamiliesSetInput<TRes> get $_set;
  CopyWith_Input_FamiliesBoolExp<TRes> get where;
}

class _CopyWithImpl_Input_FamiliesUpdates<TRes>
    implements CopyWith_Input_FamiliesUpdates<TRes> {
  _CopyWithImpl_Input_FamiliesUpdates(
    this._instance,
    this._then,
  );

  final Input_FamiliesUpdates _instance;

  final TRes Function(Input_FamiliesUpdates) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_inc = _undefined,
    Object? $_set = _undefined,
    Object? where = _undefined,
  }) =>
      _then(Input_FamiliesUpdates._({
        ..._instance._$data,
        if ($_inc != _undefined) '_inc': ($_inc as Input_FamiliesIncInput?),
        if ($_set != _undefined) '_set': ($_set as Input_FamiliesSetInput?),
        if (where != _undefined && where != null)
          'where': (where as Input_FamiliesBoolExp),
      }));

  CopyWith_Input_FamiliesIncInput<TRes> get $_inc {
    final local$$_inc = _instance.$_inc;
    return local$$_inc == null
        ? CopyWith_Input_FamiliesIncInput.stub(_then(_instance))
        : CopyWith_Input_FamiliesIncInput(local$$_inc, (e) => call($_inc: e));
  }

  CopyWith_Input_FamiliesSetInput<TRes> get $_set {
    final local$$_set = _instance.$_set;
    return local$$_set == null
        ? CopyWith_Input_FamiliesSetInput.stub(_then(_instance))
        : CopyWith_Input_FamiliesSetInput(local$$_set, (e) => call($_set: e));
  }

  CopyWith_Input_FamiliesBoolExp<TRes> get where {
    final local$where = _instance.where;
    return CopyWith_Input_FamiliesBoolExp(local$where, (e) => call(where: e));
  }
}

class _CopyWithStubImpl_Input_FamiliesUpdates<TRes>
    implements CopyWith_Input_FamiliesUpdates<TRes> {
  _CopyWithStubImpl_Input_FamiliesUpdates(this._res);

  TRes _res;

  call({
    Input_FamiliesIncInput? $_inc,
    Input_FamiliesSetInput? $_set,
    Input_FamiliesBoolExp? where,
  }) =>
      _res;

  CopyWith_Input_FamiliesIncInput<TRes> get $_inc =>
      CopyWith_Input_FamiliesIncInput.stub(_res);

  CopyWith_Input_FamiliesSetInput<TRes> get $_set =>
      CopyWith_Input_FamiliesSetInput.stub(_res);

  CopyWith_Input_FamiliesBoolExp<TRes> get where =>
      CopyWith_Input_FamiliesBoolExp.stub(_res);
}

class Input_FathersAggregateOrderBy {
  factory Input_FathersAggregateOrderBy({
    Enum_OrderBy? count,
    Input_FathersMaxOrderBy? max,
    Input_FathersMinOrderBy? min,
  }) =>
      Input_FathersAggregateOrderBy._({
        if (count != null) r'count': count,
        if (max != null) r'max': max,
        if (min != null) r'min': min,
      });

  Input_FathersAggregateOrderBy._(this._$data);

  factory Input_FathersAggregateOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('count')) {
      final l$count = data['count'];
      result$data['count'] =
          l$count == null ? null : fromJson_Enum_OrderBy((l$count as String));
    }
    if (data.containsKey('max')) {
      final l$max = data['max'];
      result$data['max'] = l$max == null
          ? null
          : Input_FathersMaxOrderBy.fromJson((l$max as Map<String, dynamic>));
    }
    if (data.containsKey('min')) {
      final l$min = data['min'];
      result$data['min'] = l$min == null
          ? null
          : Input_FathersMinOrderBy.fromJson((l$min as Map<String, dynamic>));
    }
    return Input_FathersAggregateOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get count => (_$data['count'] as Enum_OrderBy?);

  Input_FathersMaxOrderBy? get max =>
      (_$data['max'] as Input_FathersMaxOrderBy?);

  Input_FathersMinOrderBy? get min =>
      (_$data['min'] as Input_FathersMinOrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('count')) {
      final l$count = count;
      result$data['count'] =
          l$count == null ? null : toJson_Enum_OrderBy(l$count);
    }
    if (_$data.containsKey('max')) {
      final l$max = max;
      result$data['max'] = l$max?.toJson();
    }
    if (_$data.containsKey('min')) {
      final l$min = min;
      result$data['min'] = l$min?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_FathersAggregateOrderBy<Input_FathersAggregateOrderBy>
      get copyWith => CopyWith_Input_FathersAggregateOrderBy(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_FathersAggregateOrderBy ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (_$data.containsKey('count') != other._$data.containsKey('count')) {
      return false;
    }
    if (l$count != lOther$count) {
      return false;
    }
    final l$max = max;
    final lOther$max = other.max;
    if (_$data.containsKey('max') != other._$data.containsKey('max')) {
      return false;
    }
    if (l$max != lOther$max) {
      return false;
    }
    final l$min = min;
    final lOther$min = other.min;
    if (_$data.containsKey('min') != other._$data.containsKey('min')) {
      return false;
    }
    if (l$min != lOther$min) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$count = count;
    final l$max = max;
    final l$min = min;
    return Object.hashAll([
      _$data.containsKey('count') ? l$count : const {},
      _$data.containsKey('max') ? l$max : const {},
      _$data.containsKey('min') ? l$min : const {},
    ]);
  }
}

abstract class CopyWith_Input_FathersAggregateOrderBy<TRes> {
  factory CopyWith_Input_FathersAggregateOrderBy(
    Input_FathersAggregateOrderBy instance,
    TRes Function(Input_FathersAggregateOrderBy) then,
  ) = _CopyWithImpl_Input_FathersAggregateOrderBy;

  factory CopyWith_Input_FathersAggregateOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_FathersAggregateOrderBy;

  TRes call({
    Enum_OrderBy? count,
    Input_FathersMaxOrderBy? max,
    Input_FathersMinOrderBy? min,
  });
  CopyWith_Input_FathersMaxOrderBy<TRes> get max;
  CopyWith_Input_FathersMinOrderBy<TRes> get min;
}

class _CopyWithImpl_Input_FathersAggregateOrderBy<TRes>
    implements CopyWith_Input_FathersAggregateOrderBy<TRes> {
  _CopyWithImpl_Input_FathersAggregateOrderBy(
    this._instance,
    this._then,
  );

  final Input_FathersAggregateOrderBy _instance;

  final TRes Function(Input_FathersAggregateOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? max = _undefined,
    Object? min = _undefined,
  }) =>
      _then(Input_FathersAggregateOrderBy._({
        ..._instance._$data,
        if (count != _undefined) 'count': (count as Enum_OrderBy?),
        if (max != _undefined) 'max': (max as Input_FathersMaxOrderBy?),
        if (min != _undefined) 'min': (min as Input_FathersMinOrderBy?),
      }));

  CopyWith_Input_FathersMaxOrderBy<TRes> get max {
    final local$max = _instance.max;
    return local$max == null
        ? CopyWith_Input_FathersMaxOrderBy.stub(_then(_instance))
        : CopyWith_Input_FathersMaxOrderBy(local$max, (e) => call(max: e));
  }

  CopyWith_Input_FathersMinOrderBy<TRes> get min {
    final local$min = _instance.min;
    return local$min == null
        ? CopyWith_Input_FathersMinOrderBy.stub(_then(_instance))
        : CopyWith_Input_FathersMinOrderBy(local$min, (e) => call(min: e));
  }
}

class _CopyWithStubImpl_Input_FathersAggregateOrderBy<TRes>
    implements CopyWith_Input_FathersAggregateOrderBy<TRes> {
  _CopyWithStubImpl_Input_FathersAggregateOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? count,
    Input_FathersMaxOrderBy? max,
    Input_FathersMinOrderBy? min,
  }) =>
      _res;

  CopyWith_Input_FathersMaxOrderBy<TRes> get max =>
      CopyWith_Input_FathersMaxOrderBy.stub(_res);

  CopyWith_Input_FathersMinOrderBy<TRes> get min =>
      CopyWith_Input_FathersMinOrderBy.stub(_res);
}

class Input_FathersArrRelInsertInput {
  factory Input_FathersArrRelInsertInput({
    required List<Input_FathersInsertInput> data,
    Input_FathersOnConflict? onConflict,
  }) =>
      Input_FathersArrRelInsertInput._({
        r'data': data,
        if (onConflict != null) r'onConflict': onConflict,
      });

  Input_FathersArrRelInsertInput._(this._$data);

  factory Input_FathersArrRelInsertInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] = (l$data as List<dynamic>)
        .map((e) =>
            Input_FathersInsertInput.fromJson((e as Map<String, dynamic>)))
        .toList();
    if (data.containsKey('onConflict')) {
      final l$onConflict = data['onConflict'];
      result$data['onConflict'] = l$onConflict == null
          ? null
          : Input_FathersOnConflict.fromJson(
              (l$onConflict as Map<String, dynamic>));
    }
    return Input_FathersArrRelInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_FathersInsertInput> get data =>
      (_$data['data'] as List<Input_FathersInsertInput>);

  Input_FathersOnConflict? get onConflict =>
      (_$data['onConflict'] as Input_FathersOnConflict?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$data = data;
    result$data['data'] = l$data.map((e) => e.toJson()).toList();
    if (_$data.containsKey('onConflict')) {
      final l$onConflict = onConflict;
      result$data['onConflict'] = l$onConflict?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_FathersArrRelInsertInput<Input_FathersArrRelInsertInput>
      get copyWith => CopyWith_Input_FathersArrRelInsertInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_FathersArrRelInsertInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (l$data.length != lOther$data.length) {
      return false;
    }
    for (int i = 0; i < l$data.length; i++) {
      final l$data$entry = l$data[i];
      final lOther$data$entry = lOther$data[i];
      if (l$data$entry != lOther$data$entry) {
        return false;
      }
    }
    final l$onConflict = onConflict;
    final lOther$onConflict = other.onConflict;
    if (_$data.containsKey('onConflict') !=
        other._$data.containsKey('onConflict')) {
      return false;
    }
    if (l$onConflict != lOther$onConflict) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$data = data;
    final l$onConflict = onConflict;
    return Object.hashAll([
      Object.hashAll(l$data.map((v) => v)),
      _$data.containsKey('onConflict') ? l$onConflict : const {},
    ]);
  }
}

abstract class CopyWith_Input_FathersArrRelInsertInput<TRes> {
  factory CopyWith_Input_FathersArrRelInsertInput(
    Input_FathersArrRelInsertInput instance,
    TRes Function(Input_FathersArrRelInsertInput) then,
  ) = _CopyWithImpl_Input_FathersArrRelInsertInput;

  factory CopyWith_Input_FathersArrRelInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_FathersArrRelInsertInput;

  TRes call({
    List<Input_FathersInsertInput>? data,
    Input_FathersOnConflict? onConflict,
  });
  TRes data(
      Iterable<Input_FathersInsertInput> Function(
              Iterable<
                  CopyWith_Input_FathersInsertInput<Input_FathersInsertInput>>)
          _fn);
  CopyWith_Input_FathersOnConflict<TRes> get onConflict;
}

class _CopyWithImpl_Input_FathersArrRelInsertInput<TRes>
    implements CopyWith_Input_FathersArrRelInsertInput<TRes> {
  _CopyWithImpl_Input_FathersArrRelInsertInput(
    this._instance,
    this._then,
  );

  final Input_FathersArrRelInsertInput _instance;

  final TRes Function(Input_FathersArrRelInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? data = _undefined,
    Object? onConflict = _undefined,
  }) =>
      _then(Input_FathersArrRelInsertInput._({
        ..._instance._$data,
        if (data != _undefined && data != null)
          'data': (data as List<Input_FathersInsertInput>),
        if (onConflict != _undefined)
          'onConflict': (onConflict as Input_FathersOnConflict?),
      }));

  TRes data(
          Iterable<Input_FathersInsertInput> Function(
                  Iterable<
                      CopyWith_Input_FathersInsertInput<
                          Input_FathersInsertInput>>)
              _fn) =>
      call(
          data: _fn(_instance.data.map((e) => CopyWith_Input_FathersInsertInput(
                e,
                (i) => i,
              ))).toList());

  CopyWith_Input_FathersOnConflict<TRes> get onConflict {
    final local$onConflict = _instance.onConflict;
    return local$onConflict == null
        ? CopyWith_Input_FathersOnConflict.stub(_then(_instance))
        : CopyWith_Input_FathersOnConflict(
            local$onConflict, (e) => call(onConflict: e));
  }
}

class _CopyWithStubImpl_Input_FathersArrRelInsertInput<TRes>
    implements CopyWith_Input_FathersArrRelInsertInput<TRes> {
  _CopyWithStubImpl_Input_FathersArrRelInsertInput(this._res);

  TRes _res;

  call({
    List<Input_FathersInsertInput>? data,
    Input_FathersOnConflict? onConflict,
  }) =>
      _res;

  data(_fn) => _res;

  CopyWith_Input_FathersOnConflict<TRes> get onConflict =>
      CopyWith_Input_FathersOnConflict.stub(_res);
}

class Input_FathersBoolExp {
  factory Input_FathersBoolExp({
    List<Input_FathersBoolExp>? $_and,
    Input_FathersBoolExp? $_not,
    List<Input_FathersBoolExp>? $_or,
    Input_ChurchesBoolExp? church,
    Input_UuidComparisonExp? churchId,
    Input_UuidComparisonExp? id,
    Input_StringComparisonExp? name,
    Input_PersonsBoolExp? persons,
    Input_PersonsAggregateBoolExp? personsAggregate,
  }) =>
      Input_FathersBoolExp._({
        if ($_and != null) r'_and': $_and,
        if ($_not != null) r'_not': $_not,
        if ($_or != null) r'_or': $_or,
        if (church != null) r'church': church,
        if (churchId != null) r'churchId': churchId,
        if (id != null) r'id': id,
        if (name != null) r'name': name,
        if (persons != null) r'persons': persons,
        if (personsAggregate != null) r'personsAggregate': personsAggregate,
      });

  Input_FathersBoolExp._(this._$data);

  factory Input_FathersBoolExp.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_and')) {
      final l$$_and = data['_and'];
      result$data['_and'] = (l$$_and as List<dynamic>?)
          ?.map(
              (e) => Input_FathersBoolExp.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('_not')) {
      final l$$_not = data['_not'];
      result$data['_not'] = l$$_not == null
          ? null
          : Input_FathersBoolExp.fromJson((l$$_not as Map<String, dynamic>));
    }
    if (data.containsKey('_or')) {
      final l$$_or = data['_or'];
      result$data['_or'] = (l$$_or as List<dynamic>?)
          ?.map(
              (e) => Input_FathersBoolExp.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('church')) {
      final l$church = data['church'];
      result$data['church'] = l$church == null
          ? null
          : Input_ChurchesBoolExp.fromJson((l$church as Map<String, dynamic>));
    }
    if (data.containsKey('churchId')) {
      final l$churchId = data['churchId'];
      result$data['churchId'] = l$churchId == null
          ? null
          : Input_UuidComparisonExp.fromJson(
              (l$churchId as Map<String, dynamic>));
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input_UuidComparisonExp.fromJson((l$id as Map<String, dynamic>));
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = l$name == null
          ? null
          : Input_StringComparisonExp.fromJson(
              (l$name as Map<String, dynamic>));
    }
    if (data.containsKey('persons')) {
      final l$persons = data['persons'];
      result$data['persons'] = l$persons == null
          ? null
          : Input_PersonsBoolExp.fromJson((l$persons as Map<String, dynamic>));
    }
    if (data.containsKey('personsAggregate')) {
      final l$personsAggregate = data['personsAggregate'];
      result$data['personsAggregate'] = l$personsAggregate == null
          ? null
          : Input_PersonsAggregateBoolExp.fromJson(
              (l$personsAggregate as Map<String, dynamic>));
    }
    return Input_FathersBoolExp._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_FathersBoolExp>? get $_and =>
      (_$data['_and'] as List<Input_FathersBoolExp>?);

  Input_FathersBoolExp? get $_not => (_$data['_not'] as Input_FathersBoolExp?);

  List<Input_FathersBoolExp>? get $_or =>
      (_$data['_or'] as List<Input_FathersBoolExp>?);

  Input_ChurchesBoolExp? get church =>
      (_$data['church'] as Input_ChurchesBoolExp?);

  Input_UuidComparisonExp? get churchId =>
      (_$data['churchId'] as Input_UuidComparisonExp?);

  Input_UuidComparisonExp? get id => (_$data['id'] as Input_UuidComparisonExp?);

  Input_StringComparisonExp? get name =>
      (_$data['name'] as Input_StringComparisonExp?);

  Input_PersonsBoolExp? get persons =>
      (_$data['persons'] as Input_PersonsBoolExp?);

  Input_PersonsAggregateBoolExp? get personsAggregate =>
      (_$data['personsAggregate'] as Input_PersonsAggregateBoolExp?);

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
    if (_$data.containsKey('church')) {
      final l$church = church;
      result$data['church'] = l$church?.toJson();
    }
    if (_$data.containsKey('churchId')) {
      final l$churchId = churchId;
      result$data['churchId'] = l$churchId?.toJson();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name?.toJson();
    }
    if (_$data.containsKey('persons')) {
      final l$persons = persons;
      result$data['persons'] = l$persons?.toJson();
    }
    if (_$data.containsKey('personsAggregate')) {
      final l$personsAggregate = personsAggregate;
      result$data['personsAggregate'] = l$personsAggregate?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_FathersBoolExp<Input_FathersBoolExp> get copyWith =>
      CopyWith_Input_FathersBoolExp(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_FathersBoolExp || runtimeType != other.runtimeType) {
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
    final l$church = church;
    final lOther$church = other.church;
    if (_$data.containsKey('church') != other._$data.containsKey('church')) {
      return false;
    }
    if (l$church != lOther$church) {
      return false;
    }
    final l$churchId = churchId;
    final lOther$churchId = other.churchId;
    if (_$data.containsKey('churchId') !=
        other._$data.containsKey('churchId')) {
      return false;
    }
    if (l$churchId != lOther$churchId) {
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
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$persons = persons;
    final lOther$persons = other.persons;
    if (_$data.containsKey('persons') != other._$data.containsKey('persons')) {
      return false;
    }
    if (l$persons != lOther$persons) {
      return false;
    }
    final l$personsAggregate = personsAggregate;
    final lOther$personsAggregate = other.personsAggregate;
    if (_$data.containsKey('personsAggregate') !=
        other._$data.containsKey('personsAggregate')) {
      return false;
    }
    if (l$personsAggregate != lOther$personsAggregate) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$_and = $_and;
    final l$$_not = $_not;
    final l$$_or = $_or;
    final l$church = church;
    final l$churchId = churchId;
    final l$id = id;
    final l$name = name;
    final l$persons = persons;
    final l$personsAggregate = personsAggregate;
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
      _$data.containsKey('church') ? l$church : const {},
      _$data.containsKey('churchId') ? l$churchId : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('persons') ? l$persons : const {},
      _$data.containsKey('personsAggregate') ? l$personsAggregate : const {},
    ]);
  }
}

abstract class CopyWith_Input_FathersBoolExp<TRes> {
  factory CopyWith_Input_FathersBoolExp(
    Input_FathersBoolExp instance,
    TRes Function(Input_FathersBoolExp) then,
  ) = _CopyWithImpl_Input_FathersBoolExp;

  factory CopyWith_Input_FathersBoolExp.stub(TRes res) =
      _CopyWithStubImpl_Input_FathersBoolExp;

  TRes call({
    List<Input_FathersBoolExp>? $_and,
    Input_FathersBoolExp? $_not,
    List<Input_FathersBoolExp>? $_or,
    Input_ChurchesBoolExp? church,
    Input_UuidComparisonExp? churchId,
    Input_UuidComparisonExp? id,
    Input_StringComparisonExp? name,
    Input_PersonsBoolExp? persons,
    Input_PersonsAggregateBoolExp? personsAggregate,
  });
  TRes $_and(
      Iterable<Input_FathersBoolExp>? Function(
              Iterable<CopyWith_Input_FathersBoolExp<Input_FathersBoolExp>>?)
          _fn);
  CopyWith_Input_FathersBoolExp<TRes> get $_not;
  TRes $_or(
      Iterable<Input_FathersBoolExp>? Function(
              Iterable<CopyWith_Input_FathersBoolExp<Input_FathersBoolExp>>?)
          _fn);
  CopyWith_Input_ChurchesBoolExp<TRes> get church;
  CopyWith_Input_UuidComparisonExp<TRes> get churchId;
  CopyWith_Input_UuidComparisonExp<TRes> get id;
  CopyWith_Input_StringComparisonExp<TRes> get name;
  CopyWith_Input_PersonsBoolExp<TRes> get persons;
  CopyWith_Input_PersonsAggregateBoolExp<TRes> get personsAggregate;
}

class _CopyWithImpl_Input_FathersBoolExp<TRes>
    implements CopyWith_Input_FathersBoolExp<TRes> {
  _CopyWithImpl_Input_FathersBoolExp(
    this._instance,
    this._then,
  );

  final Input_FathersBoolExp _instance;

  final TRes Function(Input_FathersBoolExp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_and = _undefined,
    Object? $_not = _undefined,
    Object? $_or = _undefined,
    Object? church = _undefined,
    Object? churchId = _undefined,
    Object? id = _undefined,
    Object? name = _undefined,
    Object? persons = _undefined,
    Object? personsAggregate = _undefined,
  }) =>
      _then(Input_FathersBoolExp._({
        ..._instance._$data,
        if ($_and != _undefined) '_and': ($_and as List<Input_FathersBoolExp>?),
        if ($_not != _undefined) '_not': ($_not as Input_FathersBoolExp?),
        if ($_or != _undefined) '_or': ($_or as List<Input_FathersBoolExp>?),
        if (church != _undefined) 'church': (church as Input_ChurchesBoolExp?),
        if (churchId != _undefined)
          'churchId': (churchId as Input_UuidComparisonExp?),
        if (id != _undefined) 'id': (id as Input_UuidComparisonExp?),
        if (name != _undefined) 'name': (name as Input_StringComparisonExp?),
        if (persons != _undefined)
          'persons': (persons as Input_PersonsBoolExp?),
        if (personsAggregate != _undefined)
          'personsAggregate':
              (personsAggregate as Input_PersonsAggregateBoolExp?),
      }));

  TRes $_and(
          Iterable<Input_FathersBoolExp>? Function(
                  Iterable<
                      CopyWith_Input_FathersBoolExp<Input_FathersBoolExp>>?)
              _fn) =>
      call(
          $_and: _fn(_instance.$_and?.map((e) => CopyWith_Input_FathersBoolExp(
                e,
                (i) => i,
              )))?.toList());

  CopyWith_Input_FathersBoolExp<TRes> get $_not {
    final local$$_not = _instance.$_not;
    return local$$_not == null
        ? CopyWith_Input_FathersBoolExp.stub(_then(_instance))
        : CopyWith_Input_FathersBoolExp(local$$_not, (e) => call($_not: e));
  }

  TRes $_or(
          Iterable<Input_FathersBoolExp>? Function(
                  Iterable<
                      CopyWith_Input_FathersBoolExp<Input_FathersBoolExp>>?)
              _fn) =>
      call(
          $_or: _fn(_instance.$_or?.map((e) => CopyWith_Input_FathersBoolExp(
                e,
                (i) => i,
              )))?.toList());

  CopyWith_Input_ChurchesBoolExp<TRes> get church {
    final local$church = _instance.church;
    return local$church == null
        ? CopyWith_Input_ChurchesBoolExp.stub(_then(_instance))
        : CopyWith_Input_ChurchesBoolExp(local$church, (e) => call(church: e));
  }

  CopyWith_Input_UuidComparisonExp<TRes> get churchId {
    final local$churchId = _instance.churchId;
    return local$churchId == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(
            local$churchId, (e) => call(churchId: e));
  }

  CopyWith_Input_UuidComparisonExp<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(local$id, (e) => call(id: e));
  }

  CopyWith_Input_StringComparisonExp<TRes> get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith_Input_StringComparisonExp.stub(_then(_instance))
        : CopyWith_Input_StringComparisonExp(local$name, (e) => call(name: e));
  }

  CopyWith_Input_PersonsBoolExp<TRes> get persons {
    final local$persons = _instance.persons;
    return local$persons == null
        ? CopyWith_Input_PersonsBoolExp.stub(_then(_instance))
        : CopyWith_Input_PersonsBoolExp(local$persons, (e) => call(persons: e));
  }

  CopyWith_Input_PersonsAggregateBoolExp<TRes> get personsAggregate {
    final local$personsAggregate = _instance.personsAggregate;
    return local$personsAggregate == null
        ? CopyWith_Input_PersonsAggregateBoolExp.stub(_then(_instance))
        : CopyWith_Input_PersonsAggregateBoolExp(
            local$personsAggregate, (e) => call(personsAggregate: e));
  }
}

class _CopyWithStubImpl_Input_FathersBoolExp<TRes>
    implements CopyWith_Input_FathersBoolExp<TRes> {
  _CopyWithStubImpl_Input_FathersBoolExp(this._res);

  TRes _res;

  call({
    List<Input_FathersBoolExp>? $_and,
    Input_FathersBoolExp? $_not,
    List<Input_FathersBoolExp>? $_or,
    Input_ChurchesBoolExp? church,
    Input_UuidComparisonExp? churchId,
    Input_UuidComparisonExp? id,
    Input_StringComparisonExp? name,
    Input_PersonsBoolExp? persons,
    Input_PersonsAggregateBoolExp? personsAggregate,
  }) =>
      _res;

  $_and(_fn) => _res;

  CopyWith_Input_FathersBoolExp<TRes> get $_not =>
      CopyWith_Input_FathersBoolExp.stub(_res);

  $_or(_fn) => _res;

  CopyWith_Input_ChurchesBoolExp<TRes> get church =>
      CopyWith_Input_ChurchesBoolExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get churchId =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get id =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_StringComparisonExp<TRes> get name =>
      CopyWith_Input_StringComparisonExp.stub(_res);

  CopyWith_Input_PersonsBoolExp<TRes> get persons =>
      CopyWith_Input_PersonsBoolExp.stub(_res);

  CopyWith_Input_PersonsAggregateBoolExp<TRes> get personsAggregate =>
      CopyWith_Input_PersonsAggregateBoolExp.stub(_res);
}

class Input_FathersInsertInput {
  factory Input_FathersInsertInput({
    Input_ChurchesObjRelInsertInput? church,
    UuidValue? churchId,
    String? name,
    Input_PersonsArrRelInsertInput? persons,
  }) =>
      Input_FathersInsertInput._({
        if (church != null) r'church': church,
        if (churchId != null) r'churchId': churchId,
        if (name != null) r'name': name,
        if (persons != null) r'persons': persons,
      });

  Input_FathersInsertInput._(this._$data);

  factory Input_FathersInsertInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('church')) {
      final l$church = data['church'];
      result$data['church'] = l$church == null
          ? null
          : Input_ChurchesObjRelInsertInput.fromJson(
              (l$church as Map<String, dynamic>));
    }
    if (data.containsKey('churchId')) {
      final l$churchId = data['churchId'];
      result$data['churchId'] =
          l$churchId == null ? null : stringToUuid(l$churchId);
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('persons')) {
      final l$persons = data['persons'];
      result$data['persons'] = l$persons == null
          ? null
          : Input_PersonsArrRelInsertInput.fromJson(
              (l$persons as Map<String, dynamic>));
    }
    return Input_FathersInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_ChurchesObjRelInsertInput? get church =>
      (_$data['church'] as Input_ChurchesObjRelInsertInput?);

  UuidValue? get churchId => (_$data['churchId'] as UuidValue?);

  String? get name => (_$data['name'] as String?);

  Input_PersonsArrRelInsertInput? get persons =>
      (_$data['persons'] as Input_PersonsArrRelInsertInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('church')) {
      final l$church = church;
      result$data['church'] = l$church?.toJson();
    }
    if (_$data.containsKey('churchId')) {
      final l$churchId = churchId;
      result$data['churchId'] =
          l$churchId == null ? null : uuidToString(l$churchId);
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    if (_$data.containsKey('persons')) {
      final l$persons = persons;
      result$data['persons'] = l$persons?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_FathersInsertInput<Input_FathersInsertInput> get copyWith =>
      CopyWith_Input_FathersInsertInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_FathersInsertInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$church = church;
    final lOther$church = other.church;
    if (_$data.containsKey('church') != other._$data.containsKey('church')) {
      return false;
    }
    if (l$church != lOther$church) {
      return false;
    }
    final l$churchId = churchId;
    final lOther$churchId = other.churchId;
    if (_$data.containsKey('churchId') !=
        other._$data.containsKey('churchId')) {
      return false;
    }
    if (l$churchId != lOther$churchId) {
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
    final l$persons = persons;
    final lOther$persons = other.persons;
    if (_$data.containsKey('persons') != other._$data.containsKey('persons')) {
      return false;
    }
    if (l$persons != lOther$persons) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$church = church;
    final l$churchId = churchId;
    final l$name = name;
    final l$persons = persons;
    return Object.hashAll([
      _$data.containsKey('church') ? l$church : const {},
      _$data.containsKey('churchId') ? l$churchId : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('persons') ? l$persons : const {},
    ]);
  }
}

abstract class CopyWith_Input_FathersInsertInput<TRes> {
  factory CopyWith_Input_FathersInsertInput(
    Input_FathersInsertInput instance,
    TRes Function(Input_FathersInsertInput) then,
  ) = _CopyWithImpl_Input_FathersInsertInput;

  factory CopyWith_Input_FathersInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_FathersInsertInput;

  TRes call({
    Input_ChurchesObjRelInsertInput? church,
    UuidValue? churchId,
    String? name,
    Input_PersonsArrRelInsertInput? persons,
  });
  CopyWith_Input_ChurchesObjRelInsertInput<TRes> get church;
  CopyWith_Input_PersonsArrRelInsertInput<TRes> get persons;
}

class _CopyWithImpl_Input_FathersInsertInput<TRes>
    implements CopyWith_Input_FathersInsertInput<TRes> {
  _CopyWithImpl_Input_FathersInsertInput(
    this._instance,
    this._then,
  );

  final Input_FathersInsertInput _instance;

  final TRes Function(Input_FathersInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? church = _undefined,
    Object? churchId = _undefined,
    Object? name = _undefined,
    Object? persons = _undefined,
  }) =>
      _then(Input_FathersInsertInput._({
        ..._instance._$data,
        if (church != _undefined)
          'church': (church as Input_ChurchesObjRelInsertInput?),
        if (churchId != _undefined) 'churchId': (churchId as UuidValue?),
        if (name != _undefined) 'name': (name as String?),
        if (persons != _undefined)
          'persons': (persons as Input_PersonsArrRelInsertInput?),
      }));

  CopyWith_Input_ChurchesObjRelInsertInput<TRes> get church {
    final local$church = _instance.church;
    return local$church == null
        ? CopyWith_Input_ChurchesObjRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_ChurchesObjRelInsertInput(
            local$church, (e) => call(church: e));
  }

  CopyWith_Input_PersonsArrRelInsertInput<TRes> get persons {
    final local$persons = _instance.persons;
    return local$persons == null
        ? CopyWith_Input_PersonsArrRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_PersonsArrRelInsertInput(
            local$persons, (e) => call(persons: e));
  }
}

class _CopyWithStubImpl_Input_FathersInsertInput<TRes>
    implements CopyWith_Input_FathersInsertInput<TRes> {
  _CopyWithStubImpl_Input_FathersInsertInput(this._res);

  TRes _res;

  call({
    Input_ChurchesObjRelInsertInput? church,
    UuidValue? churchId,
    String? name,
    Input_PersonsArrRelInsertInput? persons,
  }) =>
      _res;

  CopyWith_Input_ChurchesObjRelInsertInput<TRes> get church =>
      CopyWith_Input_ChurchesObjRelInsertInput.stub(_res);

  CopyWith_Input_PersonsArrRelInsertInput<TRes> get persons =>
      CopyWith_Input_PersonsArrRelInsertInput.stub(_res);
}

class Input_FathersMaxOrderBy {
  factory Input_FathersMaxOrderBy({
    Enum_OrderBy? churchId,
    Enum_OrderBy? id,
    Enum_OrderBy? name,
  }) =>
      Input_FathersMaxOrderBy._({
        if (churchId != null) r'churchId': churchId,
        if (id != null) r'id': id,
        if (name != null) r'name': name,
      });

  Input_FathersMaxOrderBy._(this._$data);

  factory Input_FathersMaxOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('churchId')) {
      final l$churchId = data['churchId'];
      result$data['churchId'] = l$churchId == null
          ? null
          : fromJson_Enum_OrderBy((l$churchId as String));
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] =
          l$id == null ? null : fromJson_Enum_OrderBy((l$id as String));
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] =
          l$name == null ? null : fromJson_Enum_OrderBy((l$name as String));
    }
    return Input_FathersMaxOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get churchId => (_$data['churchId'] as Enum_OrderBy?);

  Enum_OrderBy? get id => (_$data['id'] as Enum_OrderBy?);

  Enum_OrderBy? get name => (_$data['name'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('churchId')) {
      final l$churchId = churchId;
      result$data['churchId'] =
          l$churchId == null ? null : toJson_Enum_OrderBy(l$churchId);
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : toJson_Enum_OrderBy(l$id);
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name == null ? null : toJson_Enum_OrderBy(l$name);
    }
    return result$data;
  }

  CopyWith_Input_FathersMaxOrderBy<Input_FathersMaxOrderBy> get copyWith =>
      CopyWith_Input_FathersMaxOrderBy(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_FathersMaxOrderBy || runtimeType != other.runtimeType) {
      return false;
    }
    final l$churchId = churchId;
    final lOther$churchId = other.churchId;
    if (_$data.containsKey('churchId') !=
        other._$data.containsKey('churchId')) {
      return false;
    }
    if (l$churchId != lOther$churchId) {
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
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$churchId = churchId;
    final l$id = id;
    final l$name = name;
    return Object.hashAll([
      _$data.containsKey('churchId') ? l$churchId : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('name') ? l$name : const {},
    ]);
  }
}

abstract class CopyWith_Input_FathersMaxOrderBy<TRes> {
  factory CopyWith_Input_FathersMaxOrderBy(
    Input_FathersMaxOrderBy instance,
    TRes Function(Input_FathersMaxOrderBy) then,
  ) = _CopyWithImpl_Input_FathersMaxOrderBy;

  factory CopyWith_Input_FathersMaxOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_FathersMaxOrderBy;

  TRes call({
    Enum_OrderBy? churchId,
    Enum_OrderBy? id,
    Enum_OrderBy? name,
  });
}

class _CopyWithImpl_Input_FathersMaxOrderBy<TRes>
    implements CopyWith_Input_FathersMaxOrderBy<TRes> {
  _CopyWithImpl_Input_FathersMaxOrderBy(
    this._instance,
    this._then,
  );

  final Input_FathersMaxOrderBy _instance;

  final TRes Function(Input_FathersMaxOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? churchId = _undefined,
    Object? id = _undefined,
    Object? name = _undefined,
  }) =>
      _then(Input_FathersMaxOrderBy._({
        ..._instance._$data,
        if (churchId != _undefined) 'churchId': (churchId as Enum_OrderBy?),
        if (id != _undefined) 'id': (id as Enum_OrderBy?),
        if (name != _undefined) 'name': (name as Enum_OrderBy?),
      }));
}

class _CopyWithStubImpl_Input_FathersMaxOrderBy<TRes>
    implements CopyWith_Input_FathersMaxOrderBy<TRes> {
  _CopyWithStubImpl_Input_FathersMaxOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? churchId,
    Enum_OrderBy? id,
    Enum_OrderBy? name,
  }) =>
      _res;
}

class Input_FathersMinOrderBy {
  factory Input_FathersMinOrderBy({
    Enum_OrderBy? churchId,
    Enum_OrderBy? id,
    Enum_OrderBy? name,
  }) =>
      Input_FathersMinOrderBy._({
        if (churchId != null) r'churchId': churchId,
        if (id != null) r'id': id,
        if (name != null) r'name': name,
      });

  Input_FathersMinOrderBy._(this._$data);

  factory Input_FathersMinOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('churchId')) {
      final l$churchId = data['churchId'];
      result$data['churchId'] = l$churchId == null
          ? null
          : fromJson_Enum_OrderBy((l$churchId as String));
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] =
          l$id == null ? null : fromJson_Enum_OrderBy((l$id as String));
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] =
          l$name == null ? null : fromJson_Enum_OrderBy((l$name as String));
    }
    return Input_FathersMinOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get churchId => (_$data['churchId'] as Enum_OrderBy?);

  Enum_OrderBy? get id => (_$data['id'] as Enum_OrderBy?);

  Enum_OrderBy? get name => (_$data['name'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('churchId')) {
      final l$churchId = churchId;
      result$data['churchId'] =
          l$churchId == null ? null : toJson_Enum_OrderBy(l$churchId);
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : toJson_Enum_OrderBy(l$id);
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name == null ? null : toJson_Enum_OrderBy(l$name);
    }
    return result$data;
  }

  CopyWith_Input_FathersMinOrderBy<Input_FathersMinOrderBy> get copyWith =>
      CopyWith_Input_FathersMinOrderBy(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_FathersMinOrderBy || runtimeType != other.runtimeType) {
      return false;
    }
    final l$churchId = churchId;
    final lOther$churchId = other.churchId;
    if (_$data.containsKey('churchId') !=
        other._$data.containsKey('churchId')) {
      return false;
    }
    if (l$churchId != lOther$churchId) {
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
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$churchId = churchId;
    final l$id = id;
    final l$name = name;
    return Object.hashAll([
      _$data.containsKey('churchId') ? l$churchId : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('name') ? l$name : const {},
    ]);
  }
}
