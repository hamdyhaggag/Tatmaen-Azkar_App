import 'package:flutter/material.dart';
import 'package:tatmaen/imports.dart';

class Ahadith37 extends StatelessWidget {
  final String title;
  const Ahadith37({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: 'الترغيب في فعل الحسنات '),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 15),
            CustomContainer(
                headtitle: 'الحديث السابع و الثلاثون',
                title:
                    ' عَن ابْنِ عَبَّاسٍ رَضِيَ اللهُ عَنْهُمَا عَنِ النبي ﷺ فِيْمَا يَرْوِيْهِ عَنْ رَبِّهِ تَبَارَكَ وَتَعَالى أَنَّهُ قَالَ: (إِنَّ الله كَتَبَ الحَسَنَاتِ وَالسَّيئَاتِ ثُمَّ بَيَّنَ ذَلِكَ؛ فَمَنْ هَمَّ بِحَسَنَةٍ فَلَمْ يَعْمَلْهَا كَتَبَهَا اللهُ عِنْدَهُ حَسَنَةً كَامِلَةً،وَإِنْ هَمَّ بِهَا فَعَمِلَهَا كَتَبَهَا اللهُ عِنْدَهُ عَشْرَ حَسَنَاتٍ إِلَى سَبْعِمائَةِ ضِعْفٍ إِلىَ أَضْعَاف كَثِيْرَةٍ. وَإِنْ هَمَّ بِسَيِّئَةٍ فَلَمْ يَعْمَلْهَا كَتَبَهَا اللهُ عِنْدَهُ حَسَنَةً كَامِلَةً،وَإِنْ هَمَّ بِهَا فَعَمِلَهَا كَتَبَهَا اللهُ سَيِّئَةً وَاحِدَةً) \nرَوَاهُ البُخَارِيُّ وَمُسْلِمٌ في صَحِيْحَيهِمَا بِهَذِهِ الحُرُوْفِ.',
                maxValue: 1),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
