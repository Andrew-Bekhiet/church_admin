import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';

class MembershipsSummary extends StatelessWidget {
  final List<Service> services;

  const MembershipsSummary({required this.services, super.key});

  @override
  Widget build(BuildContext context) {
    if (services.isEmpty) return const Text('لا يوجد خدمات أو مجموعات');

    return ExcludeFocus(
      child: IgnorePointer(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            for (final service in services) ...[
              ViewableObjectWidget(
                service,
                isDense: true,
                forceShowSecondLine: false,
              ),
              for (final group in service.groups ?? <Group>[])
                Padding(
                  padding: const EdgeInsetsDirectional.only(start: 26),
                  child: Card(
                    elevation: 0,
                    child: ViewableObjectWidget(
                      group,
                      isDense: true,
                      forceShowSecondLine: false,
                      wrapInCard: false,
                    ),
                  ),
                ),
            ],
          ],
        ),
      ),
    );
  }
}
