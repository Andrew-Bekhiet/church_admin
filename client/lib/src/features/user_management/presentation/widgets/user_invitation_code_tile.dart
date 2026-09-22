import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class UserInvitationCodeTile extends StatelessWidget {
  final String code;
  final String caption;
  final VoidCallback? onShare;

  const UserInvitationCodeTile({
    required this.code,
    required this.caption,
    this.onShare,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = TextTheme.of(context);
    final colorScheme = ColorScheme.of(context);

    return ListTile(
      title: Text('كود الدعوة', style: textTheme.labelMedium),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 2,
        children: [
          Text(
            code,
            textDirection: TextDirection.ltr,
            style: textTheme.headlineSmall?.copyWith(
              fontFeatures: const [FontFeature.tabularFigures()],
              letterSpacing: 2,
            ),
          ),
          Text(
            caption,
            style: textTheme.bodySmall?.copyWith(
              color: colorScheme.onSurfaceVariant,
            ),
          ),
        ],
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (onShare case final onShare?)
            IconButton(
              icon: const Icon(Symbols.share),
              tooltip: 'مشاركة',
              onPressed: onShare,
            ),
          IconButton(
            icon: const Icon(Symbols.content_copy),
            tooltip: 'نسخ',
            onPressed: () => Clipboard.setData(ClipboardData(text: code)),
          ),
        ],
      ),
    );
  }
}
