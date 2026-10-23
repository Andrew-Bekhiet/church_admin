// Part 89 of the schema
part of "schema.graphql.dart";

abstract class CopyWith_Input_DataCheckSortInput<TRes> {
  factory CopyWith_Input_DataCheckSortInput(
    Input_DataCheckSortInput instance,
    TRes Function(Input_DataCheckSortInput) then,
  ) = _CopyWithImpl_Input_DataCheckSortInput;

  factory CopyWith_Input_DataCheckSortInput.stub(TRes res) =
      _CopyWithStubImpl_Input_DataCheckSortInput;

  TRes call({Enum_SortOrder? order, Enum_DataCheckSortField? field});
}

class _CopyWithImpl_Input_DataCheckSortInput<TRes>
    implements CopyWith_Input_DataCheckSortInput<TRes> {
  _CopyWithImpl_Input_DataCheckSortInput(this._instance, this._then);

  final Input_DataCheckSortInput _instance;

  final TRes Function(Input_DataCheckSortInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? order = _undefined, Object? field = _undefined}) => _then(
    Input_DataCheckSortInput._({
      ..._instance._$data,
      if (order != _undefined) 'order': (order as Enum_SortOrder?),
      if (field != _undefined && field != null)
        'field': (field as Enum_DataCheckSortField),
    }),
  );
}

class _CopyWithStubImpl_Input_DataCheckSortInput<TRes>
    implements CopyWith_Input_DataCheckSortInput<TRes> {
  _CopyWithStubImpl_Input_DataCheckSortInput(this._res);

  TRes _res;

  call({Enum_SortOrder? order, Enum_DataCheckSortField? field}) => _res;
}

enum Enum_AppPlatform {
  ANDROID,
  IOS,
  $unknown;

  factory Enum_AppPlatform.fromJson(String value) =>
      fromJson_Enum_AppPlatform(value);

  String toJson() => toJson_Enum_AppPlatform(this);
}

String toJson_Enum_AppPlatform(Enum_AppPlatform e) {
  switch (e) {
    case Enum_AppPlatform.ANDROID:
      return r'ANDROID';
    case Enum_AppPlatform.IOS:
      return r'IOS';
    case Enum_AppPlatform.$unknown:
      return r'$unknown';
  }
}

Enum_AppPlatform fromJson_Enum_AppPlatform(String value) {
  switch (value) {
    case r'ANDROID':
      return Enum_AppPlatform.ANDROID;
    case r'IOS':
      return Enum_AppPlatform.IOS;
    default:
      return Enum_AppPlatform.$unknown;
  }
}

enum Enum_PhotoSubject {
  AREAS,
  CLASSES,
  FAMILIES,
  GROUPS,
  PERSONS,
  SERVICES,
  STORES,
  STREETS,
  USERS,
  $unknown;

  factory Enum_PhotoSubject.fromJson(String value) =>
      fromJson_Enum_PhotoSubject(value);

  String toJson() => toJson_Enum_PhotoSubject(this);
}

String toJson_Enum_PhotoSubject(Enum_PhotoSubject e) {
  switch (e) {
    case Enum_PhotoSubject.AREAS:
      return r'AREAS';
    case Enum_PhotoSubject.CLASSES:
      return r'CLASSES';
    case Enum_PhotoSubject.FAMILIES:
      return r'FAMILIES';
    case Enum_PhotoSubject.GROUPS:
      return r'GROUPS';
    case Enum_PhotoSubject.PERSONS:
      return r'PERSONS';
    case Enum_PhotoSubject.SERVICES:
      return r'SERVICES';
    case Enum_PhotoSubject.STORES:
      return r'STORES';
    case Enum_PhotoSubject.STREETS:
      return r'STREETS';
    case Enum_PhotoSubject.USERS:
      return r'USERS';
    case Enum_PhotoSubject.$unknown:
      return r'$unknown';
  }
}

Enum_PhotoSubject fromJson_Enum_PhotoSubject(String value) {
  switch (value) {
    case r'AREAS':
      return Enum_PhotoSubject.AREAS;
    case r'CLASSES':
      return Enum_PhotoSubject.CLASSES;
    case r'FAMILIES':
      return Enum_PhotoSubject.FAMILIES;
    case r'GROUPS':
      return Enum_PhotoSubject.GROUPS;
    case r'PERSONS':
      return Enum_PhotoSubject.PERSONS;
    case r'SERVICES':
      return Enum_PhotoSubject.SERVICES;
    case r'STORES':
      return Enum_PhotoSubject.STORES;
    case r'STREETS':
      return Enum_PhotoSubject.STREETS;
    case r'USERS':
      return Enum_PhotoSubject.USERS;
    default:
      return Enum_PhotoSubject.$unknown;
  }
}

enum Enum_VisitSubject {
  AREAS,
  FAMILIES,
  PERSONS,
  STREETS,
  $unknown;

  factory Enum_VisitSubject.fromJson(String value) =>
      fromJson_Enum_VisitSubject(value);

  String toJson() => toJson_Enum_VisitSubject(this);
}

String toJson_Enum_VisitSubject(Enum_VisitSubject e) {
  switch (e) {
    case Enum_VisitSubject.AREAS:
      return r'AREAS';
    case Enum_VisitSubject.FAMILIES:
      return r'FAMILIES';
    case Enum_VisitSubject.PERSONS:
      return r'PERSONS';
    case Enum_VisitSubject.STREETS:
      return r'STREETS';
    case Enum_VisitSubject.$unknown:
      return r'$unknown';
  }
}

Enum_VisitSubject fromJson_Enum_VisitSubject(String value) {
  switch (value) {
    case r'AREAS':
      return Enum_VisitSubject.AREAS;
    case r'FAMILIES':
      return Enum_VisitSubject.FAMILIES;
    case r'PERSONS':
      return Enum_VisitSubject.PERSONS;
    case r'STREETS':
      return Enum_VisitSubject.STREETS;
    default:
      return Enum_VisitSubject.$unknown;
  }
}

enum Enum_MeetingAudience {
  ONLY_PERSONS,
  ONLY_SERVANTS,
  PERSONS_AND_SERVANTS,
  $unknown;

  factory Enum_MeetingAudience.fromJson(String value) =>
      fromJson_Enum_MeetingAudience(value);

  String toJson() => toJson_Enum_MeetingAudience(this);
}

String toJson_Enum_MeetingAudience(Enum_MeetingAudience e) {
  switch (e) {
    case Enum_MeetingAudience.ONLY_PERSONS:
      return r'ONLY_PERSONS';
    case Enum_MeetingAudience.ONLY_SERVANTS:
      return r'ONLY_SERVANTS';
    case Enum_MeetingAudience.PERSONS_AND_SERVANTS:
      return r'PERSONS_AND_SERVANTS';
    case Enum_MeetingAudience.$unknown:
      return r'$unknown';
  }
}

Enum_MeetingAudience fromJson_Enum_MeetingAudience(String value) {
  switch (value) {
    case r'ONLY_PERSONS':
      return Enum_MeetingAudience.ONLY_PERSONS;
    case r'ONLY_SERVANTS':
      return Enum_MeetingAudience.ONLY_SERVANTS;
    case r'PERSONS_AND_SERVANTS':
      return Enum_MeetingAudience.PERSONS_AND_SERVANTS;
    default:
      return Enum_MeetingAudience.$unknown;
  }
}

enum Enum_ServiceMembershipSortField {
  PERSON_ID,
  SERVICE_ID,
  IS_OUTSIDE_SERVICE_STUDY_YEARS,
  SERVICE_NAME,
  $unknown;

  factory Enum_ServiceMembershipSortField.fromJson(String value) =>
      fromJson_Enum_ServiceMembershipSortField(value);

  String toJson() => toJson_Enum_ServiceMembershipSortField(this);
}

String toJson_Enum_ServiceMembershipSortField(
  Enum_ServiceMembershipSortField e,
) {
  switch (e) {
    case Enum_ServiceMembershipSortField.PERSON_ID:
      return r'PERSON_ID';
    case Enum_ServiceMembershipSortField.SERVICE_ID:
      return r'SERVICE_ID';
    case Enum_ServiceMembershipSortField.IS_OUTSIDE_SERVICE_STUDY_YEARS:
      return r'IS_OUTSIDE_SERVICE_STUDY_YEARS';
    case Enum_ServiceMembershipSortField.SERVICE_NAME:
      return r'SERVICE_NAME';
    case Enum_ServiceMembershipSortField.$unknown:
      return r'$unknown';
  }
}

Enum_ServiceMembershipSortField fromJson_Enum_ServiceMembershipSortField(
  String value,
) {
  switch (value) {
    case r'PERSON_ID':
      return Enum_ServiceMembershipSortField.PERSON_ID;
    case r'SERVICE_ID':
      return Enum_ServiceMembershipSortField.SERVICE_ID;
    case r'IS_OUTSIDE_SERVICE_STUDY_YEARS':
      return Enum_ServiceMembershipSortField.IS_OUTSIDE_SERVICE_STUDY_YEARS;
    case r'SERVICE_NAME':
      return Enum_ServiceMembershipSortField.SERVICE_NAME;
    default:
      return Enum_ServiceMembershipSortField.$unknown;
  }
}

enum Enum_FamilyContactSortField {
  ID,
  PERSON_ID,
  FAMILY_ID,
  PERSON_TYPE_ID,
  LABEL,
  PHONE,
  IS_MAIN_PHONE,
  CREATED_AT,
  UPDATED_AT,
  EFFECTIVE_FAMILY_ID,
  EFFECTIVE_PERSON_TYPE_ID,
  PERSON_TYPE_ORDER,
  $unknown;

  factory Enum_FamilyContactSortField.fromJson(String value) =>
      fromJson_Enum_FamilyContactSortField(value);

  String toJson() => toJson_Enum_FamilyContactSortField(this);
}

String toJson_Enum_FamilyContactSortField(Enum_FamilyContactSortField e) {
  switch (e) {
    case Enum_FamilyContactSortField.ID:
      return r'ID';
    case Enum_FamilyContactSortField.PERSON_ID:
      return r'PERSON_ID';
    case Enum_FamilyContactSortField.FAMILY_ID:
      return r'FAMILY_ID';
    case Enum_FamilyContactSortField.PERSON_TYPE_ID:
      return r'PERSON_TYPE_ID';
    case Enum_FamilyContactSortField.LABEL:
      return r'LABEL';
    case Enum_FamilyContactSortField.PHONE:
      return r'PHONE';
    case Enum_FamilyContactSortField.IS_MAIN_PHONE:
      return r'IS_MAIN_PHONE';
    case Enum_FamilyContactSortField.CREATED_AT:
      return r'CREATED_AT';
    case Enum_FamilyContactSortField.UPDATED_AT:
      return r'UPDATED_AT';
    case Enum_FamilyContactSortField.EFFECTIVE_FAMILY_ID:
      return r'EFFECTIVE_FAMILY_ID';
    case Enum_FamilyContactSortField.EFFECTIVE_PERSON_TYPE_ID:
      return r'EFFECTIVE_PERSON_TYPE_ID';
    case Enum_FamilyContactSortField.PERSON_TYPE_ORDER:
      return r'PERSON_TYPE_ORDER';
    case Enum_FamilyContactSortField.$unknown:
      return r'$unknown';
  }
}

Enum_FamilyContactSortField fromJson_Enum_FamilyContactSortField(String value) {
  switch (value) {
    case r'ID':
      return Enum_FamilyContactSortField.ID;
    case r'PERSON_ID':
      return Enum_FamilyContactSortField.PERSON_ID;
    case r'FAMILY_ID':
      return Enum_FamilyContactSortField.FAMILY_ID;
    case r'PERSON_TYPE_ID':
      return Enum_FamilyContactSortField.PERSON_TYPE_ID;
    case r'LABEL':
      return Enum_FamilyContactSortField.LABEL;
    case r'PHONE':
      return Enum_FamilyContactSortField.PHONE;
    case r'IS_MAIN_PHONE':
      return Enum_FamilyContactSortField.IS_MAIN_PHONE;
    case r'CREATED_AT':
      return Enum_FamilyContactSortField.CREATED_AT;
    case r'UPDATED_AT':
      return Enum_FamilyContactSortField.UPDATED_AT;
    case r'EFFECTIVE_FAMILY_ID':
      return Enum_FamilyContactSortField.EFFECTIVE_FAMILY_ID;
    case r'EFFECTIVE_PERSON_TYPE_ID':
      return Enum_FamilyContactSortField.EFFECTIVE_PERSON_TYPE_ID;
    case r'PERSON_TYPE_ORDER':
      return Enum_FamilyContactSortField.PERSON_TYPE_ORDER;
    default:
      return Enum_FamilyContactSortField.$unknown;
  }
}

