import 'package:flutter/material.dart';
import 'package:tatmaen/imports.dart';

class Travel7 extends StatelessWidget {
  const Travel7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => AzkarCubit(),
        child: const AzkarModelView(
          title: 'نزول المنزل',
          azkarList: [
            'أَعُوذُ بِكَلِمَاتِ اللَّهِ التَّامَّاتِ مِنْ شَرِّ مَا خَلَقَ',
          ],
          maxValues: [1],
        ),
      ),
    );
  }
}
