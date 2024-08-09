import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:tatmaen/imports.dart';
=======
import 'package:tatmaen24/imports.dart';
>>>>>>> 0baf087bcac187a91ff41f8d122b99e82b735b57

class Food3 extends StatelessWidget {
  const Food3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => AzkarCubit(),
        child: const AzkarModelView(
          title: 'دعاء الضيف لصاحب الطعام',
          azkarList: [
            'اللَّهُمَّ بَارِكْ لَهُمْ فِي مَا رَزَقْتَهُمْ ، وَاغْفِرْ لَهُمْ ، وَارْحَمْهُمْ',
          ],
          maxValues: [1],
        ),
      ),
    );
  }
}
