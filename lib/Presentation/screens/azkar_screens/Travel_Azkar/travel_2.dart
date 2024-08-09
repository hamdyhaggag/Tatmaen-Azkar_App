import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:tatmaen/imports.dart';
=======
import 'package:tatmaen24/imports.dart';
>>>>>>> 0baf087bcac187a91ff41f8d122b99e82b735b57

class Travel2 extends StatelessWidget {
  const Travel2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => AzkarCubit(),
        child: const AzkarModelView(
          title: 'دعاء المقيم للمسافر',
          azkarList: [
            'أَسْتَوْدِعُ اللَّهَ دِينَكَ وَأَمَانَتَكَ وَخَوَاتِيمَ عَمَلِكَ',
            'زَوَّدَكَ اللَّهُ التَّقْوَى ، وَغَفَرَ ذَنْبَكَ ، وَيَسَّرَ لَكَ الْخَيْرَ حَيْثُمَا كُنْتَ',
<<<<<<< HEAD
          ],
          maxValues: [1],
=======
          ],          maxValues: [1],

>>>>>>> 0baf087bcac187a91ff41f8d122b99e82b735b57
        ),
      ),
    );
  }
}
