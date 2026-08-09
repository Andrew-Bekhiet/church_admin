import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class PhoneNumberProperty extends StatelessWidget {
  final bool showErrorIfEmpty;
  final String propName;
  final String value;
  final void Function(String) phoneCall;
  const PhoneNumberProperty(
    this.propName,
    this.value,
    this.phoneCall, {
    this.addToContacts,
    this.showErrorIfEmpty = true,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Widget? trailing;

    if (value.isNotEmpty) {
      trailing = Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            icon: const Icon(Symbols.phone),
            tooltip: 'اجراء مكالمة',
            onPressed: () => phoneCall(value),
          ),
          if (addToContacts != null)
            IconButton(
              icon: const Icon(Symbols.person_add_alt),
              tooltip: 'اضافة الى جهات الاتصال',
              onPressed: () => addToContacts!(value),
            ),
          IconButton(
            icon: const ImageIcon(
              AssetImage('assets/whatsapp.png'),
            ),
            tooltip: 'ارسال رسالة (واتساب)',
            onPressed: () => LauncherService.I.launchWhatsappChat(
              PhoneNumberService.I.formatInternational(value),
            ),
          ),
          PopupMenuButton(
            itemBuilder: (context) => const [
              PopupMenuItem(
                value: 'SMS',
                child: Text('ارسال رسالة'),
              ),
              PopupMenuItem(
                value: 'Copy',
                child: Text('نسخ'),
              ),
            ],
            onSelected: (v) {
              if (v == 'SMS') {
                unawaited(
                  LauncherService.I.launchSMSChat(
                    PhoneNumberService.I.formatInternational(value),
                  ),
                );
              } else if (v == 'Copy') {
                unawaited(Clipboard.setData(ClipboardData(text: value)));
              }
            },
          ),
        ],
      );
    } else if (showErrorIfEmpty) {
      trailing = const Tooltip(
        message: 'بيانات غير كاملة',
        child: Icon(Symbols.warning),
      );
    } else {
      trailing = null;
    }

    return ListTile(
      title: Text(propName),
      subtitle: Text(value),
      trailing: trailing,
    );
  }

  final void Function(String)? addToContacts;
}
