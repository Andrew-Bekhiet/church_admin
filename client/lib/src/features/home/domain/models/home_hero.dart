import 'package:church_admin/church_admin.dart';
import 'package:equatable/equatable.dart';

class HomeHero extends Equatable {
  final String imageAsset;
  final bool showsSnowfall;

  @override
  List<Object?> get props => [imageAsset, showsSnowfall];

  const HomeHero({required this.imageAsset, required this.showsSnowfall});

  factory HomeHero.forSeason(LiturgySeason? season) => HomeHero(
    imageAsset: switch (season) {
      LiturgySeason.holyWeek => 'assets/holyweek.jpeg',
      LiturgySeason.pentecost => 'assets/risen.jpg',
      LiturgySeason.christmas || null => 'assets/images/home-screen.jpg',
    },
    showsSnowfall: season == LiturgySeason.christmas,
  );
}
