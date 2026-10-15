import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class EditPersonScrollView extends StatelessWidget {
  static const double floatingActionButtonClearance = 120;

  final PersonFormController form;
  final VoidCallback onImportFromContacts;
  final Future<Point?> Function(BuildContext) onChooseLocationOnMap;
  final VoidCallback? onDelete;

  const EditPersonScrollView({
    required this.form,
    required this.onImportFromContacts,
    required this.onChooseLocationOnMap,
    required this.onDelete,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          stretch: true,
          pinned: true,
          expandedHeight: MediaQuery.sizeOf(context).width,
          actions: [
            if (onDelete case final onDelete?)
              IconButton(
                onPressed: onDelete,
                icon: const Icon(Symbols.delete),
                tooltip: 'حذف',
              ),
          ],
          flexibleSpace: ListenableBuilder(
            listenable: Listenable.merge([
              form.identity.name,
              form.hobbiesTagsAndNotes.color,
            ]),
            builder: (context, _) => AdvancedPhotoField<PersonEditError>(
              field: form.photo,
              object: form.personForPhotoPreview,
              canDelete: !form.isCreate,
              circleCrop: true,
            ),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.only(bottom: floatingActionButtonClearance),
          sliver: SliverToBoxAdapter(
            child: FocusScope(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    PersonEditIdentitySection(
                      form: form.identity,
                      onImportFromContacts: onImportFromContacts,
                    ),
                    PersonEditHouseholdSection(
                      form: form.household,
                      violations: form.shownViolations,
                      onChooseLocationOnMap: onChooseLocationOnMap,
                    ),
                    const Divider(),
                    PersonEditMembershipsSection(
                      form: form.memberships,
                      violations: form.shownViolations,
                    ),
                    PersonEditWorkSection(form: form.work),
                    const Divider(),
                    PersonEditMaritalStatusAndTypeSection(
                      form: form.maritalStatusAndType,
                    ),
                    const Divider(),
                    PersonEditChurchAndSpiritualSection(
                      form: form.churchAndSpiritual,
                      gender: form.maritalStatusAndType.gender,
                    ),
                    const Divider(),
                    PersonEditHobbiesTagsAndNotesSection(
                      form: form.hobbiesTagsAndNotes,
                    ),
                    PersonEditPastoralDatesSection(form: form.pastoralDates),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
