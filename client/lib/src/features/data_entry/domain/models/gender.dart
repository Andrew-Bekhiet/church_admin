import 'package:church_admin/church_admin.dart';

enum Gender implements LabeledEnum {
  male('ذكر', groupLabel: 'بنين'),
  female('أنثى', groupLabel: 'بنات'),
  any('غير محدد', groupLabel: 'بنين و بنات');

  static Gender fromIsMale(bool? isMale) => switch (isMale) {
    true => male,
    false => female,
    null => any,
  };

  @override
  final String label;

  /// How people of this gender are named together, as in a class or a
  /// service scope.
  final String groupLabel;

  bool? get isMale => switch (this) {
    male => true,
    female => false,
    any => null,
  };

  bool get canBeShammas => this == male;

  const Gender(this.label, {required this.groupLabel});

  bool overlaps(Gender other) => this == any || other == any || this == other;
}
