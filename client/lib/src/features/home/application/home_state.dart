import 'package:church_admin/church_admin.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

final class HomeState extends Equatable {
  final HomeMode mode;
  final List<HomeTab> tabs;
  final int currentTabIndex;
  final Map<HomeTab, ViewableObjectListType> listTypes;
  final HomeDailyData? dailyData;
  final HomeBirthdays? birthdays;
  final int? currentTabTotal;
  final HomeHero hero;
  final bool canManageUsers;
  final User? account;

  HomeTab get currentTab => tabs[currentTabIndex];

  @override
  List<Object?> get props => [
    mode,
    tabs,
    currentTabIndex,
    listTypes,
    dailyData,
    birthdays,
    currentTabTotal,
    hero,
    canManageUsers,
    account,
  ];

  const HomeState({
    required this.mode,
    required this.tabs,
    required this.currentTabIndex,
    required this.listTypes,
    required this.hero,
    this.canManageUsers = false,
    this.dailyData,
    this.birthdays,
    this.currentTabTotal,
    this.account,
  });

  ViewableObjectListType? listTypeOf(HomeTab tab) => listTypes[tab];

  HomeState copyWith({
    HomeMode? mode,
    List<HomeTab>? tabs,
    int? currentTabIndex,
    Map<HomeTab, ViewableObjectListType>? listTypes,
    HomeDailyData? dailyData,
    HomeBirthdays? birthdays,
    ValueGetter<int?>? currentTabTotal,
    bool? canManageUsers,
    ValueGetter<User?>? account,
  }) {
    return HomeState(
      mode: mode ?? this.mode,
      tabs: tabs ?? this.tabs,
      currentTabIndex: currentTabIndex ?? this.currentTabIndex,
      listTypes: listTypes ?? this.listTypes,
      dailyData: dailyData ?? this.dailyData,
      birthdays: birthdays ?? this.birthdays,
      currentTabTotal: currentTabTotal == null
          ? this.currentTabTotal
          : currentTabTotal(),
      hero: hero,
      canManageUsers: canManageUsers ?? this.canManageUsers,
      account: account == null ? this.account : account(),
    );
  }
}
