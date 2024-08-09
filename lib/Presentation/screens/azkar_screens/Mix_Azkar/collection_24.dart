import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:tatmaen/imports.dart';
=======
import 'package:tatmaen24/imports.dart';
>>>>>>> 0baf087bcac187a91ff41f8d122b99e82b735b57

class Mix24 extends StatelessWidget {
  const Mix24({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => AzkarCubit(),
        child: const AzkarModelView(
          title: 'دعاء من أصيب بمصيبة',
          azkarList: [
            'إنا لله وإنا إليه راجعون اللهم أجرني في مصيبتي واخلف لي خيرا منها',
          ],
          maxValues: [1],
        ),
      ),
    );
  }
}
