import 'package:flutter/material.dart';

/// A widget that displays a property comparison row with radio buttons for selection
class PropertyRow extends StatelessWidget {
  final String label;
  final String? existingValue;
  final String? newValue;
  final ValueNotifier<bool?> controller;

  const PropertyRow({
    super.key,
    required this.label,
    required this.existingValue,
    required this.newValue,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 100,
          child: Text(label, style: Theme.of(context).textTheme.titleSmall),
        ),
        Expanded(
          child: ValueListenableBuilder<bool?>(
            valueListenable: controller,
            builder: (context, isNew, _) {
              return RadioGroup(
                groupValue: isNew,
                onChanged: (value) => controller.value = value,
                child: Row(
                  children: [
                    Expanded(
                      child: RadioListTile<bool?>(
                        dense: true,
                        title: Text(
                          existingValue ?? '',
                          style: TextStyle(
                            color: existingValue == null ? Colors.grey : null,
                          ),
                        ),
                        value: false,
                      ),
                    ),
                    Expanded(
                      child: RadioListTile<bool?>(
                        dense: true,
                        title: Text(
                          newValue ?? '',
                          style: TextStyle(
                            color: newValue == null ? Colors.grey : null,
                          ),
                        ),
                        value: true,
                      ),
                    ),
                    if (controller is! ValueNotifier<bool>)
                      Expanded(
                        child: RadioListTile<bool?>(
                          dense: true,
                          title: Text(
                            '${newValue?.trim() ?? ''}\n${existingValue?.trim() ?? ''}'
                                .trim(),
                            style: TextStyle(
                              color: newValue == null ? Colors.grey : null,
                            ),
                          ),
                          value: null,
                        ),
                      ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
