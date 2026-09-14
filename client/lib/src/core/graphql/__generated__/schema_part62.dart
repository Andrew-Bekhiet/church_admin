// Part 62 of the schema
part of "schema.graphql.dart";

String toJson_Enum_GroupsUpdateColumn(Enum_GroupsUpdateColumn e) {
  switch (e) {
    case Enum_GroupsUpdateColumn.color:
      return r'color';
    case Enum_GroupsUpdateColumn.defaultMeetingId:
      return r'defaultMeetingId';
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
    case r'defaultMeetingId':
      return Enum_GroupsUpdateColumn.defaultMeetingId;
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

enum Enum_HistoryAttendanceDaysSelectColumn {
  day,
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
    case Enum_HistoryAttendanceDaysSelectColumn.$unknown:
      return r'$unknown';
  }
}

Enum_HistoryAttendanceDaysSelectColumn
fromJson_Enum_HistoryAttendanceDaysSelectColumn(String value) {
  switch (value) {
    case r'day':
      return Enum_HistoryAttendanceDaysSelectColumn.day;
    default:
      return Enum_HistoryAttendanceDaysSelectColumn.$unknown;
  }
}

enum Enum_HistoryAttendanceDaysUpdateColumn {
  day,
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
    case Enum_HistoryAttendanceDaysUpdateColumn.$unknown:
      return r'$unknown';
  }
}

Enum_HistoryAttendanceDaysUpdateColumn
fromJson_Enum_HistoryAttendanceDaysUpdateColumn(String value) {
  switch (value) {
    case r'day':
      return Enum_HistoryAttendanceDaysUpdateColumn.day;
    default:
      return Enum_HistoryAttendanceDaysUpdateColumn.$unknown;
  }
}

enum Enum_HistoryAttendanceHistoryConstraint {
  attendance_history_meeting_person_day_idx,
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
        .attendance_history_meeting_person_day_idx:
      return r'attendance_history_meeting_person_day_idx';
    case Enum_HistoryAttendanceHistoryConstraint.attendance_history_pkey:
      return r'attendance_history_pkey';
    case Enum_HistoryAttendanceHistoryConstraint.$unknown:
      return r'$unknown';
  }
}

Enum_HistoryAttendanceHistoryConstraint
fromJson_Enum_HistoryAttendanceHistoryConstraint(String value) {
  switch (value) {
    case r'attendance_history_meeting_person_day_idx':
      return Enum_HistoryAttendanceHistoryConstraint
          .attendance_history_meeting_person_day_idx;
    case r'attendance_history_pkey':
      return Enum_HistoryAttendanceHistoryConstraint.attendance_history_pkey;
    default:
      return Enum_HistoryAttendanceHistoryConstraint.$unknown;
  }
}

enum Enum_HistoryAttendanceHistorySelectColumn {
  asServant,
  datetime,
  day,
  id,
  meetingId,
  personId,
  recordedBy,
  $unknown;

  factory Enum_HistoryAttendanceHistorySelectColumn.fromJson(String value) =>
      fromJson_Enum_HistoryAttendanceHistorySelectColumn(value);

  String toJson() => toJson_Enum_HistoryAttendanceHistorySelectColumn(this);
}

String toJson_Enum_HistoryAttendanceHistorySelectColumn(
  Enum_HistoryAttendanceHistorySelectColumn e,
) {
  switch (e) {
    case Enum_HistoryAttendanceHistorySelectColumn.asServant:
      return r'asServant';
    case Enum_HistoryAttendanceHistorySelectColumn.datetime:
      return r'datetime';
    case Enum_HistoryAttendanceHistorySelectColumn.day:
      return r'day';
    case Enum_HistoryAttendanceHistorySelectColumn.id:
      return r'id';
    case Enum_HistoryAttendanceHistorySelectColumn.meetingId:
      return r'meetingId';
    case Enum_HistoryAttendanceHistorySelectColumn.personId:
      return r'personId';
    case Enum_HistoryAttendanceHistorySelectColumn.recordedBy:
      return r'recordedBy';
    case Enum_HistoryAttendanceHistorySelectColumn.$unknown:
      return r'$unknown';
  }
}

