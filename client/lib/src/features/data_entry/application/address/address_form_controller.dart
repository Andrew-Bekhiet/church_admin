import 'dart:async';

import 'package:advanced_forms/advanced_forms.dart';
import 'package:church_admin/church_admin.dart';
import 'package:flutter/foundation.dart';

class AddressFormController extends AdvancedFormController {
  static const Duration houseNumberGeocodingDebounce = Duration(seconds: 1);

  static AddressFieldError? _invalidWholeNumber(String value) =>
      value.isNotEmpty && int.tryParse(value) == null
      ? AddressFieldError.invalidNumber
      : null;

  static String? _nullIfEmpty(String value) => value.isEmpty ? null : value;

  final AddressFormServices _services;
  final bool Function() _isRequired;

  final ValueNotifier<AddressSuggestion> _suggestion = ValueNotifier(
    const NoAddressSuggestion(),
  );
  late final ValueListenable<AddressSuggestion> suggestion = _suggestion;
  final ValueNotifier<Address?> _locationConfirmedFor = ValueNotifier(null);

  Address _baselineAddress;
  String? _lastTypedHouseCode;
  Timer? _houseNumberGeocodingDebounce;
  int _baselineGeneration = 0;

  late final district = AdvancedFieldController<District?, AddressFieldError>(
    initialValue: _baselineAddress.district,
  );
  late final street = AdvancedFieldController<Street?, AddressFieldError>(
    initialValue: _baselineAddress.street,
    validator: (street) => street == null && mustNameAreaAndStreet
        ? AddressFieldError.streetRequired
        : null,
  );
  late final area = AdvancedFieldController<Area?, AddressFieldError>(
    initialValue: _baselineAddress.area,
    validator: (area) => area == null && mustNameAreaAndStreet
        ? AddressFieldError.areaRequired
        : null,
  );
  late final substreetName = AdvancedTextFieldController<AddressFieldError>(
    initialValue: _baselineAddress.substreetName ?? '',
  );
  late final houseCode = AdvancedTextFieldController<AddressFieldError>(
    initialValue: _baselineAddress.houseCode ?? '',
  );
  late final storeyNumber = AdvancedTextFieldController<AddressFieldError>(
    initialValue: _baselineAddress.storeyNumber?.toString() ?? '',
    validator: _invalidWholeNumber,
  );
  late final apartmentNumber = AdvancedTextFieldController<AddressFieldError>(
    initialValue: _baselineAddress.apartmentNumber?.toString() ?? '',
    validator: _invalidWholeNumber,
  );
  late final specialLandmark = AdvancedTextFieldController<AddressFieldError>(
    initialValue: _baselineAddress.specialLandmark ?? '',
  );
  late final geolocation = AdvancedFieldController<Point?, AddressFieldError>(
    initialValue: _baselineAddress.geolocation,
  );

  late final Listenable placePartsMayHaveChanged = Listenable.merge([
    onValuesChanged,
    _locationConfirmedFor,
  ]);

  bool get wasEditedSinceBaseline => toAddress() != _baselineAddress;

  bool get mustNameAreaAndStreet => _isRequired() || wasEditedSinceBaseline;

  bool get _isReadOnly => street.value.readOnly;

  bool get hasPlaceChangedWithStaleLocation {
    final locationIsStillTheSavedOne =
        _baselineAddress.geolocation != null &&
        geolocation.fieldValue == _baselineAddress.geolocation;

    return locationIsStillTheSavedOne &&
        AddressPlacePart.anyChangedBetween(
          _locationConfirmedFor.value ?? _baselineAddress,
          toAddress(),
        );
  }

  AddressFormController({
    required Address? initialAddress,
    required this._services,
    required this._isRequired,
  }) : _baselineAddress = initialAddress ?? const Address(),
       super(debugName: 'address') {
    _lastTypedHouseCode = _baselineAddress.houseCode;
    registerFields([
      district,
      street,
      area,
      substreetName,
      houseCode,
      storeyNumber,
      apartmentNumber,
      specialLandmark,
      geolocation,
    ]);
  }

