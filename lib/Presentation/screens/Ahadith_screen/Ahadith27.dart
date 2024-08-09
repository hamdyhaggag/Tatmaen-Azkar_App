import 'package:flutter/material.dart';
import 'package:tatmaen/imports.dart';

class Ahadith27 extends StatelessWidget {
  final String title;
  const Ahadith27({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: 'تعريف البر والإثم '),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 15),
            CustomContainer(
                headtitle: 'الحديث السابع و العشرون',
                title:
                    ' عن النواس بن سمعان رضي الله عنهما ، عن النبي ﷺ قال: (البر حسن الخلق ، والإثم ما حاك في نفسك وكرهت أن يطلع عليه الناس ) .رواه مسلم.وعن وابصة بن معبد رضى الله عنه ، قال : أتيت رسول الله ﷺ ، فقال : (جئت تسأل عن البر و الإثم ؟) قلت : نعم ؛ قال : (استفت قلبك ؛ البر ما اطمأنت إليه النفس واطمأن اليه القلب ، والإثم ما حاك في النفس وتردد في الصدر ، وإن أفتاك الناس وأفتوك) .\nحديث حسن',
                maxValue: 1),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
