import 'package:collection/collection.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:material_ui/material_ui.dart';

enum UserType {
  human(storedName: 'human', icon: Symbols.person),
  fingerprintBot(
    storedName: 'fingerprint_bot',
    icon: Symbols.fingerprint,
    automatedAccountDescription: 'يسجّل الحضور تلقائيًا من جهاز البصمة',
  ),
  maintenanceBot(
    storedName: 'maintenance_bot',
    icon: Symbols.build,
    automatedAccountDescription: 'يرسل تنبيهات صيانة التطبيق تلقائيًا',
  ),
  unknownNonHuman(
    storedName: 'unknown_non_human',
    icon: Symbols.smart_toy,
    automatedAccountDescription: 'يعمل تلقائيًا ولا يستخدمه أحد الخدام',
  );

  final String storedName;
  final IconData icon;
  final String? automatedAccountDescription;

  bool get isHuman => this == UserType.human;

  bool get isAutomated => !isHuman;

  const UserType({
    required this.storedName,
    required this.icon,
    this.automatedAccountDescription,
  });

  static UserType fromStoredName(String? storedName) {
    if (storedName == null) return UserType.human;

    return values.firstWhereOrNull((type) => type.storedName == storedName) ??
        UserType.unknownNonHuman;
  }

  static String toStoredName(UserType type) => type.storedName;
}
