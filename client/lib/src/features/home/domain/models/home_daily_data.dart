import 'package:church_admin/church_admin.dart';
import 'package:equatable/equatable.dart';

class HomeDailyData extends Equatable {
  final String verse;
  final String sneksar;
  final String saying;

  @override
  List<Object?> get props => [verse, sneksar, saying];

  const HomeDailyData({
    required this.verse,
    required this.sneksar,
    required this.saying,
  });

  HomeDailyData copyWithNewText({
    required HomeDailyDataType type,
    required String text,
  }) {
    return HomeDailyData(
      verse: type == HomeDailyDataType.verse ? text : verse,
      sneksar: type == HomeDailyDataType.sneksar ? text : sneksar,
      saying: type == HomeDailyDataType.saying ? text : saying,
    );
  }

  String select(HomeDailyDataType type) => switch (type) {
    HomeDailyDataType.verse => verse,
    HomeDailyDataType.sneksar => sneksar,
    HomeDailyDataType.saying => saying,
  };
}
