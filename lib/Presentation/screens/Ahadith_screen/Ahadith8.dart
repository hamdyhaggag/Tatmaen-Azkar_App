import 'package:flutter/material.dart';
import 'package:tatmaen/imports.dart';

class Ahadith8 extends StatelessWidget {
  final String title;
  const Ahadith8({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: 'حرمة دم المسلم وماله '),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 15),
            CustomContainer(
                headtitle: 'الحديث الثامن',
                title:
                    'عَنِ ابْنِ عُمَرَ رَضِيَ اللهُ عَنْهُمَا أَنَّ رَسُوْلَ اللهِ قَالَ: (أُمِرْتُ أَنْ أُقَاتِلَ النَّاسَ حَتَّى يَشْهَدُوا أَنْ لاَ إِلَهَ إِلاَّ اللهُ وَأَنَّ مُحَمَّدَاً رَسُوْلُ اللهِ وَيُقِيْمُوْا الصَّلاةَ وَيُؤْتُوا الزَّكَاةَ فَإِذَا فَعَلُوا ذَلِكَ عَصَمُوا مِنِّي دِمَاءهَمْ وَأَمْوَالَهُمْ إِلاَّ بِحَقِّ الإِسْلامِ وَحِسَابُهُمْ عَلَى اللهِ تَعَالَى)\n رواه البخاري ومسلمِ',
                maxValue: 1),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
