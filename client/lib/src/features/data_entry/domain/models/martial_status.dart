import 'package:church_admin/annotations/queryable.dart';
import 'package:church_admin/church_admin.dart';

@Queryable(classLabel: 'الحالات الاجتماعية')
enum MartialStatus implements LabeledEnum {
  married('متزوج/متزوجة'),
  separated('منفصل/منفصلة'),
  divorced('مطلق/مطلقة'),
  widowed('أرمل/أرملة'),
  single('عازب/عزباء');

  static MartialStatus byName(String value) => values.byName(value);

  @override
  final String label;

  const MartialStatus(this.label);
}
