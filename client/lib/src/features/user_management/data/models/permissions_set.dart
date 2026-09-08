import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class PermissionsSet extends DelegatingSet<UserPermission> with Equatable {
  Set<UserPermission> get permissions => this;

  bool get approved => contains(UserPermission.approved);

  bool get manageAllUsers => contains(UserPermission.manageAllUsers);
  bool get onboardUsers => contains(UserPermission.onboardUsers);
  bool get readAllData => contains(UserPermission.readAllData);
  bool get writeAllData => contains(UserPermission.writeAllData);

  bool get recordAllAttendance => contains(UserPermission.recordAllAttendance);
  bool get recordAllServantsAttendance =>
      contains(UserPermission.recordAllServantsAttendance);
  bool get deleteData => contains(UserPermission.deleteData);
  bool get recoverDeleted => contains(UserPermission.recoverDeleted);
  bool get exportAllData => contains(UserPermission.exportAllData);

  @override
  List<Object?> get props => toList();

  const PermissionsSet.empty() : super(const {});

  PermissionsSet.parse(Set<String> permissions)
    : super(
        permissions
            .map(
              (p) => UserPermission.values.firstWhereOrNull((e) => e.name == p),
            )
            .nonNulls
            .toSet(),
      );

  // Ignored for readability
  // ignore: matching_super_parameters
  const PermissionsSet.fromSet(super.permissions);

  String toHumanReadableString() {
    if (!approved) {
      return 'حساب غير مفعل';
    } else if (length == 1) {
      // Only approved
      return 'لا يوجد صلاحيات';
    }

    return where((e) => e != UserPermission.approved)
        .sorted((p1, p2) => p1.index.compareTo(p2.index))
        .map((e) => e.label)
        .join('، ');
  }

  Set<IconData> toIcons() {
    if (!approved) {
      return {Symbols.person_off};
    } else if (length == 1) {
      return {};
    }

    return permissions
        .where((e) => e != UserPermission.approved)
        .sorted((p1, p2) => p1.index.compareTo(p2.index))
        .map((e) => e.icon)
        .toSet();
  }

  PermissionsSet validated() {
    return PermissionsSet.fromSet({
      for (final permission in this)
        if (containsAll(permission.requires)) permission,
    });
  }
}

List<Json> permissionsSetToJson(PermissionsSet data) =>
    data.map((e) => {'permission': e.name}).toList();
PermissionsSet permissionsSetFromJson(dynamic data) => PermissionsSet.parse(
  (data as List?)?.map((o) => o['permission']).toSet().cast() ?? {},
);
