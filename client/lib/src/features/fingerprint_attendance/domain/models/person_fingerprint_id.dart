import 'package:church_admin/church_admin.dart';
import 'package:equatable/equatable.dart';

class PersonFingerprintId extends Equatable {
  final String id;
  final String employeeCode;
  final DateTime addedAt;
  final User addedBy;

  @override
  List<Object?> get props => [id, employeeCode, addedAt, addedBy];

  const PersonFingerprintId({
    required this.id,
    required this.employeeCode,
    required this.addedAt,
    required this.addedBy,
  });
}
