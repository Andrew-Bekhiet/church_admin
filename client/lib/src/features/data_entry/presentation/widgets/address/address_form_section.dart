import 'dart:async';

import 'package:advanced_forms/advanced_forms.dart';
import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

class AddressFormSection extends StatelessWidget {
  final AddressFormController form;
  final String label;
  final Future<Point?> Function(BuildContext) onChooseLocationOnMap;

  const AddressFormSection({
    required this.form,
    required this.onChooseLocationOnMap,
    this.label = 'العنوان والموقع',
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = ColorScheme.of(context);

    Future<void> chooseLocationOnMap() async {
      final location = await onChooseLocationOnMap(context);

      if (location != null) unawaited(form.useLocation(location));
    }

    return AdvancedFieldBuilder<Point?, AddressFieldError>(
      field: form.geolocation,
      builder: (context, state, child) => InputDecorator(
        decoration: InputDecoration(
          labelText: label,
          enabled: !state.readOnly,
        ),
        child: child,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AdvancedFieldBuilder<Point?, AddressFieldError>(
            field: form.geolocation,
            builder: (context, state, _) {
              final location = state.value;

              return TappableInputField<Point?>(
                key: AddressFormSectionKeys.location,
                value: location,
                isEmpty: location == null,
                focusNode: form.geolocation.focusNode,
                decoration: InputDecoration(
                  labelText: 'الموقع',
                  suffixIcon: Icon(
                    Symbols.location_on,
                    color: location != null ? colorScheme.primary : null,
                  ),
                  prefixIcon: location != null
                      ? const Icon(Symbols.check_circle)
                      : null,
                ),
                onTap: state.readOnly ? null : chooseLocationOnMap,
                child: location == null ? null : const Text('تم تحديد الموقع'),
              );
            },
          ),
          ValueListenableBuilder<AddressSuggestion>(
            valueListenable: form.suggestion,
            builder: (context, suggestion, _) => SuggestedAddressCard(
              suggestedAddress: switch (suggestion) {
                AddressSuggested(:final address) => address,
                NoAddressSuggestion() => null,
              },
              onUseSuggestion: form.useSuggestedAddress,
            ),
          ),
          AddressFormPlaceFields(form: form),
          AddressFormUnitFields(form: form),
          ListenableBuilder(
            listenable: form.placePartsMayHaveChanged,
            builder: (context, _) => LocationUpdateReminderCard(
              isShown: form.hasPlaceChangedSinceLocationWasChecked,
              onUpdateLocation: () => unawaited(chooseLocationOnMap()),
              onKeepLocation: form.keepLocation,
            ),
          ),
          ListenableBuilder(
            listenable: form.onValuesChanged,
            builder: (context, _) => AddressPreview(address: form.toAddress()),
          ),
        ],
      ),
    );
  }
}

abstract final class AddressFormSectionKeys {
  static const Key location = ValueKey('Address Form Location Field Key');
}