enum Enum_PersonTagSortField {
  PERSON_ID,
  TAG_ID,
  TAG_NAME,
  $unknown;

  factory Enum_PersonTagSortField.fromJson(String value) =>
      fromJson_Enum_PersonTagSortField(value);

  String toJson() => toJson_Enum_PersonTagSortField(this);
}

String toJson_Enum_PersonTagSortField(Enum_PersonTagSortField e) {
  switch (e) {
    case Enum_PersonTagSortField.PERSON_ID:
      return r'PERSON_ID';
    case Enum_PersonTagSortField.TAG_ID:
      return r'TAG_ID';
    case Enum_PersonTagSortField.TAG_NAME:
      return r'TAG_NAME';
    case Enum_PersonTagSortField.$unknown:
      return r'$unknown';
  }
}

Enum_PersonTagSortField fromJson_Enum_PersonTagSortField(String value) {
  switch (value) {
    case r'PERSON_ID':
      return Enum_PersonTagSortField.PERSON_ID;
    case r'TAG_ID':
      return Enum_PersonTagSortField.TAG_ID;
    case r'TAG_NAME':
      return Enum_PersonTagSortField.TAG_NAME;
    default:
      return Enum_PersonTagSortField.$unknown;
  }
}

enum Enum_PersonHobbySortField {
  PERSON_ID,
  HOBBY_ID,
  HOBBY_NAME,
  $unknown;

  factory Enum_PersonHobbySortField.fromJson(String value) =>
      fromJson_Enum_PersonHobbySortField(value);

  String toJson() => toJson_Enum_PersonHobbySortField(this);
}

String toJson_Enum_PersonHobbySortField(Enum_PersonHobbySortField e) {
  switch (e) {
    case Enum_PersonHobbySortField.PERSON_ID:
      return r'PERSON_ID';
    case Enum_PersonHobbySortField.HOBBY_ID:
      return r'HOBBY_ID';
    case Enum_PersonHobbySortField.HOBBY_NAME:
      return r'HOBBY_NAME';
    case Enum_PersonHobbySortField.$unknown:
      return r'$unknown';
  }
}

Enum_PersonHobbySortField fromJson_Enum_PersonHobbySortField(String value) {
  switch (value) {
    case r'PERSON_ID':
      return Enum_PersonHobbySortField.PERSON_ID;
    case r'HOBBY_ID':
      return Enum_PersonHobbySortField.HOBBY_ID;
    case r'HOBBY_NAME':
      return Enum_PersonHobbySortField.HOBBY_NAME;
    default:
      return Enum_PersonHobbySortField.$unknown;
  }
}

enum Enum_PersonSortField {
  ID,
  NAME,
  BIRTHDATE,
  GENDER,
  IS_SHAMMAS,
  SHAMMAS_LEVEL_ID,
  SCHOOL_ID,
  COLLEGE_ID,
  CHURCH_ID,
  FATHER_ID,
  IS_STUDENT,
  JOB_ID,
  JOB_DESCRIPTION,
  QUALIFICATION_ID,
  PERSON_TYPE_ID,
  STATE_ID,
  IS_SERVANT,
  NOTES,
  UID,
  FAMILY_ID,
  STORE_ID,
  STUDY_YEAR_ID,
  COLOR,
  PHOTO_UPDATED_AT,
  BLURHASH,
  WORK_STATUS,
  MARTIAL_STATUS,
  SERVING_CHURCH_ID,
  SERVICE_TYPE,
  BIRTHDAY,
  USER_CAN_EDIT,
  LAST_CONFESSION_DAY,
  LAST_CONFESSION_DAY_USER_NAME,
  LAST_KODAS_DAY,
  LAST_KODAS_DAY_USER_NAME,
  LAST_ATTENDED_AT,
  LAST_VISIT_AT,
  LAST_VISIT_AT_USER_NAME,
  MAIN_PHONE,
  LAST_EDIT,
  LAST_EDIT_USER_NAME,
  LAST_CALL,
  LAST_CALL_USER_NAME,
  FAMILY_NAME,
  USER_NAME,
  STORE_NAME,
  CHURCH_NAME,
  SERVING_CHURCH_NAME,
  COLLEGE_NAME,
  SCHOOL_NAME,
  FATHER_NAME,
  JOB_NAME,
  QUALIFICATION_NAME,
  STATE_NAME,
  PERSON_TYPE_ORDER,
  SHAMMAS_LEVEL_ORDER,
  STUDY_YEAR_ORDER,
  ADDRESS_AREA_NAME,
  ADDRESS_STREET_NAME,
  ADDRESS_DISTRICT_NAME,
  ADDRESS_FULL_ADDRESS_TEXT,
  $unknown;

  factory Enum_PersonSortField.fromJson(String value) =>
      fromJson_Enum_PersonSortField(value);

  String toJson() => toJson_Enum_PersonSortField(this);
}

String toJson_Enum_PersonSortField(Enum_PersonSortField e) {
  switch (e) {
    case Enum_PersonSortField.ID:
      return r'ID';
    case Enum_PersonSortField.NAME:
      return r'NAME';
    case Enum_PersonSortField.BIRTHDATE:
      return r'BIRTHDATE';
    case Enum_PersonSortField.GENDER:
      return r'GENDER';
    case Enum_PersonSortField.IS_SHAMMAS:
      return r'IS_SHAMMAS';
    case Enum_PersonSortField.SHAMMAS_LEVEL_ID:
      return r'SHAMMAS_LEVEL_ID';
    case Enum_PersonSortField.SCHOOL_ID:
      return r'SCHOOL_ID';
    case Enum_PersonSortField.COLLEGE_ID:
      return r'COLLEGE_ID';
    case Enum_PersonSortField.CHURCH_ID:
      return r'CHURCH_ID';
    case Enum_PersonSortField.FATHER_ID:
      return r'FATHER_ID';
    case Enum_PersonSortField.IS_STUDENT:
      return r'IS_STUDENT';
    case Enum_PersonSortField.JOB_ID:
      return r'JOB_ID';
    case Enum_PersonSortField.JOB_DESCRIPTION:
      return r'JOB_DESCRIPTION';
    case Enum_PersonSortField.QUALIFICATION_ID:
      return r'QUALIFICATION_ID';
    case Enum_PersonSortField.PERSON_TYPE_ID:
      return r'PERSON_TYPE_ID';
    case Enum_PersonSortField.STATE_ID:
      return r'STATE_ID';
    case Enum_PersonSortField.IS_SERVANT:
      return r'IS_SERVANT';
    case Enum_PersonSortField.NOTES:
      return r'NOTES';
    case Enum_PersonSortField.UID:
      return r'UID';
    case Enum_PersonSortField.FAMILY_ID:
      return r'FAMILY_ID';
    case Enum_PersonSortField.STORE_ID:
      return r'STORE_ID';
    case Enum_PersonSortField.STUDY_YEAR_ID:
      return r'STUDY_YEAR_ID';
    case Enum_PersonSortField.COLOR:
      return r'COLOR';
    case Enum_PersonSortField.PHOTO_UPDATED_AT:
      return r'PHOTO_UPDATED_AT';
    case Enum_PersonSortField.BLURHASH:
      return r'BLURHASH';
    case Enum_PersonSortField.WORK_STATUS:
      return r'WORK_STATUS';
    case Enum_PersonSortField.MARTIAL_STATUS:
      return r'MARTIAL_STATUS';
    case Enum_PersonSortField.SERVING_CHURCH_ID:
      return r'SERVING_CHURCH_ID';
    case Enum_PersonSortField.SERVICE_TYPE:
      return r'SERVICE_TYPE';
    case Enum_PersonSortField.BIRTHDAY:
      return r'BIRTHDAY';
    case Enum_PersonSortField.USER_CAN_EDIT:
      return r'USER_CAN_EDIT';
    case Enum_PersonSortField.LAST_CONFESSION_DAY:
      return r'LAST_CONFESSION_DAY';
    case Enum_PersonSortField.LAST_CONFESSION_DAY_USER_NAME:
      return r'LAST_CONFESSION_DAY_USER_NAME';
    case Enum_PersonSortField.LAST_KODAS_DAY:
      return r'LAST_KODAS_DAY';
    case Enum_PersonSortField.LAST_KODAS_DAY_USER_NAME:
      return r'LAST_KODAS_DAY_USER_NAME';
    case Enum_PersonSortField.LAST_ATTENDED_AT:
      return r'LAST_ATTENDED_AT';
    case Enum_PersonSortField.LAST_VISIT_AT:
      return r'LAST_VISIT_AT';
    case Enum_PersonSortField.LAST_VISIT_AT_USER_NAME:
      return r'LAST_VISIT_AT_USER_NAME';
    case Enum_PersonSortField.MAIN_PHONE:
      return r'MAIN_PHONE';
    case Enum_PersonSortField.LAST_EDIT:
      return r'LAST_EDIT';
    case Enum_PersonSortField.LAST_EDIT_USER_NAME:
      return r'LAST_EDIT_USER_NAME';
    case Enum_PersonSortField.LAST_CALL:
      return r'LAST_CALL';
    case Enum_PersonSortField.LAST_CALL_USER_NAME:
      return r'LAST_CALL_USER_NAME';
    case Enum_PersonSortField.FAMILY_NAME:
      return r'FAMILY_NAME';
    case Enum_PersonSortField.USER_NAME:
      return r'USER_NAME';
    case Enum_PersonSortField.STORE_NAME:
      return r'STORE_NAME';
    case Enum_PersonSortField.CHURCH_NAME:
      return r'CHURCH_NAME';
    case Enum_PersonSortField.SERVING_CHURCH_NAME:
      return r'SERVING_CHURCH_NAME';
    case Enum_PersonSortField.COLLEGE_NAME:
      return r'COLLEGE_NAME';
    case Enum_PersonSortField.SCHOOL_NAME:
      return r'SCHOOL_NAME';
    case Enum_PersonSortField.FATHER_NAME:
      return r'FATHER_NAME';
    case Enum_PersonSortField.JOB_NAME:
      return r'JOB_NAME';
    case Enum_PersonSortField.QUALIFICATION_NAME:
      return r'QUALIFICATION_NAME';
    case Enum_PersonSortField.STATE_NAME:
      return r'STATE_NAME';
    case Enum_PersonSortField.PERSON_TYPE_ORDER:
      return r'PERSON_TYPE_ORDER';
    case Enum_PersonSortField.SHAMMAS_LEVEL_ORDER:
      return r'SHAMMAS_LEVEL_ORDER';
    case Enum_PersonSortField.STUDY_YEAR_ORDER:
      return r'STUDY_YEAR_ORDER';
    case Enum_PersonSortField.ADDRESS_AREA_NAME:
      return r'ADDRESS_AREA_NAME';
    case Enum_PersonSortField.ADDRESS_STREET_NAME:
      return r'ADDRESS_STREET_NAME';
    case Enum_PersonSortField.ADDRESS_DISTRICT_NAME:
      return r'ADDRESS_DISTRICT_NAME';
    case Enum_PersonSortField.ADDRESS_FULL_ADDRESS_TEXT:
      return r'ADDRESS_FULL_ADDRESS_TEXT';
    case Enum_PersonSortField.$unknown:
      return r'$unknown';
  }
}

