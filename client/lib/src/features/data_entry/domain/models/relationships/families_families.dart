import 'package:church_admin/annotations.dart';
import 'package:church_admin/church_admin.dart';
import 'package:json_annotation/json_annotation.dart';

part 'families_families.g.dart';

/// Not intended to be used directly
///
/// Used only for statically typed queries
@Queryable(classLabel: 'العائلات', regexIgnoreFields: [])
@JsonSerializable()
class FamiliesFamilies {
  final Family parent;
  final Family child;
  final String parentFamilyId;
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
