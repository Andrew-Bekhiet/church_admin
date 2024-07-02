import 'package:flutter/material.dart';

class HomeModeSelector extends StatelessWidget {
  final void Function(BuildContext, bool) onModeChanged;

  const HomeModeSelector({required this.onModeChanged, super.key});

  @override
  Widget build(BuildContext context) {
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
                    'assets/sunday-school.png',
                    height: 360,
                    fit: BoxFit.scaleDown,
                  ),
                  const Text('خدمة مدارس الأحد'),
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
                  const Text('خدمة الافتقاد'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
