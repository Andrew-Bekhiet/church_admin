// Part 25 of the schema
part of "schema.graphql.dart";

abstract class CopyWith_Input_FamilyFilterName<TRes> {
  factory CopyWith_Input_FamilyFilterName(
    Input_FamilyFilterName instance,
    TRes Function(Input_FamilyFilterName) then,
  ) = _CopyWithImpl_Input_FamilyFilterName;

  factory CopyWith_Input_FamilyFilterName.stub(TRes res) =
      _CopyWithStubImpl_Input_FamilyFilterName;

  TRes call({
    bool? isNil,
    String? eq,
    String? notEq,
    List<String>? $in,
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

class _CopyWithImpl_Input_FamilyFilterName<TRes>
    implements CopyWith_Input_FamilyFilterName<TRes> {
  _CopyWithImpl_Input_FamilyFilterName(this._instance, this._then);

  final Input_FamilyFilterName _instance;

  final TRes Function(Input_FamilyFilterName) _then;

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
    Input_FamilyFilterName._({
      ..._instance._$data,
      if (isNil != _undefined) 'isNil': (isNil as bool?),
      if (eq != _undefined) 'eq': (eq as String?),
      if (notEq != _undefined) 'notEq': (notEq as String?),
      if ($in != _undefined) 'in': ($in as List<String>?),
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

class _CopyWithStubImpl_Input_FamilyFilterName<TRes>
    implements CopyWith_Input_FamilyFilterName<TRes> {
  _CopyWithStubImpl_Input_FamilyFilterName(this._res);

  TRes _res;

  call({
    bool? isNil,
    String? eq,
    String? notEq,
    List<String>? $in,
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

class Input_FamilyFilterId {
  factory Input_FamilyFilterId({
    bool? isNil,
    String? eq,
    String? notEq,
    List<String>? $in,
    String? lessThan,
    String? greaterThan,
    String? lessThanOrEqual,
    String? greaterThanOrEqual,
    String? isDistinctFrom,
    String? isNotDistinctFrom,
  }) => Input_FamilyFilterId._({
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

  Input_FamilyFilterId._(this._$data);

  factory Input_FamilyFilterId.fromJson(Map<String, dynamic> data) {
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
          ?.map((e) => (e as String))
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
    if (data.containsKey('isDistinctFrom')) {
      final l$isDistinctFrom = data['isDistinctFrom'];
      result$data['isDistinctFrom'] = (l$isDistinctFrom as String?);
    }
    if (data.containsKey('isNotDistinctFrom')) {
      final l$isNotDistinctFrom = data['isNotDistinctFrom'];
      result$data['isNotDistinctFrom'] = (l$isNotDistinctFrom as String?);
    }
    return Input_FamilyFilterId._(result$data);
  }

  Map<String, dynamic> _$data;

  bool? get isNil => (_$data['isNil'] as bool?);

  String? get eq => (_$data['eq'] as String?);

  String? get notEq => (_$data['notEq'] as String?);

  List<String>? get $in => (_$data['in'] as List<String>?);

  String? get lessThan => (_$data['lessThan'] as String?);

  String? get greaterThan => (_$data['greaterThan'] as String?);

  String? get lessThanOrEqual => (_$data['lessThanOrEqual'] as String?);

  String? get greaterThanOrEqual => (_$data['greaterThanOrEqual'] as String?);

  String? get isDistinctFrom => (_$data['isDistinctFrom'] as String?);

  String? get isNotDistinctFrom => (_$data['isNotDistinctFrom'] as String?);

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

  CopyWith_Input_FamilyFilterId<Input_FamilyFilterId> get copyWith =>
      CopyWith_Input_FamilyFilterId(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_FamilyFilterId || runtimeType != other.runtimeType) {
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

abstract class CopyWith_Input_FamilyFilterId<TRes> {
  factory CopyWith_Input_FamilyFilterId(
    Input_FamilyFilterId instance,
    TRes Function(Input_FamilyFilterId) then,
  ) = _CopyWithImpl_Input_FamilyFilterId;

  factory CopyWith_Input_FamilyFilterId.stub(TRes res) =
      _CopyWithStubImpl_Input_FamilyFilterId;

  TRes call({
    bool? isNil,
    String? eq,
    String? notEq,
    List<String>? $in,
    String? lessThan,
    String? greaterThan,
    String? lessThanOrEqual,
    String? greaterThanOrEqual,
    String? isDistinctFrom,
    String? isNotDistinctFrom,
  });
}

class _CopyWithImpl_Input_FamilyFilterId<TRes>
    implements CopyWith_Input_FamilyFilterId<TRes> {
  _CopyWithImpl_Input_FamilyFilterId(this._instance, this._then);

  final Input_FamilyFilterId _instance;

  final TRes Function(Input_FamilyFilterId) _then;

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
    Input_FamilyFilterId._({
      ..._instance._$data,
      if (isNil != _undefined) 'isNil': (isNil as bool?),
      if (eq != _undefined) 'eq': (eq as String?),
      if (notEq != _undefined) 'notEq': (notEq as String?),
      if ($in != _undefined) 'in': ($in as List<String>?),
      if (lessThan != _undefined) 'lessThan': (lessThan as String?),
      if (greaterThan != _undefined) 'greaterThan': (greaterThan as String?),
      if (lessThanOrEqual != _undefined)
        'lessThanOrEqual': (lessThanOrEqual as String?),
      if (greaterThanOrEqual != _undefined)
        'greaterThanOrEqual': (greaterThanOrEqual as String?),
      if (isDistinctFrom != _undefined)
        'isDistinctFrom': (isDistinctFrom as String?),
      if (isNotDistinctFrom != _undefined)
        'isNotDistinctFrom': (isNotDistinctFrom as String?),
    }),
  );
}

class _CopyWithStubImpl_Input_FamilyFilterId<TRes>
    implements CopyWith_Input_FamilyFilterId<TRes> {
  _CopyWithStubImpl_Input_FamilyFilterId(this._res);

  TRes _res;

  call({
    bool? isNil,
    String? eq,
    String? notEq,
    List<String>? $in,
    String? lessThan,
    String? greaterThan,
    String? lessThanOrEqual,
    String? greaterThanOrEqual,
    String? isDistinctFrom,
    String? isNotDistinctFrom,
  }) => _res;
}

class Input_FamilyFilterInput {
  factory Input_FamilyFilterInput({
    List<Input_FamilyFilterInput>? and,
    List<Input_FamilyFilterInput>? or,
    List<Input_FamilyFilterInput>? not,
    Input_FamilyFilterId? id,
    Input_FamilyFilterName? name,
    Input_FamilyFilterNotes? notes,
    Input_FamilyFilterColor? color,
    Input_FamilyFilterPhotoUpdatedAt? photoUpdatedAt,
    Input_FamilyFilterBlurhash? blurhash,
    Input_FamilyFilterStatus? status,
    Input_FamilyFilterDeceasedSpouseName? deceasedSpouseName,
    Input_FamilyFilterMarriageDate? marriageDate,
    Input_FamilyFilterChurchId? churchId,
    Input_ChurchFilterInput? church,
    Input_AddressFilterInput? address,
    Input_DataCheckFilterInput? dataCheck,
    Input_LatestEditFilterInput? latestEdit,
    Input_EditFilterInput? edits,
    Input_LatestVisitFilterInput? latestVisit,
    Input_VisitFilterInput? visits,
    Input_LatestFatherVisitFilterInput? latestFatherVisit,
    Input_FamilyFilterInput? children,
    Input_FamilyFilterInput? parents,
    Input_FamilyContactFilterInput? contacts,
    Input_ContactFilterInput? unclaimedContacts,
    Input_PersonFilterInput? persons,
    Input_FamilyFilterLastEdit? lastEdit,
    Input_FamilyFilterLastEditUserName? lastEditUserName,
    Input_FamilyFilterLastVisit? lastVisit,
    Input_FamilyFilterLastVisitUserName? lastVisitUserName,
    Input_FamilyFilterLastFatherVisit? lastFatherVisit,
    Input_FamilyFilterLastFatherVisitUserName? lastFatherVisitUserName,
    Input_FamilyFilterChurchName? churchName,
    Input_FamilyFilterAddressAreaName? addressAreaName,
    Input_FamilyFilterAddressStreetName? addressStreetName,
    Input_FamilyFilterAddressDistrictName? addressDistrictName,
    Input_FamilyFilterAddressFullAddressText? addressFullAddressText,
    Input_FamilyFilterUserCanEdit? userCanEdit,
  }) => Input_FamilyFilterInput._({
    if (and != null) r'and': and,
    if (or != null) r'or': or,
    if (not != null) r'not': not,
    if (id != null) r'id': id,
    if (name != null) r'name': name,
    if (notes != null) r'notes': notes,
    if (color != null) r'color': color,
    if (photoUpdatedAt != null) r'photoUpdatedAt': photoUpdatedAt,
    if (blurhash != null) r'blurhash': blurhash,
    if (status != null) r'status': status,
    if (deceasedSpouseName != null) r'deceasedSpouseName': deceasedSpouseName,
    if (marriageDate != null) r'marriageDate': marriageDate,
    if (churchId != null) r'churchId': churchId,
    if (church != null) r'church': church,
    if (address != null) r'address': address,
    if (dataCheck != null) r'dataCheck': dataCheck,
    if (latestEdit != null) r'latestEdit': latestEdit,
    if (edits != null) r'edits': edits,
    if (latestVisit != null) r'latestVisit': latestVisit,
    if (visits != null) r'visits': visits,
    if (latestFatherVisit != null) r'latestFatherVisit': latestFatherVisit,
    if (children != null) r'children': children,
    if (parents != null) r'parents': parents,
    if (contacts != null) r'contacts': contacts,
    if (unclaimedContacts != null) r'unclaimedContacts': unclaimedContacts,
    if (persons != null) r'persons': persons,
    if (lastEdit != null) r'lastEdit': lastEdit,
    if (lastEditUserName != null) r'lastEditUserName': lastEditUserName,
    if (lastVisit != null) r'lastVisit': lastVisit,
    if (lastVisitUserName != null) r'lastVisitUserName': lastVisitUserName,
    if (lastFatherVisit != null) r'lastFatherVisit': lastFatherVisit,
    if (lastFatherVisitUserName != null)
      r'lastFatherVisitUserName': lastFatherVisitUserName,
    if (churchName != null) r'churchName': churchName,
    if (addressAreaName != null) r'addressAreaName': addressAreaName,
    if (addressStreetName != null) r'addressStreetName': addressStreetName,
    if (addressDistrictName != null)
      r'addressDistrictName': addressDistrictName,
    if (addressFullAddressText != null)
      r'addressFullAddressText': addressFullAddressText,
    if (userCanEdit != null) r'userCanEdit': userCanEdit,
  });

  Input_FamilyFilterInput._(this._$data);

  factory Input_FamilyFilterInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map(
            (e) =>
                Input_FamilyFilterInput.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map(
            (e) =>
                Input_FamilyFilterInput.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    if (data.containsKey('not')) {
      final l$not = data['not'];
      result$data['not'] = (l$not as List<dynamic>?)
          ?.map(
            (e) =>
                Input_FamilyFilterInput.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input_FamilyFilterId.fromJson((l$id as Map<String, dynamic>));
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = l$name == null
          ? null
          : Input_FamilyFilterName.fromJson((l$name as Map<String, dynamic>));
    }
    if (data.containsKey('notes')) {
      final l$notes = data['notes'];
      result$data['notes'] = l$notes == null
          ? null
          : Input_FamilyFilterNotes.fromJson((l$notes as Map<String, dynamic>));
    }
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = l$color == null
          ? null
          : Input_FamilyFilterColor.fromJson((l$color as Map<String, dynamic>));
    }
    if (data.containsKey('photoUpdatedAt')) {
      final l$photoUpdatedAt = data['photoUpdatedAt'];
      result$data['photoUpdatedAt'] = l$photoUpdatedAt == null
          ? null
          : Input_FamilyFilterPhotoUpdatedAt.fromJson(
              (l$photoUpdatedAt as Map<String, dynamic>),
            );
    }
    if (data.containsKey('blurhash')) {
      final l$blurhash = data['blurhash'];
      result$data['blurhash'] = l$blurhash == null
          ? null
          : Input_FamilyFilterBlurhash.fromJson(
              (l$blurhash as Map<String, dynamic>),
            );
    }
    if (data.containsKey('status')) {
      final l$status = data['status'];
      result$data['status'] = l$status == null
          ? null
          : Input_FamilyFilterStatus.fromJson(
              (l$status as Map<String, dynamic>),
            );
    }
    if (data.containsKey('deceasedSpouseName')) {
      final l$deceasedSpouseName = data['deceasedSpouseName'];
      result$data['deceasedSpouseName'] = l$deceasedSpouseName == null
          ? null
          : Input_FamilyFilterDeceasedSpouseName.fromJson(
              (l$deceasedSpouseName as Map<String, dynamic>),
            );
    }
    if (data.containsKey('marriageDate')) {
      final l$marriageDate = data['marriageDate'];
      result$data['marriageDate'] = l$marriageDate == null
          ? null
          : Input_FamilyFilterMarriageDate.fromJson(
              (l$marriageDate as Map<String, dynamic>),
            );
    }
    if (data.containsKey('churchId')) {
      final l$churchId = data['churchId'];
      result$data['churchId'] = l$churchId == null
          ? null
          : Input_FamilyFilterChurchId.fromJson(
              (l$churchId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('church')) {
      final l$church = data['church'];
      result$data['church'] = l$church == null
          ? null
          : Input_ChurchFilterInput.fromJson(
              (l$church as Map<String, dynamic>),
            );
    }
    if (data.containsKey('address')) {
      final l$address = data['address'];
      result$data['address'] = l$address == null
          ? null
          : Input_AddressFilterInput.fromJson(
              (l$address as Map<String, dynamic>),
            );
    }
    if (data.containsKey('dataCheck')) {
      final l$dataCheck = data['dataCheck'];
      result$data['dataCheck'] = l$dataCheck == null
          ? null
          : Input_DataCheckFilterInput.fromJson(
              (l$dataCheck as Map<String, dynamic>),
            );
    }
    if (data.containsKey('latestEdit')) {
      final l$latestEdit = data['latestEdit'];
      result$data['latestEdit'] = l$latestEdit == null
          ? null
          : Input_LatestEditFilterInput.fromJson(
              (l$latestEdit as Map<String, dynamic>),
            );
    }
    if (data.containsKey('edits')) {
      final l$edits = data['edits'];
      result$data['edits'] = l$edits == null
          ? null
          : Input_EditFilterInput.fromJson((l$edits as Map<String, dynamic>));
    }
    if (data.containsKey('latestVisit')) {
      final l$latestVisit = data['latestVisit'];
      result$data['latestVisit'] = l$latestVisit == null
          ? null
          : Input_LatestVisitFilterInput.fromJson(
              (l$latestVisit as Map<String, dynamic>),
            );
    }
    if (data.containsKey('visits')) {
      final l$visits = data['visits'];
      result$data['visits'] = l$visits == null
          ? null
          : Input_VisitFilterInput.fromJson((l$visits as Map<String, dynamic>));
    }
    if (data.containsKey('latestFatherVisit')) {
      final l$latestFatherVisit = data['latestFatherVisit'];
      result$data['latestFatherVisit'] = l$latestFatherVisit == null
          ? null
          : Input_LatestFatherVisitFilterInput.fromJson(
              (l$latestFatherVisit as Map<String, dynamic>),
            );
    }
    if (data.containsKey('children')) {
      final l$children = data['children'];
      result$data['children'] = l$children == null
          ? null
          : Input_FamilyFilterInput.fromJson(
              (l$children as Map<String, dynamic>),
            );
    }
    if (data.containsKey('parents')) {
      final l$parents = data['parents'];
      result$data['parents'] = l$parents == null
          ? null
          : Input_FamilyFilterInput.fromJson(
              (l$parents as Map<String, dynamic>),
            );
    }
    if (data.containsKey('contacts')) {
      final l$contacts = data['contacts'];
      result$data['contacts'] = l$contacts == null
          ? null
          : Input_FamilyContactFilterInput.fromJson(
              (l$contacts as Map<String, dynamic>),
            );
    }
    if (data.containsKey('unclaimedContacts')) {
      final l$unclaimedContacts = data['unclaimedContacts'];
      result$data['unclaimedContacts'] = l$unclaimedContacts == null
          ? null
          : Input_ContactFilterInput.fromJson(
              (l$unclaimedContacts as Map<String, dynamic>),
            );
    }
    if (data.containsKey('persons')) {
      final l$persons = data['persons'];
      result$data['persons'] = l$persons == null
          ? null
          : Input_PersonFilterInput.fromJson(
              (l$persons as Map<String, dynamic>),
            );
    }
    if (data.containsKey('lastEdit')) {
      final l$lastEdit = data['lastEdit'];
      result$data['lastEdit'] = l$lastEdit == null
          ? null
          : Input_FamilyFilterLastEdit.fromJson(
              (l$lastEdit as Map<String, dynamic>),
            );
    }
    if (data.containsKey('lastEditUserName')) {
      final l$lastEditUserName = data['lastEditUserName'];
      result$data['lastEditUserName'] = l$lastEditUserName == null
          ? null
          : Input_FamilyFilterLastEditUserName.fromJson(
              (l$lastEditUserName as Map<String, dynamic>),
            );
    }
    if (data.containsKey('lastVisit')) {
      final l$lastVisit = data['lastVisit'];
      result$data['lastVisit'] = l$lastVisit == null
          ? null
          : Input_FamilyFilterLastVisit.fromJson(
              (l$lastVisit as Map<String, dynamic>),
            );
    }
    if (data.containsKey('lastVisitUserName')) {
      final l$lastVisitUserName = data['lastVisitUserName'];
      result$data['lastVisitUserName'] = l$lastVisitUserName == null
          ? null
          : Input_FamilyFilterLastVisitUserName.fromJson(
              (l$lastVisitUserName as Map<String, dynamic>),
            );
    }
    if (data.containsKey('lastFatherVisit')) {
      final l$lastFatherVisit = data['lastFatherVisit'];
      result$data['lastFatherVisit'] = l$lastFatherVisit == null
          ? null
          : Input_FamilyFilterLastFatherVisit.fromJson(
              (l$lastFatherVisit as Map<String, dynamic>),
            );
    }
    if (data.containsKey('lastFatherVisitUserName')) {
      final l$lastFatherVisitUserName = data['lastFatherVisitUserName'];
      result$data['lastFatherVisitUserName'] = l$lastFatherVisitUserName == null
          ? null
          : Input_FamilyFilterLastFatherVisitUserName.fromJson(
              (l$lastFatherVisitUserName as Map<String, dynamic>),
            );
    }
    if (data.containsKey('churchName')) {
      final l$churchName = data['churchName'];
      result$data['churchName'] = l$churchName == null
          ? null
          : Input_FamilyFilterChurchName.fromJson(
              (l$churchName as Map<String, dynamic>),
            );
    }
    if (data.containsKey('addressAreaName')) {
      final l$addressAreaName = data['addressAreaName'];
      result$data['addressAreaName'] = l$addressAreaName == null
          ? null
          : Input_FamilyFilterAddressAreaName.fromJson(
              (l$addressAreaName as Map<String, dynamic>),
            );
    }
    if (data.containsKey('addressStreetName')) {
      final l$addressStreetName = data['addressStreetName'];
      result$data['addressStreetName'] = l$addressStreetName == null
          ? null
          : Input_FamilyFilterAddressStreetName.fromJson(
              (l$addressStreetName as Map<String, dynamic>),
            );
    }
    if (data.containsKey('addressDistrictName')) {
      final l$addressDistrictName = data['addressDistrictName'];
      result$data['addressDistrictName'] = l$addressDistrictName == null
          ? null
          : Input_FamilyFilterAddressDistrictName.fromJson(
              (l$addressDistrictName as Map<String, dynamic>),
            );
    }
    if (data.containsKey('addressFullAddressText')) {
      final l$addressFullAddressText = data['addressFullAddressText'];
      result$data['addressFullAddressText'] = l$addressFullAddressText == null
          ? null
          : Input_FamilyFilterAddressFullAddressText.fromJson(
              (l$addressFullAddressText as Map<String, dynamic>),
            );
    }
    if (data.containsKey('userCanEdit')) {
      final l$userCanEdit = data['userCanEdit'];
      result$data['userCanEdit'] = l$userCanEdit == null
          ? null
          : Input_FamilyFilterUserCanEdit.fromJson(
              (l$userCanEdit as Map<String, dynamic>),
            );
    }
    return Input_FamilyFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_FamilyFilterInput>? get and =>
      (_$data['and'] as List<Input_FamilyFilterInput>?);

  List<Input_FamilyFilterInput>? get or =>
      (_$data['or'] as List<Input_FamilyFilterInput>?);

  List<Input_FamilyFilterInput>? get not =>
      (_$data['not'] as List<Input_FamilyFilterInput>?);

  Input_FamilyFilterId? get id => (_$data['id'] as Input_FamilyFilterId?);

  Input_FamilyFilterName? get name =>
      (_$data['name'] as Input_FamilyFilterName?);

  Input_FamilyFilterNotes? get notes =>
      (_$data['notes'] as Input_FamilyFilterNotes?);

  Input_FamilyFilterColor? get color =>
      (_$data['color'] as Input_FamilyFilterColor?);

  Input_FamilyFilterPhotoUpdatedAt? get photoUpdatedAt =>
      (_$data['photoUpdatedAt'] as Input_FamilyFilterPhotoUpdatedAt?);

  Input_FamilyFilterBlurhash? get blurhash =>
      (_$data['blurhash'] as Input_FamilyFilterBlurhash?);

  Input_FamilyFilterStatus? get status =>
      (_$data['status'] as Input_FamilyFilterStatus?);

  Input_FamilyFilterDeceasedSpouseName? get deceasedSpouseName =>
      (_$data['deceasedSpouseName'] as Input_FamilyFilterDeceasedSpouseName?);

  Input_FamilyFilterMarriageDate? get marriageDate =>
      (_$data['marriageDate'] as Input_FamilyFilterMarriageDate?);

  Input_FamilyFilterChurchId? get churchId =>
      (_$data['churchId'] as Input_FamilyFilterChurchId?);

  Input_ChurchFilterInput? get church =>
      (_$data['church'] as Input_ChurchFilterInput?);

  Input_AddressFilterInput? get address =>
      (_$data['address'] as Input_AddressFilterInput?);

  Input_DataCheckFilterInput? get dataCheck =>
      (_$data['dataCheck'] as Input_DataCheckFilterInput?);

  Input_LatestEditFilterInput? get latestEdit =>
      (_$data['latestEdit'] as Input_LatestEditFilterInput?);

  Input_EditFilterInput? get edits =>
      (_$data['edits'] as Input_EditFilterInput?);

  Input_LatestVisitFilterInput? get latestVisit =>
      (_$data['latestVisit'] as Input_LatestVisitFilterInput?);

  Input_VisitFilterInput? get visits =>
      (_$data['visits'] as Input_VisitFilterInput?);

  Input_LatestFatherVisitFilterInput? get latestFatherVisit =>
      (_$data['latestFatherVisit'] as Input_LatestFatherVisitFilterInput?);

  Input_FamilyFilterInput? get children =>
      (_$data['children'] as Input_FamilyFilterInput?);

  Input_FamilyFilterInput? get parents =>
      (_$data['parents'] as Input_FamilyFilterInput?);

  Input_FamilyContactFilterInput? get contacts =>
      (_$data['contacts'] as Input_FamilyContactFilterInput?);

  Input_ContactFilterInput? get unclaimedContacts =>
      (_$data['unclaimedContacts'] as Input_ContactFilterInput?);

  Input_PersonFilterInput? get persons =>
      (_$data['persons'] as Input_PersonFilterInput?);

  Input_FamilyFilterLastEdit? get lastEdit =>
      (_$data['lastEdit'] as Input_FamilyFilterLastEdit?);

  Input_FamilyFilterLastEditUserName? get lastEditUserName =>
      (_$data['lastEditUserName'] as Input_FamilyFilterLastEditUserName?);

  Input_FamilyFilterLastVisit? get lastVisit =>
      (_$data['lastVisit'] as Input_FamilyFilterLastVisit?);

  Input_FamilyFilterLastVisitUserName? get lastVisitUserName =>
      (_$data['lastVisitUserName'] as Input_FamilyFilterLastVisitUserName?);

  Input_FamilyFilterLastFatherVisit? get lastFatherVisit =>
      (_$data['lastFatherVisit'] as Input_FamilyFilterLastFatherVisit?);

  Input_FamilyFilterLastFatherVisitUserName? get lastFatherVisitUserName =>
      (_$data['lastFatherVisitUserName']
          as Input_FamilyFilterLastFatherVisitUserName?);

  Input_FamilyFilterChurchName? get churchName =>
      (_$data['churchName'] as Input_FamilyFilterChurchName?);

  Input_FamilyFilterAddressAreaName? get addressAreaName =>
      (_$data['addressAreaName'] as Input_FamilyFilterAddressAreaName?);

  Input_FamilyFilterAddressStreetName? get addressStreetName =>
      (_$data['addressStreetName'] as Input_FamilyFilterAddressStreetName?);

  Input_FamilyFilterAddressDistrictName? get addressDistrictName =>
      (_$data['addressDistrictName'] as Input_FamilyFilterAddressDistrictName?);

  Input_FamilyFilterAddressFullAddressText? get addressFullAddressText =>
      (_$data['addressFullAddressText']
          as Input_FamilyFilterAddressFullAddressText?);

  Input_FamilyFilterUserCanEdit? get userCanEdit =>
      (_$data['userCanEdit'] as Input_FamilyFilterUserCanEdit?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('not')) {
      final l$not = not;
      result$data['not'] = l$not?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name?.toJson();
    }
    if (_$data.containsKey('notes')) {
      final l$notes = notes;
      result$data['notes'] = l$notes?.toJson();
    }
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color?.toJson();
    }
    if (_$data.containsKey('photoUpdatedAt')) {
      final l$photoUpdatedAt = photoUpdatedAt;
      result$data['photoUpdatedAt'] = l$photoUpdatedAt?.toJson();
    }
    if (_$data.containsKey('blurhash')) {
      final l$blurhash = blurhash;
      result$data['blurhash'] = l$blurhash?.toJson();
    }
    if (_$data.containsKey('status')) {
      final l$status = status;
      result$data['status'] = l$status?.toJson();
    }
    if (_$data.containsKey('deceasedSpouseName')) {
      final l$deceasedSpouseName = deceasedSpouseName;
      result$data['deceasedSpouseName'] = l$deceasedSpouseName?.toJson();
    }
    if (_$data.containsKey('marriageDate')) {
      final l$marriageDate = marriageDate;
      result$data['marriageDate'] = l$marriageDate?.toJson();
    }
    if (_$data.containsKey('churchId')) {
      final l$churchId = churchId;
      result$data['churchId'] = l$churchId?.toJson();
    }
    if (_$data.containsKey('church')) {
      final l$church = church;
      result$data['church'] = l$church?.toJson();
    }
    if (_$data.containsKey('address')) {
      final l$address = address;
      result$data['address'] = l$address?.toJson();
    }
    if (_$data.containsKey('dataCheck')) {
      final l$dataCheck = dataCheck;
      result$data['dataCheck'] = l$dataCheck?.toJson();
    }
    if (_$data.containsKey('latestEdit')) {
      final l$latestEdit = latestEdit;
      result$data['latestEdit'] = l$latestEdit?.toJson();
    }
    if (_$data.containsKey('edits')) {
      final l$edits = edits;
      result$data['edits'] = l$edits?.toJson();
    }
    if (_$data.containsKey('latestVisit')) {
      final l$latestVisit = latestVisit;
      result$data['latestVisit'] = l$latestVisit?.toJson();
    }
    if (_$data.containsKey('visits')) {
      final l$visits = visits;
      result$data['visits'] = l$visits?.toJson();
    }
    if (_$data.containsKey('latestFatherVisit')) {
      final l$latestFatherVisit = latestFatherVisit;
      result$data['latestFatherVisit'] = l$latestFatherVisit?.toJson();
    }
    if (_$data.containsKey('children')) {
      final l$children = children;
      result$data['children'] = l$children?.toJson();
    }
    if (_$data.containsKey('parents')) {
      final l$parents = parents;
      result$data['parents'] = l$parents?.toJson();
    }
    if (_$data.containsKey('contacts')) {
      final l$contacts = contacts;
      result$data['contacts'] = l$contacts?.toJson();
    }
    if (_$data.containsKey('unclaimedContacts')) {
      final l$unclaimedContacts = unclaimedContacts;
      result$data['unclaimedContacts'] = l$unclaimedContacts?.toJson();
    }
    if (_$data.containsKey('persons')) {
      final l$persons = persons;
      result$data['persons'] = l$persons?.toJson();
    }
    if (_$data.containsKey('lastEdit')) {
      final l$lastEdit = lastEdit;
      result$data['lastEdit'] = l$lastEdit?.toJson();
    }
    if (_$data.containsKey('lastEditUserName')) {
      final l$lastEditUserName = lastEditUserName;
      result$data['lastEditUserName'] = l$lastEditUserName?.toJson();
    }
    if (_$data.containsKey('lastVisit')) {
      final l$lastVisit = lastVisit;
      result$data['lastVisit'] = l$lastVisit?.toJson();
    }
    if (_$data.containsKey('lastVisitUserName')) {
      final l$lastVisitUserName = lastVisitUserName;
      result$data['lastVisitUserName'] = l$lastVisitUserName?.toJson();
    }
    if (_$data.containsKey('lastFatherVisit')) {
      final l$lastFatherVisit = lastFatherVisit;
      result$data['lastFatherVisit'] = l$lastFatherVisit?.toJson();
    }
    if (_$data.containsKey('lastFatherVisitUserName')) {
      final l$lastFatherVisitUserName = lastFatherVisitUserName;
      result$data['lastFatherVisitUserName'] = l$lastFatherVisitUserName
          ?.toJson();
    }
    if (_$data.containsKey('churchName')) {
      final l$churchName = churchName;
      result$data['churchName'] = l$churchName?.toJson();
    }
    if (_$data.containsKey('addressAreaName')) {
      final l$addressAreaName = addressAreaName;
      result$data['addressAreaName'] = l$addressAreaName?.toJson();
    }
    if (_$data.containsKey('addressStreetName')) {
      final l$addressStreetName = addressStreetName;
      result$data['addressStreetName'] = l$addressStreetName?.toJson();
    }
    if (_$data.containsKey('addressDistrictName')) {
      final l$addressDistrictName = addressDistrictName;
      result$data['addressDistrictName'] = l$addressDistrictName?.toJson();
    }
    if (_$data.containsKey('addressFullAddressText')) {
      final l$addressFullAddressText = addressFullAddressText;
      result$data['addressFullAddressText'] = l$addressFullAddressText
          ?.toJson();
    }
    if (_$data.containsKey('userCanEdit')) {
      final l$userCanEdit = userCanEdit;
      result$data['userCanEdit'] = l$userCanEdit?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_FamilyFilterInput<Input_FamilyFilterInput> get copyWith =>
      CopyWith_Input_FamilyFilterInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_FamilyFilterInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$not = not;
    final lOther$not = other.not;
    if (_$data.containsKey('not') != other._$data.containsKey('not')) {
      return false;
    }
    if (l$not != null && lOther$not != null) {
      if (l$not.length != lOther$not.length) {
        return false;
      }
      for (int i = 0; i < l$not.length; i++) {
        final l$not$entry = l$not[i];
        final lOther$not$entry = lOther$not[i];
        if (l$not$entry != lOther$not$entry) {
          return false;
        }
      }
    } else if (l$not != lOther$not) {
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
    final l$color = color;
    final lOther$color = other.color;
    if (_$data.containsKey('color') != other._$data.containsKey('color')) {
      return false;
    }
    if (l$color != lOther$color) {
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
    final l$blurhash = blurhash;
    final lOther$blurhash = other.blurhash;
    if (_$data.containsKey('blurhash') !=
        other._$data.containsKey('blurhash')) {
      return false;
    }
    if (l$blurhash != lOther$blurhash) {
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
    final l$church = church;
    final lOther$church = other.church;
    if (_$data.containsKey('church') != other._$data.containsKey('church')) {
      return false;
    }
    if (l$church != lOther$church) {
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
    final l$dataCheck = dataCheck;
    final lOther$dataCheck = other.dataCheck;
    if (_$data.containsKey('dataCheck') !=
        other._$data.containsKey('dataCheck')) {
      return false;
    }
    if (l$dataCheck != lOther$dataCheck) {
      return false;
    }
    final l$latestEdit = latestEdit;
    final lOther$latestEdit = other.latestEdit;
    if (_$data.containsKey('latestEdit') !=
        other._$data.containsKey('latestEdit')) {
      return false;
    }
    if (l$latestEdit != lOther$latestEdit) {
      return false;
    }
    final l$edits = edits;
    final lOther$edits = other.edits;
    if (_$data.containsKey('edits') != other._$data.containsKey('edits')) {
      return false;
    }
    if (l$edits != lOther$edits) {
      return false;
    }
    final l$latestVisit = latestVisit;
    final lOther$latestVisit = other.latestVisit;
    if (_$data.containsKey('latestVisit') !=
        other._$data.containsKey('latestVisit')) {
      return false;
    }
    if (l$latestVisit != lOther$latestVisit) {
      return false;
    }
    final l$visits = visits;
    final lOther$visits = other.visits;
    if (_$data.containsKey('visits') != other._$data.containsKey('visits')) {
      return false;
    }
    if (l$visits != lOther$visits) {
      return false;
    }
    final l$latestFatherVisit = latestFatherVisit;
    final lOther$latestFatherVisit = other.latestFatherVisit;
    if (_$data.containsKey('latestFatherVisit') !=
        other._$data.containsKey('latestFatherVisit')) {
      return false;
    }
    if (l$latestFatherVisit != lOther$latestFatherVisit) {
      return false;
    }
    final l$children = children;
    final lOther$children = other.children;
    if (_$data.containsKey('children') !=
        other._$data.containsKey('children')) {
      return false;
    }
    if (l$children != lOther$children) {
      return false;
    }
    final l$parents = parents;
    final lOther$parents = other.parents;
    if (_$data.containsKey('parents') != other._$data.containsKey('parents')) {
      return false;
    }
    if (l$parents != lOther$parents) {
      return false;
    }
    final l$contacts = contacts;
    final lOther$contacts = other.contacts;
    if (_$data.containsKey('contacts') !=
        other._$data.containsKey('contacts')) {
      return false;
    }
    if (l$contacts != lOther$contacts) {
      return false;
    }
    final l$unclaimedContacts = unclaimedContacts;
    final lOther$unclaimedContacts = other.unclaimedContacts;
    if (_$data.containsKey('unclaimedContacts') !=
        other._$data.containsKey('unclaimedContacts')) {
      return false;
    }
    if (l$unclaimedContacts != lOther$unclaimedContacts) {
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
    final l$lastEdit = lastEdit;
    final lOther$lastEdit = other.lastEdit;
    if (_$data.containsKey('lastEdit') !=
        other._$data.containsKey('lastEdit')) {
      return false;
    }
    if (l$lastEdit != lOther$lastEdit) {
      return false;
    }
    final l$lastEditUserName = lastEditUserName;
    final lOther$lastEditUserName = other.lastEditUserName;
    if (_$data.containsKey('lastEditUserName') !=
        other._$data.containsKey('lastEditUserName')) {
      return false;
    }
    if (l$lastEditUserName != lOther$lastEditUserName) {
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
    final l$lastVisitUserName = lastVisitUserName;
    final lOther$lastVisitUserName = other.lastVisitUserName;
    if (_$data.containsKey('lastVisitUserName') !=
        other._$data.containsKey('lastVisitUserName')) {
      return false;
    }
    if (l$lastVisitUserName != lOther$lastVisitUserName) {
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
    final l$lastFatherVisitUserName = lastFatherVisitUserName;
    final lOther$lastFatherVisitUserName = other.lastFatherVisitUserName;
    if (_$data.containsKey('lastFatherVisitUserName') !=
        other._$data.containsKey('lastFatherVisitUserName')) {
      return false;
    }
    if (l$lastFatherVisitUserName != lOther$lastFatherVisitUserName) {
      return false;
    }
    final l$churchName = churchName;
    final lOther$churchName = other.churchName;
    if (_$data.containsKey('churchName') !=
        other._$data.containsKey('churchName')) {
      return false;
    }
    if (l$churchName != lOther$churchName) {
      return false;
    }
    final l$addressAreaName = addressAreaName;
    final lOther$addressAreaName = other.addressAreaName;
    if (_$data.containsKey('addressAreaName') !=
        other._$data.containsKey('addressAreaName')) {
      return false;
    }
    if (l$addressAreaName != lOther$addressAreaName) {
      return false;
    }
    final l$addressStreetName = addressStreetName;
    final lOther$addressStreetName = other.addressStreetName;
    if (_$data.containsKey('addressStreetName') !=
        other._$data.containsKey('addressStreetName')) {
      return false;
    }
    if (l$addressStreetName != lOther$addressStreetName) {
      return false;
    }
    final l$addressDistrictName = addressDistrictName;
    final lOther$addressDistrictName = other.addressDistrictName;
    if (_$data.containsKey('addressDistrictName') !=
        other._$data.containsKey('addressDistrictName')) {
      return false;
    }
    if (l$addressDistrictName != lOther$addressDistrictName) {
      return false;
    }
    final l$addressFullAddressText = addressFullAddressText;
    final lOther$addressFullAddressText = other.addressFullAddressText;
    if (_$data.containsKey('addressFullAddressText') !=
        other._$data.containsKey('addressFullAddressText')) {
      return false;
    }
    if (l$addressFullAddressText != lOther$addressFullAddressText) {
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
    final l$and = and;
    final l$or = or;
    final l$not = not;
    final l$id = id;
    final l$name = name;
    final l$notes = notes;
    final l$color = color;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$blurhash = blurhash;
    final l$status = status;
    final l$deceasedSpouseName = deceasedSpouseName;
    final l$marriageDate = marriageDate;
    final l$churchId = churchId;
    final l$church = church;
    final l$address = address;
    final l$dataCheck = dataCheck;
    final l$latestEdit = latestEdit;
    final l$edits = edits;
    final l$latestVisit = latestVisit;
    final l$visits = visits;
    final l$latestFatherVisit = latestFatherVisit;
    final l$children = children;
    final l$parents = parents;
    final l$contacts = contacts;
    final l$unclaimedContacts = unclaimedContacts;
    final l$persons = persons;
    final l$lastEdit = lastEdit;
    final l$lastEditUserName = lastEditUserName;
    final l$lastVisit = lastVisit;
    final l$lastVisitUserName = lastVisitUserName;
    final l$lastFatherVisit = lastFatherVisit;
    final l$lastFatherVisitUserName = lastFatherVisitUserName;
    final l$churchName = churchName;
    final l$addressAreaName = addressAreaName;
    final l$addressStreetName = addressStreetName;
    final l$addressDistrictName = addressDistrictName;
    final l$addressFullAddressText = addressFullAddressText;
    final l$userCanEdit = userCanEdit;
    return Object.hashAll([
      _$data.containsKey('and')
          ? l$and == null
                ? null
                : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
                ? null
                : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('not')
          ? l$not == null
                ? null
                : Object.hashAll(l$not.map((v) => v))
          : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('notes') ? l$notes : const {},
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('photoUpdatedAt') ? l$photoUpdatedAt : const {},
      _$data.containsKey('blurhash') ? l$blurhash : const {},
      _$data.containsKey('status') ? l$status : const {},
      _$data.containsKey('deceasedSpouseName')
          ? l$deceasedSpouseName
          : const {},
      _$data.containsKey('marriageDate') ? l$marriageDate : const {},
      _$data.containsKey('churchId') ? l$churchId : const {},
      _$data.containsKey('church') ? l$church : const {},
      _$data.containsKey('address') ? l$address : const {},
      _$data.containsKey('dataCheck') ? l$dataCheck : const {},
      _$data.containsKey('latestEdit') ? l$latestEdit : const {},
      _$data.containsKey('edits') ? l$edits : const {},
      _$data.containsKey('latestVisit') ? l$latestVisit : const {},
      _$data.containsKey('visits') ? l$visits : const {},
      _$data.containsKey('latestFatherVisit') ? l$latestFatherVisit : const {},
      _$data.containsKey('children') ? l$children : const {},
      _$data.containsKey('parents') ? l$parents : const {},
      _$data.containsKey('contacts') ? l$contacts : const {},
      _$data.containsKey('unclaimedContacts') ? l$unclaimedContacts : const {},
      _$data.containsKey('persons') ? l$persons : const {},
      _$data.containsKey('lastEdit') ? l$lastEdit : const {},
      _$data.containsKey('lastEditUserName') ? l$lastEditUserName : const {},
      _$data.containsKey('lastVisit') ? l$lastVisit : const {},
      _$data.containsKey('lastVisitUserName') ? l$lastVisitUserName : const {},
      _$data.containsKey('lastFatherVisit') ? l$lastFatherVisit : const {},
      _$data.containsKey('lastFatherVisitUserName')
          ? l$lastFatherVisitUserName
          : const {},
      _$data.containsKey('churchName') ? l$churchName : const {},
      _$data.containsKey('addressAreaName') ? l$addressAreaName : const {},
      _$data.containsKey('addressStreetName') ? l$addressStreetName : const {},
      _$data.containsKey('addressDistrictName')
          ? l$addressDistrictName
          : const {},
      _$data.containsKey('addressFullAddressText')
          ? l$addressFullAddressText
          : const {},
      _$data.containsKey('userCanEdit') ? l$userCanEdit : const {},
    ]);
  }
}

abstract class CopyWith_Input_FamilyFilterInput<TRes> {
  factory CopyWith_Input_FamilyFilterInput(
    Input_FamilyFilterInput instance,
    TRes Function(Input_FamilyFilterInput) then,
  ) = _CopyWithImpl_Input_FamilyFilterInput;

  factory CopyWith_Input_FamilyFilterInput.stub(TRes res) =
      _CopyWithStubImpl_Input_FamilyFilterInput;

  TRes call({
    List<Input_FamilyFilterInput>? and,
    List<Input_FamilyFilterInput>? or,
    List<Input_FamilyFilterInput>? not,
    Input_FamilyFilterId? id,
    Input_FamilyFilterName? name,
    Input_FamilyFilterNotes? notes,
    Input_FamilyFilterColor? color,
    Input_FamilyFilterPhotoUpdatedAt? photoUpdatedAt,
    Input_FamilyFilterBlurhash? blurhash,
    Input_FamilyFilterStatus? status,
    Input_FamilyFilterDeceasedSpouseName? deceasedSpouseName,
    Input_FamilyFilterMarriageDate? marriageDate,
    Input_FamilyFilterChurchId? churchId,
    Input_ChurchFilterInput? church,
    Input_AddressFilterInput? address,
    Input_DataCheckFilterInput? dataCheck,
    Input_LatestEditFilterInput? latestEdit,
    Input_EditFilterInput? edits,
    Input_LatestVisitFilterInput? latestVisit,
    Input_VisitFilterInput? visits,
    Input_LatestFatherVisitFilterInput? latestFatherVisit,
    Input_FamilyFilterInput? children,
    Input_FamilyFilterInput? parents,
    Input_FamilyContactFilterInput? contacts,
    Input_ContactFilterInput? unclaimedContacts,
    Input_PersonFilterInput? persons,
    Input_FamilyFilterLastEdit? lastEdit,
    Input_FamilyFilterLastEditUserName? lastEditUserName,
    Input_FamilyFilterLastVisit? lastVisit,
    Input_FamilyFilterLastVisitUserName? lastVisitUserName,
    Input_FamilyFilterLastFatherVisit? lastFatherVisit,
    Input_FamilyFilterLastFatherVisitUserName? lastFatherVisitUserName,
    Input_FamilyFilterChurchName? churchName,
    Input_FamilyFilterAddressAreaName? addressAreaName,
    Input_FamilyFilterAddressStreetName? addressStreetName,
    Input_FamilyFilterAddressDistrictName? addressDistrictName,
    Input_FamilyFilterAddressFullAddressText? addressFullAddressText,
    Input_FamilyFilterUserCanEdit? userCanEdit,
  });
  TRes and(
    Iterable<Input_FamilyFilterInput>? Function(
      Iterable<CopyWith_Input_FamilyFilterInput<Input_FamilyFilterInput>>?,
    )
    _fn,
  );
  TRes or(
    Iterable<Input_FamilyFilterInput>? Function(
      Iterable<CopyWith_Input_FamilyFilterInput<Input_FamilyFilterInput>>?,
    )
    _fn,
  );
  TRes not(
    Iterable<Input_FamilyFilterInput>? Function(
      Iterable<CopyWith_Input_FamilyFilterInput<Input_FamilyFilterInput>>?,
    )
    _fn,
  );
  CopyWith_Input_FamilyFilterId<TRes> get id;
  CopyWith_Input_FamilyFilterName<TRes> get name;
  CopyWith_Input_FamilyFilterNotes<TRes> get notes;
  CopyWith_Input_FamilyFilterColor<TRes> get color;
  CopyWith_Input_FamilyFilterPhotoUpdatedAt<TRes> get photoUpdatedAt;
  CopyWith_Input_FamilyFilterBlurhash<TRes> get blurhash;
  CopyWith_Input_FamilyFilterStatus<TRes> get status;
  CopyWith_Input_FamilyFilterDeceasedSpouseName<TRes> get deceasedSpouseName;
  CopyWith_Input_FamilyFilterMarriageDate<TRes> get marriageDate;
  CopyWith_Input_FamilyFilterChurchId<TRes> get churchId;
  CopyWith_Input_ChurchFilterInput<TRes> get church;
  CopyWith_Input_AddressFilterInput<TRes> get address;
  CopyWith_Input_DataCheckFilterInput<TRes> get dataCheck;
  CopyWith_Input_LatestEditFilterInput<TRes> get latestEdit;
  CopyWith_Input_EditFilterInput<TRes> get edits;
  CopyWith_Input_LatestVisitFilterInput<TRes> get latestVisit;
  CopyWith_Input_VisitFilterInput<TRes> get visits;
  CopyWith_Input_LatestFatherVisitFilterInput<TRes> get latestFatherVisit;
  CopyWith_Input_FamilyFilterInput<TRes> get children;
  CopyWith_Input_FamilyFilterInput<TRes> get parents;
  CopyWith_Input_FamilyContactFilterInput<TRes> get contacts;
  CopyWith_Input_ContactFilterInput<TRes> get unclaimedContacts;
  CopyWith_Input_PersonFilterInput<TRes> get persons;
  CopyWith_Input_FamilyFilterLastEdit<TRes> get lastEdit;
  CopyWith_Input_FamilyFilterLastEditUserName<TRes> get lastEditUserName;
  CopyWith_Input_FamilyFilterLastVisit<TRes> get lastVisit;
  CopyWith_Input_FamilyFilterLastVisitUserName<TRes> get lastVisitUserName;
  CopyWith_Input_FamilyFilterLastFatherVisit<TRes> get lastFatherVisit;
  CopyWith_Input_FamilyFilterLastFatherVisitUserName<TRes>
  get lastFatherVisitUserName;
  CopyWith_Input_FamilyFilterChurchName<TRes> get churchName;
  CopyWith_Input_FamilyFilterAddressAreaName<TRes> get addressAreaName;
  CopyWith_Input_FamilyFilterAddressStreetName<TRes> get addressStreetName;
  CopyWith_Input_FamilyFilterAddressDistrictName<TRes> get addressDistrictName;
  CopyWith_Input_FamilyFilterAddressFullAddressText<TRes>
  get addressFullAddressText;
  CopyWith_Input_FamilyFilterUserCanEdit<TRes> get userCanEdit;
}

class _CopyWithImpl_Input_FamilyFilterInput<TRes>
    implements CopyWith_Input_FamilyFilterInput<TRes> {
  _CopyWithImpl_Input_FamilyFilterInput(this._instance, this._then);

  final Input_FamilyFilterInput _instance;

  final TRes Function(Input_FamilyFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? not = _undefined,
    Object? id = _undefined,
    Object? name = _undefined,
    Object? notes = _undefined,
    Object? color = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? blurhash = _undefined,
    Object? status = _undefined,
    Object? deceasedSpouseName = _undefined,
    Object? marriageDate = _undefined,
    Object? churchId = _undefined,
    Object? church = _undefined,
    Object? address = _undefined,
    Object? dataCheck = _undefined,
    Object? latestEdit = _undefined,
    Object? edits = _undefined,
    Object? latestVisit = _undefined,
    Object? visits = _undefined,
    Object? latestFatherVisit = _undefined,
    Object? children = _undefined,
    Object? parents = _undefined,
    Object? contacts = _undefined,
    Object? unclaimedContacts = _undefined,
    Object? persons = _undefined,
    Object? lastEdit = _undefined,
    Object? lastEditUserName = _undefined,
    Object? lastVisit = _undefined,
    Object? lastVisitUserName = _undefined,
    Object? lastFatherVisit = _undefined,
    Object? lastFatherVisitUserName = _undefined,
    Object? churchName = _undefined,
    Object? addressAreaName = _undefined,
    Object? addressStreetName = _undefined,
    Object? addressDistrictName = _undefined,
    Object? addressFullAddressText = _undefined,
    Object? userCanEdit = _undefined,
  }) => _then(
    Input_FamilyFilterInput._({
      ..._instance._$data,
      if (and != _undefined) 'and': (and as List<Input_FamilyFilterInput>?),
      if (or != _undefined) 'or': (or as List<Input_FamilyFilterInput>?),
      if (not != _undefined) 'not': (not as List<Input_FamilyFilterInput>?),
      if (id != _undefined) 'id': (id as Input_FamilyFilterId?),
      if (name != _undefined) 'name': (name as Input_FamilyFilterName?),
      if (notes != _undefined) 'notes': (notes as Input_FamilyFilterNotes?),
      if (color != _undefined) 'color': (color as Input_FamilyFilterColor?),
      if (photoUpdatedAt != _undefined)
        'photoUpdatedAt': (photoUpdatedAt as Input_FamilyFilterPhotoUpdatedAt?),
      if (blurhash != _undefined)
        'blurhash': (blurhash as Input_FamilyFilterBlurhash?),
      if (status != _undefined) 'status': (status as Input_FamilyFilterStatus?),
      if (deceasedSpouseName != _undefined)
        'deceasedSpouseName':
            (deceasedSpouseName as Input_FamilyFilterDeceasedSpouseName?),
      if (marriageDate != _undefined)
        'marriageDate': (marriageDate as Input_FamilyFilterMarriageDate?),
      if (churchId != _undefined)
        'churchId': (churchId as Input_FamilyFilterChurchId?),
      if (church != _undefined) 'church': (church as Input_ChurchFilterInput?),
      if (address != _undefined)
        'address': (address as Input_AddressFilterInput?),
      if (dataCheck != _undefined)
        'dataCheck': (dataCheck as Input_DataCheckFilterInput?),
      if (latestEdit != _undefined)
        'latestEdit': (latestEdit as Input_LatestEditFilterInput?),
      if (edits != _undefined) 'edits': (edits as Input_EditFilterInput?),
      if (latestVisit != _undefined)
        'latestVisit': (latestVisit as Input_LatestVisitFilterInput?),
      if (visits != _undefined) 'visits': (visits as Input_VisitFilterInput?),
      if (latestFatherVisit != _undefined)
        'latestFatherVisit':
            (latestFatherVisit as Input_LatestFatherVisitFilterInput?),
      if (children != _undefined)
        'children': (children as Input_FamilyFilterInput?),
      if (parents != _undefined)
        'parents': (parents as Input_FamilyFilterInput?),
      if (contacts != _undefined)
        'contacts': (contacts as Input_FamilyContactFilterInput?),
      if (unclaimedContacts != _undefined)
        'unclaimedContacts': (unclaimedContacts as Input_ContactFilterInput?),
      if (persons != _undefined)
        'persons': (persons as Input_PersonFilterInput?),
      if (lastEdit != _undefined)
        'lastEdit': (lastEdit as Input_FamilyFilterLastEdit?),
      if (lastEditUserName != _undefined)
        'lastEditUserName':
            (lastEditUserName as Input_FamilyFilterLastEditUserName?),
      if (lastVisit != _undefined)
        'lastVisit': (lastVisit as Input_FamilyFilterLastVisit?),
      if (lastVisitUserName != _undefined)
        'lastVisitUserName':
            (lastVisitUserName as Input_FamilyFilterLastVisitUserName?),
      if (lastFatherVisit != _undefined)
        'lastFatherVisit':
            (lastFatherVisit as Input_FamilyFilterLastFatherVisit?),
      if (lastFatherVisitUserName != _undefined)
        'lastFatherVisitUserName':
            (lastFatherVisitUserName
                as Input_FamilyFilterLastFatherVisitUserName?),
      if (churchName != _undefined)
        'churchName': (churchName as Input_FamilyFilterChurchName?),
      if (addressAreaName != _undefined)
        'addressAreaName':
            (addressAreaName as Input_FamilyFilterAddressAreaName?),
      if (addressStreetName != _undefined)
        'addressStreetName':
            (addressStreetName as Input_FamilyFilterAddressStreetName?),
      if (addressDistrictName != _undefined)
        'addressDistrictName':
            (addressDistrictName as Input_FamilyFilterAddressDistrictName?),
      if (addressFullAddressText != _undefined)
        'addressFullAddressText':
            (addressFullAddressText
                as Input_FamilyFilterAddressFullAddressText?),
      if (userCanEdit != _undefined)
        'userCanEdit': (userCanEdit as Input_FamilyFilterUserCanEdit?),
    }),
  );

  TRes and(
    Iterable<Input_FamilyFilterInput>? Function(
      Iterable<CopyWith_Input_FamilyFilterInput<Input_FamilyFilterInput>>?,
    )
    _fn,
  ) => call(
    and: _fn(
      _instance.and?.map((e) => CopyWith_Input_FamilyFilterInput(e, (i) => i)),
    )?.toList(),
  );

  TRes or(
    Iterable<Input_FamilyFilterInput>? Function(
      Iterable<CopyWith_Input_FamilyFilterInput<Input_FamilyFilterInput>>?,
    )
    _fn,
  ) => call(
    or: _fn(
      _instance.or?.map((e) => CopyWith_Input_FamilyFilterInput(e, (i) => i)),
    )?.toList(),
  );

  TRes not(
    Iterable<Input_FamilyFilterInput>? Function(
      Iterable<CopyWith_Input_FamilyFilterInput<Input_FamilyFilterInput>>?,
    )
    _fn,
  ) => call(
    not: _fn(
      _instance.not?.map((e) => CopyWith_Input_FamilyFilterInput(e, (i) => i)),
    )?.toList(),
  );

  CopyWith_Input_FamilyFilterId<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith_Input_FamilyFilterId.stub(_then(_instance))
        : CopyWith_Input_FamilyFilterId(local$id, (e) => call(id: e));
  }

  CopyWith_Input_FamilyFilterName<TRes> get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith_Input_FamilyFilterName.stub(_then(_instance))
        : CopyWith_Input_FamilyFilterName(local$name, (e) => call(name: e));
  }

  CopyWith_Input_FamilyFilterNotes<TRes> get notes {
    final local$notes = _instance.notes;
    return local$notes == null
        ? CopyWith_Input_FamilyFilterNotes.stub(_then(_instance))
        : CopyWith_Input_FamilyFilterNotes(local$notes, (e) => call(notes: e));
  }

  CopyWith_Input_FamilyFilterColor<TRes> get color {
    final local$color = _instance.color;
    return local$color == null
        ? CopyWith_Input_FamilyFilterColor.stub(_then(_instance))
        : CopyWith_Input_FamilyFilterColor(local$color, (e) => call(color: e));
  }

  CopyWith_Input_FamilyFilterPhotoUpdatedAt<TRes> get photoUpdatedAt {
    final local$photoUpdatedAt = _instance.photoUpdatedAt;
    return local$photoUpdatedAt == null
        ? CopyWith_Input_FamilyFilterPhotoUpdatedAt.stub(_then(_instance))
        : CopyWith_Input_FamilyFilterPhotoUpdatedAt(
            local$photoUpdatedAt,
            (e) => call(photoUpdatedAt: e),
          );
  }

  CopyWith_Input_FamilyFilterBlurhash<TRes> get blurhash {
    final local$blurhash = _instance.blurhash;
    return local$blurhash == null
        ? CopyWith_Input_FamilyFilterBlurhash.stub(_then(_instance))
        : CopyWith_Input_FamilyFilterBlurhash(
            local$blurhash,
            (e) => call(blurhash: e),
          );
  }

  CopyWith_Input_FamilyFilterStatus<TRes> get status {
    final local$status = _instance.status;
    return local$status == null
        ? CopyWith_Input_FamilyFilterStatus.stub(_then(_instance))
        : CopyWith_Input_FamilyFilterStatus(
            local$status,
            (e) => call(status: e),
          );
  }

  CopyWith_Input_FamilyFilterDeceasedSpouseName<TRes> get deceasedSpouseName {
    final local$deceasedSpouseName = _instance.deceasedSpouseName;
    return local$deceasedSpouseName == null
        ? CopyWith_Input_FamilyFilterDeceasedSpouseName.stub(_then(_instance))
        : CopyWith_Input_FamilyFilterDeceasedSpouseName(
            local$deceasedSpouseName,
            (e) => call(deceasedSpouseName: e),
          );
  }

  CopyWith_Input_FamilyFilterMarriageDate<TRes> get marriageDate {
    final local$marriageDate = _instance.marriageDate;
    return local$marriageDate == null
        ? CopyWith_Input_FamilyFilterMarriageDate.stub(_then(_instance))
        : CopyWith_Input_FamilyFilterMarriageDate(
            local$marriageDate,
            (e) => call(marriageDate: e),
          );
  }

  CopyWith_Input_FamilyFilterChurchId<TRes> get churchId {
    final local$churchId = _instance.churchId;
    return local$churchId == null
        ? CopyWith_Input_FamilyFilterChurchId.stub(_then(_instance))
        : CopyWith_Input_FamilyFilterChurchId(
            local$churchId,
            (e) => call(churchId: e),
          );
  }

  CopyWith_Input_ChurchFilterInput<TRes> get church {
    final local$church = _instance.church;
    return local$church == null
        ? CopyWith_Input_ChurchFilterInput.stub(_then(_instance))
        : CopyWith_Input_ChurchFilterInput(
            local$church,
            (e) => call(church: e),
          );
  }

  CopyWith_Input_AddressFilterInput<TRes> get address {
    final local$address = _instance.address;
    return local$address == null
        ? CopyWith_Input_AddressFilterInput.stub(_then(_instance))
        : CopyWith_Input_AddressFilterInput(
            local$address,
            (e) => call(address: e),
          );
  }

  CopyWith_Input_DataCheckFilterInput<TRes> get dataCheck {
    final local$dataCheck = _instance.dataCheck;
    return local$dataCheck == null
        ? CopyWith_Input_DataCheckFilterInput.stub(_then(_instance))
        : CopyWith_Input_DataCheckFilterInput(
            local$dataCheck,
            (e) => call(dataCheck: e),
          );
  }

  CopyWith_Input_LatestEditFilterInput<TRes> get latestEdit {
    final local$latestEdit = _instance.latestEdit;
    return local$latestEdit == null
        ? CopyWith_Input_LatestEditFilterInput.stub(_then(_instance))
        : CopyWith_Input_LatestEditFilterInput(
            local$latestEdit,
            (e) => call(latestEdit: e),
          );
  }

  CopyWith_Input_EditFilterInput<TRes> get edits {
    final local$edits = _instance.edits;
    return local$edits == null
        ? CopyWith_Input_EditFilterInput.stub(_then(_instance))
        : CopyWith_Input_EditFilterInput(local$edits, (e) => call(edits: e));
  }

  CopyWith_Input_LatestVisitFilterInput<TRes> get latestVisit {
    final local$latestVisit = _instance.latestVisit;
    return local$latestVisit == null
        ? CopyWith_Input_LatestVisitFilterInput.stub(_then(_instance))
        : CopyWith_Input_LatestVisitFilterInput(
            local$latestVisit,
            (e) => call(latestVisit: e),
          );
  }

  CopyWith_Input_VisitFilterInput<TRes> get visits {
    final local$visits = _instance.visits;
    return local$visits == null
        ? CopyWith_Input_VisitFilterInput.stub(_then(_instance))
        : CopyWith_Input_VisitFilterInput(local$visits, (e) => call(visits: e));
  }

  CopyWith_Input_LatestFatherVisitFilterInput<TRes> get latestFatherVisit {
    final local$latestFatherVisit = _instance.latestFatherVisit;
    return local$latestFatherVisit == null
        ? CopyWith_Input_LatestFatherVisitFilterInput.stub(_then(_instance))
        : CopyWith_Input_LatestFatherVisitFilterInput(
            local$latestFatherVisit,
            (e) => call(latestFatherVisit: e),
          );
  }

  CopyWith_Input_FamilyFilterInput<TRes> get children {
    final local$children = _instance.children;
    return local$children == null
        ? CopyWith_Input_FamilyFilterInput.stub(_then(_instance))
        : CopyWith_Input_FamilyFilterInput(
            local$children,
            (e) => call(children: e),
          );
  }

  CopyWith_Input_FamilyFilterInput<TRes> get parents {
    final local$parents = _instance.parents;
    return local$parents == null
        ? CopyWith_Input_FamilyFilterInput.stub(_then(_instance))
        : CopyWith_Input_FamilyFilterInput(
            local$parents,
            (e) => call(parents: e),
          );
  }

  CopyWith_Input_FamilyContactFilterInput<TRes> get contacts {
    final local$contacts = _instance.contacts;
    return local$contacts == null
        ? CopyWith_Input_FamilyContactFilterInput.stub(_then(_instance))
        : CopyWith_Input_FamilyContactFilterInput(
            local$contacts,
            (e) => call(contacts: e),
          );
  }

  CopyWith_Input_ContactFilterInput<TRes> get unclaimedContacts {
    final local$unclaimedContacts = _instance.unclaimedContacts;
    return local$unclaimedContacts == null
        ? CopyWith_Input_ContactFilterInput.stub(_then(_instance))
        : CopyWith_Input_ContactFilterInput(
            local$unclaimedContacts,
            (e) => call(unclaimedContacts: e),
          );
  }

  CopyWith_Input_PersonFilterInput<TRes> get persons {
    final local$persons = _instance.persons;
    return local$persons == null
        ? CopyWith_Input_PersonFilterInput.stub(_then(_instance))
        : CopyWith_Input_PersonFilterInput(
            local$persons,
            (e) => call(persons: e),
          );
  }

  CopyWith_Input_FamilyFilterLastEdit<TRes> get lastEdit {
    final local$lastEdit = _instance.lastEdit;
    return local$lastEdit == null
        ? CopyWith_Input_FamilyFilterLastEdit.stub(_then(_instance))
        : CopyWith_Input_FamilyFilterLastEdit(
            local$lastEdit,
            (e) => call(lastEdit: e),
          );
  }

  CopyWith_Input_FamilyFilterLastEditUserName<TRes> get lastEditUserName {
    final local$lastEditUserName = _instance.lastEditUserName;
    return local$lastEditUserName == null
        ? CopyWith_Input_FamilyFilterLastEditUserName.stub(_then(_instance))
        : CopyWith_Input_FamilyFilterLastEditUserName(
            local$lastEditUserName,
            (e) => call(lastEditUserName: e),
          );
  }

  CopyWith_Input_FamilyFilterLastVisit<TRes> get lastVisit {
    final local$lastVisit = _instance.lastVisit;
    return local$lastVisit == null
        ? CopyWith_Input_FamilyFilterLastVisit.stub(_then(_instance))
        : CopyWith_Input_FamilyFilterLastVisit(
            local$lastVisit,
            (e) => call(lastVisit: e),
          );
  }

  CopyWith_Input_FamilyFilterLastVisitUserName<TRes> get lastVisitUserName {
    final local$lastVisitUserName = _instance.lastVisitUserName;
    return local$lastVisitUserName == null
        ? CopyWith_Input_FamilyFilterLastVisitUserName.stub(_then(_instance))
        : CopyWith_Input_FamilyFilterLastVisitUserName(
            local$lastVisitUserName,
            (e) => call(lastVisitUserName: e),
          );
  }

  CopyWith_Input_FamilyFilterLastFatherVisit<TRes> get lastFatherVisit {
    final local$lastFatherVisit = _instance.lastFatherVisit;
    return local$lastFatherVisit == null
        ? CopyWith_Input_FamilyFilterLastFatherVisit.stub(_then(_instance))
        : CopyWith_Input_FamilyFilterLastFatherVisit(
            local$lastFatherVisit,
            (e) => call(lastFatherVisit: e),
          );
  }

  CopyWith_Input_FamilyFilterLastFatherVisitUserName<TRes>
  get lastFatherVisitUserName {
    final local$lastFatherVisitUserName = _instance.lastFatherVisitUserName;
    return local$lastFatherVisitUserName == null
        ? CopyWith_Input_FamilyFilterLastFatherVisitUserName.stub(
            _then(_instance),
          )
        : CopyWith_Input_FamilyFilterLastFatherVisitUserName(
            local$lastFatherVisitUserName,
            (e) => call(lastFatherVisitUserName: e),
          );
  }

  CopyWith_Input_FamilyFilterChurchName<TRes> get churchName {
    final local$churchName = _instance.churchName;
    return local$churchName == null
        ? CopyWith_Input_FamilyFilterChurchName.stub(_then(_instance))
        : CopyWith_Input_FamilyFilterChurchName(
            local$churchName,
            (e) => call(churchName: e),
          );
  }

  CopyWith_Input_FamilyFilterAddressAreaName<TRes> get addressAreaName {
    final local$addressAreaName = _instance.addressAreaName;
    return local$addressAreaName == null
        ? CopyWith_Input_FamilyFilterAddressAreaName.stub(_then(_instance))
        : CopyWith_Input_FamilyFilterAddressAreaName(
            local$addressAreaName,
            (e) => call(addressAreaName: e),
          );
  }

  CopyWith_Input_FamilyFilterAddressStreetName<TRes> get addressStreetName {
    final local$addressStreetName = _instance.addressStreetName;
    return local$addressStreetName == null
        ? CopyWith_Input_FamilyFilterAddressStreetName.stub(_then(_instance))
        : CopyWith_Input_FamilyFilterAddressStreetName(
            local$addressStreetName,
            (e) => call(addressStreetName: e),
          );
  }

  CopyWith_Input_FamilyFilterAddressDistrictName<TRes> get addressDistrictName {
    final local$addressDistrictName = _instance.addressDistrictName;
    return local$addressDistrictName == null
        ? CopyWith_Input_FamilyFilterAddressDistrictName.stub(_then(_instance))
        : CopyWith_Input_FamilyFilterAddressDistrictName(
            local$addressDistrictName,
            (e) => call(addressDistrictName: e),
          );
  }

  CopyWith_Input_FamilyFilterAddressFullAddressText<TRes>
  get addressFullAddressText {
    final local$addressFullAddressText = _instance.addressFullAddressText;
    return local$addressFullAddressText == null
        ? CopyWith_Input_FamilyFilterAddressFullAddressText.stub(
            _then(_instance),
          )
        : CopyWith_Input_FamilyFilterAddressFullAddressText(
            local$addressFullAddressText,
            (e) => call(addressFullAddressText: e),
          );
  }

  CopyWith_Input_FamilyFilterUserCanEdit<TRes> get userCanEdit {
    final local$userCanEdit = _instance.userCanEdit;
    return local$userCanEdit == null
        ? CopyWith_Input_FamilyFilterUserCanEdit.stub(_then(_instance))
        : CopyWith_Input_FamilyFilterUserCanEdit(
            local$userCanEdit,
            (e) => call(userCanEdit: e),
          );
  }
}

class _CopyWithStubImpl_Input_FamilyFilterInput<TRes>
    implements CopyWith_Input_FamilyFilterInput<TRes> {
  _CopyWithStubImpl_Input_FamilyFilterInput(this._res);

  TRes _res;

  call({
    List<Input_FamilyFilterInput>? and,
    List<Input_FamilyFilterInput>? or,
    List<Input_FamilyFilterInput>? not,
    Input_FamilyFilterId? id,
    Input_FamilyFilterName? name,
    Input_FamilyFilterNotes? notes,
    Input_FamilyFilterColor? color,
    Input_FamilyFilterPhotoUpdatedAt? photoUpdatedAt,
    Input_FamilyFilterBlurhash? blurhash,
    Input_FamilyFilterStatus? status,
    Input_FamilyFilterDeceasedSpouseName? deceasedSpouseName,
    Input_FamilyFilterMarriageDate? marriageDate,
    Input_FamilyFilterChurchId? churchId,
    Input_ChurchFilterInput? church,
    Input_AddressFilterInput? address,
    Input_DataCheckFilterInput? dataCheck,
    Input_LatestEditFilterInput? latestEdit,
    Input_EditFilterInput? edits,
    Input_LatestVisitFilterInput? latestVisit,
    Input_VisitFilterInput? visits,
    Input_LatestFatherVisitFilterInput? latestFatherVisit,
    Input_FamilyFilterInput? children,
    Input_FamilyFilterInput? parents,
    Input_FamilyContactFilterInput? contacts,
    Input_ContactFilterInput? unclaimedContacts,
    Input_PersonFilterInput? persons,
    Input_FamilyFilterLastEdit? lastEdit,
    Input_FamilyFilterLastEditUserName? lastEditUserName,
    Input_FamilyFilterLastVisit? lastVisit,
    Input_FamilyFilterLastVisitUserName? lastVisitUserName,
    Input_FamilyFilterLastFatherVisit? lastFatherVisit,
    Input_FamilyFilterLastFatherVisitUserName? lastFatherVisitUserName,
    Input_FamilyFilterChurchName? churchName,
    Input_FamilyFilterAddressAreaName? addressAreaName,
    Input_FamilyFilterAddressStreetName? addressStreetName,
    Input_FamilyFilterAddressDistrictName? addressDistrictName,
    Input_FamilyFilterAddressFullAddressText? addressFullAddressText,
    Input_FamilyFilterUserCanEdit? userCanEdit,
  }) => _res;

  and(_fn) => _res;

  or(_fn) => _res;

  not(_fn) => _res;

  CopyWith_Input_FamilyFilterId<TRes> get id =>
      CopyWith_Input_FamilyFilterId.stub(_res);

  CopyWith_Input_FamilyFilterName<TRes> get name =>
      CopyWith_Input_FamilyFilterName.stub(_res);

  CopyWith_Input_FamilyFilterNotes<TRes> get notes =>
      CopyWith_Input_FamilyFilterNotes.stub(_res);

  CopyWith_Input_FamilyFilterColor<TRes> get color =>
      CopyWith_Input_FamilyFilterColor.stub(_res);

  CopyWith_Input_FamilyFilterPhotoUpdatedAt<TRes> get photoUpdatedAt =>
      CopyWith_Input_FamilyFilterPhotoUpdatedAt.stub(_res);

  CopyWith_Input_FamilyFilterBlurhash<TRes> get blurhash =>
      CopyWith_Input_FamilyFilterBlurhash.stub(_res);

  CopyWith_Input_FamilyFilterStatus<TRes> get status =>
      CopyWith_Input_FamilyFilterStatus.stub(_res);

  CopyWith_Input_FamilyFilterDeceasedSpouseName<TRes> get deceasedSpouseName =>
      CopyWith_Input_FamilyFilterDeceasedSpouseName.stub(_res);

  CopyWith_Input_FamilyFilterMarriageDate<TRes> get marriageDate =>
      CopyWith_Input_FamilyFilterMarriageDate.stub(_res);

  CopyWith_Input_FamilyFilterChurchId<TRes> get churchId =>
      CopyWith_Input_FamilyFilterChurchId.stub(_res);

  CopyWith_Input_ChurchFilterInput<TRes> get church =>
      CopyWith_Input_ChurchFilterInput.stub(_res);

  CopyWith_Input_AddressFilterInput<TRes> get address =>
      CopyWith_Input_AddressFilterInput.stub(_res);

  CopyWith_Input_DataCheckFilterInput<TRes> get dataCheck =>
      CopyWith_Input_DataCheckFilterInput.stub(_res);

  CopyWith_Input_LatestEditFilterInput<TRes> get latestEdit =>
      CopyWith_Input_LatestEditFilterInput.stub(_res);

  CopyWith_Input_EditFilterInput<TRes> get edits =>
      CopyWith_Input_EditFilterInput.stub(_res);

  CopyWith_Input_LatestVisitFilterInput<TRes> get latestVisit =>
      CopyWith_Input_LatestVisitFilterInput.stub(_res);

  CopyWith_Input_VisitFilterInput<TRes> get visits =>
      CopyWith_Input_VisitFilterInput.stub(_res);

  CopyWith_Input_LatestFatherVisitFilterInput<TRes> get latestFatherVisit =>
      CopyWith_Input_LatestFatherVisitFilterInput.stub(_res);

  CopyWith_Input_FamilyFilterInput<TRes> get children =>
      CopyWith_Input_FamilyFilterInput.stub(_res);

  CopyWith_Input_FamilyFilterInput<TRes> get parents =>
      CopyWith_Input_FamilyFilterInput.stub(_res);

  CopyWith_Input_FamilyContactFilterInput<TRes> get contacts =>
      CopyWith_Input_FamilyContactFilterInput.stub(_res);

  CopyWith_Input_ContactFilterInput<TRes> get unclaimedContacts =>
      CopyWith_Input_ContactFilterInput.stub(_res);

  CopyWith_Input_PersonFilterInput<TRes> get persons =>
      CopyWith_Input_PersonFilterInput.stub(_res);

  CopyWith_Input_FamilyFilterLastEdit<TRes> get lastEdit =>
      CopyWith_Input_FamilyFilterLastEdit.stub(_res);

  CopyWith_Input_FamilyFilterLastEditUserName<TRes> get lastEditUserName =>
      CopyWith_Input_FamilyFilterLastEditUserName.stub(_res);

  CopyWith_Input_FamilyFilterLastVisit<TRes> get lastVisit =>
      CopyWith_Input_FamilyFilterLastVisit.stub(_res);

  CopyWith_Input_FamilyFilterLastVisitUserName<TRes> get lastVisitUserName =>
      CopyWith_Input_FamilyFilterLastVisitUserName.stub(_res);

  CopyWith_Input_FamilyFilterLastFatherVisit<TRes> get lastFatherVisit =>
      CopyWith_Input_FamilyFilterLastFatherVisit.stub(_res);

  CopyWith_Input_FamilyFilterLastFatherVisitUserName<TRes>
  get lastFatherVisitUserName =>
      CopyWith_Input_FamilyFilterLastFatherVisitUserName.stub(_res);

  CopyWith_Input_FamilyFilterChurchName<TRes> get churchName =>
      CopyWith_Input_FamilyFilterChurchName.stub(_res);

  CopyWith_Input_FamilyFilterAddressAreaName<TRes> get addressAreaName =>
      CopyWith_Input_FamilyFilterAddressAreaName.stub(_res);

  CopyWith_Input_FamilyFilterAddressStreetName<TRes> get addressStreetName =>
      CopyWith_Input_FamilyFilterAddressStreetName.stub(_res);

  CopyWith_Input_FamilyFilterAddressDistrictName<TRes>
  get addressDistrictName =>
      CopyWith_Input_FamilyFilterAddressDistrictName.stub(_res);

  CopyWith_Input_FamilyFilterAddressFullAddressText<TRes>
  get addressFullAddressText =>
      CopyWith_Input_FamilyFilterAddressFullAddressText.stub(_res);

  CopyWith_Input_FamilyFilterUserCanEdit<TRes> get userCanEdit =>
      CopyWith_Input_FamilyFilterUserCanEdit.stub(_res);
}

class Input_FamilySortInput {
  factory Input_FamilySortInput({
    Enum_SortOrder? order,
    required Enum_FamilySortField field,
  }) => Input_FamilySortInput._({
    if (order != null) r'order': order,
    r'field': field,
  });

  Input_FamilySortInput._(this._$data);

  factory Input_FamilySortInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('order')) {
      final l$order = data['order'];
      result$data['order'] = l$order == null
          ? null
          : fromJson_Enum_SortOrder((l$order as String));
    }
    final l$field = data['field'];
    result$data['field'] = fromJson_Enum_FamilySortField((l$field as String));
    return Input_FamilySortInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_SortOrder? get order => (_$data['order'] as Enum_SortOrder?);

  Enum_FamilySortField get field => (_$data['field'] as Enum_FamilySortField);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('order')) {
      final l$order = order;
      result$data['order'] = l$order == null
          ? null
          : toJson_Enum_SortOrder(l$order);
    }
    final l$field = field;
    result$data['field'] = toJson_Enum_FamilySortField(l$field);
    return result$data;
  }

  CopyWith_Input_FamilySortInput<Input_FamilySortInput> get copyWith =>
      CopyWith_Input_FamilySortInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_FamilySortInput || runtimeType != other.runtimeType) {
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

abstract class CopyWith_Input_FamilySortInput<TRes> {
  factory CopyWith_Input_FamilySortInput(
    Input_FamilySortInput instance,
    TRes Function(Input_FamilySortInput) then,
  ) = _CopyWithImpl_Input_FamilySortInput;

  factory CopyWith_Input_FamilySortInput.stub(TRes res) =
      _CopyWithStubImpl_Input_FamilySortInput;

  TRes call({Enum_SortOrder? order, Enum_FamilySortField? field});
}

class _CopyWithImpl_Input_FamilySortInput<TRes>
    implements CopyWith_Input_FamilySortInput<TRes> {
  _CopyWithImpl_Input_FamilySortInput(this._instance, this._then);

  final Input_FamilySortInput _instance;

  final TRes Function(Input_FamilySortInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? order = _undefined, Object? field = _undefined}) => _then(
    Input_FamilySortInput._({
      ..._instance._$data,
      if (order != _undefined) 'order': (order as Enum_SortOrder?),
      if (field != _undefined && field != null)
        'field': (field as Enum_FamilySortField),
    }),
  );
}

class _CopyWithStubImpl_Input_FamilySortInput<TRes>
    implements CopyWith_Input_FamilySortInput<TRes> {
  _CopyWithStubImpl_Input_FamilySortInput(this._res);

  TRes _res;

  call({Enum_SortOrder? order, Enum_FamilySortField? field}) => _res;
}

class Input_ContactFilterUpdatedAt {
  factory Input_ContactFilterUpdatedAt({
    bool? isNil,
    DateTime? eq,
    DateTime? notEq,
    List<DateTime>? $in,
    DateTime? lessThan,
    DateTime? greaterThan,
    DateTime? lessThanOrEqual,
    DateTime? greaterThanOrEqual,
    DateTime? isDistinctFrom,
    DateTime? isNotDistinctFrom,
  }) => Input_ContactFilterUpdatedAt._({
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

  Input_ContactFilterUpdatedAt._(this._$data);

  factory Input_ContactFilterUpdatedAt.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('isNil')) {
      final l$isNil = data['isNil'];
      result$data['isNil'] = (l$isNil as bool?);
    }
    if (data.containsKey('eq')) {
      final l$eq = data['eq'];
      result$data['eq'] = l$eq == null ? null : tstzFromString(l$eq);
    }
    if (data.containsKey('notEq')) {
      final l$notEq = data['notEq'];
      result$data['notEq'] = l$notEq == null ? null : tstzFromString(l$notEq);
    }
    if (data.containsKey('in')) {
      final l$$in = data['in'];
      result$data['in'] = (l$$in as List<dynamic>?)
          ?.map((e) => tstzFromString(e))
          .toList();
    }
    if (data.containsKey('lessThan')) {
      final l$lessThan = data['lessThan'];
      result$data['lessThan'] = l$lessThan == null
          ? null
          : tstzFromString(l$lessThan);
    }
    if (data.containsKey('greaterThan')) {
      final l$greaterThan = data['greaterThan'];
      result$data['greaterThan'] = l$greaterThan == null
          ? null
          : tstzFromString(l$greaterThan);
    }
    if (data.containsKey('lessThanOrEqual')) {
      final l$lessThanOrEqual = data['lessThanOrEqual'];
      result$data['lessThanOrEqual'] = l$lessThanOrEqual == null
          ? null
          : tstzFromString(l$lessThanOrEqual);
    }
    if (data.containsKey('greaterThanOrEqual')) {
      final l$greaterThanOrEqual = data['greaterThanOrEqual'];
      result$data['greaterThanOrEqual'] = l$greaterThanOrEqual == null
          ? null
          : tstzFromString(l$greaterThanOrEqual);
    }
    if (data.containsKey('isDistinctFrom')) {
      final l$isDistinctFrom = data['isDistinctFrom'];
      result$data['isDistinctFrom'] = l$isDistinctFrom == null
          ? null
          : tstzFromString(l$isDistinctFrom);
    }
    if (data.containsKey('isNotDistinctFrom')) {
      final l$isNotDistinctFrom = data['isNotDistinctFrom'];
      result$data['isNotDistinctFrom'] = l$isNotDistinctFrom == null
          ? null
          : tstzFromString(l$isNotDistinctFrom);
    }
    return Input_ContactFilterUpdatedAt._(result$data);
  }

  Map<String, dynamic> _$data;

  bool? get isNil => (_$data['isNil'] as bool?);

  DateTime? get eq => (_$data['eq'] as DateTime?);

  DateTime? get notEq => (_$data['notEq'] as DateTime?);

  List<DateTime>? get $in => (_$data['in'] as List<DateTime>?);

  DateTime? get lessThan => (_$data['lessThan'] as DateTime?);

  DateTime? get greaterThan => (_$data['greaterThan'] as DateTime?);

  DateTime? get lessThanOrEqual => (_$data['lessThanOrEqual'] as DateTime?);

  DateTime? get greaterThanOrEqual =>
      (_$data['greaterThanOrEqual'] as DateTime?);

  DateTime? get isDistinctFrom => (_$data['isDistinctFrom'] as DateTime?);

  DateTime? get isNotDistinctFrom => (_$data['isNotDistinctFrom'] as DateTime?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('isNil')) {
      final l$isNil = isNil;
      result$data['isNil'] = l$isNil;
    }
    if (_$data.containsKey('eq')) {
      final l$eq = eq;
      result$data['eq'] = l$eq == null ? null : tstzToString(l$eq);
    }
    if (_$data.containsKey('notEq')) {
      final l$notEq = notEq;
      result$data['notEq'] = l$notEq == null ? null : tstzToString(l$notEq);
    }
    if (_$data.containsKey('in')) {
      final l$$in = $in;
      result$data['in'] = l$$in?.map((e) => tstzToString(e)).toList();
    }
    if (_$data.containsKey('lessThan')) {
      final l$lessThan = lessThan;
      result$data['lessThan'] = l$lessThan == null
          ? null
          : tstzToString(l$lessThan);
    }
    if (_$data.containsKey('greaterThan')) {
      final l$greaterThan = greaterThan;
      result$data['greaterThan'] = l$greaterThan == null
          ? null
          : tstzToString(l$greaterThan);
    }
    if (_$data.containsKey('lessThanOrEqual')) {
      final l$lessThanOrEqual = lessThanOrEqual;
      result$data['lessThanOrEqual'] = l$lessThanOrEqual == null
          ? null
          : tstzToString(l$lessThanOrEqual);
    }
    if (_$data.containsKey('greaterThanOrEqual')) {
      final l$greaterThanOrEqual = greaterThanOrEqual;
      result$data['greaterThanOrEqual'] = l$greaterThanOrEqual == null
          ? null
          : tstzToString(l$greaterThanOrEqual);
    }
    if (_$data.containsKey('isDistinctFrom')) {
      final l$isDistinctFrom = isDistinctFrom;
      result$data['isDistinctFrom'] = l$isDistinctFrom == null
          ? null
          : tstzToString(l$isDistinctFrom);
    }
    if (_$data.containsKey('isNotDistinctFrom')) {
      final l$isNotDistinctFrom = isNotDistinctFrom;
      result$data['isNotDistinctFrom'] = l$isNotDistinctFrom == null
          ? null
          : tstzToString(l$isNotDistinctFrom);
    }
    return result$data;
  }

  CopyWith_Input_ContactFilterUpdatedAt<Input_ContactFilterUpdatedAt>
  get copyWith => CopyWith_Input_ContactFilterUpdatedAt(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ContactFilterUpdatedAt ||
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
