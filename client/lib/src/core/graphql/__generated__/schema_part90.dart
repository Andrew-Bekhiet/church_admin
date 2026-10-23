// Part 90 of the schema
part of "schema.graphql.dart";

String toJson_Enum_KodasSortField(Enum_KodasSortField e) {
  switch (e) {
    case Enum_KodasSortField.ID:
      return r'ID';
    case Enum_KodasSortField.DAY_ID:
      return r'DAY_ID';
    case Enum_KodasSortField.PERSON_ID:
      return r'PERSON_ID';
    case Enum_KodasSortField.RECORDED_BY:
      return r'RECORDED_BY';
    case Enum_KodasSortField.TIME:
      return r'TIME';
    case Enum_KodasSortField.$unknown:
      return r'$unknown';
  }
}

Enum_KodasSortField fromJson_Enum_KodasSortField(String value) {
  switch (value) {
    case r'ID':
      return Enum_KodasSortField.ID;
    case r'DAY_ID':
      return Enum_KodasSortField.DAY_ID;
    case r'PERSON_ID':
      return Enum_KodasSortField.PERSON_ID;
    case r'RECORDED_BY':
      return Enum_KodasSortField.RECORDED_BY;
    case r'TIME':
      return Enum_KodasSortField.TIME;
    default:
      return Enum_KodasSortField.$unknown;
  }
}

enum Enum_EditSortField {
  TABLE,
  RECORD_ID,
  TIME,
  RECORDED_BY,
  $unknown;

  factory Enum_EditSortField.fromJson(String value) =>
      fromJson_Enum_EditSortField(value);

  String toJson() => toJson_Enum_EditSortField(this);
}

String toJson_Enum_EditSortField(Enum_EditSortField e) {
  switch (e) {
    case Enum_EditSortField.TABLE:
      return r'TABLE';
    case Enum_EditSortField.RECORD_ID:
      return r'RECORD_ID';
    case Enum_EditSortField.TIME:
      return r'TIME';
    case Enum_EditSortField.RECORDED_BY:
      return r'RECORDED_BY';
    case Enum_EditSortField.$unknown:
      return r'$unknown';
  }
}

Enum_EditSortField fromJson_Enum_EditSortField(String value) {
  switch (value) {
    case r'TABLE':
      return Enum_EditSortField.TABLE;
    case r'RECORD_ID':
      return Enum_EditSortField.RECORD_ID;
    case r'TIME':
      return Enum_EditSortField.TIME;
    case r'RECORDED_BY':
      return Enum_EditSortField.RECORDED_BY;
    default:
      return Enum_EditSortField.$unknown;
  }
}

enum Enum_ConfessionSortField {
  ID,
  DAY_ID,
  PERSON_ID,
  RECORDED_BY,
  TIME,
  $unknown;

  factory Enum_ConfessionSortField.fromJson(String value) =>
      fromJson_Enum_ConfessionSortField(value);

  String toJson() => toJson_Enum_ConfessionSortField(this);
}

String toJson_Enum_ConfessionSortField(Enum_ConfessionSortField e) {
  switch (e) {
    case Enum_ConfessionSortField.ID:
      return r'ID';
    case Enum_ConfessionSortField.DAY_ID:
      return r'DAY_ID';
    case Enum_ConfessionSortField.PERSON_ID:
      return r'PERSON_ID';
    case Enum_ConfessionSortField.RECORDED_BY:
      return r'RECORDED_BY';
    case Enum_ConfessionSortField.TIME:
      return r'TIME';
    case Enum_ConfessionSortField.$unknown:
      return r'$unknown';
  }
}

Enum_ConfessionSortField fromJson_Enum_ConfessionSortField(String value) {
  switch (value) {
    case r'ID':
      return Enum_ConfessionSortField.ID;
    case r'DAY_ID':
      return Enum_ConfessionSortField.DAY_ID;
    case r'PERSON_ID':
      return Enum_ConfessionSortField.PERSON_ID;
    case r'RECORDED_BY':
      return Enum_ConfessionSortField.RECORDED_BY;
    case r'TIME':
      return Enum_ConfessionSortField.TIME;
    default:
      return Enum_ConfessionSortField.$unknown;
  }
}

enum Enum_CallSortField {
  TIME,
  PERSON_ID,
  RECORDED_BY,
  $unknown;

  factory Enum_CallSortField.fromJson(String value) =>
      fromJson_Enum_CallSortField(value);

  String toJson() => toJson_Enum_CallSortField(this);
}

String toJson_Enum_CallSortField(Enum_CallSortField e) {
  switch (e) {
    case Enum_CallSortField.TIME:
      return r'TIME';
    case Enum_CallSortField.PERSON_ID:
      return r'PERSON_ID';
    case Enum_CallSortField.RECORDED_BY:
      return r'RECORDED_BY';
    case Enum_CallSortField.$unknown:
      return r'$unknown';
  }
}

Enum_CallSortField fromJson_Enum_CallSortField(String value) {
  switch (value) {
    case r'TIME':
      return Enum_CallSortField.TIME;
    case r'PERSON_ID':
      return Enum_CallSortField.PERSON_ID;
    case r'RECORDED_BY':
      return Enum_CallSortField.RECORDED_BY;
    default:
      return Enum_CallSortField.$unknown;
  }
}

enum Enum_ActivityDaySortField {
  DAY,
  $unknown;

  factory Enum_ActivityDaySortField.fromJson(String value) =>
      fromJson_Enum_ActivityDaySortField(value);

  String toJson() => toJson_Enum_ActivityDaySortField(this);
}

