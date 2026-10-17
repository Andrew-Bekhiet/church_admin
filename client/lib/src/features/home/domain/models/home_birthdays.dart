import 'package:church_admin/church_admin.dart';
import 'package:equatable/equatable.dart';

class HomeBirthdays extends Equatable {
  static const int _previewedNamesCount = 3;

  final List<String> names;
  final AdvancedQuery? query;

  bool get isEmpty => names.isEmpty;

  String get preview {
    final shown = names.take(_previewedNamesCount).join('، ');

    return names.length > _previewedNamesCount ? '$shown، ...' : shown;
  }

  @override
  List<Object?> get props => [names, query];

  const HomeBirthdays({required this.names, this.query});
}
