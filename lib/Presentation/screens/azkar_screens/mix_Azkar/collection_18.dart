import 'package:flutter/material.dart';
import '../../../Widgets/custom_app_bar.dart';
import '../../../Widgets/custom_container.dart';

class Mix18 extends StatelessWidget {
  const Mix18({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: ' دعاء المتزوج لنفسه'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomContainer(
                title:
                    'اللهم إني أسألك خيرها وخير ماجبلتها عليه وأعوذ بك من شرها وشر ماجبلتها عليه ، وإذا اشترى بعيراً فليأخذ بذروة سنامه وليقل مثل ذلك',
                maxValue: 1,
                initialCounterValue: 0),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
