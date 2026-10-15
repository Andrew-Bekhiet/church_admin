import 'package:church_admin/church_admin.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class EditPersonSaveButton extends StatelessWidget {
  final ValueListenable<PersonSaveProgress> progress;
  final VoidCallback onPressed;

  const EditPersonSaveButton({
    required this.progress,
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<PersonSaveProgress>(
      valueListenable: progress,
      builder: (context, progress, _) => FloatingActionButton.extended(
        key: EditPersonSaveButtonKeys.saveButton,
        label: const Text('حفظ'),
        icon: switch (progress) {
          NotSaving() => const Icon(Icons.save),
          SavingPerson() || UploadingPhoto() => SizedBox.square(
            dimension: 18,
            child: CircularProgressIndicator(
              strokeWidth: 2,
              color: ColorScheme.of(context).onPrimaryContainer,
            ),
          ),
        },
        onPressed: switch (progress) {
          NotSaving() => onPressed,
          SavingPerson() || UploadingPhoto() => null,
        },
      ),
    );
  }
}

abstract final class EditPersonSaveButtonKeys {
  static const Key saveButton = ValueKey('Edit Person Save Button Key');
}
