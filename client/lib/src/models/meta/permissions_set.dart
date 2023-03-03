import 'package:churchdata_core/churchdata_core.dart' hide LoggingService;
import 'package:collection/collection.dart';

class CAPermissionsSet extends PermissionsSet {
  const CAPermissionsSet.empty() : super.fromSet(const {});

  CAPermissionsSet.fromSet(Set<String> permissions)
      : super.fromSet(
          EqualitySet<String>.from(const PermissionEquality(), permissions),
        );

  bool get approved => permissions.contains('approved');

  bool get manageAllUsers => permissions.contains('manageAllUsers');
  bool get readAllData => permissions.contains('readAllData');
  bool get writeAllData => permissions.contains('writeAllData');

  bool get recordHistory => permissions.contains('recordHistory');
  bool get changeOldHistory => permissions.contains('changeOldHistory');
  bool get recoverDeleted => permissions.contains('recoverDeleted');
  bool get exportData => permissions.contains('exportData');
}

class PermissionEquality implements Equality<String> {
  const PermissionEquality();

  @override
  bool equals(String string1, String string2) => equalsIgnoreAsciiCase(
        string1.removeQuotes(),
        string2.removeQuotes(),
      );

  @override
  int hash(String string) => hashIgnoreAsciiCase(string.removeQuotes());

  @override
  bool isValidKey(Object? object) => object is String;
}

extension RemoveQuotes on String {
  String removeQuotes() => replaceAll('"', '').replaceAll("'", '');
}

List<Json> permissionsSetToJson(CAPermissionsSet data) =>
    data.permissions.map((e) => {'permission': e}).toList();
CAPermissionsSet permissionsSetFromJson(dynamic data) =>
    CAPermissionsSet.fromSet(
      (data as List?)?.map((o) => o['permission']).toSet().cast() ?? {},
    );
