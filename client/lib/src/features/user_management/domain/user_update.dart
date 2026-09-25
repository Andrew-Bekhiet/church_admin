import 'package:equatable/equatable.dart';

class UserUpdate with Equatable {
  final String uid;
  final String? email;
  final String? linkPersonId;
  final String? unlinkPersonId;

  bool get hasChanges =>
      email != null || linkPersonId != null || unlinkPersonId != null;

  @override
  List<Object?> get props => [uid, email, linkPersonId, unlinkPersonId];

  const UserUpdate({
    required this.uid,
    this.email,
    this.linkPersonId,
    this.unlinkPersonId,
  });
}
