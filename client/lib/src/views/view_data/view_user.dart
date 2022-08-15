import 'package:church_admin/church_admin.dart';
import 'package:churchdata_core/churchdata_core.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:rxdart/rxdart.dart';

class ViewUser extends StatelessWidget {
  static final route = GoRoute(
      name: 'view_user',
      path: 'viewUser',
      builder: (context, state) {
        if (state.queryParams['uid'] == null) {
          throw ArgumentError.notNull('uid');
        }

        return ViewUser(
          userId: state.queryParams['uid']!,
          user: state.extra is User?
              ? state.extra as User?
              : (state.extra as Map?)?['user'] as User?,
        );
      },
      routes: [
        PersonAttendanceAnalysis.userRoute,
      ]);

  final User? user;
  final String userId;

  const ViewUser({
    required this.userId,
    this.user,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      initialData: user,
      stream: CADatabaseRepository.I.users.watchUser(userId: userId),
      builder: (context, snapshot) {
        final themeData = Theme.of(context);

        if (snapshot.hasError) {
          return ErrorWidget.builder(
              FlutterErrorDetails(exception: snapshot.error!));
        } else if (!snapshot.hasData &&
            snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (!snapshot.hasData) {
          return Center(
            child: Text(
              'لم يتم العثور على الخادم',
              style: themeData.textTheme.titleLarge,
            ),
          );
        }

        final user = snapshot.requireData!;
        final userData = user.userData!;
        final person = user.person;

        final foregroundColor = person?.color?.getContrastingColor(
          ListTileTheme.of(context).textColor ??
              themeData.listTileTheme.textColor ??
              themeData.textTheme.subtitle1!.color!,
        );
        return Scaffold(
          body: CustomScrollView(
            slivers: [
              SliverAppBar(
                backgroundColor: person?.color,
                foregroundColor: foregroundColor,
                stretch: true,
                pinned: true,
                expandedHeight: 280,
                actions: [
                  if (snapshot.connectionState != ConnectionState.active)
                    const Padding(
                      padding: EdgeInsets.all(8),
                      child: Center(child: CircularProgressIndicator()),
                    ),
                ],
                flexibleSpace: SafeArea(
                  child: LayoutBuilder(
                    builder: (context, constraints) {
                      final themeData = Theme.of(context);

                      return FlexibleSpaceBar(
                        centerTitle: false,
                        expandedTitleScale: 4,
                        titlePadding: const EdgeInsetsDirectional.only(
                          bottom: 16,
                          start: 72,
                          end: 10,
                        ),
                        title: AnimatedOpacity(
                          duration: const Duration(milliseconds: 300),
                          opacity:
                              constraints.biggest.height > kToolbarHeight * 2
                                  ? 0
                                  : 1,
                          child: Text(
                            user.name,
                            style: themeData.textTheme.titleLarge?.copyWith(
                              color: foregroundColor,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        background: ProgressIndicatorTheme(
                          data: themeData.progressIndicatorTheme.copyWith(
                            color: themeData.brightness == Brightness.light
                                ? themeData.colorScheme.onPrimary
                                : themeData.colorScheme.onSurface,
                          ),
                          child: IconTheme(
                            data: IconTheme.of(context)
                                .copyWith(color: foregroundColor),
                            child: PhotoObjectWidget(
                              user,
                              circleCrop: false,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Text(
                        user.name,
                        style: themeData.textTheme.titleLarge,
                      ),
                    ),
                    CopiablePropertyWidget(
                      'البريد الاكتروني',
                      userData.email,
                    ),
                    //TODO: approving pending users
                    const Divider(thickness: 1),
                    ListTile(
                      title: const Text('الصلاحيات'),
                      subtitle: userData.permissions.permissions.isEmpty
                          ? const Text('لا يملك هذا الخادم صلاحيات محددة')
                          : Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                if (userData.permissions.manageAllUsers)
                                  const ListTile(
                                    leading: Icon(Icons.manage_accounts),
                                    title: Text('إدارة جميع المستخدمين'),
                                  ),
                                if (userData.permissions.readAllData)
                                  const ListTile(
                                    leading: Icon(Icons.visibility),
                                    title: Text('رؤية جميع البيانات'),
                                  ),
                                if (userData.permissions.writeAllData)
                                  const ListTile(
                                    leading: Icon(Icons.edit),
                                    title: Text('تعديل جميع البيانات'),
                                  ),
                                if ((userData.permissions.manageAllUsers ||
                                        userData.permissions.readAllData ||
                                        userData.permissions.writeAllData) &&
                                    (userData.permissions.recordHistory ||
                                        userData.permissions.changeOldHistory ||
                                        userData.permissions.recoverDeleted ||
                                        userData.permissions.exportData))
                                  const Divider(),
                                if (userData.permissions.recordHistory)
                                  const ListTile(
                                    leading: Icon(Icons.history),
                                    title: Text('تسجيل الحضور لليوم الحالي'),
                                  ),
                                if (userData.permissions.changeOldHistory)
                                  const ListTile(
                                    leading: Icon(Icons.history),
                                    title: Text('تغيير الحضور لأي يوم'),
                                  ),
                                if (userData.permissions.recoverDeleted)
                                  const ListTile(
                                    leading: Icon(Icons.restore_from_trash),
                                    title: Text('استرجاع المحذوفات'),
                                  ),
                                if (userData.permissions.exportData)
                                  const ListTile(
                                    leading: Icon(Icons.file_upload),
                                    title: Text('تصدير البيانات'),
                                  ),
                              ],
                            ),
                    ),
                    const Divider(thickness: 1),
                    ListTile(
                      title: const Text('المناطق المسؤول عنها'),
                      subtitle: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          for (final adminData
                              in user.adminOn?.where((a) => a.area != null) ??
                                  <AdminOnData>[])
                            ViewableObjectWidget(
                              adminData.area!,
                              showSubtitle: false,
                              trailing: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  if (adminData.areaAdminOnUsers ?? false)
                                    const Icon(Icons.manage_accounts),
                                  if (adminData.areaAllowEdit ?? false)
                                    const Icon(Icons.edit),
                                  const Icon(Icons.visibility),
                                ],
                              ),
                            ),
                        ],
                      ),
                    ),
                    ListTile(
                      title: const Text('الخدمات المسؤول عنها'),
                      subtitle: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          for (final s in (user.adminOn
                                      ?.where((a) => a.service != null) ??
                                  [])
                              .groupListsBy((a) => a.service!)
                              .entries)
                            Card(
                              elevation: 2.5,
                              child: _AdminOnServiceWidget(
                                serviceData: s,
                              ),
                            ),
                        ],
                      ),
                    ),
                    ListTile(
                      title: const Text('المجموعات المسؤول عنها'),
                      subtitle: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          for (final adminData
                              in user.adminOn?.where((a) => a.group != null) ??
                                  <AdminOnData>[])
                            ViewableObjectWidget(
                              adminData.group!,
                              showSubtitle: false,
                              trailing: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  if (adminData.groupAdminOnUsers ?? false)
                                    const Icon(Icons.manage_accounts),
                                  if (adminData.groupAllowEdit ?? false)
                                    const Icon(Icons.edit),
                                  const Icon(Icons.visibility),
                                ],
                              ),
                            ),
                        ],
                      ),
                    ),
                    const Divider(thickness: 1),
                    ListTile(
                      title: ElevatedButton.icon(
                        icon: const Icon(Icons.query_stats),
                        label: const Text('احصائيات الحضور'),
                        onPressed: () => _attendanceAnalysis(context, user),
                      ),
                    ),
                    const Divider(thickness: 1),
                    HistoryProperty(
                      name: 'أخر تحديث لبيانات الخادم',
                      value: userData.lastEdit?.time,
                      getHistoryStream: () => CADatabaseRepository.I.users
                          .userEditHistory(userId: user.id),
                    ),
                    const SizedBox(height: 50),
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }

  Future<void> _attendanceAnalysis(BuildContext context, User user) async {
    await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => _SelectAttendanceOptions(user: user),
      ),
    );
  }
}

class _AdminOnServiceWidget extends StatelessWidget {
  const _AdminOnServiceWidget({
    required this.serviceData,
    this.trailingBuilder,
    this.onTap,
  });

  final MapEntry<Service, List<AdminOnData>> serviceData;
  final Widget Function(BuildContext, ViewableWithID)? trailingBuilder;
  final void Function(ViewableWithID)? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ViewableObjectWidget(
          serviceData.key,
          showSubtitle: false,
          wrapInCard: false,
          onTap: onTap != null ? () => onTap!(serviceData.key) : null,
          trailing: trailingBuilder?.call(context, serviceData.key),
        ),
        const Divider(thickness: 2),
        for (final p in serviceData.value)
          if (p.classes.isEmpty && trailingBuilder == null)
            Padding(
              padding: const EdgeInsets.only(right: 26),
              child: ListTile(
                title: p.serviceGender == null && p.serviceStudyYearData == null
                    ? const Text('(جميع البيانات داخل الخدمة)')
                    : p.serviceGender != null && p.serviceStudyYearData == null
                        ? Text(p.serviceGender!
                            ? '(جميع البنين في الخدمة)'
                            : '(جميع البنات داخل الخدمة)')
                        : p.serviceGender != null
                            ? Text(
                                '(' +
                                    p.serviceStudyYearData!.name +
                                    (p.serviceGender! ? ' بنين' : ' بنات') +
                                    ')',
                              )
                            : Text(
                                '(جميع بيانات ' +
                                    p.serviceStudyYearData!.name +
                                    ')',
                              ),
                dense: true,
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (p.serviceAdminOnUsers ?? false)
                      const Icon(Icons.manage_accounts),
                    if (p.serviceAllowEdit ?? false) const Icon(Icons.edit),
                    const Icon(Icons.visibility),
                  ],
                ),
              ),
            )
          else
            for (final c in p.classes)
              Padding(
                padding: const EdgeInsets.only(right: 26),
                child: ViewableObjectWidget(
                  c,
                  isDense: true,
                  showSubtitle: false,
                  wrapInCard: false,
                  onTap: onTap != null ? () => onTap!(c) : null,
                  trailing: trailingBuilder == null
                      ? Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            if (p.serviceAdminOnUsers ?? false)
                              const Icon(Icons.manage_accounts),
                            if (p.serviceAllowEdit ?? false)
                              const Icon(Icons.edit),
                            const Icon(Icons.visibility),
                          ],
                        )
                      : trailingBuilder!(context, c),
                ),
              )
      ],
    );
  }
}