String toJson_Enum_ActivityDaySortField(Enum_ActivityDaySortField e) {
  switch (e) {
    case Enum_ActivityDaySortField.DAY:
      return r'DAY';
    case Enum_ActivityDaySortField.$unknown:
      return r'$unknown';
  }
}

Enum_ActivityDaySortField fromJson_Enum_ActivityDaySortField(String value) {
  switch (value) {
    case r'DAY':
      return Enum_ActivityDaySortField.DAY;
    default:
      return Enum_ActivityDaySortField.$unknown;
  }
}

enum Enum_UserPermissionSortField {
  UID,
  PERMISSION,
  $unknown;

  factory Enum_UserPermissionSortField.fromJson(String value) =>
      fromJson_Enum_UserPermissionSortField(value);

  String toJson() => toJson_Enum_UserPermissionSortField(this);
}

String toJson_Enum_UserPermissionSortField(Enum_UserPermissionSortField e) {
  switch (e) {
    case Enum_UserPermissionSortField.UID:
      return r'UID';
    case Enum_UserPermissionSortField.PERMISSION:
      return r'PERMISSION';
    case Enum_UserPermissionSortField.$unknown:
      return r'$unknown';
  }
}

Enum_UserPermissionSortField fromJson_Enum_UserPermissionSortField(
  String value,
) {
  switch (value) {
    case r'UID':
      return Enum_UserPermissionSortField.UID;
    case r'PERMISSION':
      return Enum_UserPermissionSortField.PERMISSION;
    default:
      return Enum_UserPermissionSortField.$unknown;
  }
}

enum Enum_UserSortField {
  UID,
  NAME,
  EMAIL,
  PHOTO_UPDATED_AT,
  BLURHASH,
  AUTH_ID,
  CURRENT_USER_CAN_MANAGE_THIS_USER,
  LAST_EDIT,
  LAST_EDIT_USER_NAME,
  PERSON_NAME,
  $unknown;

  factory Enum_UserSortField.fromJson(String value) =>
      fromJson_Enum_UserSortField(value);

  String toJson() => toJson_Enum_UserSortField(this);
}

String toJson_Enum_UserSortField(Enum_UserSortField e) {
  switch (e) {
    case Enum_UserSortField.UID:
      return r'UID';
    case Enum_UserSortField.NAME:
      return r'NAME';
    case Enum_UserSortField.EMAIL:
      return r'EMAIL';
    case Enum_UserSortField.PHOTO_UPDATED_AT:
      return r'PHOTO_UPDATED_AT';
    case Enum_UserSortField.BLURHASH:
      return r'BLURHASH';
    case Enum_UserSortField.AUTH_ID:
      return r'AUTH_ID';
    case Enum_UserSortField.CURRENT_USER_CAN_MANAGE_THIS_USER:
      return r'CURRENT_USER_CAN_MANAGE_THIS_USER';
    case Enum_UserSortField.LAST_EDIT:
      return r'LAST_EDIT';
    case Enum_UserSortField.LAST_EDIT_USER_NAME:
      return r'LAST_EDIT_USER_NAME';
    case Enum_UserSortField.PERSON_NAME:
      return r'PERSON_NAME';
    case Enum_UserSortField.$unknown:
      return r'$unknown';
  }
}

Enum_UserSortField fromJson_Enum_UserSortField(String value) {
  switch (value) {
    case r'UID':
      return Enum_UserSortField.UID;
    case r'NAME':
      return Enum_UserSortField.NAME;
    case r'EMAIL':
      return Enum_UserSortField.EMAIL;
    case r'PHOTO_UPDATED_AT':
      return Enum_UserSortField.PHOTO_UPDATED_AT;
    case r'BLURHASH':
      return Enum_UserSortField.BLURHASH;
    case r'AUTH_ID':
      return Enum_UserSortField.AUTH_ID;
    case r'CURRENT_USER_CAN_MANAGE_THIS_USER':
      return Enum_UserSortField.CURRENT_USER_CAN_MANAGE_THIS_USER;
    case r'LAST_EDIT':
      return Enum_UserSortField.LAST_EDIT;
    case r'LAST_EDIT_USER_NAME':
      return Enum_UserSortField.LAST_EDIT_USER_NAME;
    case r'PERSON_NAME':
      return Enum_UserSortField.PERSON_NAME;
    default:
      return Enum_UserSortField.$unknown;
  }
}

enum Enum_ScopeGrantSortField {
  PERMISSION_ID,
  UID,
  ADMIN_ON_SERVICE,
  SERVICE_GENDER,
  SERVICE_STUDY_YEAR,
  SERVICE_ALLOW_EDIT,
  SERVICE_ADMIN_ON_USERS,
  ADMIN_ON_GROUP,
  GROUP_ALLOW_EDIT,
  GROUP_ADMIN_ON_USERS,
  ADMIN_ON_AREA,
  AREA_ALLOW_EDIT,
  AREA_ADMIN_ON_USERS,
  SERVICE_WRITE_RELATED_FAMILIES,
  GROUP_WRITE_RELATED_FAMILIES,
  AREA_ALLOW_EXPORT,
  SERVICE_ALLOW_EXPORT,
  GROUP_ALLOW_EXPORT,
  SERVICE_ALLOW_RECORD_ATTENDANCE,
  SERVICE_ALLOW_RECORD_SERVANTS_ATTENDANCE,
  GROUP_ALLOW_RECORD_ATTENDANCE,
  GROUP_ALLOW_RECORD_SERVANTS_ATTENDANCE,
  $unknown;

