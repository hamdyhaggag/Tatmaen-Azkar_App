import 'package:flutter/material.dart';
import 'package:tatmaen/imports.dart';

class Ahadith6 extends StatelessWidget {
  final String title;
  const Ahadith6({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: 'البعد عن مواطن الشبهات'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 15),
            CustomContainer(
                headtitle: 'الحديث السادس',
                title:
                    'عَنْ أَبِيْ عَبْدِ اللهِ النُّعْمَانِ بْنِ بِشِيْر رضي الله عنهما قَالَ: سَمِعْتُ رَسُوْلَ اللهِ ﷺ يَقُوْلُ: (إِنَّ الحَلالَ بَيِّنٌ وَإِنَّ الحَرَامَ بَيِّنٌ وَبَيْنَهُمَا أُمُوْرٌ مُشْتَبِهَات لاَ يَعْلَمُهُنَّ كَثِيْرٌ مِنَ النَّاس،ِ فَمَنِ اتَّقَى الشُّبُهَاتِ فَقَدِ اسْتَبْرأَ لِدِيْنِهِ وعِرْضِه، وَمَنْ وَقَعَ فِي الشُّبُهَاتِ وَقَعَ فِي الحَرَامِ كَالرَّاعِي يَرْعَى حَوْلَ الحِمَى يُوشِكُ أَنْ يَقَعَ فِيْهِ. أَلا وَإِنَّ لِكُلِّ مَلِكٍ حِمَىً . أَلا وَإِنَّ حِمَى اللهِ مَحَارِمُهُ، أَلا وإِنَّ فِي الجَسَدِ مُضْغَةً إِذَا صَلَحَتْ صَلَحَ الجَسَدُ كُلُّهُ وإذَا فَسَدَت فَسَدَ الجَسَدُ كُلُّهُ أَلا وَهيَ القَلْبُ)\n رواه البخاري ومسلم ',
                maxValue: 1),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
