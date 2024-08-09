import 'package:flutter/material.dart';
import 'package:tatmaen/imports.dart';

class Ahadith2 extends StatelessWidget {
  final String title;
  const Ahadith2({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: 'مراتب الدين '),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 15),
            CustomContainer(
                headtitle: 'الحديث الثاني',
                title:
                    'عَنْ عُمَرَ رَضِيَ اللهُ تَعَالَى عَنْهُ أقَال : بَيْنَمَا نَحْنُ جُلُوْسٌ عِنْدَ رَسُولِ اللهِ ذَاتَ يَوْمٍ إَذْ طَلَعَ عَلَيْناَ رَجُلٌ شَدِيْدُ بَيَاضِ الثّياب شَدِيْدُ سَوَادِ الشَّعْرِ لاَ يُرَى عَلَيهِ أَثَرُ السَّفَرِ وَلاَ يَعْرِفُهُ مِنا أحَدٌ حَتى جَلَسَ إلَى النبِي فَأَسْنَدَ رُكْبَتَيْهِ إلَى رُكْبَتَيْهِ وَوَضَعَ كَفيْهِ عَلَى فَخِذِيْهِ وَقَالَ : يَا مُحَمَّدُ أَخْبِرْنِي عَنِ الإِسْلاَم ، فَقَالَ رَسُولُ اللهِ ﷺ : " الإِسْلاَمُ أَنْ تَشْهَدَ أَنْ لاَ إلَه إلاَّ اللهُ وَأَنَّ مُحَمَّدَاً رَسُولُ الله ، وَتُقِيْمَ الصَّلاَة ، وَتُؤْتِيَ الزَّكَاةَ ، وَتَصُوْمَ رَمَضَانَ ، وَتَحُجَّ البيْتَ إِنِ اِسْتَطَعتَ إِليْهِ سَبِيْلاً " قَالَ: صَدَقْتَ. فَعجِبْنَا لَهُ يَسْأَلُهُ وَيُصَدِّقُهُ، قَالَ: فَأَخْبِرِنيْ عَنِ الإِيْمَانِ، قَالَ: " أَنْ تُؤمِنَ بِالله، وَمَلاِئكَتِه، وَكُتُبِهِ ، وَرُسُلِهِ ، وَالْيَومِ الآَخِر ، وَتُؤْمِنَ بِالقَدَرِ خَيْرِهِ وَشَرِّهِ " قَالَ: صَدَقْتَ، قَالَ فَأخْبِرْنِيْ عَنِ الإِحْسَانِ، قَالَ: " أَنْ تَعْبُدَ اللهَ كَأَنَكَ تَرَاهُ، فَإِنْ لمْ تَكُنْ تَرَاهُ فَإِنَّهُ يَرَاكَ " . قَالَ: فَأَخْبِرْنِي عَنِ السَّاعَةِ ، قَالَ : " مَا الْمَسئُوُلُ عَنْهَا بِأَعْلَمَ مِنَ السَّائِلِ " قَالَ : فَأخْبِرْنِيْ عَنْ أَمَارَاتِها ، قَالَ : " أَنْ تَلِدَ الأَمَةُ رَبَّتَهَا ، وَأَنْ تَرى الحُفَاةَ العُرَاةَ العَالَةَ رِعَاءَ الشَّاءِ يَتَطَاوَلُوْنَ فِي البُنْيَانِ " ثْمَّ انْطَلَقَ فَلَبِثتُ مَلِيَّاً ثُمَّ قَالَ : " يَا عُمَرُ أَتَدْرِي مَنِ السَّائِلُ؟ " قُلْتُ اللهُ وَرَسُوله أَعْلَمُ قَالَ : " فَإِنَّهُ جِبْرِيْلُ أَتَاكُمْ يُعَلَّمُكُمْ دِيْنَكُمْ "\n رواه مسلم  ',
                maxValue: 1),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
