import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';
import 'package:material_ui/material_ui.dart';

class PlaceholderTextEditingController extends TextEditingController {
  static const int _firstPlaceholderCodeUnit = 0xE000;
  static final RegExp _placeholderCharacter = RegExp(
    r'[\u{E000}-\u{F8FF}]',
    unicode: true,
  );
  static final RegExp _combiningMarksAfterPlaceholder = RegExp(
    r'([\u{E000}-\u{F8FF}])\p{M}+',
    unicode: true,
  );

  static TextEditingValue _withTokensAsPlaceholders(
    TextEditingValue value,
    List<FieldMetadata> fields,
  ) => _replacingAll(
    value,
    MessageTemplate.tokenPattern,
    (match) => switch (_fieldMatchingToken(fields, match[1])) {
      final field? => _characterOf(fields, field),
      null => match[0] ?? '',
    },
  );

  static FieldMetadata? _fieldMatchingToken(
    List<FieldMetadata> fields,
    String? token,
  ) => fields.firstWhereOrNull(
    (field) => field.name == token || field.label == token,
  );

  static String _characterOf(List<FieldMetadata> fields, FieldMetadata field) =>
      String.fromCharCode(_firstPlaceholderCodeUnit + fields.indexOf(field));

  static TextEditingValue _replacingAll(
    TextEditingValue value,
    RegExp pattern,
    String Function(Match match) replacementOf,
  ) {
    final text = value.text;
    final edits = <({int start, int end, String replacement})>[
      for (final match in pattern.allMatches(text))
        if (replacementOf(match) case final replacement
            when replacement != match[0])
          (start: match.start, end: match.end, replacement: replacement),
    ];
    if (edits.isEmpty) return value;

    final buffer = StringBuffer();
    var copiedUpTo = 0;
    for (final edit in edits) {
      buffer
        ..write(text.substring(copiedUpTo, edit.start))
        ..write(edit.replacement);
      copiedUpTo = edit.end;
    }
    buffer.write(text.substring(copiedUpTo));

    return TextEditingValue(
      text: buffer.toString(),
      selection: value.selection.isValid
          ? value.selection.copyWith(
              baseOffset: _offsetAfterEdits(value.selection.baseOffset, edits),
              extentOffset: _offsetAfterEdits(
                value.selection.extentOffset,
                edits,
              ),
            )
          : value.selection,
      composing: value.composing.isValid
          ? TextRange(
              start: _offsetAfterEdits(value.composing.start, edits),
              end: _offsetAfterEdits(value.composing.end, edits),
            )
          : value.composing,
    );
  }

  static int _offsetAfterEdits(
    int offset,
    List<({int start, int end, String replacement})> edits,
  ) {
    var shift = 0;
    for (final edit in edits) {
      if (offset <= edit.start) break;
      if (offset < edit.end) {
        return edit.start + shift + edit.replacement.length;
      }

      shift += edit.replacement.length - (edit.end - edit.start);
    }

    return offset + shift;
  }

  final List<FieldMetadata> fields;

  MessageTemplate get template => MessageTemplate(
    text: text.replaceAllMapped(
      _placeholderCharacter,
      (match) => switch (_fieldShownAs(match[0])) {
        final field? => MessageTemplate.tokenOf(field),
        null => '',
      },
    ),
    fields: fields,
  );

  @override
  set value(TextEditingValue newValue) => super.value = _sanitized(newValue);

  PlaceholderTextEditingController({required MessageTemplate template})
    : fields = template.fields,
      super.fromValue(
        _withTokensAsPlaceholders(
          TextEditingValue(text: template.text),
          template.fields,
        ),
      );

  void insertPlaceholder(FieldMetadata field) {
    final selection = this.selection.isValid
        ? this.selection
        : TextSelection.collapsed(offset: text.length);

    value = TextEditingValue(
      text:
          selection.textBefore(text) +
          _characterOf(fields, field) +
          selection.textAfter(text),
      selection: TextSelection.collapsed(offset: selection.start + 1),
    );
  }

  @override
  TextSpan buildTextSpan({
    required BuildContext context,
    required bool withComposing,
    TextStyle? style,
  }) {
    if (!_placeholderCharacter.hasMatch(text)) {
      return super.buildTextSpan(
        context: context,
        style: style,
        withComposing: withComposing,
      );
    }

    final children = <InlineSpan>[];
    text.splitMapJoin(
      _placeholderCharacter,
      onMatch: (match) {
        children.add(
          WidgetSpan(
            alignment: PlaceholderAlignment.middle,
            child: PlaceholderChip(label: _fieldShownAs(match[0])?.label ?? ''),
          ),
        );

        return '';
      },
      onNonMatch: (plainText) {
        children.add(TextSpan(text: plainText));

        return '';
      },
    );

    return TextSpan(style: style, children: children);
  }

  FieldMetadata? _fieldShownAs(String? character) =>
      switch (character?.codeUnitAt(0)) {
        final codeUnit? => fields.elementAtOrNull(
          codeUnit - _firstPlaceholderCodeUnit,
        ),
        null => null,
      };

  TextEditingValue _sanitized(TextEditingValue value) {
    final withoutStrayCharacters = _replacingAll(
      _replacingAll(
        value,
        _combiningMarksAfterPlaceholder,
        (match) => match[1] ?? '',
      ),
      _placeholderCharacter,
      (match) => _fieldShownAs(match[0]) != null ? match[0] ?? '' : '',
    );

    final composing = withoutStrayCharacters.composing;
    final isComposing = composing.isValid && !composing.isCollapsed;

    if (!isComposing) {
      return _withTokensAsPlaceholders(withoutStrayCharacters, fields);
    }

    final composingCoversPlaceholder = _placeholderCharacter.hasMatch(
      composing.textInside(withoutStrayCharacters.text),
    );

    return composingCoversPlaceholder
        ? withoutStrayCharacters.copyWith(composing: TextRange.empty)
        : withoutStrayCharacters;
  }
}
