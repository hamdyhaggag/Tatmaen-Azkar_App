import 'package:flutter/material.dart';
import 'package:tatmaen/imports.dart';

class Ahadith13 extends StatelessWidget {
  final String title;
  const Ahadith13({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: 'من كمال الإيمان '),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 15),
            CustomContainer(
                headtitle: 'الحديث الثالث عشر',
                title:
                    'عَنْ أَبِيْ حَمْزَة أَنَسِ بنِ مَالِكٍ رَضِيَ اللهُ تَعَالَى عَنْهُ خَادِمِ رَسُوْلِ اللهِ ﷺ عَن النبي ﷺ قَالَ: (لاَ يُؤمِنُ أَحَدُكُمْ حَتَّى يُحِبَّ لأَخِيْهِ مَا يُحِبُّ لِنَفْسِهِ) \nرواه البخاري ومسلم',
                maxValue: 1),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
