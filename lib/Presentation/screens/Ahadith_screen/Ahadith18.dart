import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:tatmaen/imports.dart';

class Ahadith18 extends StatelessWidget {
  final String title;
  const Ahadith18({super.key, required this.title});
=======
import 'package:tatmaen24/imports.dart';

class Ahadith18 extends StatelessWidget {
  final String title;
  const Ahadith18({Key? key, required this.title}) : super(key: key);
>>>>>>> 0baf087bcac187a91ff41f8d122b99e82b735b57

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: 'الخلق الحسن '),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 15),
            CustomContainer(
                headtitle: 'الحديث الثامن عشر',
                title:
                    'عَنْ أَبِيْ ذَرٍّ جُنْدُبِ بنِ جُنَادَةَ وَأَبِي عَبْدِ الرَّحْمَنِ مُعَاذِ بِنِ جَبَلٍ رَضِيَ اللهُ عَنْهُمَا عَنْ رَسُولِ اللهِ ﷺ قَالَ: (اتَّقِ اللهَ حَيْثُمَا كُنْتَ، وَأَتْبِعِ السَّيِّئَةَ الحَسَنَةَ تَمْحُهَا، وَخَالِقِ النَّاسَ بِخُلُقٍ حَسَنٍ )\n رواه الترمذي وقال: حديث حسن. \nوفي بعض النسخ: حسنٌ صحيح.',
                maxValue: 1),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
