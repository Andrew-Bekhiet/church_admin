import 'package:flutter/material.dart';

class HomeModeSelector extends StatelessWidget {
  final void Function(BuildContext, bool) onModeChanged;

  const HomeModeSelector({required this.onModeChanged, super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);

    return Scaffold(
      body: Center(
        child: ListView(
          children: [
            InkWell(
              onTap: () => onModeChanged(context, true),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    'assets/Logo.png',
                    height: 360,
                    fit: BoxFit.scaleDown,
                  ),
                  Text(
                    'خدمة مدارس الأحد',
                    style: themeData.textTheme.headlineSmall,
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () => onModeChanged(context, false),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    'assets/church-data.png',
                    height: 360,
                    fit: BoxFit.scaleDown,
                  ),
                  Text(
                    'خدمة الافتقاد',
                    style: themeData.textTheme.headlineSmall,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
