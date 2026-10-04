// Part 68 of the schema
part of "schema.graphql.dart";

String toJson_Enum_JobsUpdateColumn(Enum_JobsUpdateColumn e) {
  switch (e) {
    case Enum_JobsUpdateColumn.name:
      return r'name';
    case Enum_JobsUpdateColumn.$unknown:
      return r'$unknown';
  }
}

Enum_JobsUpdateColumn fromJson_Enum_JobsUpdateColumn(String value) {
  switch (value) {
    case r'name':
      return Enum_JobsUpdateColumn.name;
    default:
      return Enum_JobsUpdateColumn.$unknown;
  }
}

enum Enum_OrderBy {
  ASC,
  ASC_NULLS_FIRST,
  ASC_NULLS_LAST,
  DESC,
  DESC_NULLS_FIRST,
  DESC_NULLS_LAST,
  $unknown;

  factory Enum_OrderBy.fromJson(String value) => fromJson_Enum_OrderBy(value);

  String toJson() => toJson_Enum_OrderBy(this);
}

String toJson_Enum_OrderBy(Enum_OrderBy e) {
  switch (e) {
    case Enum_OrderBy.ASC:
      return r'ASC';
    case Enum_OrderBy.ASC_NULLS_FIRST:
      return r'ASC_NULLS_FIRST';
    case Enum_OrderBy.ASC_NULLS_LAST:
      return r'ASC_NULLS_LAST';
    case Enum_OrderBy.DESC:
      return r'DESC';
    case Enum_OrderBy.DESC_NULLS_FIRST:
      return r'DESC_NULLS_FIRST';
    case Enum_OrderBy.DESC_NULLS_LAST:
      return r'DESC_NULLS_LAST';
    case Enum_OrderBy.$unknown:
      return r'$unknown';
  }
}

Enum_OrderBy fromJson_Enum_OrderBy(String value) {
  switch (value) {
    case r'ASC':
      return Enum_OrderBy.ASC;
    case r'ASC_NULLS_FIRST':
      return Enum_OrderBy.ASC_NULLS_FIRST;
    case r'ASC_NULLS_LAST':
      return Enum_OrderBy.ASC_NULLS_LAST;
    case r'DESC':
      return Enum_OrderBy.DESC;
    case r'DESC_NULLS_FIRST':
      return Enum_OrderBy.DESC_NULLS_FIRST;
    case r'DESC_NULLS_LAST':
      return Enum_OrderBy.DESC_NULLS_LAST;
    default:
      return Enum_OrderBy.$unknown;
  }
}

enum Enum_PersonStatesConstraint {
  states_color_key,
  states_name_key,
  states_pkey,
  $unknown;

  factory Enum_PersonStatesConstraint.fromJson(String value) =>
      fromJson_Enum_PersonStatesConstraint(value);

  String toJson() => toJson_Enum_PersonStatesConstraint(this);
}

String toJson_Enum_PersonStatesConstraint(Enum_PersonStatesConstraint e) {
  switch (e) {
    case Enum_PersonStatesConstraint.states_color_key:
      return r'states_color_key';
    case Enum_PersonStatesConstraint.states_name_key:
      return r'states_name_key';
    case Enum_PersonStatesConstraint.states_pkey:
      return r'states_pkey';
    case Enum_PersonStatesConstraint.$unknown:
      return r'$unknown';
  }
}

Enum_PersonStatesConstraint fromJson_Enum_PersonStatesConstraint(String value) {
  switch (value) {
    case r'states_color_key':
      return Enum_PersonStatesConstraint.states_color_key;
    case r'states_name_key':
      return Enum_PersonStatesConstraint.states_name_key;
    case r'states_pkey':
      return Enum_PersonStatesConstraint.states_pkey;
    default:
      return Enum_PersonStatesConstraint.$unknown;
  }
}

enum Enum_PersonStatesSelectColumn {
  color,
  id,
  name,
  $unknown;

  factory Enum_PersonStatesSelectColumn.fromJson(String value) =>
      fromJson_Enum_PersonStatesSelectColumn(value);

  String toJson() => toJson_Enum_PersonStatesSelectColumn(this);
}

String toJson_Enum_PersonStatesSelectColumn(Enum_PersonStatesSelectColumn e) {
  switch (e) {
    case Enum_PersonStatesSelectColumn.color:
      return r'color';
    case Enum_PersonStatesSelectColumn.id:
      return r'id';
    case Enum_PersonStatesSelectColumn.name:
      return r'name';
    case Enum_PersonStatesSelectColumn.$unknown:
      return r'$unknown';
  }
}

Enum_PersonStatesSelectColumn fromJson_Enum_PersonStatesSelectColumn(
  String value,
) {
  switch (value) {
    case r'color':
      return Enum_PersonStatesSelectColumn.color;
    case r'id':
      return Enum_PersonStatesSelectColumn.id;
    case r'name':
      return Enum_PersonStatesSelectColumn.name;
    default:
      return Enum_PersonStatesSelectColumn.$unknown;
  }
}

enum Enum_PersonStatesUpdateColumn {
  color,
  name,
  $unknown;

  factory Enum_PersonStatesUpdateColumn.fromJson(String value) =>
      fromJson_Enum_PersonStatesUpdateColumn(value);

  String toJson() => toJson_Enum_PersonStatesUpdateColumn(this);
}

String toJson_Enum_PersonStatesUpdateColumn(Enum_PersonStatesUpdateColumn e) {
  switch (e) {
    case Enum_PersonStatesUpdateColumn.color:
      return r'color';
    case Enum_PersonStatesUpdateColumn.name:
      return r'name';
    case Enum_PersonStatesUpdateColumn.$unknown:
      return r'$unknown';
  }
}

Enum_PersonStatesUpdateColumn fromJson_Enum_PersonStatesUpdateColumn(
  String value,
) {
  switch (value) {
    case r'color':
      return Enum_PersonStatesUpdateColumn.color;
    case r'name':
      return Enum_PersonStatesUpdateColumn.name;
    default:
      return Enum_PersonStatesUpdateColumn.$unknown;
  }
}

enum Enum_PersonTypesConstraint {
  person_types_name_key,
  person_types_order_key,
  person_types_pkey,
  $unknown;

  factory Enum_PersonTypesConstraint.fromJson(String value) =>
      fromJson_Enum_PersonTypesConstraint(value);

  String toJson() => toJson_Enum_PersonTypesConstraint(this);
}

String toJson_Enum_PersonTypesConstraint(Enum_PersonTypesConstraint e) {
  switch (e) {
    case Enum_PersonTypesConstraint.person_types_name_key:
      return r'person_types_name_key';
    case Enum_PersonTypesConstraint.person_types_order_key:
      return r'person_types_order_key';
    case Enum_PersonTypesConstraint.person_types_pkey:
      return r'person_types_pkey';
    case Enum_PersonTypesConstraint.$unknown:
      return r'$unknown';
  }
}

Enum_PersonTypesConstraint fromJson_Enum_PersonTypesConstraint(String value) {
  switch (value) {
    case r'person_types_name_key':
      return Enum_PersonTypesConstraint.person_types_name_key;
    case r'person_types_order_key':
      return Enum_PersonTypesConstraint.person_types_order_key;
    case r'person_types_pkey':
      return Enum_PersonTypesConstraint.person_types_pkey;
    default:
      return Enum_PersonTypesConstraint.$unknown;
  }
}

enum Enum_PersonTypesSelectColumn {
  id,
  isFamilyAdmin,
  isHidden,
  name,
  order,
  $unknown;

  factory Enum_PersonTypesSelectColumn.fromJson(String value) =>
      fromJson_Enum_PersonTypesSelectColumn(value);

  String toJson() => toJson_Enum_PersonTypesSelectColumn(this);
}

String toJson_Enum_PersonTypesSelectColumn(Enum_PersonTypesSelectColumn e) {
  switch (e) {
    case Enum_PersonTypesSelectColumn.id:
      return r'id';
    case Enum_PersonTypesSelectColumn.isFamilyAdmin:
      return r'isFamilyAdmin';
    case Enum_PersonTypesSelectColumn.isHidden:
      return r'isHidden';
    case Enum_PersonTypesSelectColumn.name:
      return r'name';
    case Enum_PersonTypesSelectColumn.order:
      return r'order';
    case Enum_PersonTypesSelectColumn.$unknown:
      return r'$unknown';
  }
}

Enum_PersonTypesSelectColumn fromJson_Enum_PersonTypesSelectColumn(
  String value,
) {
  switch (value) {
    case r'id':
      return Enum_PersonTypesSelectColumn.id;
    case r'isFamilyAdmin':
      return Enum_PersonTypesSelectColumn.isFamilyAdmin;
    case r'isHidden':
      return Enum_PersonTypesSelectColumn.isHidden;
    case r'name':
      return Enum_PersonTypesSelectColumn.name;
    case r'order':
      return Enum_PersonTypesSelectColumn.order;
    default:
      return Enum_PersonTypesSelectColumn.$unknown;
  }
}

enum Enum_PersonTypesUpdateColumn {
  name,
  $unknown;

  factory Enum_PersonTypesUpdateColumn.fromJson(String value) =>
      fromJson_Enum_PersonTypesUpdateColumn(value);

  String toJson() => toJson_Enum_PersonTypesUpdateColumn(this);
}

String toJson_Enum_PersonTypesUpdateColumn(Enum_PersonTypesUpdateColumn e) {
  switch (e) {
    case Enum_PersonTypesUpdateColumn.name:
      return r'name';
    case Enum_PersonTypesUpdateColumn.$unknown:
      return r'$unknown';
  }
}

Enum_PersonTypesUpdateColumn fromJson_Enum_PersonTypesUpdateColumn(
  String value,
) {
  switch (value) {
    case r'name':
      return Enum_PersonTypesUpdateColumn.name;
    default:
      return Enum_PersonTypesUpdateColumn.$unknown;
  }
}

enum Enum_PersonsConstraint {
  persons_pkey,
  persons_uid_key,
  $unknown;

  factory Enum_PersonsConstraint.fromJson(String value) =>
      fromJson_Enum_PersonsConstraint(value);

