import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/features/data_entry/presentation/widgets/form_fields/address_apartment_details_row.dart';
import 'package:church_admin/src/features/data_entry/presentation/widgets/form_fields/address_district_street_area_fields.dart';
import 'package:church_admin/src/features/data_entry/presentation/widgets/form_fields/address_house_number_row.dart';
import 'package:church_admin/src/features/data_entry/presentation/widgets/form_fields/address_location_tap_field.dart';
import 'package:church_admin/src/features/data_entry/presentation/widgets/form_fields/suggested_address_card.dart';
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
  Address? _suggestedAddress;

  @override
  void didUpdateWidget(covariant AddressWithLocationField oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.initialAddress != widget.initialAddress) {
      _address = widget.initialAddress ?? const Address();
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
            onStreetChanged: (street) =>
                _setAddress(_address.copyWith(street: street)),
            onAreaChanged: (area) => _setAddress(_address.copyWith(area: area)),
          ),
          AddressHouseNumberRow(
            address: _address,
            enabled: widget.enabled,
            onSubstreetNameChanged: (value) => _setAddress(
              _address.copyWith(substreetName: value),
              false,
            ),
            onHouseNumberChanged: (houseNumber) => _setAddress(
              _address.copyWith(houseNumber: houseNumber),
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
        ],
      ),
    );
  }

  Future<void> _handleLocationTap(FormFieldState<Point?> state) async {
    final newLocation = await widget.onEditLocation(context);

    if (newLocation == null) return;

    final newAddress = _address.copyWith(geolocation: newLocation);
    state.didChange(newLocation);
    _setAddress(newAddress);

    final addressFromLocation = await FunctionsService.I.getAddressFromLocation(
      newLocation,
    );

    if (addressFromLocation == null) return;

    final addressWithParsedObjects = await _parseAddressParentObjects(
      addressFromLocation,
    );

    setState(
      () =>
          _suggestedAddress = addressWithParsedObjects.toString().trim().isEmpty
          ? null
          : addressWithParsedObjects,
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

  Future<Address> _parseAddressParentObjects(Address address) async {
    final area = address.area != null
        ? await DatabaseService.I.areas
              .streamAll(searchQuery: Stream.value(address.area!.name))
              .first
        : null;

    final street = address.street != null
        ? await DatabaseService.I.streets
              .streamAll(
                searchQuery: Stream.value(
                  address.street!.name
                      .replaceAll(RegExp('(شارع)|(الشارع)'), '')
                      .trim(),
                ),
              )
              .first
        : null;

    final district = address.district != null
        ? await DatabaseService.I.metadata.districts
              .streamAll(searchQuery: Stream.value(address.district!.name))
              .first
        : null;

    return address.copyWith(
      area: area?.firstOrNull,
      street: street?.firstOrNull,
      district: district?.firstOrNull,
    );
  }

  Address _mergeWithCurrentAddress(Address suggestedAddress) {
    return _address.copyWith(
      area: suggestedAddress.area ?? _address.area,
      street: suggestedAddress.street ?? _address.street,
      district: suggestedAddress.district ?? _address.district,
      apartmentNumber:
          suggestedAddress.apartmentNumber ?? _address.apartmentNumber,
      houseNumber: suggestedAddress.houseNumber ?? _address.houseNumber,
      geolocation: suggestedAddress.geolocation ?? _address.geolocation,
    );
  }
}
