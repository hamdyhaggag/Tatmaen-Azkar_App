import 'package:flutter/material.dart';
import '../../../Widgets/custom_app_bar.dart';
import '../../../Widgets/custom_container.dart';

class Mix17 extends StatelessWidget {
  const Mix17({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: ' الدعاء للمتزوج'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomContainer(
                title: 'بارك الله لك ، وبارك عليك ، وجمع بينكما في خير',
                maxValue: 1,
                initialCounterValue: 0),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
