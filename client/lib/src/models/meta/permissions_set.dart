import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class PermissionsSet extends Equatable {
  final Set<UserPermission> permissions;

  const PermissionsSet.empty() : permissions = const {};

  PermissionsSet.fromSet(Set<String> permissions)
      : permissions = permissions.map(UserPermission.values.byName).toSet();

  bool get approved => permissions.contains(UserPermission.approved);

  bool get manageAllUsers =>
      permissions.contains(UserPermission.manageAllUsers);
  bool get readAllData => permissions.contains(UserPermission.readAllData);
  bool get writeAllData => permissions.contains(UserPermission.writeAllData);

  bool get recordHistory => permissions.contains(UserPermission.recordHistory);
  bool get changeOldHistory =>
      permissions.contains(UserPermission.changeOldHistory);
  bool get recoverDeleted =>
      permissions.contains(UserPermission.recoverDeleted);
  bool get exportData => permissions.contains(UserPermission.exportData);

  @override
  List<Object?> get props => permissions.toList();

  String toHumanReadableString() {
    if (!approved) {
      return 'حساب غير مفعل';
    } else if (permissions.length == 1) {
      // Only approved
      return 'لا يوجد صلاحيات';
    }

    return permissions
        .where((e) => e != UserPermission.approved)
        .sorted((p1, p2) => p1.index.compareTo(p2.index))
        .map((e) => e.humanReadableName)
        .join('، ');
  }

  Set<IconData> toIcons() {
    if (!approved) {
      return {Icons.person_off};
    } else if (permissions.length == 1) {
      return {};
    }

    return permissions
        .where((e) => e != UserPermission.approved)
        .sorted((p1, p2) => p1.index.compareTo(p2.index))
        .map((e) => e.icon)
        .toSet();
  }
}

extension RemoveQuotes on String {
  String removeQuotes() => replaceAll('"', '').replaceAll("'", '');
}

List<Json> permissionsSetToJson(PermissionsSet data) =>
    data.permissions.map((e) => {'permission': e.name}).toList();
PermissionsSet permissionsSetFromJson(dynamic data) => PermissionsSet.fromSet(
      (data as List?)?.map((o) => o['permission']).toSet().cast() ?? {},
    );
