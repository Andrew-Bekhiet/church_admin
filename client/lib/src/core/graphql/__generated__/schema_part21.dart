// Part 21 of the schema
part of "schema.graphql.dart";

abstract class CopyWith_Input_FamilyRelationFilterInput<TRes> {
  factory CopyWith_Input_FamilyRelationFilterInput(
    Input_FamilyRelationFilterInput instance,
    TRes Function(Input_FamilyRelationFilterInput) then,
  ) = _CopyWithImpl_Input_FamilyRelationFilterInput;

  factory CopyWith_Input_FamilyRelationFilterInput.stub(TRes res) =
      _CopyWithStubImpl_Input_FamilyRelationFilterInput;

  TRes call({
    List<Input_FamilyRelationFilterInput>? and,
    List<Input_FamilyRelationFilterInput>? or,
    List<Input_FamilyRelationFilterInput>? not,
    Input_FamilyRelationFilterParentFamilyId? parentFamilyId,
    Input_FamilyRelationFilterChildFamilyId? childFamilyId,
    Input_FamilyFilterInput? child,
    Input_FamilyFilterInput? parent,
    Input_FamilyRelationFilterChildName? childName,
    Input_FamilyRelationFilterParentName? parentName,
  });
  TRes and(
    Iterable<Input_FamilyRelationFilterInput>? Function(
      Iterable<
        CopyWith_Input_FamilyRelationFilterInput<
          Input_FamilyRelationFilterInput
        >
      >?,
    )
    _fn,
  );
  TRes or(
    Iterable<Input_FamilyRelationFilterInput>? Function(
      Iterable<
        CopyWith_Input_FamilyRelationFilterInput<
          Input_FamilyRelationFilterInput
        >
      >?,
    )
    _fn,
  );
  TRes not(
    Iterable<Input_FamilyRelationFilterInput>? Function(
      Iterable<
        CopyWith_Input_FamilyRelationFilterInput<
          Input_FamilyRelationFilterInput
        >
      >?,
    )
    _fn,
  );
  CopyWith_Input_FamilyRelationFilterParentFamilyId<TRes> get parentFamilyId;
  CopyWith_Input_FamilyRelationFilterChildFamilyId<TRes> get childFamilyId;
  CopyWith_Input_FamilyFilterInput<TRes> get child;
  CopyWith_Input_FamilyFilterInput<TRes> get parent;
  CopyWith_Input_FamilyRelationFilterChildName<TRes> get childName;
  CopyWith_Input_FamilyRelationFilterParentName<TRes> get parentName;
}

class _CopyWithImpl_Input_FamilyRelationFilterInput<TRes>
    implements CopyWith_Input_FamilyRelationFilterInput<TRes> {
  _CopyWithImpl_Input_FamilyRelationFilterInput(this._instance, this._then);

  final Input_FamilyRelationFilterInput _instance;

  final TRes Function(Input_FamilyRelationFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? not = _undefined,
    Object? parentFamilyId = _undefined,
    Object? childFamilyId = _undefined,
    Object? child = _undefined,
    Object? parent = _undefined,
    Object? childName = _undefined,
    Object? parentName = _undefined,
  }) => _then(
    Input_FamilyRelationFilterInput._({
      ..._instance._$data,
      if (and != _undefined)
        'and': (and as List<Input_FamilyRelationFilterInput>?),
      if (or != _undefined)
        'or': (or as List<Input_FamilyRelationFilterInput>?),
      if (not != _undefined)
        'not': (not as List<Input_FamilyRelationFilterInput>?),
      if (parentFamilyId != _undefined)
        'parentFamilyId':
            (parentFamilyId as Input_FamilyRelationFilterParentFamilyId?),
      if (childFamilyId != _undefined)
        'childFamilyId':
            (childFamilyId as Input_FamilyRelationFilterChildFamilyId?),
      if (child != _undefined) 'child': (child as Input_FamilyFilterInput?),
      if (parent != _undefined) 'parent': (parent as Input_FamilyFilterInput?),
      if (childName != _undefined)
        'childName': (childName as Input_FamilyRelationFilterChildName?),
      if (parentName != _undefined)
        'parentName': (parentName as Input_FamilyRelationFilterParentName?),
    }),
  );

  TRes and(
    Iterable<Input_FamilyRelationFilterInput>? Function(
      Iterable<
        CopyWith_Input_FamilyRelationFilterInput<
          Input_FamilyRelationFilterInput
        >
      >?,
    )
    _fn,
  ) => call(
    and: _fn(
      _instance.and?.map(
        (e) => CopyWith_Input_FamilyRelationFilterInput(e, (i) => i),
      ),
    )?.toList(),
  );

  TRes or(
    Iterable<Input_FamilyRelationFilterInput>? Function(
      Iterable<
        CopyWith_Input_FamilyRelationFilterInput<
          Input_FamilyRelationFilterInput
        >
      >?,
    )
    _fn,
  ) => call(
    or: _fn(
      _instance.or?.map(
        (e) => CopyWith_Input_FamilyRelationFilterInput(e, (i) => i),
      ),
    )?.toList(),
  );

  TRes not(
    Iterable<Input_FamilyRelationFilterInput>? Function(
      Iterable<
        CopyWith_Input_FamilyRelationFilterInput<
          Input_FamilyRelationFilterInput
        >
      >?,
    )
    _fn,
  ) => call(
    not: _fn(
      _instance.not?.map(
        (e) => CopyWith_Input_FamilyRelationFilterInput(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith_Input_FamilyRelationFilterParentFamilyId<TRes> get parentFamilyId {
    final local$parentFamilyId = _instance.parentFamilyId;
    return local$parentFamilyId == null
        ? CopyWith_Input_FamilyRelationFilterParentFamilyId.stub(
            _then(_instance),
          )
        : CopyWith_Input_FamilyRelationFilterParentFamilyId(
            local$parentFamilyId,
            (e) => call(parentFamilyId: e),
          );
  }

  CopyWith_Input_FamilyRelationFilterChildFamilyId<TRes> get childFamilyId {
    final local$childFamilyId = _instance.childFamilyId;
    return local$childFamilyId == null
        ? CopyWith_Input_FamilyRelationFilterChildFamilyId.stub(
            _then(_instance),
          )
        : CopyWith_Input_FamilyRelationFilterChildFamilyId(
            local$childFamilyId,
            (e) => call(childFamilyId: e),
          );
  }

  CopyWith_Input_FamilyFilterInput<TRes> get child {
    final local$child = _instance.child;
    return local$child == null
        ? CopyWith_Input_FamilyFilterInput.stub(_then(_instance))
        : CopyWith_Input_FamilyFilterInput(local$child, (e) => call(child: e));
  }

  CopyWith_Input_FamilyFilterInput<TRes> get parent {
    final local$parent = _instance.parent;
    return local$parent == null
        ? CopyWith_Input_FamilyFilterInput.stub(_then(_instance))
        : CopyWith_Input_FamilyFilterInput(
            local$parent,
            (e) => call(parent: e),
          );
  }

  CopyWith_Input_FamilyRelationFilterChildName<TRes> get childName {
    final local$childName = _instance.childName;
    return local$childName == null
        ? CopyWith_Input_FamilyRelationFilterChildName.stub(_then(_instance))
        : CopyWith_Input_FamilyRelationFilterChildName(
            local$childName,
            (e) => call(childName: e),
          );
  }

  CopyWith_Input_FamilyRelationFilterParentName<TRes> get parentName {
    final local$parentName = _instance.parentName;
    return local$parentName == null
        ? CopyWith_Input_FamilyRelationFilterParentName.stub(_then(_instance))
        : CopyWith_Input_FamilyRelationFilterParentName(
            local$parentName,
            (e) => call(parentName: e),
          );
  }
}

class _CopyWithStubImpl_Input_FamilyRelationFilterInput<TRes>
    implements CopyWith_Input_FamilyRelationFilterInput<TRes> {
  _CopyWithStubImpl_Input_FamilyRelationFilterInput(this._res);

  TRes _res;

  call({
    List<Input_FamilyRelationFilterInput>? and,
    List<Input_FamilyRelationFilterInput>? or,
    List<Input_FamilyRelationFilterInput>? not,
    Input_FamilyRelationFilterParentFamilyId? parentFamilyId,
    Input_FamilyRelationFilterChildFamilyId? childFamilyId,
    Input_FamilyFilterInput? child,
    Input_FamilyFilterInput? parent,
    Input_FamilyRelationFilterChildName? childName,
    Input_FamilyRelationFilterParentName? parentName,
  }) => _res;

  and(_fn) => _res;

  or(_fn) => _res;

  not(_fn) => _res;

  CopyWith_Input_FamilyRelationFilterParentFamilyId<TRes> get parentFamilyId =>
      CopyWith_Input_FamilyRelationFilterParentFamilyId.stub(_res);

  CopyWith_Input_FamilyRelationFilterChildFamilyId<TRes> get childFamilyId =>
      CopyWith_Input_FamilyRelationFilterChildFamilyId.stub(_res);

  CopyWith_Input_FamilyFilterInput<TRes> get child =>
      CopyWith_Input_FamilyFilterInput.stub(_res);

  CopyWith_Input_FamilyFilterInput<TRes> get parent =>
      CopyWith_Input_FamilyFilterInput.stub(_res);

  CopyWith_Input_FamilyRelationFilterChildName<TRes> get childName =>
      CopyWith_Input_FamilyRelationFilterChildName.stub(_res);

  CopyWith_Input_FamilyRelationFilterParentName<TRes> get parentName =>
      CopyWith_Input_FamilyRelationFilterParentName.stub(_res);
}

class Input_FamilyRelationSortInput {
  factory Input_FamilyRelationSortInput({
    Enum_SortOrder? order,
    required Enum_FamilyRelationSortField field,
  }) => Input_FamilyRelationSortInput._({
    if (order != null) r'order': order,
    r'field': field,
  });

  Input_FamilyRelationSortInput._(this._$data);

  factory Input_FamilyRelationSortInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('order')) {
      final l$order = data['order'];
      result$data['order'] = l$order == null
          ? null
          : fromJson_Enum_SortOrder((l$order as String));
    }
    final l$field = data['field'];
    result$data['field'] = fromJson_Enum_FamilyRelationSortField(
      (l$field as String),
    );
    return Input_FamilyRelationSortInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_SortOrder? get order => (_$data['order'] as Enum_SortOrder?);

  Enum_FamilyRelationSortField get field =>
      (_$data['field'] as Enum_FamilyRelationSortField);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('order')) {
      final l$order = order;
      result$data['order'] = l$order == null
          ? null
          : toJson_Enum_SortOrder(l$order);
    }
    final l$field = field;
    result$data['field'] = toJson_Enum_FamilyRelationSortField(l$field);
    return result$data;
  }

  CopyWith_Input_FamilyRelationSortInput<Input_FamilyRelationSortInput>
  get copyWith => CopyWith_Input_FamilyRelationSortInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_FamilyRelationSortInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$order = order;
    final lOther$order = other.order;
    if (_$data.containsKey('order') != other._$data.containsKey('order')) {
      return false;
    }
    if (l$order != lOther$order) {
      return false;
    }
    final l$field = field;
    final lOther$field = other.field;
    if (l$field != lOther$field) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$order = order;
    final l$field = field;
    return Object.hashAll([
      _$data.containsKey('order') ? l$order : const {},
      l$field,
    ]);
  }
}

