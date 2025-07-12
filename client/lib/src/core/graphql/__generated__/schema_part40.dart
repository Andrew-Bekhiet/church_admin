// Part 40 of the schema
part of "schema.graphql.dart";


abstract class CopyWith_Input_PersonsMaxOrderBy<TRes> {
  factory CopyWith_Input_PersonsMaxOrderBy(
    Input_PersonsMaxOrderBy instance,
    TRes Function(Input_PersonsMaxOrderBy) then,
  ) = _CopyWithImpl_Input_PersonsMaxOrderBy;

  factory CopyWith_Input_PersonsMaxOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonsMaxOrderBy;

  TRes call({
    Enum_OrderBy? addressText,
    Enum_OrderBy? birthdate,
    Enum_OrderBy? blurhash,
    Enum_OrderBy? churchId,
    Enum_OrderBy? collegeId,
    Enum_OrderBy? color,
    Enum_OrderBy? familyId,
    Enum_OrderBy? fatherId,
    Enum_OrderBy? id,
    Enum_OrderBy? jobDescription,
    Enum_OrderBy? jobId,
    Enum_OrderBy? mainPhone,
    Enum_OrderBy? name,
    Enum_OrderBy? notes,
    Enum_OrderBy? personTypeId,
    Enum_OrderBy? photoUpdatedAt,
    Enum_OrderBy? qualificationId,
    Enum_OrderBy? schoolId,
    Enum_OrderBy? shammasLevelId,
    Enum_OrderBy? stateId,
    Enum_OrderBy? storeId,
    Enum_OrderBy? studyYearId,
    Enum_OrderBy? uid,
  });
}

class _CopyWithImpl_Input_PersonsMaxOrderBy<TRes>
    implements CopyWith_Input_PersonsMaxOrderBy<TRes> {
  _CopyWithImpl_Input_PersonsMaxOrderBy(
    this._instance,
    this._then,
  );

  final Input_PersonsMaxOrderBy _instance;

  final TRes Function(Input_PersonsMaxOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? addressText = _undefined,
    Object? birthdate = _undefined,
    Object? blurhash = _undefined,
    Object? churchId = _undefined,
    Object? collegeId = _undefined,
    Object? color = _undefined,
    Object? familyId = _undefined,
    Object? fatherId = _undefined,
    Object? id = _undefined,
    Object? jobDescription = _undefined,
    Object? jobId = _undefined,
    Object? mainPhone = _undefined,
    Object? name = _undefined,
    Object? notes = _undefined,
    Object? personTypeId = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? qualificationId = _undefined,
    Object? schoolId = _undefined,
    Object? shammasLevelId = _undefined,
    Object? stateId = _undefined,
    Object? storeId = _undefined,
    Object? studyYearId = _undefined,
    Object? uid = _undefined,
  }) =>
      _then(Input_PersonsMaxOrderBy._({
        ..._instance._$data,
        if (addressText != _undefined)
          'addressText': (addressText as Enum_OrderBy?),
        if (birthdate != _undefined) 'birthdate': (birthdate as Enum_OrderBy?),
        if (blurhash != _undefined) 'blurhash': (blurhash as Enum_OrderBy?),
        if (churchId != _undefined) 'churchId': (churchId as Enum_OrderBy?),
        if (collegeId != _undefined) 'collegeId': (collegeId as Enum_OrderBy?),
        if (color != _undefined) 'color': (color as Enum_OrderBy?),
        if (familyId != _undefined) 'familyId': (familyId as Enum_OrderBy?),
        if (fatherId != _undefined) 'fatherId': (fatherId as Enum_OrderBy?),
        if (id != _undefined) 'id': (id as Enum_OrderBy?),
        if (jobDescription != _undefined)
          'jobDescription': (jobDescription as Enum_OrderBy?),
        if (jobId != _undefined) 'jobId': (jobId as Enum_OrderBy?),
        if (mainPhone != _undefined) 'mainPhone': (mainPhone as Enum_OrderBy?),
        if (name != _undefined) 'name': (name as Enum_OrderBy?),
        if (notes != _undefined) 'notes': (notes as Enum_OrderBy?),
        if (personTypeId != _undefined)
          'personTypeId': (personTypeId as Enum_OrderBy?),
        if (photoUpdatedAt != _undefined)
          'photoUpdatedAt': (photoUpdatedAt as Enum_OrderBy?),
        if (qualificationId != _undefined)
          'qualificationId': (qualificationId as Enum_OrderBy?),
        if (schoolId != _undefined) 'schoolId': (schoolId as Enum_OrderBy?),
        if (shammasLevelId != _undefined)
          'shammasLevelId': (shammasLevelId as Enum_OrderBy?),
        if (stateId != _undefined) 'stateId': (stateId as Enum_OrderBy?),
        if (storeId != _undefined) 'storeId': (storeId as Enum_OrderBy?),
        if (studyYearId != _undefined)
          'studyYearId': (studyYearId as Enum_OrderBy?),
        if (uid != _undefined) 'uid': (uid as Enum_OrderBy?),
      }));
}

class _CopyWithStubImpl_Input_PersonsMaxOrderBy<TRes>
    implements CopyWith_Input_PersonsMaxOrderBy<TRes> {
  _CopyWithStubImpl_Input_PersonsMaxOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? addressText,
    Enum_OrderBy? birthdate,
    Enum_OrderBy? blurhash,
    Enum_OrderBy? churchId,
    Enum_OrderBy? collegeId,
    Enum_OrderBy? color,
    Enum_OrderBy? familyId,
    Enum_OrderBy? fatherId,
    Enum_OrderBy? id,
    Enum_OrderBy? jobDescription,
    Enum_OrderBy? jobId,
    Enum_OrderBy? mainPhone,
    Enum_OrderBy? name,
    Enum_OrderBy? notes,
    Enum_OrderBy? personTypeId,
    Enum_OrderBy? photoUpdatedAt,
    Enum_OrderBy? qualificationId,
    Enum_OrderBy? schoolId,
    Enum_OrderBy? shammasLevelId,
    Enum_OrderBy? stateId,
    Enum_OrderBy? storeId,
    Enum_OrderBy? studyYearId,
    Enum_OrderBy? uid,
  }) =>
      _res;
}

class Input_PersonsMinOrderBy {
  factory Input_PersonsMinOrderBy({
    Enum_OrderBy? addressText,
    Enum_OrderBy? birthdate,
    Enum_OrderBy? blurhash,
    Enum_OrderBy? churchId,
    Enum_OrderBy? collegeId,
    Enum_OrderBy? color,
    Enum_OrderBy? familyId,
    Enum_OrderBy? fatherId,
    Enum_OrderBy? id,
    Enum_OrderBy? jobDescription,
    Enum_OrderBy? jobId,
    Enum_OrderBy? mainPhone,
    Enum_OrderBy? name,
    Enum_OrderBy? notes,
    Enum_OrderBy? personTypeId,
    Enum_OrderBy? photoUpdatedAt,
    Enum_OrderBy? qualificationId,
    Enum_OrderBy? schoolId,
    Enum_OrderBy? shammasLevelId,
    Enum_OrderBy? stateId,
    Enum_OrderBy? storeId,
    Enum_OrderBy? studyYearId,
    Enum_OrderBy? uid,
  }) =>
      Input_PersonsMinOrderBy._({
        if (addressText != null) r'addressText': addressText,
        if (birthdate != null) r'birthdate': birthdate,
        if (blurhash != null) r'blurhash': blurhash,
        if (churchId != null) r'churchId': churchId,
        if (collegeId != null) r'collegeId': collegeId,
        if (color != null) r'color': color,
        if (familyId != null) r'familyId': familyId,
        if (fatherId != null) r'fatherId': fatherId,
        if (id != null) r'id': id,
        if (jobDescription != null) r'jobDescription': jobDescription,
        if (jobId != null) r'jobId': jobId,
        if (mainPhone != null) r'mainPhone': mainPhone,
        if (name != null) r'name': name,
        if (notes != null) r'notes': notes,
        if (personTypeId != null) r'personTypeId': personTypeId,
        if (photoUpdatedAt != null) r'photoUpdatedAt': photoUpdatedAt,
        if (qualificationId != null) r'qualificationId': qualificationId,
        if (schoolId != null) r'schoolId': schoolId,
        if (shammasLevelId != null) r'shammasLevelId': shammasLevelId,
        if (stateId != null) r'stateId': stateId,
        if (storeId != null) r'storeId': storeId,
        if (studyYearId != null) r'studyYearId': studyYearId,
        if (uid != null) r'uid': uid,
      });

  Input_PersonsMinOrderBy._(this._$data);

