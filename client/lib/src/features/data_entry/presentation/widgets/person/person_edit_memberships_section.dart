import 'package:advanced_forms/advanced_forms.dart';
import 'package:church_admin/church_admin.dart';
import 'package:flutter/foundation.dart';
import 'package:material_ui/material_ui.dart';

class PersonEditMembershipsSection extends StatelessWidget {
  final PersonMembershipsFormController form;
  final ValueListenable<Set<PersonRuleViolation>> violations;

  const PersonEditMembershipsSection({
    required this.form,
    required this.violations,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ValueListenableBuilder<MembershipsLoadState>(
          valueListenable: form.loadState,
          builder: (context, loadState, _) =>
              AdvancedFieldBuilder<PersonMemberships, PersonEditError>(
                field: form.memberships,
                builder: (context, state, _) {
                  final error = state.error;
                  final services = state.value.servicesWithTheirSelectedGroups;

                  return TappableInputField<PersonMemberships>(
                    value: state.value,
                    isEmpty: false,
                    focusNode: form.memberships.focusNode,
                    decoration: InputDecoration(
                      labelText: 'الخدمات والمجموعات المشارك بها',
                      errorMaxLines: 3,
                      errorText: switch ((error, loadState)) {
                        (final error?, _) => PersonEditError.messageOf(error),
                        (_, MembershipsLoadFailed()) =>
                          'تعذر تحميل الخدمات والمجموعات',
                        _ => null,
                      },
                      prefixIcon: switch (loadState) {
                        MembershipsLoading() => const Center(
                          heightFactor: 1,
                          widthFactor: 1,
                          child: SizedBox.square(
                            dimension: 30,
                            child: CircularProgressIndicator(),
                          ),
                        ),
                        _ => null,
                      },
                    ),
                    onTap: state.readOnly ? null : () => _select(context),
                    child: MembershipsSummary(services: services),
                  );
                },
              ),
        ),
        PersonRuleViolationMessages(
          violations: violations,
          section: PersonRuleViolationSection.memberships,
        ),
      ],
    );
  }

  Future<void> _select(BuildContext context) async {
    final result = await Navigator.of(context).push<Set<Service>>(
      MaterialPageRoute(
        builder: (context) => PersonServiceSelectionPage(
          selected: form.servicesWithTheirSelectedGroups.toSet(),
        ),
      ),
    );

    if (result != null && !form.isDisposed) form.selectServices(result);
  }
}
