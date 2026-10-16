import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';

class AdminUsersRemainingAdmins extends StatelessWidget {
  final User lastVisibleUser;
  final int remainingCount;
  const AdminUsersRemainingAdmins({
    required this.lastVisibleUser,
    required this.remainingCount,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: ClipOval(
        child: Stack(
          fit: StackFit.expand,
          children: [
            DecoratedBox(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Theme.of(context).brightness == Brightness.light
                    ? Colors.black38
                    : Colors.black54,
              ),
              child: Opacity(
                opacity: 0.55,
                child: ImageObjectWidget(lastVisibleUser),
              ),
            ),
            Center(
              child: Text(
                '+$remainingCount',
                style: Theme.of(context).primaryTextTheme.titleMedium,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
