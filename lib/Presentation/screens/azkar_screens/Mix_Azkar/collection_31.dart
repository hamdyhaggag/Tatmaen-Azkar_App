import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:tatmaen/imports.dart';
=======
import 'package:tatmaen24/imports.dart';
>>>>>>> 0baf087bcac187a91ff41f8d122b99e82b735b57

class Mix31 extends StatelessWidget {
  const Mix31({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => AzkarCubit(),
        child: const AzkarModelView(
          title: 'دعاء الاستفتاح',
          azkarList: [
            'اللهم باعد بيني وبين خطاياي كما باعدت بين المشرق والغرب ، اللهم نقني من خطاياي كما ينقى الثوب الأبيض من الدنس، اللهم اغسلني من خطاياي بالثلج والماء والبرد. \n سبحانك اللهم وبحمدك وتبارك اسمك وتعالى جدُّك ولاإله غيرك. \n الله اكبر كبيرا ، الله اكبر كبيرا ، الله اكبر كبيرا ، والحمد لله كثيرا ، والحمد لله كثيرا ، والحمد لله كثيرا ، وسبحان الله بكرة وأصيلا(ثلاثــا) \n اعوذ بالله من الشيطان من نفحه ونفثه وهمزه',
          ],
          maxValues: [1],
        ),
      ),
    );
  }
}
