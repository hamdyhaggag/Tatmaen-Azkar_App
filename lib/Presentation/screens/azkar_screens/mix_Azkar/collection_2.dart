import 'package:flutter/material.dart';
import '../../../Widgets/custom_app_bar.dart';
import '../../../Widgets/custom_container.dart';

class Mix2 extends StatelessWidget {
  const Mix2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: 'دعاء لبس الثوب الجديد'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomContainer(
                title: 'اللهم لك الحمد أنت كسوتنيه، أسألك من خيره',
                maxValue: 1,
                initialCounterValue: 0),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
