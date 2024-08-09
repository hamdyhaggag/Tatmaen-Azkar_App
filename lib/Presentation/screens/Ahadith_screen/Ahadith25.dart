import 'package:flutter/material.dart';
import 'package:tatmaen/imports.dart';

class Ahadith25 extends StatelessWidget {
  final String title;
  const Ahadith25({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: 'فضل الذكر '),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 15),
            CustomContainer(
                headtitle: 'الحديث الخامس و العشرون',
                title:
                    'عَنْ أَبي ذَرٍّ رضي الله عنه قال: أَنَّ أُنَاسَاً مِنْ أَصحَابِ رَسُولِ اللهِ ﷺ قَالوا للنَّبي ﷺ يَارَسُولَ الله: ذَهَبَ أَهلُ الدثورِ بِالأُجورِ، يُصَلُّوْنَ كَمَا نُصَلِّيْ، وَيَصُوْمُوْنَ كَمَا نَصُوْمُ، وَيَتَصَدَّقُوْنَ بفُضُوْلِ أَمْوَالِهِمْ، قَالَ: (أَوَ لَيْسَ قَدْ جَعَلَ اللهُ لَكُمْ مَا تَصَّدَّقُوْنَ؟ إِنَّ بِكُلِّ تَسْبِيْحَةٍ صَدَقَة.وَكُلِّ تَكْبِيْرَةٍ صَدَقَةً وَكُلِّ تَحْمَيْدَةٍ صَدَقَةً وَكُلِّ تَهْلِيْلَةٍ صَدَقَةٌ وَأَمْرٌ بالِمَعْرُوْفٍ صَدَقَةٌ وَنَهْيٌ عَنْ مُنْكَرٍ صَدَقَةٌ وَفِيْ بُضْعِ أَحَدِكُمْ صَدَقَةٌ قَالُوا: يَا رَسُوْلَ اللهِ أَيَأْتِيْ أَحَدُنَا شَهْوَتَهُ وَيَكُوْنُ لَهُ فِيْهَا أَجْرٌ؟ قَالَ:أَرَأَيْتُمْ لَوْ وَضَعَهَا فَيْ حَرَامٍ أَكَانَ عَلَيْهِ وِزْرٌ؟ فَكَذَلِكَ إِذَا وَضَعَهَا فَي الحَلالِ كَانَ لَهُ أَجْرٌ) \nرَوَاهُ مُسْلِمٌ',
                maxValue: 1),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
