import 'package:source_gen/source_gen.dart';

final class QueryableOptions {
  final Map<String, String> labelsOverrides;
  final Set<String> ignoredFields;
  final List<RegExp> ignoredFieldPatterns;
  final bool isExtensible;

  QueryableOptions.fromAnnotation(ConstantReader annotation)
    : labelsOverrides = {
        for (final MapEntry(:key, :value)
            in annotation.read('labelsOverrides').mapValue.entries)
          if ((key?.toStringValue(), value?.toStringValue()) case (
            final name?,
            final label?,
          ))
            name: label,
      },
      ignoredFields = annotation
          .read('ignoreFields')
          .listValue
          .map((e) => e.toStringValue())
          .nonNulls
          .toSet(),
      ignoredFieldPatterns = annotation
          .read('regexIgnoreFields')
          .listValue
          .map((e) => e.toStringValue())
          .nonNulls
          .map(RegExp.new)
          .toList(),
      isExtensible = annotation.read('allowExtension').boolValue;

  bool isIgnored(String fieldName) =>
      ignoredFields.contains(fieldName) ||
      ignoredFieldPatterns.any((p) => p.hasMatch(fieldName));
}
