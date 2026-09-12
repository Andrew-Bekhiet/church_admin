import 'package:flutter/material.dart';

class ManageUsersListFooter extends StatelessWidget {
  final bool isLoading;

  const ManageUsersListFooter({required this.isLoading, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: isLoading
          ? const Center(child: CircularProgressIndicator())
          : null,
    );
  }
}
