import 'package:church_admin/church_admin.dart';
import 'package:material_ui/material_ui.dart';

class UserAccountStatusBanner extends StatelessWidget {
  final UserAccountStatus status;
  final UserType userType;
  final String? email;

  const UserAccountStatusBanner({
    required this.status,
    required this.userType,
    required this.email,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = ColorScheme.of(context);
    final textTheme = TextTheme.of(context);
    final descriptionOrEmail = userType.automatedAccountDescription ?? email;
    final isShowingNoEmailPlaceholder = descriptionOrEmail == null;

    return ListTile(
      key: UserAccountStatusBannerKeys.selfFor(status),
      leading: CircleAvatar(
        backgroundColor: status.container(colorScheme),
        foregroundColor: status.color(colorScheme),
        child: Icon(userType.isAutomated ? userType.icon : status.icon),
      ),
      title: Text(status.label, style: textTheme.titleMedium),
      subtitle: Text(
        descriptionOrEmail ?? 'بدون بريد إلكتروني',
        style: textTheme.bodyMedium?.copyWith(
          color: isShowingNoEmailPlaceholder
              ? colorScheme.onSurfaceVariant
              : null,
        ),
      ),
    );
  }
}

abstract final class UserAccountStatusBannerKeys extends WidgetKeys {
  static Key selfFor(UserAccountStatus status) =>
      ValueKey((UserAccountStatusBannerKeys, #selfFor, status));
}
