import 'package:church_admin/src/features/attendance/application/attendance_undoable_change.dart';
import 'package:flutter/material.dart';

abstract interface class AttendanceUndoPresenter {
  void showUndo({
    required String personName,
    required AttendanceUndoableChange change,
    required VoidCallback onUndo,
  });

  void showError(String message);
}
