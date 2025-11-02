// Part 57 of the schema
part of "schema.graphql.dart";


String toJson_Enum_ChurchesConstraint(Enum_ChurchesConstraint e) {
  switch (e) {
    case Enum_ChurchesConstraint.churches_name_key:
      return r'churches_name_key';
    case Enum_ChurchesConstraint.churches_pkey:
      return r'churches_pkey';
    case Enum_ChurchesConstraint.$unknown:
      return r'$unknown';
  }
}

Enum_ChurchesConstraint fromJson_Enum_ChurchesConstraint(String value) {
  switch (value) {
    case r'churches_name_key':
      return Enum_ChurchesConstraint.churches_name_key;
    case r'churches_pkey':
      return Enum_ChurchesConstraint.churches_pkey;
    default:
      return Enum_ChurchesConstraint.$unknown;
  }
}

enum Enum_ChurchesSelectColumn {
  id,
  isHidden,
  name,
  $unknown;

  factory Enum_ChurchesSelectColumn.fromJson(String value) =>
      fromJson_Enum_ChurchesSelectColumn(value);

  String toJson() => toJson_Enum_ChurchesSelectColumn(this);
}

String toJson_Enum_ChurchesSelectColumn(Enum_ChurchesSelectColumn e) {
  switch (e) {
    case Enum_ChurchesSelectColumn.id:
      return r'id';
    case Enum_ChurchesSelectColumn.isHidden:
      return r'isHidden';
    case Enum_ChurchesSelectColumn.name:
      return r'name';
    case Enum_ChurchesSelectColumn.$unknown:
      return r'$unknown';
  }
}

Enum_ChurchesSelectColumn fromJson_Enum_ChurchesSelectColumn(String value) {
  switch (value) {
    case r'id':
      return Enum_ChurchesSelectColumn.id;
    case r'isHidden':
      return Enum_ChurchesSelectColumn.isHidden;
    case r'name':
      return Enum_ChurchesSelectColumn.name;
    default:
      return Enum_ChurchesSelectColumn.$unknown;
  }
}

enum Enum_ChurchesUpdateColumn {
  name,
  $unknown;

  factory Enum_ChurchesUpdateColumn.fromJson(String value) =>
      fromJson_Enum_ChurchesUpdateColumn(value);

  String toJson() => toJson_Enum_ChurchesUpdateColumn(this);
}

String toJson_Enum_ChurchesUpdateColumn(Enum_ChurchesUpdateColumn e) {
  switch (e) {
    case Enum_ChurchesUpdateColumn.name:
      return r'name';
    case Enum_ChurchesUpdateColumn.$unknown:
      return r'$unknown';
  }
}

Enum_ChurchesUpdateColumn fromJson_Enum_ChurchesUpdateColumn(String value) {
  switch (value) {
    case r'name':
      return Enum_ChurchesUpdateColumn.name;
    default:
      return Enum_ChurchesUpdateColumn.$unknown;
  }
}

enum Enum_ClassesConstraint {
  classes_pkey,
  $unknown;

  factory Enum_ClassesConstraint.fromJson(String value) =>
      fromJson_Enum_ClassesConstraint(value);

  String toJson() => toJson_Enum_ClassesConstraint(this);
}

String toJson_Enum_ClassesConstraint(Enum_ClassesConstraint e) {
  switch (e) {
    case Enum_ClassesConstraint.classes_pkey:
      return r'classes_pkey';
    case Enum_ClassesConstraint.$unknown:
      return r'$unknown';
  }
}

Enum_ClassesConstraint fromJson_Enum_ClassesConstraint(String value) {
  switch (value) {
    case r'classes_pkey':
      return Enum_ClassesConstraint.classes_pkey;
    default:
      return Enum_ClassesConstraint.$unknown;
  }
}

enum Enum_ClassesPersonsSelectColumn {
  classId,
  personId,
  $unknown;

  factory Enum_ClassesPersonsSelectColumn.fromJson(String value) =>
      fromJson_Enum_ClassesPersonsSelectColumn(value);

  String toJson() => toJson_Enum_ClassesPersonsSelectColumn(this);
}

String toJson_Enum_ClassesPersonsSelectColumn(
  Enum_ClassesPersonsSelectColumn e,
) {
  switch (e) {
    case Enum_ClassesPersonsSelectColumn.classId:
      return r'classId';
    case Enum_ClassesPersonsSelectColumn.personId:
      return r'personId';
    case Enum_ClassesPersonsSelectColumn.$unknown:
      return r'$unknown';
  }
}

Enum_ClassesPersonsSelectColumn fromJson_Enum_ClassesPersonsSelectColumn(
  String value,
) {
  switch (value) {
    case r'classId':
      return Enum_ClassesPersonsSelectColumn.classId;
    case r'personId':
      return Enum_ClassesPersonsSelectColumn.personId;
    default:
      return Enum_ClassesPersonsSelectColumn.$unknown;
  }
}

enum Enum_ClassesSelectColumn {
  blurhash,
  color,
  id,
  name,
  photoUpdatedAt,
  serviceGender,
  serviceId,
  serviceStudyYear,
  $unknown;

  factory Enum_ClassesSelectColumn.fromJson(String value) =>
      fromJson_Enum_ClassesSelectColumn(value);

  String toJson() => toJson_Enum_ClassesSelectColumn(this);
}

String toJson_Enum_ClassesSelectColumn(Enum_ClassesSelectColumn e) {
  switch (e) {
    case Enum_ClassesSelectColumn.blurhash:
      return r'blurhash';
    case Enum_ClassesSelectColumn.color:
      return r'color';
    case Enum_ClassesSelectColumn.id:
      return r'id';
    case Enum_ClassesSelectColumn.name:
      return r'name';
    case Enum_ClassesSelectColumn.photoUpdatedAt:
      return r'photoUpdatedAt';
    case Enum_ClassesSelectColumn.serviceGender:
      return r'serviceGender';
    case Enum_ClassesSelectColumn.serviceId:
      return r'serviceId';
    case Enum_ClassesSelectColumn.serviceStudyYear:
      return r'serviceStudyYear';
    case Enum_ClassesSelectColumn.$unknown:
      return r'$unknown';
  }
}

Enum_ClassesSelectColumn fromJson_Enum_ClassesSelectColumn(String value) {
  switch (value) {
    case r'blurhash':
      return Enum_ClassesSelectColumn.blurhash;
    case r'color':
      return Enum_ClassesSelectColumn.color;
    case r'id':
      return Enum_ClassesSelectColumn.id;
    case r'name':
      return Enum_ClassesSelectColumn.name;
    case r'photoUpdatedAt':
      return Enum_ClassesSelectColumn.photoUpdatedAt;
    case r'serviceGender':
      return Enum_ClassesSelectColumn.serviceGender;
    case r'serviceId':
      return Enum_ClassesSelectColumn.serviceId;
    case r'serviceStudyYear':
      return Enum_ClassesSelectColumn.serviceStudyYear;
    default:
      return Enum_ClassesSelectColumn.$unknown;
  }
}

enum Enum_ClassesSelectColumnClassesAggregateBoolExpBool_andArgumentsColumns {
  serviceGender,
  $unknown;

  factory Enum_ClassesSelectColumnClassesAggregateBoolExpBool_andArgumentsColumns.fromJson(
    String value,
  ) =>
      fromJson_Enum_ClassesSelectColumnClassesAggregateBoolExpBool_andArgumentsColumns(
        value,
      );

  String toJson() =>
      toJson_Enum_ClassesSelectColumnClassesAggregateBoolExpBool_andArgumentsColumns(
        this,
      );
}

String
toJson_Enum_ClassesSelectColumnClassesAggregateBoolExpBool_andArgumentsColumns(
  Enum_ClassesSelectColumnClassesAggregateBoolExpBool_andArgumentsColumns e,
) {
  switch (e) {
    case Enum_ClassesSelectColumnClassesAggregateBoolExpBool_andArgumentsColumns
        .serviceGender:
      return r'serviceGender';
    case Enum_ClassesSelectColumnClassesAggregateBoolExpBool_andArgumentsColumns
        .$unknown:
      return r'$unknown';
  }
}

Enum_ClassesSelectColumnClassesAggregateBoolExpBool_andArgumentsColumns
fromJson_Enum_ClassesSelectColumnClassesAggregateBoolExpBool_andArgumentsColumns(
  String value,
) {
  switch (value) {
    case r'serviceGender':
      return Enum_ClassesSelectColumnClassesAggregateBoolExpBool_andArgumentsColumns
          .serviceGender;
    default:
      return Enum_ClassesSelectColumnClassesAggregateBoolExpBool_andArgumentsColumns
          .$unknown;
  }
}

enum Enum_ClassesSelectColumnClassesAggregateBoolExpBool_orArgumentsColumns {
  serviceGender,
  $unknown;

  factory Enum_ClassesSelectColumnClassesAggregateBoolExpBool_orArgumentsColumns.fromJson(
    String value,
  ) =>
      fromJson_Enum_ClassesSelectColumnClassesAggregateBoolExpBool_orArgumentsColumns(
        value,
      );

  String toJson() =>
      toJson_Enum_ClassesSelectColumnClassesAggregateBoolExpBool_orArgumentsColumns(
        this,
      );
}

String
toJson_Enum_ClassesSelectColumnClassesAggregateBoolExpBool_orArgumentsColumns(
  Enum_ClassesSelectColumnClassesAggregateBoolExpBool_orArgumentsColumns e,
) {
  switch (e) {
    case Enum_ClassesSelectColumnClassesAggregateBoolExpBool_orArgumentsColumns
        .serviceGender:
      return r'serviceGender';
    case Enum_ClassesSelectColumnClassesAggregateBoolExpBool_orArgumentsColumns
        .$unknown:
      return r'$unknown';
  }
}

Enum_ClassesSelectColumnClassesAggregateBoolExpBool_orArgumentsColumns
fromJson_Enum_ClassesSelectColumnClassesAggregateBoolExpBool_orArgumentsColumns(
  String value,
) {
  switch (value) {
    case r'serviceGender':
      return Enum_ClassesSelectColumnClassesAggregateBoolExpBool_orArgumentsColumns
          .serviceGender;
    default:
      return Enum_ClassesSelectColumnClassesAggregateBoolExpBool_orArgumentsColumns
          .$unknown;
  }
}

enum Enum_ClassesUpdateColumn {
  blurhash,
  color,
  name,
  photoUpdatedAt,
  serviceGender,
  serviceId,
  serviceStudyYear,
  $unknown;

  factory Enum_ClassesUpdateColumn.fromJson(String value) =>
      fromJson_Enum_ClassesUpdateColumn(value);

  String toJson() => toJson_Enum_ClassesUpdateColumn(this);
}

String toJson_Enum_ClassesUpdateColumn(Enum_ClassesUpdateColumn e) {
  switch (e) {
    case Enum_ClassesUpdateColumn.blurhash:
      return r'blurhash';
    case Enum_ClassesUpdateColumn.color:
      return r'color';
    case Enum_ClassesUpdateColumn.name:
      return r'name';
    case Enum_ClassesUpdateColumn.photoUpdatedAt:
      return r'photoUpdatedAt';
    case Enum_ClassesUpdateColumn.serviceGender:
      return r'serviceGender';
    case Enum_ClassesUpdateColumn.serviceId:
      return r'serviceId';
    case Enum_ClassesUpdateColumn.serviceStudyYear:
      return r'serviceStudyYear';
    case Enum_ClassesUpdateColumn.$unknown:
      return r'$unknown';
  }
}

