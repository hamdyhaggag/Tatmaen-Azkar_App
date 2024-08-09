import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:tatmaen/imports.dart';
=======
import 'package:tatmaen24/imports.dart';
>>>>>>> 0baf087bcac187a91ff41f8d122b99e82b735b57

class Mix21 extends StatelessWidget {
  const Mix21({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'الدعاء عند إفطار الصائم'),
      body: BlocProvider(
        create: (context) => AzkarCubit(),
        child: const AzkarModelView(
          title: 'الدعاء عند إفطار الصائم',
          azkarList: [
            'ذهب الظمـأ ، وأبتلت العروق ، وثبت الأجر إن شاء الله',
          ],
          maxValues: [1],
        ),
      ),
    );
  }
}
