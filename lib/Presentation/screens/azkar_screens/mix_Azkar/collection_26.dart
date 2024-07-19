import 'package:flutter/material.dart';
import '../../../Widgets/custom_app_bar.dart';
import '../../../Widgets/custom_container.dart';

class Mix26 extends StatelessWidget {
  const Mix26({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: ' المريض الذي يئس من حياته'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomContainer(
                title: 'اللهم اغفر لي وارحمني والحقني بالرفيق الأعلى',
                maxValue: 1,
                initialCounterValue: 0),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
