import 'dart:math';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';

class AdminUsers extends StatelessWidget {
  const AdminUsers({
    required this.users,
    super.key,
  });

  final List<User> users;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: const BorderRadius.all(Radius.circular(16)),
      onTap: _onTap(context),
      child: GridView.builder(
        padding: const EdgeInsets.symmetric(vertical: 8),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 7,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        shrinkWrap: true,
        itemCount: min(users.length, 7),
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, i) {
          final user = users[i];

          if (users.length > 6 && i == 6) {
            return _RemainingAdmins(
              lastVisibleUser: user,
              remainingCount: users.length - 6,
            );
          }

          return IgnorePointer(
            child: ImageObjectWidget(user),
          );
        },
      ),
    );
  }

  Future<void> Function() _onTap(BuildContext context) {
    return () async {
      await Navigator.of(context).push(
        PageRouteBuilder(
          opaque: false,
          barrierDismissible: true,
          barrierColor: Colors.black45,
          allowSnapshotting: false,
          pageBuilder: (context, animation, secondaryAnimation) => Dialog(
            backgroundColor: Colors.transparent,
            surfaceTintColor: Colors.transparent,
            clipBehavior: Clip.antiAlias,
            child: const ZoomPageTransitionsBuilder().buildTransitions(
              MaterialPageRoute(
                builder: (context) => const SizedBox.shrink(),
                allowSnapshotting: false,
              ),
              context,
              animation,
              secondaryAnimation,
              DecoratedBox(
                decoration: BoxDecoration(
                  color: Theme.of(context).dialogBackgroundColor,
                ),
                child: ListView.builder(
                  shrinkWrap: true,
                  padding: const EdgeInsets.all(8),
                  itemCount: users.length,
                  itemBuilder: (context, i) => ViewableObjectWidget(
                    users[i],
                    wrapInCard: false,
                  ),
                ),
              ),
            ),
          ),
        ),
      );
    };
  }
}

class _RemainingAdmins extends StatelessWidget {
  const _RemainingAdmins({
    required this.lastVisibleUser,
    required this.remainingCount,
  });

  final User lastVisibleUser;
  final int remainingCount;

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
                '+' + remainingCount.toString(),
                style: Theme.of(context).primaryTextTheme.titleMedium,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