Enum_PersonSortField fromJson_Enum_PersonSortField(String value) {
  switch (value) {
    case r'ID':
      return Enum_PersonSortField.ID;
    case r'NAME':
      return Enum_PersonSortField.NAME;
    case r'BIRTHDATE':
      return Enum_PersonSortField.BIRTHDATE;
    case r'GENDER':
      return Enum_PersonSortField.GENDER;
    case r'IS_SHAMMAS':
      return Enum_PersonSortField.IS_SHAMMAS;
    case r'SHAMMAS_LEVEL_ID':
      return Enum_PersonSortField.SHAMMAS_LEVEL_ID;
    case r'SCHOOL_ID':
      return Enum_PersonSortField.SCHOOL_ID;
    case r'COLLEGE_ID':
      return Enum_PersonSortField.COLLEGE_ID;
    case r'CHURCH_ID':
      return Enum_PersonSortField.CHURCH_ID;
    case r'FATHER_ID':
      return Enum_PersonSortField.FATHER_ID;
    case r'IS_STUDENT':
      return Enum_PersonSortField.IS_STUDENT;
    case r'JOB_ID':
      return Enum_PersonSortField.JOB_ID;
    case r'JOB_DESCRIPTION':
      return Enum_PersonSortField.JOB_DESCRIPTION;
    case r'QUALIFICATION_ID':
      return Enum_PersonSortField.QUALIFICATION_ID;
    case r'PERSON_TYPE_ID':
      return Enum_PersonSortField.PERSON_TYPE_ID;
    case r'STATE_ID':
      return Enum_PersonSortField.STATE_ID;
    case r'IS_SERVANT':
      return Enum_PersonSortField.IS_SERVANT;
    case r'NOTES':
      return Enum_PersonSortField.NOTES;
    case r'UID':
      return Enum_PersonSortField.UID;
    case r'FAMILY_ID':
      return Enum_PersonSortField.FAMILY_ID;
    case r'STORE_ID':
      return Enum_PersonSortField.STORE_ID;
    case r'STUDY_YEAR_ID':
      return Enum_PersonSortField.STUDY_YEAR_ID;
    case r'COLOR':
      return Enum_PersonSortField.COLOR;
    case r'PHOTO_UPDATED_AT':
      return Enum_PersonSortField.PHOTO_UPDATED_AT;
    case r'BLURHASH':
      return Enum_PersonSortField.BLURHASH;
    case r'WORK_STATUS':
      return Enum_PersonSortField.WORK_STATUS;
    case r'MARTIAL_STATUS':
      return Enum_PersonSortField.MARTIAL_STATUS;
    case r'SERVING_CHURCH_ID':
      return Enum_PersonSortField.SERVING_CHURCH_ID;
    case r'SERVICE_TYPE':
      return Enum_PersonSortField.SERVICE_TYPE;
    case r'BIRTHDAY':
      return Enum_PersonSortField.BIRTHDAY;
    case r'USER_CAN_EDIT':
      return Enum_PersonSortField.USER_CAN_EDIT;
    case r'LAST_CONFESSION_DAY':
      return Enum_PersonSortField.LAST_CONFESSION_DAY;
    case r'LAST_CONFESSION_DAY_USER_NAME':
      return Enum_PersonSortField.LAST_CONFESSION_DAY_USER_NAME;
    case r'LAST_KODAS_DAY':
      return Enum_PersonSortField.LAST_KODAS_DAY;
    case r'LAST_KODAS_DAY_USER_NAME':
      return Enum_PersonSortField.LAST_KODAS_DAY_USER_NAME;
    case r'LAST_ATTENDED_AT':
      return Enum_PersonSortField.LAST_ATTENDED_AT;
    case r'LAST_VISIT_AT':
      return Enum_PersonSortField.LAST_VISIT_AT;
    case r'LAST_VISIT_AT_USER_NAME':
      return Enum_PersonSortField.LAST_VISIT_AT_USER_NAME;
    case r'MAIN_PHONE':
      return Enum_PersonSortField.MAIN_PHONE;
    case r'LAST_EDIT':
      return Enum_PersonSortField.LAST_EDIT;
    case r'LAST_EDIT_USER_NAME':
      return Enum_PersonSortField.LAST_EDIT_USER_NAME;
    case r'LAST_CALL':
      return Enum_PersonSortField.LAST_CALL;
    case r'LAST_CALL_USER_NAME':
      return Enum_PersonSortField.LAST_CALL_USER_NAME;
    case r'FAMILY_NAME':
      return Enum_PersonSortField.FAMILY_NAME;
    case r'USER_NAME':
      return Enum_PersonSortField.USER_NAME;
    case r'STORE_NAME':
      return Enum_PersonSortField.STORE_NAME;
    case r'CHURCH_NAME':
      return Enum_PersonSortField.CHURCH_NAME;
    case r'SERVING_CHURCH_NAME':
      return Enum_PersonSortField.SERVING_CHURCH_NAME;
    case r'COLLEGE_NAME':
      return Enum_PersonSortField.COLLEGE_NAME;
    case r'SCHOOL_NAME':
      return Enum_PersonSortField.SCHOOL_NAME;
    case r'FATHER_NAME':
      return Enum_PersonSortField.FATHER_NAME;
    case r'JOB_NAME':
      return Enum_PersonSortField.JOB_NAME;
    case r'QUALIFICATION_NAME':
      return Enum_PersonSortField.QUALIFICATION_NAME;
    case r'STATE_NAME':
      return Enum_PersonSortField.STATE_NAME;
    case r'PERSON_TYPE_ORDER':
      return Enum_PersonSortField.PERSON_TYPE_ORDER;
    case r'SHAMMAS_LEVEL_ORDER':
      return Enum_PersonSortField.SHAMMAS_LEVEL_ORDER;
    case r'STUDY_YEAR_ORDER':
      return Enum_PersonSortField.STUDY_YEAR_ORDER;
    case r'ADDRESS_AREA_NAME':
      return Enum_PersonSortField.ADDRESS_AREA_NAME;
    case r'ADDRESS_STREET_NAME':
      return Enum_PersonSortField.ADDRESS_STREET_NAME;
    case r'ADDRESS_DISTRICT_NAME':
      return Enum_PersonSortField.ADDRESS_DISTRICT_NAME;
    case r'ADDRESS_FULL_ADDRESS_TEXT':
      return Enum_PersonSortField.ADDRESS_FULL_ADDRESS_TEXT;
    default:
      return Enum_PersonSortField.$unknown;
  }
}

enum Enum_MainContactSortField {
  ID,
  PERSON_ID,
  LABEL,
  PHONE,
  $unknown;

  factory Enum_MainContactSortField.fromJson(String value) =>
      fromJson_Enum_MainContactSortField(value);

  String toJson() => toJson_Enum_MainContactSortField(this);
}

String toJson_Enum_MainContactSortField(Enum_MainContactSortField e) {
  switch (e) {
    case Enum_MainContactSortField.ID:
      return r'ID';
    case Enum_MainContactSortField.PERSON_ID:
      return r'PERSON_ID';
    case Enum_MainContactSortField.LABEL:
      return r'LABEL';
    case Enum_MainContactSortField.PHONE:
      return r'PHONE';
    case Enum_MainContactSortField.$unknown:
      return r'$unknown';
  }
}

Enum_MainContactSortField fromJson_Enum_MainContactSortField(String value) {
  switch (value) {
    case r'ID':
      return Enum_MainContactSortField.ID;
    case r'PERSON_ID':
      return Enum_MainContactSortField.PERSON_ID;
    case r'LABEL':
      return Enum_MainContactSortField.LABEL;
    case r'PHONE':
      return Enum_MainContactSortField.PHONE;
    default:
      return Enum_MainContactSortField.$unknown;
  }
}

enum Enum_GroupMembershipSortField {
  PERSON_ID,
  GROUP_ID,
  GROUP_NAME,
  $unknown;

  factory Enum_GroupMembershipSortField.fromJson(String value) =>
      fromJson_Enum_GroupMembershipSortField(value);

  String toJson() => toJson_Enum_GroupMembershipSortField(this);
}

String toJson_Enum_GroupMembershipSortField(Enum_GroupMembershipSortField e) {
  switch (e) {
    case Enum_GroupMembershipSortField.PERSON_ID:
      return r'PERSON_ID';
    case Enum_GroupMembershipSortField.GROUP_ID:
      return r'GROUP_ID';
    case Enum_GroupMembershipSortField.GROUP_NAME:
      return r'GROUP_NAME';
    case Enum_GroupMembershipSortField.$unknown:
      return r'$unknown';
  }
}

Enum_GroupMembershipSortField fromJson_Enum_GroupMembershipSortField(
  String value,
) {
  switch (value) {
    case r'PERSON_ID':
      return Enum_GroupMembershipSortField.PERSON_ID;
    case r'GROUP_ID':
      return Enum_GroupMembershipSortField.GROUP_ID;
    case r'GROUP_NAME':
      return Enum_GroupMembershipSortField.GROUP_NAME;
    default:
      return Enum_GroupMembershipSortField.$unknown;
  }
}

enum Enum_FamilyRelationSortField {
  PARENT_FAMILY_ID,
  CHILD_FAMILY_ID,
  CHILD_NAME,
  PARENT_NAME,
  $unknown;

  factory Enum_FamilyRelationSortField.fromJson(String value) =>
      fromJson_Enum_FamilyRelationSortField(value);

  String toJson() => toJson_Enum_FamilyRelationSortField(this);
}

String toJson_Enum_FamilyRelationSortField(Enum_FamilyRelationSortField e) {
  switch (e) {
    case Enum_FamilyRelationSortField.PARENT_FAMILY_ID:
      return r'PARENT_FAMILY_ID';
    case Enum_FamilyRelationSortField.CHILD_FAMILY_ID:
      return r'CHILD_FAMILY_ID';
    case Enum_FamilyRelationSortField.CHILD_NAME:
      return r'CHILD_NAME';
    case Enum_FamilyRelationSortField.PARENT_NAME:
      return r'PARENT_NAME';
    case Enum_FamilyRelationSortField.$unknown:
      return r'$unknown';
  }
}

Enum_FamilyRelationSortField fromJson_Enum_FamilyRelationSortField(
  String value,
) {
  switch (value) {
    case r'PARENT_FAMILY_ID':
      return Enum_FamilyRelationSortField.PARENT_FAMILY_ID;
    case r'CHILD_FAMILY_ID':
      return Enum_FamilyRelationSortField.CHILD_FAMILY_ID;
    case r'CHILD_NAME':
      return Enum_FamilyRelationSortField.CHILD_NAME;
    case r'PARENT_NAME':
      return Enum_FamilyRelationSortField.PARENT_NAME;
    default:
      return Enum_FamilyRelationSortField.$unknown;
  }
}

enum Enum_FamilySortField {
  ID,
  NAME,
  NOTES,
  COLOR,
  PHOTO_UPDATED_AT,
  BLURHASH,
  STATUS,
  DECEASED_SPOUSE_NAME,
  MARRIAGE_DATE,
  CHURCH_ID,
  USER_CAN_EDIT,
  LAST_EDIT,
  LAST_EDIT_USER_NAME,
  LAST_VISIT,
  LAST_VISIT_USER_NAME,
  LAST_FATHER_VISIT,
  LAST_FATHER_VISIT_USER_NAME,
  CHURCH_NAME,
  ADDRESS_AREA_NAME,
  ADDRESS_STREET_NAME,
  ADDRESS_DISTRICT_NAME,
  ADDRESS_FULL_ADDRESS_TEXT,
  $unknown;

  factory Enum_FamilySortField.fromJson(String value) =>
      fromJson_Enum_FamilySortField(value);

  String toJson() => toJson_Enum_FamilySortField(this);
}

