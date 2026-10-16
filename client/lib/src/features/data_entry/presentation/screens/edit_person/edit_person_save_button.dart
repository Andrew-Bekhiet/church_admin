import 'package:church_admin/church_admin.dart';
import 'package:flutter/foundation.dart';
import 'package:material_ui/material_ui.dart';

class EditPersonSaveButton extends StatelessWidget {
  final ValueListenable<PersonSaveProgress> progress;
  final ValueListenable<MembershipsLoadState> membershipsLoadState;
  final VoidCallback onPressed;

  const EditPersonSaveButton({
    required this.progress,
    required this.membershipsLoadState,
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: Listenable.merge([progress, membershipsLoadState]),
      builder: (context, _) => FloatingActionButton.extended(
        key: EditPersonSaveButtonKeys.saveButton,
        label: const Text('حفظ'),
        icon: switch (progress.value) {
          NotSaving() || AwaitingMoveConfirmation() => const Icon(Icons.save),
          SavingPerson() || UploadingPhoto() => SizedBox.square(
            dimension: 18,
            child: CircularProgressIndicator(
              strokeWidth: 2,
              color: ColorScheme.of(context).onPrimaryContainer,
            ),
          ),
        },
        onPressed: switch ((progress.value, membershipsLoadState.value)) {
          (NotSaving(), MembershipsLoaded() || MembershipsLoadFailed()) =>
            onPressed,
          (NotSaving(), MembershipsLoading()) ||
          (AwaitingMoveConfirmation(), _) ||
          (SavingPerson(), _) ||
          (UploadingPhoto(), _) => null,
        },
      ),
    );
  }
}

abstract final class EditPersonSaveButtonKeys {
  static const Key saveButton = ValueKey('Edit Person Save Button Key');
}
