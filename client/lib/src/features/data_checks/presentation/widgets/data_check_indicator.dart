import 'package:church_admin/church_admin.dart';
import 'package:material_ui/material_ui.dart';

class DataCheckIndicator extends StatelessWidget {
  static const double _emblemSize = 20;

  final DataCheck dataCheck;
  final bool canOverride;

  const DataCheckIndicator({
    required this.dataCheck,
    required this.canOverride,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      visualDensity: VisualDensity.compact,
      onPressed: () => DataCheckReportDialog.show(
        context,
        dataCheck: dataCheck,
        canOverride: canOverride,
      ),
      icon: DataCheckEmblem(dataCheck: dataCheck, size: _emblemSize),
    );
  }
}
