import 'package:equatable/equatable.dart';

final class ThemePreferences extends Equatable {
  final bool? darkTheme;
  final bool greatFeastTheme;

  @override
  List<Object?> get props => [darkTheme, greatFeastTheme];

  const ThemePreferences({
    required this.darkTheme,
    required this.greatFeastTheme,
  });
}