Enum_ClassesUpdateColumn fromJson_Enum_ClassesUpdateColumn(String value) {
  switch (value) {
    case r'blurhash':
      return Enum_ClassesUpdateColumn.blurhash;
    case r'color':
      return Enum_ClassesUpdateColumn.color;
    case r'name':
      return Enum_ClassesUpdateColumn.name;
    case r'photoUpdatedAt':
      return Enum_ClassesUpdateColumn.photoUpdatedAt;
    case r'serviceGender':
      return Enum_ClassesUpdateColumn.serviceGender;
    case r'serviceId':
      return Enum_ClassesUpdateColumn.serviceId;
    case r'serviceStudyYear':
      return Enum_ClassesUpdateColumn.serviceStudyYear;
    default:
      return Enum_ClassesUpdateColumn.$unknown;
  }
}

enum Enum_CollegesConstraint {
  colleges_name_key,
  colleges_pkey,
  $unknown;

  factory Enum_CollegesConstraint.fromJson(String value) =>
      fromJson_Enum_CollegesConstraint(value);

  String toJson() => toJson_Enum_CollegesConstraint(this);
}

String toJson_Enum_CollegesConstraint(Enum_CollegesConstraint e) {
  switch (e) {
    case Enum_CollegesConstraint.colleges_name_key:
      return r'colleges_name_key';
    case Enum_CollegesConstraint.colleges_pkey:
      return r'colleges_pkey';
    case Enum_CollegesConstraint.$unknown:
      return r'$unknown';
  }
}

Enum_CollegesConstraint fromJson_Enum_CollegesConstraint(String value) {
  switch (value) {
    case r'colleges_name_key':
      return Enum_CollegesConstraint.colleges_name_key;
    case r'colleges_pkey':
      return Enum_CollegesConstraint.colleges_pkey;
    default:
      return Enum_CollegesConstraint.$unknown;
  }
}

enum Enum_CollegesSelectColumn {
  id,
  name,
  universityId,
  $unknown;

  factory Enum_CollegesSelectColumn.fromJson(String value) =>
      fromJson_Enum_CollegesSelectColumn(value);

  String toJson() => toJson_Enum_CollegesSelectColumn(this);
}

String toJson_Enum_CollegesSelectColumn(Enum_CollegesSelectColumn e) {
  switch (e) {
    case Enum_CollegesSelectColumn.id:
      return r'id';
    case Enum_CollegesSelectColumn.name:
      return r'name';
    case Enum_CollegesSelectColumn.universityId:
      return r'universityId';
    case Enum_CollegesSelectColumn.$unknown:
      return r'$unknown';
  }
}

Enum_CollegesSelectColumn fromJson_Enum_CollegesSelectColumn(String value) {
  switch (value) {
    case r'id':
      return Enum_CollegesSelectColumn.id;
    case r'name':
      return Enum_CollegesSelectColumn.name;
    case r'universityId':
      return Enum_CollegesSelectColumn.universityId;
    default:
      return Enum_CollegesSelectColumn.$unknown;
  }
}

enum Enum_CollegesUpdateColumn {
  name,
  $unknown;

  factory Enum_CollegesUpdateColumn.fromJson(String value) =>
      fromJson_Enum_CollegesUpdateColumn(value);

  String toJson() => toJson_Enum_CollegesUpdateColumn(this);
}

String toJson_Enum_CollegesUpdateColumn(Enum_CollegesUpdateColumn e) {
  switch (e) {
    case Enum_CollegesUpdateColumn.name:
      return r'name';
    case Enum_CollegesUpdateColumn.$unknown:
      return r'$unknown';
  }
}

Enum_CollegesUpdateColumn fromJson_Enum_CollegesUpdateColumn(String value) {
  switch (value) {
    case r'name':
      return Enum_CollegesUpdateColumn.name;
    default:
      return Enum_CollegesUpdateColumn.$unknown;
  }
}

enum Enum_CursorOrdering {
  ASC,
  DESC,
  $unknown;

  factory Enum_CursorOrdering.fromJson(String value) =>
      fromJson_Enum_CursorOrdering(value);

  String toJson() => toJson_Enum_CursorOrdering(this);
}

String toJson_Enum_CursorOrdering(Enum_CursorOrdering e) {
  switch (e) {
    case Enum_CursorOrdering.ASC:
      return r'ASC';
    case Enum_CursorOrdering.DESC:
      return r'DESC';
    case Enum_CursorOrdering.$unknown:
      return r'$unknown';
  }
}

Enum_CursorOrdering fromJson_Enum_CursorOrdering(String value) {
  switch (value) {
    case r'ASC':
      return Enum_CursorOrdering.ASC;
    case r'DESC':
      return Enum_CursorOrdering.DESC;
    default:
      return Enum_CursorOrdering.$unknown;
  }
}

enum Enum_DistrictsConstraint {
  districts_pk,
  districts_unique_name,
  $unknown;

  factory Enum_DistrictsConstraint.fromJson(String value) =>
      fromJson_Enum_DistrictsConstraint(value);

  String toJson() => toJson_Enum_DistrictsConstraint(this);
}

String toJson_Enum_DistrictsConstraint(Enum_DistrictsConstraint e) {
  switch (e) {
    case Enum_DistrictsConstraint.districts_pk:
      return r'districts_pk';
    case Enum_DistrictsConstraint.districts_unique_name:
      return r'districts_unique_name';
    case Enum_DistrictsConstraint.$unknown:
      return r'$unknown';
  }
}

Enum_DistrictsConstraint fromJson_Enum_DistrictsConstraint(String value) {
  switch (value) {
    case r'districts_pk':
      return Enum_DistrictsConstraint.districts_pk;
    case r'districts_unique_name':
      return Enum_DistrictsConstraint.districts_unique_name;
    default:
      return Enum_DistrictsConstraint.$unknown;
  }
}

enum Enum_DistrictsSelectColumn {
  id,
  name,
  $unknown;

  factory Enum_DistrictsSelectColumn.fromJson(String value) =>
      fromJson_Enum_DistrictsSelectColumn(value);

  String toJson() => toJson_Enum_DistrictsSelectColumn(this);
}

String toJson_Enum_DistrictsSelectColumn(Enum_DistrictsSelectColumn e) {
  switch (e) {
    case Enum_DistrictsSelectColumn.id:
      return r'id';
    case Enum_DistrictsSelectColumn.name:
      return r'name';
    case Enum_DistrictsSelectColumn.$unknown:
      return r'$unknown';
  }
}

Enum_DistrictsSelectColumn fromJson_Enum_DistrictsSelectColumn(String value) {
  switch (value) {
    case r'id':
      return Enum_DistrictsSelectColumn.id;
    case r'name':
      return Enum_DistrictsSelectColumn.name;
    default:
      return Enum_DistrictsSelectColumn.$unknown;
  }
}

enum Enum_DistrictsUpdateColumn {
  name,
  $unknown;

  factory Enum_DistrictsUpdateColumn.fromJson(String value) =>
      fromJson_Enum_DistrictsUpdateColumn(value);

  String toJson() => toJson_Enum_DistrictsUpdateColumn(this);
}

String toJson_Enum_DistrictsUpdateColumn(Enum_DistrictsUpdateColumn e) {
  switch (e) {
    case Enum_DistrictsUpdateColumn.name:
      return r'name';
    case Enum_DistrictsUpdateColumn.$unknown:
      return r'$unknown';
  }
}

Enum_DistrictsUpdateColumn fromJson_Enum_DistrictsUpdateColumn(String value) {
  switch (value) {
    case r'name':
      return Enum_DistrictsUpdateColumn.name;
    default:
      return Enum_DistrictsUpdateColumn.$unknown;
  }
}

enum Enum_FamiliesAdminsPhonesSelectColumn {
  aggregatedPhones,
  familyId,
  $unknown;

  factory Enum_FamiliesAdminsPhonesSelectColumn.fromJson(String value) =>
      fromJson_Enum_FamiliesAdminsPhonesSelectColumn(value);

  String toJson() => toJson_Enum_FamiliesAdminsPhonesSelectColumn(this);
}

String toJson_Enum_FamiliesAdminsPhonesSelectColumn(
  Enum_FamiliesAdminsPhonesSelectColumn e,
) {
  switch (e) {
    case Enum_FamiliesAdminsPhonesSelectColumn.aggregatedPhones:
      return r'aggregatedPhones';
    case Enum_FamiliesAdminsPhonesSelectColumn.familyId:
      return r'familyId';
    case Enum_FamiliesAdminsPhonesSelectColumn.$unknown:
      return r'$unknown';
  }
}

Enum_FamiliesAdminsPhonesSelectColumn
fromJson_Enum_FamiliesAdminsPhonesSelectColumn(String value) {
  switch (value) {
    case r'aggregatedPhones':
      return Enum_FamiliesAdminsPhonesSelectColumn.aggregatedPhones;
    case r'familyId':
      return Enum_FamiliesAdminsPhonesSelectColumn.familyId;
    default:
      return Enum_FamiliesAdminsPhonesSelectColumn.$unknown;
  }
}

enum Enum_FamiliesConstraint {
  families_pkey,
  $unknown;

  factory Enum_FamiliesConstraint.fromJson(String value) =>
      fromJson_Enum_FamiliesConstraint(value);

  String toJson() => toJson_Enum_FamiliesConstraint(this);
}

String toJson_Enum_FamiliesConstraint(Enum_FamiliesConstraint e) {
  switch (e) {
    case Enum_FamiliesConstraint.families_pkey:
      return r'families_pkey';
    case Enum_FamiliesConstraint.$unknown:
      return r'$unknown';
  }
}

Enum_FamiliesConstraint fromJson_Enum_FamiliesConstraint(String value) {
  switch (value) {
    case r'families_pkey':
      return Enum_FamiliesConstraint.families_pkey;
    default:
      return Enum_FamiliesConstraint.$unknown;
  }
}

enum Enum_FamiliesFamiliesConstraint {
  families_families_pkey,
  families_families_rel_id_key,
  $unknown;

  factory Enum_FamiliesFamiliesConstraint.fromJson(String value) =>
      fromJson_Enum_FamiliesFamiliesConstraint(value);

  String toJson() => toJson_Enum_FamiliesFamiliesConstraint(this);
}

String toJson_Enum_FamiliesFamiliesConstraint(
  Enum_FamiliesFamiliesConstraint e,
) {
  switch (e) {
    case Enum_FamiliesFamiliesConstraint.families_families_pkey:
      return r'families_families_pkey';
    case Enum_FamiliesFamiliesConstraint.families_families_rel_id_key:
      return r'families_families_rel_id_key';
    case Enum_FamiliesFamiliesConstraint.$unknown:
      return r'$unknown';
  }
}

Enum_FamiliesFamiliesConstraint fromJson_Enum_FamiliesFamiliesConstraint(
  String value,
) {
  switch (value) {
    case r'families_families_pkey':
      return Enum_FamiliesFamiliesConstraint.families_families_pkey;
    case r'families_families_rel_id_key':
      return Enum_FamiliesFamiliesConstraint.families_families_rel_id_key;
    default:
      return Enum_FamiliesFamiliesConstraint.$unknown;
  }
}

enum Enum_FamiliesFamiliesSelectColumn {
  childFamilyId,
  parentFamilyId,
  $unknown;

