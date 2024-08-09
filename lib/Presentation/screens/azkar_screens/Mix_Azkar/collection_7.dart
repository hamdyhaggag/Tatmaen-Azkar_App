import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:tatmaen/imports.dart';
=======
import 'package:tatmaen24/imports.dart';
>>>>>>> 0baf087bcac187a91ff41f8d122b99e82b735b57

class Mix7 extends StatelessWidget {
  const Mix7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'دعاء الرعد'),
      body: BlocProvider(
        create: (context) => AzkarCubit(),
        child: const AzkarModelView(
          title: 'دعاء الرعد',
          azkarList: ['سبحان الله الذي يسبح الرعد بحمده والملائكة من خيفته'],
          maxValues: [1],
        ),
      ),
    );
  }
}
