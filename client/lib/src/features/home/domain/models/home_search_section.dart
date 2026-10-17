import 'package:church_admin/church_admin.dart';
import 'package:equatable/equatable.dart';

class HomeSearchSection extends Equatable {
  final String label;
  final List<ViewableWithIDAndImage> items;

  @override
  List<Object?> get props => [label, items];

  const HomeSearchSection({required this.label, required this.items});

  factory HomeSearchSection.ofType(
    Type type,
    List<ViewableWithIDAndImage> items,
  ) {
    return HomeSearchSection(
      label:
          AdvancedQueriesMetadata().allQueryablesByType[type]?.label ?? '$type',
      items: items,
    );
  }
}
