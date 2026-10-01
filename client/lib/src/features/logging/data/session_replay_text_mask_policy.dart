import 'package:flutter/widgets.dart';
import 'package:posthog_flutter/posthog_flutter.dart';

abstract final class SessionReplayTextMaskPolicy {
  static final RegExp _iconFontGlyph = RegExp(
    r'^[\u{E000}-\u{F8FF}\u{F0000}-\u{10FFFD}]$',
    unicode: true,
  );

  static PostHogTextMask revealIconGlyphs(String text, Widget widget) =>
      widget is RichText && _iconFontGlyph.hasMatch(text)
      ? const PostHogTextMask.none()
      : const PostHogTextMask.all();
}
