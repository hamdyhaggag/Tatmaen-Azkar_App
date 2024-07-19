import 'package:flutter/material.dart';
import '../../../Widgets/custom_app_bar.dart';
import '../../../Widgets/custom_container.dart';

class Mix11 extends StatelessWidget {
  const Mix11({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: ' دعاء من استصعب عليه أمر'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomContainer(
                title:
                    'اللهم لاسهل إلا ماجعلته سهلا وأنت تجعل الحزن إذا شئت سهلا',
                maxValue: 1,
                initialCounterValue: 0),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
