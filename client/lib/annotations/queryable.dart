import 'package:meta/meta_meta.dart';

@Target({TargetKind.classType})
final class Queryable {
  final Map<String, String> labelsOverrides;
  final List<String> ignoreFields;
  final List<String> regexIgnoreFields;
  final bool allowExtension;
  final String classLabel;

  const Queryable({
    required this.classLabel,
    this.labelsOverrides = const {},
    this.ignoreFields = const ['blurhash'],
    this.regexIgnoreFields = const [r'^.+Id$'],
    this.allowExtension = false,
  });
}
