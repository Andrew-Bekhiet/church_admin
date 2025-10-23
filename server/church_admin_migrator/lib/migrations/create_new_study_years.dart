import 'package:church_admin/church_admin.dart';
import 'package:church_admin_migrator/models/church_admin_context.dart';
import 'package:church_admin_migrator/models/church_data_context.dart';
import 'package:church_admin_migrator/models/meetinghelper_context.dart';

final _newStudyYears = [
  StudyYear(name: 'Baby Class', order: -2),
  StudyYear(name: 'KG 1', order: -1),
  StudyYear(name: 'KG 2', order: 0),
  StudyYear(name: 'أولى ابتدائي', order: 1),
  StudyYear(name: 'ثانية ابتدائي', order: 2),
  StudyYear(name: 'ثالثة ابتدائي', order: 3),
  StudyYear(name: 'رابعة ابتدائي', order: 4),
  StudyYear(name: 'خامسة ابتدائي', order: 5),
  StudyYear(name: 'سادسة ابتدائي', order: 6),
  StudyYear(name: 'أولى إعدادي', order: 7),
  StudyYear(name: 'ثانية إعدادي', order: 8),
  StudyYear(name: 'ثالثة إعدادي', order: 9),
  StudyYear(name: 'أولى ثانوي', order: 10),
  StudyYear(name: 'ثانية ثانوي', order: 11),
  StudyYear(name: 'ثالثة ثانوي', order: 12),
  StudyYear(name: 'أولى جامعة', order: 13),
  StudyYear(name: 'ثانية جامعة', order: 14),
  StudyYear(name: 'ثالثة جامعة', order: 15),
  StudyYear(name: 'رابعة جامعة', order: 16),
  StudyYear(name: 'خامسة جامعة', order: 17),
];

Future<void> createNewStudyYears(
  ChurchDataContext churchDataContext,
  MeetingHelperContext meetingHelperContext,
  ChurchAdminContext churchAdminContext,
) async {
  for (final studyYear in _newStudyYears) {
    churchAdminContext.studyYears[studyYear.order] = studyYear;
  }
}
