import 'package:analyzer/dart/element/type.dart';
import 'package:analyzer/dart/element/type_visitor.dart';
import 'package:collection/collection.dart';

final class IterableElementTypeVisitor extends UnifyingTypeVisitor<DartType?> {
  const IterableElementTypeVisitor();

  @override
  DartType? visitDartType(DartType type) => null;

  @override
  DartType? visitInterfaceType(InterfaceType type) => [
    type,
    ...type.allSupertypes,
  ].firstWhereOrNull((t) => t.isDartCoreIterable)?.typeArguments.single;
}