  factory Enum_ScopeGrantSortField.fromJson(String value) =>
      fromJson_Enum_ScopeGrantSortField(value);

  String toJson() => toJson_Enum_ScopeGrantSortField(this);
}

String toJson_Enum_ScopeGrantSortField(Enum_ScopeGrantSortField e) {
  switch (e) {
    case Enum_ScopeGrantSortField.PERMISSION_ID:
      return r'PERMISSION_ID';
    case Enum_ScopeGrantSortField.UID:
      return r'UID';
    case Enum_ScopeGrantSortField.ADMIN_ON_SERVICE:
      return r'ADMIN_ON_SERVICE';
    case Enum_ScopeGrantSortField.SERVICE_GENDER:
      return r'SERVICE_GENDER';
    case Enum_ScopeGrantSortField.SERVICE_STUDY_YEAR:
      return r'SERVICE_STUDY_YEAR';
    case Enum_ScopeGrantSortField.SERVICE_ALLOW_EDIT:
      return r'SERVICE_ALLOW_EDIT';
    case Enum_ScopeGrantSortField.SERVICE_ADMIN_ON_USERS:
      return r'SERVICE_ADMIN_ON_USERS';
    case Enum_ScopeGrantSortField.ADMIN_ON_GROUP:
      return r'ADMIN_ON_GROUP';
    case Enum_ScopeGrantSortField.GROUP_ALLOW_EDIT:
      return r'GROUP_ALLOW_EDIT';
    case Enum_ScopeGrantSortField.GROUP_ADMIN_ON_USERS:
      return r'GROUP_ADMIN_ON_USERS';
    case Enum_ScopeGrantSortField.ADMIN_ON_AREA:
      return r'ADMIN_ON_AREA';
    case Enum_ScopeGrantSortField.AREA_ALLOW_EDIT:
      return r'AREA_ALLOW_EDIT';
    case Enum_ScopeGrantSortField.AREA_ADMIN_ON_USERS:
      return r'AREA_ADMIN_ON_USERS';
    case Enum_ScopeGrantSortField.SERVICE_WRITE_RELATED_FAMILIES:
      return r'SERVICE_WRITE_RELATED_FAMILIES';
    case Enum_ScopeGrantSortField.GROUP_WRITE_RELATED_FAMILIES:
      return r'GROUP_WRITE_RELATED_FAMILIES';
    case Enum_ScopeGrantSortField.AREA_ALLOW_EXPORT:
      return r'AREA_ALLOW_EXPORT';
    case Enum_ScopeGrantSortField.SERVICE_ALLOW_EXPORT:
      return r'SERVICE_ALLOW_EXPORT';
    case Enum_ScopeGrantSortField.GROUP_ALLOW_EXPORT:
      return r'GROUP_ALLOW_EXPORT';
    case Enum_ScopeGrantSortField.SERVICE_ALLOW_RECORD_ATTENDANCE:
      return r'SERVICE_ALLOW_RECORD_ATTENDANCE';
    case Enum_ScopeGrantSortField.SERVICE_ALLOW_RECORD_SERVANTS_ATTENDANCE:
      return r'SERVICE_ALLOW_RECORD_SERVANTS_ATTENDANCE';
    case Enum_ScopeGrantSortField.GROUP_ALLOW_RECORD_ATTENDANCE:
      return r'GROUP_ALLOW_RECORD_ATTENDANCE';
    case Enum_ScopeGrantSortField.GROUP_ALLOW_RECORD_SERVANTS_ATTENDANCE:
      return r'GROUP_ALLOW_RECORD_SERVANTS_ATTENDANCE';
    case Enum_ScopeGrantSortField.$unknown:
      return r'$unknown';
  }
}

Enum_ScopeGrantSortField fromJson_Enum_ScopeGrantSortField(String value) {
  switch (value) {
    case r'PERMISSION_ID':
      return Enum_ScopeGrantSortField.PERMISSION_ID;
    case r'UID':
      return Enum_ScopeGrantSortField.UID;
    case r'ADMIN_ON_SERVICE':
      return Enum_ScopeGrantSortField.ADMIN_ON_SERVICE;
    case r'SERVICE_GENDER':
      return Enum_ScopeGrantSortField.SERVICE_GENDER;
    case r'SERVICE_STUDY_YEAR':
      return Enum_ScopeGrantSortField.SERVICE_STUDY_YEAR;
    case r'SERVICE_ALLOW_EDIT':
      return Enum_ScopeGrantSortField.SERVICE_ALLOW_EDIT;
    case r'SERVICE_ADMIN_ON_USERS':
      return Enum_ScopeGrantSortField.SERVICE_ADMIN_ON_USERS;
    case r'ADMIN_ON_GROUP':
      return Enum_ScopeGrantSortField.ADMIN_ON_GROUP;
    case r'GROUP_ALLOW_EDIT':
      return Enum_ScopeGrantSortField.GROUP_ALLOW_EDIT;
    case r'GROUP_ADMIN_ON_USERS':
      return Enum_ScopeGrantSortField.GROUP_ADMIN_ON_USERS;
    case r'ADMIN_ON_AREA':
      return Enum_ScopeGrantSortField.ADMIN_ON_AREA;
    case r'AREA_ALLOW_EDIT':
      return Enum_ScopeGrantSortField.AREA_ALLOW_EDIT;
    case r'AREA_ADMIN_ON_USERS':
      return Enum_ScopeGrantSortField.AREA_ADMIN_ON_USERS;
    case r'SERVICE_WRITE_RELATED_FAMILIES':
      return Enum_ScopeGrantSortField.SERVICE_WRITE_RELATED_FAMILIES;
    case r'GROUP_WRITE_RELATED_FAMILIES':
      return Enum_ScopeGrantSortField.GROUP_WRITE_RELATED_FAMILIES;
    case r'AREA_ALLOW_EXPORT':
      return Enum_ScopeGrantSortField.AREA_ALLOW_EXPORT;
    case r'SERVICE_ALLOW_EXPORT':
      return Enum_ScopeGrantSortField.SERVICE_ALLOW_EXPORT;
    case r'GROUP_ALLOW_EXPORT':
      return Enum_ScopeGrantSortField.GROUP_ALLOW_EXPORT;
    case r'SERVICE_ALLOW_RECORD_ATTENDANCE':
      return Enum_ScopeGrantSortField.SERVICE_ALLOW_RECORD_ATTENDANCE;
    case r'SERVICE_ALLOW_RECORD_SERVANTS_ATTENDANCE':
      return Enum_ScopeGrantSortField.SERVICE_ALLOW_RECORD_SERVANTS_ATTENDANCE;
    case r'GROUP_ALLOW_RECORD_ATTENDANCE':
      return Enum_ScopeGrantSortField.GROUP_ALLOW_RECORD_ATTENDANCE;
    case r'GROUP_ALLOW_RECORD_SERVANTS_ATTENDANCE':
      return Enum_ScopeGrantSortField.GROUP_ALLOW_RECORD_SERVANTS_ATTENDANCE;
    default:
      return Enum_ScopeGrantSortField.$unknown;
  }
}

