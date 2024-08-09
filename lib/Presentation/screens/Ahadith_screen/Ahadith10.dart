import 'package:flutter/material.dart';
import 'package:tatmaen/imports.dart';

class Ahadith10 extends StatelessWidget {
  final String title;
  const Ahadith10({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: 'سبب إجابة الدعاء '),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 15),
            CustomContainer(
                headtitle: 'الحديث العاشر',
                title:
                    'عَنْ أَبِيْ هُرَيْرَةَ رَضِيَ اللهُ تَعَالَى عَنْهُ قَالَ: قَالَ رَسُوْلُ اللهِ : (إِنَّ اللهَ تَعَالَى طَيِّبٌ لاَ يَقْبَلُ إِلاَّ طَيِّبَاً وَإِنَّ اللهَ أَمَرَ المُؤْمِنِيْنَ بِمَا أَمَرَ بِهِ المُرْسَلِيْنَ فَقَالَ : (يَا أَيُّهَا الرُّسُلُ كُلُوا مِنَ الطَّيِّبَاتِ وَاعْمَلُوا صَالِحاً) (المؤمنون: الآية51) ، وَقَالَ: (يَا أَيُّهَا الَّذِينَ آمَنُوا كُلُوا مِنْ طَيِّبَاتِ مَا رَزَقْنَاكُمْ ) (البقرة: الآية172) ثُمَّ ذَكَرَ الرَّجُلَ يُطِيْلُ السَّفَرَ أَشْعَثَ أَغْبَرَ، يَمُدُّ يَدَيْهِ إِلَى السَّمَاء،ِ يَا رَبِّ يَا رَبِّ، وَمَطْعَمُهُ حَرَامٌ ،وَمَشْرَبُهُ حَرَامٌ، وَغُذِيَ بِالحَرَامِ فَأَنَّى يُسْتَجَابُ لذلك) \nرواه مسلمِ',
                maxValue: 1),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