String toJson_Enum_FamilySortField(Enum_FamilySortField e) {
  switch (e) {
    case Enum_FamilySortField.ID:
      return r'ID';
    case Enum_FamilySortField.NAME:
      return r'NAME';
    case Enum_FamilySortField.NOTES:
      return r'NOTES';
    case Enum_FamilySortField.COLOR:
      return r'COLOR';
    case Enum_FamilySortField.PHOTO_UPDATED_AT:
      return r'PHOTO_UPDATED_AT';
    case Enum_FamilySortField.BLURHASH:
      return r'BLURHASH';
    case Enum_FamilySortField.STATUS:
      return r'STATUS';
    case Enum_FamilySortField.DECEASED_SPOUSE_NAME:
      return r'DECEASED_SPOUSE_NAME';
    case Enum_FamilySortField.MARRIAGE_DATE:
      return r'MARRIAGE_DATE';
    case Enum_FamilySortField.CHURCH_ID:
      return r'CHURCH_ID';
    case Enum_FamilySortField.USER_CAN_EDIT:
      return r'USER_CAN_EDIT';
    case Enum_FamilySortField.LAST_EDIT:
      return r'LAST_EDIT';
    case Enum_FamilySortField.LAST_EDIT_USER_NAME:
      return r'LAST_EDIT_USER_NAME';
    case Enum_FamilySortField.LAST_VISIT:
      return r'LAST_VISIT';
    case Enum_FamilySortField.LAST_VISIT_USER_NAME:
      return r'LAST_VISIT_USER_NAME';
    case Enum_FamilySortField.LAST_FATHER_VISIT:
      return r'LAST_FATHER_VISIT';
    case Enum_FamilySortField.LAST_FATHER_VISIT_USER_NAME:
      return r'LAST_FATHER_VISIT_USER_NAME';
    case Enum_FamilySortField.CHURCH_NAME:
      return r'CHURCH_NAME';
    case Enum_FamilySortField.ADDRESS_AREA_NAME:
      return r'ADDRESS_AREA_NAME';
    case Enum_FamilySortField.ADDRESS_STREET_NAME:
      return r'ADDRESS_STREET_NAME';
    case Enum_FamilySortField.ADDRESS_DISTRICT_NAME:
      return r'ADDRESS_DISTRICT_NAME';
    case Enum_FamilySortField.ADDRESS_FULL_ADDRESS_TEXT:
      return r'ADDRESS_FULL_ADDRESS_TEXT';
    case Enum_FamilySortField.$unknown:
      return r'$unknown';
  }
}

Enum_FamilySortField fromJson_Enum_FamilySortField(String value) {
  switch (value) {
    case r'ID':
      return Enum_FamilySortField.ID;
    case r'NAME':
      return Enum_FamilySortField.NAME;
    case r'NOTES':
      return Enum_FamilySortField.NOTES;
    case r'COLOR':
      return Enum_FamilySortField.COLOR;
    case r'PHOTO_UPDATED_AT':
      return Enum_FamilySortField.PHOTO_UPDATED_AT;
    case r'BLURHASH':
      return Enum_FamilySortField.BLURHASH;
    case r'STATUS':
      return Enum_FamilySortField.STATUS;
    case r'DECEASED_SPOUSE_NAME':
      return Enum_FamilySortField.DECEASED_SPOUSE_NAME;
    case r'MARRIAGE_DATE':
      return Enum_FamilySortField.MARRIAGE_DATE;
    case r'CHURCH_ID':
      return Enum_FamilySortField.CHURCH_ID;
    case r'USER_CAN_EDIT':
      return Enum_FamilySortField.USER_CAN_EDIT;
    case r'LAST_EDIT':
      return Enum_FamilySortField.LAST_EDIT;
    case r'LAST_EDIT_USER_NAME':
      return Enum_FamilySortField.LAST_EDIT_USER_NAME;
    case r'LAST_VISIT':
      return Enum_FamilySortField.LAST_VISIT;
    case r'LAST_VISIT_USER_NAME':
      return Enum_FamilySortField.LAST_VISIT_USER_NAME;
    case r'LAST_FATHER_VISIT':
      return Enum_FamilySortField.LAST_FATHER_VISIT;
    case r'LAST_FATHER_VISIT_USER_NAME':
      return Enum_FamilySortField.LAST_FATHER_VISIT_USER_NAME;
    case r'CHURCH_NAME':
      return Enum_FamilySortField.CHURCH_NAME;
    case r'ADDRESS_AREA_NAME':
      return Enum_FamilySortField.ADDRESS_AREA_NAME;
    case r'ADDRESS_STREET_NAME':
      return Enum_FamilySortField.ADDRESS_STREET_NAME;
    case r'ADDRESS_DISTRICT_NAME':
      return Enum_FamilySortField.ADDRESS_DISTRICT_NAME;
    case r'ADDRESS_FULL_ADDRESS_TEXT':
      return Enum_FamilySortField.ADDRESS_FULL_ADDRESS_TEXT;
    default:
      return Enum_FamilySortField.$unknown;
  }
}

enum Enum_ContactSortField {
  ID,
  PERSON_ID,
  FAMILY_ID,
  PERSON_TYPE_ID,
  LABEL,
  PHONE,
  IS_MAIN_PHONE,
  CREATED_AT,
  UPDATED_AT,
  $unknown;

  factory Enum_ContactSortField.fromJson(String value) =>
      fromJson_Enum_ContactSortField(value);

  String toJson() => toJson_Enum_ContactSortField(this);
}

String toJson_Enum_ContactSortField(Enum_ContactSortField e) {
  switch (e) {
    case Enum_ContactSortField.ID:
      return r'ID';
    case Enum_ContactSortField.PERSON_ID:
      return r'PERSON_ID';
    case Enum_ContactSortField.FAMILY_ID:
      return r'FAMILY_ID';
    case Enum_ContactSortField.PERSON_TYPE_ID:
      return r'PERSON_TYPE_ID';
    case Enum_ContactSortField.LABEL:
      return r'LABEL';
    case Enum_ContactSortField.PHONE:
      return r'PHONE';
    case Enum_ContactSortField.IS_MAIN_PHONE:
      return r'IS_MAIN_PHONE';
    case Enum_ContactSortField.CREATED_AT:
      return r'CREATED_AT';
    case Enum_ContactSortField.UPDATED_AT:
      return r'UPDATED_AT';
    case Enum_ContactSortField.$unknown:
      return r'$unknown';
  }
}

Enum_ContactSortField fromJson_Enum_ContactSortField(String value) {
  switch (value) {
    case r'ID':
      return Enum_ContactSortField.ID;
    case r'PERSON_ID':
      return Enum_ContactSortField.PERSON_ID;
    case r'FAMILY_ID':
      return Enum_ContactSortField.FAMILY_ID;
    case r'PERSON_TYPE_ID':
      return Enum_ContactSortField.PERSON_TYPE_ID;
    case r'LABEL':
      return Enum_ContactSortField.LABEL;
    case r'PHONE':
      return Enum_ContactSortField.PHONE;
    case r'IS_MAIN_PHONE':
      return Enum_ContactSortField.IS_MAIN_PHONE;
    case r'CREATED_AT':
      return Enum_ContactSortField.CREATED_AT;
    case r'UPDATED_AT':
      return Enum_ContactSortField.UPDATED_AT;
    default:
      return Enum_ContactSortField.$unknown;
  }
}

enum Enum_ClassMembershipSortField {
  CLASS_ID,
  PERSON_ID,
  CLASS_NAME,
  $unknown;

  factory Enum_ClassMembershipSortField.fromJson(String value) =>
      fromJson_Enum_ClassMembershipSortField(value);

  String toJson() => toJson_Enum_ClassMembershipSortField(this);
}

String toJson_Enum_ClassMembershipSortField(Enum_ClassMembershipSortField e) {
  switch (e) {
    case Enum_ClassMembershipSortField.CLASS_ID:
      return r'CLASS_ID';
    case Enum_ClassMembershipSortField.PERSON_ID:
      return r'PERSON_ID';
    case Enum_ClassMembershipSortField.CLASS_NAME:
      return r'CLASS_NAME';
    case Enum_ClassMembershipSortField.$unknown:
      return r'$unknown';
  }
}

Enum_ClassMembershipSortField fromJson_Enum_ClassMembershipSortField(
  String value,
) {
  switch (value) {
    case r'CLASS_ID':
      return Enum_ClassMembershipSortField.CLASS_ID;
    case r'PERSON_ID':
      return Enum_ClassMembershipSortField.PERSON_ID;
    case r'CLASS_NAME':
      return Enum_ClassMembershipSortField.CLASS_NAME;
    default:
      return Enum_ClassMembershipSortField.$unknown;
  }
}

enum Enum_SortOrder {
  DESC,
  DESC_NULLS_FIRST,
  DESC_NULLS_LAST,
  ASC,
  ASC_NULLS_FIRST,
  ASC_NULLS_LAST,
  $unknown;

  factory Enum_SortOrder.fromJson(String value) =>
      fromJson_Enum_SortOrder(value);

  String toJson() => toJson_Enum_SortOrder(this);
}

String toJson_Enum_SortOrder(Enum_SortOrder e) {
  switch (e) {
    case Enum_SortOrder.DESC:
      return r'DESC';
    case Enum_SortOrder.DESC_NULLS_FIRST:
      return r'DESC_NULLS_FIRST';
    case Enum_SortOrder.DESC_NULLS_LAST:
      return r'DESC_NULLS_LAST';
    case Enum_SortOrder.ASC:
      return r'ASC';
    case Enum_SortOrder.ASC_NULLS_FIRST:
      return r'ASC_NULLS_FIRST';
    case Enum_SortOrder.ASC_NULLS_LAST:
      return r'ASC_NULLS_LAST';
    case Enum_SortOrder.$unknown:
      return r'$unknown';
  }
}

Enum_SortOrder fromJson_Enum_SortOrder(String value) {
  switch (value) {
    case r'DESC':
      return Enum_SortOrder.DESC;
    case r'DESC_NULLS_FIRST':
      return Enum_SortOrder.DESC_NULLS_FIRST;
    case r'DESC_NULLS_LAST':
      return Enum_SortOrder.DESC_NULLS_LAST;
    case r'ASC':
      return Enum_SortOrder.ASC;
    case r'ASC_NULLS_FIRST':
      return Enum_SortOrder.ASC_NULLS_FIRST;
    case r'ASC_NULLS_LAST':
      return Enum_SortOrder.ASC_NULLS_LAST;
    default:
      return Enum_SortOrder.$unknown;
  }
}

enum Enum_ServiceSortField {
  ID,
  NAME,
  STUDY_YEAR_FROM_ID,
  STUDY_YEAR_TO_ID,
  NEXT_SERVICE_ID,
  COLOR,
  PHOTO_UPDATED_AT,
  BLURHASH,
  DEFAULT_MEETING_ID,
  USER_CAN_EDIT,
  NEXT_SERVICE_NAME,
  DEFAULT_MEETING_NAME,
  LAST_EDIT,
  LAST_EDIT_USER_NAME,
  STUDY_YEAR_FROM_ORDER,
  STUDY_YEAR_TO_ORDER,
  $unknown;

  factory Enum_ServiceSortField.fromJson(String value) =>
      fromJson_Enum_ServiceSortField(value);

  String toJson() => toJson_Enum_ServiceSortField(this);
}

String toJson_Enum_ServiceSortField(Enum_ServiceSortField e) {
  switch (e) {
    case Enum_ServiceSortField.ID:
      return r'ID';
    case Enum_ServiceSortField.NAME:
      return r'NAME';
    case Enum_ServiceSortField.STUDY_YEAR_FROM_ID:
      return r'STUDY_YEAR_FROM_ID';
    case Enum_ServiceSortField.STUDY_YEAR_TO_ID:
      return r'STUDY_YEAR_TO_ID';
    case Enum_ServiceSortField.NEXT_SERVICE_ID:
      return r'NEXT_SERVICE_ID';
    case Enum_ServiceSortField.COLOR:
      return r'COLOR';
    case Enum_ServiceSortField.PHOTO_UPDATED_AT:
      return r'PHOTO_UPDATED_AT';
    case Enum_ServiceSortField.BLURHASH:
      return r'BLURHASH';
    case Enum_ServiceSortField.DEFAULT_MEETING_ID:
      return r'DEFAULT_MEETING_ID';
    case Enum_ServiceSortField.USER_CAN_EDIT:
      return r'USER_CAN_EDIT';
    case Enum_ServiceSortField.NEXT_SERVICE_NAME:
      return r'NEXT_SERVICE_NAME';
    case Enum_ServiceSortField.DEFAULT_MEETING_NAME:
      return r'DEFAULT_MEETING_NAME';
    case Enum_ServiceSortField.LAST_EDIT:
      return r'LAST_EDIT';
    case Enum_ServiceSortField.LAST_EDIT_USER_NAME:
      return r'LAST_EDIT_USER_NAME';
    case Enum_ServiceSortField.STUDY_YEAR_FROM_ORDER:
      return r'STUDY_YEAR_FROM_ORDER';
    case Enum_ServiceSortField.STUDY_YEAR_TO_ORDER:
      return r'STUDY_YEAR_TO_ORDER';
    case Enum_ServiceSortField.$unknown:
      return r'$unknown';
  }
}