  factory Input_PersonsMinOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('addressText')) {
      final l$addressText = data['addressText'];
      result$data['addressText'] = l$addressText == null
          ? null
          : fromJson_Enum_OrderBy((l$addressText as String));
    }
    if (data.containsKey('birthdate')) {
      final l$birthdate = data['birthdate'];
      result$data['birthdate'] = l$birthdate == null
          ? null
          : fromJson_Enum_OrderBy((l$birthdate as String));
    }
    if (data.containsKey('blurhash')) {
      final l$blurhash = data['blurhash'];
      result$data['blurhash'] = l$blurhash == null
          ? null
          : fromJson_Enum_OrderBy((l$blurhash as String));
    }
    if (data.containsKey('churchId')) {
      final l$churchId = data['churchId'];
      result$data['churchId'] = l$churchId == null
          ? null
          : fromJson_Enum_OrderBy((l$churchId as String));
    }
    if (data.containsKey('collegeId')) {
      final l$collegeId = data['collegeId'];
      result$data['collegeId'] = l$collegeId == null
          ? null
          : fromJson_Enum_OrderBy((l$collegeId as String));
    }
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] =
          l$color == null ? null : fromJson_Enum_OrderBy((l$color as String));
    }
    if (data.containsKey('familyId')) {
      final l$familyId = data['familyId'];
      result$data['familyId'] = l$familyId == null
          ? null
          : fromJson_Enum_OrderBy((l$familyId as String));
    }
    if (data.containsKey('fatherId')) {
      final l$fatherId = data['fatherId'];
      result$data['fatherId'] = l$fatherId == null
          ? null
          : fromJson_Enum_OrderBy((l$fatherId as String));
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] =
          l$id == null ? null : fromJson_Enum_OrderBy((l$id as String));
    }
    if (data.containsKey('jobDescription')) {
      final l$jobDescription = data['jobDescription'];
      result$data['jobDescription'] = l$jobDescription == null
          ? null
          : fromJson_Enum_OrderBy((l$jobDescription as String));
    }
    if (data.containsKey('jobId')) {
      final l$jobId = data['jobId'];
      result$data['jobId'] =
          l$jobId == null ? null : fromJson_Enum_OrderBy((l$jobId as String));
    }
    if (data.containsKey('mainPhone')) {
      final l$mainPhone = data['mainPhone'];
      result$data['mainPhone'] = l$mainPhone == null
          ? null
          : fromJson_Enum_OrderBy((l$mainPhone as String));
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] =
          l$name == null ? null : fromJson_Enum_OrderBy((l$name as String));
    }
    if (data.containsKey('notes')) {
      final l$notes = data['notes'];
      result$data['notes'] =
          l$notes == null ? null : fromJson_Enum_OrderBy((l$notes as String));
    }
    if (data.containsKey('personTypeId')) {
      final l$personTypeId = data['personTypeId'];
      result$data['personTypeId'] = l$personTypeId == null
          ? null
          : fromJson_Enum_OrderBy((l$personTypeId as String));
    }
    if (data.containsKey('photoUpdatedAt')) {
      final l$photoUpdatedAt = data['photoUpdatedAt'];
      result$data['photoUpdatedAt'] = l$photoUpdatedAt == null
          ? null
          : fromJson_Enum_OrderBy((l$photoUpdatedAt as String));
    }
    if (data.containsKey('qualificationId')) {
      final l$qualificationId = data['qualificationId'];
      result$data['qualificationId'] = l$qualificationId == null
          ? null
          : fromJson_Enum_OrderBy((l$qualificationId as String));
    }
    if (data.containsKey('schoolId')) {
      final l$schoolId = data['schoolId'];
      result$data['schoolId'] = l$schoolId == null
          ? null
          : fromJson_Enum_OrderBy((l$schoolId as String));
    }
    if (data.containsKey('shammasLevelId')) {
      final l$shammasLevelId = data['shammasLevelId'];
      result$data['shammasLevelId'] = l$shammasLevelId == null
          ? null
          : fromJson_Enum_OrderBy((l$shammasLevelId as String));
    }
    if (data.containsKey('stateId')) {
      final l$stateId = data['stateId'];
      result$data['stateId'] = l$stateId == null
          ? null
          : fromJson_Enum_OrderBy((l$stateId as String));
    }
    if (data.containsKey('storeId')) {
      final l$storeId = data['storeId'];
      result$data['storeId'] = l$storeId == null
          ? null
          : fromJson_Enum_OrderBy((l$storeId as String));
    }
    if (data.containsKey('studyYearId')) {
      final l$studyYearId = data['studyYearId'];
      result$data['studyYearId'] = l$studyYearId == null
          ? null
          : fromJson_Enum_OrderBy((l$studyYearId as String));
    }
    if (data.containsKey('uid')) {
      final l$uid = data['uid'];
      result$data['uid'] =
          l$uid == null ? null : fromJson_Enum_OrderBy((l$uid as String));
    }
    return Input_PersonsMinOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get addressText => (_$data['addressText'] as Enum_OrderBy?);

  Enum_OrderBy? get birthdate => (_$data['birthdate'] as Enum_OrderBy?);

  Enum_OrderBy? get blurhash => (_$data['blurhash'] as Enum_OrderBy?);

  Enum_OrderBy? get churchId => (_$data['churchId'] as Enum_OrderBy?);

  Enum_OrderBy? get collegeId => (_$data['collegeId'] as Enum_OrderBy?);

  Enum_OrderBy? get color => (_$data['color'] as Enum_OrderBy?);

  Enum_OrderBy? get familyId => (_$data['familyId'] as Enum_OrderBy?);

  Enum_OrderBy? get fatherId => (_$data['fatherId'] as Enum_OrderBy?);

  Enum_OrderBy? get id => (_$data['id'] as Enum_OrderBy?);

  Enum_OrderBy? get jobDescription =>
      (_$data['jobDescription'] as Enum_OrderBy?);

  Enum_OrderBy? get jobId => (_$data['jobId'] as Enum_OrderBy?);

  Enum_OrderBy? get mainPhone => (_$data['mainPhone'] as Enum_OrderBy?);

  Enum_OrderBy? get name => (_$data['name'] as Enum_OrderBy?);

  Enum_OrderBy? get notes => (_$data['notes'] as Enum_OrderBy?);

  Enum_OrderBy? get personTypeId => (_$data['personTypeId'] as Enum_OrderBy?);

  Enum_OrderBy? get photoUpdatedAt =>
      (_$data['photoUpdatedAt'] as Enum_OrderBy?);

  Enum_OrderBy? get qualificationId =>
      (_$data['qualificationId'] as Enum_OrderBy?);

  Enum_OrderBy? get schoolId => (_$data['schoolId'] as Enum_OrderBy?);

  Enum_OrderBy? get shammasLevelId =>
      (_$data['shammasLevelId'] as Enum_OrderBy?);

  Enum_OrderBy? get stateId => (_$data['stateId'] as Enum_OrderBy?);

  Enum_OrderBy? get storeId => (_$data['storeId'] as Enum_OrderBy?);

  Enum_OrderBy? get studyYearId => (_$data['studyYearId'] as Enum_OrderBy?);

  Enum_OrderBy? get uid => (_$data['uid'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('addressText')) {
      final l$addressText = addressText;
      result$data['addressText'] =
          l$addressText == null ? null : toJson_Enum_OrderBy(l$addressText);
    }
    if (_$data.containsKey('birthdate')) {
      final l$birthdate = birthdate;
      result$data['birthdate'] =
          l$birthdate == null ? null : toJson_Enum_OrderBy(l$birthdate);
    }
    if (_$data.containsKey('blurhash')) {
      final l$blurhash = blurhash;
      result$data['blurhash'] =
          l$blurhash == null ? null : toJson_Enum_OrderBy(l$blurhash);
    }
    if (_$data.containsKey('churchId')) {
      final l$churchId = churchId;
      result$data['churchId'] =
          l$churchId == null ? null : toJson_Enum_OrderBy(l$churchId);
    }
    if (_$data.containsKey('collegeId')) {
      final l$collegeId = collegeId;
      result$data['collegeId'] =
          l$collegeId == null ? null : toJson_Enum_OrderBy(l$collegeId);
    }
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] =
          l$color == null ? null : toJson_Enum_OrderBy(l$color);
    }
    if (_$data.containsKey('familyId')) {
      final l$familyId = familyId;
      result$data['familyId'] =
          l$familyId == null ? null : toJson_Enum_OrderBy(l$familyId);
    }
    if (_$data.containsKey('fatherId')) {
      final l$fatherId = fatherId;
      result$data['fatherId'] =
          l$fatherId == null ? null : toJson_Enum_OrderBy(l$fatherId);
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : toJson_Enum_OrderBy(l$id);
    }
    if (_$data.containsKey('jobDescription')) {
      final l$jobDescription = jobDescription;
      result$data['jobDescription'] = l$jobDescription == null
          ? null
          : toJson_Enum_OrderBy(l$jobDescription);
    }
    if (_$data.containsKey('jobId')) {
      final l$jobId = jobId;
      result$data['jobId'] =
          l$jobId == null ? null : toJson_Enum_OrderBy(l$jobId);
    }
    if (_$data.containsKey('mainPhone')) {
      final l$mainPhone = mainPhone;
      result$data['mainPhone'] =
          l$mainPhone == null ? null : toJson_Enum_OrderBy(l$mainPhone);
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name == null ? null : toJson_Enum_OrderBy(l$name);
    }
    if (_$data.containsKey('notes')) {
      final l$notes = notes;
      result$data['notes'] =
          l$notes == null ? null : toJson_Enum_OrderBy(l$notes);
    }
    if (_$data.containsKey('personTypeId')) {
      final l$personTypeId = personTypeId;
      result$data['personTypeId'] =
          l$personTypeId == null ? null : toJson_Enum_OrderBy(l$personTypeId);
    }
    if (_$data.containsKey('photoUpdatedAt')) {
      final l$photoUpdatedAt = photoUpdatedAt;
      result$data['photoUpdatedAt'] = l$photoUpdatedAt == null
          ? null
          : toJson_Enum_OrderBy(l$photoUpdatedAt);
    }
    if (_$data.containsKey('qualificationId')) {
      final l$qualificationId = qualificationId;
      result$data['qualificationId'] = l$qualificationId == null
          ? null
          : toJson_Enum_OrderBy(l$qualificationId);
    }
    if (_$data.containsKey('schoolId')) {
      final l$schoolId = schoolId;
      result$data['schoolId'] =
          l$schoolId == null ? null : toJson_Enum_OrderBy(l$schoolId);
    }
    if (_$data.containsKey('shammasLevelId')) {
      final l$shammasLevelId = shammasLevelId;
      result$data['shammasLevelId'] = l$shammasLevelId == null
          ? null
          : toJson_Enum_OrderBy(l$shammasLevelId);
    }
    if (_$data.containsKey('stateId')) {
      final l$stateId = stateId;
      result$data['stateId'] =
          l$stateId == null ? null : toJson_Enum_OrderBy(l$stateId);
    }
    if (_$data.containsKey('storeId')) {
      final l$storeId = storeId;
      result$data['storeId'] =
          l$storeId == null ? null : toJson_Enum_OrderBy(l$storeId);
    }
    if (_$data.containsKey('studyYearId')) {
      final l$studyYearId = studyYearId;
      result$data['studyYearId'] =
          l$studyYearId == null ? null : toJson_Enum_OrderBy(l$studyYearId);
    }
    if (_$data.containsKey('uid')) {
      final l$uid = uid;
      result$data['uid'] = l$uid == null ? null : toJson_Enum_OrderBy(l$uid);
    }
    return result$data;
  }

  CopyWith_Input_PersonsMinOrderBy<Input_PersonsMinOrderBy> get copyWith =>
      CopyWith_Input_PersonsMinOrderBy(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsMinOrderBy || runtimeType != other.runtimeType) {
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
    final l$birthdate = birthdate;
    final lOther$birthdate = other.birthdate;
    if (_$data.containsKey('birthdate') !=
        other._$data.containsKey('birthdate')) {
      return false;
    }
    if (l$birthdate != lOther$birthdate) {
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
    final l$churchId = churchId;
    final lOther$churchId = other.churchId;
    if (_$data.containsKey('churchId') !=
        other._$data.containsKey('churchId')) {
      return false;
    }
    if (l$churchId != lOther$churchId) {
      return false;
    }
    final l$collegeId = collegeId;
    final lOther$collegeId = other.collegeId;
    if (_$data.containsKey('collegeId') !=
        other._$data.containsKey('collegeId')) {
      return false;
    }
    if (l$collegeId != lOther$collegeId) {
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
    final l$familyId = familyId;
    final lOther$familyId = other.familyId;
    if (_$data.containsKey('familyId') !=
        other._$data.containsKey('familyId')) {
      return false;
    }
    if (l$familyId != lOther$familyId) {
      return false;
    }
    final l$fatherId = fatherId;
    final lOther$fatherId = other.fatherId;
    if (_$data.containsKey('fatherId') !=
        other._$data.containsKey('fatherId')) {
      return false;
    }
    if (l$fatherId != lOther$fatherId) {
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
    final l$jobDescription = jobDescription;
    final lOther$jobDescription = other.jobDescription;
    if (_$data.containsKey('jobDescription') !=
        other._$data.containsKey('jobDescription')) {
      return false;
    }
    if (l$jobDescription != lOther$jobDescription) {
      return false;
    }
    final l$jobId = jobId;
    final lOther$jobId = other.jobId;
    if (_$data.containsKey('jobId') != other._$data.containsKey('jobId')) {
      return false;
    }
    if (l$jobId != lOther$jobId) {
      return false;
    }
    final l$mainPhone = mainPhone;
    final lOther$mainPhone = other.mainPhone;
    if (_$data.containsKey('mainPhone') !=
        other._$data.containsKey('mainPhone')) {
      return false;
    }
    if (l$mainPhone != lOther$mainPhone) {
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
    final l$personTypeId = personTypeId;
    final lOther$personTypeId = other.personTypeId;
    if (_$data.containsKey('personTypeId') !=
        other._$data.containsKey('personTypeId')) {
      return false;
    }
    if (l$personTypeId != lOther$personTypeId) {
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
    final l$qualificationId = qualificationId;
    final lOther$qualificationId = other.qualificationId;
    if (_$data.containsKey('qualificationId') !=
        other._$data.containsKey('qualificationId')) {
      return false;
    }
    if (l$qualificationId != lOther$qualificationId) {
      return false;
    }
    final l$schoolId = schoolId;
    final lOther$schoolId = other.schoolId;
    if (_$data.containsKey('schoolId') !=
        other._$data.containsKey('schoolId')) {
      return false;
    }
    if (l$schoolId != lOther$schoolId) {
      return false;
    }
    final l$shammasLevelId = shammasLevelId;
    final lOther$shammasLevelId = other.shammasLevelId;
    if (_$data.containsKey('shammasLevelId') !=
        other._$data.containsKey('shammasLevelId')) {
      return false;
    }
    if (l$shammasLevelId != lOther$shammasLevelId) {
      return false;
    }
    final l$stateId = stateId;
    final lOther$stateId = other.stateId;
    if (_$data.containsKey('stateId') != other._$data.containsKey('stateId')) {
      return false;
    }
    if (l$stateId != lOther$stateId) {
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
    final l$studyYearId = studyYearId;
    final lOther$studyYearId = other.studyYearId;
    if (_$data.containsKey('studyYearId') !=
        other._$data.containsKey('studyYearId')) {
      return false;
    }
    if (l$studyYearId != lOther$studyYearId) {
      return false;
    }
    final l$uid = uid;
    final lOther$uid = other.uid;
    if (_$data.containsKey('uid') != other._$data.containsKey('uid')) {
      return false;
    }
    if (l$uid != lOther$uid) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$addressText = addressText;
    final l$birthdate = birthdate;
    final l$blurhash = blurhash;
    final l$churchId = churchId;
    final l$collegeId = collegeId;
    final l$color = color;
    final l$familyId = familyId;
    final l$fatherId = fatherId;
    final l$id = id;
    final l$jobDescription = jobDescription;
    final l$jobId = jobId;
    final l$mainPhone = mainPhone;
    final l$name = name;
    final l$notes = notes;
    final l$personTypeId = personTypeId;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$qualificationId = qualificationId;
    final l$schoolId = schoolId;
    final l$shammasLevelId = shammasLevelId;
    final l$stateId = stateId;
    final l$storeId = storeId;
    final l$studyYearId = studyYearId;
    final l$uid = uid;
    return Object.hashAll([
      _$data.containsKey('addressText') ? l$addressText : const {},
      _$data.containsKey('birthdate') ? l$birthdate : const {},
      _$data.containsKey('blurhash') ? l$blurhash : const {},
      _$data.containsKey('churchId') ? l$churchId : const {},
      _$data.containsKey('collegeId') ? l$collegeId : const {},
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('familyId') ? l$familyId : const {},
      _$data.containsKey('fatherId') ? l$fatherId : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('jobDescription') ? l$jobDescription : const {},
      _$data.containsKey('jobId') ? l$jobId : const {},
      _$data.containsKey('mainPhone') ? l$mainPhone : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('notes') ? l$notes : const {},
      _$data.containsKey('personTypeId') ? l$personTypeId : const {},
      _$data.containsKey('photoUpdatedAt') ? l$photoUpdatedAt : const {},
      _$data.containsKey('qualificationId') ? l$qualificationId : const {},
      _$data.containsKey('schoolId') ? l$schoolId : const {},
      _$data.containsKey('shammasLevelId') ? l$shammasLevelId : const {},
      _$data.containsKey('stateId') ? l$stateId : const {},
      _$data.containsKey('storeId') ? l$storeId : const {},
      _$data.containsKey('studyYearId') ? l$studyYearId : const {},
      _$data.containsKey('uid') ? l$uid : const {},
    ]);
  }
}

abstract class CopyWith_Input_PersonsMinOrderBy<TRes> {
  factory CopyWith_Input_PersonsMinOrderBy(
    Input_PersonsMinOrderBy instance,
    TRes Function(Input_PersonsMinOrderBy) then,
  ) = _CopyWithImpl_Input_PersonsMinOrderBy;

  factory CopyWith_Input_PersonsMinOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonsMinOrderBy;

  TRes call({
    Enum_OrderBy? addressText,
    Enum_OrderBy? birthdate,
    Enum_OrderBy? blurhash,
    Enum_OrderBy? churchId,
    Enum_OrderBy? collegeId,
    Enum_OrderBy? color,
    Enum_OrderBy? familyId,
    Enum_OrderBy? fatherId,
    Enum_OrderBy? id,
    Enum_OrderBy? jobDescription,
    Enum_OrderBy? jobId,
    Enum_OrderBy? mainPhone,
    Enum_OrderBy? name,
    Enum_OrderBy? notes,
    Enum_OrderBy? personTypeId,
    Enum_OrderBy? photoUpdatedAt,
    Enum_OrderBy? qualificationId,
    Enum_OrderBy? schoolId,
    Enum_OrderBy? shammasLevelId,
    Enum_OrderBy? stateId,
    Enum_OrderBy? storeId,
    Enum_OrderBy? studyYearId,
    Enum_OrderBy? uid,
  });
}

class _CopyWithImpl_Input_PersonsMinOrderBy<TRes>
    implements CopyWith_Input_PersonsMinOrderBy<TRes> {
  _CopyWithImpl_Input_PersonsMinOrderBy(
    this._instance,
    this._then,
  );

  final Input_PersonsMinOrderBy _instance;

  final TRes Function(Input_PersonsMinOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? addressText = _undefined,
    Object? birthdate = _undefined,
    Object? blurhash = _undefined,
    Object? churchId = _undefined,
    Object? collegeId = _undefined,
    Object? color = _undefined,
    Object? familyId = _undefined,
    Object? fatherId = _undefined,
    Object? id = _undefined,
    Object? jobDescription = _undefined,
    Object? jobId = _undefined,
    Object? mainPhone = _undefined,
    Object? name = _undefined,
    Object? notes = _undefined,
    Object? personTypeId = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? qualificationId = _undefined,
    Object? schoolId = _undefined,
    Object? shammasLevelId = _undefined,
    Object? stateId = _undefined,
    Object? storeId = _undefined,
    Object? studyYearId = _undefined,
    Object? uid = _undefined,
  }) =>
      _then(Input_PersonsMinOrderBy._({
        ..._instance._$data,
        if (addressText != _undefined)
          'addressText': (addressText as Enum_OrderBy?),
        if (birthdate != _undefined) 'birthdate': (birthdate as Enum_OrderBy?),
        if (blurhash != _undefined) 'blurhash': (blurhash as Enum_OrderBy?),
        if (churchId != _undefined) 'churchId': (churchId as Enum_OrderBy?),
        if (collegeId != _undefined) 'collegeId': (collegeId as Enum_OrderBy?),
        if (color != _undefined) 'color': (color as Enum_OrderBy?),
        if (familyId != _undefined) 'familyId': (familyId as Enum_OrderBy?),
        if (fatherId != _undefined) 'fatherId': (fatherId as Enum_OrderBy?),
        if (id != _undefined) 'id': (id as Enum_OrderBy?),
        if (jobDescription != _undefined)
          'jobDescription': (jobDescription as Enum_OrderBy?),
        if (jobId != _undefined) 'jobId': (jobId as Enum_OrderBy?),
        if (mainPhone != _undefined) 'mainPhone': (mainPhone as Enum_OrderBy?),
        if (name != _undefined) 'name': (name as Enum_OrderBy?),
        if (notes != _undefined) 'notes': (notes as Enum_OrderBy?),
        if (personTypeId != _undefined)
          'personTypeId': (personTypeId as Enum_OrderBy?),
        if (photoUpdatedAt != _undefined)
          'photoUpdatedAt': (photoUpdatedAt as Enum_OrderBy?),
        if (qualificationId != _undefined)
          'qualificationId': (qualificationId as Enum_OrderBy?),
        if (schoolId != _undefined) 'schoolId': (schoolId as Enum_OrderBy?),
        if (shammasLevelId != _undefined)
          'shammasLevelId': (shammasLevelId as Enum_OrderBy?),
        if (stateId != _undefined) 'stateId': (stateId as Enum_OrderBy?),
        if (storeId != _undefined) 'storeId': (storeId as Enum_OrderBy?),
        if (studyYearId != _undefined)
          'studyYearId': (studyYearId as Enum_OrderBy?),
        if (uid != _undefined) 'uid': (uid as Enum_OrderBy?),
      }));
}

class _CopyWithStubImpl_Input_PersonsMinOrderBy<TRes>
    implements CopyWith_Input_PersonsMinOrderBy<TRes> {
  _CopyWithStubImpl_Input_PersonsMinOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? addressText,
    Enum_OrderBy? birthdate,
    Enum_OrderBy? blurhash,
    Enum_OrderBy? churchId,
    Enum_OrderBy? collegeId,
    Enum_OrderBy? color,
    Enum_OrderBy? familyId,
    Enum_OrderBy? fatherId,
    Enum_OrderBy? id,
    Enum_OrderBy? jobDescription,
    Enum_OrderBy? jobId,
    Enum_OrderBy? mainPhone,
    Enum_OrderBy? name,
    Enum_OrderBy? notes,
    Enum_OrderBy? personTypeId,
    Enum_OrderBy? photoUpdatedAt,
    Enum_OrderBy? qualificationId,
    Enum_OrderBy? schoolId,
    Enum_OrderBy? shammasLevelId,
    Enum_OrderBy? stateId,
    Enum_OrderBy? storeId,
    Enum_OrderBy? studyYearId,
    Enum_OrderBy? uid,
  }) =>
      _res;
}

class Input_PersonsObjRelInsertInput {
  factory Input_PersonsObjRelInsertInput({
    required Input_PersonsInsertInput data,
    Input_PersonsOnConflict? onConflict,
  }) =>
      Input_PersonsObjRelInsertInput._({
        r'data': data,
        if (onConflict != null) r'onConflict': onConflict,
      });

  Input_PersonsObjRelInsertInput._(this._$data);

  factory Input_PersonsObjRelInsertInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] =
        Input_PersonsInsertInput.fromJson((l$data as Map<String, dynamic>));
    if (data.containsKey('onConflict')) {
      final l$onConflict = data['onConflict'];
      result$data['onConflict'] = l$onConflict == null
          ? null
          : Input_PersonsOnConflict.fromJson(
              (l$onConflict as Map<String, dynamic>));
    }
    return Input_PersonsObjRelInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_PersonsInsertInput get data =>
      (_$data['data'] as Input_PersonsInsertInput);

  Input_PersonsOnConflict? get onConflict =>
      (_$data['onConflict'] as Input_PersonsOnConflict?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$data = data;
    result$data['data'] = l$data.toJson();
    if (_$data.containsKey('onConflict')) {
      final l$onConflict = onConflict;
      result$data['onConflict'] = l$onConflict?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_PersonsObjRelInsertInput<Input_PersonsObjRelInsertInput>
      get copyWith => CopyWith_Input_PersonsObjRelInsertInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsObjRelInsertInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (l$data != lOther$data) {
      return false;
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
      l$data,
      _$data.containsKey('onConflict') ? l$onConflict : const {},
    ]);
  }
}

abstract class CopyWith_Input_PersonsObjRelInsertInput<TRes> {
  factory CopyWith_Input_PersonsObjRelInsertInput(
    Input_PersonsObjRelInsertInput instance,
    TRes Function(Input_PersonsObjRelInsertInput) then,
  ) = _CopyWithImpl_Input_PersonsObjRelInsertInput;

  factory CopyWith_Input_PersonsObjRelInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonsObjRelInsertInput;

  TRes call({
    Input_PersonsInsertInput? data,
    Input_PersonsOnConflict? onConflict,
  });
  CopyWith_Input_PersonsInsertInput<TRes> get data;
  CopyWith_Input_PersonsOnConflict<TRes> get onConflict;
}

class _CopyWithImpl_Input_PersonsObjRelInsertInput<TRes>
    implements CopyWith_Input_PersonsObjRelInsertInput<TRes> {
  _CopyWithImpl_Input_PersonsObjRelInsertInput(
    this._instance,
    this._then,
  );

  final Input_PersonsObjRelInsertInput _instance;

  final TRes Function(Input_PersonsObjRelInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? data = _undefined,
    Object? onConflict = _undefined,
  }) =>
      _then(Input_PersonsObjRelInsertInput._({
        ..._instance._$data,
        if (data != _undefined && data != null)
          'data': (data as Input_PersonsInsertInput),
        if (onConflict != _undefined)
          'onConflict': (onConflict as Input_PersonsOnConflict?),
      }));

  CopyWith_Input_PersonsInsertInput<TRes> get data {
    final local$data = _instance.data;
    return CopyWith_Input_PersonsInsertInput(local$data, (e) => call(data: e));
  }

  CopyWith_Input_PersonsOnConflict<TRes> get onConflict {
    final local$onConflict = _instance.onConflict;
    return local$onConflict == null
        ? CopyWith_Input_PersonsOnConflict.stub(_then(_instance))
        : CopyWith_Input_PersonsOnConflict(
            local$onConflict, (e) => call(onConflict: e));
  }
}

