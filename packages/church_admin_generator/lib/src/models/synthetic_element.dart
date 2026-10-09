import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';

class SyntheticElement {
  final Element? element;
  final String name;
  final DartType type;

  SyntheticElement({required this.name, required this.type, this.element});
}