abstract class CopyWith_Input_FamilyRelationSortInput<TRes> {
  factory CopyWith_Input_FamilyRelationSortInput(
    Input_FamilyRelationSortInput instance,
    TRes Function(Input_FamilyRelationSortInput) then,
  ) = _CopyWithImpl_Input_FamilyRelationSortInput;

  factory CopyWith_Input_FamilyRelationSortInput.stub(TRes res) =
      _CopyWithStubImpl_Input_FamilyRelationSortInput;

  TRes call({Enum_SortOrder? order, Enum_FamilyRelationSortField? field});
}

class _CopyWithImpl_Input_FamilyRelationSortInput<TRes>
    implements CopyWith_Input_FamilyRelationSortInput<TRes> {
  _CopyWithImpl_Input_FamilyRelationSortInput(this._instance, this._then);

  final Input_FamilyRelationSortInput _instance;

  final TRes Function(Input_FamilyRelationSortInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? order = _undefined, Object? field = _undefined}) => _then(
    Input_FamilyRelationSortInput._({
      ..._instance._$data,
      if (order != _undefined) 'order': (order as Enum_SortOrder?),
      if (field != _undefined && field != null)
        'field': (field as Enum_FamilyRelationSortField),
    }),
  );
}

class _CopyWithStubImpl_Input_FamilyRelationSortInput<TRes>
    implements CopyWith_Input_FamilyRelationSortInput<TRes> {
  _CopyWithStubImpl_Input_FamilyRelationSortInput(this._res);

  TRes _res;

  call({Enum_SortOrder? order, Enum_FamilyRelationSortField? field}) => _res;
}

class Input_UpdateFamilyInput {
  factory Input_UpdateFamilyInput({
    String? name,
    String? notes,
    int? color,
    String? status,
    String? deceasedSpouseName,
    DateTime? marriageDate,
    String? churchId,
    Input_AddressInput? address,
    List<Input_FamilyContactInput>? contacts,
    List<String>? parents,
    List<String>? children,
    DateTime? lastVisit,
    DateTime? lastFatherVisit,
  }) => Input_UpdateFamilyInput._({
    if (name != null) r'name': name,
    if (notes != null) r'notes': notes,
    if (color != null) r'color': color,
    if (status != null) r'status': status,
    if (deceasedSpouseName != null) r'deceasedSpouseName': deceasedSpouseName,
    if (marriageDate != null) r'marriageDate': marriageDate,
    if (churchId != null) r'churchId': churchId,
    if (address != null) r'address': address,
    if (contacts != null) r'contacts': contacts,
    if (parents != null) r'parents': parents,
    if (children != null) r'children': children,
    if (lastVisit != null) r'lastVisit': lastVisit,
    if (lastFatherVisit != null) r'lastFatherVisit': lastFatherVisit,
  });

  Input_UpdateFamilyInput._(this._$data);

