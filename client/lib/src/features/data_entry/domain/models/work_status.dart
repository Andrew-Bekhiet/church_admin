import 'package:church_admin/church_admin.dart';
import 'package:church_admin_annotations/church_admin_annotations.dart';

@Queryable(label: 'حالات العمل')
enum WorkStatus implements LabeledEnum {
  student('طالب'),
  employed('يعمل'),
  unemployed('لا يعمل'),
  retired('متقاعد');

  static WorkStatus byName(String value) => values.byName(value);

  @override
  final String label;

  const WorkStatus(this.label);
}
