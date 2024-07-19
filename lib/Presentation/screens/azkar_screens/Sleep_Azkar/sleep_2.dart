import 'package:flutter/material.dart';

import '../../../Widgets/custom_app_bar.dart';
import '../../../Widgets/custom_container.dart';

class Sleep2 extends StatelessWidget {
  const Sleep2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: 'الدعاء إذا تقلب ليلاً'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 15),
            CustomContainer(
                title:
                    'لَا إِلَهَ إِلَّا اللَّهُ الْوَاحِدُ الْقَهَّارُ ، رَبُّ السَّمَوَاتِ وَالْأَرْضِ وَمَا بَيْنَهُمَا الْعَزِيزُ الْغَفَّارُ',
                maxValue: 1,
                initialCounterValue: 0),
            SizedBox(height: 15),
            CustomContainer(
                title:
                    'مَا مِنْ مُسْلِمٍ يَبِيتُ عَلَى ذِكْرٍ طَاهِرًا فَيَتَعَارُّ مِنَ اللَّيْلِ ، فَيَسْأَلُ اللَّهَ خَيْرًا مِنَ الدُّنْيَا وَالْآخِرَةِ إِلَّا أَعْطَاهُ إِيَّاهُ',
                maxValue: 1,
                initialCounterValue: 0),
            SizedBox(height: 15),
            CustomContainer(
                title:
                    'لَا إِلَهَ إِلَّا اللَّهُ وَحْدَهُ لَا شَرِيكَ لَهُ ، لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ وَهُوَ عَلَى كُلِّ شَيْءٍ قَدِيرٌ ، الْحَمْدُ لِلَّهِ ، وَسُبْحَانَ اللَّهِ ، وَلَا إِلَهَ إِلَّا اللَّهُ ، وَاللَّهُ أَكْبَرُ ، وَلَا حَوْلَ وَلَا قُوَّةَ إِلَّا بِاللَّهِ ، ثُمَّ قَالَ : اللَّهُمَّ اغْفِرْ لِي أَوْ دَعَا اسْتُجِيبَ لَهُ',
                maxValue: 1,
                initialCounterValue: 0),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
