import 'package:collection/collection.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:material_ui/material_ui.dart';

enum UserType {
  human(serverName: 'human', icon: Symbols.person),
  fingerprintBot(
    serverName: 'fingerprint_bot',
    icon: Symbols.fingerprint,
    automatedAccountDescription: 'يسجّل الحضور تلقائيًا من جهاز البصمة',
  ),
  otherNonHuman(
    serverName: 'other_non_human',
    icon: Symbols.smart_toy,
    automatedAccountDescription: 'يعمل تلقائيًا ولا يستخدمه أحد الخدام',
  );

  final String serverName;
  final IconData icon;
  final String? automatedAccountDescription;

  bool get isHuman => this == UserType.human;

  const UserType({
    required this.serverName,
    required this.icon,
    this.automatedAccountDescription,
  });

  static UserType fromServerName(String? serverName) {
    if (serverName == null) return UserType.human;

    return values.firstWhereOrNull((type) => type.serverName == serverName) ??
        UserType.otherNonHuman;
  }

  static String toServerName(UserType type) => type.serverName;
}
