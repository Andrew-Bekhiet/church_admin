import 'package:advanced_forms/advanced_forms.dart';
import 'package:church_admin/church_admin.dart';

class PersonWorkFormController extends AdvancedFormController
    implements PersonFormSection {
  final Person _person;

  late final workStatus = AdvancedFieldController<WorkStatus?, PersonEditError>(
    initialValue: _person.workStatus,
  );
  late final studyYear = AdvancedFieldController<StudyYear?, PersonEditError>(
    initialValue: _person.studyYear,
  );
  late final college = AdvancedFieldController<College?, PersonEditError>(
    initialValue: _person.college,
  );
  late final school = AdvancedFieldController<School?, PersonEditError>(
    initialValue: _person.school,
  );
  late final qualification =
      AdvancedFieldController<Qualification?, PersonEditError>(
        initialValue: _person.qualification,
      );
  late final job = AdvancedFieldController<Job?, PersonEditError>(
    initialValue: _person.job,
  );
  late final jobDescription = AdvancedTextFieldController<PersonEditError>(
    initialValue: _person.jobDescription ?? '',
  );

  bool get isStudent => workStatus.fieldValue == WorkStatus.student;

  PersonWorkFormController({required this._person}) : super(debugName: 'work') {
    registerFields([
      workStatus,
      studyYear,
      college,
      school,
      qualification,
      job,
      jobDescription,
    ]);
  }

  @override
  Person editedVersionOf(Person person) => person.copyWith(
    workStatus: workStatus.fieldValue,
    studyYear: studyYear.fieldValue,
    studyYearId: studyYear.fieldValue?.order,
    college: college.fieldValue,
    collegeId: college.fieldValue?.id,
    school: school.fieldValue,
    schoolId: school.fieldValue?.id,
    qualification: qualification.fieldValue,
    qualificationId: qualification.fieldValue?.id,
    job: job.fieldValue,
    jobId: job.fieldValue?.id,
    jobDescription: PersonFormValues.optionalText(
      _person.jobDescription,
      jobDescription.fieldValue,
    ),
  );
}