class _CopyWithStubImpl_Input_PersonsObjRelInsertInput<TRes>
    implements CopyWith_Input_PersonsObjRelInsertInput<TRes> {
  _CopyWithStubImpl_Input_PersonsObjRelInsertInput(this._res);

  TRes _res;

  call({
    Input_PersonsInsertInput? data,
    Input_PersonsOnConflict? onConflict,
  }) =>
      _res;

  CopyWith_Input_PersonsInsertInput<TRes> get data =>
      CopyWith_Input_PersonsInsertInput.stub(_res);

  CopyWith_Input_PersonsOnConflict<TRes> get onConflict =>
      CopyWith_Input_PersonsOnConflict.stub(_res);
}

class Input_PersonsOnConflict {
  factory Input_PersonsOnConflict({
    required Enum_PersonsConstraint constraint,
    List<Enum_PersonsUpdateColumn>? updateColumns,
    Input_PersonsBoolExp? where,
  }) =>
      Input_PersonsOnConflict._({
        r'constraint': constraint,
        if (updateColumns != null) r'updateColumns': updateColumns,
        if (where != null) r'where': where,
      });

  Input_PersonsOnConflict._(this._$data);

  factory Input_PersonsOnConflict.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$constraint = data['constraint'];
    result$data['constraint'] =
        fromJson_Enum_PersonsConstraint((l$constraint as String));
    if (data.containsKey('updateColumns')) {
      final l$updateColumns = data['updateColumns'];
      result$data['updateColumns'] = (l$updateColumns as List<dynamic>)
          .map((e) => fromJson_Enum_PersonsUpdateColumn((e as String)))
          .toList();
    }
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = l$where == null
          ? null
          : Input_PersonsBoolExp.fromJson((l$where as Map<String, dynamic>));
    }
    return Input_PersonsOnConflict._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_PersonsConstraint get constraint =>
      (_$data['constraint'] as Enum_PersonsConstraint);

  List<Enum_PersonsUpdateColumn>? get updateColumns =>
      (_$data['updateColumns'] as List<Enum_PersonsUpdateColumn>?);

  Input_PersonsBoolExp? get where => (_$data['where'] as Input_PersonsBoolExp?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$constraint = constraint;
    result$data['constraint'] = toJson_Enum_PersonsConstraint(l$constraint);
    if (_$data.containsKey('updateColumns')) {
      final l$updateColumns = updateColumns;
      result$data['updateColumns'] =
          (l$updateColumns as List<Enum_PersonsUpdateColumn>)
              .map((e) => toJson_Enum_PersonsUpdateColumn(e))
              .toList();
    }
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_PersonsOnConflict<Input_PersonsOnConflict> get copyWith =>
      CopyWith_Input_PersonsOnConflict(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsOnConflict || runtimeType != other.runtimeType) {
      return false;
    }
    final l$constraint = constraint;
    final lOther$constraint = other.constraint;
    if (l$constraint != lOther$constraint) {
      return false;
    }
    final l$updateColumns = updateColumns;
    final lOther$updateColumns = other.updateColumns;
    if (_$data.containsKey('updateColumns') !=
        other._$data.containsKey('updateColumns')) {
      return false;
    }
    if (l$updateColumns != null && lOther$updateColumns != null) {
      if (l$updateColumns.length != lOther$updateColumns.length) {
        return false;
      }
      for (int i = 0; i < l$updateColumns.length; i++) {
        final l$updateColumns$entry = l$updateColumns[i];
        final lOther$updateColumns$entry = lOther$updateColumns[i];
        if (l$updateColumns$entry != lOther$updateColumns$entry) {
          return false;
        }
      }
    } else if (l$updateColumns != lOther$updateColumns) {
      return false;
    }
    final l$where = where;
    final lOther$where = other.where;
    if (_$data.containsKey('where') != other._$data.containsKey('where')) {
      return false;
    }
    if (l$where != lOther$where) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$constraint = constraint;
    final l$updateColumns = updateColumns;
    final l$where = where;
    return Object.hashAll([
      l$constraint,
      _$data.containsKey('updateColumns')
          ? l$updateColumns == null
              ? null
              : Object.hashAll(l$updateColumns.map((v) => v))
          : const {},
      _$data.containsKey('where') ? l$where : const {},
    ]);
  }
}

