import 'package:church_admin/src/core/utils/globals.dart';
import 'package:flutter/material.dart';

abstract interface class AttendanceUndoPresenter {
  void showUndo({
    required String personName,
    required bool isPresent,
    required VoidCallback onUndo,
  });

  void showError(String message);
}

final class ScaffoldAttendanceUndoPresenter implements AttendanceUndoPresenter {
  const ScaffoldAttendanceUndoPresenter();

  @override
  void showUndo({
    required String personName,
    required bool isPresent,
    required VoidCallback onUndo,
  }) {
    scaffoldMessenger
      ..clearSnackBars()
      ..showSnackBar(
        SnackBar(
          content: Text(
            isPresent
                ? 'تم تسجيل حضور $personName'
                : 'تم إلغاء حضور $personName',
          ),
          action: SnackBarAction(label: 'تراجع', onPressed: onUndo),
        ),
      );
  }

  @override
  void showError(String message) {
    scaffoldMessenger
      ..clearSnackBars()
      ..showSnackBar(SnackBar(content: Text(message)));
  }
}
