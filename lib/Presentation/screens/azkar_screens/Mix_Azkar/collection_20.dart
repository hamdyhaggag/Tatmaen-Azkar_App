import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:tatmaen/imports.dart';
=======
import 'package:tatmaen24/imports.dart';
>>>>>>> 0baf087bcac187a91ff41f8d122b99e82b735b57

class Mix20 extends StatelessWidget {
  const Mix20({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'دعاء العطاس'),
      body: BlocProvider(
        create: (context) => AzkarCubit(),
        child: const AzkarModelView(
          title: 'دعاء العطاس',
          azkarList: [
            'إذا عطـس أحـدكم فليقل : الحمـد لله ، وليقل له أخـوه ، أو صاحبه : يرحمـك الله فـإذا قال له : يرحمك الله ، فليقل : يهديكم الله ويصلح بالكم',
          ],
          maxValues: [1],
        ),
      ),
    );
  }
}
