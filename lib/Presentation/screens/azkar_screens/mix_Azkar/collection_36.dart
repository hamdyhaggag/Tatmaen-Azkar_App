import 'package:flutter/material.dart';
import '../../../Widgets/custom_app_bar.dart';
import '../../../Widgets/custom_container.dart';

class Mix36 extends StatelessWidget {
  const Mix36({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: 'إذا أحسست بوجع في جسدك'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomContainer(
                title:
                    'ضع يدك على الذي تألَّم من جسدك وقل: بسم الله ،ثلاثاً ،وقل سبع مرات: أعوذُ بالله وقُدْرَتِهِ من شَرِّ مَا أَجِدُ واُحَاذِرُ',
                maxValue: 1,
                initialCounterValue: 0),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
