import 'package:flutter/material.dart';

import '../../../Widgets/custom_app_bar.dart';
import '../../../Widgets/custom_container.dart';

class Sleep4 extends StatelessWidget {
  const Sleep4({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: ' من رأى الرؤيا اأو الحلم'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 15),
            CustomContainer(
                title:
                    'فَلْيَنْفُثْ عَنْ يَسَارِهِ ثَلَاثًا ، وَلْيَتَعَوَّذْ بِاللَّهِ مِنْ شَرِّهَا (الحلم الذي رآه ثلاثًا) ، وَلْيَتَحَوَّلْ عَنْ جَنْبِهِ الَّذِي كَانَ عَلَيْهِ ، وَلَا يُخْبِرْ بِهَا أَحَدًا',
                maxValue: 3,
                initialCounterValue: 0),
            SizedBox(height: 15),
            CustomContainer(
                title:
                    'فَلْيَقُمْ فَلْيُصَلِّ ، وَلَا يُحَدِّثْ بِهَا (الحلم الذي رآها ) النَّاسَ',
                maxValue: 1,
                initialCounterValue: 0),
            SizedBox(height: 15),
            CustomContainer(
                title:
                    'فَلْيَحْمَدِ اللَّهَ عَلَيْهَا ، وَلْيُحَدِّثْ بِهَا \n فَلْيَسْتَعِذْ مِنْ شَرِّهَا ، وَلَا يَذْكُرْهَا لِأَحَدٍ',
                maxValue: 1,
                initialCounterValue: 0),
            SizedBox(height: 15),
            CustomContainer(
                title:
                    'فَلَا يُحَدِّثْ بِهِ إِلَّا مَنْ يُحِبُّ \n فَلْيَتَعَوَّذْ بِاللَّهِ مِنْ شَرِّهَا وَمِنْ شَرِّ الشَّيْطَانِ ، وَلْيَتْفِلْ ثَلَاثًا ، وَلَا يُحَدِّثْ بِهَا أَحَدًا',
                maxValue: 1,
                initialCounterValue: 0),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
