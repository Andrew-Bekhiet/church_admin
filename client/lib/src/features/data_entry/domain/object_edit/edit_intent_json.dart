import 'package:church_admin/church_admin.dart';

abstract final class EditIntentJson {
  static const String kindKey = 'kind';
  static const String subjectKey = 'subject';

  static Json subjectOf(Json json, {required String intentName}) =>
      switch (json[subjectKey]) {
        final Map<Object?, Object?> map => Map<String, Object?>.from(map),
        _ => throw FormatException(
          '$intentName kind "${json[kindKey]}" has no subject',
        ),
      };

  static Json ofKind(String kind, [ToJson? subject]) => {
    kindKey: kind,
    if (subject != null) subjectKey: subject.toJson(),
  };
}
