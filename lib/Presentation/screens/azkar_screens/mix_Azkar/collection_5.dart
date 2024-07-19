import 'package:flutter/material.dart';
import '../../../Widgets/custom_app_bar.dart';
import '../../../Widgets/custom_container.dart';

class Mix5 extends StatelessWidget {
  const Mix5({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: ' دعاء قضاء الدين'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomContainer(
                title: 'اللهم اكفنى بحلالك عن حرامك وأغننى بفضلك عمن سواك',
                maxValue: 1,
                initialCounterValue: 0),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
