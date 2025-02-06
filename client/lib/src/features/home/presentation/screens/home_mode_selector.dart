import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';

class HomeModeSelector extends StatelessWidget {
  final void Function(HomeMode) onModeChanged;

  const HomeModeSelector({required this.onModeChanged, super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Scaffold(
      backgroundColor: themeData.colorScheme.secondary,
      body: Center(
        child: ListView(
          physics: const NeverScrollableScrollPhysics(),
          children: [
            Image.asset(
              'assets/images/High way to God 1.png',
              height: MediaQuery.of(context).size.height * 0.24,
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
              decoration: const ShapeDecoration(
                color: Color(0x96B38A58),
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: Color(0xFFB38A58),
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
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
                        Container(
                          width: MediaQuery.of(context).size.width,
                          color: themeData.colorScheme.primary,
                          child: Center(
                            child: Text(
                              'الايه',
                              style: themeData.textTheme.headlineSmall,
                            ),
                          ),
                        ),
                        Text(
                          '“أَمَا أَمَرْتُكَ؟ تَشَدَّدْ وَتَشَجَّعْ! لاَ تَرْهَبْ وَلاَ تَرْتَعِبْ لأَنَّ الرَّبَّ إِلهَكَ مَعَكَ حَيْثُمَا تَذْهَبُ.” (يشوع 9:1)',
                          textAlign: TextAlign.center,
                          style: themeData.textTheme.titleMedium?.copyWith(
                            color: Colors.black,
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
                        Container(
                          width: MediaQuery.of(context).size.width,
                          color: themeData.colorScheme.primary,
                          child: Center(
                            child: Text(
                              'السنكسار',
                              style: themeData.textTheme.headlineSmall,
                            ),
                          ),
                        ),
                        Text(
                          'الخميس, 18 يوليو 2024 --- 11 أبيب 1740\n+ استشهاد القديس يوحنا وسمعان ابن عمه +\n+ نياحة القديس أشعيا المتوحد +',
                          textAlign: TextAlign.center,
                          style: themeData.textTheme.titleMedium?.copyWith(
                            color: Colors.black,
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
                        Container(
                          width: MediaQuery.of(context).size.width,
                          color: themeData.colorScheme.primary,
                          child: Center(
                            child: Text(
                              'اقوال اباء',
                              style: themeData.textTheme.headlineSmall,
                            ),
                          ),
                        ),
                        Text(
                          'ليست خطيئةٌ بلا مغفرةٍ، إلا التي بلا توبة.\nوليست موهبةٌ بلا زيادةٍ، إلا التي بلا شُكر.\nالقديس إسحق السوري (السرياني)',
                          textAlign: TextAlign.center,
                          style: themeData.textTheme.titleMedium?.copyWith(
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () => onModeChanged(HomeMode.churchData),
                    child: AspectRatio(
                      aspectRatio: 0.98,
                      child: Image.asset(
                        'assets/images/church_data.png',
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () => onModeChanged(HomeMode.sundaySchool),
                    child: AspectRatio(
                      aspectRatio: 0.98,
                      child: Image.asset(
                        'assets/images/sunday_school_services_image.png',
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
