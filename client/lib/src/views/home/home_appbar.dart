import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Subject<String?> searchSubject;
  final Subject<ViewableObjectListType?> servicesListTypeSubject;
  final Stream<Type> bottomNavBarStream;

  const HomeAppBar({
    required this.searchSubject,
    required this.servicesListTypeSubject,
    required this.bottomNavBarStream,
    super.key,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<(bool, ViewableObjectListType?)>(
      stream: Rx.combineLatest2(
        searchSubject.map((s) => s != null),
        bottomNavBarStream.switchMap(
          (t) => t == Service
              ? servicesListTypeSubject.stream
              : Stream.value(null),
        ),
        (a, b) => (a, b),
      ),
      builder: (context, snapshot) {
        final bool isSearchActive = snapshot.data?.$1 ?? false;
        final ViewableObjectListType? listType = snapshot.data?.$2;

        return AppBar(
          actions: [
            if (!isSearchActive)
              IconButton(
                onPressed: () => searchSubject.add(''),
                icon: const Icon(Symbols.search),
              ),
            if (listType != null)
              IconButton(
                onPressed: listType == ViewableObjectListType.list
                    ? () =>
                        servicesListTypeSubject.add(ViewableObjectListType.grid)
                    : () => servicesListTypeSubject
                        .add(ViewableObjectListType.list),
                icon: Icon(
                  listType == ViewableObjectListType.list
                      ? Symbols.lists
                      : Symbols.grid_view,
                ),
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
              Image.asset(
                'assets/Logo.png',
                width: kToolbarHeight - 12,
                height: kToolbarHeight - 12,
                fit: BoxFit.scaleDown,
              ),
            ],
          ),
          titleSpacing: 0,
          title: snapshot.data?.$1 ?? false
              ? SearchField(
                  searchSink: searchSubject,
                  canHide: true,
                )
              : const Text('كنيسة السيدة العذراء مريم'),
        );
      },
    );
  }
}
