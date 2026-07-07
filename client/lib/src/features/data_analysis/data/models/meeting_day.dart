import 'package:freezed_annotation/freezed_annotation.dart';

part 'meeting_day.freezed.dart';

@freezed
class MeetingDay with _$MeetingDay {
  @override
  final DateTime day;

  @override
  final int personsCount;

  @override
  final int servantsCount;

  @override
  final int totalCount;

  const MeetingDay({
    required this.day,
    required this.personsCount,
    required this.servantsCount,
    required this.totalCount,
  });

  MeetingDay operator +(MeetingDay other) => copyWith(
    personsCount: personsCount + other.personsCount,
    servantsCount: servantsCount + other.servantsCount,
    totalCount: totalCount + other.totalCount,
  );
}
