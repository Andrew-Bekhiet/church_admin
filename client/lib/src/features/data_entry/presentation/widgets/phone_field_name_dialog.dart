import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';

class PhoneFieldNameDialog extends StatefulWidget {
  final bool canDelete;
  final String? initialName;

  const PhoneFieldNameDialog({
    required this.canDelete,
    required this.initialName,
    super.key,
  });

  @override
  State<PhoneFieldNameDialog> createState() => _PhoneFieldNameDialogState();
}

class _PhoneFieldNameDialogState extends State<PhoneFieldNameDialog> {
  late final TextEditingController _name;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _name = TextEditingController(text: widget.initialName);
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('اسم الهاتف'),
      content: Form(
        key: _formKey,
        child: TextFormField(
          controller: _name,
          decoration: const InputDecoration(hintText: 'مثال: رقم المنزل'),
          validator: (value) => value == null || value.isEmpty
              ? 'برجاء ادخال اسم رقم الهاتف'
              : PhoneNumberService.I.validate(value)
              ? 'لا يجب ادخال رقم الهاتف هنا'
              : null,
        ),
      ),
      actions: [
        if (widget.canDelete)
          TextButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: const Text('حذف'),
          ),
        OutlinedButton(
          onPressed: () => _formKey.currentState!.validate()
              ? Navigator.of(context).pop(_name.text)
              : null,
          child: const Text('حفظ'),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _name.dispose();
    super.dispose();
  }
}
