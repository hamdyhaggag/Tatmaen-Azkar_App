import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:tatmaen/imports.dart';
=======
import 'package:tatmaen24/imports.dart';
>>>>>>> 0baf087bcac187a91ff41f8d122b99e82b735b57

class Pray6 extends StatelessWidget {
  const Pray6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => AzkarCubit(),
        child: const AzkarModelView(
          title: 'دعاء الوسوسة في الصلاة',
          azkarList: [
            'أعوذ بالله من الشيطان الرجيم واتفل على يسارك',
          ],
          maxValues: [3],
        ),
      ),
    );
  }
}
