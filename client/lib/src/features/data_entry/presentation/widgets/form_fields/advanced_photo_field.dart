import 'package:advanced_forms/advanced_forms.dart';
import 'package:church_admin/church_admin.dart';
import 'package:material_ui/material_ui.dart';

class AdvancedPhotoField<E extends Object> extends StatelessWidget {
  final AdvancedFieldController<PhotoChange, E> field;
  final ViewableWithIDAndImage object;
  final bool canDelete;
  final bool circleCrop;

  const AdvancedPhotoField({
    required this.field,
    required this.object,
    required this.canDelete,
    required this.circleCrop,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AdvancedFieldBuilder<PhotoChange, E>(
      field: field,
      builder: (context, state, _) => PhotoPickerAppBar(
        object: object,
        change: state.value,
        canDelete: canDelete,
        circleCrop: circleCrop,
        onChanged: field.setValue,
      ),
    );
  }
}
