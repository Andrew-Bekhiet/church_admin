import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class HomeBottomNavBar extends StatelessWidget {
  final HomeController homeController;

  const HomeBottomNavBar({
    required this.homeController,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<HomeMode>(
      initialData: homeController.currentMode,
      stream: homeController.modeStream,
      builder: (context, modeSnapshot) {
        final bool isSundaySchool = modeSnapshot.data == HomeMode.sundaySchool;
        final Animation<double>? tabAnimation = homeController.tabAnimation;

        return AnimatedBuilder(
          animation: tabAnimation!,
          builder: (context, child) {
            return BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              onTap: homeController.onTabIndexChanged,
              currentIndex: tabAnimation.value.round(),
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
                BottomNavigationBarItem(
                  label: isSundaySchool ? 'المخدومين' : 'الأفراد',
                  activeIcon: const Icon(Symbols.person, fill: 1),
                  icon: const Icon(Symbols.person),
                ),
              ],
            );
          },
        );
      },
    );
  }
}
