import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:tatmaen/imports.dart';
=======
import 'package:tatmaen24/imports.dart';
>>>>>>> 0baf087bcac187a91ff41f8d122b99e82b735b57

class Mix26 extends StatelessWidget {
  const Mix26({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => AzkarCubit(),
        child: const AzkarModelView(
          title: 'المريض الذي يئس من حياته',
          azkarList: [
            'اللهم اغفر لي وارحمني والحقني بالرفيق الأعلى',
          ],
          maxValues: [1],
        ),
      ),
    );
  }
}
