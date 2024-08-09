import 'package:flutter/material.dart';
import 'package:tatmaen/imports.dart';

class PlusAzkar extends StatelessWidget {
  final String title;
  const PlusAzkar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => AzkarCubit(),
        child: AzkarModelView(
          title: title,
          azkarList: const [
            'اللَّهُمَّ يَا سَمِيعَ الدَّعَوَاتِ ، يَا مُقِيلَ العَثَرَاتِ ، يَاقَاضِيَ الحَاجَاتِ ، يَا كَاشِفَ الكَرُبَاتِ ، يَا رَفِيعَ الدَّرَجَاتِ ، وَيَا غَافِرَ الزَّلاَّتِ ، اغْفِرْ لِلْمُسْلِمِينَ وَالمُسْلِمَاتِ ، وَالمُؤْمِنِينَ وَالمُؤْمِنَاتِ، الأحْيَاءِ مِنْهُم وَالأمْوَاتِ ، إِنَّكَ سَمِيعٌ قَرِيبٌ مُجِيبُ الدَّعَوَاتِ',
            'اللَّهُمَّ إِنِّي أَسْأَلُكَ بِاسْمِكَ الأَعْظَمِ ، الَّذِي إِذَا دُعِيتَ بِهِ أَجَبْتَ ، وَإِذَا سُئِلْتَ بِهِ أَعْطَـيْتَ ، أَسْأَلُكَ بِأَنِّي أَشْهَدُ أَنَّكَ أَنْتَ اللهُ لا إِلَهَ إِلاَّ أَنْتَ ، الأَحَدُ الصَّمَدُ ، الَّذِي لَمْ يَلِدْ، وَلَمْ يَولَدْ ، وَلَمْ يَكُنْ لَهُ كُفُوًا أَحَدٌ ؛ أَنْ تَغْفِرَ لِي ذُنُوبِي ، إِنَّكَ أَنْتَ الغَفُورُ الرَّحِيمُ',
            'اللَّهُمَّ إِنَّكَ عَفُوٌّ كَرِيمٌ تُحِبُّ العّفْوَ فَاعْفُ عَنِّي',
            'اللَّهُمَّ رَبِّ اغْفِرْ لِي وَلِوَالِدَيَّ وَ لِمَنْ دَخَلَ بَيْتِيَ مُؤْمِنًا وَلِلْمُؤْمِنِينَ وَالمُؤْمِنَاتِ',
            'اللَّهُمَّ اغْفِرْ لِي خَطِيئَتِي وَجَهْلِي ، وَإِسْرَافِي فِي أَمْرِي ، وَمَا أَنْتَ أَعْـلَمُ بِهِ مِنّـِي ، اللَّهُمَّ اغْفِرْ لِي هَزْلِي وَ جِدِّي ، وَخَطَئِي وَعَمْدِي ، وَكُلُّ ذَلِكَ عِنْدِي',
            'اللَّهُمَّ رَبِّ إِنِّي ظَلَمْتُ نَفْسِي فَاغْفِرْ لِي.',
            'اللَّهُمَّ اغْفِرْ لِي ، وَارْحَمْنِي وَاهْدِنِي ، وَعَافِنِي وَارْزُقْنِي ، وَاجْبُرْنِي ، وَارْفَعْنِي',
            'اللَّهُمَّ يَا مَنْ لا تَضُرُّهُ الذُّنُوبُ ، وَلا تُنْقِصُهُ المَغْفِرَةُ ، اغْفِرْ لَنَا مَا لا يَضُرُّكَ ، وَهَبْ لَنَا مَالا يُنْقِصُكَ',
            'اللَّهُمَّ اغْفِرْ لِي ذَنْبِي كُلّهُ ، دِقَّهُ وَ جُلَّهُ ، وَ أَوَّلَهُ وَ آخِرَهَ ، وَ عَلاَنِيَتَهَ وَ سِرَّه',
            'اللَّهُمَّ إِنَّ ذُنُوبِي عِظَامٌ وَهِي صِغَارٌ فِي جَنْبِ عَفْوِكَ يَا كَرِيمُ ، فَاغْفِرْهَا لِي',
            'اللَّهُمَّ اغْفِرْ لِي ذَنْبِي ، وَوَسِّعْ لِي فِي دَارِي ، وَبَارِكْ لِي فِي رِزْقِي',
            'اللَّهُمَّ رَبَّنَا لا تُؤَاخِذْنَا إِنْ نَسِينَا أَوْ أَخْطَأْنَا ، رَبَّنَا وَلا تَحْمِلْ عَلَينَا إِصْرَاً كَمَا حَمَلْتَهَ عَلَى الَّذِينَ مِنْ قَبْلِنَا ، رَبَّنَا وَلا تُحَمِّلْنَا مَا لا طَاقَةَ لَنَا بِهِ ، وَاعْفُ عَنَّا وّاغْفِرْ لَنَا وَارْحَمْنَا أَنْتَ مَوْلانَا فَانْصُرْنَا عَلَى القَوْمِ الكَافِرِين',
            'اللَّهُمَّ إِنَّا قَدْ أَطَعْنَاكَ فِي أَحَبِّ الأشْيَاءِ إِلَيْكَ أَنْ تُطَاعَ فِيْهِ ، الإيمَانِ بِكَ ، وَالإِقْرَارِ بِكَ ، وَلَمْ نَعْصِكَ فِي أَبْغَضِ الأَشْيَاءِ أَنْ تُعْصَى فِيْهِ ؛ الكُفْرِ وَالجَحْدِ بِكَ ، اللَّهُمَّ فَاغْفِرْ لَنَا مَا بَيْنَهُمَا',
            'اللَّهُمَّ اغْفِرْ لِي مَا قَدَّمْتُ وَمَا أَخَّرْتُ ، وَمَا أَعْلَنْتُ وَمَا أَسْرَرْتُ ، وما أنت أعلم به مني ، أَنْتَ المُقَدِّمُ وَأَنْتَ المُؤَخِّرُ لا إِلَهَ إِلاَّ أَنْـت',
            'اللَّهُمَّ رَبَّنَا اغْفِرْ لَنَا ذُنُوبَنَا وَكَفِّرْ عَنَّا سَيِّئَاتِنَا وَتَوَفَّنَا مَعَ الأَبْرَارِ.',
            'اللَّهُمَّ رَبَّنَا اغْفِرْ لَنَا وَلإخْوَانِنَا الَّذِينَ سَبَقُونَا بِالإِيْمَانِ ، رَبَّنَا وَسِعْتَ كُلّ شَيءٍ رَحْمَةً وَعِلْماً فَاغْفِرْ لِلَّذِينَ تَابُوا وَاتَّبَعُوا سَبِيلَكَ وَقِهِمْ عَذَاب الجَحِيم',
            'اللَّهُمَّ أَقِلْ عَثَرَاتِنَا ، وَاغْفِرْ زَلاَّتِنَا ، وَكَفِّرْ عَنَّا سَيِّئَاتِنَا ، وَتَوَفَّنَا مَعَ الأَبْرَار',
            'اللَّهُمَّ بَاعِدْ بَيْنِي وَبَينَ خَطَايَايَ كَمَا بَاعَدْتَ بَيْنَ المَشْرِقِ وَالمَغْرِبْ ، اللَّهُمَّ اغْسِلْنِي مِنْ خَطَايَايَ بِالمَاءِ وَالثَّلْجِ وَالبَرَدِ ، اللَّهُمَّ نَقِّنِي مِنْ الخَطَايَا كَمَا يُنَقَّى الثَّوبُ الأَبْيَضُ مِـنَ الدَّنَس',
            'اللَّهُمَّ إِنِّي ظَلَمْتُ نَفْسِي ظلْماً كَثِيراً ، وَلا يَغْفِرُ الذُّنُوب إِلاَّ أَنْتَ. فَاغْفِرْ لِي مَغْفِرَةً مِنْ عِنْدَكَ ، وَارْحَمْنِي إِنَّكَ أَنْتَ الغَفُورُ الرَّحِيم',
            'اللَّهُمَّ إِلَهِي : حُجَّتِي حَاجَتِي ، وَعُدَّتِي فَسْرَحِي ، وَتُجَرُّ قِيَامِي لَيْلِي وَيَومِي ، وَمُقْتَفِي مَنَائِي وَحِفْظِي ، وَفُرُودِي وَنَفْسِي عَلَيْهِ قَدْ لَبَّيْتُ وَلَمْ أَجِدْ بَدَلاً',
            'اللَّهُمَّ إِنِّي أَعُوذُ بِكَ مِنْ كُلِّ عَمَلٍ قَلْبُهُ مُعَطَّلٌ ، وَجَسَدٍ قَلْبُهُ لَيْسَ مَفْتُوحًا',
            'اللَّهُمَّ أَذْكُرُكَ بِذِكْرٍ عَظِيمٍ وَتَقِيَّةٍ فِي الْمَسَاءِ وَالصُّبْحِ ، وَسَعَةٍ فِي الصَّبَاحِ وَالْمَسَاءِ ، وَتَفْرِيجٍ لِلْكُرُبِ وَسُرُورٍ لِلْفُرَجِ',
            'اللَّهُمَّ يَا مَنْ لا إِلَهَ إِلَّا أَنْتَ ، وَصَلِّ عَلَى مُحَمَّدٍ وَآلِهِ',
            'اللَّهُمَّ يَا مَنْ لَهُ أَسْمَاءٌ حُسْنَى ، وَصِفَاتٌ عُلَى ، وَيَدٌ قَدْ جَاءَتْ وَعَلِمَتْ ، اغْفِرْ لِي ذُنُوبِي وَعَمَلِي وَكَفِّرْ عَنِّي سَيِّئَاتِي',
            'اللَّهُمَّ يَا أَحَدُ يَا صَمَدُ يَا خَالِقُ يَا بَارِئُ يَا مُصَوِّرُ يَا مَغْفِرُ يَا مُسَمِّيُ يَا عَلِيمُ يَا خَفِيُّ يَا سَمِيعُ يَا بَصِيرُ يَا رَحْمَنُ يَا رَحِيمُ'
          ],
          maxValues: const [1],
        ),
      ),
    );
  }
}
