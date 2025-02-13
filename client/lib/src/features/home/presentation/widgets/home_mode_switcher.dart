import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';

class HomeModeSwitcher extends StatelessWidget {
  final HomeController homeController;

  const HomeModeSwitcher({required this.homeController, super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<HomeMode>(
      stream: homeController.modeStream,
      builder: (context, modeSnapshot) {
        if (modeSnapshot.data == null ||
            modeSnapshot.data == HomeMode.unspecified) {
          return const SizedBox.shrink();
        }

        return ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          child: GestureDetector(
            onTap: homeController.switchHomeMode,
            child: Image.asset(
              modeSnapshot.data == HomeMode.sundaySchool
                  ? 'assets/images/sunday_school_services_image.png'
                  : 'assets/images/church_data.png',
              width: kToolbarHeight - 12,
              height: kToolbarHeight - 12,
              fit: BoxFit.scaleDown,
            ),
          ),
        );
      },
    );
  }
}
