import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';

class HomeModeSelector extends StatelessWidget {
  final void Function(HomeMode) onModeChanged;

  const HomeModeSelector({required this.onModeChanged, super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    final size = MediaQuery.sizeOf(context);

    return Scaffold(
      body: ListView(
        children: [
          Image.asset(
            'assets/images/High way to God 1.png',
            height: size.height * 0.24,
            fit: BoxFit.fill,
          ),
          Container(
            padding: const EdgeInsets.only(
              left: 7,
              right: 7,
              top: 9,
              bottom: 22,
            ),
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
                GestureDetector(
                  onTap: () {},
                  child: Column(
                    spacing: 6,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ColoredBox(
                        color: themeData.colorScheme.primaryContainer,
                        child: Center(
                          child: Text(
                            'الايه',
                            style: themeData.textTheme.headlineSmall?.copyWith(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        '“أَمَا أَمَرْتُكَ؟ تَشَدَّدْ وَتَشَجَّعْ! لاَ تَرْهَبْ وَلاَ تَرْتَعِبْ لأَنَّ الرَّبَّ إِلهَكَ مَعَكَ حَيْثُمَا تَذْهَبُ.” (يشوع 9:1)',
                        textAlign: TextAlign.center,
                        style: themeData.textTheme.headlineSmall?.copyWith(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Column(
                    spacing: 6,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ColoredBox(
                        color: themeData.colorScheme.primaryContainer,
                        child: Center(
                          child: Text(
                            'السنكسار',
                            style: themeData.textTheme.headlineSmall?.copyWith(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        'الخميس, 18 يوليو 2024 --- 11 أبيب 1740\n+ استشهاد القديس يوحنا وسمعان ابن عمه +\n+ نياحة القديس أشعيا المتوحد +',
                        textAlign: TextAlign.center,
                        style: themeData.textTheme.headlineSmall?.copyWith(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Column(
                    spacing: 6,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ColoredBox(
                        color: themeData.colorScheme.primaryContainer,
                        child: Center(
                          child: Text(
                            'اقوال اباء',
                            style: themeData.textTheme.headlineSmall?.copyWith(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        'ليست خطيئةٌ بلا مغفرةٍ، إلا التي بلا توبة.\nوليست موهبةٌ بلا زيادةٍ، إلا التي بلا شُكر.\nالقديس إسحق السوري (السرياني)',
                        textAlign: TextAlign.center,
                        style: themeData.textTheme.headlineSmall?.copyWith(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 16,
              right: 16,
              top: 25,
            ),
            child: Row(
              spacing: 16,
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () => onModeChanged(HomeMode.churchData),
                    child: AspectRatio(
                      aspectRatio: 0.97,
                      child: Card(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              'assets/images/church_data.png',
                              fit: BoxFit.cover,
                            ),
                            Text(
                              'أسرة ابونا بيشوى كامل للافتفاد',
                              textAlign: TextAlign.center,
                              style:
                                  themeData.textTheme.headlineSmall?.copyWith(
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () => onModeChanged(HomeMode.sundaySchool),
                    child: AspectRatio(
                      aspectRatio: 0.98,
                      child: Card(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Image.asset(
                              'assets/images/sunday_school_services_image.png',
                              fit: BoxFit.cover,
                            ),
                            Text(
                              'خدمات مدارس الاحد ',
                              textAlign: TextAlign.center,
                              style:
                                  themeData.textTheme.headlineSmall?.copyWith(
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
