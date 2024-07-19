import 'package:flutter/material.dart';

import '../../../Widgets/custom_app_bar.dart';
import '../../../Widgets/custom_container.dart';

class Mix6 extends StatelessWidget {
  const Mix6({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: ' دعاء الريح'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomContainer(
                title:
                    'اللهم إنى أسألك خيرها، وخير ما فيها، وخير ما أرسلت به، وأعوذ بك من شرها، وشر ما فيها وشر ما أرسلت به',
                maxValue: 1,
                initialCounterValue: 0),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