  String toJson() => toJson_Enum_PersonsConstraint(this);
}

String toJson_Enum_PersonsConstraint(Enum_PersonsConstraint e) {
  switch (e) {
    case Enum_PersonsConstraint.persons_pkey:
      return r'persons_pkey';
    case Enum_PersonsConstraint.persons_uid_key:
      return r'persons_uid_key';
    case Enum_PersonsConstraint.$unknown:
      return r'$unknown';
  }
}

Enum_PersonsConstraint fromJson_Enum_PersonsConstraint(String value) {
  switch (value) {
    case r'persons_pkey':
      return Enum_PersonsConstraint.persons_pkey;
    case r'persons_uid_key':
      return Enum_PersonsConstraint.persons_uid_key;
    default:
      return Enum_PersonsConstraint.$unknown;
  }
}

enum Enum_PersonsGroupsConstraint {
  persons_groups_person_id_group_id_key,
  persons_groups_pkey,
  $unknown;

  factory Enum_PersonsGroupsConstraint.fromJson(String value) =>
      fromJson_Enum_PersonsGroupsConstraint(value);

  String toJson() => toJson_Enum_PersonsGroupsConstraint(this);
}

String toJson_Enum_PersonsGroupsConstraint(Enum_PersonsGroupsConstraint e) {
  switch (e) {
    case Enum_PersonsGroupsConstraint.persons_groups_person_id_group_id_key:
      return r'persons_groups_person_id_group_id_key';
    case Enum_PersonsGroupsConstraint.persons_groups_pkey:
      return r'persons_groups_pkey';
    case Enum_PersonsGroupsConstraint.$unknown:
      return r'$unknown';
  }
}

Enum_PersonsGroupsConstraint fromJson_Enum_PersonsGroupsConstraint(
  String value,
) {
  switch (value) {
    case r'persons_groups_person_id_group_id_key':
      return Enum_PersonsGroupsConstraint.persons_groups_person_id_group_id_key;
    case r'persons_groups_pkey':
      return Enum_PersonsGroupsConstraint.persons_groups_pkey;
    default:
      return Enum_PersonsGroupsConstraint.$unknown;
  }
}

enum Enum_PersonsGroupsSelectColumn {
  groupId,
  personId,
  $unknown;

  factory Enum_PersonsGroupsSelectColumn.fromJson(String value) =>
      fromJson_Enum_PersonsGroupsSelectColumn(value);

  String toJson() => toJson_Enum_PersonsGroupsSelectColumn(this);
}

String toJson_Enum_PersonsGroupsSelectColumn(Enum_PersonsGroupsSelectColumn e) {
  switch (e) {
    case Enum_PersonsGroupsSelectColumn.groupId:
      return r'groupId';
    case Enum_PersonsGroupsSelectColumn.personId:
      return r'personId';
    case Enum_PersonsGroupsSelectColumn.$unknown:
      return r'$unknown';
  }
}

Enum_PersonsGroupsSelectColumn fromJson_Enum_PersonsGroupsSelectColumn(
  String value,
) {
  switch (value) {
    case r'groupId':
      return Enum_PersonsGroupsSelectColumn.groupId;
    case r'personId':
      return Enum_PersonsGroupsSelectColumn.personId;
    default:
      return Enum_PersonsGroupsSelectColumn.$unknown;
  }
}

enum Enum_PersonsGroupsUpdateColumn {
  $_PLACEHOLDER,
  $unknown;

  factory Enum_PersonsGroupsUpdateColumn.fromJson(String value) =>
      fromJson_Enum_PersonsGroupsUpdateColumn(value);

  String toJson() => toJson_Enum_PersonsGroupsUpdateColumn(this);
}

String toJson_Enum_PersonsGroupsUpdateColumn(Enum_PersonsGroupsUpdateColumn e) {
  switch (e) {
    case Enum_PersonsGroupsUpdateColumn.$_PLACEHOLDER:
      return r'_PLACEHOLDER';
    case Enum_PersonsGroupsUpdateColumn.$unknown:
      return r'$unknown';
  }
}

Enum_PersonsGroupsUpdateColumn fromJson_Enum_PersonsGroupsUpdateColumn(
  String value,
) {
  switch (value) {
    case r'_PLACEHOLDER':
      return Enum_PersonsGroupsUpdateColumn.$_PLACEHOLDER;
    default:
      return Enum_PersonsGroupsUpdateColumn.$unknown;
  }
}

enum Enum_PersonsHobbiesConstraint {
  persons_hobbies_pkey,
  $unknown;

  factory Enum_PersonsHobbiesConstraint.fromJson(String value) =>
      fromJson_Enum_PersonsHobbiesConstraint(value);

  String toJson() => toJson_Enum_PersonsHobbiesConstraint(this);
}

String toJson_Enum_PersonsHobbiesConstraint(Enum_PersonsHobbiesConstraint e) {
  switch (e) {
    case Enum_PersonsHobbiesConstraint.persons_hobbies_pkey:
      return r'persons_hobbies_pkey';
    case Enum_PersonsHobbiesConstraint.$unknown:
      return r'$unknown';
  }
}

Enum_PersonsHobbiesConstraint fromJson_Enum_PersonsHobbiesConstraint(
  String value,
) {
  switch (value) {
    case r'persons_hobbies_pkey':
      return Enum_PersonsHobbiesConstraint.persons_hobbies_pkey;
    default:
      return Enum_PersonsHobbiesConstraint.$unknown;
  }
}

enum Enum_PersonsHobbiesSelectColumn {
  hobbyId,
  personId,
  $unknown;

  factory Enum_PersonsHobbiesSelectColumn.fromJson(String value) =>
      fromJson_Enum_PersonsHobbiesSelectColumn(value);

  String toJson() => toJson_Enum_PersonsHobbiesSelectColumn(this);
}

String toJson_Enum_PersonsHobbiesSelectColumn(
  Enum_PersonsHobbiesSelectColumn e,
) {
  switch (e) {
    case Enum_PersonsHobbiesSelectColumn.hobbyId:
      return r'hobbyId';
    case Enum_PersonsHobbiesSelectColumn.personId:
      return r'personId';
    case Enum_PersonsHobbiesSelectColumn.$unknown:
      return r'$unknown';
  }
}

Enum_PersonsHobbiesSelectColumn fromJson_Enum_PersonsHobbiesSelectColumn(
  String value,
) {
  switch (value) {
    case r'hobbyId':
      return Enum_PersonsHobbiesSelectColumn.hobbyId;
    case r'personId':
      return Enum_PersonsHobbiesSelectColumn.personId;
    default:
      return Enum_PersonsHobbiesSelectColumn.$unknown;
  }
}

enum Enum_PersonsHobbiesUpdateColumn {
  $_PLACEHOLDER,
  $unknown;

  factory Enum_PersonsHobbiesUpdateColumn.fromJson(String value) =>
      fromJson_Enum_PersonsHobbiesUpdateColumn(value);

  String toJson() => toJson_Enum_PersonsHobbiesUpdateColumn(this);
}

String toJson_Enum_PersonsHobbiesUpdateColumn(
  Enum_PersonsHobbiesUpdateColumn e,
) {
  switch (e) {
    case Enum_PersonsHobbiesUpdateColumn.$_PLACEHOLDER:
      return r'_PLACEHOLDER';
    case Enum_PersonsHobbiesUpdateColumn.$unknown:
      return r'$unknown';
  }
}

Enum_PersonsHobbiesUpdateColumn fromJson_Enum_PersonsHobbiesUpdateColumn(
  String value,
) {
  switch (value) {
    case r'_PLACEHOLDER':
      return Enum_PersonsHobbiesUpdateColumn.$_PLACEHOLDER;
    default:
      return Enum_PersonsHobbiesUpdateColumn.$unknown;
  }
}

enum Enum_PersonsMainContactsSelectColumn {
  id,
  label,
  personId,
  phone,
  $unknown;

  factory Enum_PersonsMainContactsSelectColumn.fromJson(String value) =>
      fromJson_Enum_PersonsMainContactsSelectColumn(value);

  String toJson() => toJson_Enum_PersonsMainContactsSelectColumn(this);
}

String toJson_Enum_PersonsMainContactsSelectColumn(
  Enum_PersonsMainContactsSelectColumn e,
) {
  switch (e) {
    case Enum_PersonsMainContactsSelectColumn.id:
      return r'id';
    case Enum_PersonsMainContactsSelectColumn.label:
      return r'label';
    case Enum_PersonsMainContactsSelectColumn.personId:
      return r'personId';
    case Enum_PersonsMainContactsSelectColumn.phone:
      return r'phone';
    case Enum_PersonsMainContactsSelectColumn.$unknown:
      return r'$unknown';
  }
}

Enum_PersonsMainContactsSelectColumn
fromJson_Enum_PersonsMainContactsSelectColumn(String value) {
  switch (value) {
    case r'id':
      return Enum_PersonsMainContactsSelectColumn.id;
    case r'label':
      return Enum_PersonsMainContactsSelectColumn.label;
    case r'personId':
      return Enum_PersonsMainContactsSelectColumn.personId;
    case r'phone':
      return Enum_PersonsMainContactsSelectColumn.phone;
    default:
      return Enum_PersonsMainContactsSelectColumn.$unknown;
  }
}

enum Enum_PersonsSelectColumn {
  birthdate,
  blurhash,
  churchId,
  collegeId,
  color,
  familyId,
  fatherId,
  gender,
  id,
  isServant,
  isShammas,
  isStudent,
  jobDescription,
  jobId,
  martialStatus,
  name,
  nationalId,
  notes,
  personTypeId,
  photoUpdatedAt,
  qualificationId,
  schoolId,
  serviceType,
  servingChurchId,
  shammasLevelId,
  stateId,
  storeId,
  studyYearId,
  uid,
  workStatus,
  $unknown;

  factory Enum_PersonsSelectColumn.fromJson(String value) =>
      fromJson_Enum_PersonsSelectColumn(value);

  String toJson() => toJson_Enum_PersonsSelectColumn(this);
}

