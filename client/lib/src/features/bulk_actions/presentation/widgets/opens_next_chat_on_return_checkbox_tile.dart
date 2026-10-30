import 'package:church_admin/church_admin.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_ui/material_ui.dart';

class OpensNextChatOnReturnCheckboxTile extends StatelessWidget {
  final bool value;

  const OpensNextChatOnReturnCheckboxTile({required this.value, super.key});

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      key: OpensNextChatOnReturnCheckboxTileKeys.tile,
      value: value,
      contentPadding: EdgeInsets.zero,
      title: const Text('فتح المحادثة التالية تلقائيًا عند الرجوع للتطبيق'),
      onChanged: (isEnabled) => context
          .read<BulkWhatsappMessageCubit>()
          .setOpensNextChatOnReturn(isEnabled: isEnabled ?? false),
    );
  }
}

abstract final class OpensNextChatOnReturnCheckboxTileKeys {
  static const Key tile = ValueKey(
    'Bulk Whatsapp Opens Next Chat On Return Key',
  );
}
