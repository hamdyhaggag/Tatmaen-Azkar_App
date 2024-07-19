import 'package:flutter/material.dart';
import '../../../Widgets/custom_app_bar.dart';
import '../../../Widgets/custom_container.dart';

class Mix23 extends StatelessWidget {
  const Mix23({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: 'دعاء رؤية الهلال '),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomContainer(
                title:
                    'الله أكبر ، اللهم أهله علينا بالأمن ، والإيمان والسلامة ، والإسلام ، والتوفيق لما تحب وترضى ربنا وربك الله',
                maxValue: 1,
                initialCounterValue: 0),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
