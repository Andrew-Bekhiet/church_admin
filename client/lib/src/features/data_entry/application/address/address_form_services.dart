import 'package:church_admin/church_admin.dart';

class AddressFormServices {
  final AddressAutofill autofill;
  final AddressPlaceCatalog places;
  final LoggingService logging;

  const AddressFormServices({
    required this.autofill,
    required this.places,
    required this.logging,
  });
}
