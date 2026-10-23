import 'package:church_admin/church_admin.dart';

class AddressAreaAutofiller {
  final AddressFormController _form;
  final AddressFormServices _services;
  final int Function() _currentBaselineGeneration;

  AddressAreaAutofiller({
    required this._form,
    required this._services,
    required this._currentBaselineGeneration,
  });

  Future<void> fillAreaOf(Street chosen) async {
    final areaWhenLookupStarted = _form.area.fieldValue;
    final generationWhenLookupStarted = _currentBaselineGeneration();
    final areasOfStreet = await _services.logFailureOf(
      'lookupAreasOfStreet',
      () => _services.autofill.areasOf(chosen),
    );

    final streetWasReplacedMeanwhile = _form.street.fieldValue != chosen;
    final areaWasChosenMeanwhile =
        _form.area.fieldValue != areaWhenLookupStarted;
    if (_wasFormDisposedOrReloadedSince(generationWhenLookupStarted) ||
        streetWasReplacedMeanwhile ||
        areaWasChosenMeanwhile ||
        areasOfStreet == null) {
      return;
    }

    switch (areasOfStreet) {
      case [final onlyArea]:
        _prefillAreaThenTrackIfChanged(
          onlyArea,
          source: AddressAutofillSource.singleAreaStreet,
          street: chosen,
        );

      case [_, _, ...]:
        await _fillAreaOfGeocodedHouse(
          chosen,
          areasOfStreet,
          areaWhenLookupStarted,
          generationWhenLookupStarted,
        );
    }
  }

  Future<void> fillAreaOfTypedHouse() async {
    final typedStreet = _form.street.fieldValue;
    if (typedStreet == null) return;

    final areaWhenLookupStarted = _form.area.fieldValue;
    final generationWhenLookupStarted = _currentBaselineGeneration();
    final areasOfStreet = await _services.logFailureOf(
      'lookupAreasOfStreet',
      () => _services.autofill.areasOf(typedStreet),
    );

    final streetWasReplacedMeanwhile = _form.street.fieldValue != typedStreet;
    if (_wasFormDisposedOrReloadedSince(generationWhenLookupStarted) ||
        streetWasReplacedMeanwhile ||
        areasOfStreet == null ||
        areasOfStreet.length < 2) {
      return;
    }

    await _fillAreaOfGeocodedHouse(
      typedStreet,
      areasOfStreet,
      areaWhenLookupStarted,
      generationWhenLookupStarted,
    );
  }

  Future<void> _fillAreaOfGeocodedHouse(
    Street geocodedStreet,
    List<Area> areasOfStreet,
    Area? areaWhenLookupStarted,
    int generationWhenLookupStarted,
  ) async {
    final geocodedAddress = _form.toAddress();
    final geocodedHouse = await _services.logFailureOf(
      'geocodeHouse',
      () => _services.autofill.maybeAreaOfGeocodedHouse(geocodedAddress),
    );

    final currentAddress = _form.toAddress();
    final houseWasChangedMeanwhile =
        currentAddress.street != geocodedAddress.street ||
        currentAddress.houseCode != geocodedAddress.houseCode;
    if (_wasFormDisposedOrReloadedSince(generationWhenLookupStarted) ||
        houseWasChangedMeanwhile ||
        geocodedHouse == null) {
      return;
    }

    final area = _form.area;
    final areaWasChosenMeanwhile = area.fieldValue != areaWhenLookupStarted;
    final userChoseAreaOfStreet = areasOfStreet.any(
      (areaOfStreet) => areaOfStreet.id == area.fieldValue?.id,
    );

    if (!areaWasChosenMeanwhile && !userChoseAreaOfStreet) {
      _prefillAreaThenTrackIfChanged(
        geocodedHouse.area,
        source: AddressAutofillSource.geocodedHouseNumber,
        street: geocodedStreet,
      );
    }
    final geolocation = _form.geolocation;
    final wasUnlocated = geolocation.fieldValue == null;
    geolocation.prefill(geolocation.fieldValue ?? geocodedHouse.location);
    if (wasUnlocated) {
      _services.analytics.track(
        AddressLocationFill(
          autofillSource: AddressAutofillSource.geocodedHouseNumber,
          street: geocodedStreet,
        ),
      );
    }
  }

  void _prefillAreaThenTrackIfChanged(
    Area filled, {
    required AddressAutofillSource source,
    required Street street,
  }) {
    final areaBeforeFill = _form.area.fieldValue;
    _form.area.prefill(filled);
    if (_form.area.fieldValue == areaBeforeFill) return;

    _services.analytics.track(
      AddressAreaFill(autofillSource: source, street: street, area: filled),
    );
  }

  bool _wasFormDisposedOrReloadedSince(int generationWhenLookupStarted) =>
      _form.isDisposed ||
      generationWhenLookupStarted != _currentBaselineGeneration();
}
