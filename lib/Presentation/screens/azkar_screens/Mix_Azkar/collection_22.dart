import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:tatmaen/imports.dart';
=======
import 'package:tatmaen24/imports.dart';
>>>>>>> 0baf087bcac187a91ff41f8d122b99e82b735b57

class Mix22 extends StatelessWidget {
  const Mix22({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'الدعاء إذا أفطر عند أهل بيت'),
      body: BlocProvider(
        create: (context) => AzkarCubit(),
        child: const AzkarModelView(
          title: 'الدعاء إذا أفطر عند أهل بيت',
          azkarList: [
            'أفطر عندكم الصائمون ، وأكل طعامكم الأبرار ، وصلت عليكم الملائكة',
          ],
          maxValues: [1],
        ),
      ),
    );
  }
}
