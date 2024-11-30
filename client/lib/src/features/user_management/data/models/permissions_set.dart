import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class PermissionsSet extends DelegatingSet<UserPermission> with EquatableMixin {
  Set<UserPermission> get permissions => this;

  const PermissionsSet.empty() : super(const {});

  PermissionsSet.parse(Set<String> permissions)
      : super(permissions.map(UserPermission.values.byName).toSet());

  const PermissionsSet.fromSet(super.permissions);

  bool get approved => contains(UserPermission.approved);

  bool get manageAllUsers => contains(UserPermission.manageAllUsers);
  bool get readAllData => contains(UserPermission.readAllData);
  bool get writeAllData => contains(UserPermission.writeAllData);

  bool get recordHistory => contains(UserPermission.recordHistory);
  bool get changeOldHistory => contains(UserPermission.changeOldHistory);
  bool get recoverDeleted => contains(UserPermission.recoverDeleted);
  bool get exportData => contains(UserPermission.exportData);

  @override
  List<Object?> get props => toList();

  String toHumanReadableString() {
    if (!approved) {
      return 'حساب غير مفعل';
    } else if (length == 1) {
      // Only approved
      return 'لا يوجد صلاحيات';
    }

    return where((e) => e != UserPermission.approved)
        .sorted((p1, p2) => p1.index.compareTo(p2.index))
        .map((e) => e.humanReadableName)
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
}

extension RemoveQuotes on String {
  String removeQuotes() => replaceAll('"', '').replaceAll("'", '');
}

List<Json> permissionsSetToJson(PermissionsSet data) =>
    data.map((e) => {'permission': e.name}).toList();
PermissionsSet permissionsSetFromJson(dynamic data) => PermissionsSet.parse(
      (data as List?)?.map((o) => o['permission']).toSet().cast() ?? {},
    );
