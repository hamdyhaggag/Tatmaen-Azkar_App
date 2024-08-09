import 'package:flutter/material.dart';
import 'package:tatmaen/imports.dart';

class Ahadith28 extends StatelessWidget {
  final String title;
  const Ahadith28({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: 'السمع والطاعة '),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 15),
            CustomContainer(
                headtitle: 'الحديث الثامن و العشرون',
                title:
                    'عَن أَبي نَجِيحٍ العربَاضِ بنِ سَاريَةَ رضي الله عنه قَالَ: وَعَظَنا رَسُولُ اللهِ مَوعِظَةً وَجِلَت مِنهَا القُلُوبُ وَذَرَفَت مِنهَا العُيون. فَقُلْنَا: يَارَسُولَ اللهِ كَأَنَّهَا مَوْعِظَةُ مُوَدِّعٍ فَأَوصِنَا، قَالَ: (أُوْصِيْكُمْ بِتَقْوَى اللهِ عز وجل وَالسَّمعِ وَالطَّاعَةِ وَإِنْ تَأَمَّرَ عَلَيْكُمْ عَبْدٌ، فَإِنَّهُ مَنْ يَعِشْ مِنْكُمْ فَسَيَرَى اخْتِلافَاً كَثِيرَاً؛ فَعَلَيكُمْ بِسُنَّتِيْ وَسُنَّةِ الخُلَفَاءِ الرَّاشِدِينَ المّهْدِيِّينَ عَضُّوا عَلَيْهَا بِالنَّوَاجِذِ وَإِيَّاكُمْ وَمُحْدَثَاتِ الأُمُورِ فإنَّ كلّ مُحدثةٍ بدعة، وكُلَّ بِدْعَةٍ ضَلالَةٌ) \nرواه أبو داود والترمذي وقال : حديث حسن صحيح. ',
                maxValue: 1),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
