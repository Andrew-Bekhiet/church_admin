import 'dart:async';

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

  factory AddressFormServices.backedBy(
    DatabaseService database, {
    required Geocoder geocoder,
    required LoggingService logging,
  }) => AddressFormServices(
    autofill: AddressAutofill(
      areas: database.areas,
      streets: database.streets,
      districts: database.metadata.districts,
      geocoder: geocoder,
    ),
    places: AddressPlaceCatalog(
      areas: database.areas,
      streets: database.streets,
      districts: database.metadata.districts,
    ),
    logging: logging,
  );

  Future<T?> logFailureOf<T>(
    String eventName,
    Future<T> Function() lookup,
  ) async {
    try {
      return await lookup();
    } on Object catch (error, stackTrace) {
      unawaited(
        logging.exception(
          LogRecord(
            moduleName: '$AddressFormController',
            eventName: eventName,
            error: error,
            stackTrace: stackTrace,
          ),
        ),
      );

      return null;
    }
  }
}
