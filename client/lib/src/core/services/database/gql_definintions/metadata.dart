import 'package:church_admin/church_admin.dart';

import 'metadata/churches.dart';
import 'metadata/colleges.dart';
import 'metadata/fathers.dart';
import 'metadata/hobbies.dart';
import 'metadata/jobs.dart';
import 'metadata/person_states.dart';
import 'metadata/person_types.dart';
import 'metadata/qualifications.dart';
import 'metadata/schools.dart';
import 'metadata/shammas_levels.dart';
import 'metadata/study_years.dart';
import 'metadata/tags.dart';

class MetadataDAO {
  final DatabaseService db;

  MetadataDAO({
    required this.db,
  });

  late final churches = ChurchesDAO(db: db);
  late final colleges = CollegesDAO(db: db);
  late final fathers = FathersDAO(db: db);
  late final jobs = JobsDAO(db: db);
  late final personStates = PersonStatesDAO(db: db);
  late final personTypes = PersonTypesDAO(db: db);
  late final qualifications = QualificationsDAO(db: db);
  late final schools = SchoolsDAO(db: db);
  late final shammasLevels = ShammasLevelsDAO(db: db);
  late final studyYears = StudyYearsDAO(db: db);
  late final tags = TagsDAO(db: db);
  late final hobbies = HobbiesDAO(db: db);
}