  factory Enum_FamiliesFamiliesSelectColumn.fromJson(String value) =>
      fromJson_Enum_FamiliesFamiliesSelectColumn(value);

  String toJson() => toJson_Enum_FamiliesFamiliesSelectColumn(this);
}

String toJson_Enum_FamiliesFamiliesSelectColumn(
  Enum_FamiliesFamiliesSelectColumn e,
) {
  switch (e) {
    case Enum_FamiliesFamiliesSelectColumn.childFamilyId:
      return r'childFamilyId';
    case Enum_FamiliesFamiliesSelectColumn.parentFamilyId:
      return r'parentFamilyId';
    case Enum_FamiliesFamiliesSelectColumn.$unknown:
      return r'$unknown';
  }
}

Enum_FamiliesFamiliesSelectColumn fromJson_Enum_FamiliesFamiliesSelectColumn(
  String value,
) {
  switch (value) {
    case r'childFamilyId':
      return Enum_FamiliesFamiliesSelectColumn.childFamilyId;
    case r'parentFamilyId':
      return Enum_FamiliesFamiliesSelectColumn.parentFamilyId;
    default:
      return Enum_FamiliesFamiliesSelectColumn.$unknown;
  }
}

enum Enum_FamiliesFamiliesUpdateColumn {
  $_PLACEHOLDER,
  $unknown;

  factory Enum_FamiliesFamiliesUpdateColumn.fromJson(String value) =>
      fromJson_Enum_FamiliesFamiliesUpdateColumn(value);

  String toJson() => toJson_Enum_FamiliesFamiliesUpdateColumn(this);
}

String toJson_Enum_FamiliesFamiliesUpdateColumn(
  Enum_FamiliesFamiliesUpdateColumn e,
) {
  switch (e) {
    case Enum_FamiliesFamiliesUpdateColumn.$_PLACEHOLDER:
      return r'_PLACEHOLDER';
    case Enum_FamiliesFamiliesUpdateColumn.$unknown:
      return r'$unknown';
  }
}

Enum_FamiliesFamiliesUpdateColumn fromJson_Enum_FamiliesFamiliesUpdateColumn(
  String value,
) {
  switch (value) {
    case r'_PLACEHOLDER':
      return Enum_FamiliesFamiliesUpdateColumn.$_PLACEHOLDER;
    default:
      return Enum_FamiliesFamiliesUpdateColumn.$unknown;
  }
}

enum Enum_FamiliesSelectColumn {
  addressText,
  blurhash,
  churchId,
  color,
  deceasedSpouseName,
  geolocation,
  id,
  marriageDate,
  name,
  notes,
  photoUpdatedAt,
  status,
  $unknown;

  factory Enum_FamiliesSelectColumn.fromJson(String value) =>
      fromJson_Enum_FamiliesSelectColumn(value);

  String toJson() => toJson_Enum_FamiliesSelectColumn(this);
}

String toJson_Enum_FamiliesSelectColumn(Enum_FamiliesSelectColumn e) {
  switch (e) {
    case Enum_FamiliesSelectColumn.addressText:
      return r'addressText';
    case Enum_FamiliesSelectColumn.blurhash:
      return r'blurhash';
    case Enum_FamiliesSelectColumn.churchId:
      return r'churchId';
    case Enum_FamiliesSelectColumn.color:
      return r'color';
    case Enum_FamiliesSelectColumn.deceasedSpouseName:
      return r'deceasedSpouseName';
    case Enum_FamiliesSelectColumn.geolocation:
      return r'geolocation';
    case Enum_FamiliesSelectColumn.id:
      return r'id';
    case Enum_FamiliesSelectColumn.marriageDate:
      return r'marriageDate';
    case Enum_FamiliesSelectColumn.name:
      return r'name';
    case Enum_FamiliesSelectColumn.notes:
      return r'notes';
    case Enum_FamiliesSelectColumn.photoUpdatedAt:
      return r'photoUpdatedAt';
    case Enum_FamiliesSelectColumn.status:
      return r'status';
    case Enum_FamiliesSelectColumn.$unknown:
      return r'$unknown';
  }
}

Enum_FamiliesSelectColumn fromJson_Enum_FamiliesSelectColumn(String value) {
  switch (value) {
    case r'addressText':
      return Enum_FamiliesSelectColumn.addressText;
    case r'blurhash':
      return Enum_FamiliesSelectColumn.blurhash;
    case r'churchId':
      return Enum_FamiliesSelectColumn.churchId;
    case r'color':
      return Enum_FamiliesSelectColumn.color;
    case r'deceasedSpouseName':
      return Enum_FamiliesSelectColumn.deceasedSpouseName;
    case r'geolocation':
      return Enum_FamiliesSelectColumn.geolocation;
    case r'id':
      return Enum_FamiliesSelectColumn.id;
    case r'marriageDate':
      return Enum_FamiliesSelectColumn.marriageDate;
    case r'name':
      return Enum_FamiliesSelectColumn.name;
    case r'notes':
      return Enum_FamiliesSelectColumn.notes;
    case r'photoUpdatedAt':
      return Enum_FamiliesSelectColumn.photoUpdatedAt;
    case r'status':
      return Enum_FamiliesSelectColumn.status;
    default:
      return Enum_FamiliesSelectColumn.$unknown;
  }
}

enum Enum_FamiliesUpdateColumn {
  addressText,
  churchId,
  color,
  deceasedSpouseName,
  geolocation,
  marriageDate,
  name,
  notes,
  status,
  $unknown;

  factory Enum_FamiliesUpdateColumn.fromJson(String value) =>
      fromJson_Enum_FamiliesUpdateColumn(value);

  String toJson() => toJson_Enum_FamiliesUpdateColumn(this);
}

String toJson_Enum_FamiliesUpdateColumn(Enum_FamiliesUpdateColumn e) {
  switch (e) {
    case Enum_FamiliesUpdateColumn.addressText:
      return r'addressText';
    case Enum_FamiliesUpdateColumn.churchId:
      return r'churchId';
    case Enum_FamiliesUpdateColumn.color:
      return r'color';
    case Enum_FamiliesUpdateColumn.deceasedSpouseName:
      return r'deceasedSpouseName';
    case Enum_FamiliesUpdateColumn.geolocation:
      return r'geolocation';
    case Enum_FamiliesUpdateColumn.marriageDate:
      return r'marriageDate';
    case Enum_FamiliesUpdateColumn.name:
      return r'name';
    case Enum_FamiliesUpdateColumn.notes:
      return r'notes';
    case Enum_FamiliesUpdateColumn.status:
      return r'status';
    case Enum_FamiliesUpdateColumn.$unknown:
      return r'$unknown';
  }
}

Enum_FamiliesUpdateColumn fromJson_Enum_FamiliesUpdateColumn(String value) {
  switch (value) {
    case r'addressText':
      return Enum_FamiliesUpdateColumn.addressText;
    case r'churchId':
      return Enum_FamiliesUpdateColumn.churchId;
    case r'color':
      return Enum_FamiliesUpdateColumn.color;
    case r'deceasedSpouseName':
      return Enum_FamiliesUpdateColumn.deceasedSpouseName;
    case r'geolocation':
      return Enum_FamiliesUpdateColumn.geolocation;
    case r'marriageDate':
      return Enum_FamiliesUpdateColumn.marriageDate;
    case r'name':
      return Enum_FamiliesUpdateColumn.name;
    case r'notes':
      return Enum_FamiliesUpdateColumn.notes;
    case r'status':
      return Enum_FamiliesUpdateColumn.status;
    default:
      return Enum_FamiliesUpdateColumn.$unknown;
  }
}

enum Enum_FathersConstraint {
  fathers_name_key,
  fathers_pkey,
  $unknown;

  factory Enum_FathersConstraint.fromJson(String value) =>
      fromJson_Enum_FathersConstraint(value);

  String toJson() => toJson_Enum_FathersConstraint(this);
}

String toJson_Enum_FathersConstraint(Enum_FathersConstraint e) {
  switch (e) {
    case Enum_FathersConstraint.fathers_name_key:
      return r'fathers_name_key';
    case Enum_FathersConstraint.fathers_pkey:
      return r'fathers_pkey';
    case Enum_FathersConstraint.$unknown:
      return r'$unknown';
  }
}

Enum_FathersConstraint fromJson_Enum_FathersConstraint(String value) {
  switch (value) {
    case r'fathers_name_key':
      return Enum_FathersConstraint.fathers_name_key;
    case r'fathers_pkey':
      return Enum_FathersConstraint.fathers_pkey;
    default:
      return Enum_FathersConstraint.$unknown;
  }
}

enum Enum_FathersSelectColumn {
  churchId,
  id,
  isHidden,
  name,
  $unknown;

  factory Enum_FathersSelectColumn.fromJson(String value) =>
      fromJson_Enum_FathersSelectColumn(value);

  String toJson() => toJson_Enum_FathersSelectColumn(this);
}

String toJson_Enum_FathersSelectColumn(Enum_FathersSelectColumn e) {
  switch (e) {
    case Enum_FathersSelectColumn.churchId:
      return r'churchId';
    case Enum_FathersSelectColumn.id:
      return r'id';
    case Enum_FathersSelectColumn.isHidden:
      return r'isHidden';
    case Enum_FathersSelectColumn.name:
      return r'name';
    case Enum_FathersSelectColumn.$unknown:
      return r'$unknown';
  }
}

Enum_FathersSelectColumn fromJson_Enum_FathersSelectColumn(String value) {
  switch (value) {
    case r'churchId':
      return Enum_FathersSelectColumn.churchId;
    case r'id':
      return Enum_FathersSelectColumn.id;
    case r'isHidden':
      return Enum_FathersSelectColumn.isHidden;
    case r'name':
      return Enum_FathersSelectColumn.name;
    default:
      return Enum_FathersSelectColumn.$unknown;
  }
}

enum Enum_FathersUpdateColumn {
  name,
  $unknown;

  factory Enum_FathersUpdateColumn.fromJson(String value) =>
      fromJson_Enum_FathersUpdateColumn(value);

  String toJson() => toJson_Enum_FathersUpdateColumn(this);
}

String toJson_Enum_FathersUpdateColumn(Enum_FathersUpdateColumn e) {
  switch (e) {
    case Enum_FathersUpdateColumn.name:
      return r'name';
    case Enum_FathersUpdateColumn.$unknown:
      return r'$unknown';
  }
}

Enum_FathersUpdateColumn fromJson_Enum_FathersUpdateColumn(String value) {
  switch (value) {
    case r'name':
      return Enum_FathersUpdateColumn.name;
    default:
      return Enum_FathersUpdateColumn.$unknown;
  }
}

enum Enum_GroupsConstraint {
  groups_pkey,
  $unknown;

  factory Enum_GroupsConstraint.fromJson(String value) =>
      fromJson_Enum_GroupsConstraint(value);

  String toJson() => toJson_Enum_GroupsConstraint(this);
}

String toJson_Enum_GroupsConstraint(Enum_GroupsConstraint e) {
  switch (e) {
    case Enum_GroupsConstraint.groups_pkey:
      return r'groups_pkey';
    case Enum_GroupsConstraint.$unknown:
      return r'$unknown';
  }
}

Enum_GroupsConstraint fromJson_Enum_GroupsConstraint(String value) {
  switch (value) {
    case r'groups_pkey':
      return Enum_GroupsConstraint.groups_pkey;
    default:
      return Enum_GroupsConstraint.$unknown;
  }
}