abstract class CopyWith_Input_PersonsOnConflict<TRes> {
  factory CopyWith_Input_PersonsOnConflict(
    Input_PersonsOnConflict instance,
    TRes Function(Input_PersonsOnConflict) then,
  ) = _CopyWithImpl_Input_PersonsOnConflict;

  factory CopyWith_Input_PersonsOnConflict.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonsOnConflict;

  TRes call({
    Enum_PersonsConstraint? constraint,
    List<Enum_PersonsUpdateColumn>? updateColumns,
    Input_PersonsBoolExp? where,
  });
  CopyWith_Input_PersonsBoolExp<TRes> get where;
}

class _CopyWithImpl_Input_PersonsOnConflict<TRes>
    implements CopyWith_Input_PersonsOnConflict<TRes> {
  _CopyWithImpl_Input_PersonsOnConflict(
    this._instance,
    this._then,
  );

  final Input_PersonsOnConflict _instance;

  final TRes Function(Input_PersonsOnConflict) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? constraint = _undefined,
    Object? updateColumns = _undefined,
    Object? where = _undefined,
  }) =>
      _then(Input_PersonsOnConflict._({
        ..._instance._$data,
        if (constraint != _undefined && constraint != null)
          'constraint': (constraint as Enum_PersonsConstraint),
        if (updateColumns != _undefined && updateColumns != null)
          'updateColumns': (updateColumns as List<Enum_PersonsUpdateColumn>),
        if (where != _undefined) 'where': (where as Input_PersonsBoolExp?),
      }));

  CopyWith_Input_PersonsBoolExp<TRes> get where {
    final local$where = _instance.where;
    return local$where == null
        ? CopyWith_Input_PersonsBoolExp.stub(_then(_instance))
        : CopyWith_Input_PersonsBoolExp(local$where, (e) => call(where: e));
  }
}

class _CopyWithStubImpl_Input_PersonsOnConflict<TRes>
    implements CopyWith_Input_PersonsOnConflict<TRes> {
  _CopyWithStubImpl_Input_PersonsOnConflict(this._res);

  TRes _res;

  call({
    Enum_PersonsConstraint? constraint,
    List<Enum_PersonsUpdateColumn>? updateColumns,
    Input_PersonsBoolExp? where,
  }) =>
      _res;

  CopyWith_Input_PersonsBoolExp<TRes> get where =>
      CopyWith_Input_PersonsBoolExp.stub(_res);
}

class Input_PersonsOrderBy {
  factory Input_PersonsOrderBy({
    Input_AddressesOrderBy? address,
    Enum_OrderBy? addressText,
    Input_HistoryAttendanceHistoryAggregateOrderBy? attendanceHistoryAggregate,
    Enum_OrderBy? birthdate,
    Enum_OrderBy? birthday,
    Enum_OrderBy? blurhash,
    Input_HistoryCallHistoryAggregateOrderBy? callHistoryAggregate,
    Input_ChurchesOrderBy? church,
    Enum_OrderBy? churchId,
    Input_ClassesPersonsAggregateOrderBy? classesAggregate,
    Input_CollegesOrderBy? college,
    Enum_OrderBy? collegeId,
    Enum_OrderBy? color,
    Input_HistoryConfessionHistoryAggregateOrderBy? confessionHistoryAggregate,
    Input_HistoryEditHistoryAggregateOrderBy? editHistoryAggregate,
    Input_FamiliesOrderBy? family,
    Enum_OrderBy? familyId,
    Input_FathersOrderBy? father,
    Enum_OrderBy? fatherId,
    Enum_OrderBy? gender,
    Enum_OrderBy? geolocation,
    Input_PersonsGroupsAggregateOrderBy? groupsAggregate,
    Input_PersonsHobbiesAggregateOrderBy? hobbiesAggregate,
    Enum_OrderBy? id,
    Enum_OrderBy? isServant,
    Enum_OrderBy? isShammas,
    Enum_OrderBy? isStudent,
    Input_JobsOrderBy? job,
    Enum_OrderBy? jobDescription,
    Enum_OrderBy? jobId,
    Input_HistoryKodasHistoryAggregateOrderBy? kodasHistoryAggregate,
    Input_HistoryLatestCallsOrderBy? lastCall,
    Input_HistoryLatestConfessionsOrderBy? lastConfession,
    Input_HistoryLatestEditsOrderBy? lastEdit,
    Input_HistoryLatestKodasesOrderBy? lastKodas,
    Input_HistoryLatestVisitsOrderBy? lastVisit,
    Enum_OrderBy? mainPhone,
    Enum_OrderBy? name,
    Enum_OrderBy? notes,
    Enum_OrderBy? otherPhones,
    Input_PersonTypesOrderBy? personType,
    Enum_OrderBy? personTypeId,
    Enum_OrderBy? photoUpdatedAt,
    Input_QualificationsOrderBy? qualification,
    Enum_OrderBy? qualificationId,
    Input_SchoolsOrderBy? school,
    Enum_OrderBy? schoolId,
    Input_PersonsServicesAggregateOrderBy? servicesAggregate,
    Input_ShammasLevelsOrderBy? shammasLevel,
    Enum_OrderBy? shammasLevelId,
    Input_PersonStatesOrderBy? state,
    Enum_OrderBy? stateId,
    Enum_OrderBy? storeId,
    Input_StudyYearsOrderBy? studyYear,
    Enum_OrderBy? studyYearId,
    Input_PersonsTagsAggregateOrderBy? tagsAggregate,
    Enum_OrderBy? uid,
    Input_AuthUsersDataOrderBy? user,
    Input_HistoryVisitHistoryAggregateOrderBy? visitHistoryAggregate,
  }) =>
      Input_PersonsOrderBy._({
        if (address != null) r'address': address,
        if (addressText != null) r'addressText': addressText,
        if (attendanceHistoryAggregate != null)
          r'attendanceHistoryAggregate': attendanceHistoryAggregate,
        if (birthdate != null) r'birthdate': birthdate,
        if (birthday != null) r'birthday': birthday,
        if (blurhash != null) r'blurhash': blurhash,
        if (callHistoryAggregate != null)
          r'callHistoryAggregate': callHistoryAggregate,
        if (church != null) r'church': church,
        if (churchId != null) r'churchId': churchId,
        if (classesAggregate != null) r'classesAggregate': classesAggregate,
        if (college != null) r'college': college,
        if (collegeId != null) r'collegeId': collegeId,
        if (color != null) r'color': color,
        if (confessionHistoryAggregate != null)
          r'confessionHistoryAggregate': confessionHistoryAggregate,
        if (editHistoryAggregate != null)
          r'editHistoryAggregate': editHistoryAggregate,
        if (family != null) r'family': family,
        if (familyId != null) r'familyId': familyId,
        if (father != null) r'father': father,
        if (fatherId != null) r'fatherId': fatherId,
        if (gender != null) r'gender': gender,
        if (geolocation != null) r'geolocation': geolocation,
        if (groupsAggregate != null) r'groupsAggregate': groupsAggregate,
        if (hobbiesAggregate != null) r'hobbiesAggregate': hobbiesAggregate,
        if (id != null) r'id': id,
        if (isServant != null) r'isServant': isServant,
        if (isShammas != null) r'isShammas': isShammas,
        if (isStudent != null) r'isStudent': isStudent,
        if (job != null) r'job': job,
        if (jobDescription != null) r'jobDescription': jobDescription,
        if (jobId != null) r'jobId': jobId,
        if (kodasHistoryAggregate != null)
          r'kodasHistoryAggregate': kodasHistoryAggregate,
        if (lastCall != null) r'lastCall': lastCall,
        if (lastConfession != null) r'lastConfession': lastConfession,
        if (lastEdit != null) r'lastEdit': lastEdit,
        if (lastKodas != null) r'lastKodas': lastKodas,
        if (lastVisit != null) r'lastVisit': lastVisit,
        if (mainPhone != null) r'mainPhone': mainPhone,
        if (name != null) r'name': name,
        if (notes != null) r'notes': notes,
        if (otherPhones != null) r'otherPhones': otherPhones,
        if (personType != null) r'personType': personType,
        if (personTypeId != null) r'personTypeId': personTypeId,
        if (photoUpdatedAt != null) r'photoUpdatedAt': photoUpdatedAt,
        if (qualification != null) r'qualification': qualification,
        if (qualificationId != null) r'qualificationId': qualificationId,
        if (school != null) r'school': school,
        if (schoolId != null) r'schoolId': schoolId,
        if (servicesAggregate != null) r'servicesAggregate': servicesAggregate,
        if (shammasLevel != null) r'shammasLevel': shammasLevel,
        if (shammasLevelId != null) r'shammasLevelId': shammasLevelId,
        if (state != null) r'state': state,
        if (stateId != null) r'stateId': stateId,
        if (storeId != null) r'storeId': storeId,
        if (studyYear != null) r'studyYear': studyYear,
        if (studyYearId != null) r'studyYearId': studyYearId,
        if (tagsAggregate != null) r'tagsAggregate': tagsAggregate,
        if (uid != null) r'uid': uid,
        if (user != null) r'user': user,
        if (visitHistoryAggregate != null)
          r'visitHistoryAggregate': visitHistoryAggregate,
      });

  Input_PersonsOrderBy._(this._$data);

