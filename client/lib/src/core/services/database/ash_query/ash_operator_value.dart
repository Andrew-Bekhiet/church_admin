import 'package:church_admin/church_admin.dart';

class AshOperatorValue {
  static T require<T extends Object>(Operator operator, Object? value) =>
      value is T
      ? value
      : throw ArgumentError.value(
          value,
          'value',
          '${operator.serializationId} needs a $T',
        );

  const AshOperatorValue._();
}
