import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

class AddressDistrictStreetAreaFields extends StatelessWidget {
  const AddressDistrictStreetAreaFields({
    required this.address,
    required this.enabled,
    required this.required,
    required this.listControllerFor,
    required this.onDistrictChanged,
    required this.onStreetChanged,
    required this.onAreaChanged,
    super.key,
  });

  final Address address;
  final bool enabled;
  final bool required;
  final ViewableObjectListController<T> Function<T extends ViewableWithID>(
    StreamableDAO<T> dao,
    Stream<String?> searchStream, {
    List<Filter> where,
  })
  listControllerFor;
  final void Function(District?) onDistrictChanged;
  final void Function(Street?) onStreetChanged;
  final void Function(Area?) onAreaChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ObjectSelectionField<District, District?>(
          key: ValueKey(address.district),
          enabled: enabled,
          onCreateCustom: (name) =>
              DatabaseService.I.metadata.districts.createObject(
                newObject: District(id: const Uuid().v4(), name: name),
              ),
          listController: (s) =>
              listControllerFor(DatabaseService.I.metadata.districts, s),
          initialValue: address.district,
          dialogFieldLabel: 'الحي',
          builder: (context, state) {
            if (state.value == null) {
              return null;
            }

            return Text(state.value!.name);
          },
          onChanged: onDistrictChanged,
        ),
        ObjectSelectionField<Street, Street?>(
          key: ValueKey(address.street),
          enabled: enabled,
          listController: (s) => listControllerFor(
            DatabaseService.I.streets,
            s,
            where: address.area != null
                ? [
                    Filter(
                      StreetFields().areasRel.redirectTo(
                        AreasStreetsFields().areaId,
                      ),
                      PrimitiveOperator.eq,
                      address.area!.id,
                    ),
                  ]
                : <Filter>[],
          ),
          initialValue: address.street,
          dialogFieldLabel: 'الشارع الرئيسي',
          builder: (context, state) {
            if (state.value == null) {
              return null;
            }

            return Text(state.value!.name);
          },
          onChanged: onStreetChanged,
          validator: (value) =>
              value == null && required ? 'يجب إدخال الشارع' : null,
        ),
        ObjectSelectionField<Area, Area?>(
          key: ValueKey(address.area),
          enabled: enabled,
          listController: (s) => listControllerFor(
            DatabaseService.I.areas,
            s,
            where: address.street != null
                ? [
                    Filter(
                      AreaFields().streets.redirectTo(StreetFields().id),
                      PrimitiveOperator.eq,
                      address.street!.id,
                    ),
                  ]
                : [],
          ),
          initialValue: address.area,
          dialogFieldLabel: 'المنطقة',
          builder: (context, state) {
            if (state.value == null) {
              return null;
            }

            return Text(state.value!.name);
          },
          onChanged: onAreaChanged,
          validator: (value) =>
              value == null && required ? 'يجب إدخال المنطقة' : null,
        ),
      ],
    );
  }
}
