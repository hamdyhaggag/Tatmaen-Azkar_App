import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:tatmaen/imports.dart';
=======
import 'package:tatmaen24/imports.dart';
>>>>>>> 0baf087bcac187a91ff41f8d122b99e82b735b57

class Pray17 extends StatelessWidget {
  const Pray17({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => AzkarCubit(),
        child: const AzkarModelView(
          title: 'الذكر عقب السلام من الوتر',
          azkarList: [
            'سُبْحَانَ الْمَلِكِ الْقُدُّوسِ " . ثَلَاثًا ، وَيَرْفَعُ صَوْتَهُ بِالثَّالِثَةِ',
          ],
          maxValues: [3],
        ),
      ),
    );
  }
}
