import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:tatmaen/imports.dart';
=======
import 'package:tatmaen24/imports.dart';
>>>>>>> 0baf087bcac187a91ff41f8d122b99e82b735b57

class Mix28 extends StatelessWidget {
  const Mix28({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => AzkarCubit(),
        child: const AzkarModelView(
          title: 'لقاء العدو وذي السلطان',
          azkarList: [
            'حسـبنا الله ونعـم الـوكـيل\nاللهم إنا نجعلك في نحورهم ونعوذ بك من شرورهم\nاللهم أنت عضدي ، وأنت نصيري ، بك أجول وبك أصول وبك أقاتل',
          ],
          maxValues: [1],
        ),
      ),
    );
  }
}
