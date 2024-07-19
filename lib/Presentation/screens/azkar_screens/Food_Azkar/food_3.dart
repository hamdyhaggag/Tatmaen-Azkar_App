import 'package:flutter/material.dart';
import '../../../Widgets/custom_app_bar.dart';
import '../../../Widgets/custom_container.dart';

class Food3 extends StatelessWidget {
  const Food3({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: 'دعاء الضيف لصاحب الطعام'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 15),
            CustomContainer(
                title:
                    'اللَّهُمَّ بَارِكْ لَهُمْ فِي مَا رَزَقْتَهُمْ ، وَاغْفِرْ لَهُمْ ، وَارْحَمْهُمْ',
                maxValue: 1,
                initialCounterValue: 0),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
