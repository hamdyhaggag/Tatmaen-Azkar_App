import 'package:flutter/material.dart';

import '../../../Widgets/custom_app_bar.dart';
import '../../../Widgets/custom_container.dart';

class Mix7 extends StatelessWidget {
  const Mix7({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: ' دعاء الرعـد'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomContainer(
                title: 'سبحان الله الذي يسبح الرعد بحمده والملائكة من خيفته',
                maxValue: 1,
                initialCounterValue: 0),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
