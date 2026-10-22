import 'package:church_admin/church_admin.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:material_ui/material_ui.dart';

class ObjectDeleteButton<T extends ViewableWithIDAndImage>
    extends StatelessWidget {
  final ObjectSaveCubit<T> saveCubit;
  final T savedObject;

  const ObjectDeleteButton({
    required this.saveCubit,
    required this.savedObject,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ObjectSaveCubit<T>, ObjectSaveProgress>(
      bloc: saveCubit,
      builder: (context, progress) => IconButton(
        key: ObjectDeleteButtonKeys.deleteButton,
        onPressed: switch (progress) {
          NotSavingObject() => () => _delete(context),
          AwaitingObjectMoveConfirmation() ||
          DeletingObject() ||
          SavingObject() ||
          UploadingObjectPhoto() => null,
        },
        icon: const Icon(Symbols.delete),
        tooltip: 'حذف',
      ),
    );
  }

  Future<void> _delete(BuildContext context) async {
    final navigator = Navigator.of(context);
    final messenger = ScaffoldMessenger.of(context);
    final iconColor = Theme.of(context).primaryIconTheme.color;

    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) =>
          DeleteConfirmationDialog(objectName: savedObject.name),
    );
    if (confirmed != true || !context.mounted) return;

    final bool deleted;
    try {
      deleted = await saveCubit.tryDeleteSavedObject();
    } on Exception catch (error, stackTrace) {
      if (!context.mounted) return;

      await LoggingService.I.showErrorDialogAndReport(
        context,
        LogRecord(
          error: error,
          stackTrace: stackTrace,
          data: {
            'objectType': '$T',
            'initialObject': switch (savedObject) {
              final ToJson serializable => serializable.toJson(),
              _ => savedObject.id,
            },
          },
        ),
      );

      return;
    }
    if (!deleted || !context.mounted) return;

    messenger.showSnackBar(
      SnackBar(
        content: Row(
          children: [
            const Expanded(child: Text('تم الحذف بنجاح')),
            Icon(Symbols.done, color: iconColor),
          ],
        ),
      ),
    );

    navigator.pop();
    WidgetsBinding.instance.addPostFrameCallback((_) => navigator.pop());
  }
}

abstract final class ObjectDeleteButtonKeys {
  static const Key deleteButton = ValueKey('Object Delete Button Key');
}
