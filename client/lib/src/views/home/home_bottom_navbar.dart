import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';

class HomeBottomNavBar extends StatelessWidget {
  final void Function(int) onTabChanged;
  final bool isSundaySchool;

  const HomeBottomNavBar({
    required this.onTabChanged,
    required this.isSundaySchool,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final TabController _tabController = DefaultTabController.of(context);

    return AnimatedBuilder(
      animation: _tabController.animation!,
      builder: (context, child) {
        return BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          onTap: (v) {
            _tabController.animateTo(v);
            onTabChanged(v);
          },
          currentIndex:
              _tabController.animation?.value.round() ?? _tabController.index,
          items: [
            const BottomNavigationBarItem(
              label: 'المناطق',
              activeIcon: Icon(Symbols.pin_drop, fill: 1),
              icon: Icon(Symbols.pin_drop),
            ),
            if (isSundaySchool)
              const BottomNavigationBarItem(
                label: 'الخدمات',
                activeIcon: Icon(Symbols.volunteer_activism, fill: 1),
                icon: Icon(Symbols.volunteer_activism),
              )
            else ...[
              const BottomNavigationBarItem(
                label: 'الشوراع',
                activeIcon: Icon(Symbols.road, fill: 1),
                icon: Icon(Symbols.road),
              ),
              const BottomNavigationBarItem(
                label: 'العائلات',
                activeIcon: Icon(Symbols.diversity_1, fill: 1),
                icon: Icon(Symbols.diversity_1),
              ),
              const BottomNavigationBarItem(
                label: 'المتاجر',
                activeIcon: Icon(Symbols.store, fill: 1),
                icon: Icon(Symbols.store),
              ),
            ],
            const BottomNavigationBarItem(
              label: 'المخدومين',
              activeIcon: Icon(Symbols.person, fill: 1),
              icon: Icon(Symbols.person),
            ),
          ],
        );
      },
    );
  }
}
