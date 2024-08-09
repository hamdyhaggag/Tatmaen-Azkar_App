import 'package:flutter/material.dart';
import 'package:tatmaen/imports.dart';

class Ahadith23 extends StatelessWidget {
  final String title;
  const Ahadith23({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: 'جوامع الخير '),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 15),
            CustomContainer(
                headtitle: 'الحديث الثالث و العشرون',
                title:
                    'عَنْ أَبِي مَالِكٍ الحَارِثِ بنِ عَاصِم الأَشْعَرِيِّ رَضِيَ اللهُ عَنْهُ قَالَ: قَالَ رَسُولُ اللهِ ﷺ : الطُّهُورُ شَطْرُ الإِيْمَانِ، والحَمْدُ للهِ تَمْلأُ الميزانَ، وسُبْحَانَ اللهِ والحَمْدُ للهِ تَمْلآنِ - أَو تَمْلأُ - مَا بَيْنَ السَّمَاءِ والأَرْضِ، وَالصَّلاةُ نُورٌ، والصَّدَقَةُ بُرْهَانٌ، وَالصَّبْرُ ضِيَاءٌ، وَالقُرْآنُ حُجَّةٌ لَكَ أَو عَلَيْكَ، كُلُّ النَّاسِ يَغْدُو فَبَائِعٌ نَفْسَهُ فَمُعْتِقُهَا أَو مُوبِقُهَا\nرواه مسلم.',
                maxValue: 1),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
