import 'package:church_admin/church_admin.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:material_ui/material_ui.dart';

class HomeListHeader extends StatelessWidget {
  final int? total;
  final String label;
  final ViewableObjectListType? listType;
  final VoidCallback? onToggleListType;

  const HomeListHeader({
    required this.total,
    required this.label,
    required this.listType,
    required this.onToggleListType,
    super.key,
  });

  static ViewableObjectListType segmentOf(ViewableObjectListType listType) {
    return switch (listType) {
      ViewableObjectListType.list => ViewableObjectListType.list,
      ViewableObjectListType.grid ||
      ViewableObjectListType.grid3 => ViewableObjectListType.grid,
    };
  }

  @override
  Widget build(BuildContext context) {
    final listType = this.listType;

    if (total == null && listType == null) return const SizedBox.shrink();

    return Padding(
      padding: const EdgeInsetsDirectional.symmetric(
        horizontal: 16,
        vertical: 4,
      ),
      child: Row(
        children: [
          if (total case final total?)
            Expanded(
              child: Text(
                '$total $label',
                style: TextTheme.of(context).titleSmall,
              ),
            )
          else
            const Spacer(),
          if (listType != null)
            SegmentedButton<ViewableObjectListType>(
              showSelectedIcon: false,
              style: SegmentedButton.styleFrom(
                visualDensity: VisualDensity.compact,
              ),
              segments: const [
                ButtonSegment(
                  value: ViewableObjectListType.list,
                  icon: Icon(Symbols.view_list),
                  tooltip: 'قائمة',
                ),
                ButtonSegment(
                  value: ViewableObjectListType.grid,
                  icon: Icon(Symbols.grid_view),
                  tooltip: 'شبكة',
                ),
              ],
              selected: {segmentOf(listType)},
              onSelectionChanged: (_) => onToggleListType?.call(),
            ),
        ],
      ),
    );
  }
}
