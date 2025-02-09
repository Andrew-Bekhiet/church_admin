import 'package:flutter/material.dart';

class HomeModeCard extends StatelessWidget {
  const HomeModeCard({
    required this.assetName,
    required this.title,
    required this.onTap,
    super.key,
  });

  final void Function() onTap;
  final String assetName;
  final String title;

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);

    return Expanded(
      child: Card(
        child: InkWell(
          onTap: onTap,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                assetName,
                fit: BoxFit.cover,
              ),
              Expanded(
                child: Center(
                  child: Text(
                    title,
                    textAlign: TextAlign.center,
                    style: themeData.textTheme.headlineSmall?.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
