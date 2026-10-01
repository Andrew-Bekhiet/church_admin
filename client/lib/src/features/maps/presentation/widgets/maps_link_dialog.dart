import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MapsLinkDialog extends StatefulWidget {
  const MapsLinkDialog({super.key});

  @override
  State<MapsLinkDialog> createState() => _MapsLinkDialogState();
}

abstract final class MapsLinkDialogKeys {
  static const linkField = Key('MapsLinkDialog.linkField');
  static const submit = Key('MapsLinkDialog.submit');
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
      title: const Text('تحديد الموقع من لينك Google Maps'),
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
        onSubmitted: Navigator.of(context).pop,
        decoration: InputDecoration(
          hintText: 'https://maps.app.goo.gl/...',
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
          onPressed: () => Navigator.of(context).pop(_controller.text),
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

  Future<void> _maybePasteLinkFromClipboard() async {
    if (!await Clipboard.hasStrings()) return;

    final text = (await Clipboard.getData(Clipboard.kTextPlain))?.text?.trim();

    if (!mounted || _controller.text.isNotEmpty || text == null) return;
    final uri = Uri.tryParse(text);
    if (uri == null || !LocationParsingService.I.isSupportedLocationUri(uri)) {
      return;
    }

    setState(() {
      _pastedFromClipboard = true;
      _controller.value = TextEditingValue(
        text: text,
        selection: TextSelection(baseOffset: 0, extentOffset: text.length),
      );
    });
  }
}
