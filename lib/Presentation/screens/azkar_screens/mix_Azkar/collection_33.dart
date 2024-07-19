import 'package:flutter/material.dart';
import '../../../Widgets/custom_app_bar.dart';
import '../../../Widgets/custom_container.dart';

class Mix33 extends StatelessWidget {
  const Mix33({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: ' فعل الذنب '),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomContainer(
                title:
                    'كما أخبرنا رسول الله صلى الله عليه وسلم ( ما من عبد يذنب ذنباً فيتوضأ فيحسن الطهور،ثم يقوم فيصلي ركعتين ، ثم يستغفر الله لذلك الذنب إلاَّ غُفر له )',
                maxValue: 1,
                initialCounterValue: 0),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
