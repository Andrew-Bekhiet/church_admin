import 'package:church_admin/church_admin.dart';

sealed class AddressSuggestion {
  const AddressSuggestion();
}

final class AddressSuggested extends AddressSuggestion {
  final Address address;

  const AddressSuggested(this.address);
}

final class NoAddressSuggestion extends AddressSuggestion {
  const NoAddressSuggestion();
}
