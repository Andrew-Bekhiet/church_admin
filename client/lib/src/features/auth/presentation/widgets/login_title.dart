import 'package:flutter/material.dart';

class LoginTitle extends StatelessWidget {
  const LoginTitle();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SafeArea(
      child: Container(
        margin: const EdgeInsets.all(16),
        child: Center(
          child: Text(
            'كنيسة السيدة العذراء مريم',
            style: theme.textTheme.displayMedium?.copyWith(
              color: theme.textTheme.displayMedium?.color?.withValues(
                alpha: 1,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
