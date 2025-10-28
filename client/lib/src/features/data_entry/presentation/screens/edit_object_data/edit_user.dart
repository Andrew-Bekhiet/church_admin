import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

class EditUser extends StatefulWidget {
  final User? user;
  final String userId;

  const EditUser({
    required this.userId,
    this.user,
    super.key,
  });

  @override
  State<EditUser> createState() => _EditUserState();
}

class _EditUserState extends State<EditUser> {
  final scrollController = ScrollController();

  Set<UserPermission> _selectedPermissions = {};
  Set<UserPermission> _initialPermissions = {};
  bool _isLoading = true;
  bool _isSaving = false;

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
        if (_isLoading) {
          _initialPermissions = user.permissions.permissions.toSet();
          _selectedPermissions = user.permissions.permissions.toSet();
          _isLoading = false;
        }

        return SliverList(
          delegate: SliverChildListDelegate(
            [
              CopiablePropertyWidget(
                'البريد الاكتروني',
                user.email,
              ),
              const Divider(thickness: 1),
              Card(
                margin: const EdgeInsets.all(8),
                color: Theme.of(context).colorScheme.secondaryContainer,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.security,
                            color: Theme.of(context).primaryColor,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            'الصلاحيات',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      _buildEditablePermissions(context),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 60),
            ],
          ),
        );
      },
      editButtonBuilder: (context, user) => const SizedBox.shrink(),
      notFoundBuilder: (context) => Center(
        child: Text(
          'لم يتم العثور على الخادم',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
    );
  }

  Widget _buildEditablePermissions(BuildContext context) {
    return Column(
      children: [
        _buildPermissionCheckbox(
          UserPermission.approved,
          'تفعيل الحساب',
          'يجب تفعيل الحساب للسماح للمستخدم بالدخول',
        ),
        const Divider(),
        _buildPermissionCheckbox(
          UserPermission.manageAllUsers,
          'إدارة جميع المستخدمين',
          'السماح بإضافة وتعديل وحذف المستخدمين',
        ),
        _buildPermissionCheckbox(
          UserPermission.readAllData,
          'قراءة جميع البيانات',
          'السماح بقراءة جميع بيانات التطبيق',
        ),
        _buildPermissionCheckbox(
          UserPermission.writeAllData,
          'كتابة جميع البيانات',
          'السماح بتعديل جميع بيانات التطبيق',
        ),
        const Divider(),
        _buildPermissionCheckbox(
          UserPermission.recordHistory,
          'تسجيل التاريخ',
          'السماح بتسجيل تاريخ التعديلات',
        ),
        _buildPermissionCheckbox(
          UserPermission.changeOldHistory,
          'تعديل التاريخ القديم',
          'السماح بتعديل السجلات التاريخية',
        ),
        _buildPermissionCheckbox(
          UserPermission.recoverDeleted,
          'استرداد المحذوف',
          'السماح باسترداد البيانات المحذوفة',
        ),
        _buildPermissionCheckbox(
          UserPermission.exportData,
          'تصدير البيانات',
          'السماح بتصدير بيانات التطبيق',
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            Expanded(
              child: ElevatedButton.icon(
                onPressed: _isSaving ? null : _savePermissions,
                icon: _isSaving
                    ? const SizedBox(
                        width: 16,
                        height: 16,
                        child: CircularProgressIndicator(strokeWidth: 2),
                      )
                    : const Icon(Icons.save),
                label: Text(_isSaving ? 'جاري الحفظ...' : 'حفظ الصلاحيات'),
              ),
            ),
            const SizedBox(width: 8),
            ElevatedButton.icon(
              onPressed: _isSaving ? null : _resetPermissions,
              icon: const Icon(Icons.refresh),
              label: const Text('إعادة تعيين'),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildPermissionCheckbox(
    UserPermission permission,
    String title,
    String subtitle,
  ) {
    final isChecked = _selectedPermissions.contains(permission);

    return CheckboxListTile(
      value: isChecked,
      onChanged: (bool? value) {
        setState(() {
          if (value == true) {
            _selectedPermissions.add(permission);
          } else {
            _selectedPermissions.remove(permission);
          }
        });
      },
      title: Row(
        children: [
          Icon(permission.icon, size: 20),
          const SizedBox(width: 8),
          Expanded(child: Text(title)),
        ],
      ),
      subtitle: Text(
        subtitle,
        style: Theme.of(context).textTheme.bodySmall,
      ),
      dense: true,
    );
  }

  Future<void> _savePermissions() async {
    if (_isSaving) return;

    setState(() {
      _isSaving = true;
    });

    try {
      final newPermissions = PermissionsSet.fromSet(_selectedPermissions);

      final success = await DatabaseService.I.users.updateUserPermissions(
        userId: widget.userId,
        newPermissions: newPermissions,
      );

      if (success) {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                'تم حفظ الصلاحيات بنجاح: ${newPermissions.toHumanReadableString()}',
              ),
              backgroundColor: Colors.green,
              duration: const Duration(seconds: 3),
            ),
          );
        }
      } else {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content:
                  Text('حدث خطأ أثناء حفظ الصلاحيات. يرجى المحاولة مرة أخرى.'),
              backgroundColor: Colors.red,
              duration: Duration(seconds: 5),
            ),
          );
        }
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('حدث خطأ غير متوقع: $e'),
            backgroundColor: Colors.red,
            duration: const Duration(seconds: 5),
          ),
        );
      }
    } finally {
      if (mounted) {
        setState(() {
          _isSaving = false;
        });
      }
    }
  }

  void _resetPermissions() {
    setState(() {
      _selectedPermissions = {..._initialPermissions};
    });

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('تم إعادة تعيين الصلاحيات'),
        backgroundColor: Colors.orange,
        duration: Duration(seconds: 2),
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
