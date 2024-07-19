import 'package:flutter/material.dart';
import '../../../Widgets/custom_app_bar.dart';
import '../../../Widgets/custom_container.dart';

class Mix25 extends StatelessWidget {
  const Mix25({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: ' الدعاء للمريض في عيادته'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomContainer(
                title:
                    'لابأس طهور إن شاء الله مامن عبد مسلم يعود مريضاً لم يحضر أجله فيقول سبع مرات : أسأل الله العظيم رب العرش العظيم أن يشفيك إلا عوفي',
                maxValue: 1,
                initialCounterValue: 0),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
