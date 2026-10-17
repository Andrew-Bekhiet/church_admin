import 'package:material_ui/material_ui.dart';

class HomeSectionHeader extends StatelessWidget {
  final String title;

  const HomeSectionHeader({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(start: 4, top: 12, bottom: 4),
      child: Text(title, style: TextTheme.of(context).titleMedium),
    );
  }
}
