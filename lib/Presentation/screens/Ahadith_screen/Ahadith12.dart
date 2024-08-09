import 'package:flutter/material.dart';
import 'package:tatmaen/imports.dart';

class Ahadith12 extends StatelessWidget {
  final String title;
  const Ahadith12({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: 'الاشتغال بما يفيد '),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 15),
            CustomContainer(
                headtitle: 'الحديث الثاني عشر',
                title:
                    'عَنْ أَبِيْ هُرَيْرَةَ رَضِيَ اللهُ عَنْهُ قَالَ: قَالَ رَسُوْلُ اللهِ ﷺ : (مِنْ حُسْنِ إِسْلامِ المَرْءِ تَرْكُهُ مَا لاَ يَعْنِيْهِ) حديثٌ حسنٌ،\n رواه الترمذي وغيره هكذا.',
                maxValue: 1),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
