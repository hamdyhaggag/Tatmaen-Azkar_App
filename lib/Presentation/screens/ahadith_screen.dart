import 'package:flutter/material.dart';
import '../../imports.dart';

class AhadithScreen extends StatelessWidget {
  const AhadithScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
        backgroundColor: isDarkMode ? const Color(0xff1F1F1F) : Colors.white,
        appBar: const CustomAppBar(title: 'الأربعين', isHome: true),
        body: ListView(
          children: [
            SizedBox(
              height: 12.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.w),
              child: Image.asset(
                'assets/mot.png',
                alignment: Alignment.topCenter,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    azkarButton(
                        name: 'الأعمال بالنيات',
                        screeen: const Ahadith1(title: 'الأعمال بالنيات'),
                        context: context),
                    azkarButton(
                        name: 'مراتب الدين',
                        screeen: const Ahadith2(title: 'مراتب الدين'),
                        context: context),
                    azkarButton(
                        name: 'أركان الإسلام',
                        screeen: const Ahadith3(title: 'أركان الإسلام'),
                        context: context),
                    azkarButton(
                        name: 'مراحل الخلق',
                        screeen: const Ahadith4(title: 'مراحل الخلق'),
                        context: context),
                    azkarButton(
                        name: 'النهي عن الابتداع في الدين',
                        screeen:
                            const Ahadith5(title: 'النهي عن الابتداع في الدين'),
                        context: context),
                    azkarButton(
                        name: 'البعد عن مواطن الشبهات',
                        screeen:
                            const Ahadith6(title: 'البعد عن مواطن الشبهات'),
                        context: context),
                    azkarButton(
                        name: 'الدين النصيحه',
                        screeen: const Ahadith7(title: 'الدين النصيحه'),
                        context: context),
                    azkarButton(
                        name: 'حرمة دم المسلم وماله',
                        screeen: const Ahadith8(title: 'حرمة دم المسلم وماله'),
                        context: context),
                    azkarButton(
                        name: 'النهي عن كثرة السؤال والتشدد',
                        screeen: const Ahadith9(
                            title: 'النهي عن كثرة السؤال والتشدد'),
                        context: context),
                    azkarButton(
                        name: 'سبب إجابة الدعاء',
                        screeen: const Ahadith10(title: 'سبب إجابة الدعاء'),
                        context: context),
                    azkarButton(
                        name: 'اترك ما شككت فيه',
                        screeen: const Ahadith11(title: 'اترك ما شككت فيه'),
                        context: context),
                    azkarButton(
                        name: 'الاشتغال بما يفيد',
                        screeen: const Ahadith12(title: 'الاشتغال بما يفيد'),
                        context: context),
                    azkarButton(
                        name: 'من كمال الإيمان',
                        screeen: const Ahadith13(title: 'من كمال الإيمان'),
                        context: context),
                    azkarButton(
                        name: 'متى يهدر دم المسلم؟',
                        screeen: const Ahadith14(title: 'متى يهدر دم المسلم؟'),
                        context: context),
                    azkarButton(
                        name: 'اكرام الضيف',
                        screeen: const Ahadith15(title: 'اكرام الضيف'),
                        context: context),
                    azkarButton(
                        name: 'النهي عن الغضب',
                        screeen: const Ahadith16(title: 'النهي عن الغضب'),
                        context: context),
                    azkarButton(
                        name: 'الرفق بالحيوان',
                        screeen: const Ahadith17(title: 'الرفق بالحيوان'),
                        context: context),
                    azkarButton(
                        name: 'الخلق الحسن',
                        screeen: const Ahadith18(title: 'الخلق الحسن'),
                        context: context),
                    azkarButton(
                        name: 'الإيمان بالقضاء والقدر',
                        screeen:
                            const Ahadith19(title: 'الإيمان بالقضاء والقدر'),
                        context: context),
                    azkarButton(
                        name: 'الحياء من الإيمان',
                        screeen: const Ahadith20(title: 'الحياء من الإيمان'),
                        context: context),
                    azkarButton(
                        name: 'الاستقامه بالإسلام',
                        screeen: const Ahadith21(title: 'الاستقامه بالإسلام'),
                        context: context),
                    azkarButton(
                        name: 'الطريق إلى الجنة',
                        screeen: const Ahadith22(title: 'الطريق إلى الجنة'),
                        context: context),
                    azkarButton(
                        name: 'جوامع الخير',
                        screeen: const Ahadith23(title: 'جوامع الخير'),
                        context: context),
                    azkarButton(
                        name: 'من فضل الله على الناس',
                        screeen:
                            const Ahadith24(title: 'من فضل الله على الناس'),
                        context: context),
                    azkarButton(
                        name: 'فضل الذكر',
                        screeen: const Ahadith25(title: 'فضل الذكر'),
                        context: context),
                    azkarButton(
                        name: 'كثرة طرق الخير',
                        screeen: const Ahadith26(title: 'كثرة طرق الخير'),
                        context: context),
                    azkarButton(
                        name: 'تعريف البر والإثم',
                        screeen: const Ahadith27(title: 'تعريف البر والإثم'),
                        context: context),
                    azkarButton(
                        name: 'السمع والطاعة',
                        screeen: const Ahadith28(title: 'السمع والطاعة'),
                        context: context),
                    azkarButton(
                        name: 'أبواب الخير',
                        screeen: const Ahadith29(title: 'أبواب الخير'),
                        context: context),
                    azkarButton(
                        name: 'الوقوف عند حدود الشرع',
                        screeen:
                            const Ahadith30(title: 'الوقوف عند حدود الشرع'),
                        context: context),
                    azkarButton(
                        name: 'الزهد في الدنيا',
                        screeen: const Ahadith31(title: 'الزهد في الدنيا'),
                        context: context),
                    azkarButton(
                        name: 'لا ضرر ولا ضرار',
                        screeen: const Ahadith32(title: 'لا ضرر ولا ضرار'),
                        context: context),
                    azkarButton(
                        name: 'البيّنة على المُدَّعي',
                        screeen:
                            const Ahadith33(title: ' البيّنة على المُدَّعي'),
                        context: context),
                    azkarButton(
                        name: 'تغيير المنكر فريضة',
                        screeen: const Ahadith34(title: 'تغيير المنكر فريضة'),
                        context: context),
                    azkarButton(
                        name: 'المسلم أخو المسلم',
                        screeen: const Ahadith35(title: 'المسلم أخو المسلم '),
                        context: context),
                    azkarButton(
                        name: 'قضاء حوائج المسلمين',
                        screeen: const Ahadith36(title: 'قضاء حوائج المسلمين'),
                        context: context),
                    azkarButton(
                        name: 'الترغيب في فعل الحسنات',
                        screeen:
                            const Ahadith37(title: 'الترغيب في فعل الحسنات '),
                        context: context),
                    azkarButton(
                        name: 'جزاء معادات الأولياء',
                        screeen: const Ahadith38(title: 'جزاء معادات الأولياء'),
                        context: context),
                    azkarButton(
                        name: 'التجاوز عن الخطأ والنسيان',
                        screeen:
                            const Ahadith39(title: 'التجاوز عن الخطأ والنسيان'),
                        context: context),
                    azkarButton(
                        name: 'كن في الدنيا كأنك غريب',
                        screeen:
                            const Ahadith40(title: 'كن في الدنيا كأنك غريب'),
                        context: context),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
