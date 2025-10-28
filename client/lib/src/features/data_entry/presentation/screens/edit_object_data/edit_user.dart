import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';

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

    final scaffoldMessenger = ScaffoldMessenger.of(context);

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
        scaffoldMessenger.showSnackBar(
          SnackBar(
            content: Text(
              'تم حفظ الصلاحيات بنجاح: ${newPermissions.toHumanReadableString()}',
            ),
            backgroundColor: Colors.green,
            duration: const Duration(seconds: 3),
          ),
        );
      } else {
        scaffoldMessenger.showSnackBar(
          const SnackBar(
            content:
                Text('حدث خطأ أثناء حفظ الصلاحيات. يرجى المحاولة مرة أخرى.'),
            backgroundColor: Colors.red,
            duration: Duration(seconds: 5),
          ),
        );
      }
    } catch (e) {
      scaffoldMessenger.showSnackBar(
        SnackBar(
          content: Text('حدث خطأ غير متوقع: $e'),
          backgroundColor: Colors.red,
          duration: const Duration(seconds: 5),
        ),
      );
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
}
