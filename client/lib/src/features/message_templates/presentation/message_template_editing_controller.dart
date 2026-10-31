import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';
import 'package:material_ui/material_ui.dart';

class MessageTemplateEditingController extends TextEditingController {
  static const int _firstPlaceholderCodeUnit = 0xE000;

  final List<FieldMetadata> fields;
  late final RegExp _placeholderCharacterPattern = RegExp(
    _placeholderCharacterClass,
    unicode: true,
  );
  late final RegExp _marksAfterPlaceholderCharacterPattern = RegExp(
    '($_placeholderCharacterClass)\\p{M}+',
    unicode: true,
  );

  MessageTemplate get template => MessageTemplate(
    text: text.replaceAllMapped(
      _placeholderCharacterPattern,
      (match) => switch (_fieldOfPlaceholderCharacter(match[0])) {
        final field? => MessageTemplate.tokenOf(field),
        null => '',
      },
    ),
    fields: fields,
  );

  @override
  set value(TextEditingValue newValue) =>
      super.value = _withPlaceholdersKeptWhole(newValue);

  String get _placeholderCharacterClass {
    if (fields.isEmpty) return '(?!)';

    final lastPlaceholderCodeUnit =
        _firstPlaceholderCodeUnit + fields.length - 1;

    return '[\\u{E000}-\\u{${lastPlaceholderCodeUnit.toRadixString(16)}}]';
  }

  MessageTemplateEditingController({required MessageTemplate template})
    : fields = template.fields {
    value = TextEditingValue(text: template.text);
  }

  void insertPlaceholder(FieldMetadata field) {
    final selection = this.selection.isValid
        ? this.selection
        : TextSelection.collapsed(offset: text.length);

    value = TextEditingValue(
      text:
          selection.textBefore(text) +
          _placeholderCharacterOf(field) +
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
    if (!_placeholderCharacterPattern.hasMatch(text)) {
      return super.buildTextSpan(
        context: context,
        style: style,
        withComposing: withComposing,
      );
    }

    final composingRange = withComposing && value.isComposingRangeValid
        ? value.composing
        : TextRange.empty;
    final children = <InlineSpan>[];
    var offset = 0;
    text.splitMapJoin(
      _placeholderCharacterPattern,
      onMatch: (match) {
        children.add(
          WidgetSpan(
            alignment: PlaceholderAlignment.middle,
            child: PlaceholderChip(
              label: _fieldOfPlaceholderCharacter(match[0])?.label ?? '',
            ),
          ),
        );
        offset += match[0]?.length ?? 0;

        return '';
      },
      onNonMatch: (run) {
        children.addAll(
          _spansUnderliningComposing(run, offset, composingRange),
        );
        offset += run.length;

        return '';
      },
    );

    return TextSpan(style: style, children: children);
  }

  List<TextSpan> _spansUnderliningComposing(
    String run,
    int runStart,
    TextRange composingRange,
  ) {
    final composingStart = (composingRange.start - runStart).clamp(
      0,
      run.length,
    );
    final composingEnd = (composingRange.end - runStart).clamp(
      0,
      run.length,
    );
    final composesInsideRun =
        composingRange.isValid && composingStart < composingEnd;

    if (!composesInsideRun) return [TextSpan(text: run)];

    return [
      TextSpan(text: run.substring(0, composingStart)),
      TextSpan(
        text: run.substring(composingStart, composingEnd),
        style: const TextStyle(decoration: TextDecoration.underline),
      ),
      TextSpan(text: run.substring(composingEnd)),
    ];
  }

  FieldMetadata? _fieldOfPlaceholderCharacter(String? character) =>
      switch (character?.codeUnitAt(0)) {
        final codeUnit? => fields.elementAtOrNull(
          codeUnit - _firstPlaceholderCodeUnit,
        ),
        null => null,
      };

  TextEditingValue _withPlaceholdersKeptWhole(TextEditingValue value) {
    final withoutMarksOnPlaceholders = _replacingAll(
      value,
      _marksAfterPlaceholderCharacterPattern,
      (match) => match[1] ?? '',
    );

    final composing = withoutMarksOnPlaceholders.composing;
    final isComposing = composing.isValid && !composing.isCollapsed;

    if (!isComposing) {
      return _withTokensAsPlaceholderCharacters(withoutMarksOnPlaceholders);
    }

    final composingCoversPlaceholder = _placeholderCharacterPattern.hasMatch(
      composing.textInside(withoutMarksOnPlaceholders.text),
    );

    return composingCoversPlaceholder
        ? withoutMarksOnPlaceholders.copyWith(composing: TextRange.empty)
        : withoutMarksOnPlaceholders;
  }

  TextEditingValue _withTokensAsPlaceholderCharacters(TextEditingValue value) =>
      _replacingAll(
        value,
        MessageTemplate.tokenPattern,
        (match) => switch (_fieldNamedOrLabelled(match[1])) {
          final field? => _placeholderCharacterOf(field),
          null => match[0] ?? '',
        },
      );

  FieldMetadata? _fieldNamedOrLabelled(String? nameOrLabel) =>
      fields.firstWhereOrNull(
        (field) => field.name == nameOrLabel || field.label == nameOrLabel,
      );

  String _placeholderCharacterOf(FieldMetadata field) =>
      String.fromCharCode(_firstPlaceholderCodeUnit + fields.indexOf(field));

  TextEditingValue _replacingAll(
    TextEditingValue value,
    RegExp pattern,
    String Function(Match match) replacementOf,
  ) {
    final text = value.text;
    final replacements = <TextReplacement>[
      for (final match in pattern.allMatches(text))
        if (replacementOf(match) case final replacement
            when replacement != match[0])
          TextReplacement(
            start: match.start,
            end: match.end,
            text: replacement,
          ),
    ];
    if (replacements.isEmpty) return value;

    final buffer = StringBuffer();
    var copiedUpTo = 0;
    for (final replacement in replacements) {
      buffer
        ..write(text.substring(copiedUpTo, replacement.start))
        ..write(replacement.text);
      copiedUpTo = replacement.end;
    }
    buffer.write(text.substring(copiedUpTo));

    return TextEditingValue(
      text: buffer.toString(),
      selection: value.selection.isValid
          ? value.selection.copyWith(
              baseOffset: _offsetAfterReplacements(
                value.selection.baseOffset,
                replacements,
              ),
              extentOffset: _offsetAfterReplacements(
                value.selection.extentOffset,
                replacements,
              ),
            )
          : value.selection,
      composing: value.composing.isValid
          ? TextRange(
              start: _offsetAfterReplacements(
                value.composing.start,
                replacements,
              ),
              end: _offsetAfterReplacements(value.composing.end, replacements),
            )
          : value.composing,
    );
  }

  int _offsetAfterReplacements(int offset, List<TextReplacement> replacements) {
    var shift = 0;
    for (final replacement in replacements) {
      if (offset <= replacement.start) break;
      if (offset < replacement.end) {
        return replacement.start + shift + replacement.text.length;
      }

      shift += replacement.text.length - (replacement.end - replacement.start);
    }

    return offset + shift;
  }
}