String toJson_Enum_PersonsSelectColumn(Enum_PersonsSelectColumn e) {
  switch (e) {
    case Enum_PersonsSelectColumn.birthdate:
      return r'birthdate';
    case Enum_PersonsSelectColumn.blurhash:
      return r'blurhash';
    case Enum_PersonsSelectColumn.churchId:
      return r'churchId';
    case Enum_PersonsSelectColumn.collegeId:
      return r'collegeId';
    case Enum_PersonsSelectColumn.color:
      return r'color';
    case Enum_PersonsSelectColumn.familyId:
      return r'familyId';
    case Enum_PersonsSelectColumn.fatherId:
      return r'fatherId';
    case Enum_PersonsSelectColumn.gender:
      return r'gender';
    case Enum_PersonsSelectColumn.id:
      return r'id';
    case Enum_PersonsSelectColumn.isServant:
      return r'isServant';
    case Enum_PersonsSelectColumn.isShammas:
      return r'isShammas';
    case Enum_PersonsSelectColumn.isStudent:
      return r'isStudent';
    case Enum_PersonsSelectColumn.jobDescription:
      return r'jobDescription';
    case Enum_PersonsSelectColumn.jobId:
      return r'jobId';
    case Enum_PersonsSelectColumn.martialStatus:
      return r'martialStatus';
    case Enum_PersonsSelectColumn.name:
      return r'name';
    case Enum_PersonsSelectColumn.nationalId:
      return r'nationalId';
    case Enum_PersonsSelectColumn.notes:
      return r'notes';
    case Enum_PersonsSelectColumn.personTypeId:
      return r'personTypeId';
    case Enum_PersonsSelectColumn.photoUpdatedAt:
      return r'photoUpdatedAt';
    case Enum_PersonsSelectColumn.qualificationId:
      return r'qualificationId';
    case Enum_PersonsSelectColumn.schoolId:
      return r'schoolId';
    case Enum_PersonsSelectColumn.serviceType:
      return r'serviceType';
    case Enum_PersonsSelectColumn.servingChurchId:
      return r'servingChurchId';
    case Enum_PersonsSelectColumn.shammasLevelId:
      return r'shammasLevelId';
    case Enum_PersonsSelectColumn.stateId:
      return r'stateId';
    case Enum_PersonsSelectColumn.storeId:
      return r'storeId';
    case Enum_PersonsSelectColumn.studyYearId:
      return r'studyYearId';
    case Enum_PersonsSelectColumn.uid:
      return r'uid';
    case Enum_PersonsSelectColumn.workStatus:
      return r'workStatus';
    case Enum_PersonsSelectColumn.$unknown:
      return r'$unknown';
  }
}

Enum_PersonsSelectColumn fromJson_Enum_PersonsSelectColumn(String value) {
  switch (value) {
    case r'birthdate':
      return Enum_PersonsSelectColumn.birthdate;
    case r'blurhash':
      return Enum_PersonsSelectColumn.blurhash;
    case r'churchId':
      return Enum_PersonsSelectColumn.churchId;
    case r'collegeId':
      return Enum_PersonsSelectColumn.collegeId;
    case r'color':
      return Enum_PersonsSelectColumn.color;
    case r'familyId':
      return Enum_PersonsSelectColumn.familyId;
    case r'fatherId':
      return Enum_PersonsSelectColumn.fatherId;
    case r'gender':
      return Enum_PersonsSelectColumn.gender;
    case r'id':
      return Enum_PersonsSelectColumn.id;
    case r'isServant':
      return Enum_PersonsSelectColumn.isServant;
    case r'isShammas':
      return Enum_PersonsSelectColumn.isShammas;
    case r'isStudent':
      return Enum_PersonsSelectColumn.isStudent;
    case r'jobDescription':
      return Enum_PersonsSelectColumn.jobDescription;
    case r'jobId':
      return Enum_PersonsSelectColumn.jobId;
    case r'martialStatus':
      return Enum_PersonsSelectColumn.martialStatus;
    case r'name':
      return Enum_PersonsSelectColumn.name;
    case r'nationalId':
      return Enum_PersonsSelectColumn.nationalId;
    case r'notes':
      return Enum_PersonsSelectColumn.notes;
    case r'personTypeId':
      return Enum_PersonsSelectColumn.personTypeId;
    case r'photoUpdatedAt':
      return Enum_PersonsSelectColumn.photoUpdatedAt;
    case r'qualificationId':
      return Enum_PersonsSelectColumn.qualificationId;
    case r'schoolId':
      return Enum_PersonsSelectColumn.schoolId;
    case r'serviceType':
      return Enum_PersonsSelectColumn.serviceType;
    case r'servingChurchId':
      return Enum_PersonsSelectColumn.servingChurchId;
    case r'shammasLevelId':
      return Enum_PersonsSelectColumn.shammasLevelId;
    case r'stateId':
      return Enum_PersonsSelectColumn.stateId;
    case r'storeId':
      return Enum_PersonsSelectColumn.storeId;
    case r'studyYearId':
      return Enum_PersonsSelectColumn.studyYearId;
    case r'uid':
      return Enum_PersonsSelectColumn.uid;
    case r'workStatus':
      return Enum_PersonsSelectColumn.workStatus;
    default:
      return Enum_PersonsSelectColumn.$unknown;
  }
}

enum Enum_PersonsSelectColumnPersonsAggregateBoolExpBool_andArgumentsColumns {
  gender,
  isServant,
  isShammas,
  isStudent,
  $unknown;

  factory Enum_PersonsSelectColumnPersonsAggregateBoolExpBool_andArgumentsColumns.fromJson(
    String value,
  ) =>
      fromJson_Enum_PersonsSelectColumnPersonsAggregateBoolExpBool_andArgumentsColumns(
        value,
      );

  String toJson() =>
      toJson_Enum_PersonsSelectColumnPersonsAggregateBoolExpBool_andArgumentsColumns(
        this,
      );
}

String
toJson_Enum_PersonsSelectColumnPersonsAggregateBoolExpBool_andArgumentsColumns(
  Enum_PersonsSelectColumnPersonsAggregateBoolExpBool_andArgumentsColumns e,
) {
  switch (e) {
    case Enum_PersonsSelectColumnPersonsAggregateBoolExpBool_andArgumentsColumns
        .gender:
      return r'gender';
    case Enum_PersonsSelectColumnPersonsAggregateBoolExpBool_andArgumentsColumns
        .isServant:
      return r'isServant';
    case Enum_PersonsSelectColumnPersonsAggregateBoolExpBool_andArgumentsColumns
        .isShammas:
      return r'isShammas';
    case Enum_PersonsSelectColumnPersonsAggregateBoolExpBool_andArgumentsColumns
        .isStudent:
      return r'isStudent';
    case Enum_PersonsSelectColumnPersonsAggregateBoolExpBool_andArgumentsColumns
        .$unknown:
      return r'$unknown';
  }
}

Enum_PersonsSelectColumnPersonsAggregateBoolExpBool_andArgumentsColumns
fromJson_Enum_PersonsSelectColumnPersonsAggregateBoolExpBool_andArgumentsColumns(
  String value,
) {
  switch (value) {
    case r'gender':
      return Enum_PersonsSelectColumnPersonsAggregateBoolExpBool_andArgumentsColumns
          .gender;
    case r'isServant':
      return Enum_PersonsSelectColumnPersonsAggregateBoolExpBool_andArgumentsColumns
          .isServant;
    case r'isShammas':
      return Enum_PersonsSelectColumnPersonsAggregateBoolExpBool_andArgumentsColumns
          .isShammas;
    case r'isStudent':
      return Enum_PersonsSelectColumnPersonsAggregateBoolExpBool_andArgumentsColumns
          .isStudent;
    default:
      return Enum_PersonsSelectColumnPersonsAggregateBoolExpBool_andArgumentsColumns
          .$unknown;
  }
}

enum Enum_PersonsSelectColumnPersonsAggregateBoolExpBool_orArgumentsColumns {
  gender,
  isServant,
  isShammas,
  isStudent,
  $unknown;

  factory Enum_PersonsSelectColumnPersonsAggregateBoolExpBool_orArgumentsColumns.fromJson(
    String value,
  ) =>
      fromJson_Enum_PersonsSelectColumnPersonsAggregateBoolExpBool_orArgumentsColumns(
        value,
      );

  String toJson() =>
      toJson_Enum_PersonsSelectColumnPersonsAggregateBoolExpBool_orArgumentsColumns(
        this,
      );
}

String
toJson_Enum_PersonsSelectColumnPersonsAggregateBoolExpBool_orArgumentsColumns(
  Enum_PersonsSelectColumnPersonsAggregateBoolExpBool_orArgumentsColumns e,
) {
  switch (e) {
    case Enum_PersonsSelectColumnPersonsAggregateBoolExpBool_orArgumentsColumns
        .gender:
      return r'gender';
    case Enum_PersonsSelectColumnPersonsAggregateBoolExpBool_orArgumentsColumns
        .isServant:
      return r'isServant';
    case Enum_PersonsSelectColumnPersonsAggregateBoolExpBool_orArgumentsColumns
        .isShammas:
      return r'isShammas';
    case Enum_PersonsSelectColumnPersonsAggregateBoolExpBool_orArgumentsColumns
        .isStudent:
      return r'isStudent';
    case Enum_PersonsSelectColumnPersonsAggregateBoolExpBool_orArgumentsColumns
        .$unknown:
      return r'$unknown';
  }
}

Enum_PersonsSelectColumnPersonsAggregateBoolExpBool_orArgumentsColumns
fromJson_Enum_PersonsSelectColumnPersonsAggregateBoolExpBool_orArgumentsColumns(
  String value,
) {
  switch (value) {
    case r'gender':
      return Enum_PersonsSelectColumnPersonsAggregateBoolExpBool_orArgumentsColumns
          .gender;
    case r'isServant':
      return Enum_PersonsSelectColumnPersonsAggregateBoolExpBool_orArgumentsColumns
          .isServant;
    case r'isShammas':
      return Enum_PersonsSelectColumnPersonsAggregateBoolExpBool_orArgumentsColumns
          .isShammas;
    case r'isStudent':
      return Enum_PersonsSelectColumnPersonsAggregateBoolExpBool_orArgumentsColumns
          .isStudent;
    default:
      return Enum_PersonsSelectColumnPersonsAggregateBoolExpBool_orArgumentsColumns
          .$unknown;
  }
}

