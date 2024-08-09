import 'package:flutter/material.dart';
import 'package:tatmaen/imports.dart';

class Ahadith17 extends StatelessWidget {
  final String title;
  const Ahadith17({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: 'الرفق بالحيوان '),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 15),
            CustomContainer(
                headtitle: 'الحديث السابع عشر',
                title:
                    'عَنْ أَبِي يَعْلَى شَدَّادِ بنِ أَوْسٍ رَضِيَ اللهُ تَعَالَى عَنْهُ عَنْ رَسُولِ اللهِ ﷺ قَالَ: (إِنَّ اللهَ كَتَبَ الإِحْسَانَ عَلَى كُلِّ شَيءٍ. فَإِذَا قَتَلْتُمْ فَأَحْسِنُوا القِتْلَةَ، وَإِذَا ذَبَحْتُمْ فَأَحْسِنُوا الذِّبْحَةَ، وَلْيُحِدَّ أَحَدُكُمْ شَفْرَتَهُ، وَلْيُرِحْ ذَبِيْحَتَهُ) \nرواه مسلم',
                maxValue: 1),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
