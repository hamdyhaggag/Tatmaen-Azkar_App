import 'package:flutter/material.dart';
import '../../../Widgets/custom_app_bar.dart';
import '../../../Widgets/custom_container.dart';

class Mix13 extends StatelessWidget {
  const Mix13({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: ' ما يقال في المجلس'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomContainer(
                title: 'رب اغفر لي وتب عليّ إنك أنت التواب الغفور',
                maxValue: 1,
                initialCounterValue: 0),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
