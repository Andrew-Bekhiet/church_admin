import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';

class EditUserAdminScopeWidget extends StatelessWidget {
  final UserAdminScope userAdminScope;
  final void Function(UserAdminScope) onChanged;
  final void Function()? onDuplicate;
  final void Function() onDelete;

  const EditUserAdminScopeWidget({
    required this.userAdminScope,
    required this.onChanged,
    required this.onDelete,
    this.onDuplicate,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final serviceScopeLabel = switch (userAdminScope) {
      UserAdminScope(object: Service(), :final studyYear, :final gender) =>
        '${studyYear?.name ?? 'جميع السنوات الدراسية'} ${gender == null
            ? 'بنين و بنات'
            : gender
            ? 'بنين'
            : 'بنات'} فقط',
      _ => null,
    };

    final objectLabel = switch (userAdminScope) {
      UserAdminScope(object: Area()) => 'منطقة',
      UserAdminScope(object: Service()) => 'خدمة ($serviceScopeLabel)',
      UserAdminScope(object: Group()) => 'مجموعة',
      _ => '',
    };

    return ListTileTheme.merge(
      contentPadding: const EdgeInsets.symmetric(horizontal: 6),
      child: ExpansionTile(
        key: EditUserScreenKeys.scope(userAdminScope.object.id),
        title: Row(
          children: [
            Expanded(
              child: IgnorePointer(
                child: ViewableObjectWidget(
                  userAdminScope.object,
                  isDense: true,
                  forceShowSecondLine: false,
                  wrapInCard: false,
                  subtitle: serviceScopeLabel != null
                      ? Text(
                          serviceScopeLabel,
                          overflow: TextOverflow.ellipsis,
                        )
                      : null,
                ),
              ),
            ),
            AdminOnDataIndicator(
              adminOnData: userAdminScope.toAdminOnData(permissionId: ''),
            ),
          ],
        ),
        expandedCrossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if (userAdminScope.object case Service())
            ServiceAdminScopeFields(
              userAdminScope: userAdminScope,
              onChanged: onChanged,
            ),
          AdminScopePermissionCheckboxes(
            userAdminScope: userAdminScope,
            objectLabel: objectLabel,
            onChanged: onChanged,
          ),
          AdminScopeActionButtons(
            onDuplicate: onDuplicate,
            onDelete: onDelete,
          ),
        ],
      ),
    );
  }
}