  Address toAddress() => _baselineAddress.copyWith(
    district: district.fieldValue,
    street: street.fieldValue,
    area: area.fieldValue,
    substreetName: _nullIfEmpty(substreetName.fieldValue),
    houseCode: _nullIfEmpty(houseCode.fieldValue.trim()),
    storeyNumber: int.tryParse(storeyNumber.fieldValue),
    apartmentNumber: int.tryParse(apartmentNumber.fieldValue),
    specialLandmark: _nullIfEmpty(specialLandmark.fieldValue),
    geolocation: geolocation.fieldValue,
  );

  void loadAsNewBaseline(Address? address) {
    _houseNumberGeocodingDebounce?.cancel();
    _baselineGeneration++;
    _baselineAddress = address ?? const Address();
    _lastTypedHouseCode = _baselineAddress.houseCode;
    _suggestion.value = const NoAddressSuggestion();
    _locationConfirmedFor.value = null;

    district.prefill(_baselineAddress.district, force: true);
    street.prefill(_baselineAddress.street, force: true);
    area.prefill(_baselineAddress.area, force: true);
    substreetName.prefill(_baselineAddress.substreetName ?? '', force: true);
    houseCode.prefill(_baselineAddress.houseCode ?? '', force: true);
    storeyNumber.prefill(
      _baselineAddress.storeyNumber?.toString() ?? '',
      force: true,
    );
    apartmentNumber.prefill(
      _baselineAddress.apartmentNumber?.toString() ?? '',
      force: true,
    );
    specialLandmark.prefill(
      _baselineAddress.specialLandmark ?? '',
      force: true,
    );
    geolocation.prefill(_baselineAddress.geolocation, force: true);

    registerFields(value.fields);
  }

  void chooseStreet(Street? chosen) {
    if (_isReadOnly) return;

    _houseNumberGeocodingDebounce?.cancel();
    street.setValue(chosen);

    if (chosen != null) unawaited(_fillAreaOf(chosen));
  }

  void houseCodeTyped(String text) {
    final typedHouseCode = _nullIfEmpty(text.trim());
    if (typedHouseCode == _lastTypedHouseCode) return;

    _lastTypedHouseCode = typedHouseCode;
    _houseNumberGeocodingDebounce?.cancel();
    if (typedHouseCode == null || street.fieldValue == null) return;

    _houseNumberGeocodingDebounce = Timer(
      houseNumberGeocodingDebounce,
      () => unawaited(_fillAreaOfTypedHouse()),
    );
  }

  Future<void> useLocation(Point newLocation) async {
    if (_isReadOnly) return;

    geolocation.setValue(newLocation);
    _suggestion.value = const NoAddressSuggestion();

    final generationWhenLookupStarted = _baselineGeneration;
    final suggested = await _logFailureOf(
      'suggestFromLocation',
      () => _services.autofill.suggestFromLocation(newLocation),
    );

    final locationWasReplacedMeanwhile = geolocation.fieldValue != newLocation;
    if (isDisposed ||
        generationWhenLookupStarted != _baselineGeneration ||
        locationWasReplacedMeanwhile ||
        suggested == null) {
      return;
    }

    final hasAnythingToSuggest =
        suggested.area != null || suggested.toString().trim().isNotEmpty;

    _suggestion.value = hasAnythingToSuggest
        ? AddressSuggested(suggested)
        : const NoAddressSuggestion();
  }

  void useSuggestedAddress() {
    if (_isReadOnly) return;

    if (_suggestion.value case AddressSuggested(:final address)) {
      if (address.area case final suggestedArea?) area.setValue(suggestedArea);
      if (address.street case final suggestedStreet?) {
        street.setValue(suggestedStreet);
      }
      if (address.district case final suggestedDistrict?) {
        district.setValue(suggestedDistrict);
      }
      if (address.apartmentNumber case final suggestedApartment?) {
        apartmentNumber.setValue('$suggestedApartment');
      }
      if (address.houseCode case final suggestedHouseCode?) {
        _lastTypedHouseCode = suggestedHouseCode;
        houseCode.setValue(suggestedHouseCode);
      }
      if (address.geolocation case final suggestedLocation?) {
        geolocation.setValue(suggestedLocation);
      }
    }

    _suggestion.value = const NoAddressSuggestion();
  }

