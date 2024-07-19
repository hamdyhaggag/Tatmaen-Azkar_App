import 'package:flutter/material.dart';

import '../../../../Widgets/custom_app_bar.dart';
import '../../../../Widgets/custom_container.dart';

class Azan1 extends StatelessWidget {
  const Azan1({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: 'الأذان'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 15),
            CustomContainer(
                title:
                    'يردد بعد المؤذن : اللَّهُ أَكْبَرُ اللَّهُ أَكْبَرُ اللَّهُ أَكْبَرُ اللَّهُ أَكْبَرُ ، أَشْهَدُ أَنْ لَا إِلَهَ إِلَّا اللَّهُ أَشْهَدُ أَنْ لَا إِلَهَ إِلَّا اللَّهُ ، أَشْهَدُ أَنَّ مُحَمَّدًا رَسُولُ اللَّهِ أَشْهَدُ أَنَّ مُحَمَّدًا رَسُولُ اللَّهِ ، حَيَّ عَلَى الصَّلَاةِ لَا حَوْلَ وَلَا قُوَّةَ إِلَّا بِاللَّهِ ، حَيَّ عَلَى الْفَلَاحِ لَا حَوْلَ وَلَا قُوَّةَ إِلَّا بِاللَّهِ ، اللَّهُ أَكْبَرُ اللَّهُ أَكْبَرُ ، لَا إِلَهَ إِلَّا اللَّهُ',
                maxValue: 1,
                initialCounterValue: 0),
            SizedBox(height: 15),
            CustomContainer(
                title:
                    'وَأَنَا أَشْهَدُ أَنْ لَا إِلَهَ إِلَّا اللَّهُ وَحْدَهُ لَا شَرِيكَ لَهُ ، وَأَنَّ مُحَمَّدًا عَبْدُهُ وَرَسُولُهُ ، رَضِيتُ بِاللَّهِ رَبًّا وَبِمُحَمَّدٍ رَسُولًا ، وَبِالْإِسْلَامِ دِينًا',
                maxValue: 1,
                initialCounterValue: 0),
            SizedBox(height: 15),
            CustomContainer(
                title:
                    'اللَّهُمَّ رَبَّ هَذِهِ الدَّعْوَةِ التَّامَّةِ ، وَالصَّلَاةِ الْقَائِمَةِ ، آتِ مُحَمَّدًا الْوَسِيلَةَ وَالْفَضِيلَةَ ، وَابْعَثْهُ مَقَامًا مَحْمُودًا الَّذِي وَعَدْتَهُ',
                maxValue: 1,
                initialCounterValue: 0),
            SizedBox(height: 15),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
