import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

class PersonChurchAndSpiritualFields extends StatelessWidget {
  final Person person;
  final ValueChanged<Church?> onChurchChanged;
  final ValueChanged<Father?> onFatherChanged;
  final ValueChanged<bool> onIsServantChanged;
  final ValueChanged<Church?> onServingChurchChanged;
  final ValueChanged<String> onServiceTypeChanged;
  final ValueChanged<bool> onIsShammasChanged;
  final ValueChanged<ShammasLevel?> onShammasLevelChanged;
  final ValueChanged<PersonState?> onStateChanged;

  const PersonChurchAndSpiritualFields({
    required this.person,
    required this.onChurchChanged,
    required this.onFatherChanged,
    required this.onIsServantChanged,
    required this.onServingChurchChanged,
    required this.onServiceTypeChanged,
    required this.onIsShammasChanged,
    required this.onShammasLevelChanged,
    required this.onStateChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ObjectSelectionField<Church, Church?>(
          initialValue: person.church,
          onCreateCustom: MetadataQuickCreate.church,
          listController: (s) => ViewableObjectListController(
            objectsPaginatableStream: DatabaseService.I.metadata.churches
                .streamAll(searchQuery: s),
          ),
          dialogFieldLabel: 'الكنيسة',
          onChanged: onChurchChanged,
          builder: (context, state) => switch (state.value) {
            final church? => Text(church.name),
            null => null,
          },
          validator: (v) => null,
        ),
        ObjectSelectionField<Father, Father?>(
          initialValue: person.father,
          onCreateCustom: (name) =>
              DatabaseService.I.metadata.fathers.createObject(
                newObject: Father(id: const Uuid().v4(), name: name),
              ),
          listController: (s) => ViewableObjectListController(
            objectsPaginatableStream: DatabaseService.I.metadata.fathers
                .streamAll(searchQuery: s),
          ),
          dialogFieldLabel: 'أب الاعتراف',
          onChanged: onFatherChanged,
          builder: (context, state) => switch (state.value) {
            final father? => Text(father.name),
            null => null,
          },
          validator: (v) => null,
        ),
        FormField<bool>(
          initialValue: person.isServant,
          builder: (state) => CheckboxListTile(
            title: const Text('خادم؟'),
            value: state.value,
            onChanged: (v) {
              state.didChange(v);
              onIsServantChanged(v!);
            },
          ),
        ),
        if (person.isServant) ...[
          ObjectSelectionField<Church, Church?>(
            key: ValueKey(person.isServant),
            initialValue: person.servingChurch,
            onCreateCustom: MetadataQuickCreate.church,
            listController: (s) => ViewableObjectListController(
              objectsPaginatableStream: DatabaseService.I.metadata.churches
                  .streamAll(searchQuery: s),
            ),
            dialogFieldLabel: 'الكنيسة التي يخدم بها',
            onChanged: onServingChurchChanged,
            builder: (context, state) => switch (state.value) {
              final church? => Text(church.name),
              null => null,
            },
            validator: (v) => null,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: TextFormField(
              decoration: const InputDecoration(labelText: 'نوع الخدمة'),
              initialValue: person.serviceType,
              onChanged: onServiceTypeChanged,
              validator: (value) => null,
            ),
          ),
        ],
        if (person.gender)
          FormField<bool>(
            initialValue: person.isShammas,
            builder: (state) => CheckboxListTile(
              title: const Text('شماس؟'),
              value: state.value,
              onChanged: (v) {
                state.didChange(v);
                onIsShammasChanged(v!);
              },
            ),
          ),
        if (person.gender && person.isShammas)
          ObjectSelectionField<ShammasLevel, ShammasLevel?>(
            key: ValueKey(person.shammasLevel),
            initialValue: person.shammasLevel,
            nullable: false,
            listController: (s) => ViewableObjectListController(
              objectsPaginatableStream: DatabaseService.I.metadata.shammasLevels
                  .streamAll(searchQuery: s),
            ),
            dialogFieldLabel: 'رتبة الشموسية',
            onChanged: onShammasLevelChanged,
            builder: (context, state) => switch (state.value) {
              final shammasLevel? => Text(shammasLevel.name),
              null => null,
            },
          ),
        ObjectSelectionField<PersonState, PersonState?>(
          initialValue: person.state,
          listController: (s) => ViewableObjectListController(
            objectsPaginatableStream: DatabaseService.I.metadata.personStates
                .streamAll(searchQuery: s),
          ),
          dialogFieldLabel: 'الحالة الروحية',
          onChanged: onStateChanged,
          builder: (context, state) => switch (state.value) {
            final personState? => IgnorePointer(
              child: ViewableObjectWidget(
                personState,
                wrapInCard: false,
                isDense: true,
                forceShowSecondLine: false,
                trailing: personState.color == null
                    ? null
                    : ClipRRect(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10),
                        ),
                        child: Container(
                          width: 50,
                          height: 50,
                          color: personState.color,
                        ),
                      ),
              ),
            ),
            null => null,
          },
          validator: (v) => null,
        ),
      ],
    );
  }
}
