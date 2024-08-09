import 'package:flutter/material.dart';
import 'package:tatmaen/imports.dart';

class Ahadith33 extends StatelessWidget {
  final String title;
  const Ahadith33({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: 'البيّنة على المُدَّعي '),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 15),
            CustomContainer(
                headtitle: 'الحديث الثالث و الثلاثون',
                title:
                    'عنِ ابْنِ عَبَّاسٍ رَضِيَ اللهُ عَنْهُمَا أَنَّ رَسُولَ اللهِ ﷺ قَالَ: "لَوْ يُعْطَى النَّاسُ بِدعوَاهُمْ لادَّعَى رِجَالٌ أَمْوَال قَومٍ وَدِمَاءهُمْ، وَلَكِنِ البَينَةُ عَلَى المُدَّعِي، وَاليَمينُ عَلَى مَن أَنكَر" \nحديث حسن رواه البيهقي هكذا بعضه في الصحيحين. ',
                maxValue: 1),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
