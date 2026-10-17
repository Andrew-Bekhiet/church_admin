import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('$HomeHero for a season', () {
    test('holy week shows the holy week image', () {
      final hero = HomeHero.forSeason(LiturgySeason.holyWeek);

      expect(hero.imageAsset, 'assets/holyweek.jpeg');
    });

    test('pentecost shows the risen image', () {
      final hero = HomeHero.forSeason(LiturgySeason.pentecost);

      expect(hero.imageAsset, 'assets/risen.jpg');
    });

    test('christmas shows the usual image', () {
      final hero = HomeHero.forSeason(LiturgySeason.christmas);

      expect(hero.imageAsset, 'assets/images/home-screen.jpg');
    });

    test('no season shows the usual image', () {
      final hero = HomeHero.forSeason(null);

      expect(hero.imageAsset, 'assets/images/home-screen.jpg');
    });

    test('only christmas shows snowfall', () {
      final snowingSeasons = [
        for (final season in [...LiturgySeason.values, null])
          if (HomeHero.forSeason(season).showsSnowfall) season,
      ];

      expect(snowingSeasons, [LiturgySeason.christmas]);
    });
  });
}