enum Enum_PersonsServicesConstraint {
  persons_services_person_id_service_id_key,
  persons_services_pkey,
  $unknown;

  factory Enum_PersonsServicesConstraint.fromJson(String value) =>
      fromJson_Enum_PersonsServicesConstraint(value);

  String toJson() => toJson_Enum_PersonsServicesConstraint(this);
}

String toJson_Enum_PersonsServicesConstraint(Enum_PersonsServicesConstraint e) {
  switch (e) {
    case Enum_PersonsServicesConstraint
        .persons_services_person_id_service_id_key:
      return r'persons_services_person_id_service_id_key';
    case Enum_PersonsServicesConstraint.persons_services_pkey:
      return r'persons_services_pkey';
    case Enum_PersonsServicesConstraint.$unknown:
      return r'$unknown';
  }
}

Enum_PersonsServicesConstraint fromJson_Enum_PersonsServicesConstraint(
  String value,
) {
  switch (value) {
    case r'persons_services_person_id_service_id_key':
      return Enum_PersonsServicesConstraint
          .persons_services_person_id_service_id_key;
    case r'persons_services_pkey':
      return Enum_PersonsServicesConstraint.persons_services_pkey;
    default:
      return Enum_PersonsServicesConstraint.$unknown;
  }
}

enum Enum_PersonsServicesSelectColumn {
  personId,
  serviceId,
  $unknown;

  factory Enum_PersonsServicesSelectColumn.fromJson(String value) =>
      fromJson_Enum_PersonsServicesSelectColumn(value);

  String toJson() => toJson_Enum_PersonsServicesSelectColumn(this);
}

String toJson_Enum_PersonsServicesSelectColumn(
  Enum_PersonsServicesSelectColumn e,
) {
  switch (e) {
    case Enum_PersonsServicesSelectColumn.personId:
      return r'personId';
    case Enum_PersonsServicesSelectColumn.serviceId:
      return r'serviceId';
    case Enum_PersonsServicesSelectColumn.$unknown:
      return r'$unknown';
  }
}

Enum_PersonsServicesSelectColumn fromJson_Enum_PersonsServicesSelectColumn(
  String value,
) {
  switch (value) {
    case r'personId':
      return Enum_PersonsServicesSelectColumn.personId;
    case r'serviceId':
      return Enum_PersonsServicesSelectColumn.serviceId;
    default:
      return Enum_PersonsServicesSelectColumn.$unknown;
  }
}

enum Enum_PersonsServicesUpdateColumn {
  personId,
  serviceId,
  $unknown;

  factory Enum_PersonsServicesUpdateColumn.fromJson(String value) =>
      fromJson_Enum_PersonsServicesUpdateColumn(value);

  String toJson() => toJson_Enum_PersonsServicesUpdateColumn(this);
}

String toJson_Enum_PersonsServicesUpdateColumn(
  Enum_PersonsServicesUpdateColumn e,
) {
  switch (e) {
    case Enum_PersonsServicesUpdateColumn.personId:
      return r'personId';
    case Enum_PersonsServicesUpdateColumn.serviceId:
      return r'serviceId';
    case Enum_PersonsServicesUpdateColumn.$unknown:
      return r'$unknown';
  }
}

Enum_PersonsServicesUpdateColumn fromJson_Enum_PersonsServicesUpdateColumn(
  String value,
) {
  switch (value) {
    case r'personId':
      return Enum_PersonsServicesUpdateColumn.personId;
    case r'serviceId':
      return Enum_PersonsServicesUpdateColumn.serviceId;
    default:
      return Enum_PersonsServicesUpdateColumn.$unknown;
  }
}

enum Enum_PersonsTagsConstraint {
  persons_tags_pkey,
  $unknown;

  factory Enum_PersonsTagsConstraint.fromJson(String value) =>
      fromJson_Enum_PersonsTagsConstraint(value);

  String toJson() => toJson_Enum_PersonsTagsConstraint(this);
}

String toJson_Enum_PersonsTagsConstraint(Enum_PersonsTagsConstraint e) {
  switch (e) {
    case Enum_PersonsTagsConstraint.persons_tags_pkey:
      return r'persons_tags_pkey';
    case Enum_PersonsTagsConstraint.$unknown:
      return r'$unknown';
  }
}

Enum_PersonsTagsConstraint fromJson_Enum_PersonsTagsConstraint(String value) {
  switch (value) {
    case r'persons_tags_pkey':
      return Enum_PersonsTagsConstraint.persons_tags_pkey;
    default:
      return Enum_PersonsTagsConstraint.$unknown;
  }
}

enum Enum_PersonsTagsSelectColumn {
  personId,
  tagId,
  $unknown;

  factory Enum_PersonsTagsSelectColumn.fromJson(String value) =>
      fromJson_Enum_PersonsTagsSelectColumn(value);

  String toJson() => toJson_Enum_PersonsTagsSelectColumn(this);
}

String toJson_Enum_PersonsTagsSelectColumn(Enum_PersonsTagsSelectColumn e) {
  switch (e) {
    case Enum_PersonsTagsSelectColumn.personId:
      return r'personId';
    case Enum_PersonsTagsSelectColumn.tagId:
      return r'tagId';
    case Enum_PersonsTagsSelectColumn.$unknown:
      return r'$unknown';
  }
}

Enum_PersonsTagsSelectColumn fromJson_Enum_PersonsTagsSelectColumn(
  String value,
) {
  switch (value) {
    case r'personId':
      return Enum_PersonsTagsSelectColumn.personId;
    case r'tagId':
      return Enum_PersonsTagsSelectColumn.tagId;
    default:
      return Enum_PersonsTagsSelectColumn.$unknown;
  }
}

enum Enum_PersonsTagsUpdateColumn {
  $_PLACEHOLDER,
  $unknown;

  factory Enum_PersonsTagsUpdateColumn.fromJson(String value) =>
      fromJson_Enum_PersonsTagsUpdateColumn(value);

  String toJson() => toJson_Enum_PersonsTagsUpdateColumn(this);
}

String toJson_Enum_PersonsTagsUpdateColumn(Enum_PersonsTagsUpdateColumn e) {
  switch (e) {
    case Enum_PersonsTagsUpdateColumn.$_PLACEHOLDER:
      return r'_PLACEHOLDER';
    case Enum_PersonsTagsUpdateColumn.$unknown:
      return r'$unknown';
  }
}

Enum_PersonsTagsUpdateColumn fromJson_Enum_PersonsTagsUpdateColumn(
  String value,
) {
  switch (value) {
    case r'_PLACEHOLDER':
      return Enum_PersonsTagsUpdateColumn.$_PLACEHOLDER;
    default:
      return Enum_PersonsTagsUpdateColumn.$unknown;
  }
}

enum Enum_PersonsUpdateColumn {
  birthdate,
  churchId,
  collegeId,
  color,
  familyId,
  fatherId,
  gender,
  isServant,
  isShammas,
  isStudent,
  jobDescription,
  jobId,
  martialStatus,
  name,
  nationalId,
  notes,
  personTypeId,
  qualificationId,
  schoolId,
  serviceType,
  servingChurchId,
  shammasLevelId,
  stateId,
  storeId,
  studyYearId,
  uid,
  workStatus,
  $unknown;

  factory Enum_PersonsUpdateColumn.fromJson(String value) =>
      fromJson_Enum_PersonsUpdateColumn(value);

  String toJson() => toJson_Enum_PersonsUpdateColumn(this);
}

String toJson_Enum_PersonsUpdateColumn(Enum_PersonsUpdateColumn e) {
  switch (e) {
    case Enum_PersonsUpdateColumn.birthdate:
      return r'birthdate';
    case Enum_PersonsUpdateColumn.churchId:
      return r'churchId';
    case Enum_PersonsUpdateColumn.collegeId:
      return r'collegeId';
    case Enum_PersonsUpdateColumn.color:
      return r'color';
    case Enum_PersonsUpdateColumn.familyId:
      return r'familyId';
    case Enum_PersonsUpdateColumn.fatherId:
      return r'fatherId';
    case Enum_PersonsUpdateColumn.gender:
      return r'gender';
    case Enum_PersonsUpdateColumn.isServant:
      return r'isServant';
    case Enum_PersonsUpdateColumn.isShammas:
      return r'isShammas';
    case Enum_PersonsUpdateColumn.isStudent:
      return r'isStudent';
    case Enum_PersonsUpdateColumn.jobDescription:
      return r'jobDescription';
    case Enum_PersonsUpdateColumn.jobId:
      return r'jobId';
    case Enum_PersonsUpdateColumn.martialStatus:
      return r'martialStatus';
    case Enum_PersonsUpdateColumn.name:
      return r'name';
    case Enum_PersonsUpdateColumn.nationalId:
      return r'nationalId';
    case Enum_PersonsUpdateColumn.notes:
      return r'notes';
    case Enum_PersonsUpdateColumn.personTypeId:
      return r'personTypeId';
    case Enum_PersonsUpdateColumn.qualificationId:
      return r'qualificationId';
    case Enum_PersonsUpdateColumn.schoolId:
      return r'schoolId';
    case Enum_PersonsUpdateColumn.serviceType:
      return r'serviceType';
    case Enum_PersonsUpdateColumn.servingChurchId:
      return r'servingChurchId';
    case Enum_PersonsUpdateColumn.shammasLevelId:
      return r'shammasLevelId';
    case Enum_PersonsUpdateColumn.stateId:
      return r'stateId';
    case Enum_PersonsUpdateColumn.storeId:
      return r'storeId';
    case Enum_PersonsUpdateColumn.studyYearId:
      return r'studyYearId';
    case Enum_PersonsUpdateColumn.uid:
      return r'uid';
    case Enum_PersonsUpdateColumn.workStatus:
      return r'workStatus';
    case Enum_PersonsUpdateColumn.$unknown:
      return r'$unknown';
  }
}

