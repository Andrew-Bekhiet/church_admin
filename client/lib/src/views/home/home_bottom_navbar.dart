import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';

class HomeBottomNavBar extends StatelessWidget {
  final void Function(int) onTabChanged;
  const HomeBottomNavBar({required this.onTabChanged, super.key});

  @override
  Widget build(BuildContext context) {
    final TabController _tabController = DefaultTabController.of(context);

    return AnimatedBuilder(
      animation: _tabController.animation!,
      builder: (context, child) {
        return BottomNavigationBar(
          onTap: (v) {
            _tabController.animateTo(v);
            onTabChanged(v);
          },
          currentIndex:
              _tabController.animation?.value.round() ?? _tabController.index,
          items: const [
            BottomNavigationBarItem(
              label: 'المخدومين',
              activeIcon: Icon(Symbols.person, fill: 1),
              icon: Icon(Symbols.person),
            ),
            BottomNavigationBarItem(
              label: 'الخدمات',
              activeIcon: Icon(Symbols.volunteer_activism, fill: 1),
              icon: Icon(Symbols.volunteer_activism),
            ),
            BottomNavigationBarItem(
              label: 'المناطق',
              activeIcon: Icon(Symbols.pin_drop, fill: 1),
              icon: Icon(Symbols.pin_drop),
            ),
          ],
        );
      },
    );
  }
}
