import 'package:flutter/material.dart';
import '../../../Widgets/custom_app_bar.dart';
import '../../../Widgets/custom_container.dart';

class Mix20 extends StatelessWidget {
  const Mix20({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: 'دعاء العطاس '),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomContainer(
                title:
                    'إذا عطـس أحـدكم فليقل : الحمـد لله ، وليقل له أخـوه ، أو صاحبه : يرحمـك الله فـإذا قال له : يرحمك الله ، فليقل : يهديكم الله ويصلح بالكم',
                maxValue: 1,
                initialCounterValue: 0),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
