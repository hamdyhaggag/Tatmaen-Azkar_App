import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:tatmaen/imports.dart';
=======
import 'package:tatmaen24/imports.dart';
>>>>>>> 0baf087bcac187a91ff41f8d122b99e82b735b57

class Mix34 extends StatelessWidget {
  const Mix34({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => AzkarCubit(),
        child: const AzkarModelView(
          title: 'سماع أصوات الحيوانات',
          azkarList: [
            'الدعاء عند صياح الديك : ( اللهم إني أسألك من فضلـــك ). ( إذا سمعتم صياح الديك[من الليل]،فاسألوا الله من فَضْلِهِ فإنها رأت ملكاً و إذا سمعتم نهيق الحمار،فتعوَّذوا بالله من الشيطان فإنها رأت شَيْطَاناً ). متفق عليه.\n الدعاء عند صياح الديك و نهيق الحمار و نباح الكلاب: ( أعوذ بالله من الشيطان الرجيم ).\n ( إذا سمعتم نُباحَ الكلاب و نهيق الحمير بالليل فتعوذوا بالله فإنهن يَرَيْنَ ما لا ترون )',
          ],
          maxValues: [1],
        ),
      ),
    );
  }
}
