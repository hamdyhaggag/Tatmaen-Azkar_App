import 'package:flutter/material.dart';

import '../../Widgets/custom_app_bar.dart';
import '../../Widgets/custom_container.dart';

class Ahadith22 extends StatelessWidget {
  final String title;
  const Ahadith22({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: 'الطريق إلى الجنة '),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 15),
            CustomContainer(
                headtitle: 'الحديث الثاني و العشرون',
                title:
                    'عَنْ أَبيْ عَبْدِ اللهِ جَابِرِ بنِ عَبْدِ اللهِ الأَنْصَارِيِّ رضي الله عنه أَنَّ رَجُلاً سَأَلَ النبي ﷺ فَقَالَ: (أَرَأَيتَ إِذا صَلَّيْتُ المَكْتُوبَاتِ، وَصُمْتُ رَمَضانَ، وَأَحلَلتُ الحَلاَلَ، وَحَرَّمْتُ الحَرَامَ، وَلَمْ أَزِدْ عَلى ذَلِكَ شَيئاً أَدخُلالجَنَّة ؟ قَالَ: نَعَمْ) \nرواه مسلم',
                maxValue: 1),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
