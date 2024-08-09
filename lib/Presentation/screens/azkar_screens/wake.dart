import 'package:flutter/material.dart';
import 'package:tatmaen/imports.dart';

class WakeUpAzkar extends StatelessWidget {
  final String title;
  const WakeUpAzkar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => AzkarCubit(),
        child: AzkarModelView(
          title: title,
          azkarList: const [
            'الحَمْـدُ لِلّهِ الّذي أَحْـيانا بَعْـدَ ما أَماتَـنا وَإليه النُّـشور.',
            'الحمدُ للهِ الذي عافاني في جَسَدي وَرَدّ عَليّ روحي وَأَذِنَ لي بِذِكْرِه.',
            'لا إلهَ إلاّ اللّهُ وَحْـدَهُ لا شَـريكَ له، لهُ المُلـكُ ولهُ الحَمـد، وهوَ على كلّ شيءٍ قدير، سُـبْحانَ اللهِ، والحمْـدُ لله ، ولا إلهَ إلاّ اللهُ واللهُ أكبَر، وَلا حَولَ وَلا قوّة إلاّ باللّهِ العليّ العظيم. رَبِّ اغْفرْ لي.',
          ],
          maxValues: const [1],
        ),
      ),
    );
  }
}
