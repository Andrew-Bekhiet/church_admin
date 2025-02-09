import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';

class HomeModeSelector extends StatelessWidget {
  final HomeController homeController;

  const HomeModeSelector({required this.homeController, super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    final size = MediaQuery.sizeOf(context);

    return ListView(
      children: [
        Image.asset(
          'assets/images/High way to God 1.png',
          height: size.height * 0.24,
          fit: BoxFit.fill,
        ),
        Container(
          padding: const EdgeInsets.only(left: 7, right: 7, top: 9, bottom: 22),
          margin: const EdgeInsets.only(left: 16, right: 16, top: 14),
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            color: themeData.colorScheme.primary.withAlpha(100),
            shape: RoundedRectangleBorder(
              side: BorderSide(
                color: themeData.colorScheme.primary,
              ),
              borderRadius: const BorderRadius.all(Radius.circular(10)),
            ),
          ),
          child: Column(
            spacing: 6,
            children: [
              HomeModeSection(
                onTap: () {},
                title: 'الايه',
                text:
                    '“أَمَا أَمَرْتُكَ؟ تَشَدَّدْ وَتَشَجَّعْ! لاَ تَرْهَبْ وَلاَ تَرْتَعِبْ لأَنَّ الرَّبَّ إِلهَكَ مَعَكَ حَيْثُمَا تَذْهَبُ.” (يشوع 9:1)',
              ),
              HomeModeSection(
                onTap: () {},
                title: 'السنكسار',
                text:
                    'الخميس, 18 يوليو 2024 --- 11 أبيب 1740\n+ استشهاد القديس يوحنا وسمعان ابن عمه +\n+ نياحة القديس أشعيا المتوحد +',
              ),
              HomeModeSection(
                onTap: () {},
                title: 'اقوال اباء',
                text:
                    'ليست خطيئةٌ بلا مغفرةٍ، إلا التي بلا توبة.\nوليست موهبةٌ بلا زيادةٍ، إلا التي بلا شُكر.\nالقديس إسحق السوري (السرياني)',
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 25),
          child: IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              spacing: 16,
              children: [
                HomeModeCard(
                  onTap: () => homeController
                    ..onModeChanged(HomeMode.churchData)
                    ..onTabIndexChanged(1),
                  assetName: 'assets/images/church_data.png',
                  title: 'أسرة ابونا بيشوى كامل للافتفاد',
                ),
                HomeModeCard(
                  onTap: () => homeController
                    ..onModeChanged(HomeMode.sundaySchool)
                    ..onTabIndexChanged(1),
                  assetName: 'assets/images/sunday_school_services_image.png',
                  title: 'خدمات مدارس الاحد',
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
