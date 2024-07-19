import 'package:flutter/material.dart';
import '../../../Widgets/custom_app_bar.dart';
import '../../../Widgets/custom_container.dart';

class Mix31 extends StatelessWidget {
  const Mix31({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: 'دعاء الاستفتاح '),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomContainer(
                title:
                    'اللهم باعد بيني وبين خطاياي كما باعدت بين المشرق والغرب ، اللهم نقني من خطاياي كما ينقى الثوب الأبيض من الدنس، اللهم اغسلني من خطاياي بالثلج والماء والبرد. \n سبحانك اللهم وبحمدك وتبارك اسمك وتعالى جدُّك ولاإله غيرك. \n الله اكبر كبيرا ، الله اكبر كبيرا ، الله اكبر كبيرا ، والحمد لله كثيرا ، والحمد لله كثيرا ، والحمد لله كثيرا ، وسبحان الله بكرة وأصيلا(ثلاثـــا) \n اعوذ بالله من الشيطان من نفحه ونفثه وهمزه',
                maxValue: 1,
                initialCounterValue: 0),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
