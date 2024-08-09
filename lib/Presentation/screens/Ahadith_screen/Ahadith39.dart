import 'package:flutter/material.dart';
import 'package:tatmaen/imports.dart';

class Ahadith39 extends StatelessWidget {
  final String title;
  const Ahadith39({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: 'التجاوز عن الخطأ والنسيان '),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 15),
            CustomContainer(
                headtitle: 'الحديث التاسع و الثلاثون',
                title:
                    'عَنِ ابْنِ عَبَّاسٍ رَضِيَ اللهُ عَنْهُمَا أَنَّ رَسُولَ اللهِ ﷺ قَال: (إِنَّ اللهَ تَجَاوَزَ لِي عَنْ أُمَّتِي الخَطَأَ وَالنِّسْيَانَ وَمَا اسْتُكْرِهُوا عَلَيْهِ) \nحديث حسن رواه ابن ماجه والبيهقي وغيرهما. ',
                maxValue: 1),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