Enum_PersonsUpdateColumn fromJson_Enum_PersonsUpdateColumn(String value) {
  switch (value) {
    case r'birthdate':
      return Enum_PersonsUpdateColumn.birthdate;
    case r'churchId':
      return Enum_PersonsUpdateColumn.churchId;
    case r'collegeId':
      return Enum_PersonsUpdateColumn.collegeId;
    case r'color':
      return Enum_PersonsUpdateColumn.color;
    case r'familyId':
      return Enum_PersonsUpdateColumn.familyId;
    case r'fatherId':
      return Enum_PersonsUpdateColumn.fatherId;
    case r'gender':
      return Enum_PersonsUpdateColumn.gender;
    case r'isServant':
      return Enum_PersonsUpdateColumn.isServant;
    case r'isShammas':
      return Enum_PersonsUpdateColumn.isShammas;
    case r'isStudent':
      return Enum_PersonsUpdateColumn.isStudent;
    case r'jobDescription':
      return Enum_PersonsUpdateColumn.jobDescription;
    case r'jobId':
      return Enum_PersonsUpdateColumn.jobId;
    case r'martialStatus':
      return Enum_PersonsUpdateColumn.martialStatus;
    case r'name':
      return Enum_PersonsUpdateColumn.name;
    case r'nationalId':
      return Enum_PersonsUpdateColumn.nationalId;
    case r'notes':
      return Enum_PersonsUpdateColumn.notes;
    case r'personTypeId':
      return Enum_PersonsUpdateColumn.personTypeId;
    case r'qualificationId':
      return Enum_PersonsUpdateColumn.qualificationId;
    case r'schoolId':
      return Enum_PersonsUpdateColumn.schoolId;
    case r'serviceType':
      return Enum_PersonsUpdateColumn.serviceType;
    case r'servingChurchId':
      return Enum_PersonsUpdateColumn.servingChurchId;
    case r'shammasLevelId':
      return Enum_PersonsUpdateColumn.shammasLevelId;
    case r'stateId':
      return Enum_PersonsUpdateColumn.stateId;
    case r'storeId':
      return Enum_PersonsUpdateColumn.storeId;
    case r'studyYearId':
      return Enum_PersonsUpdateColumn.studyYearId;
    case r'uid':
      return Enum_PersonsUpdateColumn.uid;
    case r'workStatus':
      return Enum_PersonsUpdateColumn.workStatus;
    default:
      return Enum_PersonsUpdateColumn.$unknown;
  }
}

enum Enum_QualificationsConstraint {
  qualifications_name_key,
  qualifications_pkey,
  $unknown;

  factory Enum_QualificationsConstraint.fromJson(String value) =>
      fromJson_Enum_QualificationsConstraint(value);

  String toJson() => toJson_Enum_QualificationsConstraint(this);
}

String toJson_Enum_QualificationsConstraint(Enum_QualificationsConstraint e) {
  switch (e) {
    case Enum_QualificationsConstraint.qualifications_name_key:
      return r'qualifications_name_key';
    case Enum_QualificationsConstraint.qualifications_pkey:
      return r'qualifications_pkey';
    case Enum_QualificationsConstraint.$unknown:
      return r'$unknown';
  }
}

Enum_QualificationsConstraint fromJson_Enum_QualificationsConstraint(
  String value,
) {
  switch (value) {
    case r'qualifications_name_key':
      return Enum_QualificationsConstraint.qualifications_name_key;
    case r'qualifications_pkey':
      return Enum_QualificationsConstraint.qualifications_pkey;
    default:
      return Enum_QualificationsConstraint.$unknown;
  }
}

enum Enum_QualificationsSelectColumn {
  id,
  name,
  $unknown;

  factory Enum_QualificationsSelectColumn.fromJson(String value) =>
      fromJson_Enum_QualificationsSelectColumn(value);

  String toJson() => toJson_Enum_QualificationsSelectColumn(this);
}

String toJson_Enum_QualificationsSelectColumn(
  Enum_QualificationsSelectColumn e,
) {
  switch (e) {
    case Enum_QualificationsSelectColumn.id:
      return r'id';
    case Enum_QualificationsSelectColumn.name:
      return r'name';
    case Enum_QualificationsSelectColumn.$unknown:
      return r'$unknown';
  }
}

Enum_QualificationsSelectColumn fromJson_Enum_QualificationsSelectColumn(
  String value,
) {
  switch (value) {
    case r'id':
      return Enum_QualificationsSelectColumn.id;
    case r'name':
      return Enum_QualificationsSelectColumn.name;
    default:
      return Enum_QualificationsSelectColumn.$unknown;
  }
}

enum Enum_QualificationsUpdateColumn {
  name,
  $unknown;

  factory Enum_QualificationsUpdateColumn.fromJson(String value) =>
      fromJson_Enum_QualificationsUpdateColumn(value);

  String toJson() => toJson_Enum_QualificationsUpdateColumn(this);
}

String toJson_Enum_QualificationsUpdateColumn(
  Enum_QualificationsUpdateColumn e,
) {
  switch (e) {
    case Enum_QualificationsUpdateColumn.name:
      return r'name';
    case Enum_QualificationsUpdateColumn.$unknown:
      return r'$unknown';
  }
}

Enum_QualificationsUpdateColumn fromJson_Enum_QualificationsUpdateColumn(
  String value,
) {
  switch (value) {
    case r'name':
      return Enum_QualificationsUpdateColumn.name;
    default:
      return Enum_QualificationsUpdateColumn.$unknown;
  }
}

enum Enum_ResolvedContactsSelectColumn {
  createdAt,
  effectiveFamilyId,
  effectivePersonTypeId,
  familyId,
  id,
  isMainPhone,
  label,
  personId,
  personTypeId,
  phone,
  updatedAt,
  $unknown;

  factory Enum_ResolvedContactsSelectColumn.fromJson(String value) =>
      fromJson_Enum_ResolvedContactsSelectColumn(value);

  String toJson() => toJson_Enum_ResolvedContactsSelectColumn(this);
}

String toJson_Enum_ResolvedContactsSelectColumn(
  Enum_ResolvedContactsSelectColumn e,
) {
  switch (e) {
    case Enum_ResolvedContactsSelectColumn.createdAt:
      return r'createdAt';
    case Enum_ResolvedContactsSelectColumn.effectiveFamilyId:
      return r'effectiveFamilyId';
    case Enum_ResolvedContactsSelectColumn.effectivePersonTypeId:
      return r'effectivePersonTypeId';
    case Enum_ResolvedContactsSelectColumn.familyId:
      return r'familyId';
    case Enum_ResolvedContactsSelectColumn.id:
      return r'id';
    case Enum_ResolvedContactsSelectColumn.isMainPhone:
      return r'isMainPhone';
    case Enum_ResolvedContactsSelectColumn.label:
      return r'label';
    case Enum_ResolvedContactsSelectColumn.personId:
      return r'personId';
    case Enum_ResolvedContactsSelectColumn.personTypeId:
      return r'personTypeId';
    case Enum_ResolvedContactsSelectColumn.phone:
      return r'phone';
    case Enum_ResolvedContactsSelectColumn.updatedAt:
      return r'updatedAt';
    case Enum_ResolvedContactsSelectColumn.$unknown:
      return r'$unknown';
  }
}

Enum_ResolvedContactsSelectColumn fromJson_Enum_ResolvedContactsSelectColumn(
  String value,
) {
  switch (value) {
    case r'createdAt':
      return Enum_ResolvedContactsSelectColumn.createdAt;
    case r'effectiveFamilyId':
      return Enum_ResolvedContactsSelectColumn.effectiveFamilyId;
    case r'effectivePersonTypeId':
      return Enum_ResolvedContactsSelectColumn.effectivePersonTypeId;
    case r'familyId':
      return Enum_ResolvedContactsSelectColumn.familyId;
    case r'id':
      return Enum_ResolvedContactsSelectColumn.id;
    case r'isMainPhone':
      return Enum_ResolvedContactsSelectColumn.isMainPhone;
    case r'label':
      return Enum_ResolvedContactsSelectColumn.label;
    case r'personId':
      return Enum_ResolvedContactsSelectColumn.personId;
    case r'personTypeId':
      return Enum_ResolvedContactsSelectColumn.personTypeId;
    case r'phone':
      return Enum_ResolvedContactsSelectColumn.phone;
    case r'updatedAt':
      return Enum_ResolvedContactsSelectColumn.updatedAt;
    default:
      return Enum_ResolvedContactsSelectColumn.$unknown;
  }
}

enum Enum_SchoolsConstraint {
  schools_name_key,
  schools_pkey,
  $unknown;

  factory Enum_SchoolsConstraint.fromJson(String value) =>
      fromJson_Enum_SchoolsConstraint(value);

  String toJson() => toJson_Enum_SchoolsConstraint(this);
}

String toJson_Enum_SchoolsConstraint(Enum_SchoolsConstraint e) {
  switch (e) {
    case Enum_SchoolsConstraint.schools_name_key:
      return r'schools_name_key';
    case Enum_SchoolsConstraint.schools_pkey:
      return r'schools_pkey';
    case Enum_SchoolsConstraint.$unknown:
      return r'$unknown';
  }
}

Enum_SchoolsConstraint fromJson_Enum_SchoolsConstraint(String value) {
  switch (value) {
    case r'schools_name_key':
      return Enum_SchoolsConstraint.schools_name_key;
    case r'schools_pkey':
      return Enum_SchoolsConstraint.schools_pkey;
    default:
      return Enum_SchoolsConstraint.$unknown;
  }
}

enum Enum_SchoolsSelectColumn {
  id,
  name,
  $unknown;

  factory Enum_SchoolsSelectColumn.fromJson(String value) =>
      fromJson_Enum_SchoolsSelectColumn(value);

  String toJson() => toJson_Enum_SchoolsSelectColumn(this);
}

String toJson_Enum_SchoolsSelectColumn(Enum_SchoolsSelectColumn e) {
  switch (e) {
    case Enum_SchoolsSelectColumn.id:
      return r'id';
    case Enum_SchoolsSelectColumn.name:
      return r'name';
    case Enum_SchoolsSelectColumn.$unknown:
      return r'$unknown';
  }
}