enum Enum_DeviceTokenSortField {
  UID,
  TOKEN,
  CREATED_AT,
  $unknown;

  factory Enum_DeviceTokenSortField.fromJson(String value) =>
      fromJson_Enum_DeviceTokenSortField(value);

  String toJson() => toJson_Enum_DeviceTokenSortField(this);
}

String toJson_Enum_DeviceTokenSortField(Enum_DeviceTokenSortField e) {
  switch (e) {
    case Enum_DeviceTokenSortField.UID:
      return r'UID';
    case Enum_DeviceTokenSortField.TOKEN:
      return r'TOKEN';
    case Enum_DeviceTokenSortField.CREATED_AT:
      return r'CREATED_AT';
    case Enum_DeviceTokenSortField.$unknown:
      return r'$unknown';
  }
}

Enum_DeviceTokenSortField fromJson_Enum_DeviceTokenSortField(String value) {
  switch (value) {
    case r'UID':
      return Enum_DeviceTokenSortField.UID;
    case r'TOKEN':
      return Enum_DeviceTokenSortField.TOKEN;
    case r'CREATED_AT':
      return Enum_DeviceTokenSortField.CREATED_AT;
    default:
      return Enum_DeviceTokenSortField.$unknown;
  }
}

enum Enum_UniversitySortField {
  ID,
  NAME,
  $unknown;

  factory Enum_UniversitySortField.fromJson(String value) =>
      fromJson_Enum_UniversitySortField(value);

  String toJson() => toJson_Enum_UniversitySortField(this);
}

String toJson_Enum_UniversitySortField(Enum_UniversitySortField e) {
  switch (e) {
    case Enum_UniversitySortField.ID:
      return r'ID';
    case Enum_UniversitySortField.NAME:
      return r'NAME';
    case Enum_UniversitySortField.$unknown:
      return r'$unknown';
  }
}

Enum_UniversitySortField fromJson_Enum_UniversitySortField(String value) {
  switch (value) {
    case r'ID':
      return Enum_UniversitySortField.ID;
    case r'NAME':
      return Enum_UniversitySortField.NAME;
    default:
      return Enum_UniversitySortField.$unknown;
  }
}

enum Enum_TagSortField {
  ID,
  NAME,
  COLOR,
  $unknown;

  factory Enum_TagSortField.fromJson(String value) =>
      fromJson_Enum_TagSortField(value);

  String toJson() => toJson_Enum_TagSortField(this);
}

String toJson_Enum_TagSortField(Enum_TagSortField e) {
  switch (e) {
    case Enum_TagSortField.ID:
      return r'ID';
    case Enum_TagSortField.NAME:
      return r'NAME';
    case Enum_TagSortField.COLOR:
      return r'COLOR';
    case Enum_TagSortField.$unknown:
      return r'$unknown';
  }
}

Enum_TagSortField fromJson_Enum_TagSortField(String value) {
  switch (value) {
    case r'ID':
      return Enum_TagSortField.ID;
    case r'NAME':
      return Enum_TagSortField.NAME;
    case r'COLOR':
      return Enum_TagSortField.COLOR;
    default:
      return Enum_TagSortField.$unknown;
  }
}

enum Enum_StudyYearSortField {
  NAME,
  ORDER,
  $unknown;

  factory Enum_StudyYearSortField.fromJson(String value) =>
      fromJson_Enum_StudyYearSortField(value);

  String toJson() => toJson_Enum_StudyYearSortField(this);
}

String toJson_Enum_StudyYearSortField(Enum_StudyYearSortField e) {
  switch (e) {
    case Enum_StudyYearSortField.NAME:
      return r'NAME';
    case Enum_StudyYearSortField.ORDER:
      return r'ORDER';
    case Enum_StudyYearSortField.$unknown:
      return r'$unknown';
  }
}

