import 'package:flutter/material.dart';

import '../../../Widgets/custom_app_bar.dart';
import '../../../Widgets/custom_container.dart';

class Pray10 extends StatelessWidget {
  const Pray10({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: ' دعاء الجلسة بين السجدتين'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 15),
            CustomContainer(
                title: 'رَبِّ اغْفِرْ لِي، رَبِّ اغْفِرْ لِي',
                maxValue: 1,
                initialCounterValue: 0),
            SizedBox(height: 15),
            CustomContainer(
                title:
                    'رَبِّ اغْفِرْ لِي ، وَارْحَمْنِي ، وَاجْبُرْنِي ، وَارْفَعْنِي ، وَعَافِنِي ، وَارْزُقْنِي ، وَاهْدِنِي',
                maxValue: 1,
                initialCounterValue: 0),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
