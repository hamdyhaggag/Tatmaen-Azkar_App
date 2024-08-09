import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:tatmaen/imports.dart';

class Ahadith16 extends StatelessWidget {
  final String title;
  const Ahadith16({super.key, required this.title});
=======
import 'package:tatmaen24/imports.dart';

class Ahadith16 extends StatelessWidget {
  final String title;
  const Ahadith16({Key? key, required this.title}) : super(key: key);
>>>>>>> 0baf087bcac187a91ff41f8d122b99e82b735b57

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
