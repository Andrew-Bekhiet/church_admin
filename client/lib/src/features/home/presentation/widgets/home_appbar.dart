import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:rxdart/rxdart.dart';

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
    return StreamBuilder<ViewableObjectListType?>(
      stream: homeController.tabTypeSubject.switchMap(
        (t) => t == Service
            ? homeController.servicesListTypeSubject.stream
            : Stream.value(null),
      ),
      builder: (context, snapshot) {
        final ViewableObjectListType? listType = snapshot.data;

        return AppBar(
          actions: [
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
              HomeModeSwitcher(homeController: homeController),
            ],
          ),
          titleSpacing: 0,
          title: InkWell(
            onTap: () => onSearch(context),
            child: const SizedBox(
              height: kToolbarHeight,
              child: Row(
                children: [
                  SizedBox(width: 8),
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text('بحث ...'),
                    ),
                  ),
                  Icon(Symbols.search),
                  SizedBox(width: 8),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  void onSearch(BuildContext context) {
    showSearch(
      context: context,
      delegate: HomeSearchDelegate(DatabaseService.I.home),
    );
  }
}
