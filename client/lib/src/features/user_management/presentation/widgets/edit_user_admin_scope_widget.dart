import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class EditUserAdminScopeWidget extends StatelessWidget {
  final UserAdminScope userAdminScope;
  final void Function(UserAdminScope) onChanged;
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
    final objectLabel = switch (userAdminScope) {
      UserAdminScope(object: Area()) => 'منطقة',
      UserAdminScope(object: Service(), :final studyYear, :final gender) =>
        'خدمة (${studyYear?.name ?? 'جميع السنوات الدراسية'} ${gender == null
            ? 'بنين و بنات'
            : gender
            ? 'بنين'
            : 'بنات'} فقط)',
      UserAdminScope(object: Group()) => 'مجموعة',
      _ => '',
    };

    return ListTileTheme.merge(
      contentPadding: const EdgeInsets.symmetric(horizontal: 6),
      child: ExpansionTile(
        title: Row(
          children: [
            Expanded(
              child: IgnorePointer(
                child: ViewableObjectWidget(
                  userAdminScope.object,
                  isDense: true,
                  forceShowSecondLine: false,
                  wrapInCard: false,
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
          if (userAdminScope.object case Service(
            :final studyYearFrom,
            :final studyYearTo,
          ))
            Row(
              spacing: 2,
              children: [
                Expanded(
                  flex: 3,
                  child: ObjectSelectionField(
                    listController: (s) => ViewableObjectListController(
                      objectsPaginatableStream: DatabaseService
                          .I
                          .metadata
                          .studyYears
                          .streamAll(
                            searchQuery: s,
                            where: Stream.value([
                              if (studyYearFrom != null)
                                Filter(
                                  StudyYearFields().order,
                                  PrimitiveOperator.gte,
                                  studyYearFrom.order,
                                ),
                              if (studyYearTo != null)
                                Filter(
                                  StudyYearFields().order,
                                  PrimitiveOperator.lte,
                                  studyYearTo.order,
                                ),
                            ]),
                          ),
                    ),
                    builder: (context, state) => state.value != null
                        ? Text(state.value?.name ?? '')
                        : const Text('جميع السنوات الدراسية في الخدمة'),
                    initialValue: userAdminScope.studyYear,
                    dialogFieldLabel: 'السنة الدراسية',
                    decoration: const InputDecoration(labelText: ''),
                    onChanged: (value) => onChanged(
                      userAdminScope.copyWith(
                        studyYear: value,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: GenderField(
                    type: GenderFieldType.dropdown,
                    nullable: true,
                    nullLabel: 'بنين و بنات',
                    maleLabel: 'بنين',
                    femaleLabel: 'بنات',
                    initialValue: userAdminScope.gender,
                    onChanged: (value) => onChanged(
                      userAdminScope.copyWith(
                        gender: value,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          CheckboxListTile(
            dense: true,
            enabled: userAdminScope.canWriteData,
            secondary: Icon(UserPermission.manageAllUsers.icon),
            title: const Text('ادارة المستخدمين'),
            subtitle: Text(
              'السماح بإضافة وتعديل وحذف المستخدمين في نفس ال$objectLabel',
            ),
            value: userAdminScope.canManageUsers,
            onChanged: (value) => onChanged(
              userAdminScope.copyWith(
                canManageUsers: value,
              ),
            ),
          ),
          CheckboxListTile(
            dense: true,
            secondary: Icon(UserPermission.writeAllData.icon),
            title: const Text('تعديل البيانات'),
            subtitle: Text(
              'السماح بتعديل جميع البيانات داخل ال$objectLabel',
            ),
            value: userAdminScope.canWriteData,
            onChanged: (value) => onChanged(
              userAdminScope.copyWith(
                canWriteData: value,
              ),
            ),
          ),
          if (userAdminScope.object case Service() || Group())
            CheckboxListTile(
              dense: true,
              secondary: Icon(UserPermission.recordAllAttendance.icon),
              title: const Text('تسجيل الحضور لجميع المخدومين'),
              subtitle: Text(
                'السماح بتسجيل الحضور لجميع المخدومين في ال$objectLabel',
              ),
              value: userAdminScope.canRecordAttendance,
              onChanged: (value) => onChanged(
                userAdminScope.copyWith(
                  canRecordAttendance: value,
                ),
              ),
            ),
          if (userAdminScope.object case Service() || Group())
            CheckboxListTile(
              dense: true,
              secondary: Icon(UserPermission.recordAllServantsAttendance.icon),
              title: const Text('تسجيل الحضور لجميع الخدام'),
              subtitle: Text(
                'السماح بتسجيل الحضور لجميع الخدام في ال$objectLabel',
              ),
              value: userAdminScope.canRecordServantsAttendance,
              onChanged: (value) => onChanged(
                userAdminScope.copyWith(
                  canRecordServantsAttendance: value,
                ),
              ),
            ),
          CheckboxListTile(
            dense: true,
            secondary: Icon(UserPermission.exportAllData.icon),
            title: const Text('تصدير البيانات'),
            subtitle: Text(
              'السماح بتصدير جميع البيانات داخل ال$objectLabel',
            ),
            value: userAdminScope.canExportData,
            onChanged: (value) => onChanged(
              userAdminScope.copyWith(
                canExportData: value,
              ),
            ),
          ),
          if (userAdminScope.object case Service() || Group())
            CheckboxListTile(
              dense: true,
              secondary: Icon(
                ViewableObjectService.I.getDefaultIconFor<Family>(),
              ),
              title: const Text('رؤية وتعديل عائلات المخدومين'),
              subtitle: Text(
                'السماح برؤية وتعديل جميع أفراد عائلات المخدومين في ال$objectLabel',
              ),
              value: userAdminScope.canWriteRelatedFamilies,
              onChanged: (value) => onChanged(
                userAdminScope.copyWith(
                  canWriteRelatedFamilies: value,
                ),
              ),
            ),
          if (onDuplicate != null)
            FilledButton.tonalIcon(
              onPressed: onDuplicate,
              icon: const Icon(Symbols.content_copy),
              label: const Text('نسخ الأمانة'),
            ),
          FilledButton.tonalIcon(
            style: FilledButton.styleFrom(
              backgroundColor: ColorScheme.of(context).errorContainer,
              foregroundColor: ColorScheme.of(context).onErrorContainer,
            ),
            onPressed: onDelete,
            icon: const Icon(Symbols.cancel),
            label: const Text('إزالة الأمانة'),
          ),
        ],
      ),
    );
  }

  final void Function()? onDuplicate;
}
