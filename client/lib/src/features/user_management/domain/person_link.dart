import 'package:church_admin/church_admin.dart';
import 'package:equatable/equatable.dart';

sealed class PersonLink with Equatable {
  const PersonLink();
}

final class NoPersonSelected extends PersonLink {
  @override
  List<Object?> get props => [];

  const NoPersonSelected();
}

final class LinkExistingPerson extends PersonLink {
  final Person person;

  @override
  List<Object?> get props => [person];

  const LinkExistingPerson(this.person);
}

final class CreateNewPerson extends PersonLink {
  final String name;
  final bool gender;

  @override
  List<Object?> get props => [name, gender];

  const CreateNewPerson({required this.name, required this.gender});
}
