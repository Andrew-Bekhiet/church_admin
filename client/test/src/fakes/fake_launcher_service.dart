import 'dart:async';

import 'package:church_admin/church_admin.dart';

class OpenedWhatsappChat {
  final String phone;
  final String? text;

  const OpenedWhatsappChat(this.phone, this.text);

  @override
  bool operator ==(Object other) =>
      other is OpenedWhatsappChat && other.phone == phone && other.text == text;

  @override
  int get hashCode => Object.hash(phone, text);

  @override
  String toString() => 'OpenedWhatsappChat($phone, $text)';
}

class FakeLauncherService extends LauncherService {
  final List<OpenedWhatsappChat> openedWhatsappChats = [];

  bool canOpenWhatsapp = true;
  Completer<void>? whatsappGate;

  @override
  Future<bool> launchCall(String fomattedPhone) async => true;

  @override
  Future<bool> launchWhatsappChat(String fomattedPhone, {String? text}) async {
    if (!canOpenWhatsapp) return false;

    openedWhatsappChats.add(OpenedWhatsappChat(fomattedPhone, text));
    await whatsappGate?.future;

    return true;
  }
}
