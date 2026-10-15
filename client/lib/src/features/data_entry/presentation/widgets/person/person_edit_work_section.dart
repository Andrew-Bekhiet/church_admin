import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';

class PersonEditWorkSection extends StatelessWidget {
  static const int firstUniversityStudyYear = 13;

  final PersonWorkFormController form;

  const PersonEditWorkSection({required this.form, super.key});

  @override
  Widget build(BuildContext context) {
    final metadata = DatabaseService.I.metadata;

    return ListenableBuilder(
      listenable: Listenable.merge([form.workStatus, form.studyYear]),
      builder: (context, _) => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AdvancedDropdownField<WorkStatus, PersonEditError>(
            field: form.workStatus,
            label: 'حالة العمل',
            options: WorkStatus.values,
            translateError: PersonEditError.messageOf,
          ),
          if (form.isStudent) ...[
            AdvancedSingleObjectSelectionField<StudyYear, PersonEditError>(
              field: form.studyYear,
              label: 'السنة الدراسية',
              translateError: PersonEditError.messageOf,
              listController: SearchableDaoListController.over(
                metadata.studyYears,
              ),
              previewBuilder: (studyYear) => Text(studyYear.name),
            ),
            if ((form.studyYear.fieldValue?.order ?? 0) >=
                firstUniversityStudyYear)
              AdvancedSingleObjectSelectionField<College, PersonEditError>(
                field: form.college,
                label: 'الكلية',
                translateError: PersonEditError.messageOf,
                listController: SearchableDaoListController.over(
                  metadata.colleges,
                ),
                onCreateCustom: MetadataQuickCreate.college,
                previewBuilder: (college) => Text(college.name),
              )
            else
              AdvancedSingleObjectSelectionField<School, PersonEditError>(
                field: form.school,
                label: 'المدرسة',
                translateError: PersonEditError.messageOf,
                listController: SearchableDaoListController.over(
                  metadata.schools,
                ),
                onCreateCustom: MetadataQuickCreate.school,
                previewBuilder: (school) => Text(school.name),
              ),
          ] else
            AdvancedSingleObjectSelectionField<Qualification, PersonEditError>(
              field: form.qualification,
              label: 'المؤهل',
              translateError: PersonEditError.messageOf,
              listController: SearchableDaoListController.over(
                metadata.qualifications,
              ),
              onCreateCustom: MetadataQuickCreate.qualification,
              previewBuilder: (qualification) => Text(qualification.name),
            ),
          if (form.workStatus.fieldValue
              case WorkStatus.employed || WorkStatus.retired) ...[
            AdvancedSingleObjectSelectionField<Job, PersonEditError>(
              field: form.job,
              label: 'الوظيفة',
              translateError: PersonEditError.messageOf,
              listController: SearchableDaoListController.over(metadata.jobs),
              onCreateCustom: MetadataQuickCreate.job,
              previewBuilder: (job) => Text(job.name),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: AdvancedTextInput<PersonEditError>(
                field: form.jobDescription,
                translateError: PersonEditError.messageOf,
                labelText: 'تفاصيل الوظيفة',
              ),
            ),
          ],
        ],
      ),
    );
  }
}
