import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:tatmaen/imports.dart';
=======
import 'package:tatmaen24/imports.dart';
>>>>>>> 0baf087bcac187a91ff41f8d122b99e82b735b57

class Pray10 extends StatelessWidget {
  const Pray10({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => AzkarCubit(),
        child: const AzkarModelView(
          title: 'دعاء الجلسة بين السجدتين',
          azkarList: [
            'رَبِّ اغْفِرْ لِي، رَبِّ اغْفِرْ لِي',
            'رَبِّ اغْفِرْ لِي ، وَارْحَمْنِي ، وَاجْبُرْنِي ، وَارْفَعْنِي ، وَعَافِنِي ، وَارْزُقْنِي ، وَاهْدِنِي',
          ],
          maxValues: [1],
        ),
      ),
    );
  }
}
