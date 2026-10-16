import 'package:church_admin/church_admin.dart';
import 'package:material_ui/material_ui.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class DataCheckDetailRow extends StatelessWidget {
  static Key keyFor(DataCheckDetail detail) => ObjectKey(detail);

  final DataCheckDetail detail;

  DataCheckDetailRow({required this.detail}) : super(key: keyFor(detail));

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 12,
      children: [
        Icon(
          detail.passed ? Symbols.check_circle : Symbols.cancel,
          semanticLabel: detail.passed ? 'اجتاز الفحص' : 'لم يجتز الفحص',
          fill: 1,
          color: detail.passed
              ? DataCheckColors.of(context).complete
              : ColorScheme.of(context).error,
        ),
        Expanded(child: Text(detail.check.label)),
      ],
    );
  }
}
