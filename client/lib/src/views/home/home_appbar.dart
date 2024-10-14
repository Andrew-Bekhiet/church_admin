import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

import 'home_controller.dart';
import 'home_mode.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  final HomeController homeController;

  const HomeAppBar({
    required this.homeController,
    super.key,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Rx.combineLatest2<bool, ViewableObjectListType?,
          ({bool isSearchActive, ViewableObjectListType? listType})>(
        homeController.searchSubject.map((s) => s != null),
        homeController.tabTypeSubject.switchMap(
          (t) => t == Service
              ? homeController.servicesListTypeSubject.stream
              : Stream.value(null),
        ),
        (a, b) => (isSearchActive: a, listType: b),
      ),
      builder: (context, snapshot) {
        final bool isSearchActive = snapshot.data?.isSearchActive ?? false;
        final ViewableObjectListType? listType = snapshot.data?.listType;

        return AppBar(
          actions: [
            if (!isSearchActive)
              IconButton(
                onPressed: () => homeController.searchSubject.add(''),
                icon: const Icon(Symbols.search),
              ),
            if (listType != null)
              IconButton(
                onPressed: listType == ViewableObjectListType.list
                    ? () => homeController.servicesListTypeSubject
                        .add(ViewableObjectListType.grid)
                    : () => homeController.servicesListTypeSubject
                        .add(ViewableObjectListType.list),
                icon: const Icon(Symbols.lists),
              ),
          ],
          leadingWidth: kToolbarHeight * 2 - 12,
          leading: Row(
            children: [
              Builder(
                builder: (context) => IconButton(
                  icon: const Icon(Symbols.menu),
                  onPressed: () => Scaffold.of(context).openDrawer(),
                ),
              ),
              _HomeModeSwitcher(homeController: homeController),
            ],
          ),
          titleSpacing: 0,
          title: isSearchActive
              ? SearchField(
                  searchSink: homeController.searchSubject,
                  canHide: true,
                )
              : InkWell(
                  onTap: () => homeController.searchSubject.add(''),
                  child: ConstrainedBox(
                    constraints: BoxConstraints.tightFor(
                      width: MediaQuery.sizeOf(context).width,
                      height: kToolbarHeight,
                    ),
                    child: const Center(child: Text('بحث...')),
                  ),
                ),
        );
      },
    );
  }
}

class _HomeModeSwitcher extends StatelessWidget {
  final HomeController homeController;

  const _HomeModeSwitcher({required this.homeController});

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
                  ? 'assets/Logo.png'
                  : 'assets/church-data.png',
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
