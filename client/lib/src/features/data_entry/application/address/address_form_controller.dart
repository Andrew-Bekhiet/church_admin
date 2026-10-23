import 'dart:async';

import 'package:advanced_forms/advanced_forms.dart';
import 'package:church_admin/church_admin.dart';
import 'package:flutter/foundation.dart';

class AddressFormController extends AdvancedFormController {
  static const Duration houseNumberGeocodingDebounce = Duration(seconds: 1);

  static String? _nullIfEmpty(String value) => value.isEmpty ? null : value;

  final AddressFormServices _services;
  final bool Function() _isRequired;

  final ValueNotifier<AddressSuggestion> _suggestion = ValueNotifier(
    const NoAddressSuggestion(),
  );
  late final ValueListenable<AddressSuggestion> suggestion = _suggestion;
  final ValueNotifier<Address?> _addressConfirmedNotStale = ValueNotifier(null);

  Address _baselineAddress;
  String? _lastTypedHouseCode;
  Timer? _houseNumberGeocodingDebounce;
  int _baselineGeneration = 0;
  bool _wasStaleLocationReminderShown = false;

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
    validator: AddressFieldValidators.englishDigitsOnly,
  );
  late final storeyNumber = AdvancedTextFieldController<AddressFieldError>(
    initialValue: _baselineAddress.storeyNumber?.toString() ?? '',
    validator: AddressFieldValidators.wholeNumber,
  );
  late final apartmentNumber = AdvancedTextFieldController<AddressFieldError>(
    initialValue: _baselineAddress.apartmentNumber?.toString() ?? '',
    validator: AddressFieldValidators.wholeNumber,
  );
  late final specialLandmark = AdvancedTextFieldController<AddressFieldError>(
    initialValue: _baselineAddress.specialLandmark ?? '',
  );
  late final geolocation = AdvancedFieldController<Point?, AddressFieldError>(
    initialValue: _baselineAddress.geolocation,
  );

  late final Listenable staleLocationInputsChanged = Listenable.merge([
    onValuesChanged,
    _addressConfirmedNotStale,
  ]);

  bool get wasEditedSinceBaseline => toAddress() != _baselineAddress;

  bool get mustNameAreaAndStreet => _isRequired() || wasEditedSinceBaseline;

  bool get _isReadOnly => street.value.readOnly;

  bool get _isStaleLocationReminderShown =>
      !_isReadOnly && hasPlaceChangedWithStaleLocation;

  bool get hasPlaceChangedWithStaleLocation {
    final locationIsStillTheSavedOne =
        _baselineAddress.geolocation != null &&
        geolocation.fieldValue == _baselineAddress.geolocation;

    return locationIsStillTheSavedOne &&
        AddressPlacePart.anyChangedBetween(
          _addressConfirmedNotStale.value ?? _baselineAddress,
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
    staleLocationInputsChanged.addListener(
      _maybeTrackStaleLocationReminderShow,
    );
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
    _addressConfirmedNotStale.value = null;

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
    if (isDisposed || _isReadOnly) return;

    geolocation.setValue(newLocation);
    _suggestion.value = const NoAddressSuggestion();

    final generationWhenLookupStarted = _baselineGeneration;
    final suggested = await _services.logFailureOf(
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

    if (!hasAnythingToSuggest) {
      _suggestion.value = const NoAddressSuggestion();

      return;
    }

    _suggestion.value = AddressSuggested(suggested);
    _services.analytics.track(AddressSuggestionShow(suggested));
  }

  Future<void> updateLocationFromStaleReminder(Point newLocation) async {
    if (_isStaleLocationReminderShown) {
      _services.analytics.track(const StaleLocationReminderAccept());
    }
    await useLocation(newLocation);
  }

  void useSuggestedAddress() {
    if (_isReadOnly) return;

    if (_suggestion.value case AddressSuggested(:final address)) {
      _services.analytics.track(AddressSuggestionAccept(address));
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

  void confirmAddressNotStale() {
    _services.analytics.track(const StaleLocationReminderDismiss());
    _addressConfirmedNotStale.value = toAddress();
  }

  ViewableObjectListController<District> districtListController(
    Stream<String?> search,
  ) => _services.places.districtsMatching(search);

  ViewableObjectListController<Street> streetListController(
    Stream<String?> search,
  ) => _services.places.streetsMatching(search, inArea: area.fieldValue);

  ViewableObjectListController<Area> areaListController(
    Stream<String?> search,
  ) => _services.places.areasMatching(search, ofStreet: street.fieldValue);

  Future<District> createDistrictNamed(String name) async {
    final created = await _services.places.createDistrictNamed(name);
    _services.analytics.track(DistrictCreate(created));

    return created;
  }

  Future<void> _fillAreaOf(Street chosen) async {
    final areaWhenLookupStarted = area.fieldValue;
    final generationWhenLookupStarted = _baselineGeneration;
    final areasOfStreet = await _services.logFailureOf(
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

  Future<void> _fillAreaOfTypedHouse() async {
    final typedStreet = street.fieldValue;
    if (typedStreet == null) return;

    final areaWhenLookupStarted = area.fieldValue;
    final generationWhenLookupStarted = _baselineGeneration;
    final areasOfStreet = await _services.logFailureOf(
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
    final geocodedAddress = toAddress();
    final geocodedHouse = await _services.logFailureOf(
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
      _prefillAreaThenTrackIfChanged(
        geocodedHouse.area,
        source: AddressAutofillSource.geocodedHouseNumber,
        street: geocodedStreet,
      );
    }
    final wasUnlocated = geolocation.fieldValue == null;
    geolocation.prefill(geolocation.fieldValue ?? geocodedHouse.location);
    if (wasUnlocated) {
      _services.analytics.track(
        AddressLocationFill(
          source: AddressAutofillSource.geocodedHouseNumber,
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
    final areaBeforeFill = area.fieldValue;
    area.prefill(filled);
    if (area.fieldValue == areaBeforeFill) return;

    _services.analytics.track(
      AddressAreaFill(source: source, street: street, area: filled),
    );
  }

  void _maybeTrackStaleLocationReminderShow() {
    final isShown = _isStaleLocationReminderShown;
    if (isShown && !_wasStaleLocationReminderShown) {
      _services.analytics.track(const StaleLocationReminderShow());
    }
    _wasStaleLocationReminderShown = isShown;
  }

  @override
  void dispose() {
    _houseNumberGeocodingDebounce?.cancel();
    staleLocationInputsChanged.removeListener(
      _maybeTrackStaleLocationReminderShow,
    );
    _suggestion.dispose();
    _addressConfirmedNotStale.dispose();
    super.dispose();
  }
}
