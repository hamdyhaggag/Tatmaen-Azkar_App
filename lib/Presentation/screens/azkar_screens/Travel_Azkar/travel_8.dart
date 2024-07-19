import 'package:flutter/material.dart';

import '../../../Widgets/custom_app_bar.dart';
import '../../../Widgets/custom_container.dart';

class Travel8 extends StatelessWidget {
  const Travel8({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: 'دعاء المسافر إذا أصبح'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 15),
            CustomContainer(
                title:
                    'سَمِعَ سَامِعٌ بِحَمْدِ اللَّهِ وَنِعْمَتِهِ وَحُسْنِ بَلَائِهِ عَلَيْنَا ، رَبَّنَا صَاحِبْنَا فَأَفْضِلْ عَلَيْنَا ، عَائِذٌ بِاللَّهِ مِنَ النَّارِ يَرْفَعُ بِهِ صَوْتَهُ',
                maxValue: 3,
                initialCounterValue: 0),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
