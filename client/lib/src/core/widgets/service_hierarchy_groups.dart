import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';

class ServiceHierarchyGroups extends StatelessWidget {
  final Service service;
  final GroupBuilder? groupBuilder;
  final double animationValue;

  const ServiceHierarchyGroups({
    required this.animationValue,
    required this.service,
    this.groupBuilder,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        for (final g in service.groups ?? <Group>[])
          Padding(
            padding: EdgeInsets.only(right: animationValue * 20),
            child:
                groupBuilder?.call(context, group: g, service: service) ??
                ViewableObjectWidget(
                  g,
                  photo: ImageObjectWidget(
                    g,
                    circleCrop: false,
                  ),
                  forceShowSecondLine: false,
                  wrapInCard: false,
                ),
          ),
      ],
    );
  }
}
