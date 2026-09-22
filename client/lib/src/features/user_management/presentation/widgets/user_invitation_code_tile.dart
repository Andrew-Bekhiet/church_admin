import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class UserInvitationCodeTile extends StatelessWidget {
  final String? code;
  final String caption;
  final VoidCallback? onTap;

  const UserInvitationCodeTile({
    required this.code,
    required this.caption,
    this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = TextTheme.of(context);

    return ListTile(
      title: const Text('كود الدعوة'),
      subtitle: Row(
        children: [
          Expanded(child: Text(code ?? 'يتم إنشاؤه عند الحفظ')),
          Text(caption, style: textTheme.labelSmall),
        ],
      ),
      trailing: switch (code) {
        final code? => IconButton(
          icon: const Icon(Symbols.content_copy),
          tooltip: 'نسخ',
          onPressed: () => Clipboard.setData(ClipboardData(text: code)),
        ),
        null => null,
      },
      onTap: onTap,
    );
  }
}
