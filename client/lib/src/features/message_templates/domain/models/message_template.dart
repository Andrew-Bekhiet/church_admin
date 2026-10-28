import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';
import 'package:equatable/equatable.dart';

class MessageTemplate with Equatable {
  static final RegExp tokenPattern = RegExp(r'\{([^{}]+)\}');

  static String tokenOf(FieldMetadata field) => '{${field.name}}';

  final String text;
  final List<FieldMetadata> fields;

  @override
  List<Object?> get props => [text, fields];

  const MessageTemplate({required this.text, required this.fields});

  FieldMetadata? fieldNamed(String name) =>
      fields.firstWhereOrNull((field) => field.name == name);

  String renderFor(Object item) => text.replaceAllMapped(
    tokenPattern,
    (match) => switch (fieldNamed(match[1] ?? '')) {
      final field? => field.getValue(item)?.toString() ?? '',
      null => match[0] ?? '',
    },
  );

  MessageTemplate copyWith({String? text}) =>
      MessageTemplate(text: text ?? this.text, fields: fields);
}