Enum_StudyYearSortField fromJson_Enum_StudyYearSortField(String value) {
  switch (value) {
    case r'NAME':
      return Enum_StudyYearSortField.NAME;
    case r'ORDER':
      return Enum_StudyYearSortField.ORDER;
    default:
      return Enum_StudyYearSortField.$unknown;
  }
}

enum Enum_ShammasLevelSortField {
  ID,
  NAME,
  ORDER,
  $unknown;

  factory Enum_ShammasLevelSortField.fromJson(String value) =>
      fromJson_Enum_ShammasLevelSortField(value);

  String toJson() => toJson_Enum_ShammasLevelSortField(this);
}

String toJson_Enum_ShammasLevelSortField(Enum_ShammasLevelSortField e) {
  switch (e) {
    case Enum_ShammasLevelSortField.ID:
      return r'ID';
    case Enum_ShammasLevelSortField.NAME:
      return r'NAME';
    case Enum_ShammasLevelSortField.ORDER:
      return r'ORDER';
    case Enum_ShammasLevelSortField.$unknown:
      return r'$unknown';
  }
}

Enum_ShammasLevelSortField fromJson_Enum_ShammasLevelSortField(String value) {
  switch (value) {
    case r'ID':
      return Enum_ShammasLevelSortField.ID;
    case r'NAME':
      return Enum_ShammasLevelSortField.NAME;
    case r'ORDER':
      return Enum_ShammasLevelSortField.ORDER;
    default:
      return Enum_ShammasLevelSortField.$unknown;
  }
}

enum Enum_SchoolSortField {
  ID,
  NAME,
  $unknown;

  factory Enum_SchoolSortField.fromJson(String value) =>
      fromJson_Enum_SchoolSortField(value);

  String toJson() => toJson_Enum_SchoolSortField(this);
}

String toJson_Enum_SchoolSortField(Enum_SchoolSortField e) {
  switch (e) {
    case Enum_SchoolSortField.ID:
      return r'ID';
    case Enum_SchoolSortField.NAME:
      return r'NAME';
    case Enum_SchoolSortField.$unknown:
      return r'$unknown';
  }
}

Enum_SchoolSortField fromJson_Enum_SchoolSortField(String value) {
  switch (value) {
    case r'ID':
      return Enum_SchoolSortField.ID;
    case r'NAME':
      return Enum_SchoolSortField.NAME;
    default:
      return Enum_SchoolSortField.$unknown;
  }
}

enum Enum_QualificationSortField {
  ID,
  NAME,
  $unknown;

  factory Enum_QualificationSortField.fromJson(String value) =>
      fromJson_Enum_QualificationSortField(value);

  String toJson() => toJson_Enum_QualificationSortField(this);
}

String toJson_Enum_QualificationSortField(Enum_QualificationSortField e) {
  switch (e) {
    case Enum_QualificationSortField.ID:
      return r'ID';
    case Enum_QualificationSortField.NAME:
      return r'NAME';
    case Enum_QualificationSortField.$unknown:
      return r'$unknown';
  }
}

Enum_QualificationSortField fromJson_Enum_QualificationSortField(String value) {
  switch (value) {
    case r'ID':
      return Enum_QualificationSortField.ID;
    case r'NAME':
      return Enum_QualificationSortField.NAME;
    default:
      return Enum_QualificationSortField.$unknown;
  }
}

enum Enum_PersonTypeSortField {
  ID,
  NAME,
  ORDER,
  IS_FAMILY_ADMIN,
  IS_HIDDEN,
  $unknown;

  factory Enum_PersonTypeSortField.fromJson(String value) =>
      fromJson_Enum_PersonTypeSortField(value);

  String toJson() => toJson_Enum_PersonTypeSortField(this);
}

String toJson_Enum_PersonTypeSortField(Enum_PersonTypeSortField e) {
  switch (e) {
    case Enum_PersonTypeSortField.ID:
      return r'ID';
    case Enum_PersonTypeSortField.NAME:
      return r'NAME';
    case Enum_PersonTypeSortField.ORDER:
      return r'ORDER';
    case Enum_PersonTypeSortField.IS_FAMILY_ADMIN:
      return r'IS_FAMILY_ADMIN';
    case Enum_PersonTypeSortField.IS_HIDDEN:
      return r'IS_HIDDEN';
    case Enum_PersonTypeSortField.$unknown:
      return r'$unknown';
  }
}

Enum_PersonTypeSortField fromJson_Enum_PersonTypeSortField(String value) {
  switch (value) {
    case r'ID':
      return Enum_PersonTypeSortField.ID;
    case r'NAME':
      return Enum_PersonTypeSortField.NAME;
    case r'ORDER':
      return Enum_PersonTypeSortField.ORDER;
    case r'IS_FAMILY_ADMIN':
      return Enum_PersonTypeSortField.IS_FAMILY_ADMIN;
    case r'IS_HIDDEN':
      return Enum_PersonTypeSortField.IS_HIDDEN;
    default:
      return Enum_PersonTypeSortField.$unknown;
  }
}

enum Enum_PersonStateSortField {
  ID,
  NAME,
  COLOR,
  $unknown;

  factory Enum_PersonStateSortField.fromJson(String value) =>
      fromJson_Enum_PersonStateSortField(value);

  String toJson() => toJson_Enum_PersonStateSortField(this);
}

String toJson_Enum_PersonStateSortField(Enum_PersonStateSortField e) {
  switch (e) {
    case Enum_PersonStateSortField.ID:
      return r'ID';
    case Enum_PersonStateSortField.NAME:
      return r'NAME';
    case Enum_PersonStateSortField.COLOR:
      return r'COLOR';
    case Enum_PersonStateSortField.$unknown:
      return r'$unknown';
  }
}

