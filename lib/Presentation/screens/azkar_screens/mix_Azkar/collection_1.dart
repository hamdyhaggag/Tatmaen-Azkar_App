import 'package:flutter/material.dart';
import '../../../Widgets/custom_app_bar.dart';
import '../../../Widgets/custom_container.dart';

class Mix1 extends StatelessWidget {
  const Mix1({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: 'دعاء لبس الثوب'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomContainer(
                title:
                    'الحمدُ للهِ الّذي كَساني هذا (الثّوب) وَرَزَقَنيه مِنْ غَـيـْرِ حَولٍ مِنّي وَلا قـوّة',
                maxValue: 1,
                initialCounterValue: 0),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
