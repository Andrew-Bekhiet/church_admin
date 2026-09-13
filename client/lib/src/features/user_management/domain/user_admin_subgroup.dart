import 'package:church_admin/church_admin.dart';
import 'package:equatable/equatable.dart';

class UserAdminSubgroup with Equatable {
  static const allStudyYearsTitle = 'كل السنوات الدراسية';

  final StudyYear? studyYear;
  final bool splitByStudyYear;
  final List<User> users;

  String? get title {
    if (!splitByStudyYear) return null;

    return studyYear?.name ?? allStudyYearsTitle;
  }

  @override
  List<Object?> get props => [studyYear, splitByStudyYear, users];

  const UserAdminSubgroup({
    required this.users,
    this.splitByStudyYear = false,
    this.studyYear,
  });
}
