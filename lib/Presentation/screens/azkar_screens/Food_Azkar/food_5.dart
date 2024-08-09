import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:tatmaen/imports.dart';
=======
import 'package:tatmaen24/imports.dart';
>>>>>>> 0baf087bcac187a91ff41f8d122b99e82b735b57

class Food5 extends StatelessWidget {
  const Food5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => AzkarCubit(),
        child: const AzkarModelView(
          title: 'الدعاء إذا أفطر عند أهل بيت',
          azkarList: [
            'أَفْطَرَ عِنْدَكُمُ الصَّائِمُونَ ، وَأَكَلَ طَعَامَكُمُ الْأَبْرَارُ ، وَصَلَّتْ عَلَيْكُمُ الْمَلَائِكَةُ',
          ],
          maxValues: [1],
        ),
      ),
    );
  }
}
