import 'package:flutter/material.dart';
import 'package:tatmaen/imports.dart';

class Ahadith3 extends StatelessWidget {
  final String title;
  const Ahadith3({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: 'أركان الإسلام '),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 15),
            CustomContainer(
                headtitle: 'الحديث الثالث',
                title:
                    'عَنْ أَبِيْ عَبْدِ الرَّحْمَنِ عَبْدِ اللهِ بْنِ عُمَرَ بْن الخَطَّابِ رَضِيَ اللهُ عَنْهُمَا قَالَ: سَمِعْتُ النبي ﷺ يَقُوْلُ: " بُنِيَ الإِسْلامُ عَلَى خَمْسٍ: شَهَادَةِ أَنْ لاَ إِلَهَ إِلاَّ الله وَأَنَّ مُحَمَّدَاً رَسُوْلُ اللهِ، وَإِقَامِ الصَّلاةِ، وَإِيْتَاءِ الزَّكَاةِ، وَحَجِّ البِيْتِ، وَصَوْمِ رَمَضَان"',
                maxValue: 1),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
