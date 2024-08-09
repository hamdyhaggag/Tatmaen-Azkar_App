import 'package:flutter/material.dart';
import 'package:tatmaen/imports.dart';

class Ahadith16 extends StatelessWidget {
  final String title;
  const Ahadith16({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: 'النهي عن الغضب '),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 15),
            CustomContainer(
                headtitle: 'الحديث السادس عشر',
                title:
                    'عَنْ أَبِي هُرَيْرَةَ رَضِيَ اللهُ عَنْهُ أَنَّ رَجُلاً قَالَ لِلنَّبيِّ ﷺ : أَوصِنِيْ، قَال : (لاَ تَغْضَبْ) .\n رواه البخاري',
                maxValue: 1),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
