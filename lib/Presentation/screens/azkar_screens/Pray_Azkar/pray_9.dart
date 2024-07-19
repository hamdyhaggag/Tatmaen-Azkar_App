import 'package:flutter/material.dart';

import '../../../Widgets/custom_app_bar.dart';
import '../../../Widgets/custom_container.dart';

class Pray9 extends StatelessWidget {
  const Pray9({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: 'دعاء السجود'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomContainer(
                title: 'سُبْحَانَ رَبِّيَ الْأَعْلَى',
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
                    'اللَّهُمَّ لَكَ سَجَدْتُ ، وَبِكَ آمَنْتُ ، وَلَكَ أَسْلَمْتُ ، سَجَدَ وَجْهِي لِلَّذِي خَلَقَهُ ، وَصَوَّرَهُ ، وَشَقَّ سَمْعَهُ وَبَصَرَهُ ، تَبَارَكَ اللَّهُ أَحْسَنُ الْخَالِقِينَ',
                maxValue: 1,
                initialCounterValue: 0),
            SizedBox(height: 15),
            CustomContainer(
                title:
                    'سُبْحَانَ ذِي الْجَبَرُوتِ وَالْمَلَكُوتِ وَالْكِبْرِيَاءِ وَالْعَظَمَةِ',
                maxValue: 1,
                initialCounterValue: 0),
            SizedBox(height: 15),
            CustomContainer(
                title:
                    ' اللَّهُمَّ اغْفِرْ لِي ذَنْبِي كُلَّهُ ، دِقَّهُ وَجِلَّهُ ، وَأَوَّلَهُ وَآخِرَهُ ، وَعَلَانِيَتَهُ وَسِرَّهُ',
                maxValue: 1,
                initialCounterValue: 0),
            SizedBox(height: 15),
            CustomContainer(
                title:
                    'أَعُوذُ بِرِضَاكَ مِنْ سَخَطِكَ ، وَبِمُعَافَاتِكَ مِنْ عُقُوبَتِكَ ، وَأَعُوذُ بِكَ مِنْكَ لَا أُحْصِي ثَنَاءً عَلَيْكَ ، أَنْتَ كَمَا أَثْنَيْتَ عَلَى نَفْسِكَ',
                maxValue: 1,
                initialCounterValue: 0),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
