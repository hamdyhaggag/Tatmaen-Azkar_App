import 'package:flutter/material.dart';
import '../../../Widgets/custom_app_bar.dart';
import '../../../Widgets/custom_container.dart';

class Food2 extends StatelessWidget {
  const Food2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: 'بعد الطعام'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 15),
            CustomContainer(
                title:
                    'الْحَمْدُ لِلَّهِ الَّذِي كَفَانَا وَأَرْوَانَا غَيْرَ مَكْفِيٍّ وَلَا مَكْفُورٍ " . وَقَالَ مَرَّةً : الْحَمْدُ لِلَّهِ رَبِّنَا غَيْرَ مَكْفِيٍّ وَلَا مُوَدَّعٍ وَلَا مُسْتَغْنًى رَبَّنَا',
                maxValue: 1,
                initialCounterValue: 0),
            SizedBox(height: 15),
            CustomContainer(
                title:
                    'الْحَمْدُ لِلَّهِ الَّذِي أَطْعَمَ وَسَقَى وَسَوَّغَهُ وَجَعَلَ لَهُ مَخْرَجًا',
                maxValue: 1,
                initialCounterValue: 0),
            SizedBox(height: 15),
            CustomContainer(
                title:
                    'الْحَمْدُ لِلَّهِ الَّذِي أَطْعَمَنِي هَذَا الطَّعَامَ وَرَزَقَنِيهِ مِنْ غَيْرِ حَوْلٍ مِنِّي وَلَا قُوَّةٍ',
                maxValue: 1,
                initialCounterValue: 0),
            SizedBox(height: 15),
            CustomContainer(
                title:
                    'الْحَمْدُ لِلَّهِ الَّذِي هَدَانَا ، وَأَطْعَمَنَا ، وَسَقَانَا ، وَنَعَّمَنَا ، اللَّهُ أَكْبَرُ ، اللَّهُمَّ أَلْفَتْنَا نِعْمَتُكَ بِكُلِّ شَرٍّ ، فَأَصْبَحْنَا مِنْهَا ، وَأَمْسَيْنَا بِكُلِّ خَيْرٍ ، نَسْأَلُكَ تَمَامَهَا وَشُكْرَهَا ، لَا خَيْرَ إِلَّا خَيْرُكَ ، وَلَا إِلَهَ غَيْرُكَ ، إِلَهَ الصَّالِحِينَ ، وَرَبَّ الْعَالَمِينَ ، الْحَمْدُ لِلَّهِ ، وَلَا إِلَهَ إِلَّا اللَّهُ ، مَا شَاءَ اللَّهُ ، وَلَا قُوَّةَ إِلَّا بِاللَّهِ ، اللَّهُمَّ بَارِكْ لَنَا فِيمَا رَزَقْتَنَا ، وَقِنَا عَذَابَ النَّارِ .',
                maxValue: 1,
                initialCounterValue: 0),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