enum Enum_GroupsSelectColumn {
  blurhash,
  color,
  id,
  name,
  photoUpdatedAt,
  serviceId,
  validity,
  $unknown;

  factory Enum_GroupsSelectColumn.fromJson(String value) =>
      fromJson_Enum_GroupsSelectColumn(value);

  String toJson() => toJson_Enum_GroupsSelectColumn(this);
}

String toJson_Enum_GroupsSelectColumn(Enum_GroupsSelectColumn e) {
  switch (e) {
    case Enum_GroupsSelectColumn.blurhash:
      return r'blurhash';
    case Enum_GroupsSelectColumn.color:
      return r'color';
    case Enum_GroupsSelectColumn.id:
      return r'id';
    case Enum_GroupsSelectColumn.name:
      return r'name';
    case Enum_GroupsSelectColumn.photoUpdatedAt:
      return r'photoUpdatedAt';
    case Enum_GroupsSelectColumn.serviceId:
      return r'serviceId';
    case Enum_GroupsSelectColumn.validity:
      return r'validity';
    case Enum_GroupsSelectColumn.$unknown:
      return r'$unknown';
  }
}

Enum_GroupsSelectColumn fromJson_Enum_GroupsSelectColumn(String value) {
  switch (value) {
    case r'blurhash':
      return Enum_GroupsSelectColumn.blurhash;
    case r'color':
      return Enum_GroupsSelectColumn.color;
    case r'id':
      return Enum_GroupsSelectColumn.id;
    case r'name':
      return Enum_GroupsSelectColumn.name;
    case r'photoUpdatedAt':
      return Enum_GroupsSelectColumn.photoUpdatedAt;
    case r'serviceId':
      return Enum_GroupsSelectColumn.serviceId;
    case r'validity':
      return Enum_GroupsSelectColumn.validity;
    default:
      return Enum_GroupsSelectColumn.$unknown;
  }
}

enum Enum_GroupsUpdateColumn {
  color,
  name,
  serviceId,
  validity,
  $unknown;

  factory Enum_GroupsUpdateColumn.fromJson(String value) =>
      fromJson_Enum_GroupsUpdateColumn(value);

  String toJson() => toJson_Enum_GroupsUpdateColumn(this);
}

String toJson_Enum_GroupsUpdateColumn(Enum_GroupsUpdateColumn e) {
  switch (e) {
    case Enum_GroupsUpdateColumn.color:
      return r'color';
    case Enum_GroupsUpdateColumn.name:
      return r'name';
    case Enum_GroupsUpdateColumn.serviceId:
      return r'serviceId';
    case Enum_GroupsUpdateColumn.validity:
      return r'validity';
    case Enum_GroupsUpdateColumn.$unknown:
      return r'$unknown';
  }
}

Enum_GroupsUpdateColumn fromJson_Enum_GroupsUpdateColumn(String value) {
  switch (value) {
    case r'color':
      return Enum_GroupsUpdateColumn.color;
    case r'name':
      return Enum_GroupsUpdateColumn.name;
    case r'serviceId':
      return Enum_GroupsUpdateColumn.serviceId;
    case r'validity':
      return Enum_GroupsUpdateColumn.validity;
    default:
      return Enum_GroupsUpdateColumn.$unknown;
  }
}

enum Enum_HistoryAttendanceDaysConstraint {
  attendance_days_pkey,
  $unknown;

  factory Enum_HistoryAttendanceDaysConstraint.fromJson(String value) =>
      fromJson_Enum_HistoryAttendanceDaysConstraint(value);

  String toJson() => toJson_Enum_HistoryAttendanceDaysConstraint(this);
}

String toJson_Enum_HistoryAttendanceDaysConstraint(
  Enum_HistoryAttendanceDaysConstraint e,
) {
  switch (e) {
    case Enum_HistoryAttendanceDaysConstraint.attendance_days_pkey:
      return r'attendance_days_pkey';
    case Enum_HistoryAttendanceDaysConstraint.$unknown:
      return r'$unknown';
  }
}

Enum_HistoryAttendanceDaysConstraint
fromJson_Enum_HistoryAttendanceDaysConstraint(String value) {
  switch (value) {
    case r'attendance_days_pkey':
      return Enum_HistoryAttendanceDaysConstraint.attendance_days_pkey;
    default:
      return Enum_HistoryAttendanceDaysConstraint.$unknown;
  }
}

enum Enum_HistoryAttendanceDaysConstraintsConstraint {
  attendance_days_constraints_day_service_service_study_year_s_ke,
  attendance_days_constraints_pkey,
  $unknown;

  factory Enum_HistoryAttendanceDaysConstraintsConstraint.fromJson(
    String value,
  ) => fromJson_Enum_HistoryAttendanceDaysConstraintsConstraint(value);

  String toJson() =>
      toJson_Enum_HistoryAttendanceDaysConstraintsConstraint(this);
}

String toJson_Enum_HistoryAttendanceDaysConstraintsConstraint(
  Enum_HistoryAttendanceDaysConstraintsConstraint e,
) {
  switch (e) {
    case Enum_HistoryAttendanceDaysConstraintsConstraint
        .attendance_days_constraints_day_service_service_study_year_s_ke:
      return r'attendance_days_constraints_day_service_service_study_year_s_ke';
    case Enum_HistoryAttendanceDaysConstraintsConstraint
        .attendance_days_constraints_pkey:
      return r'attendance_days_constraints_pkey';
    case Enum_HistoryAttendanceDaysConstraintsConstraint.$unknown:
      return r'$unknown';
  }
}

Enum_HistoryAttendanceDaysConstraintsConstraint
fromJson_Enum_HistoryAttendanceDaysConstraintsConstraint(String value) {
  switch (value) {
    case r'attendance_days_constraints_day_service_service_study_year_s_ke':
      return Enum_HistoryAttendanceDaysConstraintsConstraint
          .attendance_days_constraints_day_service_service_study_year_s_ke;
    case r'attendance_days_constraints_pkey':
      return Enum_HistoryAttendanceDaysConstraintsConstraint
          .attendance_days_constraints_pkey;
    default:
      return Enum_HistoryAttendanceDaysConstraintsConstraint.$unknown;
  }
}

enum Enum_HistoryAttendanceDaysConstraintsSelectColumn {
  dayId,
  groupId,
  id,
  serviceGender,
  serviceId,
  serviceStudyYear,
  $unknown;

  factory Enum_HistoryAttendanceDaysConstraintsSelectColumn.fromJson(
    String value,
  ) => fromJson_Enum_HistoryAttendanceDaysConstraintsSelectColumn(value);

  String toJson() =>
      toJson_Enum_HistoryAttendanceDaysConstraintsSelectColumn(this);
}

String toJson_Enum_HistoryAttendanceDaysConstraintsSelectColumn(
  Enum_HistoryAttendanceDaysConstraintsSelectColumn e,
) {
  switch (e) {
    case Enum_HistoryAttendanceDaysConstraintsSelectColumn.dayId:
      return r'dayId';
    case Enum_HistoryAttendanceDaysConstraintsSelectColumn.groupId:
      return r'groupId';
    case Enum_HistoryAttendanceDaysConstraintsSelectColumn.id:
      return r'id';
    case Enum_HistoryAttendanceDaysConstraintsSelectColumn.serviceGender:
      return r'serviceGender';
    case Enum_HistoryAttendanceDaysConstraintsSelectColumn.serviceId:
      return r'serviceId';
    case Enum_HistoryAttendanceDaysConstraintsSelectColumn.serviceStudyYear:
      return r'serviceStudyYear';
    case Enum_HistoryAttendanceDaysConstraintsSelectColumn.$unknown:
      return r'$unknown';
  }
}

Enum_HistoryAttendanceDaysConstraintsSelectColumn
fromJson_Enum_HistoryAttendanceDaysConstraintsSelectColumn(String value) {
  switch (value) {
    case r'dayId':
      return Enum_HistoryAttendanceDaysConstraintsSelectColumn.dayId;
    case r'groupId':
      return Enum_HistoryAttendanceDaysConstraintsSelectColumn.groupId;
    case r'id':
      return Enum_HistoryAttendanceDaysConstraintsSelectColumn.id;
    case r'serviceGender':
      return Enum_HistoryAttendanceDaysConstraintsSelectColumn.serviceGender;
    case r'serviceId':
      return Enum_HistoryAttendanceDaysConstraintsSelectColumn.serviceId;
    case r'serviceStudyYear':
      return Enum_HistoryAttendanceDaysConstraintsSelectColumn.serviceStudyYear;
    default:
      return Enum_HistoryAttendanceDaysConstraintsSelectColumn.$unknown;
  }
}

enum Enum_HistoryAttendanceDaysConstraintsSelectColumnHistoryAttendanceDaysConstraintsAggregateBoolExpBool_andArgumentsColumns {
  serviceGender,
  $unknown;

  factory Enum_HistoryAttendanceDaysConstraintsSelectColumnHistoryAttendanceDaysConstraintsAggregateBoolExpBool_andArgumentsColumns.fromJson(
    String value,
  ) =>
      fromJson_Enum_HistoryAttendanceDaysConstraintsSelectColumnHistoryAttendanceDaysConstraintsAggregateBoolExpBool_andArgumentsColumns(
        value,
      );

  String toJson() =>
      toJson_Enum_HistoryAttendanceDaysConstraintsSelectColumnHistoryAttendanceDaysConstraintsAggregateBoolExpBool_andArgumentsColumns(
        this,
      );
}

String
toJson_Enum_HistoryAttendanceDaysConstraintsSelectColumnHistoryAttendanceDaysConstraintsAggregateBoolExpBool_andArgumentsColumns(
  Enum_HistoryAttendanceDaysConstraintsSelectColumnHistoryAttendanceDaysConstraintsAggregateBoolExpBool_andArgumentsColumns
  e,
) {
  switch (e) {
    case Enum_HistoryAttendanceDaysConstraintsSelectColumnHistoryAttendanceDaysConstraintsAggregateBoolExpBool_andArgumentsColumns
        .serviceGender:
      return r'serviceGender';
    case Enum_HistoryAttendanceDaysConstraintsSelectColumnHistoryAttendanceDaysConstraintsAggregateBoolExpBool_andArgumentsColumns
        .$unknown:
      return r'$unknown';
  }
}

Enum_HistoryAttendanceDaysConstraintsSelectColumnHistoryAttendanceDaysConstraintsAggregateBoolExpBool_andArgumentsColumns
fromJson_Enum_HistoryAttendanceDaysConstraintsSelectColumnHistoryAttendanceDaysConstraintsAggregateBoolExpBool_andArgumentsColumns(
  String value,
) {
  switch (value) {
    case r'serviceGender':
      return Enum_HistoryAttendanceDaysConstraintsSelectColumnHistoryAttendanceDaysConstraintsAggregateBoolExpBool_andArgumentsColumns
          .serviceGender;
    default:
      return Enum_HistoryAttendanceDaysConstraintsSelectColumnHistoryAttendanceDaysConstraintsAggregateBoolExpBool_andArgumentsColumns
          .$unknown;
  }
}

enum Enum_HistoryAttendanceDaysConstraintsSelectColumnHistoryAttendanceDaysConstraintsAggregateBoolExpBool_orArgumentsColumns {
  serviceGender,
  $unknown;

  factory Enum_HistoryAttendanceDaysConstraintsSelectColumnHistoryAttendanceDaysConstraintsAggregateBoolExpBool_orArgumentsColumns.fromJson(
    String value,
  ) =>
      fromJson_Enum_HistoryAttendanceDaysConstraintsSelectColumnHistoryAttendanceDaysConstraintsAggregateBoolExpBool_orArgumentsColumns(
        value,
      );

