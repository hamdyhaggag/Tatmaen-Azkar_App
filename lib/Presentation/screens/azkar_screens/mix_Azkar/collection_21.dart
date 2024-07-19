import 'package:flutter/material.dart';
import '../../../Widgets/custom_app_bar.dart';
import '../../../Widgets/custom_container.dart';

class Mix21 extends StatelessWidget {
  const Mix21({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: ' الدعاء عند افطار الصائم'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomContainer(
                title: 'ذهب الظمـأ ، وأبتلت العروق ، وثبت الأجر إن شاء الله',
                maxValue: 1,
                initialCounterValue: 0),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
