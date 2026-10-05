import 'package:analyzer/dart/element/type.dart';
import 'package:analyzer/dart/element/type_visitor.dart';
import 'package:church_admin_generator/src/model/operator_family.dart';

final class OperatorFamilyVisitor extends UnifyingTypeVisitor<OperatorFamily?> {
  static const _multiSelectSupertypeNames = {'ViewableWithID', 'ID'};

  const OperatorFamilyVisitor();

  @override
  OperatorFamily? visitDartType(DartType type) => null;

  @override
  OperatorFamily? visitInterfaceType(InterfaceType type) {
    if (type.isDartCoreBool) return OperatorFamily.boolean;

    if (type.isDartCoreNum || type.isDartCoreInt || type.isDartCoreDouble) {
      return OperatorFamily.primitive;
    }

    if (type.isDartCoreString) return OperatorFamily.string;

    return switch (type.element.name) {
      'Color' => OperatorFamily.color,
      'DateTime' when type.element.library.isDartCore =>
        OperatorFamily.dateTime,
      _ => _supertypeFamily(type),
    };
  }

  OperatorFamily? _supertypeFamily(InterfaceType type) {
    final supertypes = type.allSupertypes;

    if (supertypes.any((s) => s.element.name == 'Spatial')) {
      return OperatorFamily.spatial;
    }

    final isMultiSelect = supertypes.any(
      (s) =>
          s.isDartCoreEnum ||
          _multiSelectSupertypeNames.contains(s.element.name),
    );

    return isMultiSelect ? OperatorFamily.multiSelect : null;
  }
}
