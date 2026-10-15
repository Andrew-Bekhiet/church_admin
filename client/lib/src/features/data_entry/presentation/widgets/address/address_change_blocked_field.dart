import 'package:flutter/material.dart';

class AddressChangeBlockedField extends StatelessWidget {
  final String? Function() validator;

  const AddressChangeBlockedField({required this.validator, super.key});

  @override
  Widget build(BuildContext context) {
    return FormField<void>(
      autovalidateMode: AutovalidateMode.always,
      validator: (_) => validator(),
      builder: (state) => switch (state.errorText) {
        final error? => Padding(
          padding: const EdgeInsetsDirectional.only(top: 8),
          child: Text(
            error,
            style: TextTheme.of(
              context,
            ).bodySmall?.copyWith(color: ColorScheme.of(context).error),
          ),
        ),
        null => const SizedBox.shrink(),
      },
    );
  }
}
