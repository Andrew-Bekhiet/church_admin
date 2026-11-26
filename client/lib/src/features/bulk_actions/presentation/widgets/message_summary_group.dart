import 'package:material_ui/material_ui.dart';

class MessageSummaryGroup extends StatelessWidget {
  final String label;
  final Key titleKey;
  final List<Widget> rows;
  final Widget? action;

  const MessageSummaryGroup({
    required this.label,
    required this.titleKey,
    required this.rows,
    this.action,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    if (rows.isEmpty) return const SizedBox.shrink();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsetsDirectional.only(top: 16),
          child: Row(
            spacing: 8,
            children: [
              Expanded(
                child: Text(
                  '$label (${rows.length})',
                  key: titleKey,
                  style: TextTheme.of(context).titleMedium,
                ),
              ),
              ?action,
            ],
          ),
        ),
        ...rows,
      ],
    );
  }
}
