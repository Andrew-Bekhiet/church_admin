part of '../database_service.dart';

class MetadataQueries {
  const MetadataQueries._();

  ChurchesQueries get churches => const ChurchesQueries._();
  CollegesQueries get colleges => const CollegesQueries._();
  FathersQueries get fathers => const FathersQueries._();
  JobsQueries get jobs => const JobsQueries._();
  PersonStatesQueries get personStates => const PersonStatesQueries._();
  PersonTypesQueries get personTypes => const PersonTypesQueries._();
  QualificationsQueries get qualifications => const QualificationsQueries._();
  SchoolsQueries get schools => const SchoolsQueries._();
  ShammasLevelsQueries get shammasLevels => const ShammasLevelsQueries._();
  StudyYearsQueries get studyYears => const StudyYearsQueries._();
  TagsQueries get tags => const TagsQueries._();
  HobbiesQueries get hobbies => const HobbiesQueries._();
}
