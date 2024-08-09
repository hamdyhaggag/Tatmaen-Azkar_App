import 'package:flutter/material.dart';
import 'package:tatmaen/imports.dart';

class Ahadith36 extends StatelessWidget {
  final String title;
  const Ahadith36({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: 'قضاء حوائج المسلمين '),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 15),
            CustomContainer(
                headtitle: 'الحديث السادس و الثلاثون',
                title:
                    ' عَنْ أَبي هُرَيرَة رضي الله عنه عَنِ النبي ﷺ قَالَ: مَنْ نَفَّسَ عَنْ مُؤمِن كُربَةً مِن كُرَبِ الدُّنيَا نَفَّسَ اللهُ عَنهُ كُربَةً مِنْ كرَبِ يَوم القيامَةِ، وَمَنْ يَسَّرَ على مُعسرٍ يَسَّرَ الله عَلَيهِ في الدُّنيَا والآخِرَة، وَمَنْ سَتَرَ مُسلِمَاً سَتَرَهُ الله في الدُّنيَا وَالآخِرَة، وَاللهُ في عَونِ العَبدِ مَا كَانَ العَبدُ في عَونِ أخيهِ، وَمَنْ سَلَكَ طَريقَاً يَلتَمِسُ فيهِ عِلمَاً سَهَّلَ اللهُ لهُ بِهِ طَريقَاً إِلَى الجَنَّةِ، وَمَا اجتَمَعَ قَومٌ في بَيتٍ مِنْ بيوتِ اللهِ يَتلونَ كِتابِ اللهِ وَيتَدارَسونهَ بَينَهُم إِلا نَزَلَت عَلَيهُم السَّكينَة وَغَشيَتهم الرَّحمَة وحَفَتهُمُ المَلائِكة وَذَكَرهُم اللهُ فيمَن عِندَهُ،وَمَنْ بَطَّأ بِهِ عَمَلُهُ لَمْ يُسْرِعْ بهِ نَسَبُهُ \nرواه مسلم بهذا اللفظ',
                maxValue: 1),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
