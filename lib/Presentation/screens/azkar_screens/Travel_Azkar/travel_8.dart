import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:tatmaen/imports.dart';
=======
import 'package:tatmaen24/imports.dart';
>>>>>>> 0baf087bcac187a91ff41f8d122b99e82b735b57

class Travel8 extends StatelessWidget {
  const Travel8({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => AzkarCubit(),
        child: const AzkarModelView(
          title: 'دعاء المسافر إذا أصبح',
          azkarList: [
            'سَمِعَ سَامِعٌ بِحَمْدِ اللَّهِ وَنِعْمَتِهِ وَحُسْنِ بَلَائِهِ عَلَيْنَا ، رَبَّنَا صَاحِبْنَا فَأَفْضِلْ عَلَيْنَا ، عَائِذٌ بِاللَّهِ مِنَ النَّارِ يَرْفَعُ بِهِ صَوْتَهُ',
          ],
          maxValues: [3],
        ),
      ),
    );
  }
}