  String toJson() =>
      toJson_Enum_HistoryAttendanceDaysConstraintsSelectColumnHistoryAttendanceDaysConstraintsAggregateBoolExpBool_orArgumentsColumns(
        this,
      );
}

String
toJson_Enum_HistoryAttendanceDaysConstraintsSelectColumnHistoryAttendanceDaysConstraintsAggregateBoolExpBool_orArgumentsColumns(
  Enum_HistoryAttendanceDaysConstraintsSelectColumnHistoryAttendanceDaysConstraintsAggregateBoolExpBool_orArgumentsColumns
  e,
) {
  switch (e) {
    case Enum_HistoryAttendanceDaysConstraintsSelectColumnHistoryAttendanceDaysConstraintsAggregateBoolExpBool_orArgumentsColumns
        .serviceGender:
      return r'serviceGender';
    case Enum_HistoryAttendanceDaysConstraintsSelectColumnHistoryAttendanceDaysConstraintsAggregateBoolExpBool_orArgumentsColumns
        .$unknown:
      return r'$unknown';
  }
}

Enum_HistoryAttendanceDaysConstraintsSelectColumnHistoryAttendanceDaysConstraintsAggregateBoolExpBool_orArgumentsColumns
fromJson_Enum_HistoryAttendanceDaysConstraintsSelectColumnHistoryAttendanceDaysConstraintsAggregateBoolExpBool_orArgumentsColumns(
  String value,
) {
  switch (value) {
    case r'serviceGender':
      return Enum_HistoryAttendanceDaysConstraintsSelectColumnHistoryAttendanceDaysConstraintsAggregateBoolExpBool_orArgumentsColumns
          .serviceGender;
    default:
      return Enum_HistoryAttendanceDaysConstraintsSelectColumnHistoryAttendanceDaysConstraintsAggregateBoolExpBool_orArgumentsColumns
          .$unknown;
  }
}

enum Enum_HistoryAttendanceDaysConstraintsUpdateColumn {
  $_PLACEHOLDER,
  $unknown;

  factory Enum_HistoryAttendanceDaysConstraintsUpdateColumn.fromJson(
    String value,
  ) => fromJson_Enum_HistoryAttendanceDaysConstraintsUpdateColumn(value);

  String toJson() =>
      toJson_Enum_HistoryAttendanceDaysConstraintsUpdateColumn(this);
}

String toJson_Enum_HistoryAttendanceDaysConstraintsUpdateColumn(
  Enum_HistoryAttendanceDaysConstraintsUpdateColumn e,
) {
  switch (e) {
    case Enum_HistoryAttendanceDaysConstraintsUpdateColumn.$_PLACEHOLDER:
      return r'_PLACEHOLDER';
    case Enum_HistoryAttendanceDaysConstraintsUpdateColumn.$unknown:
      return r'$unknown';
  }
}

Enum_HistoryAttendanceDaysConstraintsUpdateColumn
fromJson_Enum_HistoryAttendanceDaysConstraintsUpdateColumn(String value) {
  switch (value) {
    case r'_PLACEHOLDER':
      return Enum_HistoryAttendanceDaysConstraintsUpdateColumn.$_PLACEHOLDER;
    default:
      return Enum_HistoryAttendanceDaysConstraintsUpdateColumn.$unknown;
  }
}

enum Enum_HistoryAttendanceDaysSelectColumn {
  day,
  notes,
  $unknown;

  factory Enum_HistoryAttendanceDaysSelectColumn.fromJson(String value) =>
      fromJson_Enum_HistoryAttendanceDaysSelectColumn(value);

  String toJson() => toJson_Enum_HistoryAttendanceDaysSelectColumn(this);
}

String toJson_Enum_HistoryAttendanceDaysSelectColumn(
  Enum_HistoryAttendanceDaysSelectColumn e,
) {
  switch (e) {
    case Enum_HistoryAttendanceDaysSelectColumn.day:
      return r'day';
    case Enum_HistoryAttendanceDaysSelectColumn.notes:
      return r'notes';
    case Enum_HistoryAttendanceDaysSelectColumn.$unknown:
      return r'$unknown';
  }
}

Enum_HistoryAttendanceDaysSelectColumn
fromJson_Enum_HistoryAttendanceDaysSelectColumn(String value) {
  switch (value) {
    case r'day':
      return Enum_HistoryAttendanceDaysSelectColumn.day;
    case r'notes':
      return Enum_HistoryAttendanceDaysSelectColumn.notes;
    default:
      return Enum_HistoryAttendanceDaysSelectColumn.$unknown;
  }
}

enum Enum_HistoryAttendanceDaysUpdateColumn {
  day,
  notes,
  $unknown;

  factory Enum_HistoryAttendanceDaysUpdateColumn.fromJson(String value) =>
      fromJson_Enum_HistoryAttendanceDaysUpdateColumn(value);

  String toJson() => toJson_Enum_HistoryAttendanceDaysUpdateColumn(this);
}

String toJson_Enum_HistoryAttendanceDaysUpdateColumn(
  Enum_HistoryAttendanceDaysUpdateColumn e,
) {
  switch (e) {
    case Enum_HistoryAttendanceDaysUpdateColumn.day:
      return r'day';
    case Enum_HistoryAttendanceDaysUpdateColumn.notes:
      return r'notes';
    case Enum_HistoryAttendanceDaysUpdateColumn.$unknown:
      return r'$unknown';
  }
}

Enum_HistoryAttendanceDaysUpdateColumn
fromJson_Enum_HistoryAttendanceDaysUpdateColumn(String value) {
  switch (value) {
    case r'day':
      return Enum_HistoryAttendanceDaysUpdateColumn.day;
    case r'notes':
      return Enum_HistoryAttendanceDaysUpdateColumn.notes;
    default:
      return Enum_HistoryAttendanceDaysUpdateColumn.$unknown;
  }
}

enum Enum_HistoryAttendanceHistoryConstraint {
  attendance_history_day_id_service_id_group_id_person_id_key,
  attendance_history_pkey,
  $unknown;

  factory Enum_HistoryAttendanceHistoryConstraint.fromJson(String value) =>
      fromJson_Enum_HistoryAttendanceHistoryConstraint(value);

  String toJson() => toJson_Enum_HistoryAttendanceHistoryConstraint(this);
}

String toJson_Enum_HistoryAttendanceHistoryConstraint(
  Enum_HistoryAttendanceHistoryConstraint e,
) {
  switch (e) {
    case Enum_HistoryAttendanceHistoryConstraint
        .attendance_history_day_id_service_id_group_id_person_id_key:
      return r'attendance_history_day_id_service_id_group_id_person_id_key';
    case Enum_HistoryAttendanceHistoryConstraint.attendance_history_pkey:
      return r'attendance_history_pkey';
    case Enum_HistoryAttendanceHistoryConstraint.$unknown:
      return r'$unknown';
  }
}

Enum_HistoryAttendanceHistoryConstraint
fromJson_Enum_HistoryAttendanceHistoryConstraint(String value) {
  switch (value) {
    case r'attendance_history_day_id_service_id_group_id_person_id_key':
      return Enum_HistoryAttendanceHistoryConstraint
          .attendance_history_day_id_service_id_group_id_person_id_key;
    case r'attendance_history_pkey':
      return Enum_HistoryAttendanceHistoryConstraint.attendance_history_pkey;
    default:
      return Enum_HistoryAttendanceHistoryConstraint.$unknown;
  }
}

enum Enum_HistoryAttendanceHistorySelectColumn {
  asAdmin,
  dayId,
  groupId,
  id,
  personId,
  recordedBy,
  serviceGender,
  serviceId,
  serviceStudyYear,
  time,
  $unknown;

  factory Enum_HistoryAttendanceHistorySelectColumn.fromJson(String value) =>
      fromJson_Enum_HistoryAttendanceHistorySelectColumn(value);

  String toJson() => toJson_Enum_HistoryAttendanceHistorySelectColumn(this);
}

String toJson_Enum_HistoryAttendanceHistorySelectColumn(
  Enum_HistoryAttendanceHistorySelectColumn e,
) {
  switch (e) {
    case Enum_HistoryAttendanceHistorySelectColumn.asAdmin:
      return r'asAdmin';
    case Enum_HistoryAttendanceHistorySelectColumn.dayId:
      return r'dayId';
    case Enum_HistoryAttendanceHistorySelectColumn.groupId:
      return r'groupId';
    case Enum_HistoryAttendanceHistorySelectColumn.id:
      return r'id';
    case Enum_HistoryAttendanceHistorySelectColumn.personId:
      return r'personId';
    case Enum_HistoryAttendanceHistorySelectColumn.recordedBy:
      return r'recordedBy';
    case Enum_HistoryAttendanceHistorySelectColumn.serviceGender:
      return r'serviceGender';
    case Enum_HistoryAttendanceHistorySelectColumn.serviceId:
      return r'serviceId';
    case Enum_HistoryAttendanceHistorySelectColumn.serviceStudyYear:
      return r'serviceStudyYear';
    case Enum_HistoryAttendanceHistorySelectColumn.time:
      return r'time';
    case Enum_HistoryAttendanceHistorySelectColumn.$unknown:
      return r'$unknown';
  }
}

Enum_HistoryAttendanceHistorySelectColumn
fromJson_Enum_HistoryAttendanceHistorySelectColumn(String value) {
  switch (value) {
    case r'asAdmin':
      return Enum_HistoryAttendanceHistorySelectColumn.asAdmin;
    case r'dayId':
      return Enum_HistoryAttendanceHistorySelectColumn.dayId;
    case r'groupId':
      return Enum_HistoryAttendanceHistorySelectColumn.groupId;
    case r'id':
      return Enum_HistoryAttendanceHistorySelectColumn.id;
    case r'personId':
      return Enum_HistoryAttendanceHistorySelectColumn.personId;
    case r'recordedBy':
      return Enum_HistoryAttendanceHistorySelectColumn.recordedBy;
    case r'serviceGender':
      return Enum_HistoryAttendanceHistorySelectColumn.serviceGender;
    case r'serviceId':
      return Enum_HistoryAttendanceHistorySelectColumn.serviceId;
    case r'serviceStudyYear':
      return Enum_HistoryAttendanceHistorySelectColumn.serviceStudyYear;
    case r'time':
      return Enum_HistoryAttendanceHistorySelectColumn.time;
    default:
      return Enum_HistoryAttendanceHistorySelectColumn.$unknown;
  }
}

enum Enum_HistoryAttendanceHistorySelectColumnHistoryAttendanceHistoryAggregateBoolExpBool_andArgumentsColumns {
  asAdmin,
  serviceGender,
  $unknown;

  factory Enum_HistoryAttendanceHistorySelectColumnHistoryAttendanceHistoryAggregateBoolExpBool_andArgumentsColumns.fromJson(
    String value,
  ) =>
      fromJson_Enum_HistoryAttendanceHistorySelectColumnHistoryAttendanceHistoryAggregateBoolExpBool_andArgumentsColumns(
        value,
      );

  String toJson() =>
      toJson_Enum_HistoryAttendanceHistorySelectColumnHistoryAttendanceHistoryAggregateBoolExpBool_andArgumentsColumns(
        this,
      );
}

