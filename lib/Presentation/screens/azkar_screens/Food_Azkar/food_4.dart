import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:tatmaen/imports.dart';
=======
import 'package:tatmaen24/imports.dart';
>>>>>>> 0baf087bcac187a91ff41f8d122b99e82b735b57

class Food4 extends StatelessWidget {
  const Food4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => AzkarCubit(),
        child: const AzkarModelView(
          title: 'الدعاء لمن سقاه',
          azkarList: [
            'اللَّهُمَّ أَطْعِمْ مَنْ أَطْعَمَنِي ، وَأَسْقِ مَنْ أَسْقَانِي',
          ],
          maxValues: [1],
        ),
      ),
    );
  }
}
