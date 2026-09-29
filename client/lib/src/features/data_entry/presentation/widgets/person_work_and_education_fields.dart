import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

class PersonWorkAndEducationFields extends StatelessWidget {
  final Person person;
  final ValueChanged<WorkStatus?> onWorkStatusChanged;
  final ValueChanged<StudyYear?> onStudyYearChanged;
  final ValueChanged<College?> onCollegeChanged;
  final ValueChanged<School?> onSchoolChanged;
  final ValueChanged<Qualification?> onQualificationChanged;
  final ValueChanged<Job?> onJobChanged;
  final ValueChanged<String> onJobDescriptionChanged;

  const PersonWorkAndEducationFields({
    required this.person,
    required this.onWorkStatusChanged,
    required this.onStudyYearChanged,
    required this.onCollegeChanged,
    required this.onSchoolChanged,
    required this.onQualificationChanged,
    required this.onJobChanged,
    required this.onJobDescriptionChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        DropdownButtonFormField<WorkStatus>(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          initialValue: person.workStatus,
          decoration: const InputDecoration(labelText: 'حالة العمل'),
          items: WorkStatus.values
              .map(
                (status) => DropdownMenuItem(
                  value: status,
                  child: Text(status.label),
                ),
              )
              .toList(),
          onChanged: onWorkStatusChanged,
        ),
        if (person.isStudent) ...[
          ObjectSelectionField<StudyYear, StudyYear?>(
            key: PersonWorkAndEducationFieldsKeys.studyYearField,
            initialValue: person.studyYear,
            listController: (s) => ViewableObjectListController(
              objectsPaginatableStream: DatabaseService.I.metadata.studyYears
                  .streamAll(searchQuery: s),
            ),
            dialogFieldLabel: 'السنة الدراسية',
            onChanged: onStudyYearChanged,
            builder: (context, state) => switch (state.value) {
              final studyYear? => Text(studyYear.name),
              null => null,
            },
            validator: (v) => null,
          ),
          if (person.studyYear?.order != null && person.studyYear!.order > 12)
            ObjectSelectionField<College, College?>(
              initialValue: person.college,
              onCreateCustom: (name) =>
                  DatabaseService.I.metadata.colleges.createObject(
                    newObject: College(id: const Uuid().v4(), name: name),
                  ),
              listController: (s) => ViewableObjectListController(
                objectsPaginatableStream: DatabaseService.I.metadata.colleges
                    .streamAll(searchQuery: s),
              ),
              dialogFieldLabel: 'الكلية',
              onChanged: onCollegeChanged,
              builder: (context, state) => switch (state.value) {
                final college? => Text(college.name),
                null => null,
              },
              validator: (v) => null,
            )
          else
            ObjectSelectionField<School, School?>(
              initialValue: person.school,
              onCreateCustom: (name) =>
                  DatabaseService.I.metadata.schools.createObject(
                    newObject: School(id: const Uuid().v4(), name: name),
                  ),
              listController: (s) => ViewableObjectListController(
                objectsPaginatableStream: DatabaseService.I.metadata.schools
                    .streamAll(searchQuery: s),
              ),
              dialogFieldLabel: 'المدرسة',
              onChanged: onSchoolChanged,
              builder: (context, state) => switch (state.value) {
                final school? => Text(school.name),
                null => null,
              },
              validator: (v) => null,
            ),
        ] else
          ObjectSelectionField<Qualification, Qualification?>(
            initialValue: person.qualification,
            onCreateCustom: (name) =>
                DatabaseService.I.metadata.qualifications.createObject(
                  newObject: Qualification(id: const Uuid().v4(), name: name),
                ),
            listController: (s) => ViewableObjectListController(
              objectsPaginatableStream: DatabaseService
                  .I
                  .metadata
                  .qualifications
                  .streamAll(searchQuery: s),
            ),
            dialogFieldLabel: 'المؤهل',
            onChanged: onQualificationChanged,
            builder: (context, state) => switch (state.value) {
              final qualification? => Text(qualification.name),
              null => null,
            },
            validator: (v) => null,
          ),
        if (person.workStatus == WorkStatus.employed ||
            person.workStatus == WorkStatus.retired) ...[
          ObjectSelectionField<Job, Job?>(
            initialValue: person.job,
            onCreateCustom: (name) =>
                DatabaseService.I.metadata.jobs.createObject(
                  newObject: Job(id: const Uuid().v4(), name: name),
                ),
            listController: (s) => ViewableObjectListController(
              objectsPaginatableStream: DatabaseService.I.metadata.jobs
                  .streamAll(searchQuery: s),
            ),
            dialogFieldLabel: 'الوظيفة',
            onChanged: onJobChanged,
            builder: (context, state) => switch (state.value) {
              final job? => Text(job.name),
              null => null,
            },
            validator: (v) => null,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: TextFormField(
              decoration: const InputDecoration(labelText: 'تفاصيل الوظيفة'),
              initialValue: person.jobDescription,
              onChanged: onJobDescriptionChanged,
              textInputAction: TextInputAction.next,
              validator: (value) => null,
            ),
          ),
        ],
      ],
    );
  }
}

abstract final class PersonWorkAndEducationFieldsKeys {
  static const Key studyYearField = ValueKey('Person Study Year Field Key');
}
