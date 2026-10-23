import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/services.dart';
import 'package:material_ui/material_ui.dart';

class MapsLinkDialog extends StatefulWidget {
  final ValueChanged<LocationLinkInputKind>? onClipboardLinkShow;

  const MapsLinkDialog({this.onClipboardLinkShow, super.key});

  @override
  State<MapsLinkDialog> createState() => _MapsLinkDialogState();
}

abstract final class MapsLinkDialogKeys {
  static const linkField = Key('MapsLinkDialog.linkField');
  static const submit = Key('MapsLinkDialog.submit');
}

class MapsLinkDialogResult {
  final String link;
  final bool isPrefilledFromClipboard;

  const MapsLinkDialogResult({
    required this.link,
    required this.isPrefilledFromClipboard,
  });
}

class _MapsLinkDialogState extends State<MapsLinkDialog> {
  final _controller = TextEditingController();
  bool _pastedFromClipboard = false;

  @override
  void initState() {
    super.initState();
    unawaited(_maybePasteLinkFromClipboard());
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('تحديد الموقع من رابط خرائط'),
      content: TextField(
        key: MapsLinkDialogKeys.linkField,
        autofocus: true,
        autofillHints: const [AutofillHints.url],
        keyboardType: TextInputType.url,
        textInputAction: TextInputAction.done,
        controller: _controller,
        onChanged: (_) {
          if (!_pastedFromClipboard) return;

          setState(() => _pastedFromClipboard = false);
        },
        onSubmitted: (_) => _submit(),
        decoration: InputDecoration(
          hintText: 'رابط خرائط أو Plus Code',
          helperText: _pastedFromClipboard
              ? 'تم لصق الرابط من الحافظة، يمكنك تغييره'
              : null,
          helperMaxLines: 2,
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('إلغاء'),
        ),
        FilledButton(
          key: MapsLinkDialogKeys.submit,
          onPressed: _submit,
          child: const Text('تحديد الموقع'),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _submit() => Navigator.of(context).pop(
    MapsLinkDialogResult(
      link: _controller.text,
      isPrefilledFromClipboard: _pastedFromClipboard,
    ),
  );

  Future<void> _maybePasteLinkFromClipboard() async {
    if (!await Clipboard.hasStrings()) return;

    final text = (await Clipboard.getData(Clipboard.kTextPlain))?.text?.trim();

    if (!mounted || _controller.text.isNotEmpty || text == null) return;
    final uri = Uri.tryParse(text);
    if (uri == null || !LocationParsingService.I.isSupportedLocationUri(uri)) {
      return;
    }

    widget.onClipboardLinkShow?.call(LocationLinkInputKind.of(text));
    setState(() {
      _pastedFromClipboard = true;
      _controller.value = TextEditingValue(
        text: text,
        selection: TextSelection(baseOffset: 0, extentOffset: text.length),
      );
    });
  }
}
