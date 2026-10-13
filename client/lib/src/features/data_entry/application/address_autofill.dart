import 'package:church_admin/church_admin.dart';

class AddressAutofill {
  final AreasDAO _areas;

  const AddressAutofill(this._areas);

  Future<Area?> maybeOnlyAreaOf(Street street) async {
    final areasOfStreet = await _areas.query(
      where: [
        Filter(
          AreaFields().streets.redirectTo(StreetFields().id),
          PrimitiveOperator.eq,
          street.id,
        ),
      ],
      onlineFirst: true,
    );

    return switch (areasOfStreet) {
      [final onlyArea] => onlyArea,
      _ => null,
    };
  }
}
