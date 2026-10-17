import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_ui/material_ui.dart';

class HomeModeSwitcher extends StatelessWidget {
  const HomeModeSwitcher({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<HomeCubit, HomeState, HomeMode>(
      selector: (state) => state.mode,
      builder: (context, mode) {
        return ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          child: GestureDetector(
            onTap: () => unawaited(context.read<HomeCubit>().switchMode()),
            child: Image.asset(
              switch (mode) {
                HomeMode.sundaySchool =>
                  'assets/images/sunday_school_services_image.png',
                HomeMode.churchData => 'assets/images/church_data.png',
              },
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
