import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:rxdart/rxdart.dart';

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
      detailsBuilder: (context, user) => SliverList(
        delegate: SliverChildListDelegate(
          [
            CopiablePropertyWidget(
              'البريد الاكتروني',
              user.email,
            ),
            //TODO: approving pending users
            const Divider(thickness: 1),
            ListTile(
              title: const Text('الصلاحيات'),
              subtitle: user.permissions.permissions.isEmpty
                  ? const Text('لا يملك هذا الخادم صلاحيات محددة')
                  : PermissionsSetWidget(permissions: user.permissions),
            ),
            const Divider(thickness: 1),
            const SizedBox(height: 10),
            AdminOnDataWidget(adminOn: user.adminOn ?? []),
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
            if (AuthBloc.I.state.unwrapped
                case AuthAuthenticated(userData: User(id: final userId))
                when userId == user.id)
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
            const SizedBox(height: 50),
          ],
        ),
      ),
      editButtonBuilder: (context, user) => IconButton(
        tooltip: 'تعديل',
        onPressed: () =>
            ViewUserRoute(uid: widget.userId, $extra: user).push(context),
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

  void _attendanceAnalysis(User user) {
    PersonAnalysisRoute(
      $extra: PersonAnalysisExtra(
        editOptionsBuilder: (
          context,
          options,
          void Function(PersonAnalysisOptions) onComplete,
        ) =>
            _SelectAttendanceOptions(
          user: user,
          onComplete: onComplete,
          options: options,
        ),
        person: user.person,
        user: user,
      ),
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
      await LoggingService.I
          .exception(LogRecord(error: err, stackTrace: stkTrace));

      scaffoldMessenger
          .showErrorSnackBar('حدث خطأ أثناء حذف الحساب، يرجى المحاولة لاحقا');
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

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }
}

class _SelectAttendanceOptions extends StatefulWidget {
  const _SelectAttendanceOptions({
    required this.user,
    required this.onComplete,
    this.options,
  });

  final User user;
  final PersonAnalysisOptions? options;
  final void Function(PersonAnalysisOptions) onComplete;

  @override
  State<_SelectAttendanceOptions> createState() =>
      _SelectAttendanceOptionsState();
}

class _SelectAttendanceOptionsState extends State<_SelectAttendanceOptions> {
  late final selected = BehaviorSubject<Set<ViewableWithID>>.seeded(
    widget.options == null
        ? {}
        : {
            ...widget.options!.services,
            ...widget.options!.classes,
            ...widget.options!.groups,
          },
  );

  late DateTimeRange dateRange = widget.options?.dateRange ??
      DateTimeRange(
        start: DateTime.now().subtract(const Duration(days: 30)),
        end: DateTime.now(),
      );

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('تحليل الحضور كخادم في'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      DateTimeRangeField(
                        label: 'الفترة',
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        initialValue: dateRange,
                        onSaved: (v) => dateRange = v!,
                      ),
                      ListTile(
                        title: Text(
                          'الخدمات المسؤول عنها',
                          style: themeData.textTheme.titleMedium
                              ?.copyWith(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            for (final MapEntry(
                                  key: service,
                                  value: permissions
                                ) in (widget.user.adminOn
                                            ?.where((a) => a.service != null) ??
                                        [])
                                    .groupListsBy((a) => a.service!)
                                    .entries)
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 4),
                                child: Card(
                                  child: AdminOnServiceWidget(
                                    serviceData: (service, permissions),
                                    onTap: (s) =>
                                        _toggle(s, !selected.value.contains(s)),
                                    trailingBuilder: (context, s) =>
                                        StreamBuilder<bool>(
                                      initialData: false,
                                      stream:
                                          selected.map((o) => o.contains(s)),
                                      builder: (context, entryChecked) =>
                                          Checkbox(
                                        onChanged: (checked) =>
                                            _toggle(s, checked ?? false),
                                        value: entryChecked.requireData,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),
                      ListTile(
                        title: Text(
                          'المجموعات المسؤول عنها',
                          style: themeData.textTheme.titleMedium
                              ?.copyWith(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            for (final adminData in widget.user.adminOn
                                    ?.where((a) => a.group != null) ??
                                <AdminOnData>[])
                              Card(
                                child: ViewableObjectWidget(
                                  adminData.group!,
                                  wrapInCard: false,
                                  forceShowSecondLine: false,
                                  onTap: (g) =>
                                      _toggle(g, !selected.value.contains(g)),
                                  trailing: StreamBuilder<bool>(
                                    initialData: false,
                                    stream: selected.map(
                                      (o) => o.contains(adminData.group),
                                    ),
                                    builder: (context, entryChecked) =>
                                        Checkbox(
                                      onChanged: (checked) => _toggle(
                                        adminData.group!,
                                        checked ?? false,
                                      ),
                                      value: entryChecked.requireData,
                                    ),
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            FilledButton(
              onPressed: () async {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();

                  widget.onComplete(
                    PersonAnalysisOptions(
                      dateRange: dateRange,
                      classes: selected.value.whereType<Class>().toList(),
                      groups: selected.value.whereType<Group>().toList(),
                      services: selected.value.whereType<Service>().toList(),
                    ),
                  );

                  await selected.close();
                }
              },
              child: const Text('تحليل الحضور'),
            ),
          ],
        ),
      ),
    );
  }

  void _toggle(ViewableWithID object, bool isSelected) {
    if (isSelected) {
      selected.add({...selected.value, object});
    } else {
      selected.add(
        selected.value.difference(
          <ViewableWithID>{object},
        ),
      );
    }
  }

  @override
  Future<void> dispose() async {
    super.dispose();
    await selected.close();
  }
}