Enum_ServiceSortField fromJson_Enum_ServiceSortField(String value) {
  switch (value) {
    case r'ID':
      return Enum_ServiceSortField.ID;
    case r'NAME':
      return Enum_ServiceSortField.NAME;
    case r'STUDY_YEAR_FROM_ID':
      return Enum_ServiceSortField.STUDY_YEAR_FROM_ID;
    case r'STUDY_YEAR_TO_ID':
      return Enum_ServiceSortField.STUDY_YEAR_TO_ID;
    case r'NEXT_SERVICE_ID':
      return Enum_ServiceSortField.NEXT_SERVICE_ID;
    case r'COLOR':
      return Enum_ServiceSortField.COLOR;
    case r'PHOTO_UPDATED_AT':
      return Enum_ServiceSortField.PHOTO_UPDATED_AT;
    case r'BLURHASH':
      return Enum_ServiceSortField.BLURHASH;
    case r'DEFAULT_MEETING_ID':
      return Enum_ServiceSortField.DEFAULT_MEETING_ID;
    case r'USER_CAN_EDIT':
      return Enum_ServiceSortField.USER_CAN_EDIT;
    case r'NEXT_SERVICE_NAME':
      return Enum_ServiceSortField.NEXT_SERVICE_NAME;
    case r'DEFAULT_MEETING_NAME':
      return Enum_ServiceSortField.DEFAULT_MEETING_NAME;
    case r'LAST_EDIT':
      return Enum_ServiceSortField.LAST_EDIT;
    case r'LAST_EDIT_USER_NAME':
      return Enum_ServiceSortField.LAST_EDIT_USER_NAME;
    case r'STUDY_YEAR_FROM_ORDER':
      return Enum_ServiceSortField.STUDY_YEAR_FROM_ORDER;
    case r'STUDY_YEAR_TO_ORDER':
      return Enum_ServiceSortField.STUDY_YEAR_TO_ORDER;
    default:
      return Enum_ServiceSortField.$unknown;
  }
}

enum Enum_GroupSortField {
  ID,
  NAME,
  SERVICE_ID,
  VALIDITY,
  COLOR,
  PHOTO_UPDATED_AT,
  BLURHASH,
  DEFAULT_MEETING_ID,
  USER_CAN_EDIT,
  SERVICE_NAME,
  DEFAULT_MEETING_NAME,
  LAST_EDIT,
  LAST_EDIT_USER_NAME,
  $unknown;

  factory Enum_GroupSortField.fromJson(String value) =>
      fromJson_Enum_GroupSortField(value);

  String toJson() => toJson_Enum_GroupSortField(this);
}

String toJson_Enum_GroupSortField(Enum_GroupSortField e) {
  switch (e) {
    case Enum_GroupSortField.ID:
      return r'ID';
    case Enum_GroupSortField.NAME:
      return r'NAME';
    case Enum_GroupSortField.SERVICE_ID:
      return r'SERVICE_ID';
    case Enum_GroupSortField.VALIDITY:
      return r'VALIDITY';
    case Enum_GroupSortField.COLOR:
      return r'COLOR';
    case Enum_GroupSortField.PHOTO_UPDATED_AT:
      return r'PHOTO_UPDATED_AT';
    case Enum_GroupSortField.BLURHASH:
      return r'BLURHASH';
    case Enum_GroupSortField.DEFAULT_MEETING_ID:
      return r'DEFAULT_MEETING_ID';
    case Enum_GroupSortField.USER_CAN_EDIT:
      return r'USER_CAN_EDIT';
    case Enum_GroupSortField.SERVICE_NAME:
      return r'SERVICE_NAME';
    case Enum_GroupSortField.DEFAULT_MEETING_NAME:
      return r'DEFAULT_MEETING_NAME';
    case Enum_GroupSortField.LAST_EDIT:
      return r'LAST_EDIT';
    case Enum_GroupSortField.LAST_EDIT_USER_NAME:
      return r'LAST_EDIT_USER_NAME';
    case Enum_GroupSortField.$unknown:
      return r'$unknown';
  }
}

Enum_GroupSortField fromJson_Enum_GroupSortField(String value) {
  switch (value) {
    case r'ID':
      return Enum_GroupSortField.ID;
    case r'NAME':
      return Enum_GroupSortField.NAME;
    case r'SERVICE_ID':
      return Enum_GroupSortField.SERVICE_ID;
    case r'VALIDITY':
      return Enum_GroupSortField.VALIDITY;
    case r'COLOR':
      return Enum_GroupSortField.COLOR;
    case r'PHOTO_UPDATED_AT':
      return Enum_GroupSortField.PHOTO_UPDATED_AT;
    case r'BLURHASH':
      return Enum_GroupSortField.BLURHASH;
    case r'DEFAULT_MEETING_ID':
      return Enum_GroupSortField.DEFAULT_MEETING_ID;
    case r'USER_CAN_EDIT':
      return Enum_GroupSortField.USER_CAN_EDIT;
    case r'SERVICE_NAME':
      return Enum_GroupSortField.SERVICE_NAME;
    case r'DEFAULT_MEETING_NAME':
      return Enum_GroupSortField.DEFAULT_MEETING_NAME;
    case r'LAST_EDIT':
      return Enum_GroupSortField.LAST_EDIT;
    case r'LAST_EDIT_USER_NAME':
      return Enum_GroupSortField.LAST_EDIT_USER_NAME;
    default:
      return Enum_GroupSortField.$unknown;
  }
}

enum Enum_ClassSortField {
  ID,
  NAME,
  SERVICE_ID,
  SERVICE_STUDY_YEAR,
  SERVICE_GENDER,
  COLOR,
  PHOTO_UPDATED_AT,
  BLURHASH,
  SERVICE_STUDY_YEAR_TO,
  USER_CAN_EDIT,
  SERVICE_NAME,
  LAST_EDIT,
  LAST_EDIT_USER_NAME,
  STUDY_YEAR_FROM_ORDER,
  STUDY_YEAR_TO_ORDER,
  $unknown;

  factory Enum_ClassSortField.fromJson(String value) =>
      fromJson_Enum_ClassSortField(value);

  String toJson() => toJson_Enum_ClassSortField(this);
}

String toJson_Enum_ClassSortField(Enum_ClassSortField e) {
  switch (e) {
    case Enum_ClassSortField.ID:
      return r'ID';
    case Enum_ClassSortField.NAME:
      return r'NAME';
    case Enum_ClassSortField.SERVICE_ID:
      return r'SERVICE_ID';
    case Enum_ClassSortField.SERVICE_STUDY_YEAR:
      return r'SERVICE_STUDY_YEAR';
    case Enum_ClassSortField.SERVICE_GENDER:
      return r'SERVICE_GENDER';
    case Enum_ClassSortField.COLOR:
      return r'COLOR';
    case Enum_ClassSortField.PHOTO_UPDATED_AT:
      return r'PHOTO_UPDATED_AT';
    case Enum_ClassSortField.BLURHASH:
      return r'BLURHASH';
    case Enum_ClassSortField.SERVICE_STUDY_YEAR_TO:
      return r'SERVICE_STUDY_YEAR_TO';
    case Enum_ClassSortField.USER_CAN_EDIT:
      return r'USER_CAN_EDIT';
    case Enum_ClassSortField.SERVICE_NAME:
      return r'SERVICE_NAME';
    case Enum_ClassSortField.LAST_EDIT:
      return r'LAST_EDIT';
    case Enum_ClassSortField.LAST_EDIT_USER_NAME:
      return r'LAST_EDIT_USER_NAME';
    case Enum_ClassSortField.STUDY_YEAR_FROM_ORDER:
      return r'STUDY_YEAR_FROM_ORDER';
    case Enum_ClassSortField.STUDY_YEAR_TO_ORDER:
      return r'STUDY_YEAR_TO_ORDER';
    case Enum_ClassSortField.$unknown:
      return r'$unknown';
  }
}

Enum_ClassSortField fromJson_Enum_ClassSortField(String value) {
  switch (value) {
    case r'ID':
      return Enum_ClassSortField.ID;
    case r'NAME':
      return Enum_ClassSortField.NAME;
    case r'SERVICE_ID':
      return Enum_ClassSortField.SERVICE_ID;
    case r'SERVICE_STUDY_YEAR':
      return Enum_ClassSortField.SERVICE_STUDY_YEAR;
    case r'SERVICE_GENDER':
      return Enum_ClassSortField.SERVICE_GENDER;
    case r'COLOR':
      return Enum_ClassSortField.COLOR;
    case r'PHOTO_UPDATED_AT':
      return Enum_ClassSortField.PHOTO_UPDATED_AT;
    case r'BLURHASH':
      return Enum_ClassSortField.BLURHASH;
    case r'SERVICE_STUDY_YEAR_TO':
      return Enum_ClassSortField.SERVICE_STUDY_YEAR_TO;
    case r'USER_CAN_EDIT':
      return Enum_ClassSortField.USER_CAN_EDIT;
    case r'SERVICE_NAME':
      return Enum_ClassSortField.SERVICE_NAME;
    case r'LAST_EDIT':
      return Enum_ClassSortField.LAST_EDIT;
    case r'LAST_EDIT_USER_NAME':
      return Enum_ClassSortField.LAST_EDIT_USER_NAME;
    case r'STUDY_YEAR_FROM_ORDER':
      return Enum_ClassSortField.STUDY_YEAR_FROM_ORDER;
    case r'STUDY_YEAR_TO_ORDER':
      return Enum_ClassSortField.STUDY_YEAR_TO_ORDER;
    default:
      return Enum_ClassSortField.$unknown;
  }
}

enum Enum_StreetSortField {
  ID,
  NAME,
  LINE,
  COLOR,
  PHOTO_UPDATED_AT,
  BLURHASH,
  USER_CAN_EDIT,
  WITHIN_POLYGON,
  WITHIN_DISTANCE,
  LAST_EDIT,
  LAST_EDIT_USER_NAME,
  LAST_VISIT,
  LAST_VISIT_USER_NAME,
  $unknown;

  factory Enum_StreetSortField.fromJson(String value) =>
      fromJson_Enum_StreetSortField(value);

  String toJson() => toJson_Enum_StreetSortField(this);
}

String toJson_Enum_StreetSortField(Enum_StreetSortField e) {
  switch (e) {
    case Enum_StreetSortField.ID:
      return r'ID';
    case Enum_StreetSortField.NAME:
      return r'NAME';
    case Enum_StreetSortField.LINE:
      return r'LINE';
    case Enum_StreetSortField.COLOR:
      return r'COLOR';
    case Enum_StreetSortField.PHOTO_UPDATED_AT:
      return r'PHOTO_UPDATED_AT';
    case Enum_StreetSortField.BLURHASH:
      return r'BLURHASH';
    case Enum_StreetSortField.USER_CAN_EDIT:
      return r'USER_CAN_EDIT';
    case Enum_StreetSortField.WITHIN_POLYGON:
      return r'WITHIN_POLYGON';
    case Enum_StreetSortField.WITHIN_DISTANCE:
      return r'WITHIN_DISTANCE';
    case Enum_StreetSortField.LAST_EDIT:
      return r'LAST_EDIT';
    case Enum_StreetSortField.LAST_EDIT_USER_NAME:
      return r'LAST_EDIT_USER_NAME';
    case Enum_StreetSortField.LAST_VISIT:
      return r'LAST_VISIT';
    case Enum_StreetSortField.LAST_VISIT_USER_NAME:
      return r'LAST_VISIT_USER_NAME';
    case Enum_StreetSortField.$unknown:
      return r'$unknown';
  }
}

Enum_StreetSortField fromJson_Enum_StreetSortField(String value) {
  switch (value) {
    case r'ID':
      return Enum_StreetSortField.ID;
    case r'NAME':
      return Enum_StreetSortField.NAME;
    case r'LINE':
      return Enum_StreetSortField.LINE;
    case r'COLOR':
      return Enum_StreetSortField.COLOR;
    case r'PHOTO_UPDATED_AT':
      return Enum_StreetSortField.PHOTO_UPDATED_AT;
    case r'BLURHASH':
      return Enum_StreetSortField.BLURHASH;
    case r'USER_CAN_EDIT':
      return Enum_StreetSortField.USER_CAN_EDIT;
    case r'WITHIN_POLYGON':
      return Enum_StreetSortField.WITHIN_POLYGON;
    case r'WITHIN_DISTANCE':
      return Enum_StreetSortField.WITHIN_DISTANCE;
    case r'LAST_EDIT':
      return Enum_StreetSortField.LAST_EDIT;
    case r'LAST_EDIT_USER_NAME':
      return Enum_StreetSortField.LAST_EDIT_USER_NAME;
    case r'LAST_VISIT':
      return Enum_StreetSortField.LAST_VISIT;
    case r'LAST_VISIT_USER_NAME':
      return Enum_StreetSortField.LAST_VISIT_USER_NAME;
    default:
      return Enum_StreetSortField.$unknown;
  }
}

