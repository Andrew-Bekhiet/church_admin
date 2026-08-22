import 'package:church_admin/church_admin.dart';
import 'package:derived_colors/derived_colors.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

class PersonHobbiesTagsAndNotesFields extends StatelessWidget {
  final Person person;
  final String? Function([dynamic]) generalCheckValidator;
  final ValueChanged<Set<Hobby>?> onHobbiesChanged;
  final ValueChanged<Set<Tag>?> onTagsChanged;
  final ValueChanged<String> onNotesChanged;
  final ValueChanged<Color?> onColorChanged;

  const PersonHobbiesTagsAndNotesFields({
    required this.person,
    required this.generalCheckValidator,
    required this.onHobbiesChanged,
    required this.onTagsChanged,
    required this.onNotesChanged,
    required this.onColorChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final labelStyle = Theme.of(context).textTheme.labelSmall!;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        MultiObjectSelectionField<Hobby>(
          validator: generalCheckValidator,
          decoration: const InputDecoration(
            labelText: 'الهوايات',
            errorMaxLines: 2,
          ),
          onCreateCustom: (name) =>
              DatabaseService.I.metadata.hobbies.createObject(
                newObject: Hobby(id: const Uuid().v4(), name: name),
              ),
          onChanged: onHobbiesChanged,
          initialValue: person.hobbies?.toSet() ?? {},
          nullable: false,
          listController: (s) => ViewableObjectListController(
            objectsPaginatableStream: DatabaseService.I.metadata.hobbies
                .streamAll(searchQuery: s),
          ),
          labelText: 'الهوايات',
          builder: (context, state) =>
              state.value != null && state.value!.isNotEmpty
              ? Wrap(
                  spacing: 3,
                  children: [
                    for (final hobby in state.value ?? <Hobby>[])
                      Chip(
                        side: BorderSide(
                          color: hobby.color?.findInvert() ?? labelStyle.color!,
                        ),
                        label: Text(
                          hobby.name,
                          style: labelStyle.copyWith(
                            color: hobby.color?.findInvert(),
                          ),
                        ),
                        color: WidgetStateProperty.all(hobby.color),
                      ),
                  ],
                )
              : const Text('لا يوجد هوايات'),
        ),
        MultiObjectSelectionField<Tag>(
          validator: generalCheckValidator,
          decoration: const InputDecoration(
            labelText: 'الشارات',
            errorMaxLines: 2,
          ),
          onCreateCustom: (name) =>
              DatabaseService.I.metadata.tags.createObject(
                newObject: Tag(id: const Uuid().v4(), name: name),
              ),
          onChanged: onTagsChanged,
          initialValue: person.tags?.toSet() ?? {},
          nullable: false,
          listController: (s) => ViewableObjectListController(
            objectsPaginatableStream: DatabaseService.I.metadata.tags.streamAll(
              searchQuery: s,
            ),
          ),
          labelText: 'الشارات',
          builder: (context, state) =>
              state.value != null && state.value!.isNotEmpty
              ? Wrap(
                  spacing: 3,
                  children: [
                    for (final tag in state.value ?? <Tag>[])
                      Chip(
                        side: BorderSide(
                          color: tag.color?.findInvert() ?? labelStyle.color!,
                        ),
                        label: Text(
                          tag.name,
                          style: labelStyle.copyWith(
                            color: tag.color?.findInvert(),
                          ),
                        ),
                        color: WidgetStateProperty.all(tag.color),
                      ),
                  ],
                )
              : const Text('لا يوجد شارات'),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: TextFormField(
            decoration: const InputDecoration(labelText: 'ملاحظات'),
            initialValue: person.notes,
            onChanged: onNotesChanged,
            textInputAction: TextInputAction.newline,
            maxLines: null,
            validator: (value) => null,
          ),
        ),
        ColorField(
          initialValue: person.color,
          onChanged: onColorChanged,
        ),
      ],
    );
  }
}
