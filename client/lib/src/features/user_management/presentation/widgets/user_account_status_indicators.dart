import 'package:church_admin/church_admin.dart';
import 'package:material_ui/material_ui.dart';

class UserAccountStatusIndicators extends StatelessWidget {
  final User user;

  const UserAccountStatusIndicators(this.user, {super.key});

  @override
  Widget build(BuildContext context) {
    final status = UserAccountStatus.of(user, DateTime.now());

    if (status == UserAccountStatus.claimed) return const SizedBox.shrink();

    return Tooltip(
      key: UserAccountStatusIndicatorsKeys.selfFor(status),
      message: status.label,
      child: Icon(status.icon, color: status.color(ColorScheme.of(context))),
    );
  }
}

abstract final class UserAccountStatusIndicatorsKeys extends WidgetKeys {
  static Key selfFor(UserAccountStatus status) =>
      ValueKey((UserAccountStatusIndicatorsKeys, #selfFor, status));
}