Enum_SchoolsSelectColumn fromJson_Enum_SchoolsSelectColumn(String value) {
  switch (value) {
    case r'id':
      return Enum_SchoolsSelectColumn.id;
    case r'name':
      return Enum_SchoolsSelectColumn.name;
    default:
      return Enum_SchoolsSelectColumn.$unknown;
  }
}

enum Enum_SchoolsUpdateColumn {
  name,
  $unknown;

  factory Enum_SchoolsUpdateColumn.fromJson(String value) =>
      fromJson_Enum_SchoolsUpdateColumn(value);

  String toJson() => toJson_Enum_SchoolsUpdateColumn(this);
}

String toJson_Enum_SchoolsUpdateColumn(Enum_SchoolsUpdateColumn e) {
  switch (e) {
    case Enum_SchoolsUpdateColumn.name:
      return r'name';
    case Enum_SchoolsUpdateColumn.$unknown:
      return r'$unknown';
  }
}

Enum_SchoolsUpdateColumn fromJson_Enum_SchoolsUpdateColumn(String value) {
  switch (value) {
    case r'name':
      return Enum_SchoolsUpdateColumn.name;
    default:
      return Enum_SchoolsUpdateColumn.$unknown;
  }
}

enum Enum_ServicesConstraint {
  services_default_meeting_id_key,
  services_name_key,
  services_pkey,
  $unknown;

  factory Enum_ServicesConstraint.fromJson(String value) =>
      fromJson_Enum_ServicesConstraint(value);

  String toJson() => toJson_Enum_ServicesConstraint(this);
}

String toJson_Enum_ServicesConstraint(Enum_ServicesConstraint e) {
  switch (e) {
    case Enum_ServicesConstraint.services_default_meeting_id_key:
      return r'services_default_meeting_id_key';
    case Enum_ServicesConstraint.services_name_key:
      return r'services_name_key';
    case Enum_ServicesConstraint.services_pkey:
      return r'services_pkey';
    case Enum_ServicesConstraint.$unknown:
      return r'$unknown';
  }
}

Enum_ServicesConstraint fromJson_Enum_ServicesConstraint(String value) {
  switch (value) {
    case r'services_default_meeting_id_key':
      return Enum_ServicesConstraint.services_default_meeting_id_key;
    case r'services_name_key':
      return Enum_ServicesConstraint.services_name_key;
    case r'services_pkey':
      return Enum_ServicesConstraint.services_pkey;
    default:
      return Enum_ServicesConstraint.$unknown;
  }
}

enum Enum_ServicesSelectColumn {
  blurhash,
  color,
  defaultMeetingId,
  id,
  name,
  nextServiceId,
  photoUpdatedAt,
  studyYearFromId,
  studyYearToId,
  $unknown;

  factory Enum_ServicesSelectColumn.fromJson(String value) =>
      fromJson_Enum_ServicesSelectColumn(value);

  String toJson() => toJson_Enum_ServicesSelectColumn(this);
}

String toJson_Enum_ServicesSelectColumn(Enum_ServicesSelectColumn e) {
  switch (e) {
    case Enum_ServicesSelectColumn.blurhash:
      return r'blurhash';
    case Enum_ServicesSelectColumn.color:
      return r'color';
    case Enum_ServicesSelectColumn.defaultMeetingId:
      return r'defaultMeetingId';
    case Enum_ServicesSelectColumn.id:
      return r'id';
    case Enum_ServicesSelectColumn.name:
      return r'name';
    case Enum_ServicesSelectColumn.nextServiceId:
      return r'nextServiceId';
    case Enum_ServicesSelectColumn.photoUpdatedAt:
      return r'photoUpdatedAt';
    case Enum_ServicesSelectColumn.studyYearFromId:
      return r'studyYearFromId';
    case Enum_ServicesSelectColumn.studyYearToId:
      return r'studyYearToId';
    case Enum_ServicesSelectColumn.$unknown:
      return r'$unknown';
  }
}

Enum_ServicesSelectColumn fromJson_Enum_ServicesSelectColumn(String value) {
  switch (value) {
    case r'blurhash':
      return Enum_ServicesSelectColumn.blurhash;
    case r'color':
      return Enum_ServicesSelectColumn.color;
    case r'defaultMeetingId':
      return Enum_ServicesSelectColumn.defaultMeetingId;
    case r'id':
      return Enum_ServicesSelectColumn.id;
    case r'name':
      return Enum_ServicesSelectColumn.name;
    case r'nextServiceId':
      return Enum_ServicesSelectColumn.nextServiceId;
    case r'photoUpdatedAt':
      return Enum_ServicesSelectColumn.photoUpdatedAt;
    case r'studyYearFromId':
      return Enum_ServicesSelectColumn.studyYearFromId;
    case r'studyYearToId':
      return Enum_ServicesSelectColumn.studyYearToId;
    default:
      return Enum_ServicesSelectColumn.$unknown;
  }
}

enum Enum_ServicesUpdateColumn {
  color,
  defaultMeetingId,
  name,
  nextServiceId,
  studyYearFromId,
  studyYearToId,
  $unknown;

  factory Enum_ServicesUpdateColumn.fromJson(String value) =>
      fromJson_Enum_ServicesUpdateColumn(value);

  String toJson() => toJson_Enum_ServicesUpdateColumn(this);
}

String toJson_Enum_ServicesUpdateColumn(Enum_ServicesUpdateColumn e) {
  switch (e) {
    case Enum_ServicesUpdateColumn.color:
      return r'color';
    case Enum_ServicesUpdateColumn.defaultMeetingId:
      return r'defaultMeetingId';
    case Enum_ServicesUpdateColumn.name:
      return r'name';
    case Enum_ServicesUpdateColumn.nextServiceId:
      return r'nextServiceId';
    case Enum_ServicesUpdateColumn.studyYearFromId:
      return r'studyYearFromId';
    case Enum_ServicesUpdateColumn.studyYearToId:
      return r'studyYearToId';
    case Enum_ServicesUpdateColumn.$unknown:
      return r'$unknown';
  }
}

Enum_ServicesUpdateColumn fromJson_Enum_ServicesUpdateColumn(String value) {
  switch (value) {
    case r'color':
      return Enum_ServicesUpdateColumn.color;
    case r'defaultMeetingId':
      return Enum_ServicesUpdateColumn.defaultMeetingId;
    case r'name':
      return Enum_ServicesUpdateColumn.name;
    case r'nextServiceId':
      return Enum_ServicesUpdateColumn.nextServiceId;
    case r'studyYearFromId':
      return Enum_ServicesUpdateColumn.studyYearFromId;
    case r'studyYearToId':
      return Enum_ServicesUpdateColumn.studyYearToId;
    default:
      return Enum_ServicesUpdateColumn.$unknown;
  }
}

enum Enum_ShammasLevelsSelectColumn {
  id,
  name,
  order,
  $unknown;

  factory Enum_ShammasLevelsSelectColumn.fromJson(String value) =>
      fromJson_Enum_ShammasLevelsSelectColumn(value);

  String toJson() => toJson_Enum_ShammasLevelsSelectColumn(this);
}

String toJson_Enum_ShammasLevelsSelectColumn(Enum_ShammasLevelsSelectColumn e) {
  switch (e) {
    case Enum_ShammasLevelsSelectColumn.id:
      return r'id';
    case Enum_ShammasLevelsSelectColumn.name:
      return r'name';
    case Enum_ShammasLevelsSelectColumn.order:
      return r'order';
    case Enum_ShammasLevelsSelectColumn.$unknown:
      return r'$unknown';
  }
}

Enum_ShammasLevelsSelectColumn fromJson_Enum_ShammasLevelsSelectColumn(
  String value,
) {
  switch (value) {
    case r'id':
      return Enum_ShammasLevelsSelectColumn.id;
    case r'name':
      return Enum_ShammasLevelsSelectColumn.name;
    case r'order':
      return Enum_ShammasLevelsSelectColumn.order;
    default:
      return Enum_ShammasLevelsSelectColumn.$unknown;
  }
}

enum Enum_StoresConstraint {
  stores_pkey,
  $unknown;

  factory Enum_StoresConstraint.fromJson(String value) =>
      fromJson_Enum_StoresConstraint(value);

  String toJson() => toJson_Enum_StoresConstraint(this);
}

String toJson_Enum_StoresConstraint(Enum_StoresConstraint e) {
  switch (e) {
    case Enum_StoresConstraint.stores_pkey:
      return r'stores_pkey';
    case Enum_StoresConstraint.$unknown:
      return r'$unknown';
  }
}

Enum_StoresConstraint fromJson_Enum_StoresConstraint(String value) {
  switch (value) {
    case r'stores_pkey':
      return Enum_StoresConstraint.stores_pkey;
    default:
      return Enum_StoresConstraint.$unknown;
  }
}

enum Enum_StoresSelectColumn {
  adminFamily,
  blurhash,
  color,
  id,
  name,
  photoUpdatedAt,
  $unknown;

  factory Enum_StoresSelectColumn.fromJson(String value) =>
      fromJson_Enum_StoresSelectColumn(value);

  String toJson() => toJson_Enum_StoresSelectColumn(this);
}

String toJson_Enum_StoresSelectColumn(Enum_StoresSelectColumn e) {
  switch (e) {
    case Enum_StoresSelectColumn.adminFamily:
      return r'adminFamily';
    case Enum_StoresSelectColumn.blurhash:
      return r'blurhash';
    case Enum_StoresSelectColumn.color:
      return r'color';
    case Enum_StoresSelectColumn.id:
      return r'id';
    case Enum_StoresSelectColumn.name:
      return r'name';
    case Enum_StoresSelectColumn.photoUpdatedAt:
      return r'photoUpdatedAt';
    case Enum_StoresSelectColumn.$unknown:
      return r'$unknown';
  }
}

