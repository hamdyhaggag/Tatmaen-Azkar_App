import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:tatmaen/imports.dart';
=======
import 'package:tatmaen24/imports.dart';
>>>>>>> 0baf087bcac187a91ff41f8d122b99e82b735b57

class Mix15 extends StatelessWidget {
  const Mix15({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => AzkarCubit(),
        child: const AzkarModelView(
          title: 'دعاء من رأى مبتلى',
          azkarList: [
            'الحمد لله الذي عافاني مما ابتلا به وفضلني على كثير ممن خلق تفضيلا',
          ],
          maxValues: [1],
        ),
      ),
    );
  }
}
