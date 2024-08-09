import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:tatmaen/imports.dart';
=======
import 'package:tatmaen24/imports.dart';
>>>>>>> 0baf087bcac187a91ff41f8d122b99e82b735b57

class Pray18 extends StatelessWidget {
  const Pray18({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'كيف كان النبي يُسبح'),
      body: BlocProvider(
        create: (context) => AzkarCubit(),
        child: const AzkarModelView(
          title: 'كيف كان النبي يُسبح',
          azkarList: [
            'يَعْقِدُ التَّسْبِيحَ',
          ],
          maxValues: [1],
        ),
      ),
    );
  }
}
