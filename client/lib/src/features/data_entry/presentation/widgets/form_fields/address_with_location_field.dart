import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

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
    this.label,
    this.required = true,
    this.enabled = true,
    super.key,
  });

  @override
  State<AddressWithLocationField> createState() =>
      _AddressWithLocationFieldState();
}

class _AddressWithLocationFieldState extends State<AddressWithLocationField> {
  late Address _address = widget.initialAddress ?? Address();
  Address? _suggestedAddress;

  void _setAddress(Address address, [bool setState = true]) {
    _address = address;
    widget.onAddressChanged(_address);

    if (setState) {
      this.setState(() {});
    }
  }

  ViewableObjectListController<T> _listControllerFor<T extends ViewableWithID>(
    StreamableDAO dao,
    Stream<String?> searchStream,
  ) {
    final stream = dao.streamAll(searchQuery: searchStream);

    return ViewableObjectListController<T>(
      objectsPaginatableStream: stream as GQLPaginatableStream<T>,
    );
  }

  @override
  void didUpdateWidget(covariant AddressWithLocationField oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.initialAddress != widget.initialAddress) {
      _address = widget.initialAddress ?? Address();
      _suggestedAddress = null;
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final colorScheme = theme.colorScheme;

    return InputDecorator(
      decoration: InputDecoration(
        labelText: widget.label ?? 'العنوان والموقع',
        enabled: widget.enabled,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TappableFormField(
            key: ValueKey(_address.geolocation),
            validator: (v) => null,
            decoration:
                (context, state) => InputDecoration(
                  labelText: 'الموقع',
                  errorText: state.errorText,
                  suffixIcon: Icon(
                    Symbols.location_on,
                    color:
                        _address.geolocation != null
                            ? colorScheme.primary
                            : null,
                  ),
                  prefixIcon:
                      state.value != null
                          ? const Icon(Symbols.check_circle)
                          : null,
                  enabled: widget.enabled,
                ),
            builder:
                (context, state) =>
                    _address.geolocation != null
                        ? const Text('تم تحديد الموقع')
                        : null,
            initialValue: _address.geolocation,
            onTap:
                widget.enabled
                    ? (state) async {
                      final newLocation = await widget.onEditLocation(context);

                      if (newLocation == null) return;

                      final newAddress = _address.copyWith(
                        geolocation: newLocation,
                      );
                      state.didChange(newLocation);
                      _setAddress(newAddress);

                      final addressFromLocation = await FunctionsService.I
                          .getAddressFromLocation(newLocation);

                      if (addressFromLocation == null) return;

                      final addressWithParsedObjects =
                          await _parseAddressParentObjects(addressFromLocation);

                      setState(
                        () =>
                            _suggestedAddress =
                                addressWithParsedObjects
                                        .toString()
                                        .trim()
                                        .isEmpty
                                    ? null
                                    : addressWithParsedObjects,
                      );
                    }
                    : null,
          ),
          AnimatedSize(
            duration: const Duration(milliseconds: 300),
            child:
                _suggestedAddress != null
                    ? Card(
                      color: colorScheme.surfaceContainerLow,
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    'تم إيجاد عنوان مقترح',
                                    style: textTheme.bodyLarge,
                                  ),
                                ),
                                TextButton.icon(
                                  onPressed: () {
                                    if (_suggestedAddress == null) {
                                      setState(() => _suggestedAddress = null);
                                      return;
                                    }

                                    _setAddress(
                                      _mergeWithCurrentAddress(
                                        _suggestedAddress!,
                                      ),
                                    );
                                    _suggestedAddress = null;
                                  },
                                  icon: const Icon(Symbols.done),
                                  label: const Text('استخدام العنوان المقترح'),
                                ),
                              ],
                            ),
                            Text(
                              _suggestedAddress!.toString(),
                              style: textTheme.bodyMedium,
                            ),
                          ],
                        ),
                      ),
                    )
                    : const SizedBox.shrink(),
          ),
          ObjectSelectionField<District, District?>(
            key: ValueKey(_address.district),
            enabled: widget.enabled,
            listController:
                (s) => _listControllerFor(DatabaseService.I.districts, s),
            initialValue: _address.district,
            dialogFieldLabel: 'الحي',
            builder: (context, state) {
              if (state.value == null) {
                return null;
              }

              return Text(state.value!.name);
            },
            onChanged:
                (district) =>
                    _setAddress(_address.copyWith(district: district)),
          ),
          ObjectSelectionField<Street, Street?>(
            key: ValueKey(_address.street),
            enabled: widget.enabled,
            listController:
                (s) => _listControllerFor(DatabaseService.I.streets, s),
            initialValue: _address.street,
            dialogFieldLabel: 'الشارع الرئيسي',
            builder: (context, state) {
              if (state.value == null) {
                return null;
              }

              return Text(state.value!.name);
            },
            onChanged:
                (street) => _setAddress(_address.copyWith(street: street)),
            validator:
                (value) =>
                    value == null && widget.required
                        ? 'يجب إدخال الشارع'
                        : null,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 3,
                  child: TextFormField(
                    key: ValueKey(_address.substreetName),
                    initialValue: _address.substreetName,
                    decoration: const InputDecoration(
                      labelText: 'الشارع الفرعي',
                    ),
                    enabled: widget.enabled,
                    onChanged:
                        (value) => _setAddress(
                          _address.copyWith(
                            substreetName: value.isEmpty ? null : value,
                          ),
                          false,
                        ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  flex: 2,
                  child: TextFormField(
                    key: ValueKey(_address.houseNumber),
                    initialValue: _address.houseNumber?.toString(),
                    decoration: const InputDecoration(labelText: 'رقم العمارة'),
                    enabled: widget.enabled,
                    keyboardType: TextInputType.number,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator:
                        (value) =>
                            value != null &&
                                    value.isNotEmpty &&
                                    int.tryParse(value) == null
                                ? 'برجاء ادخال رقم صحيح'
                                : null,
                    onChanged: (value) {
                      final houseNumber = int.tryParse(value);
                      if (houseNumber == null) {
                        return;
                      }

                      _setAddress(
                        _address.copyWith(houseNumber: houseNumber),
                        false,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: TextFormField(
                    key: ValueKey(_address.apartmentNumber),
                    initialValue: _address.apartmentNumber?.toString(),
                    decoration: const InputDecoration(labelText: 'رقم الشقة'),
                    enabled: widget.enabled,
                    keyboardType: TextInputType.number,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator:
                        (value) =>
                            value != null &&
                                    value.isNotEmpty &&
                                    int.tryParse(value) == null
                                ? 'برجاء ادخال رقم صحيح'
                                : null,
                    onChanged: (value) {
                      final apartmentNumber = int.tryParse(value);
                      if (apartmentNumber == null) {
                        return;
                      }

                      _setAddress(
                        _address.copyWith(apartmentNumber: apartmentNumber),
                        false,
                      );
                    },
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  flex: 3,
                  child: TextFormField(
                    key: ValueKey(_address.specialLandmark),
                    initialValue: _address.specialLandmark,
                    decoration: const InputDecoration(labelText: 'علامة مميزة'),
                    enabled: widget.enabled,
                    onChanged:
                        (value) => _setAddress(
                          _address.copyWith(
                            specialLandmark: value.isEmpty ? null : value,
                          ),
                          false,
                        ),
                  ),
                ),
              ],
            ),
          ),
          ObjectSelectionField<Area, Area?>(
            key: ValueKey(_address.area),
            enabled: widget.enabled,
            listController:
                (s) => _listControllerFor(DatabaseService.I.areas, s),
            initialValue: _address.area,
            dialogFieldLabel: 'المنطقة',
            builder: (context, state) {
              if (state.value == null) {
                return null;
              }

              return Text(state.value!.name);
            },
            onChanged: (area) => _setAddress(_address.copyWith(area: area)),
            validator:
                (value) =>
                    value == null && widget.required
                        ? 'يجب إدخال المنطقة'
                        : null,
          ),
        ],
      ),
    );
  }

  Future<Address> _parseAddressParentObjects(Address address) async {
    final area =
        address.area != null
            ? await DatabaseService.I.areas
                .streamAll(searchQuery: Stream.value(address.area!.name))
                .first
            : null;

    final street =
        address.street != null
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

    final district =
        address.district != null
            ? await DatabaseService.I.districts
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
