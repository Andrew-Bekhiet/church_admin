import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';

class ServiceAdminScopeFields extends StatelessWidget {
  const ServiceAdminScopeFields({
    required this.userAdminScope,
    required this.onChanged,
    super.key,
  });

  final UserAdminScope userAdminScope;
  final void Function(UserAdminScope) onChanged;

  @override
  Widget build(BuildContext context) {
    final (:studyYearFrom, :studyYearTo) = switch (userAdminScope.object) {
      Service(:final studyYearFrom, :final studyYearTo) => (
        studyYearFrom: studyYearFrom,
        studyYearTo: studyYearTo,
      ),
      _ => (studyYearFrom: null, studyYearTo: null),
    };

    return Row(
      spacing: 2,
      children: [
        Expanded(
          flex: 3,
          child: ObjectSelectionField(
            listController: (searchQuery) => ViewableObjectListController(
              objectsPaginatableStream: DatabaseService.I.metadata.studyYears
                  .streamAll(
                    searchQuery: searchQuery,
                    where: Stream.value([
                      if (studyYearFrom != null)
                        Filter(
                          StudyYearFields().order,
                          PrimitiveOperator.gte,
                          studyYearFrom.order,
                        ),
                      if (studyYearTo != null)
                        Filter(
                          StudyYearFields().order,
                          PrimitiveOperator.lte,
                          studyYearTo.order,
                        ),
                    ]),
                  ),
            ),
            builder: (context, state) => state.value != null
                ? Text(state.value?.name ?? '')
                : const Text('جميع السنوات الدراسية في الخدمة'),
            initialValue: userAdminScope.studyYear,
            dialogFieldLabel: 'السنة الدراسية',
            decoration: const InputDecoration(labelText: ''),
            onChanged: (value) =>
                onChanged(userAdminScope.copyWith(studyYear: value)),
          ),
        ),
        Expanded(
          flex: 2,
          child: GenderField(
            type: GenderFieldType.dropdown,
            nullable: true,
            nullLabel: 'بنين و بنات',
            maleLabel: 'بنين',
            femaleLabel: 'بنات',
            initialValue: userAdminScope.gender,
            onChanged: (value) =>
                onChanged(userAdminScope.copyWith(gender: value)),
          ),
        ),
      ],
    );
  }
}
