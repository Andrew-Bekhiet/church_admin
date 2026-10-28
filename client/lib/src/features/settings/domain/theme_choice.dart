enum ThemeChoice {
  dark,
  light,
  system;

  static ThemeChoice of(bool? darkTheme) => switch (darkTheme) {
    true => dark,
    false => light,
    null => system,
  };
}
