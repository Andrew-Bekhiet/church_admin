import 'dart:ui' as ui;

class Color {
  final int value;
  const Color(this.value);

  int get argbValue => value;

  ui.Color toUiColor() {
    return ui.Color(value);
  }
}
