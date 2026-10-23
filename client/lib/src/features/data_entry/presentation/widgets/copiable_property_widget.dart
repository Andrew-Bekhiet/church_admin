import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/services.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:material_ui/material_ui.dart';

class CopiablePropertyWidget extends StatelessWidget {
  final String propName;
  final String? value;
  final bool showErrorIfEmpty;
  final List<Widget>? additionalOptions;
  final CopiedEntityProperty? copiedProperty;
  const CopiablePropertyWidget(
    this.propName,
    this.value, {
    this.showErrorIfEmpty = true,
    this.additionalOptions,
    this.copiedProperty,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Widget? copyOrError;
    if (value != null && value!.isNotEmpty) {
      copyOrError = IconButton(
        icon: const Icon(Symbols.content_copy),
        tooltip: 'نسخ',
        onPressed: () {
          if (copiedProperty case final property?) {
            AnalyticsService.I.track(EntityPropertyCopy(property));
          }
          unawaited(Clipboard.setData(ClipboardData(text: value!)));
        },
      );
    } else if (showErrorIfEmpty) {
      copyOrError = const Tooltip(
        message: 'بيانات غير كاملة',
        child: Icon(Symbols.warning),
      );
    } else {
      copyOrError = null;
    }

    final Widget? trailing = additionalOptions != null
        ? Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              ...additionalOptions!,
              ?copyOrError,
            ],
          )
        : copyOrError;

    return ListTile(
      title: Text(propName),
      subtitle: value != null ? Text(value!) : null,
      trailing: trailing,
    );
  }
}
