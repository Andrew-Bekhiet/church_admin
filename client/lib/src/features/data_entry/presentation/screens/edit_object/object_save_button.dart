import 'package:church_admin/church_admin.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_ui/material_ui.dart';

class ObjectSaveButton extends StatelessWidget {
  final StateStreamable<ObjectSaveProgress> progress;
  final VoidCallback onPressed;

  const ObjectSaveButton({
    required this.progress,
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StateStreamable<ObjectSaveProgress>, ObjectSaveProgress>(
      bloc: progress,
      builder: (context, progress) => FloatingActionButton.extended(
        key: ObjectSaveButtonKeys.saveButton,
        label: const Text('حفظ'),
        icon: switch (progress) {
          NotSavingObject() ||
          AwaitingObjectMoveConfirmation() ||
          DeletingObject() => const Icon(Icons.save),
          SavingObject() || UploadingObjectPhoto() => SizedBox.square(
            dimension: 18,
            child: CircularProgressIndicator(
              strokeWidth: 2,
              color: ColorScheme.of(context).onPrimaryContainer,
            ),
          ),
        },
        onPressed: switch (progress) {
          NotSavingObject() => onPressed,
          AwaitingObjectMoveConfirmation() ||
          DeletingObject() ||
          SavingObject() ||
          UploadingObjectPhoto() => null,
        },
      ),
    );
  }
}

abstract final class ObjectSaveButtonKeys {
  static const Key saveButton = ValueKey('Object Save Button Key');
}
