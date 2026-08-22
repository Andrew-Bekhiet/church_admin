import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';

class PersonServicesAndGroupsField extends StatelessWidget {
  final Person person;
  final bool classesAndGroupsLoaded;
  final Future<void> Function(FormFieldState<(Set<Service>, Set<Group>)>) onTap;
  final List<Service> Function(Iterable<Service>, Iterable<Group>)
  combineGroupsWithServices;

  const PersonServicesAndGroupsField({
    required this.person,
    required this.classesAndGroupsLoaded,
    required this.onTap,
    required this.combineGroupsWithServices,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TappableFormField<(Set<Service>, Set<Group>)>(
      key: ValueKey(
        (
          person.services?.toSet() ?? {},
          person.groups?.toSet() ?? {},
        ),
      ),
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: _validate,
      decoration: (context, state) => InputDecoration(
        prefixIcon: !classesAndGroupsLoaded
            ? const Center(
                heightFactor: 1,
                widthFactor: 1,
                child: SizedBox(
                  height: 30,
                  width: 30,
                  child: CircularProgressIndicator(),
                ),
              )
            : null,
        errorText: state.errorText,
        labelText: 'الخدمات والمجموعات المشارك بها',
        errorMaxLines: 3,
      ),
      initialValue: (
        person.services?.toSet() ?? {},
        person.groups?.toSet() ?? {},
      ),
      onTap: onTap,
      builder: (context, state) {
        if (state.value == null || state.value!.$1.isEmpty) {
          return const Text('لا يوجد خدمات أو مجموعات');
        }

        final combinedServices = combineGroupsWithServices(
          state.value!.$1,
          state.value!.$2,
        );

        return ExcludeFocus(
          child: IgnorePointer(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (final s in combinedServices) ...[
                  ViewableObjectWidget(
                    s,
                    isDense: true,
                    forceShowSecondLine: false,
                  ),
                  for (final g in s.groups ?? <Group>[])
                    Padding(
                      padding: const EdgeInsets.only(right: 26),
                      child: Card(
                        elevation: 0,
                        child: ViewableObjectWidget(
                          g,
                          isDense: true,
                          forceShowSecondLine: false,
                          wrapInCard: false,
                        ),
                      ),
                    ),
                ],
              ],
            ),
          ),
        );
      },
    );
  }

  String? _validate((Set<Service>, Set<Group>)? v) {
    final (selectedServices, selectedGroups) = v ?? (<Service>{}, <Group>{});

    if (person.studyYear case StudyYear(
      order: final personGrade,
    ) when person.isStudent) {
      final hasOutOfRangeService = selectedServices.any(
        (s) => switch (s) {
          Service(
            studyYearFrom: StudyYear(order: final minGrade),
            studyYearTo: StudyYear(order: final maxGrade),
          ) =>
            personGrade < minGrade || personGrade > maxGrade,
          Service(studyYearFrom: StudyYear(order: final minGrade)) =>
            personGrade < minGrade,
          Service(studyYearTo: StudyYear(order: final maxGrade)) =>
            personGrade > maxGrade,
          _ => false,
        },
      );

      if (hasOutOfRangeService) {
        return 'بعض الخدمات لا تناسب السنة الدراسية للمخدوم'
            '\nيرجى تغيير السنة الدراسية او ازالة التحديد من احدى الخدمات';
      }
    }

    final currentUserData = AuthBloc.I.currentUserData!;

    final canEditFamily =
        person.family == null || currentUserData.canEditObject(person.family!);

    final canEditAddress =
        person.address?.area == null ||
        person.address?.street == null ||
        currentUserData.canEditObject(person.address!.area!);

    final servicesAndGroups = <ViewableWithID>{}
        .union(selectedServices)
        .union(selectedGroups);

    if (!canEditFamily && !canEditAddress && servicesAndGroups.isEmpty) {
      return 'يجب اختيار خدمة أو مجموعة';
    }

    return servicesAndGroups.every(currentUserData.canEditObject)
        ? null
        : 'ليس لديك الصلاحية لتعديل بعض الخدمات او المجموعات';
  }
}
