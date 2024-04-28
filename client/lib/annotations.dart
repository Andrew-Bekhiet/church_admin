import 'package:meta/meta_meta.dart';

@Target({TargetKind.classType})
final class TypeMetadata {
  final Map<String, String> labelsOverrides;
  final List<String> ignoreFields;
  final List<String> regexIgnoreFields;
  final Map<String, Type> addFields;

  const TypeMetadata({
    this.labelsOverrides = const {},
    this.ignoreFields = const ['blurhash'],
    this.regexIgnoreFields = const [r'^.+Id$'],
    this.addFields = const {},
  });
}
