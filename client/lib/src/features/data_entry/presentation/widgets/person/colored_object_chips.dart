import 'package:church_admin/church_admin.dart';
import 'package:derived_colors/derived_colors.dart';
import 'package:flutter/material.dart';

class ColoredObjectChips<T extends ViewableWithID> extends StatelessWidget {
  final Iterable<T> objects;
  final String emptyText;

  const ColoredObjectChips({
    required this.objects,
    required this.emptyText,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    if (objects.isEmpty) return Text(emptyText);

    final labelStyle = TextTheme.of(context).labelSmall!;

    return Wrap(
      spacing: 3,
      children: [
        for (final object in objects)
          Chip(
            side: BorderSide(
              color: object.color?.findInvert() ?? labelStyle.color!,
            ),
            label: Text(
              object.name,
              style: labelStyle.copyWith(color: object.color?.findInvert()),
            ),
            color: WidgetStateProperty.all(object.color),
          ),
      ],
    );
  }
}
