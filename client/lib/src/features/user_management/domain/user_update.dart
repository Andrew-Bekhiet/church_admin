import 'package:equatable/equatable.dart';

class UserUpdate with Equatable {
  final String uid;
  final String? name;
  final String? email;
  final String? linkPersonId;
  final String? unlinkPersonId;

  bool get hasChanges =>
      name != null ||
      email != null ||
      linkPersonId != null ||
      unlinkPersonId != null;

  @override
  List<Object?> get props => [uid, name, email, linkPersonId, unlinkPersonId];

  const UserUpdate({
    required this.uid,
    this.name,
    this.email,
    this.linkPersonId,
    this.unlinkPersonId,
  });
}
