import 'package:church_admin/church_admin.dart';
import 'package:church_admin_annotations/church_admin_annotations.dart';

@Queryable(label: 'الحالات الاجتماعية')
enum MartialStatus implements LabeledEnum {
  married('متزوج/متزوجة'),
  separated('منفصل/منفصلة'),
  divorced('مطلق/مطلقة'),
  widowed('أرمل/أرملة مع أبناء'),
  widowedWithoutChildren('أرمل/أرملة بدون أبناء'),
  single('عازب/عزباء');

  static MartialStatus byName(String value) => values.byName(value);

  @override
  final String label;

  const MartialStatus(this.label);
}
