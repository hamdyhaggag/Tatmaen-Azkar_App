import 'package:flutter/material.dart';
import 'package:tatmaen/imports.dart';

class Ahadith15 extends StatelessWidget {
  final String title;
  const Ahadith15({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: 'اكرام الضيف '),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 15),
            CustomContainer(
                headtitle: 'الحديث الخامس عشر',
                title:
                    'عَن أَبِي هُرَيْرَةَ رضي الله عنه أَنَّ رَسُولَ اللهِ ﷺ قَالَ: (مَنْ كَانَ يُؤمِنُ بِاللهِ وَاليَوْمِ الآخِرِ فَلْيَقُلْ خَيْرَاً أَو لِيَصْمُتْ، وَمَنْ كَانَ يُؤمِنُ بِاللهِ وَاليَومِ الآخِرِ فَلْيُكْرِمْ جَارَهُ، ومَنْ كَانَ يُؤمِنُ بِاللهِ واليَومِ الآخِرِ فَلْيُكْرِمْ ضَيْفَهُ) رواه البخاري ومسلم.',
                maxValue: 1),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
