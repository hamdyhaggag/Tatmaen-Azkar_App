import 'package:flutter/material.dart';

import '../../../Widgets/custom_app_bar.dart';
import '../../../Widgets/custom_container.dart';

class Pray17 extends StatelessWidget {
  const Pray17({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: ' الذكر عقب السلام من الوتر'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomContainer(
                title:
                    'سُبْحَانَ الْمَلِكِ الْقُدُّوسِ " . ثَلَاثًا ، وَيَرْفَعُ صَوْتَهُ بِالثَّالِثَةِ',
                maxValue: 3,
                initialCounterValue: 0),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
