// Part 86 of the schema
part of "schema.graphql.dart";

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
  LAST_VISIT,
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
    case Enum_StreetSortField.LAST_VISIT:
      return r'LAST_VISIT';
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
    case r'LAST_VISIT':
      return Enum_StreetSortField.LAST_VISIT;
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
  LAST_VISIT,
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
    case Enum_AreaSortField.LAST_VISIT:
      return r'LAST_VISIT';
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
    case r'LAST_VISIT':
      return Enum_AreaSortField.LAST_VISIT;
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
