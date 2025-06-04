import 'package:church_admin/church_admin.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

final class HomeState extends Equatable {
  final HomeMode mode;
  final List<HomePageConfig> pages;
  final HomeDailyData? dailyData;
  final bool showSnowflakeAnimation;
  final PageController pageController;
  final double currentPage;

  const HomeState({
    required this.pageController,
    required this.pages,
    this.mode = HomeMode.sundaySchool,
    this.dailyData,
    this.showSnowflakeAnimation = false,
    this.currentPage = 0,
  });

  @override
  List<Object?> get props => [
        mode,
        currentPage,
        ...pages,
        dailyData,
        showSnowflakeAnimation,
        pageController,
      ];

  HomeState copyWith({
    HomeMode? mode,
    double? currentPage,
    List<HomePageConfig>? pages,
    HomeDailyData? dailyData,
    bool? showSnowflakeAnimation,
    PageController? pageController,
  }) {
    return HomeState(
      mode: mode ?? this.mode,
      currentPage: currentPage ?? this.currentPage,
      pages: pages ?? this.pages,
      dailyData: dailyData ?? this.dailyData,
      showSnowflakeAnimation:
          showSnowflakeAnimation ?? this.showSnowflakeAnimation,
      pageController: pageController ?? this.pageController,
    );
  }
}
