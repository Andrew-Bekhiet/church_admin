import 'package:flutter/material.dart';

class CAErrorWidget extends StatelessWidget {
  final FlutterErrorDetails details;

  const CAErrorWidget({required this.details, super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.card,
      child: Center(
        child: Text(
          'حدث خطأ:\n${details.summary}',
        ),
      ),
    );
  }
}
