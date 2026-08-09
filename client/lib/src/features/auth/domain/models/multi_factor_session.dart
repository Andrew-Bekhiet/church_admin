import 'package:church_admin/church_admin.dart';
import 'package:equatable/equatable.dart';

class MultiFactorSession extends Equatable {
  final String id;
  final String email;
  final String password;
  final String? phoneNumber;
  final List<MultiFactorInfo> enrolledFactors;

  @override
  List<Object?> get props => [
    id,
    email,
    password,
    phoneNumber,
    enrolledFactors,
  ];
  const MultiFactorSession({
    required this.id,
    required this.email,
    required this.password,
    required this.enrolledFactors,
    this.phoneNumber,
  });
}
