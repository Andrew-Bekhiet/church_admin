import 'package:church_admin/church_admin.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_ui/material_ui.dart';

class AutoAdvanceCheckboxTile extends StatelessWidget {
  final bool value;

  const AutoAdvanceCheckboxTile({required this.value, super.key});

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      key: AutoAdvanceCheckboxTileKeys.tile,
      value: value,
      contentPadding: EdgeInsets.zero,
      title: const Text('فتح المحادثة التالية تلقائيا عند الرجوع للتطبيق'),
      onChanged: (isEnabled) => context
          .read<BulkWhatsappMessageCubit>()
          .setAutoAdvance(isEnabled: isEnabled ?? false),
    );
  }
}

abstract final class AutoAdvanceCheckboxTileKeys {
  static const Key tile = ValueKey('Bulk Whatsapp Auto Advance Key');
}