Enum_PersonStateSortField fromJson_Enum_PersonStateSortField(String value) {
  switch (value) {
    case r'ID':
      return Enum_PersonStateSortField.ID;
    case r'NAME':
      return Enum_PersonStateSortField.NAME;
    case r'COLOR':
      return Enum_PersonStateSortField.COLOR;
    default:
      return Enum_PersonStateSortField.$unknown;
  }
}

enum Enum_JobSortField {
  ID,
  NAME,
  $unknown;

  factory Enum_JobSortField.fromJson(String value) =>
      fromJson_Enum_JobSortField(value);

  String toJson() => toJson_Enum_JobSortField(this);
}

String toJson_Enum_JobSortField(Enum_JobSortField e) {
  switch (e) {
    case Enum_JobSortField.ID:
      return r'ID';
    case Enum_JobSortField.NAME:
      return r'NAME';
    case Enum_JobSortField.$unknown:
      return r'$unknown';
  }
}

Enum_JobSortField fromJson_Enum_JobSortField(String value) {
  switch (value) {
    case r'ID':
      return Enum_JobSortField.ID;
    case r'NAME':
      return Enum_JobSortField.NAME;
    default:
      return Enum_JobSortField.$unknown;
  }
}

enum Enum_HobbySortField {
  ID,
  NAME,
  COLOR,
  $unknown;

  factory Enum_HobbySortField.fromJson(String value) =>
      fromJson_Enum_HobbySortField(value);

  String toJson() => toJson_Enum_HobbySortField(this);
}

String toJson_Enum_HobbySortField(Enum_HobbySortField e) {
  switch (e) {
    case Enum_HobbySortField.ID:
      return r'ID';
    case Enum_HobbySortField.NAME:
      return r'NAME';
    case Enum_HobbySortField.COLOR:
      return r'COLOR';
    case Enum_HobbySortField.$unknown:
      return r'$unknown';
  }
}

Enum_HobbySortField fromJson_Enum_HobbySortField(String value) {
  switch (value) {
    case r'ID':
      return Enum_HobbySortField.ID;
    case r'NAME':
      return Enum_HobbySortField.NAME;
    case r'COLOR':
      return Enum_HobbySortField.COLOR;
    default:
      return Enum_HobbySortField.$unknown;
  }
}

enum Enum_FatherSortField {
  ID,
  NAME,
  CHURCH_ID,
  IS_HIDDEN,
  $unknown;

  factory Enum_FatherSortField.fromJson(String value) =>
      fromJson_Enum_FatherSortField(value);

  String toJson() => toJson_Enum_FatherSortField(this);
}

String toJson_Enum_FatherSortField(Enum_FatherSortField e) {
  switch (e) {
    case Enum_FatherSortField.ID:
      return r'ID';
    case Enum_FatherSortField.NAME:
      return r'NAME';
    case Enum_FatherSortField.CHURCH_ID:
      return r'CHURCH_ID';
    case Enum_FatherSortField.IS_HIDDEN:
      return r'IS_HIDDEN';
    case Enum_FatherSortField.$unknown:
      return r'$unknown';
  }
}

Enum_FatherSortField fromJson_Enum_FatherSortField(String value) {
  switch (value) {
    case r'ID':
      return Enum_FatherSortField.ID;
    case r'NAME':
      return Enum_FatherSortField.NAME;
    case r'CHURCH_ID':
      return Enum_FatherSortField.CHURCH_ID;
    case r'IS_HIDDEN':
      return Enum_FatherSortField.IS_HIDDEN;
    default:
      return Enum_FatherSortField.$unknown;
  }
}

enum Enum_CollegeSortField {
  ID,
  NAME,
  UNIVERSITY_ID,
  $unknown;

  factory Enum_CollegeSortField.fromJson(String value) =>
      fromJson_Enum_CollegeSortField(value);

  String toJson() => toJson_Enum_CollegeSortField(this);
}

String toJson_Enum_CollegeSortField(Enum_CollegeSortField e) {
  switch (e) {
    case Enum_CollegeSortField.ID:
      return r'ID';
    case Enum_CollegeSortField.NAME:
      return r'NAME';
    case Enum_CollegeSortField.UNIVERSITY_ID:
      return r'UNIVERSITY_ID';
    case Enum_CollegeSortField.$unknown:
      return r'$unknown';
  }
}

Enum_CollegeSortField fromJson_Enum_CollegeSortField(String value) {
  switch (value) {
    case r'ID':
      return Enum_CollegeSortField.ID;
    case r'NAME':
      return Enum_CollegeSortField.NAME;
    case r'UNIVERSITY_ID':
      return Enum_CollegeSortField.UNIVERSITY_ID;
    default:
      return Enum_CollegeSortField.$unknown;
  }
}

enum Enum_ChurchSortField {
  ID,
  NAME,
  IS_HIDDEN,
  $unknown;

  factory Enum_ChurchSortField.fromJson(String value) =>
      fromJson_Enum_ChurchSortField(value);

  String toJson() => toJson_Enum_ChurchSortField(this);
}

String toJson_Enum_ChurchSortField(Enum_ChurchSortField e) {
  switch (e) {
    case Enum_ChurchSortField.ID:
      return r'ID';
    case Enum_ChurchSortField.NAME:
      return r'NAME';
    case Enum_ChurchSortField.IS_HIDDEN:
      return r'IS_HIDDEN';
    case Enum_ChurchSortField.$unknown:
      return r'$unknown';
  }
}

