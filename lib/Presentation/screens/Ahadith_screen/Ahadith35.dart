import 'package:flutter/material.dart';
import 'package:tatmaen/imports.dart';

class Ahadith35 extends StatelessWidget {
  final String title;
  const Ahadith35({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: 'المسلم أخو المسلم '),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 15),
            CustomContainer(
                headtitle: 'الحديث الخامس و الثلاثون',
                title:
                    'عَنْ أَبي هُرَيرَةَ رضي الله عنه قَالَ: قَالَ رَسُولُ اللهِ ﷺ : (لاَ تَحَاسَدوا، وَلاَتَنَاجَشوا، وَلاَ تَبَاغَضوا، وَلاَ تَدَابَروا، وَلاَ يَبِع بَعضُكُم عَلَى بَيعِ بَعضٍ، وَكونوا عِبَادَ اللهِ إِخوَانَاً، المُسلِمُ أَخو المُسلم، لاَ يَظلِمهُ، وَلاَ يَخذُلُهُ، وَلا يكْذِبُهُ، وَلايَحْقِرُهُ، التَّقوَى هَاهُنَا - وَيُشيرُ إِلَى صَدرِهِ ثَلاَثَ مَراتٍ - بِحَسْبِ امرىء مِن الشَّرأَن يَحْقِرَ أَخَاهُ المُسلِمَ، كُلُّ المُسِلمِ عَلَى المُسلِمِ حَرَام دَمُهُ وَمَالُه وَعِرضُه) \nرواه مسلم ',
                maxValue: 1),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
