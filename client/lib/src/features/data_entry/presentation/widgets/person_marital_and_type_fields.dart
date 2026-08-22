import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

class PersonMaritalAndTypeFields extends StatelessWidget {
  final Person person;
  final ValueChanged<bool?> onGenderChanged;
  final ValueChanged<MartialStatus> onMartialStatusChanged;
  final ValueChanged<PersonType?> onPersonTypeChanged;

  const PersonMaritalAndTypeFields({
    required this.person,
    required this.onGenderChanged,
    required this.onMartialStatusChanged,
    required this.onPersonTypeChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: GenderField(
            initialValue: person.gender,
            onChanged: onGenderChanged,
          ),
        ),
        ObjectSelectionField(
          nullable: false,
          initialValue: ViewableEnumWithID.wrap(
            person.martialStatus ?? MartialStatus.single,
          ),
          listController: (s) => ViewableObjectListController(
            objectsPaginatableStream:
                ViewableEnumWithID.createPaginatableStream(
                  MartialStatus.values,
                  s,
                ),
          ),
          onChanged: (value) => onMartialStatusChanged(value!.enumValue),
          dialogFieldLabel: 'الحالة الاجتماعية',
          builder: (context, state) => Text(state.value?.name ?? ''),
        ),
        ObjectSelectionField<PersonType, PersonType?>(
          initialValue: person.personType,
          onCreateCustom: (name) async =>
              DatabaseService.I.metadata.personTypes.createObject(
                newObject: PersonType(id: const Uuid().v4(), name: name),
              ),
          listController: (s) => ViewableObjectListController(
            objectsPaginatableStream: DatabaseService.I.metadata.personTypes
                .streamAll(searchQuery: s),
          ),
          dialogFieldLabel: 'نوع الفرد في العائلة',
          onChanged: onPersonTypeChanged,
          builder: (context, state) => switch (state.value) {
            final personType? => Text(personType.name),
            null => null,
          },
          validator: (v) => null,
        ),
      ],
    );
  }
}