Enum_ChurchSortField fromJson_Enum_ChurchSortField(String value) {
  switch (value) {
    case r'ID':
      return Enum_ChurchSortField.ID;
    case r'NAME':
      return Enum_ChurchSortField.NAME;
    case r'IS_HIDDEN':
      return Enum_ChurchSortField.IS_HIDDEN;
    default:
      return Enum_ChurchSortField.$unknown;
  }
}

enum Enum_DataCheckOverrideSortField {
  FAMILY_ID,
  IS_COMPLETE,
  UPDATED_BY,
  $unknown;

  factory Enum_DataCheckOverrideSortField.fromJson(String value) =>
      fromJson_Enum_DataCheckOverrideSortField(value);

  String toJson() => toJson_Enum_DataCheckOverrideSortField(this);
}

String toJson_Enum_DataCheckOverrideSortField(
  Enum_DataCheckOverrideSortField e,
) {
  switch (e) {
    case Enum_DataCheckOverrideSortField.FAMILY_ID:
      return r'FAMILY_ID';
    case Enum_DataCheckOverrideSortField.IS_COMPLETE:
      return r'IS_COMPLETE';
    case Enum_DataCheckOverrideSortField.UPDATED_BY:
      return r'UPDATED_BY';
    case Enum_DataCheckOverrideSortField.$unknown:
      return r'$unknown';
  }
}

Enum_DataCheckOverrideSortField fromJson_Enum_DataCheckOverrideSortField(
  String value,
) {
  switch (value) {
    case r'FAMILY_ID':
      return Enum_DataCheckOverrideSortField.FAMILY_ID;
    case r'IS_COMPLETE':
      return Enum_DataCheckOverrideSortField.IS_COMPLETE;
    case r'UPDATED_BY':
      return Enum_DataCheckOverrideSortField.UPDATED_BY;
    default:
      return Enum_DataCheckOverrideSortField.$unknown;
  }
}

enum Enum_DataCheckSortField {
  FAMILY_ID,
  USER_OVERRIDE,
  FAMILY_CHECK,
  ADDRESS_CHECK,
  COMPLETENESS_PERCENT,
  IS_COMPLETE,
  $unknown;

  factory Enum_DataCheckSortField.fromJson(String value) =>
      fromJson_Enum_DataCheckSortField(value);

  String toJson() => toJson_Enum_DataCheckSortField(this);
}

String toJson_Enum_DataCheckSortField(Enum_DataCheckSortField e) {
  switch (e) {
    case Enum_DataCheckSortField.FAMILY_ID:
      return r'FAMILY_ID';
    case Enum_DataCheckSortField.USER_OVERRIDE:
      return r'USER_OVERRIDE';
    case Enum_DataCheckSortField.FAMILY_CHECK:
      return r'FAMILY_CHECK';
    case Enum_DataCheckSortField.ADDRESS_CHECK:
      return r'ADDRESS_CHECK';
    case Enum_DataCheckSortField.COMPLETENESS_PERCENT:
      return r'COMPLETENESS_PERCENT';
    case Enum_DataCheckSortField.IS_COMPLETE:
      return r'IS_COMPLETE';
    case Enum_DataCheckSortField.$unknown:
      return r'$unknown';
  }
}

Enum_DataCheckSortField fromJson_Enum_DataCheckSortField(String value) {
  switch (value) {
    case r'FAMILY_ID':
      return Enum_DataCheckSortField.FAMILY_ID;
    case r'USER_OVERRIDE':
      return Enum_DataCheckSortField.USER_OVERRIDE;
    case r'FAMILY_CHECK':
      return Enum_DataCheckSortField.FAMILY_CHECK;
    case r'ADDRESS_CHECK':
      return Enum_DataCheckSortField.ADDRESS_CHECK;
    case r'COMPLETENESS_PERCENT':
      return Enum_DataCheckSortField.COMPLETENESS_PERCENT;
    case r'IS_COMPLETE':
      return Enum_DataCheckSortField.IS_COMPLETE;
    default:
      return Enum_DataCheckSortField.$unknown;
  }
}

enum Enum___TypeKind {
  SCALAR,
  OBJECT,
  INTERFACE,
  UNION,
  ENUM,
  INPUT_OBJECT,
  LIST,
  NON_NULL,
  $unknown;

  factory Enum___TypeKind.fromJson(String value) =>
      fromJson_Enum___TypeKind(value);

  String toJson() => toJson_Enum___TypeKind(this);
}

String toJson_Enum___TypeKind(Enum___TypeKind e) {
  switch (e) {
    case Enum___TypeKind.SCALAR:
      return r'SCALAR';
    case Enum___TypeKind.OBJECT:
      return r'OBJECT';
    case Enum___TypeKind.INTERFACE:
      return r'INTERFACE';
    case Enum___TypeKind.UNION:
      return r'UNION';
    case Enum___TypeKind.ENUM:
      return r'ENUM';
    case Enum___TypeKind.INPUT_OBJECT:
      return r'INPUT_OBJECT';
    case Enum___TypeKind.LIST:
      return r'LIST';
    case Enum___TypeKind.NON_NULL:
      return r'NON_NULL';
    case Enum___TypeKind.$unknown:
      return r'$unknown';
  }
}

