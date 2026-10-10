import 'package:church_admin/church_admin.dart';
import 'package:equatable/equatable.dart';

final class DataCheckOverrideState with Equatable {
  final DataCheck dataCheck;
  final bool isSaving;
  final DataCheckOverrideError? error;

  @override
  List<Object?> get props => [
    dataCheck.familyId,
    dataCheck.isComplete,
    dataCheck.userOverride,
    isSaving,
    error,
  ];

  const DataCheckOverrideState({
    required this.dataCheck,
    this.isSaving = false,
    this.error,
  });
}
