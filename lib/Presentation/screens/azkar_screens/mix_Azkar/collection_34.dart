import 'package:flutter/material.dart';
import '../../../Widgets/custom_app_bar.dart';
import '../../../Widgets/custom_container.dart';

class Mix34 extends StatelessWidget {
  const Mix34({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: ' سماع أصوات الحيوانات'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomContainer(
                title:
                    'الدعاء عند صياح الديك : ( اللهم إني أسألك من فضلـــك ). ( إذا سمعتم صياح الديك[من الليل]،فاسألوا الله من فَضْلِهِ فإنها رأت ملكاً و إذا سمعتم نهيق الحمار،فتعوَّذوا بالله من الشيطان فإنها رأت شَيْطَاناً ). متفق عليه.\n الدعاء عند صياح الديك و نهيق الحمار و نباح الكلاب: ( أعوذ بالله من الشيطان الرجيم ).\n ( إذا سمعتم نُباحَ الكلاب و نهيق الحمير بالليل فتعوذوا بالله فإنهن يَرَيْنَ ما لا ترون )',
                maxValue: 1,
                initialCounterValue: 0),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
