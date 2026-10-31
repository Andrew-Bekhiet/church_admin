import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/services.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:material_ui/material_ui.dart';

class PhoneNumberPropertyWidget extends StatelessWidget {
  final bool showErrorIfEmpty;
  final String propName;
  final String value;
  final void Function(String) phoneCall;
  final ViewableWithID owner;
  final bool isFamilyNumber;

  final void Function(String)? addToContacts;
  const PhoneNumberPropertyWidget(
    this.propName,
    this.value,
    this.phoneCall, {
    required this.owner,
    required this.isFamilyNumber,
    this.showErrorIfEmpty = true,
    this.addToContacts,
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
            onPressed: () {
              AnalyticsService.I.track(
                WhatsappChatOpen(owner, isFamilyNumber: isFamilyNumber),
              );
              unawaited(
                LauncherService.I.launchWhatsappChat(
                  PhoneNumberService.I.formatInternational(value),
                ),
              );
            },
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
                AnalyticsService.I.track(
                  SmsChatOpen(owner, isFamilyNumber: isFamilyNumber),
                );
                unawaited(
                  LauncherService.I.launchSMSChat(
                    PhoneNumberService.I.formatInternational(value),
                  ),
                );
              } else if (v == 'Copy') {
                AnalyticsService.I.track(
                  NumberCopy(owner, isFamilyNumber: isFamilyNumber),
                );
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
}