Enum_HistoryAttendanceHistorySelectColumn
fromJson_Enum_HistoryAttendanceHistorySelectColumn(String value) {
  switch (value) {
    case r'asServant':
      return Enum_HistoryAttendanceHistorySelectColumn.asServant;
    case r'datetime':
      return Enum_HistoryAttendanceHistorySelectColumn.datetime;
    case r'day':
      return Enum_HistoryAttendanceHistorySelectColumn.day;
    case r'id':
      return Enum_HistoryAttendanceHistorySelectColumn.id;
    case r'meetingId':
      return Enum_HistoryAttendanceHistorySelectColumn.meetingId;
    case r'personId':
      return Enum_HistoryAttendanceHistorySelectColumn.personId;
    case r'recordedBy':
      return Enum_HistoryAttendanceHistorySelectColumn.recordedBy;
    default:
      return Enum_HistoryAttendanceHistorySelectColumn.$unknown;
  }
}

enum Enum_HistoryAttendanceHistorySelectColumnHistoryAttendanceHistoryAggregateBoolExpBool_andArgumentsColumns {
  asServant,
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
        .asServant:
      return r'asServant';
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
    case r'asServant':
      return Enum_HistoryAttendanceHistorySelectColumnHistoryAttendanceHistoryAggregateBoolExpBool_andArgumentsColumns
          .asServant;
    default:
      return Enum_HistoryAttendanceHistorySelectColumnHistoryAttendanceHistoryAggregateBoolExpBool_andArgumentsColumns
          .$unknown;
  }
}

enum Enum_HistoryAttendanceHistorySelectColumnHistoryAttendanceHistoryAggregateBoolExpBool_orArgumentsColumns {
  asServant,
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
        .asServant:
      return r'asServant';
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
    case r'asServant':
      return Enum_HistoryAttendanceHistorySelectColumnHistoryAttendanceHistoryAggregateBoolExpBool_orArgumentsColumns
          .asServant;
    default:
      return Enum_HistoryAttendanceHistorySelectColumnHistoryAttendanceHistoryAggregateBoolExpBool_orArgumentsColumns
          .$unknown;
  }
}

enum Enum_HistoryAttendanceHistoryUpdateColumn {
  datetime,
  $unknown;

  factory Enum_HistoryAttendanceHistoryUpdateColumn.fromJson(String value) =>
      fromJson_Enum_HistoryAttendanceHistoryUpdateColumn(value);

  String toJson() => toJson_Enum_HistoryAttendanceHistoryUpdateColumn(this);
}

String toJson_Enum_HistoryAttendanceHistoryUpdateColumn(
  Enum_HistoryAttendanceHistoryUpdateColumn e,
) {
  switch (e) {
    case Enum_HistoryAttendanceHistoryUpdateColumn.datetime:
      return r'datetime';
    case Enum_HistoryAttendanceHistoryUpdateColumn.$unknown:
      return r'$unknown';
  }
}

