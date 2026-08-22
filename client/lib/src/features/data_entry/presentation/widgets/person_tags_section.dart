import 'package:church_admin/church_admin.dart';
import 'package:derived_colors/derived_colors.dart';
import 'package:flutter/material.dart';

class PersonTagsSection extends StatelessWidget {
  final Person person;

  const PersonTagsSection({required this.person, super.key});

  @override
  Widget build(BuildContext context) {
    final labelSmall = Theme.of(context).textTheme.labelSmall!;

    return Column(
      children: [
        ListTile(
          title: const Text('الهوايات'),
          subtitle: Wrap(
            spacing: 3,
            children: [
              for (final hobby in person.hobbies ?? <Hobby>[])
                Chip(
                  side: BorderSide(
                    color: hobby.color?.findInvert() ?? labelSmall.color!,
                  ),
                  label: Text(
                    hobby.name,
                    style: labelSmall.copyWith(
                      color: hobby.color?.findInvert(),
                    ),
                  ),
                  color: WidgetStateProperty.all(hobby.color),
                ),
            ],
          ),
        ),
        ListTile(
          title: const Text('الشارات'),
          subtitle: Wrap(
            spacing: 3,
            children: [
              for (final tag in person.tags ?? <Tag>[])
                Chip(
                  side: BorderSide(
                    color: tag.color?.findInvert() ?? labelSmall.color!,
                  ),
                  label: Text(
                    tag.name,
                    style: labelSmall.copyWith(
                      color: tag.color?.findInvert(),
                    ),
                  ),
                  color: WidgetStateProperty.all(tag.color),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
