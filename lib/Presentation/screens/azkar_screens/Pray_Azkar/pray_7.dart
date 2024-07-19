import 'package:flutter/material.dart';

import '../../../Widgets/custom_app_bar.dart';
import '../../../Widgets/custom_container.dart';

class Pray7 extends StatelessWidget {
  const Pray7({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: ' دعاء الركوع'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 15),
            CustomContainer(
                title: 'سُبْحَانَ رَبِّيَ الْعَظِيمِ',
                maxValue: 3,
                initialCounterValue: 0),
            SizedBox(height: 15),
            CustomContainer(
                title:
                    'سُبْحَانَكَ اللَّهُمَّ رَبَّنَا وَبِحَمْدِكَ ، اللَّهُمَّ اغْفِرْ لِي',
                maxValue: 1,
                initialCounterValue: 0),
            SizedBox(height: 15),
            CustomContainer(
                title: 'سُبُّوحٌ قُدُّوسٌ ، رَبُّ الْمَلَائِكَةِ وَالرُّوحِ',
                maxValue: 1,
                initialCounterValue: 0),
            SizedBox(height: 15),
            CustomContainer(
                title:
                    'اللَّهُمَّ لَكَ رَكَعْتُ ، وَبِكَ آمَنْتُ ، وَلَكَ أَسْلَمْتُ ، خَشَعَ لَكَ سَمْعِي وَبَصَرِي وَمُخِّي وَعَظْمِي وَعَصَبِي وَمَا اسْتَقَلَّتْ بِهِ قَدَمِي ، لِلَّهِ رَبِّ الْعَالَمِينَ',
                maxValue: 1,
                initialCounterValue: 0),
            SizedBox(height: 15),
            CustomContainer(
                title:
                    'سُبْحَانَ ذِي الْجَبَرُوتِ وَالْمَلَكُوتِ وَالْكِبْرِيَاءِ وَالْعَظَمَةِ',
                maxValue: 1,
                initialCounterValue: 0),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
