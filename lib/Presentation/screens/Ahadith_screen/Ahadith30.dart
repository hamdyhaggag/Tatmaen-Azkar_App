import 'package:flutter/material.dart';
import 'package:tatmaen/imports.dart';

class Ahadith30 extends StatelessWidget {
  final String title;
  const Ahadith30({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: 'الوقوف عند حدود الشرع '),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 15),
            CustomContainer(
                headtitle: 'الحديث الثلاثون',
                title:
                    'عَنْ أَبِيْ ثَعْلَبَةَ الخُشَنِيِّ جُرثُومِ بنِ نَاشِرٍ رضي الله عنه عَن رَسُولِ اللهِ ﷺ قَالَ: (إِنَّ اللهَ فَرَضَ فَرَائِضَ فَلا تُضَيِّعُوهَا، وَحَدَّ حُدُودَاً فَلا تَعْتَدُوهَا وَحَرَّمَ أَشْيَاءَ فَلا تَنْتَهِكُوهَا، وَسَكَتَ عَنْ أَشْيَاءَ رَحْمَةً لَكُمْ غَيْرَ نِسْيَانٍ فَلا تَبْحَثُوا عَنْهَا) \nحديث حسن رواه الدارقطني وغيره. ',
                maxValue: 1),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
