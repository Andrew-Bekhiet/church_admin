import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';

class AddressWithLocationField extends StatefulWidget {
  final String? label;
  final bool enabled;
  final bool required;
  final Address? initialAddress;
  final void Function(Address) onAddressChanged;
  final Future<Point?> Function(BuildContext) onEditLocation;

  const AddressWithLocationField({
    required this.initialAddress,
    required this.onAddressChanged,
    required this.onEditLocation,
    this.required = true,
    this.enabled = true,
    this.label,
    super.key,
  });

  @override
  State<AddressWithLocationField> createState() =>
      _AddressWithLocationFieldState();
}

class _AddressWithLocationFieldState extends State<AddressWithLocationField> {
  late Address _address = widget.initialAddress ?? const Address();
  late final ValueNotifier<Address> _previewedAddress = ValueNotifier(_address);
  late final AddressAutofill _autofill = AddressAutofill(
    areas: DatabaseService.I.areas,
    streets: DatabaseService.I.streets,
    districts: DatabaseService.I.metadata.districts,
    geocoder: Geocoder.I,
  );
  Address? _suggestedAddress;

  @override
  void didUpdateWidget(covariant AddressWithLocationField oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.initialAddress != widget.initialAddress) {
      _address = widget.initialAddress ?? const Address();
      _previewedAddress.value = _address;
      _suggestedAddress = null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return InputDecorator(
      decoration: InputDecoration(
        labelText: widget.label ?? 'العنوان والموقع',
        enabled: widget.enabled,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AddressLocationTapField(
            geolocation: _address.geolocation,
            enabled: widget.enabled,
            onTap: _handleLocationTap,
          ),
          SuggestedAddressCard(
            suggestedAddress: _suggestedAddress,
            onUseSuggestion: _useSuggestedAddress,
          ),
          AddressDistrictStreetAreaFields(
            address: _address,
            enabled: widget.enabled,
            required: widget.required,
            listControllerFor: _listControllerFor,
            onDistrictChanged: (district) =>
                _setAddress(_address.copyWith(district: district)),
            onStreetChanged: _handleStreetChanged,
            onAreaChanged: (area) => _setAddress(_address.copyWith(area: area)),
          ),
          AddressHouseNumberRow(
            address: _address,
            enabled: widget.enabled,
            onSubstreetNameChanged: (value) => _setAddress(
              _address.copyWith(substreetName: value),
              false,
            ),
            onHouseCodeChanged: (houseCode) => _setAddress(
              _address.copyWith(houseCode: houseCode),
              false,
            ),
          ),
          AddressApartmentDetailsRow(
            address: _address,
            enabled: widget.enabled,
            onStoreyNumberChanged: (storeyNumber) => _setAddress(
              _address.copyWith(storeyNumber: storeyNumber),
              false,
            ),
            onApartmentNumberChanged: (apartmentNumber) => _setAddress(
              _address.copyWith(apartmentNumber: apartmentNumber),
              false,
            ),
            onSpecialLandmarkChanged: (value) => _setAddress(
              _address.copyWith(specialLandmark: value),
              false,
            ),
          ),
          ValueListenableBuilder(
            valueListenable: _previewedAddress,
            builder: (context, address, _) => AddressPreview(address: address),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _previewedAddress.dispose();
    super.dispose();
  }

  void _handleStreetChanged(Street? street) {
    _setAddress(_address.copyWith(street: street));

    if (street != null) unawaited(_fillOnlyAreaOf(street));
  }

  Future<void> _fillOnlyAreaOf(Street street) async {
    final areaWhenLookupStarted = _address.area;
    final Area? onlyArea;
    try {
      onlyArea = await _autofill.maybeOnlyAreaOf(street);
    } on Object catch (error, stackTrace) {
      unawaited(
        LoggingService.I.exception(
          LogRecord(
            moduleName: '$AddressWithLocationField',
            eventName: 'fillOnlyAreaOf',
            error: error,
            stackTrace: stackTrace,
          ),
        ),
      );

      return;
    }

    final streetWasReplacedMeanwhile = _address.street != street;
    final areaWasChosenMeanwhile = _address.area != areaWhenLookupStarted;
    if (!mounted ||
        streetWasReplacedMeanwhile ||
        areaWasChosenMeanwhile ||
        onlyArea == null) {
      return;
    }

    _setAddress(_address.copyWith(area: onlyArea));
  }

  Future<void> _handleLocationTap(FormFieldState<Point?> state) async {
    final newLocation = await widget.onEditLocation(context);

    if (newLocation == null) return;

    final newAddress = _address.copyWith(geolocation: newLocation);
    state.didChange(newLocation);
    _suggestedAddress = null;
    _setAddress(newAddress);

    final Address suggestedAddress;
    try {
      suggestedAddress = await _autofill.suggestFromLocation(newLocation);
    } on Object catch (error, stackTrace) {
      unawaited(
        LoggingService.I.exception(
          LogRecord(
            moduleName: '$AddressWithLocationField',
            eventName: 'suggestFromLocation',
            error: error,
            stackTrace: stackTrace,
          ),
        ),
      );

      return;
    }

    final locationWasReplacedMeanwhile = _address.geolocation != newLocation;
    if (!mounted || locationWasReplacedMeanwhile) return;

    final hasAnythingToSuggest =
        suggestedAddress.area != null ||
        suggestedAddress.toString().trim().isNotEmpty;

    setState(
      () => _suggestedAddress = hasAnythingToSuggest ? suggestedAddress : null,
    );
  }

  void _useSuggestedAddress() {
    if (_suggestedAddress == null) {
      setState(() => _suggestedAddress = null);

      return;
    }

    _setAddress(_mergeWithCurrentAddress(_suggestedAddress!));
    _suggestedAddress = null;
  }

  void _setAddress(Address address, [bool setState = true]) {
    _previewedAddress.value = address;

    if (setState) {
      this.setState(() {
        _address = address;
      });
    } else {
      _address = address;
    }

    widget.onAddressChanged(_address);
  }

  ViewableObjectListController<T> _listControllerFor<T extends ViewableWithID>(
    StreamableDAO<T> dao,
    Stream<String?> searchStream, {
    List<Filter> where = const [],
  }) {
    final stream = dao.streamAll(
      searchQuery: searchStream,
      where: Stream.value(where),
    );

    return ViewableObjectListController<T>(objectsPaginatableStream: stream);
  }

  Address _mergeWithCurrentAddress(Address suggestedAddress) {
    return _address.copyWith(
      area: suggestedAddress.area ?? _address.area,
      street: suggestedAddress.street ?? _address.street,
      district: suggestedAddress.district ?? _address.district,
      apartmentNumber:
          suggestedAddress.apartmentNumber ?? _address.apartmentNumber,
      houseCode: suggestedAddress.houseCode ?? _address.houseCode,
      geolocation: suggestedAddress.geolocation ?? _address.geolocation,
    );
  }
}
