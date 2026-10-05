import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';

class PersonFamilyAndAddressFields extends StatelessWidget {
  final Person person;
  final bool isCreate;
  final bool canEditFamilyAddress;
  final ValueChanged<Address?> onAddressChanged;
  final Future<Point?> Function(BuildContext) onEditLocation;
  final String? Function(Family?) familyValidator;
  final ValueChanged<Family?> onFamilyChanged;

  const PersonFamilyAndAddressFields({
    required this.person,
    required this.isCreate,
    required this.canEditFamilyAddress,
    required this.onAddressChanged,
    required this.onEditLocation,
    required this.familyValidator,
    required this.onFamilyChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final hasFamilyAddressToShow = isCreate || person.family != null;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        if (hasFamilyAddressToShow)
          AddressWithLocationField(
            label: 'عنوان وموقع العائلة',
            enabled: canEditFamilyAddress,
            required: person.family == null,
            initialAddress: person.family?.address ?? person.address,
            onAddressChanged: onAddressChanged,
            onEditLocation: onEditLocation,
          ),
        ObjectSelectionField<Family, Family?>(
          key: PersonFamilyAndAddressFieldsKeys.family,
          validator: familyValidator,
          nullable: isCreate,
          decoration: const InputDecoration(errorMaxLines: 2),
          initialValue: person.family,
          listController: (s) => ViewableObjectListController(
            objectsPaginatableStream: DatabaseService.I.families
                .streamAllWithAddresses(searchQuery: s),
          ),
          dialogFieldLabel: 'العائلة',
          onChanged: onFamilyChanged,
          builder: (context, state) => switch (state.value) {
            final family? => ObjectSelectionPreview(family),
            null => null,
          },
        ),
      ],
    );
  }
}

abstract final class PersonFamilyAndAddressFieldsKeys {
  static const Key family = ValueKey(
    'Person Family And Address Fields Family Key',
  );
}
