import 'package:flutter/material.dart';
import 'package:tatmaen/imports.dart';

class Ahadith31 extends StatelessWidget {
  final String title;
  const Ahadith31({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: 'الزهد في الدنيا '),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 15),
            CustomContainer(
                headtitle: 'الحديث الحادي و الثلاثون',
                title:
                    'عَنْ أَبي العَباس سَعدِ بنِ سَهلٍ السَّاعِدي رضي الله عنه قَالَ: جَاءَ رَجُلٌ إِلَى النبي ﷺ فَقَالَ: يَا رَسُول الله: دُلَّني عَلَى عَمَلٍ إِذَا عَمَلتُهُ أَحَبَّني اللهُ، وَأَحبَّني النَاسُ ؟ فَقَالَ: (ازهَد في الدُّنيَا يُحِبَّكَ اللهُ ، وازهَد فيمَا عِندَ النَّاسِ يُحِبَّكَ النَّاسُ) \nحديث حسن رواه ابن ماجة وغيره بأسانيد حسنة. ',
                maxValue: 1),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
