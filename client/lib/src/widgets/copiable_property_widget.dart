import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CopiablePropertyWidget extends StatelessWidget {
  const CopiablePropertyWidget(
    this.propName,
    this.value, {
    super.key,
    this.showErrorIfEmpty = true,
    this.additionalOptions,
  });

  final String propName;
  final String? value;
  final bool showErrorIfEmpty;
  final List<Widget>? additionalOptions;

  @override
  Widget build(BuildContext context) {
    final Widget? copyOrError;
    if (value != null && value!.isNotEmpty) {
      copyOrError = IconButton(
        icon: const Icon(Symbols.content_copy),
        tooltip: 'نسخ',
        onPressed: () => Clipboard.setData(ClipboardData(text: value!)),
      );
    } else if (showErrorIfEmpty) {
      copyOrError = const Tooltip(
        message: 'بيانات غير كاملة',
        child: Icon(Symbols.warning),
      );
    } else {
      copyOrError = null;
    }

    final Widget? trailing;
    if (additionalOptions != null) {
      trailing = Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (copyOrError != null) copyOrError,
          ...additionalOptions!,
        ],
      );
    } else {
      trailing = copyOrError;
    }

    return ListTile(
      title: Text(propName),
      subtitle: value != null ? Text(value!) : null,
      trailing: trailing,
    );
  }
}

class PhoneNumberProperty extends StatelessWidget {
  const PhoneNumberProperty(
    this.propName,
    this.value,
    this.phoneCall,
    this.contactAdd, {
    super.key,
    this.showErrorIfEmpty = true,
  });

  final bool showErrorIfEmpty;
  final String propName;
  final String value;
  final void Function(String) phoneCall;
  final void Function(String) contactAdd;

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
          IconButton(
            icon: const Icon(Symbols.person_add_alt),
            tooltip: 'اضافة الى جهات الاتصال',
            onPressed: () => contactAdd(value),
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
                LauncherService.I.launchSMSChat(
                  PhoneNumberService.I.formatInternational(value),
                );
              } else if (v == 'Copy') {
                Clipboard.setData(ClipboardData(text: value));
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
