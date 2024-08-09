import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:tatmaen/imports.dart';
=======
import 'package:tatmaen24/imports.dart';
>>>>>>> 0baf087bcac187a91ff41f8d122b99e82b735b57

class Mix12 extends StatelessWidget {
  const Mix12({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => AzkarCubit(),
        child: const AzkarModelView(
          title: 'دعاء الخوف من الشرك',
          azkarList: [
            'اللهم إني أعوذ بك أن أشرك بك وأنا أعلم ، وأستغفرك لما لا أعلم'
          ],
          maxValues: [1],
        ),
      ),
    );
  }
}
