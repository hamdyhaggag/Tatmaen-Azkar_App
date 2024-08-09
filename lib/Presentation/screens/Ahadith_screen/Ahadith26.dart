import 'package:flutter/material.dart';
import 'package:tatmaen/imports.dart';

class Ahadith26 extends StatelessWidget {
  final String title;
  const Ahadith26({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: 'كثرة طرق الخير '),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 15),
            CustomContainer(
                headtitle: 'الحديث السادس و العشرون',
                title:
                    ' عَنْ أَبِي هُرَيْرَةَ رضي الله عنه قَالَ: قَالَ رَسُولُ اللهِ ﷺ : (كُلُّ سُلامَى مِنَ النَّاسِ عَلَيْهِ صَدَقَةٌ كُلُّ يَومٍ تَطْلُعُ فِيْهِ الشَّمْسُ: تَعْدِلُ بَيْنَ اثْنَيْنِ صَدَقَةٌ، وَتُعِيْنُ الرَّجُلَ في دَابَّتِهِ فَتَحْمِلُ لَهُ عَلَيْهَا أَو تَرْفَعُ لَهُ عَلَيْهَا مَتَاعَهُ صَدَقَةٌ، وَالكَلِمَةُ الطَّيِّبَةُ صَدَقَةٌ، وَبِكُلِّ خُطْوَةٍ تَمْشِيْهَا إِلَى الصَّلاةِ صَدَقَةٌ، وَتُمِيْطُ الأَذى عَنِ الطَّرِيْقِ صَدَقَةٌ) \nرواه البخاري ومسلم.',
                maxValue: 1),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
