import 'package:flutter/material.dart';

import '../../../Widgets/custom_app_bar.dart';
import '../../../Widgets/custom_container.dart';

class Mix8 extends StatelessWidget {
  const Mix8({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: ' دعاء زيارة القبور'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomContainer(
                title:
                    'السلام عليكم أهل الديار من المؤمنين والمسلمين، وإنا إن شاء الله بكم لاحقون ويرحم الله المستقدمين منا والمستأخرين، أسأل الله لنا ولكم العافية',
                maxValue: 1,
                initialCounterValue: 0),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