Enum_HistoryAttendanceHistoryUpdateColumn
fromJson_Enum_HistoryAttendanceHistoryUpdateColumn(String value) {
  switch (value) {
    case r'datetime':
      return Enum_HistoryAttendanceHistoryUpdateColumn.datetime;
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

enum Enum_HistoryMeetingDaysSelectColumn {
  day,
  gender,
  meetingId,
  personsCount,
  servantsCount,
  studyYearId,
  totalCount,
  $unknown;

  factory Enum_HistoryMeetingDaysSelectColumn.fromJson(String value) =>
      fromJson_Enum_HistoryMeetingDaysSelectColumn(value);

  String toJson() => toJson_Enum_HistoryMeetingDaysSelectColumn(this);
}

String toJson_Enum_HistoryMeetingDaysSelectColumn(
  Enum_HistoryMeetingDaysSelectColumn e,
) {
  switch (e) {
    case Enum_HistoryMeetingDaysSelectColumn.day:
      return r'day';
    case Enum_HistoryMeetingDaysSelectColumn.gender:
      return r'gender';
    case Enum_HistoryMeetingDaysSelectColumn.meetingId:
      return r'meetingId';
    case Enum_HistoryMeetingDaysSelectColumn.personsCount:
      return r'personsCount';
    case Enum_HistoryMeetingDaysSelectColumn.servantsCount:
      return r'servantsCount';
    case Enum_HistoryMeetingDaysSelectColumn.studyYearId:
      return r'studyYearId';
    case Enum_HistoryMeetingDaysSelectColumn.totalCount:
      return r'totalCount';
    case Enum_HistoryMeetingDaysSelectColumn.$unknown:
      return r'$unknown';
  }
}

Enum_HistoryMeetingDaysSelectColumn
fromJson_Enum_HistoryMeetingDaysSelectColumn(String value) {
  switch (value) {
    case r'day':
      return Enum_HistoryMeetingDaysSelectColumn.day;
    case r'gender':
      return Enum_HistoryMeetingDaysSelectColumn.gender;
    case r'meetingId':
      return Enum_HistoryMeetingDaysSelectColumn.meetingId;
    case r'personsCount':
      return Enum_HistoryMeetingDaysSelectColumn.personsCount;
    case r'servantsCount':
      return Enum_HistoryMeetingDaysSelectColumn.servantsCount;
    case r'studyYearId':
      return Enum_HistoryMeetingDaysSelectColumn.studyYearId;
    case r'totalCount':
      return Enum_HistoryMeetingDaysSelectColumn.totalCount;
    default:
      return Enum_HistoryMeetingDaysSelectColumn.$unknown;
  }
}

enum Enum_HistoryMeetingDaysSelectColumnHistoryMeetingDaysAggregateBoolExpBool_andArgumentsColumns {
  gender,
  $unknown;

  factory Enum_HistoryMeetingDaysSelectColumnHistoryMeetingDaysAggregateBoolExpBool_andArgumentsColumns.fromJson(
    String value,
  ) =>
      fromJson_Enum_HistoryMeetingDaysSelectColumnHistoryMeetingDaysAggregateBoolExpBool_andArgumentsColumns(
        value,
      );

  String toJson() =>
      toJson_Enum_HistoryMeetingDaysSelectColumnHistoryMeetingDaysAggregateBoolExpBool_andArgumentsColumns(
        this,
      );
}

String
toJson_Enum_HistoryMeetingDaysSelectColumnHistoryMeetingDaysAggregateBoolExpBool_andArgumentsColumns(
  Enum_HistoryMeetingDaysSelectColumnHistoryMeetingDaysAggregateBoolExpBool_andArgumentsColumns
  e,
) {
  switch (e) {
    case Enum_HistoryMeetingDaysSelectColumnHistoryMeetingDaysAggregateBoolExpBool_andArgumentsColumns
        .gender:
      return r'gender';
    case Enum_HistoryMeetingDaysSelectColumnHistoryMeetingDaysAggregateBoolExpBool_andArgumentsColumns
        .$unknown:
      return r'$unknown';
  }
}

Enum_HistoryMeetingDaysSelectColumnHistoryMeetingDaysAggregateBoolExpBool_andArgumentsColumns
fromJson_Enum_HistoryMeetingDaysSelectColumnHistoryMeetingDaysAggregateBoolExpBool_andArgumentsColumns(
  String value,
) {
  switch (value) {
    case r'gender':
      return Enum_HistoryMeetingDaysSelectColumnHistoryMeetingDaysAggregateBoolExpBool_andArgumentsColumns
          .gender;
    default:
      return Enum_HistoryMeetingDaysSelectColumnHistoryMeetingDaysAggregateBoolExpBool_andArgumentsColumns
          .$unknown;
  }
}

enum Enum_HistoryMeetingDaysSelectColumnHistoryMeetingDaysAggregateBoolExpBool_orArgumentsColumns {
  gender,
  $unknown;

  factory Enum_HistoryMeetingDaysSelectColumnHistoryMeetingDaysAggregateBoolExpBool_orArgumentsColumns.fromJson(
    String value,
  ) =>
      fromJson_Enum_HistoryMeetingDaysSelectColumnHistoryMeetingDaysAggregateBoolExpBool_orArgumentsColumns(
        value,
      );

  String toJson() =>
      toJson_Enum_HistoryMeetingDaysSelectColumnHistoryMeetingDaysAggregateBoolExpBool_orArgumentsColumns(
        this,
      );
}

String
toJson_Enum_HistoryMeetingDaysSelectColumnHistoryMeetingDaysAggregateBoolExpBool_orArgumentsColumns(
  Enum_HistoryMeetingDaysSelectColumnHistoryMeetingDaysAggregateBoolExpBool_orArgumentsColumns
  e,
) {
  switch (e) {
    case Enum_HistoryMeetingDaysSelectColumnHistoryMeetingDaysAggregateBoolExpBool_orArgumentsColumns
        .gender:
      return r'gender';
    case Enum_HistoryMeetingDaysSelectColumnHistoryMeetingDaysAggregateBoolExpBool_orArgumentsColumns
        .$unknown:
      return r'$unknown';
  }
}

Enum_HistoryMeetingDaysSelectColumnHistoryMeetingDaysAggregateBoolExpBool_orArgumentsColumns
fromJson_Enum_HistoryMeetingDaysSelectColumnHistoryMeetingDaysAggregateBoolExpBool_orArgumentsColumns(
  String value,
) {
  switch (value) {
    case r'gender':
      return Enum_HistoryMeetingDaysSelectColumnHistoryMeetingDaysAggregateBoolExpBool_orArgumentsColumns
          .gender;
    default:
      return Enum_HistoryMeetingDaysSelectColumnHistoryMeetingDaysAggregateBoolExpBool_orArgumentsColumns
          .$unknown;
  }
}

enum Enum_HistoryMeetingRosterSelectColumn {
  asServant,
  blurhash,
  color,
  gender,
  mainPhone,
  meetingId,
  name,
  personId,
  photoUpdatedAt,
  studyYearId,
  studyYearName,
  $unknown;

  factory Enum_HistoryMeetingRosterSelectColumn.fromJson(String value) =>
      fromJson_Enum_HistoryMeetingRosterSelectColumn(value);

  String toJson() => toJson_Enum_HistoryMeetingRosterSelectColumn(this);
}

String toJson_Enum_HistoryMeetingRosterSelectColumn(
  Enum_HistoryMeetingRosterSelectColumn e,
) {
  switch (e) {
    case Enum_HistoryMeetingRosterSelectColumn.asServant:
      return r'asServant';
    case Enum_HistoryMeetingRosterSelectColumn.blurhash:
      return r'blurhash';
    case Enum_HistoryMeetingRosterSelectColumn.color:
      return r'color';
    case Enum_HistoryMeetingRosterSelectColumn.gender:
      return r'gender';
    case Enum_HistoryMeetingRosterSelectColumn.mainPhone:
      return r'mainPhone';
    case Enum_HistoryMeetingRosterSelectColumn.meetingId:
      return r'meetingId';
    case Enum_HistoryMeetingRosterSelectColumn.name:
      return r'name';
    case Enum_HistoryMeetingRosterSelectColumn.personId:
      return r'personId';
    case Enum_HistoryMeetingRosterSelectColumn.photoUpdatedAt:
      return r'photoUpdatedAt';
    case Enum_HistoryMeetingRosterSelectColumn.studyYearId:
      return r'studyYearId';
    case Enum_HistoryMeetingRosterSelectColumn.studyYearName:
      return r'studyYearName';
    case Enum_HistoryMeetingRosterSelectColumn.$unknown:
      return r'$unknown';
  }
}

Enum_HistoryMeetingRosterSelectColumn
fromJson_Enum_HistoryMeetingRosterSelectColumn(String value) {
  switch (value) {
    case r'asServant':
      return Enum_HistoryMeetingRosterSelectColumn.asServant;
    case r'blurhash':
      return Enum_HistoryMeetingRosterSelectColumn.blurhash;
    case r'color':
      return Enum_HistoryMeetingRosterSelectColumn.color;
    case r'gender':
      return Enum_HistoryMeetingRosterSelectColumn.gender;
    case r'mainPhone':
      return Enum_HistoryMeetingRosterSelectColumn.mainPhone;
    case r'meetingId':
      return Enum_HistoryMeetingRosterSelectColumn.meetingId;
    case r'name':
      return Enum_HistoryMeetingRosterSelectColumn.name;
    case r'personId':
      return Enum_HistoryMeetingRosterSelectColumn.personId;
    case r'photoUpdatedAt':
      return Enum_HistoryMeetingRosterSelectColumn.photoUpdatedAt;
    case r'studyYearId':
      return Enum_HistoryMeetingRosterSelectColumn.studyYearId;
    case r'studyYearName':
      return Enum_HistoryMeetingRosterSelectColumn.studyYearName;
    default:
      return Enum_HistoryMeetingRosterSelectColumn.$unknown;
  }
}

enum Enum_HistoryMeetingsConstraint {
  meetings_pkey,
  $unknown;

  factory Enum_HistoryMeetingsConstraint.fromJson(String value) =>
      fromJson_Enum_HistoryMeetingsConstraint(value);

  String toJson() => toJson_Enum_HistoryMeetingsConstraint(this);
}

String toJson_Enum_HistoryMeetingsConstraint(Enum_HistoryMeetingsConstraint e) {
  switch (e) {
    case Enum_HistoryMeetingsConstraint.meetings_pkey:
      return r'meetings_pkey';
    case Enum_HistoryMeetingsConstraint.$unknown:
      return r'$unknown';
  }
}

Enum_HistoryMeetingsConstraint fromJson_Enum_HistoryMeetingsConstraint(
  String value,
) {
  switch (value) {
    case r'meetings_pkey':
      return Enum_HistoryMeetingsConstraint.meetings_pkey;
    default:
      return Enum_HistoryMeetingsConstraint.$unknown;
  }
}

enum Enum_HistoryMeetingsSelectColumn {
  audience,
  color,
  groupId,
  id,
  isArchived,
  name,
  serviceGender,
  serviceId,
  serviceStudyYear,
  $unknown;

  factory Enum_HistoryMeetingsSelectColumn.fromJson(String value) =>
      fromJson_Enum_HistoryMeetingsSelectColumn(value);

  String toJson() => toJson_Enum_HistoryMeetingsSelectColumn(this);
}

String toJson_Enum_HistoryMeetingsSelectColumn(
  Enum_HistoryMeetingsSelectColumn e,
) {
  switch (e) {
    case Enum_HistoryMeetingsSelectColumn.audience:
      return r'audience';
    case Enum_HistoryMeetingsSelectColumn.color:
      return r'color';
    case Enum_HistoryMeetingsSelectColumn.groupId:
      return r'groupId';
    case Enum_HistoryMeetingsSelectColumn.id:
      return r'id';
    case Enum_HistoryMeetingsSelectColumn.isArchived:
      return r'isArchived';
    case Enum_HistoryMeetingsSelectColumn.name:
      return r'name';
    case Enum_HistoryMeetingsSelectColumn.serviceGender:
      return r'serviceGender';
    case Enum_HistoryMeetingsSelectColumn.serviceId:
      return r'serviceId';
    case Enum_HistoryMeetingsSelectColumn.serviceStudyYear:
      return r'serviceStudyYear';
    case Enum_HistoryMeetingsSelectColumn.$unknown:
      return r'$unknown';
  }
}

Enum_HistoryMeetingsSelectColumn fromJson_Enum_HistoryMeetingsSelectColumn(
  String value,
) {
  switch (value) {
    case r'audience':
      return Enum_HistoryMeetingsSelectColumn.audience;
    case r'color':
      return Enum_HistoryMeetingsSelectColumn.color;
    case r'groupId':
      return Enum_HistoryMeetingsSelectColumn.groupId;
    case r'id':
      return Enum_HistoryMeetingsSelectColumn.id;
    case r'isArchived':
      return Enum_HistoryMeetingsSelectColumn.isArchived;
    case r'name':
      return Enum_HistoryMeetingsSelectColumn.name;
    case r'serviceGender':
      return Enum_HistoryMeetingsSelectColumn.serviceGender;
    case r'serviceId':
      return Enum_HistoryMeetingsSelectColumn.serviceId;
    case r'serviceStudyYear':
      return Enum_HistoryMeetingsSelectColumn.serviceStudyYear;
    default:
      return Enum_HistoryMeetingsSelectColumn.$unknown;
  }
}

enum Enum_HistoryMeetingsUpdateColumn {
  audience,
  color,
  isArchived,
  name,
  $unknown;

  factory Enum_HistoryMeetingsUpdateColumn.fromJson(String value) =>
      fromJson_Enum_HistoryMeetingsUpdateColumn(value);

  String toJson() => toJson_Enum_HistoryMeetingsUpdateColumn(this);
}

String toJson_Enum_HistoryMeetingsUpdateColumn(
  Enum_HistoryMeetingsUpdateColumn e,
) {
  switch (e) {
    case Enum_HistoryMeetingsUpdateColumn.audience:
      return r'audience';
    case Enum_HistoryMeetingsUpdateColumn.color:
      return r'color';
    case Enum_HistoryMeetingsUpdateColumn.isArchived:
      return r'isArchived';
    case Enum_HistoryMeetingsUpdateColumn.name:
      return r'name';
    case Enum_HistoryMeetingsUpdateColumn.$unknown:
      return r'$unknown';
  }
}

Enum_HistoryMeetingsUpdateColumn fromJson_Enum_HistoryMeetingsUpdateColumn(
  String value,
) {
  switch (value) {
    case r'audience':
      return Enum_HistoryMeetingsUpdateColumn.audience;
    case r'color':
      return Enum_HistoryMeetingsUpdateColumn.color;
    case r'isArchived':
      return Enum_HistoryMeetingsUpdateColumn.isArchived;
    case r'name':
      return Enum_HistoryMeetingsUpdateColumn.name;
    default:
      return Enum_HistoryMeetingsUpdateColumn.$unknown;
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
  mainPhone,
  martialStatus,
  name,
  nationalId,
  notes,
  otherPhones,
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
    case Enum_PersonsSelectColumn.mainPhone:
      return r'mainPhone';
    case Enum_PersonsSelectColumn.martialStatus:
      return r'martialStatus';
    case Enum_PersonsSelectColumn.name:
      return r'name';
    case Enum_PersonsSelectColumn.nationalId:
      return r'nationalId';
    case Enum_PersonsSelectColumn.notes:
      return r'notes';
    case Enum_PersonsSelectColumn.otherPhones:
      return r'otherPhones';
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
    case r'mainPhone':
      return Enum_PersonsSelectColumn.mainPhone;
    case r'martialStatus':
      return Enum_PersonsSelectColumn.martialStatus;
    case r'name':
      return Enum_PersonsSelectColumn.name;
    case r'nationalId':
      return Enum_PersonsSelectColumn.nationalId;
    case r'notes':
      return Enum_PersonsSelectColumn.notes;
    case r'otherPhones':
      return Enum_PersonsSelectColumn.otherPhones;
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