Enum_StoresSelectColumn fromJson_Enum_StoresSelectColumn(String value) {
  switch (value) {
    case r'adminFamily':
      return Enum_StoresSelectColumn.adminFamily;
    case r'blurhash':
      return Enum_StoresSelectColumn.blurhash;
    case r'color':
      return Enum_StoresSelectColumn.color;
    case r'id':
      return Enum_StoresSelectColumn.id;
    case r'name':
      return Enum_StoresSelectColumn.name;
    case r'photoUpdatedAt':
      return Enum_StoresSelectColumn.photoUpdatedAt;
    default:
      return Enum_StoresSelectColumn.$unknown;
  }
}

enum Enum_StoresUpdateColumn {
  adminFamily,
  color,
  name,
  $unknown;

  factory Enum_StoresUpdateColumn.fromJson(String value) =>
      fromJson_Enum_StoresUpdateColumn(value);

  String toJson() => toJson_Enum_StoresUpdateColumn(this);
}

String toJson_Enum_StoresUpdateColumn(Enum_StoresUpdateColumn e) {
  switch (e) {
    case Enum_StoresUpdateColumn.adminFamily:
      return r'adminFamily';
    case Enum_StoresUpdateColumn.color:
      return r'color';
    case Enum_StoresUpdateColumn.name:
      return r'name';
    case Enum_StoresUpdateColumn.$unknown:
      return r'$unknown';
  }
}

Enum_StoresUpdateColumn fromJson_Enum_StoresUpdateColumn(String value) {
  switch (value) {
    case r'adminFamily':
      return Enum_StoresUpdateColumn.adminFamily;
    case r'color':
      return Enum_StoresUpdateColumn.color;
    case r'name':
      return Enum_StoresUpdateColumn.name;
    default:
      return Enum_StoresUpdateColumn.$unknown;
  }
}

enum Enum_StreetsConstraint {
  streets_pkey,
  $unknown;

  factory Enum_StreetsConstraint.fromJson(String value) =>
      fromJson_Enum_StreetsConstraint(value);

  String toJson() => toJson_Enum_StreetsConstraint(this);
}

String toJson_Enum_StreetsConstraint(Enum_StreetsConstraint e) {
  switch (e) {
    case Enum_StreetsConstraint.streets_pkey:
      return r'streets_pkey';
    case Enum_StreetsConstraint.$unknown:
      return r'$unknown';
  }
}

Enum_StreetsConstraint fromJson_Enum_StreetsConstraint(String value) {
  switch (value) {
    case r'streets_pkey':
      return Enum_StreetsConstraint.streets_pkey;
    default:
      return Enum_StreetsConstraint.$unknown;
  }
}

enum Enum_StreetsSelectColumn {
  blurhash,
  color,
  id,
  line,
  name,
  photoUpdatedAt,
  $unknown;

  factory Enum_StreetsSelectColumn.fromJson(String value) =>
      fromJson_Enum_StreetsSelectColumn(value);

  String toJson() => toJson_Enum_StreetsSelectColumn(this);
}

String toJson_Enum_StreetsSelectColumn(Enum_StreetsSelectColumn e) {
  switch (e) {
    case Enum_StreetsSelectColumn.blurhash:
      return r'blurhash';
    case Enum_StreetsSelectColumn.color:
      return r'color';
    case Enum_StreetsSelectColumn.id:
      return r'id';
    case Enum_StreetsSelectColumn.line:
      return r'line';
    case Enum_StreetsSelectColumn.name:
      return r'name';
    case Enum_StreetsSelectColumn.photoUpdatedAt:
      return r'photoUpdatedAt';
    case Enum_StreetsSelectColumn.$unknown:
      return r'$unknown';
  }
}

Enum_StreetsSelectColumn fromJson_Enum_StreetsSelectColumn(String value) {
  switch (value) {
    case r'blurhash':
      return Enum_StreetsSelectColumn.blurhash;
    case r'color':
      return Enum_StreetsSelectColumn.color;
    case r'id':
      return Enum_StreetsSelectColumn.id;
    case r'line':
      return Enum_StreetsSelectColumn.line;
    case r'name':
      return Enum_StreetsSelectColumn.name;
    case r'photoUpdatedAt':
      return Enum_StreetsSelectColumn.photoUpdatedAt;
    default:
      return Enum_StreetsSelectColumn.$unknown;
  }
}

enum Enum_StreetsUpdateColumn {
  color,
  line,
  name,
  $unknown;

  factory Enum_StreetsUpdateColumn.fromJson(String value) =>
      fromJson_Enum_StreetsUpdateColumn(value);

  String toJson() => toJson_Enum_StreetsUpdateColumn(this);
}

String toJson_Enum_StreetsUpdateColumn(Enum_StreetsUpdateColumn e) {
  switch (e) {
    case Enum_StreetsUpdateColumn.color:
      return r'color';
    case Enum_StreetsUpdateColumn.line:
      return r'line';
    case Enum_StreetsUpdateColumn.name:
      return r'name';
    case Enum_StreetsUpdateColumn.$unknown:
      return r'$unknown';
  }
}

Enum_StreetsUpdateColumn fromJson_Enum_StreetsUpdateColumn(String value) {
  switch (value) {
    case r'color':
      return Enum_StreetsUpdateColumn.color;
    case r'line':
      return Enum_StreetsUpdateColumn.line;
    case r'name':
      return Enum_StreetsUpdateColumn.name;
    default:
      return Enum_StreetsUpdateColumn.$unknown;
  }
}

enum Enum_StudyYearsConstraint {
  study_years_name_key,
  study_years_order_key,
  study_years_pkey,
  $unknown;

  factory Enum_StudyYearsConstraint.fromJson(String value) =>
      fromJson_Enum_StudyYearsConstraint(value);

  String toJson() => toJson_Enum_StudyYearsConstraint(this);
}

String toJson_Enum_StudyYearsConstraint(Enum_StudyYearsConstraint e) {
  switch (e) {
    case Enum_StudyYearsConstraint.study_years_name_key:
      return r'study_years_name_key';
    case Enum_StudyYearsConstraint.study_years_order_key:
      return r'study_years_order_key';
    case Enum_StudyYearsConstraint.study_years_pkey:
      return r'study_years_pkey';
    case Enum_StudyYearsConstraint.$unknown:
      return r'$unknown';
  }
}

Enum_StudyYearsConstraint fromJson_Enum_StudyYearsConstraint(String value) {
  switch (value) {
    case r'study_years_name_key':
      return Enum_StudyYearsConstraint.study_years_name_key;
    case r'study_years_order_key':
      return Enum_StudyYearsConstraint.study_years_order_key;
    case r'study_years_pkey':
      return Enum_StudyYearsConstraint.study_years_pkey;
    default:
      return Enum_StudyYearsConstraint.$unknown;
  }
}

enum Enum_StudyYearsSelectColumn {
  id,
  name,
  order,
  $unknown;

  factory Enum_StudyYearsSelectColumn.fromJson(String value) =>
      fromJson_Enum_StudyYearsSelectColumn(value);

  String toJson() => toJson_Enum_StudyYearsSelectColumn(this);
}

String toJson_Enum_StudyYearsSelectColumn(Enum_StudyYearsSelectColumn e) {
  switch (e) {
    case Enum_StudyYearsSelectColumn.id:
      return r'id';
    case Enum_StudyYearsSelectColumn.name:
      return r'name';
    case Enum_StudyYearsSelectColumn.order:
      return r'order';
    case Enum_StudyYearsSelectColumn.$unknown:
      return r'$unknown';
  }
}

Enum_StudyYearsSelectColumn fromJson_Enum_StudyYearsSelectColumn(String value) {
  switch (value) {
    case r'id':
      return Enum_StudyYearsSelectColumn.id;
    case r'name':
      return Enum_StudyYearsSelectColumn.name;
    case r'order':
      return Enum_StudyYearsSelectColumn.order;
    default:
      return Enum_StudyYearsSelectColumn.$unknown;
  }
}

enum Enum_StudyYearsUpdateColumn {
  name,
  $unknown;

  factory Enum_StudyYearsUpdateColumn.fromJson(String value) =>
      fromJson_Enum_StudyYearsUpdateColumn(value);

  String toJson() => toJson_Enum_StudyYearsUpdateColumn(this);
}

String toJson_Enum_StudyYearsUpdateColumn(Enum_StudyYearsUpdateColumn e) {
  switch (e) {
    case Enum_StudyYearsUpdateColumn.name:
      return r'name';
    case Enum_StudyYearsUpdateColumn.$unknown:
      return r'$unknown';
  }
}

Enum_StudyYearsUpdateColumn fromJson_Enum_StudyYearsUpdateColumn(String value) {
  switch (value) {
    case r'name':
      return Enum_StudyYearsUpdateColumn.name;
    default:
      return Enum_StudyYearsUpdateColumn.$unknown;
  }
}

enum Enum_TagsConstraint {
  tags_name_key,
  tags_pkey,
  $unknown;

  factory Enum_TagsConstraint.fromJson(String value) =>
      fromJson_Enum_TagsConstraint(value);

  String toJson() => toJson_Enum_TagsConstraint(this);
}

String toJson_Enum_TagsConstraint(Enum_TagsConstraint e) {
  switch (e) {
    case Enum_TagsConstraint.tags_name_key:
      return r'tags_name_key';
    case Enum_TagsConstraint.tags_pkey:
      return r'tags_pkey';
    case Enum_TagsConstraint.$unknown:
      return r'$unknown';
  }
}

Enum_TagsConstraint fromJson_Enum_TagsConstraint(String value) {
  switch (value) {
    case r'tags_name_key':
      return Enum_TagsConstraint.tags_name_key;
    case r'tags_pkey':
      return Enum_TagsConstraint.tags_pkey;
    default:
      return Enum_TagsConstraint.$unknown;
  }
}

enum Enum_TagsSelectColumn {
  color,
  id,
  name,
  $unknown;

  factory Enum_TagsSelectColumn.fromJson(String value) =>
      fromJson_Enum_TagsSelectColumn(value);

  String toJson() => toJson_Enum_TagsSelectColumn(this);
}

String toJson_Enum_TagsSelectColumn(Enum_TagsSelectColumn e) {
  switch (e) {
    case Enum_TagsSelectColumn.color:
      return r'color';
    case Enum_TagsSelectColumn.id:
      return r'id';
    case Enum_TagsSelectColumn.name:
      return r'name';
    case Enum_TagsSelectColumn.$unknown:
      return r'$unknown';
  }
}

