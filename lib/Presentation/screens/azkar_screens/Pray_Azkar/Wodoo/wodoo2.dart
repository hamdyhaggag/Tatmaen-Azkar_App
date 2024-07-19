import 'package:flutter/material.dart';

import '../../../../Widgets/custom_app_bar.dart';
import '../../../../Widgets/custom_container.dart';

class Wodoo2 extends StatelessWidget {
  const Wodoo2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: 'الذكر بعد الفراغ من الوضوء'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 15),
            CustomContainer(
                title:
                    'أَشْهَدُ أَنْ لَا إِلَهَ إِلَّا اللَّهُ وَأَنَّ مُحَمَّدًا عَبْدُ اللَّهِ وَرَسُولُهُ',
                maxValue: 1,
                initialCounterValue: 0),
            SizedBox(height: 15),
            CustomContainer(
                title:
                    'سُبْحَانَكَ اللَّهُمَّ وَبِحَمْدِكَ ، أَشْهَدُ أَنْ لَا إِلَهَ إِلَّا أَنْتَ ، أَسْتَغْفِرُكَ وَأَتُوبُ إِلَيْكَ',
                maxValue: 1,
                initialCounterValue: 0),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
