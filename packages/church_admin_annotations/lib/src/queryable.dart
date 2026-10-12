import 'package:meta/meta_meta.dart';

/// Generates `<Class>Fields` metadata from the class's `QueryableField`s and
/// registers the class with the queryables registry.
@Target({TargetKind.classType, TargetKind.enumType})
final class Queryable {
  final String label;

  /// The GraphQL name of the `QueryableField` the cache identifies objects
  /// by. `null` uses the `id` field when there is one.
  final String? keyField;

  /// Generates a private `_<Class>Fields` base for a hand-written
  /// `<Class>Fields` to extend, instead of a ready-made singleton.
  final bool extensible;

  const Queryable({
    required this.label,
    this.keyField,
    this.extensible = false,
  });
}
