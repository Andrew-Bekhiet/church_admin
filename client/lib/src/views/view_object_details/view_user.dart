import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:rxdart/rxdart.dart';

class ViewUser extends StatefulWidget {
  static final GoRoute route = GoRoute(
    path: 'viewUser',
    builder: (context, state) {
      if (state.queryParameters['uid'] == null) {
        throw ArgumentError.notNull('uid');
      }

      return ViewUser(
        userId: state.queryParameters['uid']!,
        user: (state.extra as Map?)?['user'] as User?,
      );
    },
    routes: [
      PersonAnalysis.route,
    ],
  );

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
    uid: widget.userId,
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
                icon: const Icon(Icons.query_stats),
                label: const Text('احصائيات الحضور'),
                onPressed: () => _attendanceAnalysis(context, user),
              ),
            ),
            const Divider(thickness: 1),
            HistoryProperty(
              name: 'أخر تحديث لبيانات الخادم',
              value: user.lastEdit?.time,
              getHistoryStream: () => DatabaseService.I.history
                  .paginateEditHistory<User>(id: user.id),
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
      editButtonBuilder: (context, user) => IconButton(
        tooltip: 'تعديل',
        onPressed: () => context.push(
          '/viewUser/editUser?id=' + widget.userId,
          extra: {'user': user},
        ),
        icon: const Icon(Icons.edit),
      ),
      notFoundBuilder: (context) => Center(
        child: Text(
          'لم يتم العثور على الخادم',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
    );
  }

  void _attendanceAnalysis(BuildContext context, User user) {
    context.push(
      Uri(
        path: '/viewUser/personAnalysis',
        queryParameters: {
          'id': user.person!.id,
          'uid': user.id,
        },
      ).toString(),
      extra: {
        'user': user,
        'person': user.person,
        'asAdmin': true,
        'onEditOptions': (
          context,
          options,
          void Function(PersonAnalysisOptions) onComplete,
        ) =>
            _SelectAttendanceOptions(
              user: user,
              onComplete: onComplete,
              options: options,
            ),
      },
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
                title: Text(
                  'الخدمات المسؤول عنها',
                  style: themeData.textTheme.titleMedium
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
                subtitle: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    for (final MapEntry(key: service, value: permissions)
                        in (widget.user.adminOn
                                    ?.where((a) => a.service != null) ??
                                [])
                            .groupListsBy((a) => a.service!)
                            .entries)
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4),
                        child: Card(
                          child: AdminOnServiceWidget(
                            serviceData: (service, permissions),
                            onTap: (s) => selected.value.contains(s)
                                ? selected.add(
                                    selected.value.difference(
                                      <ViewableWithID>{s},
                                    ),
                                  )
                                : selected.add({...selected.value, s}),
                            trailingBuilder: (context, s) =>
                                StreamBuilder<bool>(
                              initialData: false,
                              stream: selected.map((o) => o.contains(s)),
                              builder: (context, entryChecked) => Checkbox(
                                onChanged: (c) {
                                  if (c ?? false) {
                                    selected.add({...selected.value, s});
                                  } else {
                                    selected.add(
                                      selected.value.difference(
                                        <ViewableWithID>{s},
                                      ),
                                    );
                                  }
                                },
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
                    for (final adminData
                        in widget.user.adminOn?.where((a) => a.group != null) ??
                            <AdminOnData>[])
                      Card(
                        child: StreamBuilder<bool>(
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
                                    <Group>{adminData.group!},
                                  ),
                                );
                              }
                            },
                            value: entryChecked.requireData,
                            secondary: ImageObjectWidget(adminData.group!),
                            title: Text(adminData.group!.name),
                            dense: true,
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
      persistentFooterButtons: [
        TextButton(
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
    );
  }

  @override
  Future<void> dispose() async {
    super.dispose();
    await selected.close();
  }
}
