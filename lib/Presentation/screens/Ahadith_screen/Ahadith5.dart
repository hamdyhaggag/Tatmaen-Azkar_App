import 'package:flutter/material.dart';

import '../../Widgets/custom_app_bar.dart';
import '../../Widgets/custom_container.dart';

class Ahadith5 extends StatelessWidget {
  final String title;
  const Ahadith5({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: 'النهي عن الابتداع في الدين '),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 15),
            CustomContainer(
                headtitle: 'الحديث الخامس',
                title:
                    'عَنْ أُمِّ المُؤمِنِينَ أُمِّ عَبْدِ اللهِ عَائِشَةَ - رَضِيَ اللهُ عَنْهَا - قَالَتْ: قَالَ رَسُوْلُ اللهِ : " مَنْ أَحْدَثَ فِيْ أَمْرِنَا هَذَا مَا لَيْسَ مِنْهُ فَهُوَ رَدٌّ " رواه البخاري ومسلم،\n وفي رواية لمسلم " مَنْ عَمِلَ عَمَلاً لَيْسَ عَلَيْهِ أَمْرُنَا فَهُوَ رَدٌِّ',
                maxValue: 1),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
