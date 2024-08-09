import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:tatmaen/imports.dart'; // Ensure this import includes AzkarCubit and AzkarModelView
=======
import 'package:tatmaen24/imports.dart'; // Ensure this import includes AzkarCubit and AzkarModelView
>>>>>>> 0baf087bcac187a91ff41f8d122b99e82b735b57

class Mix5 extends StatelessWidget {
  const Mix5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => AzkarCubit(),
        child: const AzkarModelView(
          title: 'دعاء قضاء الدين',
          azkarList: ['اللهم اكفنى بحلالك عن حرامك وأغننى بفضلك عمن سواك'],
          maxValues: [1],
        ),
      ),
    );
  }
}
