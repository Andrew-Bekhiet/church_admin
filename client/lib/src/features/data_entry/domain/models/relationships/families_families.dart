import 'package:church_admin/church_admin.dart';
import 'package:church_admin_annotations/church_admin_annotations.dart';
import 'package:json_annotation/json_annotation.dart';

part 'families_families.g.dart';

/// Not intended to be used directly
///
/// Used only for statically typed queries
@Queryable(label: 'العائلات')
@JsonSerializable()
class FamiliesFamilies {
  @QueryableField(label: 'parent')
  final Family parent;
  @QueryableField(label: 'child')
  final Family child;
  @QueryableField(label: 'parentFamilyId')
  final String parentFamilyId;
  @QueryableField(label: 'childFamilyId')
  final String childFamilyId;

  const FamiliesFamilies({
    required this.parent,
    required this.child,
    required this.parentFamilyId,
    required this.childFamilyId,
  });

  factory FamiliesFamilies.fromJson(Map<String, dynamic> json) =>
      _$FamiliesFamiliesFromJson(json);
}
