import 'package:flutter/material.dart';

import '../../../Widgets/custom_app_bar.dart';
import '../../../Widgets/custom_container.dart';

class Mix9 extends StatelessWidget {
  const Mix9({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: 'دعاء  نزول المطر'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomContainer(
                title: 'اللهم صيبا نافعا', maxValue: 1, initialCounterValue: 0),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
