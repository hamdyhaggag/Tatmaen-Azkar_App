import 'package:flutter/material.dart';

import '../../../Widgets/custom_app_bar.dart';
import '../../../Widgets/custom_container.dart';

class Travel10 extends StatelessWidget {
  const Travel10({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: 'ذكر الرجوع من السفر '),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 15),
            CustomContainer(
                title:
                    'يُكَبِّرُ عَلَى كُلِّ شَرَفٍ مِنَ الْأَرْضِ ثَلَاثَ تَكْبِيرَاتٍ الله أكبر الله أكبر الله أكبر',
                maxValue: 3,
                initialCounterValue: 0),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
