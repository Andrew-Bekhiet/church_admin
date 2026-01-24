import 'package:church_admin/church_admin.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class HomePageConfig<T extends Viewable> extends Equatable {
  final String label;
  final IconData pageIcon;
  final Widget? fabIcon;
  final String? fabOnTapLocation;
  final ViewableObjectListType? listType;
  final ViewableObjectListController<T> Function()? objectsController;

  const HomePageConfig({
    required this.label,
    required this.pageIcon,
    this.objectsController,
    this.fabIcon,
    this.fabOnTapLocation,
    this.listType,
  });

  Type get type => T;

  @override
  List<Object?> get props => [
    label,
    pageIcon,
    fabIcon,
    fabOnTapLocation,
    listType,
    type,
  ];

  HomePageConfig<T> copyWith({
    String? label,
    IconData? pageIcon,
    Widget? fabIcon,
    String? fabOnTapLocation,
    ViewableObjectListType? listType,
    ViewableObjectListController<T> Function()? objectsController,
  }) {
    return HomePageConfig<T>(
      label: label ?? this.label,
      pageIcon: pageIcon ?? this.pageIcon,
      fabIcon: fabIcon ?? this.fabIcon,
      fabOnTapLocation: fabOnTapLocation ?? this.fabOnTapLocation,
      listType: listType ?? this.listType,
      objectsController: objectsController ?? this.objectsController,
    );
  }
}
