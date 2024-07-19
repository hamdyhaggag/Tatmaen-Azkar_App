import 'package:flutter/material.dart';
import '../../imports.dart';

class AzkarScreen extends StatelessWidget {
  const AzkarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
        backgroundColor: isDarkMode ? Color(0xff1F1F1F) : Colors.white,
        appBar: const CustomAppBar(title: 'الأذكار', isHome: true),
        body: ListView(
          children: [
            SizedBox(
              height: 12.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.w),
              child: Image.asset(
                'assets/azkarcont.png',
                alignment: Alignment.topCenter,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    azkarButton(
                        name: 'أذكار الصباح',
                        screeen: const MorningAzkar(title: 'أذكار الصباح'),
                        context: context),
                    azkarButton(
                        name: 'أذكار  المساء',
                        screeen: const EveningAzkar(title: 'أذكار  المساء'),
                        context: context),
                    azkarButton(
                        name: 'أذكار الصلاة',
                        screeen: const PrayAzkar(title: 'أذكار الصلاة'),
                        context: context),
                    azkarButton(
                        name: 'أذكار النوم',
                        screeen: const SleepAzkar(title: 'أذكار النوم'),
                        context: context),
                    azkarButton(
                        name: 'أذكار الإستيقاظ',
                        screeen: const WakeUpAzkar(title: 'أذكار الإستيقاظ'),
                        context: context),
                    azkarButton(
                        name: 'أذكار متفرقة',
                        screeen: const CollectionAzkar(title: 'أذكار متفرقة'),
                        context: context),
                    azkarButton(
                        name: 'أذكار الطعام',
                        screeen: const FoodAzkar(title: 'أذكار الطعام'),
                        context: context),
                    azkarButton(
                        name: 'أذكار السفر',
                        screeen:
                            const TravelAzkar(title: 'الْأدْعِيَةُ النبوية'),
                        context: context),
                    azkarButton(
                        name: 'الأدعية القرآنية',
                        screeen: const QuranAzkar(title: 'الأدعية القراّنية'),
                        context: context),
                    azkarButton(
                        name: 'الأدعية النبوية',
                        screeen:
                            const NabawiAzkar(title: 'الْأدْعِيَةُ النبوية'),
                        context: context),
                    azkarButton(
                        name: 'تسبيحات',
                        screeen: const Tasabeh(title: 'تسبيحات'),
                        context: context),
                    azkarButton(
                        name: 'جوامع الدعاء',
                        screeen: const PlusAzkar(title: 'جوامع الدعاء'),
                        context: context),
                    azkarButton(
                        name: 'أدعية للميت',
                        screeen: const DeadAzkar(title: 'أدعية للميّت'),
                        context: context),
                    azkarButton(
                        name: 'الرقية الشرعية',
                        screeen: const RoqiaScreen(title: 'الرقية الشرعية'),
                        context: context),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
