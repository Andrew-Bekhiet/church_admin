import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';

class AdminOnServiceWidget extends StatelessWidget {
  const AdminOnServiceWidget({
    required this.serviceData,
    super.key,
    this.trailingBuilder,
    this.onTap,
  });

  final (Service, List<AdminOnData>) serviceData;
  final Widget Function(BuildContext, ViewableWithID)? trailingBuilder;
  final void Function(ViewableWithID)? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ViewableObjectWidget(
          serviceData.$1,
          forceShowSecondLine: false,
          wrapInCard: false,
          onTap: onTap,
          trailing: trailingBuilder?.call(context, serviceData.$1),
        ),
        if (serviceData.$2.any(
          (p) =>
              (p.classes.isEmpty && trailingBuilder == null) ||
              p.classes.isNotEmpty,
        ))
          const Divider(thickness: 2),
        for (final adminOnData in serviceData.$2)
          if (adminOnData.classes.isEmpty && trailingBuilder == null)
            Padding(
              padding: const EdgeInsets.only(right: 26),
              child: Card(
                elevation: 0,
                child: ListTile(
                  title: Text(adminOnData.describeServicePermission()),
                  dense: true,
                  trailing: AdminOnDataIndicator(adminOnData: adminOnData),
                ),
              ),
            )
          else
            for (final class$ in adminOnData.classes)
              Padding(
                padding: const EdgeInsets.only(right: 26),
                child: Card(
                  elevation: 0,
                  child: ViewableObjectWidget(
                    class$,
                    isDense: true,
                    forceShowSecondLine: false,
                    wrapInCard: false,
                    onTap: onTap,
                    trailing: trailingBuilder == null
                        ? AdminOnDataIndicator(adminOnData: adminOnData)
                        : trailingBuilder!(context, class$),
                  ),
                ),
              ),
      ],
    );
  }
}
