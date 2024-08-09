import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:tatmaen/imports.dart';
=======
import 'package:tatmaen24/imports.dart';
>>>>>>> 0baf087bcac187a91ff41f8d122b99e82b735b57

class Mix11 extends StatelessWidget {
  const Mix11({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => AzkarCubit(),
        child: const AzkarModelView(
          title: 'دعاء من استصعب عليه أمر',
          azkarList: [
            'اللهم لاسهل إلا ماجعلته سهلا وأنت تجعل الحزن إذا شئت سهلا'
          ],
          maxValues: [1],
        ),
      ),
    );
  }
}
