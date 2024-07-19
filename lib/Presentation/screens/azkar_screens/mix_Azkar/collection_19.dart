import 'package:flutter/material.dart';
import '../../../Widgets/custom_app_bar.dart';
import '../../../Widgets/custom_container.dart';

class Mix19 extends StatelessWidget {
  const Mix19({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: 'الدعاء قبل الجماع '),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomContainer(
                title: 'بسم الله ـ اللهم جنبنا الشيطان، وجنب الشيطان مارزقتنا',
                maxValue: 1,
                initialCounterValue: 0),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
