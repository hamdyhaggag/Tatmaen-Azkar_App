import 'package:flutter/material.dart';
import 'package:tatmaen/imports.dart';

class Ahadith9 extends StatelessWidget {
  final String title;
  const Ahadith9({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: 'النهي عن كثرة السؤال والتشدد '),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 15),
            CustomContainer(
                headtitle: 'الحديث التاسع',
                title:
                    'عَنْ أَبِي هُرَيْرَةَ عَبْدِ الرَّحْمَنِ بْنِ صَخْرٍ رَضِيَ الله تَعَالَى عَنْهُ قَالَ: سَمِعْتُ رَسُوْلَ اللهِ ﷺ يَقُوْلُ: (مَا نَهَيْتُكُمْ عَنْهُ فَاجْتَنِبُوهُ وَمَا أَمَرْتُكُمْ بِهِ فأْتُوا مِنْهُ مَا اسْتَطَعْتُمْ؛ فَإِنَّمَا أَهْلَكَ الَّذِيْنَ مِنْ قَبْلِكُمْ كَثْرَةُ مَسَائِلِهِمْ وَاخْتِلافُهُمْ عَلَى أَنْبِيَائِهِمْ) \nرواه البخاري ومسلمِ',
                maxValue: 1),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
