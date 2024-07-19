import 'package:flutter/material.dart';

import '../../../../Widgets/custom_app_bar.dart';
import '../../../../Widgets/custom_container.dart';

class Wodoo1 extends StatelessWidget {
  const Wodoo1({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: 'الذكر قبل الوضوء'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 15),
            CustomContainer(
                title: 'بسم الله', maxValue: 1, initialCounterValue: 0),
            SizedBox(height: 15),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