enum Enum_StoreSortField {
  ID,
  NAME,
  ADMIN_FAMILY_ID,
  COLOR,
  PHOTO_UPDATED_AT,
  BLURHASH,
  USER_CAN_EDIT,
  WITHIN_POLYGON,
  ADDRESS_AREA_NAME,
  ADDRESS_STREET_NAME,
  ADDRESS_DISTRICT_NAME,
  ADDRESS_FULL_ADDRESS_TEXT,
  ADMIN_FAMILY_NAME,
  LAST_EDIT,
  LAST_EDIT_USER_NAME,
  $unknown;

  factory Enum_StoreSortField.fromJson(String value) =>
      fromJson_Enum_StoreSortField(value);

  String toJson() => toJson_Enum_StoreSortField(this);
}

String toJson_Enum_StoreSortField(Enum_StoreSortField e) {
  switch (e) {
    case Enum_StoreSortField.ID:
      return r'ID';
    case Enum_StoreSortField.NAME:
      return r'NAME';
    case Enum_StoreSortField.ADMIN_FAMILY_ID:
      return r'ADMIN_FAMILY_ID';
    case Enum_StoreSortField.COLOR:
      return r'COLOR';
    case Enum_StoreSortField.PHOTO_UPDATED_AT:
      return r'PHOTO_UPDATED_AT';
    case Enum_StoreSortField.BLURHASH:
      return r'BLURHASH';
    case Enum_StoreSortField.USER_CAN_EDIT:
      return r'USER_CAN_EDIT';
    case Enum_StoreSortField.WITHIN_POLYGON:
      return r'WITHIN_POLYGON';
    case Enum_StoreSortField.ADDRESS_AREA_NAME:
      return r'ADDRESS_AREA_NAME';
    case Enum_StoreSortField.ADDRESS_STREET_NAME:
      return r'ADDRESS_STREET_NAME';
    case Enum_StoreSortField.ADDRESS_DISTRICT_NAME:
      return r'ADDRESS_DISTRICT_NAME';
    case Enum_StoreSortField.ADDRESS_FULL_ADDRESS_TEXT:
      return r'ADDRESS_FULL_ADDRESS_TEXT';
    case Enum_StoreSortField.ADMIN_FAMILY_NAME:
      return r'ADMIN_FAMILY_NAME';
    case Enum_StoreSortField.LAST_EDIT:
      return r'LAST_EDIT';
    case Enum_StoreSortField.LAST_EDIT_USER_NAME:
      return r'LAST_EDIT_USER_NAME';
    case Enum_StoreSortField.$unknown:
      return r'$unknown';
  }
}

Enum_StoreSortField fromJson_Enum_StoreSortField(String value) {
  switch (value) {
    case r'ID':
      return Enum_StoreSortField.ID;
    case r'NAME':
      return Enum_StoreSortField.NAME;
    case r'ADMIN_FAMILY_ID':
      return Enum_StoreSortField.ADMIN_FAMILY_ID;
    case r'COLOR':
      return Enum_StoreSortField.COLOR;
    case r'PHOTO_UPDATED_AT':
      return Enum_StoreSortField.PHOTO_UPDATED_AT;
    case r'BLURHASH':
      return Enum_StoreSortField.BLURHASH;
    case r'USER_CAN_EDIT':
      return Enum_StoreSortField.USER_CAN_EDIT;
    case r'WITHIN_POLYGON':
      return Enum_StoreSortField.WITHIN_POLYGON;
    case r'ADDRESS_AREA_NAME':
      return Enum_StoreSortField.ADDRESS_AREA_NAME;
    case r'ADDRESS_STREET_NAME':
      return Enum_StoreSortField.ADDRESS_STREET_NAME;
    case r'ADDRESS_DISTRICT_NAME':
      return Enum_StoreSortField.ADDRESS_DISTRICT_NAME;
    case r'ADDRESS_FULL_ADDRESS_TEXT':
      return Enum_StoreSortField.ADDRESS_FULL_ADDRESS_TEXT;
    case r'ADMIN_FAMILY_NAME':
      return Enum_StoreSortField.ADMIN_FAMILY_NAME;
    case r'LAST_EDIT':
      return Enum_StoreSortField.LAST_EDIT;
    case r'LAST_EDIT_USER_NAME':
      return Enum_StoreSortField.LAST_EDIT_USER_NAME;
    default:
      return Enum_StoreSortField.$unknown;
  }
}

enum Enum_DistrictSortField {
  ID,
  NAME,
  $unknown;

  factory Enum_DistrictSortField.fromJson(String value) =>
      fromJson_Enum_DistrictSortField(value);

  String toJson() => toJson_Enum_DistrictSortField(this);
}

String toJson_Enum_DistrictSortField(Enum_DistrictSortField e) {
  switch (e) {
    case Enum_DistrictSortField.ID:
      return r'ID';
    case Enum_DistrictSortField.NAME:
      return r'NAME';
    case Enum_DistrictSortField.$unknown:
      return r'$unknown';
  }
}

Enum_DistrictSortField fromJson_Enum_DistrictSortField(String value) {
  switch (value) {
    case r'ID':
      return Enum_DistrictSortField.ID;
    case r'NAME':
      return Enum_DistrictSortField.NAME;
    default:
      return Enum_DistrictSortField.$unknown;
  }
}

enum Enum_AreaStreetSortField {
  AREA_ID,
  STREET_ID,
  $unknown;

  factory Enum_AreaStreetSortField.fromJson(String value) =>
      fromJson_Enum_AreaStreetSortField(value);

  String toJson() => toJson_Enum_AreaStreetSortField(this);
}

String toJson_Enum_AreaStreetSortField(Enum_AreaStreetSortField e) {
  switch (e) {
    case Enum_AreaStreetSortField.AREA_ID:
      return r'AREA_ID';
    case Enum_AreaStreetSortField.STREET_ID:
      return r'STREET_ID';
    case Enum_AreaStreetSortField.$unknown:
      return r'$unknown';
  }
}

Enum_AreaStreetSortField fromJson_Enum_AreaStreetSortField(String value) {
  switch (value) {
    case r'AREA_ID':
      return Enum_AreaStreetSortField.AREA_ID;
    case r'STREET_ID':
      return Enum_AreaStreetSortField.STREET_ID;
    default:
      return Enum_AreaStreetSortField.$unknown;
  }
}

enum Enum_AreaSortField {
  ID,
  NAME,
  BOUNDS,
  COLOR,
  PHOTO_UPDATED_AT,
  BLURHASH,
  USER_CAN_EDIT,
  WITHIN_POLYGON,
  CONTAINS_POINT,
  LAST_EDIT,
  LAST_EDIT_USER_NAME,
  LAST_VISIT,
  LAST_VISIT_USER_NAME,
  $unknown;

  factory Enum_AreaSortField.fromJson(String value) =>
      fromJson_Enum_AreaSortField(value);

  String toJson() => toJson_Enum_AreaSortField(this);
}

String toJson_Enum_AreaSortField(Enum_AreaSortField e) {
  switch (e) {
    case Enum_AreaSortField.ID:
      return r'ID';
    case Enum_AreaSortField.NAME:
      return r'NAME';
    case Enum_AreaSortField.BOUNDS:
      return r'BOUNDS';
    case Enum_AreaSortField.COLOR:
      return r'COLOR';
    case Enum_AreaSortField.PHOTO_UPDATED_AT:
      return r'PHOTO_UPDATED_AT';
    case Enum_AreaSortField.BLURHASH:
      return r'BLURHASH';
    case Enum_AreaSortField.USER_CAN_EDIT:
      return r'USER_CAN_EDIT';
    case Enum_AreaSortField.WITHIN_POLYGON:
      return r'WITHIN_POLYGON';
    case Enum_AreaSortField.CONTAINS_POINT:
      return r'CONTAINS_POINT';
    case Enum_AreaSortField.LAST_EDIT:
      return r'LAST_EDIT';
    case Enum_AreaSortField.LAST_EDIT_USER_NAME:
      return r'LAST_EDIT_USER_NAME';
    case Enum_AreaSortField.LAST_VISIT:
      return r'LAST_VISIT';
    case Enum_AreaSortField.LAST_VISIT_USER_NAME:
      return r'LAST_VISIT_USER_NAME';
    case Enum_AreaSortField.$unknown:
      return r'$unknown';
  }
}

Enum_AreaSortField fromJson_Enum_AreaSortField(String value) {
  switch (value) {
    case r'ID':
      return Enum_AreaSortField.ID;
    case r'NAME':
      return Enum_AreaSortField.NAME;
    case r'BOUNDS':
      return Enum_AreaSortField.BOUNDS;
    case r'COLOR':
      return Enum_AreaSortField.COLOR;
    case r'PHOTO_UPDATED_AT':
      return Enum_AreaSortField.PHOTO_UPDATED_AT;
    case r'BLURHASH':
      return Enum_AreaSortField.BLURHASH;
    case r'USER_CAN_EDIT':
      return Enum_AreaSortField.USER_CAN_EDIT;
    case r'WITHIN_POLYGON':
      return Enum_AreaSortField.WITHIN_POLYGON;
    case r'CONTAINS_POINT':
      return Enum_AreaSortField.CONTAINS_POINT;
    case r'LAST_EDIT':
      return Enum_AreaSortField.LAST_EDIT;
    case r'LAST_EDIT_USER_NAME':
      return Enum_AreaSortField.LAST_EDIT_USER_NAME;
    case r'LAST_VISIT':
      return Enum_AreaSortField.LAST_VISIT;
    case r'LAST_VISIT_USER_NAME':
      return Enum_AreaSortField.LAST_VISIT_USER_NAME;
    default:
      return Enum_AreaSortField.$unknown;
  }
}

enum Enum_AddressSortField {
  ID,
  COUNTRY_ISO_CODE,
  DISTRICT_ID,
  AREA_ID,
  STREET_ID,
  SUBSTREET_NAME,
  GEOLOCATION,
  STOREY_NUMBER,
  HOUSE_NUMBER,
  APARTMENT_NUMBER,
  SPECIAL_LANDMARK,
  FAMILY_ID,
  STORE_ID,
  HOUSE_CODE,
  FULL_ADDRESS_TEXT,
  WITHIN_POLYGON,
  $unknown;

  factory Enum_AddressSortField.fromJson(String value) =>
      fromJson_Enum_AddressSortField(value);

  String toJson() => toJson_Enum_AddressSortField(this);
}

String toJson_Enum_AddressSortField(Enum_AddressSortField e) {
  switch (e) {
    case Enum_AddressSortField.ID:
      return r'ID';
    case Enum_AddressSortField.COUNTRY_ISO_CODE:
      return r'COUNTRY_ISO_CODE';
    case Enum_AddressSortField.DISTRICT_ID:
      return r'DISTRICT_ID';
    case Enum_AddressSortField.AREA_ID:
      return r'AREA_ID';
    case Enum_AddressSortField.STREET_ID:
      return r'STREET_ID';
    case Enum_AddressSortField.SUBSTREET_NAME:
      return r'SUBSTREET_NAME';
    case Enum_AddressSortField.GEOLOCATION:
      return r'GEOLOCATION';
    case Enum_AddressSortField.STOREY_NUMBER:
      return r'STOREY_NUMBER';
    case Enum_AddressSortField.HOUSE_NUMBER:
      return r'HOUSE_NUMBER';
    case Enum_AddressSortField.APARTMENT_NUMBER:
      return r'APARTMENT_NUMBER';
    case Enum_AddressSortField.SPECIAL_LANDMARK:
      return r'SPECIAL_LANDMARK';
    case Enum_AddressSortField.FAMILY_ID:
      return r'FAMILY_ID';
    case Enum_AddressSortField.STORE_ID:
      return r'STORE_ID';
    case Enum_AddressSortField.HOUSE_CODE:
      return r'HOUSE_CODE';
    case Enum_AddressSortField.FULL_ADDRESS_TEXT:
      return r'FULL_ADDRESS_TEXT';
    case Enum_AddressSortField.WITHIN_POLYGON:
      return r'WITHIN_POLYGON';
    case Enum_AddressSortField.$unknown:
      return r'$unknown';
  }
}

