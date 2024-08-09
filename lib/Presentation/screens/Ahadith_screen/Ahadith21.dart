import 'package:flutter/material.dart';
import 'package:tatmaen/imports.dart';

class Ahadith21 extends StatelessWidget {
  final String title;
  const Ahadith21({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: 'الاستقامه بالإسلام '),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 15),
            CustomContainer(
                headtitle: 'الحديث الحادي و العشرون',
                title:
                    'عَنِ أَبيْ عَمْرٍو، وَقِيْلَ،أَبيْ عمْرَةَ سُفْيَانَ بنِ عَبْدِ اللهِ رضي الله عنه قَالَ: قُلْتُ يَا رَسُوْلَ اللهِ قُلْ لِيْ فِي الإِسْلامِ قَوْلاً لاَ أَسْأَلُ عَنْهُ أَحَدَاً غَيْرَكَ؟ قَالَ: (قُلْ آمَنْتُ باللهِ ثُمَّ استَقِمْ)عَنِ أَبيْ عَمْرٍو، وَقِيْلَ،أَبيْ عمْرَةَ سُفْيَانَ بنِ عَبْدِ اللهِ رضي الله عنه قَالَ: قُلْتُ يَا رَسُوْلَ اللهِ قُلْ لِيْ فِي الإِسْلامِ قَوْلاً لاَ أَسْأَلُ عَنْهُ أَحَدَاً غَيْرَكَ؟ قَالَ: (قُلْ آمَنْتُ باللهِ ثُمَّ استَقِمْ)',
                maxValue: 1),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