  factory Input_UpdateFamilyInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('notes')) {
      final l$notes = data['notes'];
      result$data['notes'] = (l$notes as String?);
    }
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = (l$color as int?);
    }
    if (data.containsKey('status')) {
      final l$status = data['status'];
      result$data['status'] = (l$status as String?);
    }
    if (data.containsKey('deceasedSpouseName')) {
      final l$deceasedSpouseName = data['deceasedSpouseName'];
      result$data['deceasedSpouseName'] = (l$deceasedSpouseName as String?);
    }
    if (data.containsKey('marriageDate')) {
      final l$marriageDate = data['marriageDate'];
      result$data['marriageDate'] = l$marriageDate == null
          ? null
          : dateFromString(l$marriageDate);
    }
    if (data.containsKey('churchId')) {
      final l$churchId = data['churchId'];
      result$data['churchId'] = (l$churchId as String?);
    }
    if (data.containsKey('address')) {
      final l$address = data['address'];
      result$data['address'] = l$address == null
          ? null
          : Input_AddressInput.fromJson((l$address as Map<String, dynamic>));
    }
    if (data.containsKey('contacts')) {
      final l$contacts = data['contacts'];
      result$data['contacts'] = (l$contacts as List<dynamic>?)
          ?.map(
            (e) =>
                Input_FamilyContactInput.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    if (data.containsKey('parents')) {
      final l$parents = data['parents'];
      result$data['parents'] = (l$parents as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    if (data.containsKey('children')) {
      final l$children = data['children'];
      result$data['children'] = (l$children as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    if (data.containsKey('lastVisit')) {
      final l$lastVisit = data['lastVisit'];
      result$data['lastVisit'] = l$lastVisit == null
          ? null
          : tstzFromString(l$lastVisit);
    }
    if (data.containsKey('lastFatherVisit')) {
      final l$lastFatherVisit = data['lastFatherVisit'];
      result$data['lastFatherVisit'] = l$lastFatherVisit == null
          ? null
          : tstzFromString(l$lastFatherVisit);
    }
    return Input_UpdateFamilyInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get name => (_$data['name'] as String?);

  String? get notes => (_$data['notes'] as String?);

  int? get color => (_$data['color'] as int?);

  String? get status => (_$data['status'] as String?);

  String? get deceasedSpouseName => (_$data['deceasedSpouseName'] as String?);

  DateTime? get marriageDate => (_$data['marriageDate'] as DateTime?);

  String? get churchId => (_$data['churchId'] as String?);

  Input_AddressInput? get address => (_$data['address'] as Input_AddressInput?);

  List<Input_FamilyContactInput>? get contacts =>
      (_$data['contacts'] as List<Input_FamilyContactInput>?);

  List<String>? get parents => (_$data['parents'] as List<String>?);

  List<String>? get children => (_$data['children'] as List<String>?);

  DateTime? get lastVisit => (_$data['lastVisit'] as DateTime?);

  DateTime? get lastFatherVisit => (_$data['lastFatherVisit'] as DateTime?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    if (_$data.containsKey('notes')) {
      final l$notes = notes;
      result$data['notes'] = l$notes;
    }
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color;
    }
    if (_$data.containsKey('status')) {
      final l$status = status;
      result$data['status'] = l$status;
    }
    if (_$data.containsKey('deceasedSpouseName')) {
      final l$deceasedSpouseName = deceasedSpouseName;
      result$data['deceasedSpouseName'] = l$deceasedSpouseName;
    }
    if (_$data.containsKey('marriageDate')) {
      final l$marriageDate = marriageDate;
      result$data['marriageDate'] = l$marriageDate == null
          ? null
          : dateToString(l$marriageDate);
    }
    if (_$data.containsKey('churchId')) {
      final l$churchId = churchId;
      result$data['churchId'] = l$churchId;
    }
    if (_$data.containsKey('address')) {
      final l$address = address;
      result$data['address'] = l$address?.toJson();
    }
    if (_$data.containsKey('contacts')) {
      final l$contacts = contacts;
      result$data['contacts'] = l$contacts?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('parents')) {
      final l$parents = parents;
      result$data['parents'] = l$parents?.map((e) => e).toList();
    }
    if (_$data.containsKey('children')) {
      final l$children = children;
      result$data['children'] = l$children?.map((e) => e).toList();
    }
    if (_$data.containsKey('lastVisit')) {
      final l$lastVisit = lastVisit;
      result$data['lastVisit'] = l$lastVisit == null
          ? null
          : tstzToString(l$lastVisit);
    }
    if (_$data.containsKey('lastFatherVisit')) {
      final l$lastFatherVisit = lastFatherVisit;
      result$data['lastFatherVisit'] = l$lastFatherVisit == null
          ? null
          : tstzToString(l$lastFatherVisit);
    }
    return result$data;
  }

  CopyWith_Input_UpdateFamilyInput<Input_UpdateFamilyInput> get copyWith =>
      CopyWith_Input_UpdateFamilyInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_UpdateFamilyInput || runtimeType != other.runtimeType) {
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
    final l$color = color;
    final lOther$color = other.color;
    if (_$data.containsKey('color') != other._$data.containsKey('color')) {
      return false;
    }
    if (l$color != lOther$color) {
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
    final l$deceasedSpouseName = deceasedSpouseName;
    final lOther$deceasedSpouseName = other.deceasedSpouseName;
    if (_$data.containsKey('deceasedSpouseName') !=
        other._$data.containsKey('deceasedSpouseName')) {
      return false;
    }
    if (l$deceasedSpouseName != lOther$deceasedSpouseName) {
      return false;
    }
    final l$marriageDate = marriageDate;
    final lOther$marriageDate = other.marriageDate;
    if (_$data.containsKey('marriageDate') !=
        other._$data.containsKey('marriageDate')) {
      return false;
    }
    if (l$marriageDate != lOther$marriageDate) {
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
    final l$address = address;
    final lOther$address = other.address;
    if (_$data.containsKey('address') != other._$data.containsKey('address')) {
      return false;
    }
    if (l$address != lOther$address) {
      return false;
    }
    final l$contacts = contacts;
    final lOther$contacts = other.contacts;
    if (_$data.containsKey('contacts') !=
        other._$data.containsKey('contacts')) {
      return false;
    }
    if (l$contacts != null && lOther$contacts != null) {
      if (l$contacts.length != lOther$contacts.length) {
        return false;
      }
      for (int i = 0; i < l$contacts.length; i++) {
        final l$contacts$entry = l$contacts[i];
        final lOther$contacts$entry = lOther$contacts[i];
        if (l$contacts$entry != lOther$contacts$entry) {
          return false;
        }
      }
    } else if (l$contacts != lOther$contacts) {
      return false;
    }
    final l$parents = parents;
    final lOther$parents = other.parents;
    if (_$data.containsKey('parents') != other._$data.containsKey('parents')) {
      return false;
    }
    if (l$parents != null && lOther$parents != null) {
      if (l$parents.length != lOther$parents.length) {
        return false;
      }
      for (int i = 0; i < l$parents.length; i++) {
        final l$parents$entry = l$parents[i];
        final lOther$parents$entry = lOther$parents[i];
        if (l$parents$entry != lOther$parents$entry) {
          return false;
        }
      }
    } else if (l$parents != lOther$parents) {
      return false;
    }
    final l$children = children;
    final lOther$children = other.children;
    if (_$data.containsKey('children') !=
        other._$data.containsKey('children')) {
      return false;
    }
    if (l$children != null && lOther$children != null) {
      if (l$children.length != lOther$children.length) {
        return false;
      }
      for (int i = 0; i < l$children.length; i++) {
        final l$children$entry = l$children[i];
        final lOther$children$entry = lOther$children[i];
        if (l$children$entry != lOther$children$entry) {
          return false;
        }
      }
    } else if (l$children != lOther$children) {
      return false;
    }
    final l$lastVisit = lastVisit;
    final lOther$lastVisit = other.lastVisit;
    if (_$data.containsKey('lastVisit') !=
        other._$data.containsKey('lastVisit')) {
      return false;
    }
    if (l$lastVisit != lOther$lastVisit) {
      return false;
    }
    final l$lastFatherVisit = lastFatherVisit;
    final lOther$lastFatherVisit = other.lastFatherVisit;
    if (_$data.containsKey('lastFatherVisit') !=
        other._$data.containsKey('lastFatherVisit')) {
      return false;
    }
    if (l$lastFatherVisit != lOther$lastFatherVisit) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$notes = notes;
    final l$color = color;
    final l$status = status;
    final l$deceasedSpouseName = deceasedSpouseName;
    final l$marriageDate = marriageDate;
    final l$churchId = churchId;
    final l$address = address;
    final l$contacts = contacts;
    final l$parents = parents;
    final l$children = children;
    final l$lastVisit = lastVisit;
    final l$lastFatherVisit = lastFatherVisit;
    return Object.hashAll([
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('notes') ? l$notes : const {},
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('status') ? l$status : const {},
      _$data.containsKey('deceasedSpouseName')
          ? l$deceasedSpouseName
          : const {},
      _$data.containsKey('marriageDate') ? l$marriageDate : const {},
      _$data.containsKey('churchId') ? l$churchId : const {},
      _$data.containsKey('address') ? l$address : const {},
      _$data.containsKey('contacts')
          ? l$contacts == null
                ? null
                : Object.hashAll(l$contacts.map((v) => v))
          : const {},
      _$data.containsKey('parents')
          ? l$parents == null
                ? null
                : Object.hashAll(l$parents.map((v) => v))
          : const {},
      _$data.containsKey('children')
          ? l$children == null
                ? null
                : Object.hashAll(l$children.map((v) => v))
          : const {},
      _$data.containsKey('lastVisit') ? l$lastVisit : const {},
      _$data.containsKey('lastFatherVisit') ? l$lastFatherVisit : const {},
    ]);
  }
}

abstract class CopyWith_Input_UpdateFamilyInput<TRes> {
  factory CopyWith_Input_UpdateFamilyInput(
    Input_UpdateFamilyInput instance,
    TRes Function(Input_UpdateFamilyInput) then,
  ) = _CopyWithImpl_Input_UpdateFamilyInput;

  factory CopyWith_Input_UpdateFamilyInput.stub(TRes res) =
      _CopyWithStubImpl_Input_UpdateFamilyInput;

  TRes call({
    String? name,
    String? notes,
    int? color,
    String? status,
    String? deceasedSpouseName,
    DateTime? marriageDate,
    String? churchId,
    Input_AddressInput? address,
    List<Input_FamilyContactInput>? contacts,
    List<String>? parents,
    List<String>? children,
    DateTime? lastVisit,
    DateTime? lastFatherVisit,
  });
  CopyWith_Input_AddressInput<TRes> get address;
  TRes contacts(
    Iterable<Input_FamilyContactInput>? Function(
      Iterable<CopyWith_Input_FamilyContactInput<Input_FamilyContactInput>>?,
    )
    _fn,
  );
}

class _CopyWithImpl_Input_UpdateFamilyInput<TRes>
    implements CopyWith_Input_UpdateFamilyInput<TRes> {
  _CopyWithImpl_Input_UpdateFamilyInput(this._instance, this._then);

  final Input_UpdateFamilyInput _instance;

  final TRes Function(Input_UpdateFamilyInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? notes = _undefined,
    Object? color = _undefined,
    Object? status = _undefined,
    Object? deceasedSpouseName = _undefined,
    Object? marriageDate = _undefined,
    Object? churchId = _undefined,
    Object? address = _undefined,
    Object? contacts = _undefined,
    Object? parents = _undefined,
    Object? children = _undefined,
    Object? lastVisit = _undefined,
    Object? lastFatherVisit = _undefined,
  }) => _then(
    Input_UpdateFamilyInput._({
      ..._instance._$data,
      if (name != _undefined) 'name': (name as String?),
      if (notes != _undefined) 'notes': (notes as String?),
      if (color != _undefined) 'color': (color as int?),
      if (status != _undefined) 'status': (status as String?),
      if (deceasedSpouseName != _undefined)
        'deceasedSpouseName': (deceasedSpouseName as String?),
      if (marriageDate != _undefined)
        'marriageDate': (marriageDate as DateTime?),
      if (churchId != _undefined) 'churchId': (churchId as String?),
      if (address != _undefined) 'address': (address as Input_AddressInput?),
      if (contacts != _undefined)
        'contacts': (contacts as List<Input_FamilyContactInput>?),
      if (parents != _undefined) 'parents': (parents as List<String>?),
      if (children != _undefined) 'children': (children as List<String>?),
      if (lastVisit != _undefined) 'lastVisit': (lastVisit as DateTime?),
      if (lastFatherVisit != _undefined)
        'lastFatherVisit': (lastFatherVisit as DateTime?),
    }),
  );

  CopyWith_Input_AddressInput<TRes> get address {
    final local$address = _instance.address;
    return local$address == null
        ? CopyWith_Input_AddressInput.stub(_then(_instance))
        : CopyWith_Input_AddressInput(local$address, (e) => call(address: e));
  }

  TRes contacts(
    Iterable<Input_FamilyContactInput>? Function(
      Iterable<CopyWith_Input_FamilyContactInput<Input_FamilyContactInput>>?,
    )
    _fn,
  ) => call(
    contacts: _fn(
      _instance.contacts?.map(
        (e) => CopyWith_Input_FamilyContactInput(e, (i) => i),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl_Input_UpdateFamilyInput<TRes>
    implements CopyWith_Input_UpdateFamilyInput<TRes> {
  _CopyWithStubImpl_Input_UpdateFamilyInput(this._res);

  TRes _res;

  call({
    String? name,
    String? notes,
    int? color,
    String? status,
    String? deceasedSpouseName,
    DateTime? marriageDate,
    String? churchId,
    Input_AddressInput? address,
    List<Input_FamilyContactInput>? contacts,
    List<String>? parents,
    List<String>? children,
    DateTime? lastVisit,
    DateTime? lastFatherVisit,
  }) => _res;

  CopyWith_Input_AddressInput<TRes> get address =>
      CopyWith_Input_AddressInput.stub(_res);

  contacts(_fn) => _res;
}

class Input_CreateFamilyInput {
  factory Input_CreateFamilyInput({
    required String name,
    String? notes,
    int? color,
    String? status,
    String? deceasedSpouseName,
    DateTime? marriageDate,
    String? churchId,
    Input_AddressInput? address,
    List<Input_FamilyContactInput>? contacts,
    List<String>? parents,
    List<String>? children,
    DateTime? lastVisit,
    DateTime? lastFatherVisit,
  }) => Input_CreateFamilyInput._({
    r'name': name,
    if (notes != null) r'notes': notes,
    if (color != null) r'color': color,
    if (status != null) r'status': status,
    if (deceasedSpouseName != null) r'deceasedSpouseName': deceasedSpouseName,
    if (marriageDate != null) r'marriageDate': marriageDate,
    if (churchId != null) r'churchId': churchId,
    if (address != null) r'address': address,
    if (contacts != null) r'contacts': contacts,
    if (parents != null) r'parents': parents,
    if (children != null) r'children': children,
    if (lastVisit != null) r'lastVisit': lastVisit,
    if (lastFatherVisit != null) r'lastFatherVisit': lastFatherVisit,
  });

  Input_CreateFamilyInput._(this._$data);

  factory Input_CreateFamilyInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    if (data.containsKey('notes')) {
      final l$notes = data['notes'];
      result$data['notes'] = (l$notes as String?);
    }
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = (l$color as int?);
    }
    if (data.containsKey('status')) {
      final l$status = data['status'];
      result$data['status'] = (l$status as String?);
    }
    if (data.containsKey('deceasedSpouseName')) {
      final l$deceasedSpouseName = data['deceasedSpouseName'];
      result$data['deceasedSpouseName'] = (l$deceasedSpouseName as String?);
    }
    if (data.containsKey('marriageDate')) {
      final l$marriageDate = data['marriageDate'];
      result$data['marriageDate'] = l$marriageDate == null
          ? null
          : dateFromString(l$marriageDate);
    }
    if (data.containsKey('churchId')) {
      final l$churchId = data['churchId'];
      result$data['churchId'] = (l$churchId as String?);
    }
    if (data.containsKey('address')) {
      final l$address = data['address'];
      result$data['address'] = l$address == null
          ? null
          : Input_AddressInput.fromJson((l$address as Map<String, dynamic>));
    }
    if (data.containsKey('contacts')) {
      final l$contacts = data['contacts'];
      result$data['contacts'] = (l$contacts as List<dynamic>?)
          ?.map(
            (e) =>
                Input_FamilyContactInput.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    if (data.containsKey('parents')) {
      final l$parents = data['parents'];
      result$data['parents'] = (l$parents as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    if (data.containsKey('children')) {
      final l$children = data['children'];
      result$data['children'] = (l$children as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    if (data.containsKey('lastVisit')) {
      final l$lastVisit = data['lastVisit'];
      result$data['lastVisit'] = l$lastVisit == null
          ? null
          : tstzFromString(l$lastVisit);
    }
    if (data.containsKey('lastFatherVisit')) {
      final l$lastFatherVisit = data['lastFatherVisit'];
      result$data['lastFatherVisit'] = l$lastFatherVisit == null
          ? null
          : tstzFromString(l$lastFatherVisit);
    }
    return Input_CreateFamilyInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get name => (_$data['name'] as String);

  String? get notes => (_$data['notes'] as String?);

  int? get color => (_$data['color'] as int?);

  String? get status => (_$data['status'] as String?);

  String? get deceasedSpouseName => (_$data['deceasedSpouseName'] as String?);

  DateTime? get marriageDate => (_$data['marriageDate'] as DateTime?);

  String? get churchId => (_$data['churchId'] as String?);

  Input_AddressInput? get address => (_$data['address'] as Input_AddressInput?);

  List<Input_FamilyContactInput>? get contacts =>
      (_$data['contacts'] as List<Input_FamilyContactInput>?);

  List<String>? get parents => (_$data['parents'] as List<String>?);

  List<String>? get children => (_$data['children'] as List<String>?);

  DateTime? get lastVisit => (_$data['lastVisit'] as DateTime?);

  DateTime? get lastFatherVisit => (_$data['lastFatherVisit'] as DateTime?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$name = name;
    result$data['name'] = l$name;
    if (_$data.containsKey('notes')) {
      final l$notes = notes;
      result$data['notes'] = l$notes;
    }
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color;
    }
    if (_$data.containsKey('status')) {
      final l$status = status;
      result$data['status'] = l$status;
    }
    if (_$data.containsKey('deceasedSpouseName')) {
      final l$deceasedSpouseName = deceasedSpouseName;
      result$data['deceasedSpouseName'] = l$deceasedSpouseName;
    }
    if (_$data.containsKey('marriageDate')) {
      final l$marriageDate = marriageDate;
      result$data['marriageDate'] = l$marriageDate == null
          ? null
          : dateToString(l$marriageDate);
    }
    if (_$data.containsKey('churchId')) {
      final l$churchId = churchId;
      result$data['churchId'] = l$churchId;
    }
    if (_$data.containsKey('address')) {
      final l$address = address;
      result$data['address'] = l$address?.toJson();
    }
    if (_$data.containsKey('contacts')) {
      final l$contacts = contacts;
      result$data['contacts'] = l$contacts?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('parents')) {
      final l$parents = parents;
      result$data['parents'] = l$parents?.map((e) => e).toList();
    }
    if (_$data.containsKey('children')) {
      final l$children = children;
      result$data['children'] = l$children?.map((e) => e).toList();
    }
    if (_$data.containsKey('lastVisit')) {
      final l$lastVisit = lastVisit;
      result$data['lastVisit'] = l$lastVisit == null
          ? null
          : tstzToString(l$lastVisit);
    }
    if (_$data.containsKey('lastFatherVisit')) {
      final l$lastFatherVisit = lastFatherVisit;
      result$data['lastFatherVisit'] = l$lastFatherVisit == null
          ? null
          : tstzToString(l$lastFatherVisit);
    }
    return result$data;
  }

  CopyWith_Input_CreateFamilyInput<Input_CreateFamilyInput> get copyWith =>
      CopyWith_Input_CreateFamilyInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_CreateFamilyInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
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
    final l$color = color;
    final lOther$color = other.color;
    if (_$data.containsKey('color') != other._$data.containsKey('color')) {
      return false;
    }
    if (l$color != lOther$color) {
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
    final l$deceasedSpouseName = deceasedSpouseName;
    final lOther$deceasedSpouseName = other.deceasedSpouseName;
    if (_$data.containsKey('deceasedSpouseName') !=
        other._$data.containsKey('deceasedSpouseName')) {
      return false;
    }
    if (l$deceasedSpouseName != lOther$deceasedSpouseName) {
      return false;
    }
    final l$marriageDate = marriageDate;
    final lOther$marriageDate = other.marriageDate;
    if (_$data.containsKey('marriageDate') !=
        other._$data.containsKey('marriageDate')) {
      return false;
    }
    if (l$marriageDate != lOther$marriageDate) {
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
    final l$address = address;
    final lOther$address = other.address;
    if (_$data.containsKey('address') != other._$data.containsKey('address')) {
      return false;
    }
    if (l$address != lOther$address) {
      return false;
    }
    final l$contacts = contacts;
    final lOther$contacts = other.contacts;
    if (_$data.containsKey('contacts') !=
        other._$data.containsKey('contacts')) {
      return false;
    }
    if (l$contacts != null && lOther$contacts != null) {
      if (l$contacts.length != lOther$contacts.length) {
        return false;
      }
      for (int i = 0; i < l$contacts.length; i++) {
        final l$contacts$entry = l$contacts[i];
        final lOther$contacts$entry = lOther$contacts[i];
        if (l$contacts$entry != lOther$contacts$entry) {
          return false;
        }
      }
    } else if (l$contacts != lOther$contacts) {
      return false;
    }
    final l$parents = parents;
    final lOther$parents = other.parents;
    if (_$data.containsKey('parents') != other._$data.containsKey('parents')) {
      return false;
    }
    if (l$parents != null && lOther$parents != null) {
      if (l$parents.length != lOther$parents.length) {
        return false;
      }
      for (int i = 0; i < l$parents.length; i++) {
        final l$parents$entry = l$parents[i];
        final lOther$parents$entry = lOther$parents[i];
        if (l$parents$entry != lOther$parents$entry) {
          return false;
        }
      }
    } else if (l$parents != lOther$parents) {
      return false;
    }
    final l$children = children;
    final lOther$children = other.children;
    if (_$data.containsKey('children') !=
        other._$data.containsKey('children')) {
      return false;
    }
    if (l$children != null && lOther$children != null) {
      if (l$children.length != lOther$children.length) {
        return false;
      }
      for (int i = 0; i < l$children.length; i++) {
        final l$children$entry = l$children[i];
        final lOther$children$entry = lOther$children[i];
        if (l$children$entry != lOther$children$entry) {
          return false;
        }
      }
    } else if (l$children != lOther$children) {
      return false;
    }
    final l$lastVisit = lastVisit;
    final lOther$lastVisit = other.lastVisit;
    if (_$data.containsKey('lastVisit') !=
        other._$data.containsKey('lastVisit')) {
      return false;
    }
    if (l$lastVisit != lOther$lastVisit) {
      return false;
    }
    final l$lastFatherVisit = lastFatherVisit;
    final lOther$lastFatherVisit = other.lastFatherVisit;
    if (_$data.containsKey('lastFatherVisit') !=
        other._$data.containsKey('lastFatherVisit')) {
      return false;
    }
    if (l$lastFatherVisit != lOther$lastFatherVisit) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$notes = notes;
    final l$color = color;
    final l$status = status;
    final l$deceasedSpouseName = deceasedSpouseName;
    final l$marriageDate = marriageDate;
    final l$churchId = churchId;
    final l$address = address;
    final l$contacts = contacts;
    final l$parents = parents;
    final l$children = children;
    final l$lastVisit = lastVisit;
    final l$lastFatherVisit = lastFatherVisit;
    return Object.hashAll([
      l$name,
      _$data.containsKey('notes') ? l$notes : const {},
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('status') ? l$status : const {},
      _$data.containsKey('deceasedSpouseName')
          ? l$deceasedSpouseName
          : const {},
      _$data.containsKey('marriageDate') ? l$marriageDate : const {},
      _$data.containsKey('churchId') ? l$churchId : const {},
      _$data.containsKey('address') ? l$address : const {},
      _$data.containsKey('contacts')
          ? l$contacts == null
                ? null
                : Object.hashAll(l$contacts.map((v) => v))
          : const {},
      _$data.containsKey('parents')
          ? l$parents == null
                ? null
                : Object.hashAll(l$parents.map((v) => v))
          : const {},
      _$data.containsKey('children')
          ? l$children == null
                ? null
                : Object.hashAll(l$children.map((v) => v))
          : const {},
      _$data.containsKey('lastVisit') ? l$lastVisit : const {},
      _$data.containsKey('lastFatherVisit') ? l$lastFatherVisit : const {},
    ]);
  }
}

abstract class CopyWith_Input_CreateFamilyInput<TRes> {
  factory CopyWith_Input_CreateFamilyInput(
    Input_CreateFamilyInput instance,
    TRes Function(Input_CreateFamilyInput) then,
  ) = _CopyWithImpl_Input_CreateFamilyInput;

  factory CopyWith_Input_CreateFamilyInput.stub(TRes res) =
      _CopyWithStubImpl_Input_CreateFamilyInput;

  TRes call({
    String? name,
    String? notes,
    int? color,
    String? status,
    String? deceasedSpouseName,
    DateTime? marriageDate,
    String? churchId,
    Input_AddressInput? address,
    List<Input_FamilyContactInput>? contacts,
    List<String>? parents,
    List<String>? children,
    DateTime? lastVisit,
    DateTime? lastFatherVisit,
  });
  CopyWith_Input_AddressInput<TRes> get address;
  TRes contacts(
    Iterable<Input_FamilyContactInput>? Function(
      Iterable<CopyWith_Input_FamilyContactInput<Input_FamilyContactInput>>?,
    )
    _fn,
  );
}

class _CopyWithImpl_Input_CreateFamilyInput<TRes>
    implements CopyWith_Input_CreateFamilyInput<TRes> {
  _CopyWithImpl_Input_CreateFamilyInput(this._instance, this._then);

  final Input_CreateFamilyInput _instance;

  final TRes Function(Input_CreateFamilyInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? notes = _undefined,
    Object? color = _undefined,
    Object? status = _undefined,
    Object? deceasedSpouseName = _undefined,
    Object? marriageDate = _undefined,
    Object? churchId = _undefined,
    Object? address = _undefined,
    Object? contacts = _undefined,
    Object? parents = _undefined,
    Object? children = _undefined,
    Object? lastVisit = _undefined,
    Object? lastFatherVisit = _undefined,
  }) => _then(
    Input_CreateFamilyInput._({
      ..._instance._$data,
      if (name != _undefined && name != null) 'name': (name as String),
      if (notes != _undefined) 'notes': (notes as String?),
      if (color != _undefined) 'color': (color as int?),
      if (status != _undefined) 'status': (status as String?),
      if (deceasedSpouseName != _undefined)
        'deceasedSpouseName': (deceasedSpouseName as String?),
      if (marriageDate != _undefined)
        'marriageDate': (marriageDate as DateTime?),
      if (churchId != _undefined) 'churchId': (churchId as String?),
      if (address != _undefined) 'address': (address as Input_AddressInput?),
      if (contacts != _undefined)
        'contacts': (contacts as List<Input_FamilyContactInput>?),
      if (parents != _undefined) 'parents': (parents as List<String>?),
      if (children != _undefined) 'children': (children as List<String>?),
      if (lastVisit != _undefined) 'lastVisit': (lastVisit as DateTime?),
      if (lastFatherVisit != _undefined)
        'lastFatherVisit': (lastFatherVisit as DateTime?),
    }),
  );

  CopyWith_Input_AddressInput<TRes> get address {
    final local$address = _instance.address;
    return local$address == null
        ? CopyWith_Input_AddressInput.stub(_then(_instance))
        : CopyWith_Input_AddressInput(local$address, (e) => call(address: e));
  }

  TRes contacts(
    Iterable<Input_FamilyContactInput>? Function(
      Iterable<CopyWith_Input_FamilyContactInput<Input_FamilyContactInput>>?,
    )
    _fn,
  ) => call(
    contacts: _fn(
      _instance.contacts?.map(
        (e) => CopyWith_Input_FamilyContactInput(e, (i) => i),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl_Input_CreateFamilyInput<TRes>
    implements CopyWith_Input_CreateFamilyInput<TRes> {
  _CopyWithStubImpl_Input_CreateFamilyInput(this._res);

  TRes _res;

  call({
    String? name,
    String? notes,
    int? color,
    String? status,
    String? deceasedSpouseName,
    DateTime? marriageDate,
    String? churchId,
    Input_AddressInput? address,
    List<Input_FamilyContactInput>? contacts,
    List<String>? parents,
    List<String>? children,
    DateTime? lastVisit,
    DateTime? lastFatherVisit,
  }) => _res;

  CopyWith_Input_AddressInput<TRes> get address =>
      CopyWith_Input_AddressInput.stub(_res);

  contacts(_fn) => _res;
}

class Input_FamilyFilterUserCanEdit {
  factory Input_FamilyFilterUserCanEdit({
    bool? isNil,
    bool? eq,
    bool? notEq,
    List<bool>? $in,
    bool? lessThan,
    bool? greaterThan,
    bool? lessThanOrEqual,
    bool? greaterThanOrEqual,
    bool? isDistinctFrom,
    bool? isNotDistinctFrom,
  }) => Input_FamilyFilterUserCanEdit._({
    if (isNil != null) r'isNil': isNil,
    if (eq != null) r'eq': eq,
    if (notEq != null) r'notEq': notEq,
    if ($in != null) r'in': $in,
    if (lessThan != null) r'lessThan': lessThan,
    if (greaterThan != null) r'greaterThan': greaterThan,
    if (lessThanOrEqual != null) r'lessThanOrEqual': lessThanOrEqual,
    if (greaterThanOrEqual != null) r'greaterThanOrEqual': greaterThanOrEqual,
    if (isDistinctFrom != null) r'isDistinctFrom': isDistinctFrom,
    if (isNotDistinctFrom != null) r'isNotDistinctFrom': isNotDistinctFrom,
  });

  Input_FamilyFilterUserCanEdit._(this._$data);

  factory Input_FamilyFilterUserCanEdit.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('isNil')) {
      final l$isNil = data['isNil'];
      result$data['isNil'] = (l$isNil as bool?);
    }
    if (data.containsKey('eq')) {
      final l$eq = data['eq'];
      result$data['eq'] = (l$eq as bool?);
    }
    if (data.containsKey('notEq')) {
      final l$notEq = data['notEq'];
      result$data['notEq'] = (l$notEq as bool?);
    }
    if (data.containsKey('in')) {
      final l$$in = data['in'];
      result$data['in'] = (l$$in as List<dynamic>?)
          ?.map((e) => (e as bool))
          .toList();
    }
    if (data.containsKey('lessThan')) {
      final l$lessThan = data['lessThan'];
      result$data['lessThan'] = (l$lessThan as bool?);
    }
    if (data.containsKey('greaterThan')) {
      final l$greaterThan = data['greaterThan'];
      result$data['greaterThan'] = (l$greaterThan as bool?);
    }
    if (data.containsKey('lessThanOrEqual')) {
      final l$lessThanOrEqual = data['lessThanOrEqual'];
      result$data['lessThanOrEqual'] = (l$lessThanOrEqual as bool?);
    }
    if (data.containsKey('greaterThanOrEqual')) {
      final l$greaterThanOrEqual = data['greaterThanOrEqual'];
      result$data['greaterThanOrEqual'] = (l$greaterThanOrEqual as bool?);
    }
    if (data.containsKey('isDistinctFrom')) {
      final l$isDistinctFrom = data['isDistinctFrom'];
      result$data['isDistinctFrom'] = (l$isDistinctFrom as bool?);
    }
    if (data.containsKey('isNotDistinctFrom')) {
      final l$isNotDistinctFrom = data['isNotDistinctFrom'];
      result$data['isNotDistinctFrom'] = (l$isNotDistinctFrom as bool?);
    }
    return Input_FamilyFilterUserCanEdit._(result$data);
  }

  Map<String, dynamic> _$data;

  bool? get isNil => (_$data['isNil'] as bool?);

  bool? get eq => (_$data['eq'] as bool?);

  bool? get notEq => (_$data['notEq'] as bool?);

  List<bool>? get $in => (_$data['in'] as List<bool>?);

  bool? get lessThan => (_$data['lessThan'] as bool?);

  bool? get greaterThan => (_$data['greaterThan'] as bool?);

  bool? get lessThanOrEqual => (_$data['lessThanOrEqual'] as bool?);

  bool? get greaterThanOrEqual => (_$data['greaterThanOrEqual'] as bool?);

  bool? get isDistinctFrom => (_$data['isDistinctFrom'] as bool?);

  bool? get isNotDistinctFrom => (_$data['isNotDistinctFrom'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('isNil')) {
      final l$isNil = isNil;
      result$data['isNil'] = l$isNil;
    }
    if (_$data.containsKey('eq')) {
      final l$eq = eq;
      result$data['eq'] = l$eq;
    }
    if (_$data.containsKey('notEq')) {
      final l$notEq = notEq;
      result$data['notEq'] = l$notEq;
    }
    if (_$data.containsKey('in')) {
      final l$$in = $in;
      result$data['in'] = l$$in?.map((e) => e).toList();
    }
    if (_$data.containsKey('lessThan')) {
      final l$lessThan = lessThan;
      result$data['lessThan'] = l$lessThan;
    }
    if (_$data.containsKey('greaterThan')) {
      final l$greaterThan = greaterThan;
      result$data['greaterThan'] = l$greaterThan;
    }
    if (_$data.containsKey('lessThanOrEqual')) {
      final l$lessThanOrEqual = lessThanOrEqual;
      result$data['lessThanOrEqual'] = l$lessThanOrEqual;
    }
    if (_$data.containsKey('greaterThanOrEqual')) {
      final l$greaterThanOrEqual = greaterThanOrEqual;
      result$data['greaterThanOrEqual'] = l$greaterThanOrEqual;
    }
    if (_$data.containsKey('isDistinctFrom')) {
      final l$isDistinctFrom = isDistinctFrom;
      result$data['isDistinctFrom'] = l$isDistinctFrom;
    }
    if (_$data.containsKey('isNotDistinctFrom')) {
      final l$isNotDistinctFrom = isNotDistinctFrom;
      result$data['isNotDistinctFrom'] = l$isNotDistinctFrom;
    }
    return result$data;
  }

  CopyWith_Input_FamilyFilterUserCanEdit<Input_FamilyFilterUserCanEdit>
  get copyWith => CopyWith_Input_FamilyFilterUserCanEdit(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_FamilyFilterUserCanEdit ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$isNil = isNil;
    final lOther$isNil = other.isNil;
    if (_$data.containsKey('isNil') != other._$data.containsKey('isNil')) {
      return false;
    }
    if (l$isNil != lOther$isNil) {
      return false;
    }
    final l$eq = eq;
    final lOther$eq = other.eq;
    if (_$data.containsKey('eq') != other._$data.containsKey('eq')) {
      return false;
    }
    if (l$eq != lOther$eq) {
      return false;
    }
    final l$notEq = notEq;
    final lOther$notEq = other.notEq;
    if (_$data.containsKey('notEq') != other._$data.containsKey('notEq')) {
      return false;
    }
    if (l$notEq != lOther$notEq) {
      return false;
    }
    final l$$in = $in;
    final lOther$$in = other.$in;
    if (_$data.containsKey('in') != other._$data.containsKey('in')) {
      return false;
    }
    if (l$$in != null && lOther$$in != null) {
      if (l$$in.length != lOther$$in.length) {
        return false;
      }
      for (int i = 0; i < l$$in.length; i++) {
        final l$$in$entry = l$$in[i];
        final lOther$$in$entry = lOther$$in[i];
        if (l$$in$entry != lOther$$in$entry) {
          return false;
        }
      }
    } else if (l$$in != lOther$$in) {
      return false;
    }
    final l$lessThan = lessThan;
    final lOther$lessThan = other.lessThan;
    if (_$data.containsKey('lessThan') !=
        other._$data.containsKey('lessThan')) {
      return false;
    }
    if (l$lessThan != lOther$lessThan) {
      return false;
    }
    final l$greaterThan = greaterThan;
    final lOther$greaterThan = other.greaterThan;
    if (_$data.containsKey('greaterThan') !=
        other._$data.containsKey('greaterThan')) {
      return false;
    }
    if (l$greaterThan != lOther$greaterThan) {
      return false;
    }
    final l$lessThanOrEqual = lessThanOrEqual;
    final lOther$lessThanOrEqual = other.lessThanOrEqual;
    if (_$data.containsKey('lessThanOrEqual') !=
        other._$data.containsKey('lessThanOrEqual')) {
      return false;
    }
    if (l$lessThanOrEqual != lOther$lessThanOrEqual) {
      return false;
    }
    final l$greaterThanOrEqual = greaterThanOrEqual;
    final lOther$greaterThanOrEqual = other.greaterThanOrEqual;
    if (_$data.containsKey('greaterThanOrEqual') !=
        other._$data.containsKey('greaterThanOrEqual')) {
      return false;
    }
    if (l$greaterThanOrEqual != lOther$greaterThanOrEqual) {
      return false;
    }
    final l$isDistinctFrom = isDistinctFrom;
    final lOther$isDistinctFrom = other.isDistinctFrom;
    if (_$data.containsKey('isDistinctFrom') !=
        other._$data.containsKey('isDistinctFrom')) {
      return false;
    }
    if (l$isDistinctFrom != lOther$isDistinctFrom) {
      return false;
    }
    final l$isNotDistinctFrom = isNotDistinctFrom;
    final lOther$isNotDistinctFrom = other.isNotDistinctFrom;
    if (_$data.containsKey('isNotDistinctFrom') !=
        other._$data.containsKey('isNotDistinctFrom')) {
      return false;
    }
    if (l$isNotDistinctFrom != lOther$isNotDistinctFrom) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$isNil = isNil;
    final l$eq = eq;
    final l$notEq = notEq;
    final l$$in = $in;
    final l$lessThan = lessThan;
    final l$greaterThan = greaterThan;
    final l$lessThanOrEqual = lessThanOrEqual;
    final l$greaterThanOrEqual = greaterThanOrEqual;
    final l$isDistinctFrom = isDistinctFrom;
    final l$isNotDistinctFrom = isNotDistinctFrom;
    return Object.hashAll([
      _$data.containsKey('isNil') ? l$isNil : const {},
      _$data.containsKey('eq') ? l$eq : const {},
      _$data.containsKey('notEq') ? l$notEq : const {},
      _$data.containsKey('in')
          ? l$$in == null
                ? null
                : Object.hashAll(l$$in.map((v) => v))
          : const {},
      _$data.containsKey('lessThan') ? l$lessThan : const {},
      _$data.containsKey('greaterThan') ? l$greaterThan : const {},
      _$data.containsKey('lessThanOrEqual') ? l$lessThanOrEqual : const {},
      _$data.containsKey('greaterThanOrEqual')
          ? l$greaterThanOrEqual
          : const {},
      _$data.containsKey('isDistinctFrom') ? l$isDistinctFrom : const {},
      _$data.containsKey('isNotDistinctFrom') ? l$isNotDistinctFrom : const {},
    ]);
  }
}

abstract class CopyWith_Input_FamilyFilterUserCanEdit<TRes> {
  factory CopyWith_Input_FamilyFilterUserCanEdit(
    Input_FamilyFilterUserCanEdit instance,
    TRes Function(Input_FamilyFilterUserCanEdit) then,
  ) = _CopyWithImpl_Input_FamilyFilterUserCanEdit;

  factory CopyWith_Input_FamilyFilterUserCanEdit.stub(TRes res) =
      _CopyWithStubImpl_Input_FamilyFilterUserCanEdit;

  TRes call({
    bool? isNil,
    bool? eq,
    bool? notEq,
    List<bool>? $in,
    bool? lessThan,
    bool? greaterThan,
    bool? lessThanOrEqual,
    bool? greaterThanOrEqual,
    bool? isDistinctFrom,
    bool? isNotDistinctFrom,
  });
}

class _CopyWithImpl_Input_FamilyFilterUserCanEdit<TRes>
    implements CopyWith_Input_FamilyFilterUserCanEdit<TRes> {
  _CopyWithImpl_Input_FamilyFilterUserCanEdit(this._instance, this._then);

  final Input_FamilyFilterUserCanEdit _instance;

  final TRes Function(Input_FamilyFilterUserCanEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? isNil = _undefined,
    Object? eq = _undefined,
    Object? notEq = _undefined,
    Object? $in = _undefined,
    Object? lessThan = _undefined,
    Object? greaterThan = _undefined,
    Object? lessThanOrEqual = _undefined,
    Object? greaterThanOrEqual = _undefined,
    Object? isDistinctFrom = _undefined,
    Object? isNotDistinctFrom = _undefined,
  }) => _then(
    Input_FamilyFilterUserCanEdit._({
      ..._instance._$data,
      if (isNil != _undefined) 'isNil': (isNil as bool?),
      if (eq != _undefined) 'eq': (eq as bool?),
      if (notEq != _undefined) 'notEq': (notEq as bool?),
      if ($in != _undefined) 'in': ($in as List<bool>?),
      if (lessThan != _undefined) 'lessThan': (lessThan as bool?),
      if (greaterThan != _undefined) 'greaterThan': (greaterThan as bool?),
      if (lessThanOrEqual != _undefined)
        'lessThanOrEqual': (lessThanOrEqual as bool?),
      if (greaterThanOrEqual != _undefined)
        'greaterThanOrEqual': (greaterThanOrEqual as bool?),
      if (isDistinctFrom != _undefined)
        'isDistinctFrom': (isDistinctFrom as bool?),
      if (isNotDistinctFrom != _undefined)
        'isNotDistinctFrom': (isNotDistinctFrom as bool?),
    }),
  );
}

class _CopyWithStubImpl_Input_FamilyFilterUserCanEdit<TRes>
    implements CopyWith_Input_FamilyFilterUserCanEdit<TRes> {
  _CopyWithStubImpl_Input_FamilyFilterUserCanEdit(this._res);

  TRes _res;

  call({
    bool? isNil,
    bool? eq,
    bool? notEq,
    List<bool>? $in,
    bool? lessThan,
    bool? greaterThan,
    bool? lessThanOrEqual,
    bool? greaterThanOrEqual,
    bool? isDistinctFrom,
    bool? isNotDistinctFrom,
  }) => _res;
}

class Input_FamilyFilterAddressFullAddressText {
  factory Input_FamilyFilterAddressFullAddressText({
    bool? isNil,
    String? eq,
    String? notEq,
    List<String?>? $in,
    String? lessThan,
    String? greaterThan,
    String? lessThanOrEqual,
    String? greaterThanOrEqual,
    String? contains,
    String? isDistinctFrom,
    String? isNotDistinctFrom,
    String? stringEndsWith,
    String? stringStartsWith,
    String? like,
    String? ilike,
  }) => Input_FamilyFilterAddressFullAddressText._({
    if (isNil != null) r'isNil': isNil,
    if (eq != null) r'eq': eq,
    if (notEq != null) r'notEq': notEq,
    if ($in != null) r'in': $in,
    if (lessThan != null) r'lessThan': lessThan,
    if (greaterThan != null) r'greaterThan': greaterThan,
    if (lessThanOrEqual != null) r'lessThanOrEqual': lessThanOrEqual,
    if (greaterThanOrEqual != null) r'greaterThanOrEqual': greaterThanOrEqual,
    if (contains != null) r'contains': contains,
    if (isDistinctFrom != null) r'isDistinctFrom': isDistinctFrom,
    if (isNotDistinctFrom != null) r'isNotDistinctFrom': isNotDistinctFrom,
    if (stringEndsWith != null) r'stringEndsWith': stringEndsWith,
    if (stringStartsWith != null) r'stringStartsWith': stringStartsWith,
    if (like != null) r'like': like,
    if (ilike != null) r'ilike': ilike,
  });

  Input_FamilyFilterAddressFullAddressText._(this._$data);

  factory Input_FamilyFilterAddressFullAddressText.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('isNil')) {
      final l$isNil = data['isNil'];
      result$data['isNil'] = (l$isNil as bool?);
    }
    if (data.containsKey('eq')) {
      final l$eq = data['eq'];
      result$data['eq'] = (l$eq as String?);
    }
    if (data.containsKey('notEq')) {
      final l$notEq = data['notEq'];
      result$data['notEq'] = (l$notEq as String?);
    }
    if (data.containsKey('in')) {
      final l$$in = data['in'];
      result$data['in'] = (l$$in as List<dynamic>?)
          ?.map((e) => (e as String?))
          .toList();
    }
    if (data.containsKey('lessThan')) {
      final l$lessThan = data['lessThan'];
      result$data['lessThan'] = (l$lessThan as String?);
    }
    if (data.containsKey('greaterThan')) {
      final l$greaterThan = data['greaterThan'];
      result$data['greaterThan'] = (l$greaterThan as String?);
    }
    if (data.containsKey('lessThanOrEqual')) {
      final l$lessThanOrEqual = data['lessThanOrEqual'];
      result$data['lessThanOrEqual'] = (l$lessThanOrEqual as String?);
    }
    if (data.containsKey('greaterThanOrEqual')) {
      final l$greaterThanOrEqual = data['greaterThanOrEqual'];
      result$data['greaterThanOrEqual'] = (l$greaterThanOrEqual as String?);
    }
    if (data.containsKey('contains')) {
      final l$contains = data['contains'];
      result$data['contains'] = (l$contains as String?);
    }
    if (data.containsKey('isDistinctFrom')) {
      final l$isDistinctFrom = data['isDistinctFrom'];
      result$data['isDistinctFrom'] = (l$isDistinctFrom as String?);
    }
    if (data.containsKey('isNotDistinctFrom')) {
      final l$isNotDistinctFrom = data['isNotDistinctFrom'];
      result$data['isNotDistinctFrom'] = (l$isNotDistinctFrom as String?);
    }
    if (data.containsKey('stringEndsWith')) {
      final l$stringEndsWith = data['stringEndsWith'];
      result$data['stringEndsWith'] = (l$stringEndsWith as String?);
    }
    if (data.containsKey('stringStartsWith')) {
      final l$stringStartsWith = data['stringStartsWith'];
      result$data['stringStartsWith'] = (l$stringStartsWith as String?);
    }
    if (data.containsKey('like')) {
      final l$like = data['like'];
      result$data['like'] = (l$like as String?);
    }
    if (data.containsKey('ilike')) {
      final l$ilike = data['ilike'];
      result$data['ilike'] = (l$ilike as String?);
    }
    return Input_FamilyFilterAddressFullAddressText._(result$data);
  }

  Map<String, dynamic> _$data;

  bool? get isNil => (_$data['isNil'] as bool?);

  String? get eq => (_$data['eq'] as String?);

  String? get notEq => (_$data['notEq'] as String?);

  List<String?>? get $in => (_$data['in'] as List<String?>?);

  String? get lessThan => (_$data['lessThan'] as String?);

  String? get greaterThan => (_$data['greaterThan'] as String?);

  String? get lessThanOrEqual => (_$data['lessThanOrEqual'] as String?);

  String? get greaterThanOrEqual => (_$data['greaterThanOrEqual'] as String?);

  String? get contains => (_$data['contains'] as String?);

  String? get isDistinctFrom => (_$data['isDistinctFrom'] as String?);

  String? get isNotDistinctFrom => (_$data['isNotDistinctFrom'] as String?);

  String? get stringEndsWith => (_$data['stringEndsWith'] as String?);

  String? get stringStartsWith => (_$data['stringStartsWith'] as String?);

  String? get like => (_$data['like'] as String?);

  String? get ilike => (_$data['ilike'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('isNil')) {
      final l$isNil = isNil;
      result$data['isNil'] = l$isNil;
    }
    if (_$data.containsKey('eq')) {
      final l$eq = eq;
      result$data['eq'] = l$eq;
    }
    if (_$data.containsKey('notEq')) {
      final l$notEq = notEq;
      result$data['notEq'] = l$notEq;
    }
    if (_$data.containsKey('in')) {
      final l$$in = $in;
      result$data['in'] = l$$in?.map((e) => e).toList();
    }
    if (_$data.containsKey('lessThan')) {
      final l$lessThan = lessThan;
      result$data['lessThan'] = l$lessThan;
    }
    if (_$data.containsKey('greaterThan')) {
      final l$greaterThan = greaterThan;
      result$data['greaterThan'] = l$greaterThan;
    }
    if (_$data.containsKey('lessThanOrEqual')) {
      final l$lessThanOrEqual = lessThanOrEqual;
      result$data['lessThanOrEqual'] = l$lessThanOrEqual;
    }
    if (_$data.containsKey('greaterThanOrEqual')) {
      final l$greaterThanOrEqual = greaterThanOrEqual;
      result$data['greaterThanOrEqual'] = l$greaterThanOrEqual;
    }
    if (_$data.containsKey('contains')) {
      final l$contains = contains;
      result$data['contains'] = l$contains;
    }
    if (_$data.containsKey('isDistinctFrom')) {
      final l$isDistinctFrom = isDistinctFrom;
      result$data['isDistinctFrom'] = l$isDistinctFrom;
    }
    if (_$data.containsKey('isNotDistinctFrom')) {
      final l$isNotDistinctFrom = isNotDistinctFrom;
      result$data['isNotDistinctFrom'] = l$isNotDistinctFrom;
    }
    if (_$data.containsKey('stringEndsWith')) {
      final l$stringEndsWith = stringEndsWith;
      result$data['stringEndsWith'] = l$stringEndsWith;
    }
    if (_$data.containsKey('stringStartsWith')) {
      final l$stringStartsWith = stringStartsWith;
      result$data['stringStartsWith'] = l$stringStartsWith;
    }
    if (_$data.containsKey('like')) {
      final l$like = like;
      result$data['like'] = l$like;
    }
    if (_$data.containsKey('ilike')) {
      final l$ilike = ilike;
      result$data['ilike'] = l$ilike;
    }
    return result$data;
  }

  CopyWith_Input_FamilyFilterAddressFullAddressText<
    Input_FamilyFilterAddressFullAddressText
  >
  get copyWith =>
      CopyWith_Input_FamilyFilterAddressFullAddressText(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_FamilyFilterAddressFullAddressText ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$isNil = isNil;
    final lOther$isNil = other.isNil;
    if (_$data.containsKey('isNil') != other._$data.containsKey('isNil')) {
      return false;
    }
    if (l$isNil != lOther$isNil) {
      return false;
    }
    final l$eq = eq;
    final lOther$eq = other.eq;
    if (_$data.containsKey('eq') != other._$data.containsKey('eq')) {
      return false;
    }
    if (l$eq != lOther$eq) {
      return false;
    }
    final l$notEq = notEq;
    final lOther$notEq = other.notEq;
    if (_$data.containsKey('notEq') != other._$data.containsKey('notEq')) {
      return false;
    }
    if (l$notEq != lOther$notEq) {
      return false;
    }
    final l$$in = $in;
    final lOther$$in = other.$in;
    if (_$data.containsKey('in') != other._$data.containsKey('in')) {
      return false;
    }
    if (l$$in != null && lOther$$in != null) {
      if (l$$in.length != lOther$$in.length) {
        return false;
      }
      for (int i = 0; i < l$$in.length; i++) {
        final l$$in$entry = l$$in[i];
        final lOther$$in$entry = lOther$$in[i];
        if (l$$in$entry != lOther$$in$entry) {
          return false;
        }
      }
    } else if (l$$in != lOther$$in) {
      return false;
    }
    final l$lessThan = lessThan;
    final lOther$lessThan = other.lessThan;
    if (_$data.containsKey('lessThan') !=
        other._$data.containsKey('lessThan')) {
      return false;
    }
    if (l$lessThan != lOther$lessThan) {
      return false;
    }
    final l$greaterThan = greaterThan;
    final lOther$greaterThan = other.greaterThan;
    if (_$data.containsKey('greaterThan') !=
        other._$data.containsKey('greaterThan')) {
      return false;
    }
    if (l$greaterThan != lOther$greaterThan) {
      return false;
    }
    final l$lessThanOrEqual = lessThanOrEqual;
    final lOther$lessThanOrEqual = other.lessThanOrEqual;
    if (_$data.containsKey('lessThanOrEqual') !=
        other._$data.containsKey('lessThanOrEqual')) {
      return false;
    }
    if (l$lessThanOrEqual != lOther$lessThanOrEqual) {
      return false;
    }
    final l$greaterThanOrEqual = greaterThanOrEqual;
    final lOther$greaterThanOrEqual = other.greaterThanOrEqual;
    if (_$data.containsKey('greaterThanOrEqual') !=
        other._$data.containsKey('greaterThanOrEqual')) {
      return false;
    }
    if (l$greaterThanOrEqual != lOther$greaterThanOrEqual) {
      return false;
    }
    final l$contains = contains;
    final lOther$contains = other.contains;
    if (_$data.containsKey('contains') !=
        other._$data.containsKey('contains')) {
      return false;
    }
    if (l$contains != lOther$contains) {
      return false;
    }
    final l$isDistinctFrom = isDistinctFrom;
    final lOther$isDistinctFrom = other.isDistinctFrom;
    if (_$data.containsKey('isDistinctFrom') !=
        other._$data.containsKey('isDistinctFrom')) {
      return false;
    }
    if (l$isDistinctFrom != lOther$isDistinctFrom) {
      return false;
    }
    final l$isNotDistinctFrom = isNotDistinctFrom;
    final lOther$isNotDistinctFrom = other.isNotDistinctFrom;
    if (_$data.containsKey('isNotDistinctFrom') !=
        other._$data.containsKey('isNotDistinctFrom')) {
      return false;
    }
    if (l$isNotDistinctFrom != lOther$isNotDistinctFrom) {
      return false;
    }
    final l$stringEndsWith = stringEndsWith;
    final lOther$stringEndsWith = other.stringEndsWith;
    if (_$data.containsKey('stringEndsWith') !=
        other._$data.containsKey('stringEndsWith')) {
      return false;
    }
    if (l$stringEndsWith != lOther$stringEndsWith) {
      return false;
    }
    final l$stringStartsWith = stringStartsWith;
    final lOther$stringStartsWith = other.stringStartsWith;
    if (_$data.containsKey('stringStartsWith') !=
        other._$data.containsKey('stringStartsWith')) {
      return false;
    }
    if (l$stringStartsWith != lOther$stringStartsWith) {
      return false;
    }
    final l$like = like;
    final lOther$like = other.like;
    if (_$data.containsKey('like') != other._$data.containsKey('like')) {
      return false;
    }
    if (l$like != lOther$like) {
      return false;
    }
    final l$ilike = ilike;
    final lOther$ilike = other.ilike;
    if (_$data.containsKey('ilike') != other._$data.containsKey('ilike')) {
      return false;
    }
    if (l$ilike != lOther$ilike) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$isNil = isNil;
    final l$eq = eq;
    final l$notEq = notEq;
    final l$$in = $in;
    final l$lessThan = lessThan;
    final l$greaterThan = greaterThan;
    final l$lessThanOrEqual = lessThanOrEqual;
    final l$greaterThanOrEqual = greaterThanOrEqual;
    final l$contains = contains;
    final l$isDistinctFrom = isDistinctFrom;
    final l$isNotDistinctFrom = isNotDistinctFrom;
    final l$stringEndsWith = stringEndsWith;
    final l$stringStartsWith = stringStartsWith;
    final l$like = like;
    final l$ilike = ilike;
    return Object.hashAll([
      _$data.containsKey('isNil') ? l$isNil : const {},
      _$data.containsKey('eq') ? l$eq : const {},
      _$data.containsKey('notEq') ? l$notEq : const {},
      _$data.containsKey('in')
          ? l$$in == null
                ? null
                : Object.hashAll(l$$in.map((v) => v))
          : const {},
      _$data.containsKey('lessThan') ? l$lessThan : const {},
      _$data.containsKey('greaterThan') ? l$greaterThan : const {},
      _$data.containsKey('lessThanOrEqual') ? l$lessThanOrEqual : const {},
      _$data.containsKey('greaterThanOrEqual')
          ? l$greaterThanOrEqual
          : const {},
      _$data.containsKey('contains') ? l$contains : const {},
      _$data.containsKey('isDistinctFrom') ? l$isDistinctFrom : const {},
      _$data.containsKey('isNotDistinctFrom') ? l$isNotDistinctFrom : const {},
      _$data.containsKey('stringEndsWith') ? l$stringEndsWith : const {},
      _$data.containsKey('stringStartsWith') ? l$stringStartsWith : const {},
      _$data.containsKey('like') ? l$like : const {},
      _$data.containsKey('ilike') ? l$ilike : const {},
    ]);
  }
}

abstract class CopyWith_Input_FamilyFilterAddressFullAddressText<TRes> {
  factory CopyWith_Input_FamilyFilterAddressFullAddressText(
    Input_FamilyFilterAddressFullAddressText instance,
    TRes Function(Input_FamilyFilterAddressFullAddressText) then,
  ) = _CopyWithImpl_Input_FamilyFilterAddressFullAddressText;

  factory CopyWith_Input_FamilyFilterAddressFullAddressText.stub(TRes res) =
      _CopyWithStubImpl_Input_FamilyFilterAddressFullAddressText;

  TRes call({
    bool? isNil,
    String? eq,
    String? notEq,
    List<String?>? $in,
    String? lessThan,
    String? greaterThan,
    String? lessThanOrEqual,
    String? greaterThanOrEqual,
    String? contains,
    String? isDistinctFrom,
    String? isNotDistinctFrom,
    String? stringEndsWith,
    String? stringStartsWith,
    String? like,
    String? ilike,
  });
}

class _CopyWithImpl_Input_FamilyFilterAddressFullAddressText<TRes>
    implements CopyWith_Input_FamilyFilterAddressFullAddressText<TRes> {
  _CopyWithImpl_Input_FamilyFilterAddressFullAddressText(
    this._instance,
    this._then,
  );

  final Input_FamilyFilterAddressFullAddressText _instance;

  final TRes Function(Input_FamilyFilterAddressFullAddressText) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? isNil = _undefined,
    Object? eq = _undefined,
    Object? notEq = _undefined,
    Object? $in = _undefined,
    Object? lessThan = _undefined,
    Object? greaterThan = _undefined,
    Object? lessThanOrEqual = _undefined,
    Object? greaterThanOrEqual = _undefined,
    Object? contains = _undefined,
    Object? isDistinctFrom = _undefined,
    Object? isNotDistinctFrom = _undefined,
    Object? stringEndsWith = _undefined,
    Object? stringStartsWith = _undefined,
    Object? like = _undefined,
    Object? ilike = _undefined,
  }) => _then(
    Input_FamilyFilterAddressFullAddressText._({
      ..._instance._$data,
      if (isNil != _undefined) 'isNil': (isNil as bool?),
      if (eq != _undefined) 'eq': (eq as String?),
      if (notEq != _undefined) 'notEq': (notEq as String?),
      if ($in != _undefined) 'in': ($in as List<String?>?),
      if (lessThan != _undefined) 'lessThan': (lessThan as String?),
      if (greaterThan != _undefined) 'greaterThan': (greaterThan as String?),
      if (lessThanOrEqual != _undefined)
        'lessThanOrEqual': (lessThanOrEqual as String?),
      if (greaterThanOrEqual != _undefined)
        'greaterThanOrEqual': (greaterThanOrEqual as String?),
      if (contains != _undefined) 'contains': (contains as String?),
      if (isDistinctFrom != _undefined)
        'isDistinctFrom': (isDistinctFrom as String?),
      if (isNotDistinctFrom != _undefined)
        'isNotDistinctFrom': (isNotDistinctFrom as String?),
      if (stringEndsWith != _undefined)
        'stringEndsWith': (stringEndsWith as String?),
      if (stringStartsWith != _undefined)
        'stringStartsWith': (stringStartsWith as String?),
      if (like != _undefined) 'like': (like as String?),
      if (ilike != _undefined) 'ilike': (ilike as String?),
    }),
  );
}

class _CopyWithStubImpl_Input_FamilyFilterAddressFullAddressText<TRes>
    implements CopyWith_Input_FamilyFilterAddressFullAddressText<TRes> {
  _CopyWithStubImpl_Input_FamilyFilterAddressFullAddressText(this._res);

  TRes _res;

  call({
    bool? isNil,
    String? eq,
    String? notEq,
    List<String?>? $in,
    String? lessThan,
    String? greaterThan,
    String? lessThanOrEqual,
    String? greaterThanOrEqual,
    String? contains,
    String? isDistinctFrom,
    String? isNotDistinctFrom,
    String? stringEndsWith,
    String? stringStartsWith,
    String? like,
    String? ilike,
  }) => _res;
}

class Input_FamilyFilterAddressDistrictName {
  factory Input_FamilyFilterAddressDistrictName({
    bool? isNil,
    String? eq,
    String? notEq,
    List<String?>? $in,
    String? lessThan,
    String? greaterThan,
    String? lessThanOrEqual,
    String? greaterThanOrEqual,
    String? contains,
    String? isDistinctFrom,
    String? isNotDistinctFrom,
    String? stringEndsWith,
    String? stringStartsWith,
    String? like,
    String? ilike,
  }) => Input_FamilyFilterAddressDistrictName._({
    if (isNil != null) r'isNil': isNil,
    if (eq != null) r'eq': eq,
    if (notEq != null) r'notEq': notEq,
    if ($in != null) r'in': $in,
    if (lessThan != null) r'lessThan': lessThan,
    if (greaterThan != null) r'greaterThan': greaterThan,
    if (lessThanOrEqual != null) r'lessThanOrEqual': lessThanOrEqual,
    if (greaterThanOrEqual != null) r'greaterThanOrEqual': greaterThanOrEqual,
    if (contains != null) r'contains': contains,
    if (isDistinctFrom != null) r'isDistinctFrom': isDistinctFrom,
    if (isNotDistinctFrom != null) r'isNotDistinctFrom': isNotDistinctFrom,
    if (stringEndsWith != null) r'stringEndsWith': stringEndsWith,
    if (stringStartsWith != null) r'stringStartsWith': stringStartsWith,
    if (like != null) r'like': like,
    if (ilike != null) r'ilike': ilike,
  });

  Input_FamilyFilterAddressDistrictName._(this._$data);

  factory Input_FamilyFilterAddressDistrictName.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('isNil')) {
      final l$isNil = data['isNil'];
      result$data['isNil'] = (l$isNil as bool?);
    }
    if (data.containsKey('eq')) {
      final l$eq = data['eq'];
      result$data['eq'] = (l$eq as String?);
    }
    if (data.containsKey('notEq')) {
      final l$notEq = data['notEq'];
      result$data['notEq'] = (l$notEq as String?);
    }
    if (data.containsKey('in')) {
      final l$$in = data['in'];
      result$data['in'] = (l$$in as List<dynamic>?)
          ?.map((e) => (e as String?))
          .toList();
    }
    if (data.containsKey('lessThan')) {
      final l$lessThan = data['lessThan'];
      result$data['lessThan'] = (l$lessThan as String?);
    }
    if (data.containsKey('greaterThan')) {
      final l$greaterThan = data['greaterThan'];
      result$data['greaterThan'] = (l$greaterThan as String?);
    }
    if (data.containsKey('lessThanOrEqual')) {
      final l$lessThanOrEqual = data['lessThanOrEqual'];
      result$data['lessThanOrEqual'] = (l$lessThanOrEqual as String?);
    }
    if (data.containsKey('greaterThanOrEqual')) {
      final l$greaterThanOrEqual = data['greaterThanOrEqual'];
      result$data['greaterThanOrEqual'] = (l$greaterThanOrEqual as String?);
    }
    if (data.containsKey('contains')) {
      final l$contains = data['contains'];
      result$data['contains'] = (l$contains as String?);
    }
    if (data.containsKey('isDistinctFrom')) {
      final l$isDistinctFrom = data['isDistinctFrom'];
      result$data['isDistinctFrom'] = (l$isDistinctFrom as String?);
    }
    if (data.containsKey('isNotDistinctFrom')) {
      final l$isNotDistinctFrom = data['isNotDistinctFrom'];
      result$data['isNotDistinctFrom'] = (l$isNotDistinctFrom as String?);
    }
    if (data.containsKey('stringEndsWith')) {
      final l$stringEndsWith = data['stringEndsWith'];
      result$data['stringEndsWith'] = (l$stringEndsWith as String?);
    }
    if (data.containsKey('stringStartsWith')) {
      final l$stringStartsWith = data['stringStartsWith'];
      result$data['stringStartsWith'] = (l$stringStartsWith as String?);
    }
    if (data.containsKey('like')) {
      final l$like = data['like'];
      result$data['like'] = (l$like as String?);
    }
    if (data.containsKey('ilike')) {
      final l$ilike = data['ilike'];
      result$data['ilike'] = (l$ilike as String?);
    }
    return Input_FamilyFilterAddressDistrictName._(result$data);
  }

  Map<String, dynamic> _$data;

  bool? get isNil => (_$data['isNil'] as bool?);

  String? get eq => (_$data['eq'] as String?);

  String? get notEq => (_$data['notEq'] as String?);

  List<String?>? get $in => (_$data['in'] as List<String?>?);

  String? get lessThan => (_$data['lessThan'] as String?);

  String? get greaterThan => (_$data['greaterThan'] as String?);

  String? get lessThanOrEqual => (_$data['lessThanOrEqual'] as String?);

  String? get greaterThanOrEqual => (_$data['greaterThanOrEqual'] as String?);

  String? get contains => (_$data['contains'] as String?);

  String? get isDistinctFrom => (_$data['isDistinctFrom'] as String?);

  String? get isNotDistinctFrom => (_$data['isNotDistinctFrom'] as String?);

  String? get stringEndsWith => (_$data['stringEndsWith'] as String?);

  String? get stringStartsWith => (_$data['stringStartsWith'] as String?);

  String? get like => (_$data['like'] as String?);

  String? get ilike => (_$data['ilike'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('isNil')) {
      final l$isNil = isNil;
      result$data['isNil'] = l$isNil;
    }
    if (_$data.containsKey('eq')) {
      final l$eq = eq;
      result$data['eq'] = l$eq;
    }
    if (_$data.containsKey('notEq')) {
      final l$notEq = notEq;
      result$data['notEq'] = l$notEq;
    }
    if (_$data.containsKey('in')) {
      final l$$in = $in;
      result$data['in'] = l$$in?.map((e) => e).toList();
    }
    if (_$data.containsKey('lessThan')) {
      final l$lessThan = lessThan;
      result$data['lessThan'] = l$lessThan;
    }
    if (_$data.containsKey('greaterThan')) {
      final l$greaterThan = greaterThan;
      result$data['greaterThan'] = l$greaterThan;
    }
    if (_$data.containsKey('lessThanOrEqual')) {
      final l$lessThanOrEqual = lessThanOrEqual;
      result$data['lessThanOrEqual'] = l$lessThanOrEqual;
    }
    if (_$data.containsKey('greaterThanOrEqual')) {
      final l$greaterThanOrEqual = greaterThanOrEqual;
      result$data['greaterThanOrEqual'] = l$greaterThanOrEqual;
    }
    if (_$data.containsKey('contains')) {
      final l$contains = contains;
      result$data['contains'] = l$contains;
    }
    if (_$data.containsKey('isDistinctFrom')) {
      final l$isDistinctFrom = isDistinctFrom;
      result$data['isDistinctFrom'] = l$isDistinctFrom;
    }
    if (_$data.containsKey('isNotDistinctFrom')) {
      final l$isNotDistinctFrom = isNotDistinctFrom;
      result$data['isNotDistinctFrom'] = l$isNotDistinctFrom;
    }
    if (_$data.containsKey('stringEndsWith')) {
      final l$stringEndsWith = stringEndsWith;
      result$data['stringEndsWith'] = l$stringEndsWith;
    }
    if (_$data.containsKey('stringStartsWith')) {
      final l$stringStartsWith = stringStartsWith;
      result$data['stringStartsWith'] = l$stringStartsWith;
    }
    if (_$data.containsKey('like')) {
      final l$like = like;
      result$data['like'] = l$like;
    }
    if (_$data.containsKey('ilike')) {
      final l$ilike = ilike;
      result$data['ilike'] = l$ilike;
    }
    return result$data;
  }

  CopyWith_Input_FamilyFilterAddressDistrictName<
    Input_FamilyFilterAddressDistrictName
  >
  get copyWith =>
      CopyWith_Input_FamilyFilterAddressDistrictName(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_FamilyFilterAddressDistrictName ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$isNil = isNil;
    final lOther$isNil = other.isNil;
    if (_$data.containsKey('isNil') != other._$data.containsKey('isNil')) {
      return false;
    }
    if (l$isNil != lOther$isNil) {
      return false;
    }
    final l$eq = eq;
    final lOther$eq = other.eq;
    if (_$data.containsKey('eq') != other._$data.containsKey('eq')) {
      return false;
    }
    if (l$eq != lOther$eq) {
      return false;
    }
    final l$notEq = notEq;
    final lOther$notEq = other.notEq;
    if (_$data.containsKey('notEq') != other._$data.containsKey('notEq')) {
      return false;
    }
    if (l$notEq != lOther$notEq) {
      return false;
    }
    final l$$in = $in;
    final lOther$$in = other.$in;
    if (_$data.containsKey('in') != other._$data.containsKey('in')) {
      return false;
    }
    if (l$$in != null && lOther$$in != null) {
      if (l$$in.length != lOther$$in.length) {
        return false;
      }
      for (int i = 0; i < l$$in.length; i++) {
        final l$$in$entry = l$$in[i];
        final lOther$$in$entry = lOther$$in[i];
        if (l$$in$entry != lOther$$in$entry) {
          return false;
        }
      }
    } else if (l$$in != lOther$$in) {
      return false;
    }
    final l$lessThan = lessThan;
    final lOther$lessThan = other.lessThan;
    if (_$data.containsKey('lessThan') !=
        other._$data.containsKey('lessThan')) {
      return false;
    }
    if (l$lessThan != lOther$lessThan) {
      return false;
    }
    final l$greaterThan = greaterThan;
    final lOther$greaterThan = other.greaterThan;
    if (_$data.containsKey('greaterThan') !=
        other._$data.containsKey('greaterThan')) {
      return false;
    }
    if (l$greaterThan != lOther$greaterThan) {
      return false;
    }
    final l$lessThanOrEqual = lessThanOrEqual;
    final lOther$lessThanOrEqual = other.lessThanOrEqual;
    if (_$data.containsKey('lessThanOrEqual') !=
        other._$data.containsKey('lessThanOrEqual')) {
      return false;
    }
    if (l$lessThanOrEqual != lOther$lessThanOrEqual) {
      return false;
    }
    final l$greaterThanOrEqual = greaterThanOrEqual;
    final lOther$greaterThanOrEqual = other.greaterThanOrEqual;
    if (_$data.containsKey('greaterThanOrEqual') !=
        other._$data.containsKey('greaterThanOrEqual')) {
      return false;
    }
    if (l$greaterThanOrEqual != lOther$greaterThanOrEqual) {
      return false;
    }
    final l$contains = contains;
    final lOther$contains = other.contains;
    if (_$data.containsKey('contains') !=
        other._$data.containsKey('contains')) {
      return false;
    }
    if (l$contains != lOther$contains) {
      return false;
    }
    final l$isDistinctFrom = isDistinctFrom;
    final lOther$isDistinctFrom = other.isDistinctFrom;
    if (_$data.containsKey('isDistinctFrom') !=
        other._$data.containsKey('isDistinctFrom')) {
      return false;
    }
    if (l$isDistinctFrom != lOther$isDistinctFrom) {
      return false;
    }
    final l$isNotDistinctFrom = isNotDistinctFrom;
    final lOther$isNotDistinctFrom = other.isNotDistinctFrom;
    if (_$data.containsKey('isNotDistinctFrom') !=
        other._$data.containsKey('isNotDistinctFrom')) {
      return false;
    }
    if (l$isNotDistinctFrom != lOther$isNotDistinctFrom) {
      return false;
    }
    final l$stringEndsWith = stringEndsWith;
    final lOther$stringEndsWith = other.stringEndsWith;
    if (_$data.containsKey('stringEndsWith') !=
        other._$data.containsKey('stringEndsWith')) {
      return false;
    }
    if (l$stringEndsWith != lOther$stringEndsWith) {
      return false;
    }
    final l$stringStartsWith = stringStartsWith;
    final lOther$stringStartsWith = other.stringStartsWith;
    if (_$data.containsKey('stringStartsWith') !=
        other._$data.containsKey('stringStartsWith')) {
      return false;
    }
    if (l$stringStartsWith != lOther$stringStartsWith) {
      return false;
    }
    final l$like = like;
    final lOther$like = other.like;
    if (_$data.containsKey('like') != other._$data.containsKey('like')) {
      return false;
    }
    if (l$like != lOther$like) {
      return false;
    }
    final l$ilike = ilike;
    final lOther$ilike = other.ilike;
    if (_$data.containsKey('ilike') != other._$data.containsKey('ilike')) {
      return false;
    }
    if (l$ilike != lOther$ilike) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$isNil = isNil;
    final l$eq = eq;
    final l$notEq = notEq;
    final l$$in = $in;
    final l$lessThan = lessThan;
    final l$greaterThan = greaterThan;
    final l$lessThanOrEqual = lessThanOrEqual;
    final l$greaterThanOrEqual = greaterThanOrEqual;
    final l$contains = contains;
    final l$isDistinctFrom = isDistinctFrom;
    final l$isNotDistinctFrom = isNotDistinctFrom;
    final l$stringEndsWith = stringEndsWith;
    final l$stringStartsWith = stringStartsWith;
    final l$like = like;
    final l$ilike = ilike;
    return Object.hashAll([
      _$data.containsKey('isNil') ? l$isNil : const {},
      _$data.containsKey('eq') ? l$eq : const {},
      _$data.containsKey('notEq') ? l$notEq : const {},
      _$data.containsKey('in')
          ? l$$in == null
                ? null
                : Object.hashAll(l$$in.map((v) => v))
          : const {},
      _$data.containsKey('lessThan') ? l$lessThan : const {},
      _$data.containsKey('greaterThan') ? l$greaterThan : const {},
      _$data.containsKey('lessThanOrEqual') ? l$lessThanOrEqual : const {},
      _$data.containsKey('greaterThanOrEqual')
          ? l$greaterThanOrEqual
          : const {},
      _$data.containsKey('contains') ? l$contains : const {},
      _$data.containsKey('isDistinctFrom') ? l$isDistinctFrom : const {},
      _$data.containsKey('isNotDistinctFrom') ? l$isNotDistinctFrom : const {},
      _$data.containsKey('stringEndsWith') ? l$stringEndsWith : const {},
      _$data.containsKey('stringStartsWith') ? l$stringStartsWith : const {},
      _$data.containsKey('like') ? l$like : const {},
      _$data.containsKey('ilike') ? l$ilike : const {},
    ]);
  }
}