Enum_AddressSortField fromJson_Enum_AddressSortField(String value) {
  switch (value) {
    case r'ID':
      return Enum_AddressSortField.ID;
    case r'COUNTRY_ISO_CODE':
      return Enum_AddressSortField.COUNTRY_ISO_CODE;
    case r'DISTRICT_ID':
      return Enum_AddressSortField.DISTRICT_ID;
    case r'AREA_ID':
      return Enum_AddressSortField.AREA_ID;
    case r'STREET_ID':
      return Enum_AddressSortField.STREET_ID;
    case r'SUBSTREET_NAME':
      return Enum_AddressSortField.SUBSTREET_NAME;
    case r'GEOLOCATION':
      return Enum_AddressSortField.GEOLOCATION;
    case r'STOREY_NUMBER':
      return Enum_AddressSortField.STOREY_NUMBER;
    case r'HOUSE_NUMBER':
      return Enum_AddressSortField.HOUSE_NUMBER;
    case r'APARTMENT_NUMBER':
      return Enum_AddressSortField.APARTMENT_NUMBER;
    case r'SPECIAL_LANDMARK':
      return Enum_AddressSortField.SPECIAL_LANDMARK;
    case r'FAMILY_ID':
      return Enum_AddressSortField.FAMILY_ID;
    case r'STORE_ID':
      return Enum_AddressSortField.STORE_ID;
    case r'HOUSE_CODE':
      return Enum_AddressSortField.HOUSE_CODE;
    case r'FULL_ADDRESS_TEXT':
      return Enum_AddressSortField.FULL_ADDRESS_TEXT;
    case r'WITHIN_POLYGON':
      return Enum_AddressSortField.WITHIN_POLYGON;
    default:
      return Enum_AddressSortField.$unknown;
  }
}

enum Enum_RosterEntrySortField {
  MEETING_ID,
  PERSON_ID,
  AS_SERVANT,
  NAME,
  GENDER,
  STUDY_YEAR_ID,
  STUDY_YEAR_NAME,
  COLOR,
  PHOTO_UPDATED_AT,
  BLURHASH,
  $unknown;

  factory Enum_RosterEntrySortField.fromJson(String value) =>
      fromJson_Enum_RosterEntrySortField(value);

  String toJson() => toJson_Enum_RosterEntrySortField(this);
}

String toJson_Enum_RosterEntrySortField(Enum_RosterEntrySortField e) {
  switch (e) {
    case Enum_RosterEntrySortField.MEETING_ID:
      return r'MEETING_ID';
    case Enum_RosterEntrySortField.PERSON_ID:
      return r'PERSON_ID';
    case Enum_RosterEntrySortField.AS_SERVANT:
      return r'AS_SERVANT';
    case Enum_RosterEntrySortField.NAME:
      return r'NAME';
    case Enum_RosterEntrySortField.GENDER:
      return r'GENDER';
    case Enum_RosterEntrySortField.STUDY_YEAR_ID:
      return r'STUDY_YEAR_ID';
    case Enum_RosterEntrySortField.STUDY_YEAR_NAME:
      return r'STUDY_YEAR_NAME';
    case Enum_RosterEntrySortField.COLOR:
      return r'COLOR';
    case Enum_RosterEntrySortField.PHOTO_UPDATED_AT:
      return r'PHOTO_UPDATED_AT';
    case Enum_RosterEntrySortField.BLURHASH:
      return r'BLURHASH';
    case Enum_RosterEntrySortField.$unknown:
      return r'$unknown';
  }
}

Enum_RosterEntrySortField fromJson_Enum_RosterEntrySortField(String value) {
  switch (value) {
    case r'MEETING_ID':
      return Enum_RosterEntrySortField.MEETING_ID;
    case r'PERSON_ID':
      return Enum_RosterEntrySortField.PERSON_ID;
    case r'AS_SERVANT':
      return Enum_RosterEntrySortField.AS_SERVANT;
    case r'NAME':
      return Enum_RosterEntrySortField.NAME;
    case r'GENDER':
      return Enum_RosterEntrySortField.GENDER;
    case r'STUDY_YEAR_ID':
      return Enum_RosterEntrySortField.STUDY_YEAR_ID;
    case r'STUDY_YEAR_NAME':
      return Enum_RosterEntrySortField.STUDY_YEAR_NAME;
    case r'COLOR':
      return Enum_RosterEntrySortField.COLOR;
    case r'PHOTO_UPDATED_AT':
      return Enum_RosterEntrySortField.PHOTO_UPDATED_AT;
    case r'BLURHASH':
      return Enum_RosterEntrySortField.BLURHASH;
    default:
      return Enum_RosterEntrySortField.$unknown;
  }
}

enum Enum_MeetingDaySortField {
  MEETING_ID,
  DAY,
  STUDY_YEAR_ID,
  GENDER,
  PERSONS_COUNT,
  SERVANTS_COUNT,
  TOTAL_COUNT,
  $unknown;

  factory Enum_MeetingDaySortField.fromJson(String value) =>
      fromJson_Enum_MeetingDaySortField(value);

  String toJson() => toJson_Enum_MeetingDaySortField(this);
}

String toJson_Enum_MeetingDaySortField(Enum_MeetingDaySortField e) {
  switch (e) {
    case Enum_MeetingDaySortField.MEETING_ID:
      return r'MEETING_ID';
    case Enum_MeetingDaySortField.DAY:
      return r'DAY';
    case Enum_MeetingDaySortField.STUDY_YEAR_ID:
      return r'STUDY_YEAR_ID';
    case Enum_MeetingDaySortField.GENDER:
      return r'GENDER';
    case Enum_MeetingDaySortField.PERSONS_COUNT:
      return r'PERSONS_COUNT';
    case Enum_MeetingDaySortField.SERVANTS_COUNT:
      return r'SERVANTS_COUNT';
    case Enum_MeetingDaySortField.TOTAL_COUNT:
      return r'TOTAL_COUNT';
    case Enum_MeetingDaySortField.$unknown:
      return r'$unknown';
  }
}

Enum_MeetingDaySortField fromJson_Enum_MeetingDaySortField(String value) {
  switch (value) {
    case r'MEETING_ID':
      return Enum_MeetingDaySortField.MEETING_ID;
    case r'DAY':
      return Enum_MeetingDaySortField.DAY;
    case r'STUDY_YEAR_ID':
      return Enum_MeetingDaySortField.STUDY_YEAR_ID;
    case r'GENDER':
      return Enum_MeetingDaySortField.GENDER;
    case r'PERSONS_COUNT':
      return Enum_MeetingDaySortField.PERSONS_COUNT;
    case r'SERVANTS_COUNT':
      return Enum_MeetingDaySortField.SERVANTS_COUNT;
    case r'TOTAL_COUNT':
      return Enum_MeetingDaySortField.TOTAL_COUNT;
    default:
      return Enum_MeetingDaySortField.$unknown;
  }
}

enum Enum_MeetingSortField {
  ID,
  NAME,
  SERVICE_ID,
  SERVICE_STUDY_YEAR,
  SERVICE_GENDER,
  GROUP_ID,
  AUDIENCE,
  IS_ARCHIVED,
  COLOR,
  SHOW_KODAS_CHECKBOX,
  SERVICE_NAME,
  GROUP_NAME,
  STUDY_YEAR_ORDER,
  $unknown;

  factory Enum_MeetingSortField.fromJson(String value) =>
      fromJson_Enum_MeetingSortField(value);

  String toJson() => toJson_Enum_MeetingSortField(this);
}

String toJson_Enum_MeetingSortField(Enum_MeetingSortField e) {
  switch (e) {
    case Enum_MeetingSortField.ID:
      return r'ID';
    case Enum_MeetingSortField.NAME:
      return r'NAME';
    case Enum_MeetingSortField.SERVICE_ID:
      return r'SERVICE_ID';
    case Enum_MeetingSortField.SERVICE_STUDY_YEAR:
      return r'SERVICE_STUDY_YEAR';
    case Enum_MeetingSortField.SERVICE_GENDER:
      return r'SERVICE_GENDER';
    case Enum_MeetingSortField.GROUP_ID:
      return r'GROUP_ID';
    case Enum_MeetingSortField.AUDIENCE:
      return r'AUDIENCE';
    case Enum_MeetingSortField.IS_ARCHIVED:
      return r'IS_ARCHIVED';
    case Enum_MeetingSortField.COLOR:
      return r'COLOR';
    case Enum_MeetingSortField.SHOW_KODAS_CHECKBOX:
      return r'SHOW_KODAS_CHECKBOX';
    case Enum_MeetingSortField.SERVICE_NAME:
      return r'SERVICE_NAME';
    case Enum_MeetingSortField.GROUP_NAME:
      return r'GROUP_NAME';
    case Enum_MeetingSortField.STUDY_YEAR_ORDER:
      return r'STUDY_YEAR_ORDER';
    case Enum_MeetingSortField.$unknown:
      return r'$unknown';
  }
}

Enum_MeetingSortField fromJson_Enum_MeetingSortField(String value) {
  switch (value) {
    case r'ID':
      return Enum_MeetingSortField.ID;
    case r'NAME':
      return Enum_MeetingSortField.NAME;
    case r'SERVICE_ID':
      return Enum_MeetingSortField.SERVICE_ID;
    case r'SERVICE_STUDY_YEAR':
      return Enum_MeetingSortField.SERVICE_STUDY_YEAR;
    case r'SERVICE_GENDER':
      return Enum_MeetingSortField.SERVICE_GENDER;
    case r'GROUP_ID':
      return Enum_MeetingSortField.GROUP_ID;
    case r'AUDIENCE':
      return Enum_MeetingSortField.AUDIENCE;
    case r'IS_ARCHIVED':
      return Enum_MeetingSortField.IS_ARCHIVED;
    case r'COLOR':
      return Enum_MeetingSortField.COLOR;
    case r'SHOW_KODAS_CHECKBOX':
      return Enum_MeetingSortField.SHOW_KODAS_CHECKBOX;
    case r'SERVICE_NAME':
      return Enum_MeetingSortField.SERVICE_NAME;
    case r'GROUP_NAME':
      return Enum_MeetingSortField.GROUP_NAME;
    case r'STUDY_YEAR_ORDER':
      return Enum_MeetingSortField.STUDY_YEAR_ORDER;
    default:
      return Enum_MeetingSortField.$unknown;
  }
}

enum Enum_AttendanceRecordSortField {
  ID,
  MEETING_ID,
  PERSON_ID,
  DATETIME,
  AS_SERVANT,
  RECORDED_BY,
  DAY,
  TIME,
  MEETING_NAME,
  PERSON_NAME,
  RECORDED_BY_USER_NAME,
  $unknown;

  factory Enum_AttendanceRecordSortField.fromJson(String value) =>
      fromJson_Enum_AttendanceRecordSortField(value);

  String toJson() => toJson_Enum_AttendanceRecordSortField(this);
}

String toJson_Enum_AttendanceRecordSortField(Enum_AttendanceRecordSortField e) {
  switch (e) {
    case Enum_AttendanceRecordSortField.ID:
      return r'ID';
    case Enum_AttendanceRecordSortField.MEETING_ID:
      return r'MEETING_ID';
    case Enum_AttendanceRecordSortField.PERSON_ID:
      return r'PERSON_ID';
    case Enum_AttendanceRecordSortField.DATETIME:
      return r'DATETIME';
    case Enum_AttendanceRecordSortField.AS_SERVANT:
      return r'AS_SERVANT';
    case Enum_AttendanceRecordSortField.RECORDED_BY:
      return r'RECORDED_BY';
    case Enum_AttendanceRecordSortField.DAY:
      return r'DAY';
    case Enum_AttendanceRecordSortField.TIME:
      return r'TIME';
    case Enum_AttendanceRecordSortField.MEETING_NAME:
      return r'MEETING_NAME';
    case Enum_AttendanceRecordSortField.PERSON_NAME:
      return r'PERSON_NAME';
    case Enum_AttendanceRecordSortField.RECORDED_BY_USER_NAME:
      return r'RECORDED_BY_USER_NAME';
    case Enum_AttendanceRecordSortField.$unknown:
      return r'$unknown';
  }
}

