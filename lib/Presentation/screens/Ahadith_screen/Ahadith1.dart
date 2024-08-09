import 'package:flutter/material.dart';
import 'package:tatmaen/imports.dart';

class Ahadith1 extends StatelessWidget {
  final String title;
  const Ahadith1({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: 'الأعمال بالنيات '),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 15),
            CustomContainer(
                headtitle: 'الحديث الأول',
                title:
                    'عَنْ أَمِيرِ المُؤمِنينَ أَبي حَفْصٍ عُمَرَ بْنِ الخَطَّابِ قَالَ : سَمِعْتُ رَسُولَ اللهِ ﷺ يَقُولُ : " إِنَّمَا الأَعْمَالُ بِالنِّيَّاتِ ، وَإنَّمَا لِكُلِّ امْرِىءٍ مَا نَوَى ، فَمَنْ كَانَتْ هِجْرَتُهُ إِلى اللهِ وَرَسُوله فَهِجْرتُهُ إلى اللهِ وَرَسُوُله ، وَمَنْ كَانَتْ هِجْرَتُهُ لِدُنْيَا يُصِيْبُهَا ، أَو امْرأَةٍ يَنْكِحُهَا ، فَهِجْرَتُهُ إِلى مَا هَاجَرَ إلَيْهِ "',
                maxValue: 1),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
