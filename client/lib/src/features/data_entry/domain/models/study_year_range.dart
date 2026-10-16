import 'package:church_admin/church_admin.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'study_year_range.freezed.dart';

@Freezed(fromJson: false, toJson: false)
class StudyYearRange with _$StudyYearRange {
  final StudyYear? from;
  final StudyYear? to;

  const StudyYearRange({this.from, this.to});
}
