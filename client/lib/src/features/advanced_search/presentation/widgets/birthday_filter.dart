import 'package:material_ui/material_ui.dart';
import 'package:intl/intl.dart';

class BirthdayFilter extends StatelessWidget {
  final String? value;
  final void Function(String? value) onChanged;
  const BirthdayFilter({
    required this.value,
    required this.onChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final [parsedMonth, parsedDay] = switch (value?.split('-')) {
      [final month, final day] => [int.tryParse(month), int.tryParse(day)],
      _ => [DateTime.now().month, DateTime.now().day],
    };

    return Row(
      children: [
        Expanded(
          child: DropdownButtonFormField<int>(
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            initialValue: parsedMonth,
            onChanged: (v) => _onDateChanged(v, parsedDay),
            items: List.generate(12, (i) => i + 1)
                .map(
                  (i) => DropdownMenuItem(
                    value: i,
                    child: Text(
                      DateFormat.MMMM('ar-EG').format(DateTime(0, i)),
                    ),
                  ),
                )
                .toList(),
            isExpanded: true,
          ),
        ),
        const SizedBox(width: 3),
        Expanded(
          child: DropdownButtonFormField<int?>(
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            initialValue: parsedDay,
            onChanged: (v) => _onDateChanged(parsedMonth, v),
            items: [null, ...List.generate(31, (i) => i + 1)]
                .map(
                  (i) => DropdownMenuItem(
                    value: i,
                    child: Text(i?.toString() ?? 'أي يوم'),
                  ),
                )
                .toList(),
            isExpanded: true,
          ),
        ),
      ],
    );
  }

  void _onDateChanged(int? newMonth, int? newDay) {
    onChanged(
      '${newMonth?.toString().padLeft(2, '0') ?? '%'}-${newDay?.toString().padLeft(2, '0') ?? '%'}',
    );
  }
}
