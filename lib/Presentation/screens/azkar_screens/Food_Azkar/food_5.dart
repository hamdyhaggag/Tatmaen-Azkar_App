import 'package:flutter/material.dart';

import '../../../Widgets/custom_app_bar.dart';
import '../../../Widgets/custom_container.dart';

class Food5 extends StatelessWidget {
  const Food5({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: ' الدعاء إذا أفطر عند أهل بيت'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 15),
            CustomContainer(
                title:
                    'أَفْطَرَ عِنْدَكُمُ الصَّائِمُونَ ، وَأَكَلَ طَعَامَكُمُ الْأَبْرَارُ ، وَصَلَّتْ عَلَيْكُمُ الْمَلَائِكَةُ',
                maxValue: 1,
                initialCounterValue: 0),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
