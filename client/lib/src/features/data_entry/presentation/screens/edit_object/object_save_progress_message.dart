import 'package:church_admin/church_admin.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_ui/material_ui.dart';

class ObjectSaveProgressMessage extends StatelessWidget {
  final StateStreamable<ObjectSaveProgress> progress;

  const ObjectSaveProgressMessage({required this.progress, super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StateStreamable<ObjectSaveProgress>, ObjectSaveProgress>(
      bloc: progress,
      builder: (context, progress) => Row(
        children: [
          Expanded(
            child: Text(progress.message),
          ),
          CircularProgressIndicator(
            value: switch (progress) {
              UploadingObjectPhoto(:final progress) => progress,
              NotSavingObject() ||
              AwaitingObjectMoveConfirmation() ||
              DeletingObject() ||
              SavingObject() => null,
            },
          ),
        ],
      ),
    );
  }
}
