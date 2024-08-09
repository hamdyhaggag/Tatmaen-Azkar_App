import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:tatmaen/imports.dart';
=======
import 'package:tatmaen24/imports.dart';
>>>>>>> 0baf087bcac187a91ff41f8d122b99e82b735b57

class Mix18 extends StatelessWidget {
  const Mix18({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'دعاء المتزوج لنفسه'),
      body: BlocProvider(
        create: (context) => AzkarCubit(),
        child: const AzkarModelView(
          title: 'دعاء المتزوج لنفسه',
          azkarList: [
            'اللهم إني أسألك خيرها وخير ماجبلتها عليه وأعوذ بك من شرها وشر ماجبلتها عليه ، وإذا اشترى بعيراً فليأخذ بذروة سنامه وليقل مثل ذلك',
          ],
          maxValues: [1],
        ),
      ),
    );
  }
}
