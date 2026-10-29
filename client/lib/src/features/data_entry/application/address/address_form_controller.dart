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

  late final _areaAutofiller = AddressAreaAutofiller(
    form: this,
    services: _services,
    currentBaselineGeneration: () => _baselineGeneration,
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

    if (chosen != null) unawaited(_areaAutofiller.fillAreaOf(chosen));
  }

  void houseCodeTyped(String text) {
    final typedHouseCode = _nullIfEmpty(text.trim());
    if (typedHouseCode == _lastTypedHouseCode) return;

    _lastTypedHouseCode = typedHouseCode;
    _houseNumberGeocodingDebounce?.cancel();
    if (typedHouseCode == null || street.fieldValue == null) return;

    _houseNumberGeocodingDebounce = Timer(
      houseNumberGeocodingDebounce,
      () => unawaited(_areaAutofiller.fillAreaOfTypedHouse()),
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
    _maybeTrackStaleLocationReminderAccept();
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
    return _services.places.createDistrictNamed(name);
  }

  void _maybeTrackStaleLocationReminderAccept() {
    if (!_isStaleLocationReminderShown) return;

    _services.analytics.track(const StaleLocationReminderAccept());
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