String
toJson_Enum_HistoryAttendanceHistorySelectColumnHistoryAttendanceHistoryAggregateBoolExpBool_andArgumentsColumns(
  Enum_HistoryAttendanceHistorySelectColumnHistoryAttendanceHistoryAggregateBoolExpBool_andArgumentsColumns
  e,
) {
  switch (e) {
    case Enum_HistoryAttendanceHistorySelectColumnHistoryAttendanceHistoryAggregateBoolExpBool_andArgumentsColumns
        .asAdmin:
      return r'asAdmin';
    case Enum_HistoryAttendanceHistorySelectColumnHistoryAttendanceHistoryAggregateBoolExpBool_andArgumentsColumns
        .serviceGender:
      return r'serviceGender';
    case Enum_HistoryAttendanceHistorySelectColumnHistoryAttendanceHistoryAggregateBoolExpBool_andArgumentsColumns
        .$unknown:
      return r'$unknown';
  }
}

Enum_HistoryAttendanceHistorySelectColumnHistoryAttendanceHistoryAggregateBoolExpBool_andArgumentsColumns
fromJson_Enum_HistoryAttendanceHistorySelectColumnHistoryAttendanceHistoryAggregateBoolExpBool_andArgumentsColumns(
  String value,
) {
  switch (value) {
    case r'asAdmin':
      return Enum_HistoryAttendanceHistorySelectColumnHistoryAttendanceHistoryAggregateBoolExpBool_andArgumentsColumns
          .asAdmin;
    case r'serviceGender':
      return Enum_HistoryAttendanceHistorySelectColumnHistoryAttendanceHistoryAggregateBoolExpBool_andArgumentsColumns
          .serviceGender;
    default:
      return Enum_HistoryAttendanceHistorySelectColumnHistoryAttendanceHistoryAggregateBoolExpBool_andArgumentsColumns
          .$unknown;
  }
}

enum Enum_HistoryAttendanceHistorySelectColumnHistoryAttendanceHistoryAggregateBoolExpBool_orArgumentsColumns {
  asAdmin,
  serviceGender,
  $unknown;

  factory Enum_HistoryAttendanceHistorySelectColumnHistoryAttendanceHistoryAggregateBoolExpBool_orArgumentsColumns.fromJson(
    String value,
  ) =>
      fromJson_Enum_HistoryAttendanceHistorySelectColumnHistoryAttendanceHistoryAggregateBoolExpBool_orArgumentsColumns(
        value,
      );

  String toJson() =>
      toJson_Enum_HistoryAttendanceHistorySelectColumnHistoryAttendanceHistoryAggregateBoolExpBool_orArgumentsColumns(
        this,
      );
}

String
toJson_Enum_HistoryAttendanceHistorySelectColumnHistoryAttendanceHistoryAggregateBoolExpBool_orArgumentsColumns(
  Enum_HistoryAttendanceHistorySelectColumnHistoryAttendanceHistoryAggregateBoolExpBool_orArgumentsColumns
  e,
) {
  switch (e) {
    case Enum_HistoryAttendanceHistorySelectColumnHistoryAttendanceHistoryAggregateBoolExpBool_orArgumentsColumns
        .asAdmin:
      return r'asAdmin';
    case Enum_HistoryAttendanceHistorySelectColumnHistoryAttendanceHistoryAggregateBoolExpBool_orArgumentsColumns
        .serviceGender:
      return r'serviceGender';
    case Enum_HistoryAttendanceHistorySelectColumnHistoryAttendanceHistoryAggregateBoolExpBool_orArgumentsColumns
        .$unknown:
      return r'$unknown';
  }
}

Enum_HistoryAttendanceHistorySelectColumnHistoryAttendanceHistoryAggregateBoolExpBool_orArgumentsColumns
fromJson_Enum_HistoryAttendanceHistorySelectColumnHistoryAttendanceHistoryAggregateBoolExpBool_orArgumentsColumns(
  String value,
) {
  switch (value) {
    case r'asAdmin':
      return Enum_HistoryAttendanceHistorySelectColumnHistoryAttendanceHistoryAggregateBoolExpBool_orArgumentsColumns
          .asAdmin;
    case r'serviceGender':
      return Enum_HistoryAttendanceHistorySelectColumnHistoryAttendanceHistoryAggregateBoolExpBool_orArgumentsColumns
          .serviceGender;
    default:
      return Enum_HistoryAttendanceHistorySelectColumnHistoryAttendanceHistoryAggregateBoolExpBool_orArgumentsColumns
          .$unknown;
  }
}

enum Enum_HistoryAttendanceHistoryUpdateColumn {
  dayId,
  groupId,
  personId,
  serviceId,
  time,
  $unknown;

  factory Enum_HistoryAttendanceHistoryUpdateColumn.fromJson(String value) =>
      fromJson_Enum_HistoryAttendanceHistoryUpdateColumn(value);

  String toJson() => toJson_Enum_HistoryAttendanceHistoryUpdateColumn(this);
}

String toJson_Enum_HistoryAttendanceHistoryUpdateColumn(
  Enum_HistoryAttendanceHistoryUpdateColumn e,
) {
  switch (e) {
    case Enum_HistoryAttendanceHistoryUpdateColumn.dayId:
      return r'dayId';
    case Enum_HistoryAttendanceHistoryUpdateColumn.groupId:
      return r'groupId';
    case Enum_HistoryAttendanceHistoryUpdateColumn.personId:
      return r'personId';
    case Enum_HistoryAttendanceHistoryUpdateColumn.serviceId:
      return r'serviceId';
    case Enum_HistoryAttendanceHistoryUpdateColumn.time:
      return r'time';
    case Enum_HistoryAttendanceHistoryUpdateColumn.$unknown:
      return r'$unknown';
  }
}

Enum_HistoryAttendanceHistoryUpdateColumn
fromJson_Enum_HistoryAttendanceHistoryUpdateColumn(String value) {
  switch (value) {
    case r'dayId':
      return Enum_HistoryAttendanceHistoryUpdateColumn.dayId;
    case r'groupId':
      return Enum_HistoryAttendanceHistoryUpdateColumn.groupId;
    case r'personId':
      return Enum_HistoryAttendanceHistoryUpdateColumn.personId;
    case r'serviceId':
      return Enum_HistoryAttendanceHistoryUpdateColumn.serviceId;
    case r'time':
      return Enum_HistoryAttendanceHistoryUpdateColumn.time;
    default:
      return Enum_HistoryAttendanceHistoryUpdateColumn.$unknown;
  }
}

enum Enum_HistoryCallHistoryConstraint {
  call_history_pkey,
  $unknown;

  factory Enum_HistoryCallHistoryConstraint.fromJson(String value) =>
      fromJson_Enum_HistoryCallHistoryConstraint(value);

  String toJson() => toJson_Enum_HistoryCallHistoryConstraint(this);
}

String toJson_Enum_HistoryCallHistoryConstraint(
  Enum_HistoryCallHistoryConstraint e,
) {
  switch (e) {
    case Enum_HistoryCallHistoryConstraint.call_history_pkey:
      return r'call_history_pkey';
    case Enum_HistoryCallHistoryConstraint.$unknown:
      return r'$unknown';
  }
}

Enum_HistoryCallHistoryConstraint fromJson_Enum_HistoryCallHistoryConstraint(
  String value,
) {
  switch (value) {
    case r'call_history_pkey':
      return Enum_HistoryCallHistoryConstraint.call_history_pkey;
    default:
      return Enum_HistoryCallHistoryConstraint.$unknown;
  }
}

enum Enum_HistoryCallHistorySelectColumn {
  personId,
  recordedBy,
  time,
  $unknown;

  factory Enum_HistoryCallHistorySelectColumn.fromJson(String value) =>
      fromJson_Enum_HistoryCallHistorySelectColumn(value);

  String toJson() => toJson_Enum_HistoryCallHistorySelectColumn(this);
}

String toJson_Enum_HistoryCallHistorySelectColumn(
  Enum_HistoryCallHistorySelectColumn e,
) {
  switch (e) {
    case Enum_HistoryCallHistorySelectColumn.personId:
      return r'personId';
    case Enum_HistoryCallHistorySelectColumn.recordedBy:
      return r'recordedBy';
    case Enum_HistoryCallHistorySelectColumn.time:
      return r'time';
    case Enum_HistoryCallHistorySelectColumn.$unknown:
      return r'$unknown';
  }
}

Enum_HistoryCallHistorySelectColumn
fromJson_Enum_HistoryCallHistorySelectColumn(String value) {
  switch (value) {
    case r'personId':
      return Enum_HistoryCallHistorySelectColumn.personId;
    case r'recordedBy':
      return Enum_HistoryCallHistorySelectColumn.recordedBy;
    case r'time':
      return Enum_HistoryCallHistorySelectColumn.time;
    default:
      return Enum_HistoryCallHistorySelectColumn.$unknown;
  }
}

enum Enum_HistoryCallHistoryUpdateColumn {
  $_PLACEHOLDER,
  $unknown;

  factory Enum_HistoryCallHistoryUpdateColumn.fromJson(String value) =>
      fromJson_Enum_HistoryCallHistoryUpdateColumn(value);

  String toJson() => toJson_Enum_HistoryCallHistoryUpdateColumn(this);
}

String toJson_Enum_HistoryCallHistoryUpdateColumn(
  Enum_HistoryCallHistoryUpdateColumn e,
) {
  switch (e) {
    case Enum_HistoryCallHistoryUpdateColumn.$_PLACEHOLDER:
      return r'_PLACEHOLDER';
    case Enum_HistoryCallHistoryUpdateColumn.$unknown:
      return r'$unknown';
  }
}

Enum_HistoryCallHistoryUpdateColumn
fromJson_Enum_HistoryCallHistoryUpdateColumn(String value) {
  switch (value) {
    case r'_PLACEHOLDER':
      return Enum_HistoryCallHistoryUpdateColumn.$_PLACEHOLDER;
    default:
      return Enum_HistoryCallHistoryUpdateColumn.$unknown;
  }
}

enum Enum_HistoryConfessionHistoryConstraint {
  confession_history_day_id_person_id_key,
  confession_history_pkey,
  $unknown;

  factory Enum_HistoryConfessionHistoryConstraint.fromJson(String value) =>
      fromJson_Enum_HistoryConfessionHistoryConstraint(value);

  String toJson() => toJson_Enum_HistoryConfessionHistoryConstraint(this);
}

String toJson_Enum_HistoryConfessionHistoryConstraint(
  Enum_HistoryConfessionHistoryConstraint e,
) {
  switch (e) {
    case Enum_HistoryConfessionHistoryConstraint
        .confession_history_day_id_person_id_key:
      return r'confession_history_day_id_person_id_key';
    case Enum_HistoryConfessionHistoryConstraint.confession_history_pkey:
      return r'confession_history_pkey';
    case Enum_HistoryConfessionHistoryConstraint.$unknown:
      return r'$unknown';
  }
}

Enum_HistoryConfessionHistoryConstraint
fromJson_Enum_HistoryConfessionHistoryConstraint(String value) {
  switch (value) {
    case r'confession_history_day_id_person_id_key':
      return Enum_HistoryConfessionHistoryConstraint
          .confession_history_day_id_person_id_key;
    case r'confession_history_pkey':
      return Enum_HistoryConfessionHistoryConstraint.confession_history_pkey;
    default:
      return Enum_HistoryConfessionHistoryConstraint.$unknown;
  }
}

enum Enum_HistoryConfessionHistorySelectColumn {
  dayId,
  id,
  personId,
  recordedBy,
  time,
  $unknown;