Enum___TypeKind fromJson_Enum___TypeKind(String value) {
  switch (value) {
    case r'SCALAR':
      return Enum___TypeKind.SCALAR;
    case r'OBJECT':
      return Enum___TypeKind.OBJECT;
    case r'INTERFACE':
      return Enum___TypeKind.INTERFACE;
    case r'UNION':
      return Enum___TypeKind.UNION;
    case r'ENUM':
      return Enum___TypeKind.ENUM;
    case r'INPUT_OBJECT':
      return Enum___TypeKind.INPUT_OBJECT;
    case r'LIST':
      return Enum___TypeKind.LIST;
    case r'NON_NULL':
      return Enum___TypeKind.NON_NULL;
    default:
      return Enum___TypeKind.$unknown;
  }
}

enum Enum___DirectiveLocation {
  QUERY,
  MUTATION,
  SUBSCRIPTION,
  FIELD,
  FRAGMENT_DEFINITION,
  FRAGMENT_SPREAD,
  INLINE_FRAGMENT,
  VARIABLE_DEFINITION,
  SCHEMA,
  SCALAR,
  OBJECT,
  FIELD_DEFINITION,
  ARGUMENT_DEFINITION,
  INTERFACE,
  UNION,
  ENUM,
  ENUM_VALUE,
  INPUT_OBJECT,
  INPUT_FIELD_DEFINITION,
  $unknown;

  factory Enum___DirectiveLocation.fromJson(String value) =>
      fromJson_Enum___DirectiveLocation(value);

  String toJson() => toJson_Enum___DirectiveLocation(this);
}

String toJson_Enum___DirectiveLocation(Enum___DirectiveLocation e) {
  switch (e) {
    case Enum___DirectiveLocation.QUERY:
      return r'QUERY';
    case Enum___DirectiveLocation.MUTATION:
      return r'MUTATION';
    case Enum___DirectiveLocation.SUBSCRIPTION:
      return r'SUBSCRIPTION';
    case Enum___DirectiveLocation.FIELD:
      return r'FIELD';
    case Enum___DirectiveLocation.FRAGMENT_DEFINITION:
      return r'FRAGMENT_DEFINITION';
    case Enum___DirectiveLocation.FRAGMENT_SPREAD:
      return r'FRAGMENT_SPREAD';
    case Enum___DirectiveLocation.INLINE_FRAGMENT:
      return r'INLINE_FRAGMENT';
    case Enum___DirectiveLocation.VARIABLE_DEFINITION:
      return r'VARIABLE_DEFINITION';
    case Enum___DirectiveLocation.SCHEMA:
      return r'SCHEMA';
    case Enum___DirectiveLocation.SCALAR:
      return r'SCALAR';
    case Enum___DirectiveLocation.OBJECT:
      return r'OBJECT';
    case Enum___DirectiveLocation.FIELD_DEFINITION:
      return r'FIELD_DEFINITION';
    case Enum___DirectiveLocation.ARGUMENT_DEFINITION:
      return r'ARGUMENT_DEFINITION';
    case Enum___DirectiveLocation.INTERFACE:
      return r'INTERFACE';
    case Enum___DirectiveLocation.UNION:
      return r'UNION';
    case Enum___DirectiveLocation.ENUM:
      return r'ENUM';
    case Enum___DirectiveLocation.ENUM_VALUE:
      return r'ENUM_VALUE';
    case Enum___DirectiveLocation.INPUT_OBJECT:
      return r'INPUT_OBJECT';
    case Enum___DirectiveLocation.INPUT_FIELD_DEFINITION:
      return r'INPUT_FIELD_DEFINITION';
    case Enum___DirectiveLocation.$unknown:
      return r'$unknown';
  }
}

Enum___DirectiveLocation fromJson_Enum___DirectiveLocation(String value) {
  switch (value) {
    case r'QUERY':
      return Enum___DirectiveLocation.QUERY;
    case r'MUTATION':
      return Enum___DirectiveLocation.MUTATION;
    case r'SUBSCRIPTION':
      return Enum___DirectiveLocation.SUBSCRIPTION;
    case r'FIELD':
      return Enum___DirectiveLocation.FIELD;
    case r'FRAGMENT_DEFINITION':
      return Enum___DirectiveLocation.FRAGMENT_DEFINITION;
    case r'FRAGMENT_SPREAD':
      return Enum___DirectiveLocation.FRAGMENT_SPREAD;
    case r'INLINE_FRAGMENT':
      return Enum___DirectiveLocation.INLINE_FRAGMENT;
    case r'VARIABLE_DEFINITION':
      return Enum___DirectiveLocation.VARIABLE_DEFINITION;
    case r'SCHEMA':
      return Enum___DirectiveLocation.SCHEMA;
    case r'SCALAR':
      return Enum___DirectiveLocation.SCALAR;
    case r'OBJECT':
      return Enum___DirectiveLocation.OBJECT;
    case r'FIELD_DEFINITION':
      return Enum___DirectiveLocation.FIELD_DEFINITION;
    case r'ARGUMENT_DEFINITION':
      return Enum___DirectiveLocation.ARGUMENT_DEFINITION;
    case r'INTERFACE':
      return Enum___DirectiveLocation.INTERFACE;
    case r'UNION':
      return Enum___DirectiveLocation.UNION;
    case r'ENUM':
      return Enum___DirectiveLocation.ENUM;
    case r'ENUM_VALUE':
      return Enum___DirectiveLocation.ENUM_VALUE;
    case r'INPUT_OBJECT':
      return Enum___DirectiveLocation.INPUT_OBJECT;
    case r'INPUT_FIELD_DEFINITION':
      return Enum___DirectiveLocation.INPUT_FIELD_DEFINITION;
    default:
      return Enum___DirectiveLocation.$unknown;
  }
}

const possibleTypesMap = <String, Set<String>>{};
