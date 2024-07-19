import 'package:flutter/material.dart';
import '../../../Widgets/custom_app_bar.dart';
import '../../../Widgets/custom_container.dart';

class Mix28 extends StatelessWidget {
  const Mix28({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: 'لقاء العدو وذي السلطان '),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomContainer(
                title:
                    'حسـبنا الله ونعـم الـوكـيل\n اللهم إنا نجعلك في نحورهم ونعوذ بك من شرورهم\n اللهم أنت عضدي ، وأنت نصيري ، بك أجول وبك أصول وبك أقاتل',
                maxValue: 1,
                initialCounterValue: 0),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
