import 'package:church_admin/src/features/attendance/application/attendance_undo_presenter.dart';
import 'package:church_admin/src/features/attendance/application/attendance_undoable_change.dart';
import 'package:material_ui/material_ui.dart' show VoidCallback;

final class UndoTrackingAttendancePresenter implements AttendanceUndoPresenter {
  final AttendanceUndoPresenter _presenter;
  final void Function(AttendanceUndoableChange undoneChange) _trackUndo;

  const UndoTrackingAttendancePresenter(this._presenter, this._trackUndo);

  @override
  void showUndo({
    required String personName,
    required AttendanceUndoableChange change,
    required VoidCallback onUndo,
  }) => _presenter.showUndo(
    personName: personName,
    change: change,
    onUndo: () {
      _trackUndo(change);
      onUndo();
    },
  );

  @override
  void showError(String message) => _presenter.showError(message);
}