  factory Enum_HistoryConfessionHistorySelectColumn.fromJson(String value) =>
      fromJson_Enum_HistoryConfessionHistorySelectColumn(value);

  String toJson() => toJson_Enum_HistoryConfessionHistorySelectColumn(this);
}

String toJson_Enum_HistoryConfessionHistorySelectColumn(
  Enum_HistoryConfessionHistorySelectColumn e,
) {
  switch (e) {
    case Enum_HistoryConfessionHistorySelectColumn.dayId:
      return r'dayId';
    case Enum_HistoryConfessionHistorySelectColumn.id:
      return r'id';
    case Enum_HistoryConfessionHistorySelectColumn.personId:
      return r'personId';
    case Enum_HistoryConfessionHistorySelectColumn.recordedBy:
      return r'recordedBy';
    case Enum_HistoryConfessionHistorySelectColumn.time:
      return r'time';
    case Enum_HistoryConfessionHistorySelectColumn.$unknown:
      return r'$unknown';
  }
}

Enum_HistoryConfessionHistorySelectColumn
fromJson_Enum_HistoryConfessionHistorySelectColumn(String value) {
  switch (value) {
    case r'dayId':
      return Enum_HistoryConfessionHistorySelectColumn.dayId;
    case r'id':
      return Enum_HistoryConfessionHistorySelectColumn.id;
    case r'personId':
      return Enum_HistoryConfessionHistorySelectColumn.personId;
    case r'recordedBy':
      return Enum_HistoryConfessionHistorySelectColumn.recordedBy;
    case r'time':
      return Enum_HistoryConfessionHistorySelectColumn.time;
    default:
      return Enum_HistoryConfessionHistorySelectColumn.$unknown;
  }
}

enum Enum_HistoryConfessionHistoryUpdateColumn {
  $_PLACEHOLDER,
  $unknown;

  factory Enum_HistoryConfessionHistoryUpdateColumn.fromJson(String value) =>
      fromJson_Enum_HistoryConfessionHistoryUpdateColumn(value);

  String toJson() => toJson_Enum_HistoryConfessionHistoryUpdateColumn(this);
}

String toJson_Enum_HistoryConfessionHistoryUpdateColumn(
  Enum_HistoryConfessionHistoryUpdateColumn e,
) {
  switch (e) {
    case Enum_HistoryConfessionHistoryUpdateColumn.$_PLACEHOLDER:
      return r'_PLACEHOLDER';
    case Enum_HistoryConfessionHistoryUpdateColumn.$unknown:
      return r'$unknown';
  }
}

Enum_HistoryConfessionHistoryUpdateColumn
fromJson_Enum_HistoryConfessionHistoryUpdateColumn(String value) {
  switch (value) {
    case r'_PLACEHOLDER':
      return Enum_HistoryConfessionHistoryUpdateColumn.$_PLACEHOLDER;
    default:
      return Enum_HistoryConfessionHistoryUpdateColumn.$unknown;
  }
}

enum Enum_HistoryEditHistorySelectColumn {
  recordId,
  recordedBy,
  table,
  time,
  $unknown;

  factory Enum_HistoryEditHistorySelectColumn.fromJson(String value) =>
      fromJson_Enum_HistoryEditHistorySelectColumn(value);

  String toJson() => toJson_Enum_HistoryEditHistorySelectColumn(this);
}

String toJson_Enum_HistoryEditHistorySelectColumn(
  Enum_HistoryEditHistorySelectColumn e,
) {
  switch (e) {
    case Enum_HistoryEditHistorySelectColumn.recordId:
      return r'recordId';
    case Enum_HistoryEditHistorySelectColumn.recordedBy:
      return r'recordedBy';
    case Enum_HistoryEditHistorySelectColumn.table:
      return r'table';
    case Enum_HistoryEditHistorySelectColumn.time:
      return r'time';
    case Enum_HistoryEditHistorySelectColumn.$unknown:
      return r'$unknown';
  }
}

Enum_HistoryEditHistorySelectColumn
fromJson_Enum_HistoryEditHistorySelectColumn(String value) {
  switch (value) {
    case r'recordId':
      return Enum_HistoryEditHistorySelectColumn.recordId;
    case r'recordedBy':
      return Enum_HistoryEditHistorySelectColumn.recordedBy;
    case r'table':
      return Enum_HistoryEditHistorySelectColumn.table;
    case r'time':
      return Enum_HistoryEditHistorySelectColumn.time;
    default:
      return Enum_HistoryEditHistorySelectColumn.$unknown;
  }
}

enum Enum_HistoryKodasHistoryConstraint {
  kodas_history_day_id_person_id_key,
  kodas_history_pkey,
  $unknown;

  factory Enum_HistoryKodasHistoryConstraint.fromJson(String value) =>
      fromJson_Enum_HistoryKodasHistoryConstraint(value);

  String toJson() => toJson_Enum_HistoryKodasHistoryConstraint(this);
}

String toJson_Enum_HistoryKodasHistoryConstraint(
  Enum_HistoryKodasHistoryConstraint e,
) {
  switch (e) {
    case Enum_HistoryKodasHistoryConstraint.kodas_history_day_id_person_id_key:
      return r'kodas_history_day_id_person_id_key';
    case Enum_HistoryKodasHistoryConstraint.kodas_history_pkey:
      return r'kodas_history_pkey';
    case Enum_HistoryKodasHistoryConstraint.$unknown:
      return r'$unknown';
  }
}

Enum_HistoryKodasHistoryConstraint fromJson_Enum_HistoryKodasHistoryConstraint(
  String value,
) {
  switch (value) {
    case r'kodas_history_day_id_person_id_key':
      return Enum_HistoryKodasHistoryConstraint
          .kodas_history_day_id_person_id_key;
    case r'kodas_history_pkey':
      return Enum_HistoryKodasHistoryConstraint.kodas_history_pkey;
    default:
      return Enum_HistoryKodasHistoryConstraint.$unknown;
  }
}

enum Enum_HistoryKodasHistorySelectColumn {
  dayId,
  id,
  personId,
  recordedBy,
  time,
  $unknown;

  factory Enum_HistoryKodasHistorySelectColumn.fromJson(String value) =>
      fromJson_Enum_HistoryKodasHistorySelectColumn(value);

  String toJson() => toJson_Enum_HistoryKodasHistorySelectColumn(this);
}

String toJson_Enum_HistoryKodasHistorySelectColumn(
  Enum_HistoryKodasHistorySelectColumn e,
) {
  switch (e) {
    case Enum_HistoryKodasHistorySelectColumn.dayId:
      return r'dayId';
    case Enum_HistoryKodasHistorySelectColumn.id:
      return r'id';
    case Enum_HistoryKodasHistorySelectColumn.personId:
      return r'personId';
    case Enum_HistoryKodasHistorySelectColumn.recordedBy:
      return r'recordedBy';
    case Enum_HistoryKodasHistorySelectColumn.time:
      return r'time';
    case Enum_HistoryKodasHistorySelectColumn.$unknown:
      return r'$unknown';
  }
}

Enum_HistoryKodasHistorySelectColumn
fromJson_Enum_HistoryKodasHistorySelectColumn(String value) {
  switch (value) {
    case r'dayId':
      return Enum_HistoryKodasHistorySelectColumn.dayId;
    case r'id':
      return Enum_HistoryKodasHistorySelectColumn.id;
    case r'personId':
      return Enum_HistoryKodasHistorySelectColumn.personId;
    case r'recordedBy':
      return Enum_HistoryKodasHistorySelectColumn.recordedBy;
    case r'time':
      return Enum_HistoryKodasHistorySelectColumn.time;
    default:
      return Enum_HistoryKodasHistorySelectColumn.$unknown;
  }
}

enum Enum_HistoryKodasHistoryUpdateColumn {
  $_PLACEHOLDER,
  $unknown;

  factory Enum_HistoryKodasHistoryUpdateColumn.fromJson(String value) =>
      fromJson_Enum_HistoryKodasHistoryUpdateColumn(value);

  String toJson() => toJson_Enum_HistoryKodasHistoryUpdateColumn(this);
}

String toJson_Enum_HistoryKodasHistoryUpdateColumn(
  Enum_HistoryKodasHistoryUpdateColumn e,
) {
  switch (e) {
    case Enum_HistoryKodasHistoryUpdateColumn.$_PLACEHOLDER:
      return r'_PLACEHOLDER';
    case Enum_HistoryKodasHistoryUpdateColumn.$unknown:
      return r'$unknown';
  }
}

Enum_HistoryKodasHistoryUpdateColumn
fromJson_Enum_HistoryKodasHistoryUpdateColumn(String value) {
  switch (value) {
    case r'_PLACEHOLDER':
      return Enum_HistoryKodasHistoryUpdateColumn.$_PLACEHOLDER;
    default:
      return Enum_HistoryKodasHistoryUpdateColumn.$unknown;
  }
}

enum Enum_HistoryVisitHistoryConstraint {
  visit_history_pkey,
  $unknown;

  factory Enum_HistoryVisitHistoryConstraint.fromJson(String value) =>
      fromJson_Enum_HistoryVisitHistoryConstraint(value);

  String toJson() => toJson_Enum_HistoryVisitHistoryConstraint(this);
}

String toJson_Enum_HistoryVisitHistoryConstraint(
  Enum_HistoryVisitHistoryConstraint e,
) {
  switch (e) {
    case Enum_HistoryVisitHistoryConstraint.visit_history_pkey:
      return r'visit_history_pkey';
    case Enum_HistoryVisitHistoryConstraint.$unknown:
      return r'$unknown';
  }
}

Enum_HistoryVisitHistoryConstraint fromJson_Enum_HistoryVisitHistoryConstraint(
  String value,
) {
  switch (value) {
    case r'visit_history_pkey':
      return Enum_HistoryVisitHistoryConstraint.visit_history_pkey;
    default:
      return Enum_HistoryVisitHistoryConstraint.$unknown;
  }
}

enum Enum_HistoryVisitHistorySelectColumn {
  isFatherVisit,
  recordId,
  recordedBy,
  table,
  time,
  visitId,
  $unknown;

  factory Enum_HistoryVisitHistorySelectColumn.fromJson(String value) =>
      fromJson_Enum_HistoryVisitHistorySelectColumn(value);

  String toJson() => toJson_Enum_HistoryVisitHistorySelectColumn(this);
}

String toJson_Enum_HistoryVisitHistorySelectColumn(
  Enum_HistoryVisitHistorySelectColumn e,
) {
  switch (e) {
    case Enum_HistoryVisitHistorySelectColumn.isFatherVisit:
      return r'isFatherVisit';
    case Enum_HistoryVisitHistorySelectColumn.recordId:
      return r'recordId';
    case Enum_HistoryVisitHistorySelectColumn.recordedBy:
      return r'recordedBy';
    case Enum_HistoryVisitHistorySelectColumn.table:
      return r'table';
    case Enum_HistoryVisitHistorySelectColumn.time:
      return r'time';
    case Enum_HistoryVisitHistorySelectColumn.visitId:
      return r'visitId';
    case Enum_HistoryVisitHistorySelectColumn.$unknown:
      return r'$unknown';
  }
}

