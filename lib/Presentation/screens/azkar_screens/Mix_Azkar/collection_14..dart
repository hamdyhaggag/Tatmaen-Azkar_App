import 'package:flutter/material.dart';
import 'package:tatmaen/imports.dart';

class Mix14 extends StatelessWidget {
  const Mix14({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => AzkarCubit(),
        child: const AzkarModelView(
          title: 'كفارة المجلس',
          azkarList: [
            'سبحانك اللهم وبحمدك ، أشهد أن لا إله إلا أنت أستغفرك وأتوب إليك',
          ],
          maxValues: [1],
        ),
      ),
    );
  }
}
