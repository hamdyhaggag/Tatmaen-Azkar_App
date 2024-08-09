import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:tatmaen/imports.dart';
=======
import 'package:tatmaen24/imports.dart';
>>>>>>> 0baf087bcac187a91ff41f8d122b99e82b735b57

class Mix2 extends StatelessWidget {
  const Mix2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => AzkarCubit(),
        child: const AzkarModelView(
          title: 'دعاء لبس الثوب الجديد',
          azkarList: [
            'اللهم لك الحمد أنت كسوتنيه، أسألك من خيره',
          ],
          maxValues: [1],
        ),
      ),
    );
  }
}
