// import 'package:church_admin/church_admin.dart';
// import 'package:flutter/material.dart';
// import 'package:material_symbols_icons/material_symbols_icons.dart';

// class HomeBottomNavBar extends StatelessWidget {
//   final HomeController homeController;

//   const HomeBottomNavBar({
//     required this.homeController,
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return StreamBuilder<HomeMode>(
//       initialData: homeController.currentMode,
//       stream: homeController.modeStream,
//       builder: (context, modeSnapshot) {
//         final isSundaySchool = modeSnapshot.data == HomeMode.sundaySchool;
//         final Animation<double>? tabAnimation = homeController.tabAnimation;

//         return AnimatedBuilder(
//           animation: tabAnimation!,
//           builder: (context, child) {
//             return BottomNavigationBar(
//               type: BottomNavigationBarType.fixed,
//               onTap: homeController.onTabIndexChanged,
//               currentIndex: tabAnimation.value.round(),
//               items: [
//                 if (isSundaySchool)
//                   const BottomNavigationBarItem(
//                     label: 'الخدمات',
//                     activeIcon: Icon(Symbols.volunteer_activism, fill: 1),
//                     icon: Icon(Symbols.volunteer_activism),
//                   )
//                 else ...[
//                   const BottomNavigationBarItem(
//                     label: 'المناطق',
//                     activeIcon: Icon(Symbols.pin_drop, fill: 1),
//                     icon: Icon(Symbols.pin_drop),
//                   ),
//                   const BottomNavigationBarItem(
//                     label: 'الشوراع',
//                     activeIcon: Icon(Symbols.road, fill: 1),
//                     icon: Icon(Symbols.road),
//                   ),
//                   const BottomNavigationBarItem(
//                     label: 'العائلات',
//                     activeIcon: Icon(Symbols.diversity_1, fill: 1),
//                     icon: Icon(Symbols.diversity_1),
//                   ),
//                   const BottomNavigationBarItem(
//                     label: 'المتاجر',
//                     activeIcon: Icon(Symbols.store, fill: 1),
//                     icon: Icon(Symbols.store),
//                   ),
//                 ],
//                 BottomNavigationBarItem(
//                   label: isSundaySchool ? 'المخدومين' : 'الأفراد',
//                   activeIcon: const Icon(Symbols.person, fill: 1),
//                   icon: const Icon(Symbols.person),
//                 ),
//               ],
//             );
//           },
//         );
//       },
//     );
//   }
// }
import 'package:church_admin/church_admin.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class HomeBottomNavBar extends StatelessWidget {
  final HomeController homeController;

  const HomeBottomNavBar({required this.homeController, super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<HomeMode>(
      initialData: homeController.currentMode,
      stream: homeController.modeStream,
      builder: (context, modeSnapshot) {
        final isSundaySchool = modeSnapshot.data == HomeMode.sundaySchool;
        final isChurchData = modeSnapshot.data == HomeMode.churchData;
        final tabController = homeController.tabController;

        final List<Map<String, dynamic>> navItems = isChurchData
            ? [
                {
                  'label': 'المناطق',
                  'icon': Symbols.pin_drop,
                  'key': 'areas',
                },
                {
                  'label': 'الشوارع',
                  'icon': Symbols.road,
                  'key': 'streets',
                },
                {
                  'label': 'العائلات',
                  'icon': Symbols.diversity_1,
                  'key': 'families',
                },
                {
                  'label': 'المتاجر',
                  'icon': Symbols.store,
                  'key': 'stores',
                },
                {
                  'label': 'الاشخاص',
                  'icon': Symbols.person,
                  'key': 'people',
                },
              ]
            : [
                {
                  'label': 'الخدمات',
                  'icon': Symbols.volunteer_activism,
                  'key': 'services',
                },
                {
                  'label': 'المخدومين',
                  'icon': Symbols.person,
                  'key': 'servants',
                },
                // {
                //   'label': 'الرئيسية',
                //   'icon': Symbols.home,
                //   'key': 'servants',
                // },
              ];

        return CurvedNavigationBar(
          animationCurve: Curves.easeInOutCirc,
          height: 60,
          key: ValueKey(isSundaySchool),
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          color: Theme.of(context).colorScheme.primaryContainer,
          buttonBackgroundColor: Theme.of(context).colorScheme.primaryContainer,
          onTap: homeController.onTabIndexChanged,
          index: tabController?.index ?? 0,
          items: navItems
              .map(
                (item) => BottomNavigationBarItemWidget(
                  key: ValueKey(item['key']),
                  label: item['label'],
                  icon: Icon(
                    item['icon'],
                  ),
                  activeIcon: Icon(
                    item['icon'],
                    fill: 1,
                    color: Theme.of(context).colorScheme.onPrimaryContainer,
                  ),
                ),
              )
              .toList(),
        );
      },
    );
  }
}

class BottomNavigationBarItemWidget extends StatelessWidget {
  final Widget icon;
  final String? label;
  final Widget? activeIcon;
  // final String? tooltip;

  const BottomNavigationBarItemWidget({
    super.key,
    required this.icon,
    this.label,
    this.activeIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        activeIcon ?? icon,
        if (label != null)
          Text(
            label!,
            style: Theme.of(context).textTheme.labelMedium?.copyWith(
                  color: Theme.of(context).colorScheme.onPrimaryContainer,
                ),
          ),
      ],
    );
  }
}
