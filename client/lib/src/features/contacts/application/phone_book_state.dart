import 'package:church_admin/church_admin.dart';
import 'package:equatable/equatable.dart';

sealed class PhoneBookState with EquatableMixin {
  @override
  List<Object?> get props => [];

  const PhoneBookState();
}

final class PhoneBookLoading extends PhoneBookState {
  const PhoneBookLoading();
}

final class PhoneBookLoaded extends PhoneBookState {
  final PersonPhoneBook book;

  @override
  List<Object?> get props => [book];

  const PhoneBookLoaded(this.book);
}
