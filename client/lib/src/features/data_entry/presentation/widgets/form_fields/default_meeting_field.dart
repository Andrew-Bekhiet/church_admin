import 'package:flutter/material.dart';

class DefaultMeetingField extends StatefulWidget {
  final TextEditingController parentNameController;
  final ValueChanged<String?> onChanged;

  const DefaultMeetingField({
    required this.parentNameController,
    required this.onChanged,
    super.key,
  });

  @override
  State<DefaultMeetingField> createState() => _DefaultMeetingFieldState();
}

class _DefaultMeetingFieldState extends State<DefaultMeetingField> {
  final TextEditingController _nameController = TextEditingController();

  bool _enabled = true;
  bool _nameEditedByUser = false;

  @override
  void initState() {
    super.initState();
    _nameController.text = _meetingNameFor(widget.parentNameController.text);
    widget.parentNameController.addListener(_maybeSyncMeetingName);
    _onChanged();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        CheckboxListTile(
          contentPadding: EdgeInsets.zero,
          title: const Text('إنشاء اجتماع افتراضي'),
          value: _enabled,
          onChanged: _onToggled,
        ),
        if (_enabled)
          TextFormField(
            controller: _nameController,
            decoration: const InputDecoration(labelText: 'اسم الاجتماع'),
            textInputAction: TextInputAction.next,
            onChanged: _onNameChanged,
            validator: (value) => (value?.trim().isEmpty ?? true)
                ? 'برجاء إدخال اسم الاجتماع'
                : null,
          ),
      ],
    );
  }

  void _maybeSyncMeetingName() {
    if (_nameEditedByUser) return;

    final derivedName = _meetingNameFor(widget.parentNameController.text);
    if (derivedName == _nameController.text) return;

    _nameController.text = derivedName;
    _onChanged();
  }

  void _onNameChanged(String value) {
    _nameEditedByUser = true;
    _onChanged();
  }

  void _onToggled(bool? value) {
    setState(() => _enabled = value ?? false);
    _onChanged();
  }

  void _onChanged() => widget.onChanged(
    _enabled ? _nameController.text.trim() : null,
  );

  String _meetingNameFor(String parentName) {
    const servicePrefix = 'خدمة';
    const meetingWord = 'اجتماع';

    final trimmedParentName = parentName.trim();

    return trimmedParentName.replaceFirst(servicePrefix, meetingWord);
  }

  @override
  void dispose() {
    widget.parentNameController.removeListener(_maybeSyncMeetingName);
    _nameController.dispose();
    super.dispose();
  }
}