  void keepLocation() => _locationConfirmedFor.value = toAddress();

  ViewableObjectListController<District> districtListController(
    Stream<String?> search,
  ) => _services.places.districtsMatching(search);

  ViewableObjectListController<Street> streetListController(
    Stream<String?> search,
  ) => _services.places.streetsMatching(search, inArea: area.fieldValue);

  ViewableObjectListController<Area> areaListController(
    Stream<String?> search,
  ) => _services.places.areasMatching(search, ofStreet: street.fieldValue);

  Future<District> createDistrictNamed(String name) =>
      _services.places.createDistrictNamed(name);

  @override
  void dispose() {
    _houseNumberGeocodingDebounce?.cancel();
    _suggestion.dispose();
    _locationConfirmedFor.dispose();
    super.dispose();
  }

  Future<void> _fillAreaOf(Street chosen) async {
    final areaWhenLookupStarted = area.fieldValue;
    final generationWhenLookupStarted = _baselineGeneration;
    final areasOfStreet = await _logFailureOf(
      'lookupAreasOfStreet',
      () => _services.autofill.areasOf(chosen),
    );

    final streetWasReplacedMeanwhile = street.fieldValue != chosen;
    final areaWasChosenMeanwhile = area.fieldValue != areaWhenLookupStarted;
    if (isDisposed ||
        generationWhenLookupStarted != _baselineGeneration ||
        streetWasReplacedMeanwhile ||
        areaWasChosenMeanwhile ||
        areasOfStreet == null) {
      return;
    }

    switch (areasOfStreet) {
      case [final onlyArea]:
        area.prefill(onlyArea);
      case [_, _, ...]:
        await _fillAreaOfGeocodedHouse(
          areasOfStreet,
          areaWhenLookupStarted,
          generationWhenLookupStarted,
        );
    }
  }

  Future<void> _fillAreaOfTypedHouse() async {
    final typedStreet = street.fieldValue;
    if (typedStreet == null) return;

    final areaWhenLookupStarted = area.fieldValue;
    final generationWhenLookupStarted = _baselineGeneration;
    final areasOfStreet = await _logFailureOf(
      'lookupAreasOfStreet',
      () => _services.autofill.areasOf(typedStreet),
    );

    final streetWasReplacedMeanwhile = street.fieldValue != typedStreet;
    if (isDisposed ||
        generationWhenLookupStarted != _baselineGeneration ||
        streetWasReplacedMeanwhile ||
        areasOfStreet == null ||
        areasOfStreet.length < 2) {
      return;
    }

    await _fillAreaOfGeocodedHouse(
      areasOfStreet,
      areaWhenLookupStarted,
      generationWhenLookupStarted,
    );
  }

  Future<void> _fillAreaOfGeocodedHouse(
    List<Area> areasOfStreet,
    Area? areaWhenLookupStarted,
    int generationWhenLookupStarted,
  ) async {
    final geocodedAddress = toAddress();
    final geocodedHouse = await _logFailureOf(
      'geocodeHouse',
      () => _services.autofill.maybeAreaOfGeocodedHouse(geocodedAddress),
    );

    final houseWasChangedMeanwhile =
        street.fieldValue != geocodedAddress.street ||
        _nullIfEmpty(houseCode.fieldValue.trim()) != geocodedAddress.houseCode;
    if (isDisposed ||
        generationWhenLookupStarted != _baselineGeneration ||
        houseWasChangedMeanwhile ||
        geocodedHouse == null) {
      return;
    }

    final areaWasChosenMeanwhile = area.fieldValue != areaWhenLookupStarted;
    final userChoseAreaOfStreet = areasOfStreet.any(
      (areaOfStreet) => areaOfStreet.id == area.fieldValue?.id,
    );

    if (!areaWasChosenMeanwhile && !userChoseAreaOfStreet) {
      area.prefill(geocodedHouse.area);
    }
    geolocation.prefill(geolocation.fieldValue ?? geocodedHouse.location);
  }

  Future<T?> _logFailureOf<T>(
    String eventName,
    Future<T> Function() lookup,
  ) async {
    try {
      return await lookup();
    } on Object catch (error, stackTrace) {
      unawaited(
        _services.logging.exception(
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
