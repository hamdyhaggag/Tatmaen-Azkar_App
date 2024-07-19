import 'package:flutter/material.dart';
import '../../../Widgets/custom_app_bar.dart';
import '../../../Widgets/custom_container.dart';

class Mix10 extends StatelessWidget {
  const Mix10({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: ' دعاء ركوب الدابة '),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomContainer(
                title:
                    'بسم الله ، الحمد لله ، سبحان الذي سخر لنا هذا وماكنا له مقرنين وإنا إلى ربنا لمنقلبون، الحمد لله ، الحمد لله ، الحمد لله ، الله اكبر ، الله أكبر ، الله أكبر ، سبحانك اللهم إني ظلمت نفسي فاغفر لي ، فإنه لايغفر الذنوب إلا أنت',
                maxValue: 1,
                initialCounterValue: 0),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
