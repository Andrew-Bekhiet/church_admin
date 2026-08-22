import 'package:flutter/material.dart';

class TotalCountLabel extends StatelessWidget {
  final Stream<String?> countStream;

  const TotalCountLabel({required this.countStream, super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<String?>(
      stream: countStream,
      builder: (context, snapshot) => Text(
        snapshot.data ?? '',
        style: Theme.of(context).textTheme.titleLarge,
        textAlign: TextAlign.center,
      ),
    );
  }
}
