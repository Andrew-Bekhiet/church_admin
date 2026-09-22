import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';

class UserPersonLinkField extends StatelessWidget {
  final PersonLink person;
  final bool allowCreatingNewPerson;
  final UserFormCubit cubit;

  const UserPersonLinkField({
    required this.person,
    required this.allowCreatingNewPerson,
    required this.cubit,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isCreatingNewPerson = person is CreateNewPerson;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        if (allowCreatingNewPerson)
          Padding(
            padding: const EdgeInsetsDirectional.only(bottom: 8),
            child: SegmentedButton<bool>(
              segments: const [
                ButtonSegment(value: false, label: Text('ربط بشخص موجود')),
                ButtonSegment(value: true, label: Text('إنشاء شخص جديد')),
              ],
              selected: {isCreatingNewPerson},
              onSelectionChanged: (selection) => _switchMode(selection.first),
            ),
          ),
        if (person case CreateNewPerson(:final name, :final gender))
          SegmentedButton<bool>(
            segments: const [
              ButtonSegment(value: true, label: Text('ذكر')),
              ButtonSegment(value: false, label: Text('أنثى')),
            ],
            selected: {gender},
            onSelectionChanged: (selection) => cubit.selectPerson(
              CreateNewPerson(name: name, gender: selection.first),
            ),
          )
        else
          ObjectSelectionField<Person, Person?>(
            initialValue: switch (person) {
              LinkExistingPerson(:final person) => person,
              NoPersonSelected() || CreateNewPerson() => null,
            },
            nullable: false,
            dialogFieldLabel: 'الشخص',
            listController: (search) => ViewableObjectListController(
              objectsPaginatableStream: DatabaseService.I.persons.streamAll(
                searchQuery: search,
                where: Stream.value([
                  Filter(PersonFields().uid, PrimitiveOperator.isNull, true),
                ]),
              ),
            ),
            onChanged: (selected) {
              if (selected == null) return;

              cubit.selectPerson(LinkExistingPerson(selected));
            },
            builder: (context, state) => switch (state.value) {
              final person? => ObjectSelectionPreview(person),
              null => null,
            },
          ),
      ],
    );
  }

  void _switchMode(bool createNew) {
    if (!createNew) {
      cubit.selectPerson(const NoPersonSelected());

      return;
    }

    cubit.selectPerson(const CreateNewPerson(name: '', gender: true));
  }
}
