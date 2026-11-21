import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/features/user_management/presentation/widgets/user_account_status_indicators.dart';
import 'package:material_ui/material_ui.dart';

class ManageUserListItem extends StatelessWidget {
  final User user;

  const ManageUserListItem(this.user, {super.key});

  @override
  Widget build(BuildContext context) {
    final permissions = user.permissions.permissions;
    final onlyApproved = user.permissions.approved && permissions.length == 1;

    return ViewableObjectWidget(
      user,
      trailing: UserAccountStatusIndicators(user),
      subtitle: switch (user.userType.automatedAccountDescription) {
        final automatedAccountDescription? => Text(
          automatedAccountDescription,
          key: ManageUserListItemKeys.automatedAccountDescription,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        null when onlyApproved => null,
        null => Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            for (final permission in permissions)
              if (permission != UserPermission.approved)
                Tooltip(
                  message: permission.label,
                  child: Icon(permission.icon, size: 20),
                ),
          ],
        ),
      },
    );
  }
}

abstract final class ManageUserListItemKeys extends WidgetKeys {
  static const Key automatedAccountDescription = ValueKey(
    (ManageUserListItemKeys, #automatedAccountDescription),
  );
}
