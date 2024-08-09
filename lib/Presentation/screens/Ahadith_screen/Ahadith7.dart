import 'package:flutter/material.dart';
import 'package:tatmaen/imports.dart';

class Ahadith7 extends StatelessWidget {
  final String title;
  const Ahadith7({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: 'الدين النصيحه '),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 15),
            CustomContainer(
                headtitle: 'الحديث السابع',
                title:
                    'عَنْ أَبِيْ رُقَيَّةَ تَمِيْم بْنِ أَوْسٍ الدَّارِيِّ رضي الله عنه أَنَّ النبي ﷺ قَالَ:( الدِّيْنُ النَّصِيْحَةُ قُلْنَا: لِمَنْ يَا رَسُولَ اللهِ ؟ قَالَ: للهِ، ولكتابه، ولِرَسُوْلِهِ، وَلأَئِمَّةِ المُسْلِمِيْنَ، وَعَامَّتِهِمْ \n(رواه مسلم).',
                maxValue: 1),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
