import 'package:church_admin/annotations/queryable.dart';
import 'package:church_admin/church_admin.dart';

@Queryable(classLabel: 'الحالات الاجتماعية')
enum MartialStatus implements LabeledEnum {
  married('متزوجين'),
  separated('منفصلين'),
  divorced('مطلقين'),
  widowed('أرامل');

  static MartialStatus byName(String value) => values.byName(value);

  @override
  final String label;

  const MartialStatus(this.label);
}
