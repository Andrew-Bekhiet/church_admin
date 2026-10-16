import 'package:church_admin/church_admin.dart';
import 'package:material_ui/material_ui.dart';

class FieldPathPicker extends StatelessWidget {
  final QueryableType queryableType;
  final FieldMetadata field;
  final ValueChanged<FieldMetadata> onChanged;
  final List<Widget> leafTrailing;
  final String? labelText;

  static FieldMetadata topLevelFieldOf(
    QueryableType queryableType,
    FieldMetadata field,
  ) => switch (field) {
    RedirectingFieldMetadata(isExpandable: true, :final parentField)
        when queryableType.orderableFields.contains(parentField) =>
      parentField,
    _ => field,
  };

  const FieldPathPicker({
    required this.queryableType,
    required this.field,
    required this.onChanged,
    this.leafTrailing = const [],
    this.labelText,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);

    final orderableFields = queryableType.orderableFields.toList();
    final parentField = topLevelFieldOf(queryableType, field);
    final childField = switch (field) {
      RedirectingFieldMetadata(:final targetField) when parentField != field =>
        targetField,
      _ => null,
    };

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            spacing: 8,
            children: [
              Expanded(
                child: DropdownButtonFormField<FieldMetadata>(
                  key: ValueKey(parentField),
                  decoration: InputDecoration(labelText: labelText),
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  isExpanded: true,
                  initialValue: parentField,
                  items: orderableFields
                      .map(
                        (p) => DropdownMenuItem(
                          alignment: Alignment.center,
                          value: p,
                          child: Text(p.label),
                        ),
                      )
                      .toList(),
                  onChanged: (selected) {
                    if (selected == null) {
                      return;
                    }

                    onChanged(_redirectedToSelectableSubField(selected));
                  },
                ),
              ),
              if (childField == null) ...leafTrailing,
            ],
          ),
          if (childField != null)
            DecoratedBox(
              decoration: BoxDecoration(
                border: BorderDirectional(
                  start: BorderSide(
                    color:
                        themeData
                            .inputDecorationTheme
                            .border
                            ?.borderSide
                            .color ??
                        themeData.colorScheme.primary,
                    width: 1.2,
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(6),
                child: FieldPathPicker(
                  queryableType: parentField.fieldQueryableType!,
                  field: childField,
                  labelText: labelText,
                  onChanged: (newField) =>
                      onChanged(parentField.redirectTo(newField)),
                  leafTrailing: leafTrailing,
                ),
              ),
            ),
        ],
      ),
    );
  }

  FieldMetadata _redirectedToSelectableSubField(FieldMetadata selected) {
    final needsSubField =
        selected.operators.isEmpty ||
        !(selected.fieldQueryableType?.isSelectableAsReference ?? true);

    if (!needsSubField) {
      return selected;
    }

    return selected.redirectTo(
      selected.fieldQueryableType!.orderableFields.firstWhere(
        (f) =>
            f.operators.isNotEmpty ||
            (f.fieldQueryableType?.isSelectableAsReference ?? false),
      ),
    );
  }
}