Enum_AttendanceRecordSortField fromJson_Enum_AttendanceRecordSortField(
  String value,
) {
  switch (value) {
    case r'ID':
      return Enum_AttendanceRecordSortField.ID;
    case r'MEETING_ID':
      return Enum_AttendanceRecordSortField.MEETING_ID;
    case r'PERSON_ID':
      return Enum_AttendanceRecordSortField.PERSON_ID;
    case r'DATETIME':
      return Enum_AttendanceRecordSortField.DATETIME;
    case r'AS_SERVANT':
      return Enum_AttendanceRecordSortField.AS_SERVANT;
    case r'RECORDED_BY':
      return Enum_AttendanceRecordSortField.RECORDED_BY;
    case r'DAY':
      return Enum_AttendanceRecordSortField.DAY;
    case r'TIME':
      return Enum_AttendanceRecordSortField.TIME;
    case r'MEETING_NAME':
      return Enum_AttendanceRecordSortField.MEETING_NAME;
    case r'PERSON_NAME':
      return Enum_AttendanceRecordSortField.PERSON_NAME;
    case r'RECORDED_BY_USER_NAME':
      return Enum_AttendanceRecordSortField.RECORDED_BY_USER_NAME;
    default:
      return Enum_AttendanceRecordSortField.$unknown;
  }
}

enum Enum_VisitSortField {
  VISIT_ID,
  TABLE,
  RECORD_ID,
  TIME,
  RECORDED_BY,
  IS_FATHER_VISIT,
  $unknown;

  factory Enum_VisitSortField.fromJson(String value) =>
      fromJson_Enum_VisitSortField(value);

  String toJson() => toJson_Enum_VisitSortField(this);
}

String toJson_Enum_VisitSortField(Enum_VisitSortField e) {
  switch (e) {
    case Enum_VisitSortField.VISIT_ID:
      return r'VISIT_ID';
    case Enum_VisitSortField.TABLE:
      return r'TABLE';
    case Enum_VisitSortField.RECORD_ID:
      return r'RECORD_ID';
    case Enum_VisitSortField.TIME:
      return r'TIME';
    case Enum_VisitSortField.RECORDED_BY:
      return r'RECORDED_BY';
    case Enum_VisitSortField.IS_FATHER_VISIT:
      return r'IS_FATHER_VISIT';
    case Enum_VisitSortField.$unknown:
      return r'$unknown';
  }
}

Enum_VisitSortField fromJson_Enum_VisitSortField(String value) {
  switch (value) {
    case r'VISIT_ID':
      return Enum_VisitSortField.VISIT_ID;
    case r'TABLE':
      return Enum_VisitSortField.TABLE;
    case r'RECORD_ID':
      return Enum_VisitSortField.RECORD_ID;
    case r'TIME':
      return Enum_VisitSortField.TIME;
    case r'RECORDED_BY':
      return Enum_VisitSortField.RECORDED_BY;
    case r'IS_FATHER_VISIT':
      return Enum_VisitSortField.IS_FATHER_VISIT;
    default:
      return Enum_VisitSortField.$unknown;
  }
}

enum Enum_LatestVisitSortField {
  TABLE,
  RECORD_ID,
  TIME,
  RECORDED_BY,
  VISIT_ID,
  $unknown;

  factory Enum_LatestVisitSortField.fromJson(String value) =>
      fromJson_Enum_LatestVisitSortField(value);

  String toJson() => toJson_Enum_LatestVisitSortField(this);
}

String toJson_Enum_LatestVisitSortField(Enum_LatestVisitSortField e) {
  switch (e) {
    case Enum_LatestVisitSortField.TABLE:
      return r'TABLE';
    case Enum_LatestVisitSortField.RECORD_ID:
      return r'RECORD_ID';
    case Enum_LatestVisitSortField.TIME:
      return r'TIME';
    case Enum_LatestVisitSortField.RECORDED_BY:
      return r'RECORDED_BY';
    case Enum_LatestVisitSortField.VISIT_ID:
      return r'VISIT_ID';
    case Enum_LatestVisitSortField.$unknown:
      return r'$unknown';
  }
}

Enum_LatestVisitSortField fromJson_Enum_LatestVisitSortField(String value) {
  switch (value) {
    case r'TABLE':
      return Enum_LatestVisitSortField.TABLE;
    case r'RECORD_ID':
      return Enum_LatestVisitSortField.RECORD_ID;
    case r'TIME':
      return Enum_LatestVisitSortField.TIME;
    case r'RECORDED_BY':
      return Enum_LatestVisitSortField.RECORDED_BY;
    case r'VISIT_ID':
      return Enum_LatestVisitSortField.VISIT_ID;
    default:
      return Enum_LatestVisitSortField.$unknown;
  }
}

enum Enum_LatestKodasSortField {
  PERSON_ID,
  TIME,
  RECORDED_BY,
  $unknown;

  factory Enum_LatestKodasSortField.fromJson(String value) =>
      fromJson_Enum_LatestKodasSortField(value);

  String toJson() => toJson_Enum_LatestKodasSortField(this);
}

String toJson_Enum_LatestKodasSortField(Enum_LatestKodasSortField e) {
  switch (e) {
    case Enum_LatestKodasSortField.PERSON_ID:
      return r'PERSON_ID';
    case Enum_LatestKodasSortField.TIME:
      return r'TIME';
    case Enum_LatestKodasSortField.RECORDED_BY:
      return r'RECORDED_BY';
    case Enum_LatestKodasSortField.$unknown:
      return r'$unknown';
  }
}

Enum_LatestKodasSortField fromJson_Enum_LatestKodasSortField(String value) {
  switch (value) {
    case r'PERSON_ID':
      return Enum_LatestKodasSortField.PERSON_ID;
    case r'TIME':
      return Enum_LatestKodasSortField.TIME;
    case r'RECORDED_BY':
      return Enum_LatestKodasSortField.RECORDED_BY;
    default:
      return Enum_LatestKodasSortField.$unknown;
  }
}

enum Enum_LatestFatherVisitSortField {
  TABLE,
  RECORD_ID,
  TIME,
  RECORDED_BY,
  VISIT_ID,
  $unknown;

  factory Enum_LatestFatherVisitSortField.fromJson(String value) =>
      fromJson_Enum_LatestFatherVisitSortField(value);

  String toJson() => toJson_Enum_LatestFatherVisitSortField(this);
}

String toJson_Enum_LatestFatherVisitSortField(
  Enum_LatestFatherVisitSortField e,
) {
  switch (e) {
    case Enum_LatestFatherVisitSortField.TABLE:
      return r'TABLE';
    case Enum_LatestFatherVisitSortField.RECORD_ID:
      return r'RECORD_ID';
    case Enum_LatestFatherVisitSortField.TIME:
      return r'TIME';
    case Enum_LatestFatherVisitSortField.RECORDED_BY:
      return r'RECORDED_BY';
    case Enum_LatestFatherVisitSortField.VISIT_ID:
      return r'VISIT_ID';
    case Enum_LatestFatherVisitSortField.$unknown:
      return r'$unknown';
  }
}

Enum_LatestFatherVisitSortField fromJson_Enum_LatestFatherVisitSortField(
  String value,
) {
  switch (value) {
    case r'TABLE':
      return Enum_LatestFatherVisitSortField.TABLE;
    case r'RECORD_ID':
      return Enum_LatestFatherVisitSortField.RECORD_ID;
    case r'TIME':
      return Enum_LatestFatherVisitSortField.TIME;
    case r'RECORDED_BY':
      return Enum_LatestFatherVisitSortField.RECORDED_BY;
    case r'VISIT_ID':
      return Enum_LatestFatherVisitSortField.VISIT_ID;
    default:
      return Enum_LatestFatherVisitSortField.$unknown;
  }
}

enum Enum_LatestEditSortField {
  TABLE,
  RECORD_ID,
  TIME,
  RECORDED_BY,
  $unknown;

  factory Enum_LatestEditSortField.fromJson(String value) =>
      fromJson_Enum_LatestEditSortField(value);

  String toJson() => toJson_Enum_LatestEditSortField(this);
}

String toJson_Enum_LatestEditSortField(Enum_LatestEditSortField e) {
  switch (e) {
    case Enum_LatestEditSortField.TABLE:
      return r'TABLE';
    case Enum_LatestEditSortField.RECORD_ID:
      return r'RECORD_ID';
    case Enum_LatestEditSortField.TIME:
      return r'TIME';
    case Enum_LatestEditSortField.RECORDED_BY:
      return r'RECORDED_BY';
    case Enum_LatestEditSortField.$unknown:
      return r'$unknown';
  }
}

Enum_LatestEditSortField fromJson_Enum_LatestEditSortField(String value) {
  switch (value) {
    case r'TABLE':
      return Enum_LatestEditSortField.TABLE;
    case r'RECORD_ID':
      return Enum_LatestEditSortField.RECORD_ID;
    case r'TIME':
      return Enum_LatestEditSortField.TIME;
    case r'RECORDED_BY':
      return Enum_LatestEditSortField.RECORDED_BY;
    default:
      return Enum_LatestEditSortField.$unknown;
  }
}

enum Enum_LatestConfessionSortField {
  PERSON_ID,
  TIME,
  RECORDED_BY,
  $unknown;

  factory Enum_LatestConfessionSortField.fromJson(String value) =>
      fromJson_Enum_LatestConfessionSortField(value);

  String toJson() => toJson_Enum_LatestConfessionSortField(this);
}

String toJson_Enum_LatestConfessionSortField(Enum_LatestConfessionSortField e) {
  switch (e) {
    case Enum_LatestConfessionSortField.PERSON_ID:
      return r'PERSON_ID';
    case Enum_LatestConfessionSortField.TIME:
      return r'TIME';
    case Enum_LatestConfessionSortField.RECORDED_BY:
      return r'RECORDED_BY';
    case Enum_LatestConfessionSortField.$unknown:
      return r'$unknown';
  }
}

Enum_LatestConfessionSortField fromJson_Enum_LatestConfessionSortField(
  String value,
) {
  switch (value) {
    case r'PERSON_ID':
      return Enum_LatestConfessionSortField.PERSON_ID;
    case r'TIME':
      return Enum_LatestConfessionSortField.TIME;
    case r'RECORDED_BY':
      return Enum_LatestConfessionSortField.RECORDED_BY;
    default:
      return Enum_LatestConfessionSortField.$unknown;
  }
}

enum Enum_LatestCallSortField {
  PERSON_ID,
  TIME,
  RECORDED_BY,
  $unknown;

  factory Enum_LatestCallSortField.fromJson(String value) =>
      fromJson_Enum_LatestCallSortField(value);

  String toJson() => toJson_Enum_LatestCallSortField(this);
}

String toJson_Enum_LatestCallSortField(Enum_LatestCallSortField e) {
  switch (e) {
    case Enum_LatestCallSortField.PERSON_ID:
      return r'PERSON_ID';
    case Enum_LatestCallSortField.TIME:
      return r'TIME';
    case Enum_LatestCallSortField.RECORDED_BY:
      return r'RECORDED_BY';
    case Enum_LatestCallSortField.$unknown:
      return r'$unknown';
  }
}

Enum_LatestCallSortField fromJson_Enum_LatestCallSortField(String value) {
  switch (value) {
    case r'PERSON_ID':
      return Enum_LatestCallSortField.PERSON_ID;
    case r'TIME':
      return Enum_LatestCallSortField.TIME;
    case r'RECORDED_BY':
      return Enum_LatestCallSortField.RECORDED_BY;
    default:
      return Enum_LatestCallSortField.$unknown;
  }
}

enum Enum_KodasSortField {
  ID,
  DAY_ID,
  PERSON_ID,
  RECORDED_BY,
  TIME,
  $unknown;

  factory Enum_KodasSortField.fromJson(String value) =>
      fromJson_Enum_KodasSortField(value);

  String toJson() => toJson_Enum_KodasSortField(this);
}
