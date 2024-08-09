import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:tatmaen/imports.dart';
=======
import 'package:tatmaen24/imports.dart';
>>>>>>> 0baf087bcac187a91ff41f8d122b99e82b735b57

class Mix19 extends StatelessWidget {
  const Mix19({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'الدعاء قبل الجماع'),
      body: BlocProvider(
        create: (context) => AzkarCubit(),
        child: const AzkarModelView(
          title: 'الدعاء قبل الجماع',
          azkarList: [
            'بسم الله ـ اللهم جنبنا الشيطان، وجنب الشيطان مارزقتنا',
          ],
          maxValues: [1],
        ),
      ),
    );
  }
}
