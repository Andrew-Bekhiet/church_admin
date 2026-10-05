import 'package:church_admin/church_admin.dart';
import 'package:church_admin_annotations/church_admin_annotations.dart';
import 'package:json_annotation/json_annotation.dart';

part 'areas_streets.g.dart';

/// Not intended to be used directly
///
/// Used only for statically typed queries
@Queryable(classLabel: 'المنطقة', regexIgnoreFields: [])
@JsonSerializable()
class AreasStreets {
  final Area area;
  final Street street;
  final String areaId;
  final String streetId;

  const AreasStreets({
    required this.area,
    required this.street,
    required this.areaId,
    required this.streetId,
  });

  factory AreasStreets.fromJson(Map<String, dynamic> json) =>
      _$AreasStreetsFromJson(json);
}
