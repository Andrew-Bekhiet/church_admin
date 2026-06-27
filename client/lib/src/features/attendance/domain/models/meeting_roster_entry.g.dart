// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meeting_roster_entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MeetingRosterEntry _$MeetingRosterEntryFromJson(Map json) => MeetingRosterEntry(
  person: Person.fromJson(Map<String, Object?>.from(json['person'] as Map)),
  attendanceHistory: (json['attendanceHistory'] as List<dynamic>)
      .map(
        (e) => AttendanceRecord.fromJson(Map<String, Object?>.from(e as Map)),
      )
      .toList(),
);

Map<String, dynamic> _$MeetingRosterEntryToJson(MeetingRosterEntry instance) =>
    <String, dynamic>{
      'person': instance.person.toJson(),
      'attendanceHistory': instance.attendanceHistory
          .map((e) => e.toJson())
          .toList(),
    };
