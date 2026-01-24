import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeModeSwitcher extends StatelessWidget {
  final HomeBloc homeBloc;

  const HomeModeSwitcher({required this.homeBloc, super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<HomeBloc, HomeState, HomeMode>(
      bloc: homeBloc,
      selector: (state) => state.mode,
      builder: (context, mode) {
        return ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          child: GestureDetector(
            onTap: () => homeBloc.add(const HomeSwitchMode()),
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
