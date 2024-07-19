import 'package:flutter/material.dart';

import '../../../Widgets/custom_app_bar.dart';
import '../../../Widgets/custom_container.dart';

class Pray3 extends StatelessWidget {
  const Pray3({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: 'المسجد'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 15),
            CustomContainer(
                headtitle: 'دعاء دخول المسجد  ',
                title:
                    '  أَعُوذُ بِاللَّهِ الْعَظِيمِ وَبِوَجْهِهِ الْكَرِيمِ وَسُلْطَانِهِ الْقَدِيمِ مِنَ الشَّيْطَانِ الرَّجِيمِ',
                maxValue: 1,
                initialCounterValue: 0),
            SizedBox(height: 15),
            CustomContainer(
                headtitle: 'دعاء دخول المسجد  ',
                title:
                    ' صَلَّى عَلَى مُحَمَّدٍ وَسَلَّمَ ، وَقَالَ : " رَبِّ اغْفِرْ لِي ذُنُوبِي ، وَافْتَحْ لِي أَبْوَابَ رَحْمَتِكَ "',
                maxValue: 1,
                initialCounterValue: 0),
            SizedBox(height: 15),
            CustomContainer(
                headtitle: 'دعاء دخول المسجد  ',
                title:
                    'فَلْيُسَلِّمْ عَلَى النَّبِيِّ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ ، وَلْيَقُلِ : اللَّهُمَّ افْتَحْ لِي أَبْوَابَ رَحْمَتِكَ',
                maxValue: 1,
                initialCounterValue: 0),
            SizedBox(height: 15),
            CustomContainer(
                headtitle: 'دعاء الخروج الي الصلاه  ',
                title:
                    ' اللَّهُمَّ اجْعَلْ فِي قَلْبِي نُورًا ، وَفِي لِسَانِي نُورًا ، وَاجْعَلْ فِي سَمْعِي نُورًا ، وَاجْعَلْ فِي بَصَرِي نُورًا ، وَاجْعَلْ مِنْ خَلْفِي نُورًا ، وَمِنْ أَمَامِي نُورًا ، وَاجْعَلْ مِنْ فَوْقِي نُورًا ، وَمِنْ تَحْتِي نُورًا ، اللَّهُمَّ أَعْطِنِي نُورًاوَاجْعَلْ عَنْ يَمِينِي نُورًا ، وَعَنْ شِمَالِي نُورًا ، اللَّهُمَّ أَعْظِمْ لِي نُورًا',
                maxValue: 1,
                initialCounterValue: 0),
            SizedBox(height: 15),
            CustomContainer(
                headtitle: 'دعاء الخروج الي الصلاه  ',
                title:
                    ' اللَّهُمَّ إِنِّي أَسْأَلُكَ بِحَقِّ السَّائِلِينَ عَلَيْكَ ، وَأَسْأَلُكَ بِحَقِّ مَمْشَايَ هَذَا ، فَإِنِّي لَمْ أَخْرُجْ أَشَرًا ، وَلَا بَطَرًا ، وَلَا رِيَاءً ، وَلَا سُمْعَةً ، وَخَرَجْتُ اتِّقَاءَ سُخْطِكَ ، وَابْتِغَاءَ مَرْضَاتِكَ ، فَأَسْأَلُكَ أَنْ تُعِيذَنِي مِنَ النَّارِ ، وَأَنْ تَغْفِرَ لِي ذُنُوبِي ، إِنَّهُ لَا يَغْفِرُ الذُّنُوبَ إِلَّا أَنْتَ',
                maxValue: 1,
                initialCounterValue: 0),
            SizedBox(height: 15),
            CustomContainer(
                headtitle: 'دعاء الخروج من المسجد  ',
                title:
                    ' صَلَّى عَلَى مُحَمَّدٍ وَسَلَّمَ ، وَقَالَ : " رَبِّ اغْفِرْ لِي ذُنُوبِي ، وَافْتَحْ لِي أَبْوَابَ فَضْلِكَ "',
                maxValue: 1,
                initialCounterValue: 0),
            SizedBox(height: 15),
            CustomContainer(
                headtitle: 'دعاء الخروج من المسجد  ',
                title:
                    'فَلْيُسَلِّمْ عَلَى النَّبِيِّ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ ، وَلْيَقُلِ : اللَّهُمَّ اعْصِمْنِي مِنَ الشَّيْطَانِ الرَّجِيمِ " ',
                maxValue: 1,
                initialCounterValue: 0),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