  factory Input_PersonsOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('address')) {
      final l$address = data['address'];
      result$data['address'] = l$address == null
          ? null
          : Input_AddressesOrderBy.fromJson(
              (l$address as Map<String, dynamic>));
    }
    if (data.containsKey('addressText')) {
      final l$addressText = data['addressText'];
      result$data['addressText'] = l$addressText == null
          ? null
          : fromJson_Enum_OrderBy((l$addressText as String));
    }
    if (data.containsKey('attendanceHistoryAggregate')) {
      final l$attendanceHistoryAggregate = data['attendanceHistoryAggregate'];
      result$data['attendanceHistoryAggregate'] =
          l$attendanceHistoryAggregate == null
              ? null
              : Input_HistoryAttendanceHistoryAggregateOrderBy.fromJson(
                  (l$attendanceHistoryAggregate as Map<String, dynamic>));
    }
    if (data.containsKey('birthdate')) {
      final l$birthdate = data['birthdate'];
      result$data['birthdate'] = l$birthdate == null
          ? null
          : fromJson_Enum_OrderBy((l$birthdate as String));
    }
    if (data.containsKey('birthday')) {
      final l$birthday = data['birthday'];
      result$data['birthday'] = l$birthday == null
          ? null
          : fromJson_Enum_OrderBy((l$birthday as String));
    }
    if (data.containsKey('blurhash')) {
      final l$blurhash = data['blurhash'];
      result$data['blurhash'] = l$blurhash == null
          ? null
          : fromJson_Enum_OrderBy((l$blurhash as String));
    }
    if (data.containsKey('callHistoryAggregate')) {
      final l$callHistoryAggregate = data['callHistoryAggregate'];
      result$data['callHistoryAggregate'] = l$callHistoryAggregate == null
          ? null
          : Input_HistoryCallHistoryAggregateOrderBy.fromJson(
              (l$callHistoryAggregate as Map<String, dynamic>));
    }
    if (data.containsKey('church')) {
      final l$church = data['church'];
      result$data['church'] = l$church == null
          ? null
          : Input_ChurchesOrderBy.fromJson((l$church as Map<String, dynamic>));
    }
    if (data.containsKey('churchId')) {
      final l$churchId = data['churchId'];
      result$data['churchId'] = l$churchId == null
          ? null
          : fromJson_Enum_OrderBy((l$churchId as String));
    }
    if (data.containsKey('classesAggregate')) {
      final l$classesAggregate = data['classesAggregate'];
      result$data['classesAggregate'] = l$classesAggregate == null
          ? null
          : Input_ClassesPersonsAggregateOrderBy.fromJson(
              (l$classesAggregate as Map<String, dynamic>));
    }
    if (data.containsKey('college')) {
      final l$college = data['college'];
      result$data['college'] = l$college == null
          ? null
          : Input_CollegesOrderBy.fromJson((l$college as Map<String, dynamic>));
    }
    if (data.containsKey('collegeId')) {
      final l$collegeId = data['collegeId'];
      result$data['collegeId'] = l$collegeId == null
          ? null
          : fromJson_Enum_OrderBy((l$collegeId as String));
    }
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] =
          l$color == null ? null : fromJson_Enum_OrderBy((l$color as String));
    }
    if (data.containsKey('confessionHistoryAggregate')) {
      final l$confessionHistoryAggregate = data['confessionHistoryAggregate'];
      result$data['confessionHistoryAggregate'] =
          l$confessionHistoryAggregate == null
              ? null
              : Input_HistoryConfessionHistoryAggregateOrderBy.fromJson(
                  (l$confessionHistoryAggregate as Map<String, dynamic>));
    }
    if (data.containsKey('editHistoryAggregate')) {
      final l$editHistoryAggregate = data['editHistoryAggregate'];
      result$data['editHistoryAggregate'] = l$editHistoryAggregate == null
          ? null
          : Input_HistoryEditHistoryAggregateOrderBy.fromJson(
              (l$editHistoryAggregate as Map<String, dynamic>));
    }
    if (data.containsKey('family')) {
      final l$family = data['family'];
      result$data['family'] = l$family == null
          ? null
          : Input_FamiliesOrderBy.fromJson((l$family as Map<String, dynamic>));
    }
    if (data.containsKey('familyId')) {
      final l$familyId = data['familyId'];
      result$data['familyId'] = l$familyId == null
          ? null
          : fromJson_Enum_OrderBy((l$familyId as String));
    }
    if (data.containsKey('father')) {
      final l$father = data['father'];
      result$data['father'] = l$father == null
          ? null
          : Input_FathersOrderBy.fromJson((l$father as Map<String, dynamic>));
    }
    if (data.containsKey('fatherId')) {
      final l$fatherId = data['fatherId'];
      result$data['fatherId'] = l$fatherId == null
          ? null
          : fromJson_Enum_OrderBy((l$fatherId as String));
    }
    if (data.containsKey('gender')) {
      final l$gender = data['gender'];
      result$data['gender'] =
          l$gender == null ? null : fromJson_Enum_OrderBy((l$gender as String));
    }
    if (data.containsKey('geolocation')) {
      final l$geolocation = data['geolocation'];
      result$data['geolocation'] = l$geolocation == null
          ? null
          : fromJson_Enum_OrderBy((l$geolocation as String));
    }
    if (data.containsKey('groupsAggregate')) {
      final l$groupsAggregate = data['groupsAggregate'];
      result$data['groupsAggregate'] = l$groupsAggregate == null
          ? null
          : Input_PersonsGroupsAggregateOrderBy.fromJson(
              (l$groupsAggregate as Map<String, dynamic>));
    }
    if (data.containsKey('hobbiesAggregate')) {
      final l$hobbiesAggregate = data['hobbiesAggregate'];
      result$data['hobbiesAggregate'] = l$hobbiesAggregate == null
          ? null
          : Input_PersonsHobbiesAggregateOrderBy.fromJson(
              (l$hobbiesAggregate as Map<String, dynamic>));
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] =
          l$id == null ? null : fromJson_Enum_OrderBy((l$id as String));
    }
    if (data.containsKey('isServant')) {
      final l$isServant = data['isServant'];
      result$data['isServant'] = l$isServant == null
          ? null
          : fromJson_Enum_OrderBy((l$isServant as String));
    }
    if (data.containsKey('isShammas')) {
      final l$isShammas = data['isShammas'];
      result$data['isShammas'] = l$isShammas == null
          ? null
          : fromJson_Enum_OrderBy((l$isShammas as String));
    }
    if (data.containsKey('isStudent')) {
      final l$isStudent = data['isStudent'];
      result$data['isStudent'] = l$isStudent == null
          ? null
          : fromJson_Enum_OrderBy((l$isStudent as String));
    }
    if (data.containsKey('job')) {
      final l$job = data['job'];
      result$data['job'] = l$job == null
          ? null
          : Input_JobsOrderBy.fromJson((l$job as Map<String, dynamic>));
    }
    if (data.containsKey('jobDescription')) {
      final l$jobDescription = data['jobDescription'];
      result$data['jobDescription'] = l$jobDescription == null
          ? null
          : fromJson_Enum_OrderBy((l$jobDescription as String));
    }
    if (data.containsKey('jobId')) {
      final l$jobId = data['jobId'];
      result$data['jobId'] =
          l$jobId == null ? null : fromJson_Enum_OrderBy((l$jobId as String));
    }
    if (data.containsKey('kodasHistoryAggregate')) {
      final l$kodasHistoryAggregate = data['kodasHistoryAggregate'];
      result$data['kodasHistoryAggregate'] = l$kodasHistoryAggregate == null
          ? null
          : Input_HistoryKodasHistoryAggregateOrderBy.fromJson(
              (l$kodasHistoryAggregate as Map<String, dynamic>));
    }
    if (data.containsKey('lastCall')) {
      final l$lastCall = data['lastCall'];
      result$data['lastCall'] = l$lastCall == null
          ? null
          : Input_HistoryLatestCallsOrderBy.fromJson(
              (l$lastCall as Map<String, dynamic>));
    }
    if (data.containsKey('lastConfession')) {
      final l$lastConfession = data['lastConfession'];
      result$data['lastConfession'] = l$lastConfession == null
          ? null
          : Input_HistoryLatestConfessionsOrderBy.fromJson(
              (l$lastConfession as Map<String, dynamic>));
    }
    if (data.containsKey('lastEdit')) {
      final l$lastEdit = data['lastEdit'];
      result$data['lastEdit'] = l$lastEdit == null
          ? null
          : Input_HistoryLatestEditsOrderBy.fromJson(
              (l$lastEdit as Map<String, dynamic>));
    }
    if (data.containsKey('lastKodas')) {
      final l$lastKodas = data['lastKodas'];
      result$data['lastKodas'] = l$lastKodas == null
          ? null
          : Input_HistoryLatestKodasesOrderBy.fromJson(
              (l$lastKodas as Map<String, dynamic>));
    }
    if (data.containsKey('lastVisit')) {
      final l$lastVisit = data['lastVisit'];
      result$data['lastVisit'] = l$lastVisit == null
          ? null
          : Input_HistoryLatestVisitsOrderBy.fromJson(
              (l$lastVisit as Map<String, dynamic>));
    }
    if (data.containsKey('mainPhone')) {
      final l$mainPhone = data['mainPhone'];
      result$data['mainPhone'] = l$mainPhone == null
          ? null
          : fromJson_Enum_OrderBy((l$mainPhone as String));
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] =
          l$name == null ? null : fromJson_Enum_OrderBy((l$name as String));
    }
    if (data.containsKey('notes')) {
      final l$notes = data['notes'];
      result$data['notes'] =
          l$notes == null ? null : fromJson_Enum_OrderBy((l$notes as String));
    }
    if (data.containsKey('otherPhones')) {
      final l$otherPhones = data['otherPhones'];
      result$data['otherPhones'] = l$otherPhones == null
          ? null
          : fromJson_Enum_OrderBy((l$otherPhones as String));
    }
    if (data.containsKey('personType')) {
      final l$personType = data['personType'];
      result$data['personType'] = l$personType == null
          ? null
          : Input_PersonTypesOrderBy.fromJson(
              (l$personType as Map<String, dynamic>));
    }
    if (data.containsKey('personTypeId')) {
      final l$personTypeId = data['personTypeId'];
      result$data['personTypeId'] = l$personTypeId == null
          ? null
          : fromJson_Enum_OrderBy((l$personTypeId as String));
    }
    if (data.containsKey('photoUpdatedAt')) {
      final l$photoUpdatedAt = data['photoUpdatedAt'];
      result$data['photoUpdatedAt'] = l$photoUpdatedAt == null
          ? null
          : fromJson_Enum_OrderBy((l$photoUpdatedAt as String));
    }
    if (data.containsKey('qualification')) {
      final l$qualification = data['qualification'];
      result$data['qualification'] = l$qualification == null
          ? null
          : Input_QualificationsOrderBy.fromJson(
              (l$qualification as Map<String, dynamic>));
    }
    if (data.containsKey('qualificationId')) {
      final l$qualificationId = data['qualificationId'];
      result$data['qualificationId'] = l$qualificationId == null
          ? null
          : fromJson_Enum_OrderBy((l$qualificationId as String));
    }
    if (data.containsKey('school')) {
      final l$school = data['school'];
      result$data['school'] = l$school == null
          ? null
          : Input_SchoolsOrderBy.fromJson((l$school as Map<String, dynamic>));
    }
    if (data.containsKey('schoolId')) {
      final l$schoolId = data['schoolId'];
      result$data['schoolId'] = l$schoolId == null
          ? null
          : fromJson_Enum_OrderBy((l$schoolId as String));
    }
    if (data.containsKey('servicesAggregate')) {
      final l$servicesAggregate = data['servicesAggregate'];
      result$data['servicesAggregate'] = l$servicesAggregate == null
          ? null
          : Input_PersonsServicesAggregateOrderBy.fromJson(
              (l$servicesAggregate as Map<String, dynamic>));
    }
    if (data.containsKey('shammasLevel')) {
      final l$shammasLevel = data['shammasLevel'];
      result$data['shammasLevel'] = l$shammasLevel == null
          ? null
          : Input_ShammasLevelsOrderBy.fromJson(
              (l$shammasLevel as Map<String, dynamic>));
    }
    if (data.containsKey('shammasLevelId')) {
      final l$shammasLevelId = data['shammasLevelId'];
      result$data['shammasLevelId'] = l$shammasLevelId == null
          ? null
          : fromJson_Enum_OrderBy((l$shammasLevelId as String));
    }
    if (data.containsKey('state')) {
      final l$state = data['state'];
      result$data['state'] = l$state == null
          ? null
          : Input_PersonStatesOrderBy.fromJson(
              (l$state as Map<String, dynamic>));
    }
    if (data.containsKey('stateId')) {
      final l$stateId = data['stateId'];
      result$data['stateId'] = l$stateId == null
          ? null
          : fromJson_Enum_OrderBy((l$stateId as String));
    }
    if (data.containsKey('storeId')) {
      final l$storeId = data['storeId'];
      result$data['storeId'] = l$storeId == null
          ? null
          : fromJson_Enum_OrderBy((l$storeId as String));
    }
    if (data.containsKey('studyYear')) {
      final l$studyYear = data['studyYear'];
      result$data['studyYear'] = l$studyYear == null
          ? null
          : Input_StudyYearsOrderBy.fromJson(
              (l$studyYear as Map<String, dynamic>));
    }
    if (data.containsKey('studyYearId')) {
      final l$studyYearId = data['studyYearId'];
      result$data['studyYearId'] = l$studyYearId == null
          ? null
          : fromJson_Enum_OrderBy((l$studyYearId as String));
    }
    if (data.containsKey('tagsAggregate')) {
      final l$tagsAggregate = data['tagsAggregate'];
      result$data['tagsAggregate'] = l$tagsAggregate == null
          ? null
          : Input_PersonsTagsAggregateOrderBy.fromJson(
              (l$tagsAggregate as Map<String, dynamic>));
    }
    if (data.containsKey('uid')) {
      final l$uid = data['uid'];
      result$data['uid'] =
          l$uid == null ? null : fromJson_Enum_OrderBy((l$uid as String));
    }
    if (data.containsKey('user')) {
      final l$user = data['user'];
      result$data['user'] = l$user == null
          ? null
          : Input_AuthUsersDataOrderBy.fromJson(
              (l$user as Map<String, dynamic>));
    }
    if (data.containsKey('visitHistoryAggregate')) {
      final l$visitHistoryAggregate = data['visitHistoryAggregate'];
      result$data['visitHistoryAggregate'] = l$visitHistoryAggregate == null
          ? null
          : Input_HistoryVisitHistoryAggregateOrderBy.fromJson(
              (l$visitHistoryAggregate as Map<String, dynamic>));
    }
    return Input_PersonsOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_AddressesOrderBy? get address =>
      (_$data['address'] as Input_AddressesOrderBy?);

  Enum_OrderBy? get addressText => (_$data['addressText'] as Enum_OrderBy?);

  Input_HistoryAttendanceHistoryAggregateOrderBy?
      get attendanceHistoryAggregate => (_$data['attendanceHistoryAggregate']
          as Input_HistoryAttendanceHistoryAggregateOrderBy?);

  Enum_OrderBy? get birthdate => (_$data['birthdate'] as Enum_OrderBy?);

  Enum_OrderBy? get birthday => (_$data['birthday'] as Enum_OrderBy?);

  Enum_OrderBy? get blurhash => (_$data['blurhash'] as Enum_OrderBy?);

  Input_HistoryCallHistoryAggregateOrderBy? get callHistoryAggregate =>
      (_$data['callHistoryAggregate']
          as Input_HistoryCallHistoryAggregateOrderBy?);

  Input_ChurchesOrderBy? get church =>
      (_$data['church'] as Input_ChurchesOrderBy?);

  Enum_OrderBy? get churchId => (_$data['churchId'] as Enum_OrderBy?);

  Input_ClassesPersonsAggregateOrderBy? get classesAggregate =>
      (_$data['classesAggregate'] as Input_ClassesPersonsAggregateOrderBy?);

  Input_CollegesOrderBy? get college =>
      (_$data['college'] as Input_CollegesOrderBy?);

  Enum_OrderBy? get collegeId => (_$data['collegeId'] as Enum_OrderBy?);

  Enum_OrderBy? get color => (_$data['color'] as Enum_OrderBy?);

  Input_HistoryConfessionHistoryAggregateOrderBy?
      get confessionHistoryAggregate => (_$data['confessionHistoryAggregate']
          as Input_HistoryConfessionHistoryAggregateOrderBy?);

  Input_HistoryEditHistoryAggregateOrderBy? get editHistoryAggregate =>
      (_$data['editHistoryAggregate']
          as Input_HistoryEditHistoryAggregateOrderBy?);

  Input_FamiliesOrderBy? get family =>
      (_$data['family'] as Input_FamiliesOrderBy?);

  Enum_OrderBy? get familyId => (_$data['familyId'] as Enum_OrderBy?);

  Input_FathersOrderBy? get father =>
      (_$data['father'] as Input_FathersOrderBy?);

  Enum_OrderBy? get fatherId => (_$data['fatherId'] as Enum_OrderBy?);

  Enum_OrderBy? get gender => (_$data['gender'] as Enum_OrderBy?);

  Enum_OrderBy? get geolocation => (_$data['geolocation'] as Enum_OrderBy?);

  Input_PersonsGroupsAggregateOrderBy? get groupsAggregate =>
      (_$data['groupsAggregate'] as Input_PersonsGroupsAggregateOrderBy?);

  Input_PersonsHobbiesAggregateOrderBy? get hobbiesAggregate =>
      (_$data['hobbiesAggregate'] as Input_PersonsHobbiesAggregateOrderBy?);

  Enum_OrderBy? get id => (_$data['id'] as Enum_OrderBy?);

  Enum_OrderBy? get isServant => (_$data['isServant'] as Enum_OrderBy?);

  Enum_OrderBy? get isShammas => (_$data['isShammas'] as Enum_OrderBy?);

  Enum_OrderBy? get isStudent => (_$data['isStudent'] as Enum_OrderBy?);

  Input_JobsOrderBy? get job => (_$data['job'] as Input_JobsOrderBy?);

  Enum_OrderBy? get jobDescription =>
      (_$data['jobDescription'] as Enum_OrderBy?);

  Enum_OrderBy? get jobId => (_$data['jobId'] as Enum_OrderBy?);

  Input_HistoryKodasHistoryAggregateOrderBy? get kodasHistoryAggregate =>
      (_$data['kodasHistoryAggregate']
          as Input_HistoryKodasHistoryAggregateOrderBy?);

  Input_HistoryLatestCallsOrderBy? get lastCall =>
      (_$data['lastCall'] as Input_HistoryLatestCallsOrderBy?);

  Input_HistoryLatestConfessionsOrderBy? get lastConfession =>
      (_$data['lastConfession'] as Input_HistoryLatestConfessionsOrderBy?);

  Input_HistoryLatestEditsOrderBy? get lastEdit =>
      (_$data['lastEdit'] as Input_HistoryLatestEditsOrderBy?);

  Input_HistoryLatestKodasesOrderBy? get lastKodas =>
      (_$data['lastKodas'] as Input_HistoryLatestKodasesOrderBy?);

  Input_HistoryLatestVisitsOrderBy? get lastVisit =>
      (_$data['lastVisit'] as Input_HistoryLatestVisitsOrderBy?);

  Enum_OrderBy? get mainPhone => (_$data['mainPhone'] as Enum_OrderBy?);

  Enum_OrderBy? get name => (_$data['name'] as Enum_OrderBy?);

  Enum_OrderBy? get notes => (_$data['notes'] as Enum_OrderBy?);

  Enum_OrderBy? get otherPhones => (_$data['otherPhones'] as Enum_OrderBy?);

  Input_PersonTypesOrderBy? get personType =>
      (_$data['personType'] as Input_PersonTypesOrderBy?);

  Enum_OrderBy? get personTypeId => (_$data['personTypeId'] as Enum_OrderBy?);

  Enum_OrderBy? get photoUpdatedAt =>
      (_$data['photoUpdatedAt'] as Enum_OrderBy?);

  Input_QualificationsOrderBy? get qualification =>
      (_$data['qualification'] as Input_QualificationsOrderBy?);

  Enum_OrderBy? get qualificationId =>
      (_$data['qualificationId'] as Enum_OrderBy?);

  Input_SchoolsOrderBy? get school =>
      (_$data['school'] as Input_SchoolsOrderBy?);

  Enum_OrderBy? get schoolId => (_$data['schoolId'] as Enum_OrderBy?);

  Input_PersonsServicesAggregateOrderBy? get servicesAggregate =>
      (_$data['servicesAggregate'] as Input_PersonsServicesAggregateOrderBy?);

  Input_ShammasLevelsOrderBy? get shammasLevel =>
      (_$data['shammasLevel'] as Input_ShammasLevelsOrderBy?);

  Enum_OrderBy? get shammasLevelId =>
      (_$data['shammasLevelId'] as Enum_OrderBy?);

  Input_PersonStatesOrderBy? get state =>
      (_$data['state'] as Input_PersonStatesOrderBy?);

  Enum_OrderBy? get stateId => (_$data['stateId'] as Enum_OrderBy?);

  Enum_OrderBy? get storeId => (_$data['storeId'] as Enum_OrderBy?);

  Input_StudyYearsOrderBy? get studyYear =>
      (_$data['studyYear'] as Input_StudyYearsOrderBy?);

  Enum_OrderBy? get studyYearId => (_$data['studyYearId'] as Enum_OrderBy?);

  Input_PersonsTagsAggregateOrderBy? get tagsAggregate =>
      (_$data['tagsAggregate'] as Input_PersonsTagsAggregateOrderBy?);

  Enum_OrderBy? get uid => (_$data['uid'] as Enum_OrderBy?);

  Input_AuthUsersDataOrderBy? get user =>
      (_$data['user'] as Input_AuthUsersDataOrderBy?);

  Input_HistoryVisitHistoryAggregateOrderBy? get visitHistoryAggregate =>
      (_$data['visitHistoryAggregate']
          as Input_HistoryVisitHistoryAggregateOrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('address')) {
      final l$address = address;
      result$data['address'] = l$address?.toJson();
    }
    if (_$data.containsKey('addressText')) {
      final l$addressText = addressText;
      result$data['addressText'] =
          l$addressText == null ? null : toJson_Enum_OrderBy(l$addressText);
    }
    if (_$data.containsKey('attendanceHistoryAggregate')) {
      final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
      result$data['attendanceHistoryAggregate'] =
          l$attendanceHistoryAggregate?.toJson();
    }
    if (_$data.containsKey('birthdate')) {
      final l$birthdate = birthdate;
      result$data['birthdate'] =
          l$birthdate == null ? null : toJson_Enum_OrderBy(l$birthdate);
    }
    if (_$data.containsKey('birthday')) {
      final l$birthday = birthday;
      result$data['birthday'] =
          l$birthday == null ? null : toJson_Enum_OrderBy(l$birthday);
    }
    if (_$data.containsKey('blurhash')) {
      final l$blurhash = blurhash;
      result$data['blurhash'] =
          l$blurhash == null ? null : toJson_Enum_OrderBy(l$blurhash);
    }
    if (_$data.containsKey('callHistoryAggregate')) {
      final l$callHistoryAggregate = callHistoryAggregate;
      result$data['callHistoryAggregate'] = l$callHistoryAggregate?.toJson();
    }
    if (_$data.containsKey('church')) {
      final l$church = church;
      result$data['church'] = l$church?.toJson();
    }
    if (_$data.containsKey('churchId')) {
      final l$churchId = churchId;
      result$data['churchId'] =
          l$churchId == null ? null : toJson_Enum_OrderBy(l$churchId);
    }
    if (_$data.containsKey('classesAggregate')) {
      final l$classesAggregate = classesAggregate;
      result$data['classesAggregate'] = l$classesAggregate?.toJson();
    }
    if (_$data.containsKey('college')) {
      final l$college = college;
      result$data['college'] = l$college?.toJson();
    }
    if (_$data.containsKey('collegeId')) {
      final l$collegeId = collegeId;
      result$data['collegeId'] =
          l$collegeId == null ? null : toJson_Enum_OrderBy(l$collegeId);
    }
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] =
          l$color == null ? null : toJson_Enum_OrderBy(l$color);
    }
    if (_$data.containsKey('confessionHistoryAggregate')) {
      final l$confessionHistoryAggregate = confessionHistoryAggregate;
      result$data['confessionHistoryAggregate'] =
          l$confessionHistoryAggregate?.toJson();
    }
    if (_$data.containsKey('editHistoryAggregate')) {
      final l$editHistoryAggregate = editHistoryAggregate;
      result$data['editHistoryAggregate'] = l$editHistoryAggregate?.toJson();
    }
    if (_$data.containsKey('family')) {
      final l$family = family;
      result$data['family'] = l$family?.toJson();
    }
    if (_$data.containsKey('familyId')) {
      final l$familyId = familyId;
      result$data['familyId'] =
          l$familyId == null ? null : toJson_Enum_OrderBy(l$familyId);
    }
    if (_$data.containsKey('father')) {
      final l$father = father;
      result$data['father'] = l$father?.toJson();
    }
    if (_$data.containsKey('fatherId')) {
      final l$fatherId = fatherId;
      result$data['fatherId'] =
          l$fatherId == null ? null : toJson_Enum_OrderBy(l$fatherId);
    }
    if (_$data.containsKey('gender')) {
      final l$gender = gender;
      result$data['gender'] =
          l$gender == null ? null : toJson_Enum_OrderBy(l$gender);
    }
    if (_$data.containsKey('geolocation')) {
      final l$geolocation = geolocation;
      result$data['geolocation'] =
          l$geolocation == null ? null : toJson_Enum_OrderBy(l$geolocation);
    }
    if (_$data.containsKey('groupsAggregate')) {
      final l$groupsAggregate = groupsAggregate;
      result$data['groupsAggregate'] = l$groupsAggregate?.toJson();
    }
    if (_$data.containsKey('hobbiesAggregate')) {
      final l$hobbiesAggregate = hobbiesAggregate;
      result$data['hobbiesAggregate'] = l$hobbiesAggregate?.toJson();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : toJson_Enum_OrderBy(l$id);
    }
    if (_$data.containsKey('isServant')) {
      final l$isServant = isServant;
      result$data['isServant'] =
          l$isServant == null ? null : toJson_Enum_OrderBy(l$isServant);
    }
    if (_$data.containsKey('isShammas')) {
      final l$isShammas = isShammas;
      result$data['isShammas'] =
          l$isShammas == null ? null : toJson_Enum_OrderBy(l$isShammas);
    }
    if (_$data.containsKey('isStudent')) {
      final l$isStudent = isStudent;
      result$data['isStudent'] =
          l$isStudent == null ? null : toJson_Enum_OrderBy(l$isStudent);
    }
    if (_$data.containsKey('job')) {
      final l$job = job;
      result$data['job'] = l$job?.toJson();
    }
    if (_$data.containsKey('jobDescription')) {
      final l$jobDescription = jobDescription;
      result$data['jobDescription'] = l$jobDescription == null
          ? null
          : toJson_Enum_OrderBy(l$jobDescription);
    }
    if (_$data.containsKey('jobId')) {
      final l$jobId = jobId;
      result$data['jobId'] =
          l$jobId == null ? null : toJson_Enum_OrderBy(l$jobId);
    }
    if (_$data.containsKey('kodasHistoryAggregate')) {
      final l$kodasHistoryAggregate = kodasHistoryAggregate;
      result$data['kodasHistoryAggregate'] = l$kodasHistoryAggregate?.toJson();
    }
    if (_$data.containsKey('lastCall')) {
      final l$lastCall = lastCall;
      result$data['lastCall'] = l$lastCall?.toJson();
    }
    if (_$data.containsKey('lastConfession')) {
      final l$lastConfession = lastConfession;
      result$data['lastConfession'] = l$lastConfession?.toJson();
    }
    if (_$data.containsKey('lastEdit')) {
      final l$lastEdit = lastEdit;
      result$data['lastEdit'] = l$lastEdit?.toJson();
    }
    if (_$data.containsKey('lastKodas')) {
      final l$lastKodas = lastKodas;
      result$data['lastKodas'] = l$lastKodas?.toJson();
    }
    if (_$data.containsKey('lastVisit')) {
      final l$lastVisit = lastVisit;
      result$data['lastVisit'] = l$lastVisit?.toJson();
    }
    if (_$data.containsKey('mainPhone')) {
      final l$mainPhone = mainPhone;
      result$data['mainPhone'] =
          l$mainPhone == null ? null : toJson_Enum_OrderBy(l$mainPhone);
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name == null ? null : toJson_Enum_OrderBy(l$name);
    }
    if (_$data.containsKey('notes')) {
      final l$notes = notes;
      result$data['notes'] =
          l$notes == null ? null : toJson_Enum_OrderBy(l$notes);
    }
    if (_$data.containsKey('otherPhones')) {
      final l$otherPhones = otherPhones;
      result$data['otherPhones'] =
          l$otherPhones == null ? null : toJson_Enum_OrderBy(l$otherPhones);
    }
    if (_$data.containsKey('personType')) {
      final l$personType = personType;
      result$data['personType'] = l$personType?.toJson();
    }
    if (_$data.containsKey('personTypeId')) {
      final l$personTypeId = personTypeId;
      result$data['personTypeId'] =
          l$personTypeId == null ? null : toJson_Enum_OrderBy(l$personTypeId);
    }
    if (_$data.containsKey('photoUpdatedAt')) {
      final l$photoUpdatedAt = photoUpdatedAt;
      result$data['photoUpdatedAt'] = l$photoUpdatedAt == null
          ? null
          : toJson_Enum_OrderBy(l$photoUpdatedAt);
    }
    if (_$data.containsKey('qualification')) {
      final l$qualification = qualification;
      result$data['qualification'] = l$qualification?.toJson();
    }
    if (_$data.containsKey('qualificationId')) {
      final l$qualificationId = qualificationId;
      result$data['qualificationId'] = l$qualificationId == null
          ? null
          : toJson_Enum_OrderBy(l$qualificationId);
    }
    if (_$data.containsKey('school')) {
      final l$school = school;
      result$data['school'] = l$school?.toJson();
    }
    if (_$data.containsKey('schoolId')) {
      final l$schoolId = schoolId;
      result$data['schoolId'] =
          l$schoolId == null ? null : toJson_Enum_OrderBy(l$schoolId);
    }
    if (_$data.containsKey('servicesAggregate')) {
      final l$servicesAggregate = servicesAggregate;
      result$data['servicesAggregate'] = l$servicesAggregate?.toJson();
    }
    if (_$data.containsKey('shammasLevel')) {
      final l$shammasLevel = shammasLevel;
      result$data['shammasLevel'] = l$shammasLevel?.toJson();
    }
    if (_$data.containsKey('shammasLevelId')) {
      final l$shammasLevelId = shammasLevelId;
      result$data['shammasLevelId'] = l$shammasLevelId == null
          ? null
          : toJson_Enum_OrderBy(l$shammasLevelId);
    }
    if (_$data.containsKey('state')) {
      final l$state = state;
      result$data['state'] = l$state?.toJson();
    }
    if (_$data.containsKey('stateId')) {
      final l$stateId = stateId;
      result$data['stateId'] =
          l$stateId == null ? null : toJson_Enum_OrderBy(l$stateId);
    }
    if (_$data.containsKey('storeId')) {
      final l$storeId = storeId;
      result$data['storeId'] =
          l$storeId == null ? null : toJson_Enum_OrderBy(l$storeId);
    }
    if (_$data.containsKey('studyYear')) {
      final l$studyYear = studyYear;
      result$data['studyYear'] = l$studyYear?.toJson();
    }
    if (_$data.containsKey('studyYearId')) {
      final l$studyYearId = studyYearId;
      result$data['studyYearId'] =
          l$studyYearId == null ? null : toJson_Enum_OrderBy(l$studyYearId);
    }
    if (_$data.containsKey('tagsAggregate')) {
      final l$tagsAggregate = tagsAggregate;
      result$data['tagsAggregate'] = l$tagsAggregate?.toJson();
    }
    if (_$data.containsKey('uid')) {
      final l$uid = uid;
      result$data['uid'] = l$uid == null ? null : toJson_Enum_OrderBy(l$uid);
    }
    if (_$data.containsKey('user')) {
      final l$user = user;
      result$data['user'] = l$user?.toJson();
    }
    if (_$data.containsKey('visitHistoryAggregate')) {
      final l$visitHistoryAggregate = visitHistoryAggregate;
      result$data['visitHistoryAggregate'] = l$visitHistoryAggregate?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_PersonsOrderBy<Input_PersonsOrderBy> get copyWith =>
      CopyWith_Input_PersonsOrderBy(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonsOrderBy || runtimeType != other.runtimeType) {
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
    final l$addressText = addressText;
    final lOther$addressText = other.addressText;
    if (_$data.containsKey('addressText') !=
        other._$data.containsKey('addressText')) {
      return false;
    }
    if (l$addressText != lOther$addressText) {
      return false;
    }
    final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
    final lOther$attendanceHistoryAggregate = other.attendanceHistoryAggregate;
    if (_$data.containsKey('attendanceHistoryAggregate') !=
        other._$data.containsKey('attendanceHistoryAggregate')) {
      return false;
    }
    if (l$attendanceHistoryAggregate != lOther$attendanceHistoryAggregate) {
      return false;
    }
    final l$birthdate = birthdate;
    final lOther$birthdate = other.birthdate;
    if (_$data.containsKey('birthdate') !=
        other._$data.containsKey('birthdate')) {
      return false;
    }
    if (l$birthdate != lOther$birthdate) {
      return false;
    }
    final l$birthday = birthday;
    final lOther$birthday = other.birthday;
    if (_$data.containsKey('birthday') !=
        other._$data.containsKey('birthday')) {
      return false;
    }
    if (l$birthday != lOther$birthday) {
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
    final l$callHistoryAggregate = callHistoryAggregate;
    final lOther$callHistoryAggregate = other.callHistoryAggregate;
    if (_$data.containsKey('callHistoryAggregate') !=
        other._$data.containsKey('callHistoryAggregate')) {
      return false;
    }
    if (l$callHistoryAggregate != lOther$callHistoryAggregate) {
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
    final l$classesAggregate = classesAggregate;
    final lOther$classesAggregate = other.classesAggregate;
    if (_$data.containsKey('classesAggregate') !=
        other._$data.containsKey('classesAggregate')) {
      return false;
    }
    if (l$classesAggregate != lOther$classesAggregate) {
      return false;
    }
    final l$college = college;
    final lOther$college = other.college;
    if (_$data.containsKey('college') != other._$data.containsKey('college')) {
      return false;
    }
    if (l$college != lOther$college) {
      return false;
    }
    final l$collegeId = collegeId;
    final lOther$collegeId = other.collegeId;
    if (_$data.containsKey('collegeId') !=
        other._$data.containsKey('collegeId')) {
      return false;
    }
    if (l$collegeId != lOther$collegeId) {
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
    final l$confessionHistoryAggregate = confessionHistoryAggregate;
    final lOther$confessionHistoryAggregate = other.confessionHistoryAggregate;
    if (_$data.containsKey('confessionHistoryAggregate') !=
        other._$data.containsKey('confessionHistoryAggregate')) {
      return false;
    }
    if (l$confessionHistoryAggregate != lOther$confessionHistoryAggregate) {
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
    final l$family = family;
    final lOther$family = other.family;
    if (_$data.containsKey('family') != other._$data.containsKey('family')) {
      return false;
    }
    if (l$family != lOther$family) {
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
    final l$father = father;
    final lOther$father = other.father;
    if (_$data.containsKey('father') != other._$data.containsKey('father')) {
      return false;
    }
    if (l$father != lOther$father) {
      return false;
    }
    final l$fatherId = fatherId;
    final lOther$fatherId = other.fatherId;
    if (_$data.containsKey('fatherId') !=
        other._$data.containsKey('fatherId')) {
      return false;
    }
    if (l$fatherId != lOther$fatherId) {
      return false;
    }
    final l$gender = gender;
    final lOther$gender = other.gender;
    if (_$data.containsKey('gender') != other._$data.containsKey('gender')) {
      return false;
    }
    if (l$gender != lOther$gender) {
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
    final l$groupsAggregate = groupsAggregate;
    final lOther$groupsAggregate = other.groupsAggregate;
    if (_$data.containsKey('groupsAggregate') !=
        other._$data.containsKey('groupsAggregate')) {
      return false;
    }
    if (l$groupsAggregate != lOther$groupsAggregate) {
      return false;
    }
    final l$hobbiesAggregate = hobbiesAggregate;
    final lOther$hobbiesAggregate = other.hobbiesAggregate;
    if (_$data.containsKey('hobbiesAggregate') !=
        other._$data.containsKey('hobbiesAggregate')) {
      return false;
    }
    if (l$hobbiesAggregate != lOther$hobbiesAggregate) {
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
    final l$isServant = isServant;
    final lOther$isServant = other.isServant;
    if (_$data.containsKey('isServant') !=
        other._$data.containsKey('isServant')) {
      return false;
    }
    if (l$isServant != lOther$isServant) {
      return false;
    }
    final l$isShammas = isShammas;
    final lOther$isShammas = other.isShammas;
    if (_$data.containsKey('isShammas') !=
        other._$data.containsKey('isShammas')) {
      return false;
    }
    if (l$isShammas != lOther$isShammas) {
      return false;
    }
    final l$isStudent = isStudent;
    final lOther$isStudent = other.isStudent;
    if (_$data.containsKey('isStudent') !=
        other._$data.containsKey('isStudent')) {
      return false;
    }
    if (l$isStudent != lOther$isStudent) {
      return false;
    }
    final l$job = job;
    final lOther$job = other.job;
    if (_$data.containsKey('job') != other._$data.containsKey('job')) {
      return false;
    }
    if (l$job != lOther$job) {
      return false;
    }
    final l$jobDescription = jobDescription;
    final lOther$jobDescription = other.jobDescription;
    if (_$data.containsKey('jobDescription') !=
        other._$data.containsKey('jobDescription')) {
      return false;
    }
    if (l$jobDescription != lOther$jobDescription) {
      return false;
    }
    final l$jobId = jobId;
    final lOther$jobId = other.jobId;
    if (_$data.containsKey('jobId') != other._$data.containsKey('jobId')) {
      return false;
    }
    if (l$jobId != lOther$jobId) {
      return false;
    }
    final l$kodasHistoryAggregate = kodasHistoryAggregate;
    final lOther$kodasHistoryAggregate = other.kodasHistoryAggregate;
    if (_$data.containsKey('kodasHistoryAggregate') !=
        other._$data.containsKey('kodasHistoryAggregate')) {
      return false;
    }
    if (l$kodasHistoryAggregate != lOther$kodasHistoryAggregate) {
      return false;
    }
    final l$lastCall = lastCall;
    final lOther$lastCall = other.lastCall;
    if (_$data.containsKey('lastCall') !=
        other._$data.containsKey('lastCall')) {
      return false;
    }
    if (l$lastCall != lOther$lastCall) {
      return false;
    }
    final l$lastConfession = lastConfession;
    final lOther$lastConfession = other.lastConfession;
    if (_$data.containsKey('lastConfession') !=
        other._$data.containsKey('lastConfession')) {
      return false;
    }
    if (l$lastConfession != lOther$lastConfession) {
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
    final l$lastKodas = lastKodas;
    final lOther$lastKodas = other.lastKodas;
    if (_$data.containsKey('lastKodas') !=
        other._$data.containsKey('lastKodas')) {
      return false;
    }
    if (l$lastKodas != lOther$lastKodas) {
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
    final l$mainPhone = mainPhone;
    final lOther$mainPhone = other.mainPhone;
    if (_$data.containsKey('mainPhone') !=
        other._$data.containsKey('mainPhone')) {
      return false;
    }
    if (l$mainPhone != lOther$mainPhone) {
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
    final l$otherPhones = otherPhones;
    final lOther$otherPhones = other.otherPhones;
    if (_$data.containsKey('otherPhones') !=
        other._$data.containsKey('otherPhones')) {
      return false;
    }
    if (l$otherPhones != lOther$otherPhones) {
      return false;
    }
    final l$personType = personType;
    final lOther$personType = other.personType;
    if (_$data.containsKey('personType') !=
        other._$data.containsKey('personType')) {
      return false;
    }
    if (l$personType != lOther$personType) {
      return false;
    }
    final l$personTypeId = personTypeId;
    final lOther$personTypeId = other.personTypeId;
    if (_$data.containsKey('personTypeId') !=
        other._$data.containsKey('personTypeId')) {
      return false;
    }
    if (l$personTypeId != lOther$personTypeId) {
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
    final l$qualification = qualification;
    final lOther$qualification = other.qualification;
    if (_$data.containsKey('qualification') !=
        other._$data.containsKey('qualification')) {
      return false;
    }
    if (l$qualification != lOther$qualification) {
      return false;
    }
    final l$qualificationId = qualificationId;
    final lOther$qualificationId = other.qualificationId;
    if (_$data.containsKey('qualificationId') !=
        other._$data.containsKey('qualificationId')) {
      return false;
    }
    if (l$qualificationId != lOther$qualificationId) {
      return false;
    }
    final l$school = school;
    final lOther$school = other.school;
    if (_$data.containsKey('school') != other._$data.containsKey('school')) {
      return false;
    }
    if (l$school != lOther$school) {
      return false;
    }
    final l$schoolId = schoolId;
    final lOther$schoolId = other.schoolId;
    if (_$data.containsKey('schoolId') !=
        other._$data.containsKey('schoolId')) {
      return false;
    }
    if (l$schoolId != lOther$schoolId) {
      return false;
    }
    final l$servicesAggregate = servicesAggregate;
    final lOther$servicesAggregate = other.servicesAggregate;
    if (_$data.containsKey('servicesAggregate') !=
        other._$data.containsKey('servicesAggregate')) {
      return false;
    }
    if (l$servicesAggregate != lOther$servicesAggregate) {
      return false;
    }
    final l$shammasLevel = shammasLevel;
    final lOther$shammasLevel = other.shammasLevel;
    if (_$data.containsKey('shammasLevel') !=
        other._$data.containsKey('shammasLevel')) {
      return false;
    }
    if (l$shammasLevel != lOther$shammasLevel) {
      return false;
    }
    final l$shammasLevelId = shammasLevelId;
    final lOther$shammasLevelId = other.shammasLevelId;
    if (_$data.containsKey('shammasLevelId') !=
        other._$data.containsKey('shammasLevelId')) {
      return false;
    }
    if (l$shammasLevelId != lOther$shammasLevelId) {
      return false;
    }
    final l$state = state;
    final lOther$state = other.state;
    if (_$data.containsKey('state') != other._$data.containsKey('state')) {
      return false;
    }
    if (l$state != lOther$state) {
      return false;
    }
    final l$stateId = stateId;
    final lOther$stateId = other.stateId;
    if (_$data.containsKey('stateId') != other._$data.containsKey('stateId')) {
      return false;
    }
    if (l$stateId != lOther$stateId) {
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
    final l$studyYear = studyYear;
    final lOther$studyYear = other.studyYear;
    if (_$data.containsKey('studyYear') !=
        other._$data.containsKey('studyYear')) {
      return false;
    }
    if (l$studyYear != lOther$studyYear) {
      return false;
    }
    final l$studyYearId = studyYearId;
    final lOther$studyYearId = other.studyYearId;
    if (_$data.containsKey('studyYearId') !=
        other._$data.containsKey('studyYearId')) {
      return false;
    }
    if (l$studyYearId != lOther$studyYearId) {
      return false;
    }
    final l$tagsAggregate = tagsAggregate;
    final lOther$tagsAggregate = other.tagsAggregate;
    if (_$data.containsKey('tagsAggregate') !=
        other._$data.containsKey('tagsAggregate')) {
      return false;
    }
    if (l$tagsAggregate != lOther$tagsAggregate) {
      return false;
    }
    final l$uid = uid;
    final lOther$uid = other.uid;
    if (_$data.containsKey('uid') != other._$data.containsKey('uid')) {
      return false;
    }
    if (l$uid != lOther$uid) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (_$data.containsKey('user') != other._$data.containsKey('user')) {
      return false;
    }
    if (l$user != lOther$user) {
      return false;
    }
    final l$visitHistoryAggregate = visitHistoryAggregate;
    final lOther$visitHistoryAggregate = other.visitHistoryAggregate;
    if (_$data.containsKey('visitHistoryAggregate') !=
        other._$data.containsKey('visitHistoryAggregate')) {
      return false;
    }
    if (l$visitHistoryAggregate != lOther$visitHistoryAggregate) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$address = address;
    final l$addressText = addressText;
    final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
    final l$birthdate = birthdate;
    final l$birthday = birthday;
    final l$blurhash = blurhash;
    final l$callHistoryAggregate = callHistoryAggregate;
    final l$church = church;
    final l$churchId = churchId;
    final l$classesAggregate = classesAggregate;
    final l$college = college;
    final l$collegeId = collegeId;
    final l$color = color;
    final l$confessionHistoryAggregate = confessionHistoryAggregate;
    final l$editHistoryAggregate = editHistoryAggregate;
    final l$family = family;
    final l$familyId = familyId;
    final l$father = father;
    final l$fatherId = fatherId;
    final l$gender = gender;
    final l$geolocation = geolocation;
    final l$groupsAggregate = groupsAggregate;
    final l$hobbiesAggregate = hobbiesAggregate;
    final l$id = id;
    final l$isServant = isServant;
    final l$isShammas = isShammas;
    final l$isStudent = isStudent;
    final l$job = job;
    final l$jobDescription = jobDescription;
    final l$jobId = jobId;
    final l$kodasHistoryAggregate = kodasHistoryAggregate;
    final l$lastCall = lastCall;
    final l$lastConfession = lastConfession;
    final l$lastEdit = lastEdit;
    final l$lastKodas = lastKodas;
    final l$lastVisit = lastVisit;
    final l$mainPhone = mainPhone;
    final l$name = name;
    final l$notes = notes;
    final l$otherPhones = otherPhones;
    final l$personType = personType;
    final l$personTypeId = personTypeId;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$qualification = qualification;
    final l$qualificationId = qualificationId;
    final l$school = school;
    final l$schoolId = schoolId;
    final l$servicesAggregate = servicesAggregate;
    final l$shammasLevel = shammasLevel;
    final l$shammasLevelId = shammasLevelId;
    final l$state = state;
    final l$stateId = stateId;
    final l$storeId = storeId;
    final l$studyYear = studyYear;
    final l$studyYearId = studyYearId;
    final l$tagsAggregate = tagsAggregate;
    final l$uid = uid;
    final l$user = user;
    final l$visitHistoryAggregate = visitHistoryAggregate;
    return Object.hashAll([
      _$data.containsKey('address') ? l$address : const {},
      _$data.containsKey('addressText') ? l$addressText : const {},
      _$data.containsKey('attendanceHistoryAggregate')
          ? l$attendanceHistoryAggregate
          : const {},
      _$data.containsKey('birthdate') ? l$birthdate : const {},
      _$data.containsKey('birthday') ? l$birthday : const {},
      _$data.containsKey('blurhash') ? l$blurhash : const {},
      _$data.containsKey('callHistoryAggregate')
          ? l$callHistoryAggregate
          : const {},
      _$data.containsKey('church') ? l$church : const {},
      _$data.containsKey('churchId') ? l$churchId : const {},
      _$data.containsKey('classesAggregate') ? l$classesAggregate : const {},
      _$data.containsKey('college') ? l$college : const {},
      _$data.containsKey('collegeId') ? l$collegeId : const {},
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('confessionHistoryAggregate')
          ? l$confessionHistoryAggregate
          : const {},
      _$data.containsKey('editHistoryAggregate')
          ? l$editHistoryAggregate
          : const {},
      _$data.containsKey('family') ? l$family : const {},
      _$data.containsKey('familyId') ? l$familyId : const {},
      _$data.containsKey('father') ? l$father : const {},
      _$data.containsKey('fatherId') ? l$fatherId : const {},
      _$data.containsKey('gender') ? l$gender : const {},
      _$data.containsKey('geolocation') ? l$geolocation : const {},
      _$data.containsKey('groupsAggregate') ? l$groupsAggregate : const {},
      _$data.containsKey('hobbiesAggregate') ? l$hobbiesAggregate : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('isServant') ? l$isServant : const {},
      _$data.containsKey('isShammas') ? l$isShammas : const {},
      _$data.containsKey('isStudent') ? l$isStudent : const {},
      _$data.containsKey('job') ? l$job : const {},
      _$data.containsKey('jobDescription') ? l$jobDescription : const {},
      _$data.containsKey('jobId') ? l$jobId : const {},
      _$data.containsKey('kodasHistoryAggregate')
          ? l$kodasHistoryAggregate
          : const {},
      _$data.containsKey('lastCall') ? l$lastCall : const {},
      _$data.containsKey('lastConfession') ? l$lastConfession : const {},
      _$data.containsKey('lastEdit') ? l$lastEdit : const {},
      _$data.containsKey('lastKodas') ? l$lastKodas : const {},
      _$data.containsKey('lastVisit') ? l$lastVisit : const {},
      _$data.containsKey('mainPhone') ? l$mainPhone : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('notes') ? l$notes : const {},
      _$data.containsKey('otherPhones') ? l$otherPhones : const {},
      _$data.containsKey('personType') ? l$personType : const {},
      _$data.containsKey('personTypeId') ? l$personTypeId : const {},
      _$data.containsKey('photoUpdatedAt') ? l$photoUpdatedAt : const {},
      _$data.containsKey('qualification') ? l$qualification : const {},
      _$data.containsKey('qualificationId') ? l$qualificationId : const {},
      _$data.containsKey('school') ? l$school : const {},
      _$data.containsKey('schoolId') ? l$schoolId : const {},
      _$data.containsKey('servicesAggregate') ? l$servicesAggregate : const {},
      _$data.containsKey('shammasLevel') ? l$shammasLevel : const {},
      _$data.containsKey('shammasLevelId') ? l$shammasLevelId : const {},
      _$data.containsKey('state') ? l$state : const {},
      _$data.containsKey('stateId') ? l$stateId : const {},
      _$data.containsKey('storeId') ? l$storeId : const {},
      _$data.containsKey('studyYear') ? l$studyYear : const {},
      _$data.containsKey('studyYearId') ? l$studyYearId : const {},
      _$data.containsKey('tagsAggregate') ? l$tagsAggregate : const {},
      _$data.containsKey('uid') ? l$uid : const {},
      _$data.containsKey('user') ? l$user : const {},
      _$data.containsKey('visitHistoryAggregate')
          ? l$visitHistoryAggregate
          : const {},
    ]);
  }
}