Enum_TagsSelectColumn fromJson_Enum_TagsSelectColumn(String value) {
  switch (value) {
    case r'color':
      return Enum_TagsSelectColumn.color;
    case r'id':
      return Enum_TagsSelectColumn.id;
    case r'name':
      return Enum_TagsSelectColumn.name;
    default:
      return Enum_TagsSelectColumn.$unknown;
  }
}

enum Enum_TagsUpdateColumn {
  color,
  name,
  $unknown;

  factory Enum_TagsUpdateColumn.fromJson(String value) =>
      fromJson_Enum_TagsUpdateColumn(value);

  String toJson() => toJson_Enum_TagsUpdateColumn(this);
}

String toJson_Enum_TagsUpdateColumn(Enum_TagsUpdateColumn e) {
  switch (e) {
    case Enum_TagsUpdateColumn.color:
      return r'color';
    case Enum_TagsUpdateColumn.name:
      return r'name';
    case Enum_TagsUpdateColumn.$unknown:
      return r'$unknown';
  }
}

Enum_TagsUpdateColumn fromJson_Enum_TagsUpdateColumn(String value) {
  switch (value) {
    case r'color':
      return Enum_TagsUpdateColumn.color;
    case r'name':
      return Enum_TagsUpdateColumn.name;
    default:
      return Enum_TagsUpdateColumn.$unknown;
  }
}

enum Enum_UniversitiesConstraint {
  universities_name_key,
  universities_pkey,
  $unknown;

  factory Enum_UniversitiesConstraint.fromJson(String value) =>
      fromJson_Enum_UniversitiesConstraint(value);

  String toJson() => toJson_Enum_UniversitiesConstraint(this);
}

String toJson_Enum_UniversitiesConstraint(Enum_UniversitiesConstraint e) {
  switch (e) {
    case Enum_UniversitiesConstraint.universities_name_key:
      return r'universities_name_key';
    case Enum_UniversitiesConstraint.universities_pkey:
      return r'universities_pkey';
    case Enum_UniversitiesConstraint.$unknown:
      return r'$unknown';
  }
}

Enum_UniversitiesConstraint fromJson_Enum_UniversitiesConstraint(String value) {
  switch (value) {
    case r'universities_name_key':
      return Enum_UniversitiesConstraint.universities_name_key;
    case r'universities_pkey':
      return Enum_UniversitiesConstraint.universities_pkey;
    default:
      return Enum_UniversitiesConstraint.$unknown;
  }
}

enum Enum_UniversitiesSelectColumn {
  id,
  name,
  $unknown;

  factory Enum_UniversitiesSelectColumn.fromJson(String value) =>
      fromJson_Enum_UniversitiesSelectColumn(value);

  String toJson() => toJson_Enum_UniversitiesSelectColumn(this);
}

String toJson_Enum_UniversitiesSelectColumn(Enum_UniversitiesSelectColumn e) {
  switch (e) {
    case Enum_UniversitiesSelectColumn.id:
      return r'id';
    case Enum_UniversitiesSelectColumn.name:
      return r'name';
    case Enum_UniversitiesSelectColumn.$unknown:
      return r'$unknown';
  }
}

Enum_UniversitiesSelectColumn fromJson_Enum_UniversitiesSelectColumn(
  String value,
) {
  switch (value) {
    case r'id':
      return Enum_UniversitiesSelectColumn.id;
    case r'name':
      return Enum_UniversitiesSelectColumn.name;
    default:
      return Enum_UniversitiesSelectColumn.$unknown;
  }
}

enum Enum_UniversitiesUpdateColumn {
  name,
  $unknown;

  factory Enum_UniversitiesUpdateColumn.fromJson(String value) =>
      fromJson_Enum_UniversitiesUpdateColumn(value);

  String toJson() => toJson_Enum_UniversitiesUpdateColumn(this);
}

String toJson_Enum_UniversitiesUpdateColumn(Enum_UniversitiesUpdateColumn e) {
  switch (e) {
    case Enum_UniversitiesUpdateColumn.name:
      return r'name';
    case Enum_UniversitiesUpdateColumn.$unknown:
      return r'$unknown';
  }
}

Enum_UniversitiesUpdateColumn fromJson_Enum_UniversitiesUpdateColumn(
  String value,
) {
  switch (value) {
    case r'name':
      return Enum_UniversitiesUpdateColumn.name;
    default:
      return Enum_UniversitiesUpdateColumn.$unknown;
  }
}

enum Enum_UsersFcmTokensConstraint {
  users_fcm_tokens_pkey,
  $unknown;

  factory Enum_UsersFcmTokensConstraint.fromJson(String value) =>
      fromJson_Enum_UsersFcmTokensConstraint(value);

  String toJson() => toJson_Enum_UsersFcmTokensConstraint(this);
}

String toJson_Enum_UsersFcmTokensConstraint(Enum_UsersFcmTokensConstraint e) {
  switch (e) {
    case Enum_UsersFcmTokensConstraint.users_fcm_tokens_pkey:
      return r'users_fcm_tokens_pkey';
    case Enum_UsersFcmTokensConstraint.$unknown:
      return r'$unknown';
  }
}

Enum_UsersFcmTokensConstraint fromJson_Enum_UsersFcmTokensConstraint(
  String value,
) {
  switch (value) {
    case r'users_fcm_tokens_pkey':
      return Enum_UsersFcmTokensConstraint.users_fcm_tokens_pkey;
    default:
      return Enum_UsersFcmTokensConstraint.$unknown;
  }
}

enum Enum_UsersFcmTokensSelectColumn {
  createdAt,
  token,
  uid,
  $unknown;

  factory Enum_UsersFcmTokensSelectColumn.fromJson(String value) =>
      fromJson_Enum_UsersFcmTokensSelectColumn(value);

  String toJson() => toJson_Enum_UsersFcmTokensSelectColumn(this);
}

String toJson_Enum_UsersFcmTokensSelectColumn(
  Enum_UsersFcmTokensSelectColumn e,
) {
  switch (e) {
    case Enum_UsersFcmTokensSelectColumn.createdAt:
      return r'createdAt';
    case Enum_UsersFcmTokensSelectColumn.token:
      return r'token';
    case Enum_UsersFcmTokensSelectColumn.uid:
      return r'uid';
    case Enum_UsersFcmTokensSelectColumn.$unknown:
      return r'$unknown';
  }
}

Enum_UsersFcmTokensSelectColumn fromJson_Enum_UsersFcmTokensSelectColumn(
  String value,
) {
  switch (value) {
    case r'createdAt':
      return Enum_UsersFcmTokensSelectColumn.createdAt;
    case r'token':
      return Enum_UsersFcmTokensSelectColumn.token;
    case r'uid':
      return Enum_UsersFcmTokensSelectColumn.uid;
    default:
      return Enum_UsersFcmTokensSelectColumn.$unknown;
  }
}

enum Enum_UsersFcmTokensUpdateColumn {
  $_PLACEHOLDER,
  $unknown;

  factory Enum_UsersFcmTokensUpdateColumn.fromJson(String value) =>
      fromJson_Enum_UsersFcmTokensUpdateColumn(value);

  String toJson() => toJson_Enum_UsersFcmTokensUpdateColumn(this);
}

String toJson_Enum_UsersFcmTokensUpdateColumn(
  Enum_UsersFcmTokensUpdateColumn e,
) {
  switch (e) {
    case Enum_UsersFcmTokensUpdateColumn.$_PLACEHOLDER:
      return r'_PLACEHOLDER';
    case Enum_UsersFcmTokensUpdateColumn.$unknown:
      return r'$unknown';
  }
}

Enum_UsersFcmTokensUpdateColumn fromJson_Enum_UsersFcmTokensUpdateColumn(
  String value,
) {
  switch (value) {
    case r'_PLACEHOLDER':
      return Enum_UsersFcmTokensUpdateColumn.$_PLACEHOLDER;
    default:
      return Enum_UsersFcmTokensUpdateColumn.$unknown;
  }
}

enum Enum_UsersPreferencesSelectColumn {
  darkTheme,
  greatFeastTheme,
  lastHomeMode,
  orderByPreferences,
  uid,
  updatedAt,
  $unknown;

  factory Enum_UsersPreferencesSelectColumn.fromJson(String value) =>
      fromJson_Enum_UsersPreferencesSelectColumn(value);

  String toJson() => toJson_Enum_UsersPreferencesSelectColumn(this);
}

String toJson_Enum_UsersPreferencesSelectColumn(
  Enum_UsersPreferencesSelectColumn e,
) {
  switch (e) {
    case Enum_UsersPreferencesSelectColumn.darkTheme:
      return r'darkTheme';
    case Enum_UsersPreferencesSelectColumn.greatFeastTheme:
      return r'greatFeastTheme';
    case Enum_UsersPreferencesSelectColumn.lastHomeMode:
      return r'lastHomeMode';
    case Enum_UsersPreferencesSelectColumn.orderByPreferences:
      return r'orderByPreferences';
    case Enum_UsersPreferencesSelectColumn.uid:
      return r'uid';
    case Enum_UsersPreferencesSelectColumn.updatedAt:
      return r'updatedAt';
    case Enum_UsersPreferencesSelectColumn.$unknown:
      return r'$unknown';
  }
}

Enum_UsersPreferencesSelectColumn fromJson_Enum_UsersPreferencesSelectColumn(
  String value,
) {
  switch (value) {
    case r'darkTheme':
      return Enum_UsersPreferencesSelectColumn.darkTheme;
    case r'greatFeastTheme':
      return Enum_UsersPreferencesSelectColumn.greatFeastTheme;
    case r'lastHomeMode':
      return Enum_UsersPreferencesSelectColumn.lastHomeMode;
    case r'orderByPreferences':
      return Enum_UsersPreferencesSelectColumn.orderByPreferences;
    case r'uid':
      return Enum_UsersPreferencesSelectColumn.uid;
    case r'updatedAt':
      return Enum_UsersPreferencesSelectColumn.updatedAt;
    default:
      return Enum_UsersPreferencesSelectColumn.$unknown;
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
