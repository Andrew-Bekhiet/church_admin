import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';

class ServiceHierarchyCard extends StatelessWidget {
  final Service service;
  final ViewableObjectWidgetConfig<Service>? config;

  const ServiceHierarchyCard({
    required this.service,
    required this.config,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ViewableObjectCard(
      service,
      title: Text(
        service.name,
        style: TextTheme.of(context).headlineMedium,
        textAlign: TextAlign.center,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
      config: config,
      size: null,
    );
  }
}
