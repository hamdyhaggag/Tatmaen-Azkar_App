import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:tatmaen/imports.dart';

class Ahadith21 extends StatelessWidget {
  final String title;
  const Ahadith21({super.key, required this.title});
=======
import 'package:tatmaen24/imports.dart';

class Ahadith21 extends StatelessWidget {
  final String title;
  const Ahadith21({Key? key, required this.title}) : super(key: key);
>>>>>>> 0baf087bcac187a91ff41f8d122b99e82b735b57

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
