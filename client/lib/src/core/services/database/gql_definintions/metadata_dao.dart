import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/churches_dao.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/colleges_dao.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/districts_dao.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/fathers_dao.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/hobbies_dao.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/jobs_dao.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/person_states_dao.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/person_types_dao.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/qualifications_dao.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/schools_dao.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/shammas_levels_dao.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/study_years_dao.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/tags_dao.dart';

class MetadataDAO {
  final DatabaseService db;

  late final churches = ChurchesDAO(db: db);
  late final colleges = CollegesDAO(db: db);
  late final districts = DistrictsDAO(db: db);
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

  MetadataDAO({
    required this.db,
  });
}
