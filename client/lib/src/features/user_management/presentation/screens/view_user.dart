import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/features/user_management/presentation/widgets/user_account_card.dart';
import 'package:church_admin/src/features/user_management/presentation/widgets/user_section_card.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class ViewUser extends StatefulWidget {
  final User? user;
  final String userId;

  const ViewUser({
    required this.userId,
    this.user,
    super.key,
  });

  @override
  State<ViewUser> createState() => _ViewUserState();
}

class _ViewUserState extends State<ViewUser> {
  final scrollController = ScrollController();

  late final stream = DatabaseService.I.users.streamSingleById(
    id: widget.userId,
    fullData: true,
  );

  @override
  Widget build(BuildContext context) {
    return ViewObjectDetails<User>(
      objectId: widget.userId,
      object: widget.user,
      objectStream: stream,
      detailsBuilder: (context, user) {
        final currentUserData = AuthBloc.I.currentUserData;
        final appUserPermissions =
            currentUserData?.permissions ?? const PermissionsSet.empty();
        final isMyAccount = currentUserData?.id == user.id;
        final isUserApproved = user.permissions.approved;

        final theme = Theme.of(context);
        final permissions = user.permissions;

        final userInfoWidgets = [
          if (user.person case final person?)
            UserSectionCard(
              icon: Symbols.person,
              title: 'المخدوم المرتبط',
              child: ViewableObjectWidget(
                person,
                onTap: (person) => ViewPersonRoute(
                  id: person.id,
                  $extra: person,
                ).push(context),
              ),
            ),
          if (permissions.permissions.isEmpty)
            const ListTile(
              title: Text('الصلاحيات'),
              subtitle: Text('لا يملك هذا الخادم صلاحيات محددة'),
            )
          else ...[
            ListTile(
              leading: const Icon(Symbols.shield),
              title: Text(
                'صلاحيات عامة',
                style: theme.textTheme.titleMedium,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: PermissionsSetWidget(permissions: permissions),
            ),
          ],
          AdminOnDataWidget(adminOn: user.adminOn ?? []),
          const SizedBox(height: 10),
          const Divider(thickness: 1),
          ListTile(
            title: FilledButton.tonalIcon(
              style: Theme.of(context).filledTonalButtonStyleWorkaround,
              icon: const Icon(Symbols.query_stats),
              label: const Text('احصائيات الحضور'),
              onPressed: () => _attendanceAnalysis(user),
            ),
          ),
          const Divider(thickness: 1),
          HistoryProperty(
            name: 'أخر تحديث لبيانات الخادم',
            value: user.lastEdit?.time,
            getHistoryListController: () => ViewableObjectListController(
              objectsPaginatableStream: DatabaseService.I.history
                  .paginateEditHistory<User>(id: user.id),
            ),
          ),
          const Divider(thickness: 1),
          if (isMyAccount)
            ListTile(
              title: FilledButton.icon(
                style: FilledButton.styleFrom(
                  backgroundColor: ColorScheme.of(context).error,
                  foregroundColor: ColorScheme.of(context).onError,
                ),
                icon: const Icon(Symbols.delete_forever),
                label: const Text('حذف حسابي'),
                onPressed: _confirmDeleteMyAccount,
              ),
            ),
        ];

        return SliverList(
          delegate: SliverChildListDelegate(
            [
              UserAccountCard(user),
              if (appUserPermissions.manageAllUsers && !isUserApproved) ...[
                const ListTile(
                  leading: Icon(Symbols.person_off),
                  title: Text('حساب غير مفعل'),
                  subtitle: Text('يجب تفعيل الحساب للسماح للمستخدم بالدخول'),
                ),
                ListTile(
                  title: FilledButton.tonalIcon(
                    style: Theme.of(context).filledTonalButtonStyleWorkaround,
                    icon: const Icon(Symbols.person_check),
                    label: const Text('تفعيل الحساب'),
                    onPressed: () => _approveUser(user),
                  ),
                ),
              ],
              if (isUserApproved) ...userInfoWidgets,
              if (user
                  case User(
                    :final email?,
                    authId: _?,
                    :final currentUserCanManageThisUser,
                  )
                  when email.isNotEmpty &&
                      !isMyAccount &&
                      (appUserPermissions.manageAllUsers ||
                          currentUserCanManageThisUser))
                SendPasswordResetButton(email: email),
              if (appUserPermissions.manageAllUsers &&
                  isUserApproved &&
                  !isMyAccount)
                ListTile(
                  title: FilledButton.tonalIcon(
                    style: FilledButton.styleFrom(
                      backgroundColor: ColorScheme.of(context).errorContainer,
                      foregroundColor: ColorScheme.of(context).onErrorContainer,
                    ),
                    icon: const Icon(Symbols.person_off),
                    label: const Text('إلغاء تفعيل الحساب'),
                    onPressed: () => _unapproveUser(user),
                  ),
                ),
              const SizedBox(height: 50),
            ],
          ),
        );
      },
      editButtonBuilder: (context, user) => IconButton(
        tooltip: 'تعديل',
        onPressed: () =>
            EditUserRoute($extra: UpdateUser(user: user)).push(context),
        icon: const Icon(Symbols.edit),
      ),
      notFoundBuilder: (context) => Center(
        child: Text(
          'لم يتم العثور على الخادم',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
    );
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  Future<void> _attendanceAnalysis(User user) async {
    await UserAnalysisRoute(
      $extra: UserAnalysisExtra(user: user),
    ).push(context);
  }

  Future<void> _confirmDeleteMyAccount() async {
    bool? dialogResult = await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('هل تريد حقا حذف حسابك وجميع البيانات المتعلقة به؟'),
        actions: [
          OutlinedButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: const Text('لا'),
          ),
          OutlinedButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: const Text('نعم'),
          ),
        ],
      ),
    );

    if (dialogResult != true || !mounted) return;

    dialogResult = await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(
          'سيتم حذف حسابك في التطبيق ولا يمكن استرجاعه ولا البيانات المتعلقة به\nبرجاء التأكيد',
          style: TextStyle(
            color: Theme.of(context).colorScheme.onErrorContainer,
          ),
        ),
        actions: [
          OutlinedButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: const Text('تراجع'),
          ),
          FilledButton.tonal(
            style: Theme.of(context).filledTonalButtonStyleWorkaround,
            onPressed: () => Navigator.of(context).pop(true),
            child: const Text('قد قرأت الرسالة أعلاه وأريد حذف حسابي'),
          ),
        ],
      ),
    );

    if (dialogResult != true) return;

    try {
      await FunctionsService.I.deleteMyAccount();
      AuthBloc.I.add(const SignOut());
    } catch (err, stkTrace) {
      await LoggingService.I.exception(
        LogRecord(error: err, stackTrace: stkTrace),
      );

      scaffoldMessenger.showErrorSnackBar(
        'حدث خطأ أثناء حذف الحساب، يرجى المحاولة لاحقا',
      );

      return;
    }

    scaffoldMessenger
      ..hideCurrentSnackBar()
      ..showSnackBar(
        const SnackBar(
          content: Text('تم حذف الحساب بنجاح'),
          duration: Duration(seconds: 3),
        ),
      );
  }

  Future<void> _approveUser(User user) async {
    try {
      await DatabaseService.I.userPermissions.approveUser(user.uid);

      if (!mounted) return;

      scaffoldMessenger.showSnackBar(
        const SnackBar(
          content: Text('تم تفعيل الحساب بنجاح'),
          duration: Duration(seconds: 3),
        ),
      );
    } catch (err, stkTrace) {
      await LoggingService.I.exception(
        LogRecord(error: err, stackTrace: stkTrace),
      );

      if (!mounted) return;

      scaffoldMessenger.showErrorSnackBar(
        'حدث خطأ أثناء تفعيل الحساب، يرجى المحاولة لاحقا',
      );
    }
  }

  Future<void> _unapproveUser(User user) async {
    final bool? dialogResult = await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('هل تريد إلغاء تفعيل هذا الحساب؟'),
        content: Text(
          'سيتم إلغاء تفعيل حساب ${user.name} ولن يتمكن من الوصول إلى التطبيق',
        ),
        actions: [
          OutlinedButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: const Text('إلغاء'),
          ),
          FilledButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: const Text('تأكيد'),
          ),
        ],
      ),
    );

    if (dialogResult != true || !mounted) return;

    try {
      await DatabaseService.I.userPermissions.unapproveUser(user.uid);

      if (!mounted) return;

      scaffoldMessenger.showSnackBar(
        const SnackBar(
          content: Text('تم إلغاء تفعيل الحساب بنجاح'),
          duration: Duration(seconds: 3),
        ),
      );
    } catch (err, stkTrace) {
      await LoggingService.I.exception(
        LogRecord(error: err, stackTrace: stkTrace),
      );

      if (!mounted) return;

      scaffoldMessenger.showErrorSnackBar(
        'حدث خطأ أثناء إلغاء تفعيل الحساب، يرجى المحاولة لاحقا',
      );
    }
  }
}
