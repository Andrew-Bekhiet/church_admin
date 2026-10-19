import 'package:json_annotation/json_annotation.dart';

@JsonEnum(fieldRename: FieldRename.screamingSnake)
enum MeetingAudience {
  onlyPersons,
  onlyServants,
  personsAndServants;

  bool get includesPersons =>
      this == MeetingAudience.onlyPersons ||
      this == MeetingAudience.personsAndServants;

  bool get includesServants =>
      this == MeetingAudience.onlyServants ||
      this == MeetingAudience.personsAndServants;
}