class _SelectAttendanceOptions extends StatefulWidget {
  const _SelectAttendanceOptions({required this.user});

  final User user;

  @override
  State<_SelectAttendanceOptions> createState() =>
      _SelectAttendanceOptionsState();
}

class _SelectAttendanceOptionsState extends State<_SelectAttendanceOptions> {
  final selected = BehaviorSubject<Set<ViewableWithID>>.seeded({});

  DateTimeRange dateRange = DateTimeRange(
    start: DateTime.now().subtract(const Duration(days: 30)),
    end: DateTime.now(),
  );

  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    selected.close();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('تحليل الحضور كخادم في'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(8),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Expanded(
                    child: TappableFormField<DateTime>(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      decoration: (context, state) => InputDecoration(
                        errorText: state.errorText,
                        labelText: 'من',
                      ),
                      initialValue: dateRange.start,
                      onTap: (state) async {
                        final _picked = await showDatePicker(
                          context: context,
                          initialDate: state.value ?? dateRange.start,
                          firstDate: DateTime(2010),
                          lastDate: DateTime.now().add(
                            const Duration(days: 1),
                          ),
                          helpText: 'من',
                        );
                        if (_picked != null) {
                          state.didChange(_picked);
                        }
                      },
                      builder: (context, state) {
                        return state.value != null
                            ? Text(DateFormat('yyyy/M/d').format(state.value!))
                            : null;
                      },
                      onSaved: (v) => dateRange = DateTimeRange(
                        start: v!,
                        end: dateRange.end,
                      ),
                      validator: (value) =>
                          value == null || value.isAfter(dateRange.end)
                              ? 'بداية التاريخ قبل النهاية'
                              : null,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: TappableFormField<DateTime>(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      decoration: (context, state) => InputDecoration(
                        errorText: state.errorText,
                        labelText: 'الى',
                      ),
                      initialValue: dateRange.end,
                      onTap: (state) async {
                        final _picked = await showDatePicker(
                          context: context,
                          initialDate: state.value ?? dateRange.end,
                          firstDate: DateTime(2010),
                          lastDate: DateTime.now().add(
                            const Duration(days: 1),
                          ),
                          helpText: 'من',
                        );
                        if (_picked != null) {
                          state.didChange(_picked);
                        }
                      },
                      builder: (context, state) {
                        return state.value != null
                            ? Text(DateFormat('yyyy/M/d').format(state.value!))
                            : null;
                      },
                      onSaved: (v) => dateRange = DateTimeRange(
                        end: v!,
                        start: dateRange.start,
                      ),
                      validator: (value) =>
                          value == null || value.isBefore(dateRange.start)
                              ? 'نهاية التاريخ قبل البداية'
                              : null,
                    ),
                  ),
                ],
              ),
              ListTile(
                title: const Text('الخدمات المسؤول عنها'),
                subtitle: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    for (final s in (widget.user.adminOn
                                ?.where((a) => a.service != null) ??
                            [])
                        .groupListsBy((a) => a.service!)
                        .entries)
                      _AdminOnServiceWidget(
                        serviceData: s,
                        onTap: (s) => selected.value.contains(s)
                            ? selected.add(
                                selected.value.difference(
                                  {s},
                                ),
                              )
                            : selected.add({...selected.value, s}),
                        trailingBuilder: (context, s) => StreamBuilder<bool>(
                          initialData: false,
                          stream: selected.map((o) => o.contains(s)),
                          builder: (context, entryChecked) => Checkbox(
                            onChanged: (c) {
                              if (c ?? false) {
                                selected.add({...selected.value, s});
                              } else {
                                selected.add(
                                  selected.value.difference(
                                    {s},
                                  ),
                                );
                              }
                            },
                            value: entryChecked.requireData,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
              ListTile(
                title: const Text('المجموعات المسؤول عنها'),
                subtitle: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    for (final adminData
                        in widget.user.adminOn?.where((a) => a.group != null) ??
                            <AdminOnData>[])
                      StreamBuilder<bool>(
                        initialData: false,
                        stream:
                            selected.map((o) => o.contains(adminData.group)),
                        builder: (context, entryChecked) => CheckboxListTile(
                          onChanged: (c) {
                            if (c ?? false) {
                              selected
                                  .add({...selected.value, adminData.group!});
                            } else {
                              selected.add(
                                selected.value.difference(
                                  {adminData.group},
                                ),
                              );
                            }
                          },
                          value: entryChecked.requireData,
                          secondary: PhotoObjectWidget(adminData.group!),
                          title: Text(adminData.group!.name),
                          dense: true,
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      persistentFooterButtons: [
        TextButton(
          onPressed: () async {
            if (_formKey.currentState!.validate()) {
              _formKey.currentState!.save();

              Navigator.of(context).pop();
              context.goNamed(
                'user_attendance_analysis',
                queryParams: {
                  'id': widget.user.person!.id,
                  'uid': widget.user.id,
                },
                extra: {
                  'user': widget.user,
                  'person': widget.user.person,
                  'asAdmin': true,
                  'dateRange': dateRange,
                  'classesIds': selected.value
                      .whereType<Class>()
                      .map((o) => o.id)
                      .toList(),
                  'groupsIds': selected.value
                      .whereType<Group>()
                      .map((o) => o.id)
                      .toList(),
                  'servicesIds': selected.value
                      .whereType<Service>()
                      .map((o) => o.id)
                      .toList(),
                },
              );

              await selected.close();
            }
          },
          child: const Text('تحليل الحضور'),
        ),
      ],
    );
  }
}
