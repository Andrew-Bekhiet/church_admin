import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';

class ServicesHierarchyList extends StatefulWidget {
  final bool showClasses;
  final bool showGroups;

  final ServiceTrailingBuilder? serviceTrailingBuilder;

  final StudyYearBuilder? studyYearBuilder;

  final GroupBuilder? groupBuilder;

  final ClassBuilder? classBuilder;

  final ViewableObjectListController<Service> listController;
  final ViewableObjectListType? type;

  const ServicesHierarchyList({
    required this.listController,
    this.showClasses = true,
    this.showGroups = true,
    this.serviceTrailingBuilder,
    this.studyYearBuilder,
    this.classBuilder,
    this.groupBuilder,
    this.type,
    super.key,
  }) : assert(showClasses || showGroups);

  @override
  State<ServicesHierarchyList> createState() => _ServicesHierarchyListState();
}

class _ServicesHierarchyListState extends State<ServicesHierarchyList>
    with TickerProviderStateMixin {
  final _animationControllers = <Object, AnimationController>{};

  @override
  Widget build(BuildContext context) {
    final listType = widget.type ?? ViewableObjectListType.list;

    return ViewableObjectList(
      type: listType,
      addSeparator: false,
      itemsExpandable: true,
      objectsController: widget.listController,
      itemBuilder:
          listType == ViewableObjectListType.grid ||
              listType == ViewableObjectListType.grid3
          ? (
              BuildContext context,
              Service service,
              ViewableObjectWidgetConfig<Service>? config,
            ) => ServiceHierarchyCard(service: service, config: config)
          : (
              BuildContext context,
              Service service,
              ViewableObjectWidgetConfig<Service>? config,
            ) => ServiceHierarchyTile(
              service: service,
              config: config,
              controllers: _animationControllers,
              vsync: this,
              showClasses: widget.showClasses,
              showGroups: widget.showGroups,
              serviceTrailingBuilder: widget.serviceTrailingBuilder,
              classBuilder: widget.classBuilder,
              studyYearBuilder: widget.studyYearBuilder,
              groupBuilder: widget.groupBuilder,
            ),
    );
  }

  @override
  void dispose() {
    for (final c in _animationControllers.values) {
      c.dispose();
    }

    super.dispose();
  }
}

typedef ServiceTrailingBuilder =
    Widget Function(
      BuildContext,
      Service, {
      void Function(Service)? onLongPress,
      void Function(Service)? onTap,
      Widget? trailing,
    });

typedef StudyYearBuilder =
    Widget Function(
      BuildContext, {
      required Service service,
      required StudyYear studyYear,
    });

typedef GroupBuilder =
    Widget Function(
      BuildContext, {
      required Service service,
      required Group group,
    });

typedef ClassBuilder =
    Widget Function(
      BuildContext, {
      required Service service,
      required Class $class,
      required StudyYear studyYear,
    });
