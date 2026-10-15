import 'package:church_admin/church_admin.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class EditPersonSaveProgressMessage extends StatelessWidget {
  final ValueListenable<PersonSaveProgress> progress;

  const EditPersonSaveProgressMessage({required this.progress, super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<PersonSaveProgress>(
      valueListenable: progress,
      builder: (context, progress, _) => Row(
        children: [
          Expanded(
            child: Text(switch (progress) {
              UploadingPhoto() => 'جار رفع الصورة ...',
              NotSaving() || SavingPerson() => 'جار الحفظ ...',
            }),
          ),
          CircularProgressIndicator(
            value: switch (progress) {
              UploadingPhoto(:final progress) => progress,
              NotSaving() || SavingPerson() => null,
            },
          ),
        ],
      ),
    );
  }
}