Enum_HistoryVisitHistorySelectColumn
fromJson_Enum_HistoryVisitHistorySelectColumn(String value) {
  switch (value) {
    case r'isFatherVisit':
      return Enum_HistoryVisitHistorySelectColumn.isFatherVisit;
    case r'recordId':
      return Enum_HistoryVisitHistorySelectColumn.recordId;
    case r'recordedBy':
      return Enum_HistoryVisitHistorySelectColumn.recordedBy;
    case r'table':
      return Enum_HistoryVisitHistorySelectColumn.table;
    case r'time':
      return Enum_HistoryVisitHistorySelectColumn.time;
    case r'visitId':
      return Enum_HistoryVisitHistorySelectColumn.visitId;
    default:
      return Enum_HistoryVisitHistorySelectColumn.$unknown;
  }
}

enum Enum_HistoryVisitHistorySelectColumnHistoryVisitHistoryAggregateBoolExpBool_andArgumentsColumns {
  isFatherVisit,
  $unknown;

  factory Enum_HistoryVisitHistorySelectColumnHistoryVisitHistoryAggregateBoolExpBool_andArgumentsColumns.fromJson(
    String value,
  ) =>
      fromJson_Enum_HistoryVisitHistorySelectColumnHistoryVisitHistoryAggregateBoolExpBool_andArgumentsColumns(
        value,
      );

  String toJson() =>
      toJson_Enum_HistoryVisitHistorySelectColumnHistoryVisitHistoryAggregateBoolExpBool_andArgumentsColumns(
        this,
      );
}

String
toJson_Enum_HistoryVisitHistorySelectColumnHistoryVisitHistoryAggregateBoolExpBool_andArgumentsColumns(
  Enum_HistoryVisitHistorySelectColumnHistoryVisitHistoryAggregateBoolExpBool_andArgumentsColumns
  e,
) {
  switch (e) {
    case Enum_HistoryVisitHistorySelectColumnHistoryVisitHistoryAggregateBoolExpBool_andArgumentsColumns
        .isFatherVisit:
      return r'isFatherVisit';
    case Enum_HistoryVisitHistorySelectColumnHistoryVisitHistoryAggregateBoolExpBool_andArgumentsColumns
        .$unknown:
      return r'$unknown';
  }
}

Enum_HistoryVisitHistorySelectColumnHistoryVisitHistoryAggregateBoolExpBool_andArgumentsColumns
fromJson_Enum_HistoryVisitHistorySelectColumnHistoryVisitHistoryAggregateBoolExpBool_andArgumentsColumns(
  String value,
) {
  switch (value) {
    case r'isFatherVisit':
      return Enum_HistoryVisitHistorySelectColumnHistoryVisitHistoryAggregateBoolExpBool_andArgumentsColumns
          .isFatherVisit;
    default:
      return Enum_HistoryVisitHistorySelectColumnHistoryVisitHistoryAggregateBoolExpBool_andArgumentsColumns
          .$unknown;
  }
}

enum Enum_HistoryVisitHistorySelectColumnHistoryVisitHistoryAggregateBoolExpBool_orArgumentsColumns {
  isFatherVisit,
  $unknown;

  factory Enum_HistoryVisitHistorySelectColumnHistoryVisitHistoryAggregateBoolExpBool_orArgumentsColumns.fromJson(
    String value,
  ) =>
      fromJson_Enum_HistoryVisitHistorySelectColumnHistoryVisitHistoryAggregateBoolExpBool_orArgumentsColumns(
        value,
      );

  String toJson() =>
      toJson_Enum_HistoryVisitHistorySelectColumnHistoryVisitHistoryAggregateBoolExpBool_orArgumentsColumns(
        this,
      );
}

String
toJson_Enum_HistoryVisitHistorySelectColumnHistoryVisitHistoryAggregateBoolExpBool_orArgumentsColumns(
  Enum_HistoryVisitHistorySelectColumnHistoryVisitHistoryAggregateBoolExpBool_orArgumentsColumns
  e,
) {
  switch (e) {
    case Enum_HistoryVisitHistorySelectColumnHistoryVisitHistoryAggregateBoolExpBool_orArgumentsColumns
        .isFatherVisit:
      return r'isFatherVisit';
    case Enum_HistoryVisitHistorySelectColumnHistoryVisitHistoryAggregateBoolExpBool_orArgumentsColumns
        .$unknown:
      return r'$unknown';
  }
}

Enum_HistoryVisitHistorySelectColumnHistoryVisitHistoryAggregateBoolExpBool_orArgumentsColumns
fromJson_Enum_HistoryVisitHistorySelectColumnHistoryVisitHistoryAggregateBoolExpBool_orArgumentsColumns(
  String value,
) {
  switch (value) {
    case r'isFatherVisit':
      return Enum_HistoryVisitHistorySelectColumnHistoryVisitHistoryAggregateBoolExpBool_orArgumentsColumns
          .isFatherVisit;
    default:
      return Enum_HistoryVisitHistorySelectColumnHistoryVisitHistoryAggregateBoolExpBool_orArgumentsColumns
          .$unknown;
  }
}

enum Enum_HistoryVisitHistoryUpdateColumn {
  $_PLACEHOLDER,
  $unknown;

  factory Enum_HistoryVisitHistoryUpdateColumn.fromJson(String value) =>
      fromJson_Enum_HistoryVisitHistoryUpdateColumn(value);

  String toJson() => toJson_Enum_HistoryVisitHistoryUpdateColumn(this);
}

String toJson_Enum_HistoryVisitHistoryUpdateColumn(
  Enum_HistoryVisitHistoryUpdateColumn e,
) {
  switch (e) {
    case Enum_HistoryVisitHistoryUpdateColumn.$_PLACEHOLDER:
      return r'_PLACEHOLDER';
    case Enum_HistoryVisitHistoryUpdateColumn.$unknown:
      return r'$unknown';
  }
}

Enum_HistoryVisitHistoryUpdateColumn
fromJson_Enum_HistoryVisitHistoryUpdateColumn(String value) {
  switch (value) {
    case r'_PLACEHOLDER':
      return Enum_HistoryVisitHistoryUpdateColumn.$_PLACEHOLDER;
    default:
      return Enum_HistoryVisitHistoryUpdateColumn.$unknown;
  }
}

enum Enum_HobbiesConstraint {
  hobbies_name_key,
  hobbies_pkey,
  $unknown;

  factory Enum_HobbiesConstraint.fromJson(String value) =>
      fromJson_Enum_HobbiesConstraint(value);

  String toJson() => toJson_Enum_HobbiesConstraint(this);
}

String toJson_Enum_HobbiesConstraint(Enum_HobbiesConstraint e) {
  switch (e) {
    case Enum_HobbiesConstraint.hobbies_name_key:
      return r'hobbies_name_key';
    case Enum_HobbiesConstraint.hobbies_pkey:
      return r'hobbies_pkey';
    case Enum_HobbiesConstraint.$unknown:
      return r'$unknown';
  }
}

Enum_HobbiesConstraint fromJson_Enum_HobbiesConstraint(String value) {
  switch (value) {
    case r'hobbies_name_key':
      return Enum_HobbiesConstraint.hobbies_name_key;
    case r'hobbies_pkey':
      return Enum_HobbiesConstraint.hobbies_pkey;
    default:
      return Enum_HobbiesConstraint.$unknown;
  }
}

enum Enum_HobbiesSelectColumn {
  color,
  id,
  name,
  $unknown;

  factory Enum_HobbiesSelectColumn.fromJson(String value) =>
      fromJson_Enum_HobbiesSelectColumn(value);

  String toJson() => toJson_Enum_HobbiesSelectColumn(this);
}

String toJson_Enum_HobbiesSelectColumn(Enum_HobbiesSelectColumn e) {
  switch (e) {
    case Enum_HobbiesSelectColumn.color:
      return r'color';
    case Enum_HobbiesSelectColumn.id:
      return r'id';
    case Enum_HobbiesSelectColumn.name:
      return r'name';
    case Enum_HobbiesSelectColumn.$unknown:
      return r'$unknown';
  }
}

Enum_HobbiesSelectColumn fromJson_Enum_HobbiesSelectColumn(String value) {
  switch (value) {
    case r'color':
      return Enum_HobbiesSelectColumn.color;
    case r'id':
      return Enum_HobbiesSelectColumn.id;
    case r'name':
      return Enum_HobbiesSelectColumn.name;
    default:
      return Enum_HobbiesSelectColumn.$unknown;
  }
}

enum Enum_HobbiesUpdateColumn {
  color,
  name,
  $unknown;

  factory Enum_HobbiesUpdateColumn.fromJson(String value) =>
      fromJson_Enum_HobbiesUpdateColumn(value);

  String toJson() => toJson_Enum_HobbiesUpdateColumn(this);
}

String toJson_Enum_HobbiesUpdateColumn(Enum_HobbiesUpdateColumn e) {
  switch (e) {
    case Enum_HobbiesUpdateColumn.color:
      return r'color';
    case Enum_HobbiesUpdateColumn.name:
      return r'name';
    case Enum_HobbiesUpdateColumn.$unknown:
      return r'$unknown';
  }
}

Enum_HobbiesUpdateColumn fromJson_Enum_HobbiesUpdateColumn(String value) {
  switch (value) {
    case r'color':
      return Enum_HobbiesUpdateColumn.color;
    case r'name':
      return Enum_HobbiesUpdateColumn.name;
    default:
      return Enum_HobbiesUpdateColumn.$unknown;
  }
}

enum Enum_JobsConstraint {
  jobs_name_key,
  jobs_pkey,
  $unknown;

  factory Enum_JobsConstraint.fromJson(String value) =>
      fromJson_Enum_JobsConstraint(value);

  String toJson() => toJson_Enum_JobsConstraint(this);
}

String toJson_Enum_JobsConstraint(Enum_JobsConstraint e) {
  switch (e) {
    case Enum_JobsConstraint.jobs_name_key:
      return r'jobs_name_key';
    case Enum_JobsConstraint.jobs_pkey:
      return r'jobs_pkey';
    case Enum_JobsConstraint.$unknown:
      return r'$unknown';
  }
}

Enum_JobsConstraint fromJson_Enum_JobsConstraint(String value) {
  switch (value) {
    case r'jobs_name_key':
      return Enum_JobsConstraint.jobs_name_key;
    case r'jobs_pkey':
      return Enum_JobsConstraint.jobs_pkey;
    default:
      return Enum_JobsConstraint.$unknown;
  }
}

enum Enum_JobsSelectColumn {
  id,
  name,
  $unknown;

  factory Enum_JobsSelectColumn.fromJson(String value) =>
      fromJson_Enum_JobsSelectColumn(value);

  String toJson() => toJson_Enum_JobsSelectColumn(this);
}

String toJson_Enum_JobsSelectColumn(Enum_JobsSelectColumn e) {
  switch (e) {
    case Enum_JobsSelectColumn.id:
      return r'id';
    case Enum_JobsSelectColumn.name:
      return r'name';
    case Enum_JobsSelectColumn.$unknown:
      return r'$unknown';
  }
}

Enum_JobsSelectColumn fromJson_Enum_JobsSelectColumn(String value) {
  switch (value) {
    case r'id':
      return Enum_JobsSelectColumn.id;
    case r'name':
      return Enum_JobsSelectColumn.name;
    default:
      return Enum_JobsSelectColumn.$unknown;
  }
}

enum Enum_JobsUpdateColumn {
  name,
  $unknown;

  factory Enum_JobsUpdateColumn.fromJson(String value) =>
      fromJson_Enum_JobsUpdateColumn(value);

  String toJson() => toJson_Enum_JobsUpdateColumn(this);
}
