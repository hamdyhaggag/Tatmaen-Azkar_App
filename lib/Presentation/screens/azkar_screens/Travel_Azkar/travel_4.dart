import 'package:flutter/material.dart';

import '../../../Widgets/custom_app_bar.dart';
import '../../../Widgets/custom_container.dart';

class Travel4 extends StatelessWidget {
  const Travel4({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: 'الركوب'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 15),
            CustomContainer(
                title: 'بِسْمِ اللَّهِ', maxValue: 1, initialCounterValue: 0),
            SizedBox(height: 15),
            CustomContainer(
                title: 'الْحَمْدُ لِلَّهِ',
                maxValue: 1,
                initialCounterValue: 0),
            SizedBox(height: 15),
            CustomContainer(
                title:
                    'سُبْحَانَ الَّذِي سَخَّرَ لَنَا هَذَا وَمَا كُنَّا لَهُ مُقْرِنِينَ وَإِنَّا إِلَى رَبِّنَا لَمُنقَلِبُونَ',
                maxValue: 1,
                initialCounterValue: 0),
            SizedBox(height: 15),
            CustomContainer(
                title: 'الحمدلله', maxValue: 3, initialCounterValue: 0),
            SizedBox(height: 15),
            CustomContainer(
                title: 'الله اكبر', maxValue: 3, initialCounterValue: 0),
            SizedBox(height: 15),
            CustomContainer(
                title:
                    'سُبْحَانَكَ إِنِّي ظَلَمْتُ نَفْسِي ، فَاغْفِرْ لِي ، فَإِنَّهُ لَا يَغْفِرُ الذُّنُوبَ إِلَّا أَنْتَ . ثُمَّ ضَحِكَ',
                maxValue: 1,
                initialCounterValue: 0),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
