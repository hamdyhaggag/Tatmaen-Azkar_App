import 'package:flutter/material.dart';

import '../../../imports.dart';

class AhadithScreen extends StatelessWidget {
  const AhadithScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      backgroundColor: isDarkMode ? const Color(0xff1F1F1F) : Colors.white,
      appBar: const CustomAppBar(title: 'الأربعين', isHome: true),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 12.0.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.0.w),
                child: Image.asset(
                  'assets/mot.png',
                  alignment: Alignment.topCenter,
                ),
              ),
              SizedBox(height: 20.0.h),
              _buildAhadithList(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAhadithList(BuildContext context) {
    final ahadithItems = [
      AhadithItem(
          name: 'الأعمال بالنيات',
          screen: const Ahadith1(title: 'الأعمال بالنيات')),
      AhadithItem(
          name: 'مراتب الدين', screen: const Ahadith2(title: 'مراتب الدين')),
      AhadithItem(
          name: 'أركان الإسلام',
          screen: const Ahadith3(title: 'أركان الإسلام')),
      AhadithItem(
          name: 'مراحل الخلق', screen: const Ahadith4(title: 'مراحل الخلق')),
      AhadithItem(
          name: 'النهي عن الابتداع في الدين',
          screen: const Ahadith5(title: 'النهي عن الابتداع في الدين')),
      AhadithItem(
          name: 'البعد عن مواطن الشبهات',
          screen: const Ahadith6(title: 'البعد عن مواطن الشبهات')),
      AhadithItem(
          name: 'الدين النصيحه',
          screen: const Ahadith7(title: 'الدين النصيحه')),
      AhadithItem(
          name: 'حرمة دم المسلم وماله',
          screen: const Ahadith8(title: 'حرمة دم المسلم وماله')),
      AhadithItem(
          name: 'النهي عن كثرة السؤال والتشدد',
          screen: const Ahadith9(title: 'النهي عن كثرة السؤال والتشدد')),
      AhadithItem(
          name: 'سبب إجابة الدعاء',
          screen: const Ahadith10(title: 'سبب إجابة الدعاء')),
      AhadithItem(
          name: 'اترك ما شككت فيه',
          screen: const Ahadith11(title: 'اترك ما شككت فيه')),
      AhadithItem(
          name: 'الاشتغال بما يفيد',
          screen: const Ahadith12(title: 'الاشتغال بما يفيد')),
      AhadithItem(
          name: 'من كمال الإيمان',
          screen: const Ahadith13(title: 'من كمال الإيمان')),
      AhadithItem(
          name: 'متى يهدر دم المسلم؟',
          screen: const Ahadith14(title: 'متى يهدر دم المسلم؟')),
      AhadithItem(
          name: 'اكرام الضيف', screen: const Ahadith15(title: 'اكرام الضيف')),
      AhadithItem(
          name: 'النهي عن الغضب',
          screen: const Ahadith16(title: 'النهي عن الغضب')),
      AhadithItem(
          name: 'الرفق بالحيوان',
          screen: const Ahadith17(title: 'الرفق بالحيوان')),
      AhadithItem(
          name: 'الخلق الحسن', screen: const Ahadith18(title: 'الخلق الحسن')),
      AhadithItem(
          name: 'الإيمان بالقضاء والقدر',
          screen: const Ahadith19(title: 'الإيمان بالقضاء والقدر')),
      AhadithItem(
          name: 'الحياء من الإيمان',
          screen: const Ahadith20(title: 'الحياء من الإيمان')),
      AhadithItem(
          name: 'الاستقامه بالإسلام',
          screen: const Ahadith21(title: 'الاستقامه بالإسلام')),
      AhadithItem(
          name: 'الطريق إلى الجنة',
          screen: const Ahadith22(title: 'الطريق إلى الجنة')),
      AhadithItem(
          name: 'جوامع الخير', screen: const Ahadith23(title: 'جوامع الخير')),
      AhadithItem(
          name: 'من فضل الله على الناس',
          screen: const Ahadith24(title: 'من فضل الله على الناس')),
      AhadithItem(
          name: 'فضل الذكر', screen: const Ahadith25(title: 'فضل الذكر')),
      AhadithItem(
          name: 'كثرة طرق الخير',
          screen: const Ahadith26(title: 'كثرة طرق الخير')),
      AhadithItem(
          name: 'تعريف البر والإثم',
          screen: const Ahadith27(title: 'تعريف البر والإثم')),
      AhadithItem(
          name: 'السمع والطاعة',
          screen: const Ahadith28(title: 'السمع والطاعة')),
      AhadithItem(
          name: 'أبواب الخير', screen: const Ahadith29(title: 'أبواب الخير')),
      AhadithItem(
          name: 'الوقوف عند حدود الشرع',
          screen: const Ahadith30(title: 'الوقوف عند حدود الشرع')),
      AhadithItem(
          name: 'الزهد في الدنيا',
          screen: const Ahadith31(title: 'الزهد في الدنيا')),
      AhadithItem(
          name: 'لا ضرر ولا ضرار',
          screen: const Ahadith32(title: 'لا ضرر ولا ضرار')),
      AhadithItem(
          name: 'البيّنة على المُدَّعي',
          screen: const Ahadith33(title: 'البيّنة على المُدَّعي')),
      AhadithItem(
          name: 'تغيير المنكر فريضة',
          screen: const Ahadith34(title: 'تغيير المنكر فريضة')),
      AhadithItem(
          name: 'المسلم أخو المسلم',
          screen: const Ahadith35(title: 'المسلم أخو المسلم')),
      AhadithItem(
          name: 'قضاء حوائج المسلمين',
          screen: const Ahadith36(title: 'قضاء حوائج المسلمين')),
      AhadithItem(
          name: 'الترغيب في فعل الحسنات',
          screen: const Ahadith37(title: 'الترغيب في فعل الحسنات')),
      AhadithItem(
          name: 'جزاء معادات الأولياء',
          screen: const Ahadith38(title: 'جزاء معادات الأولياء')),
      AhadithItem(
          name: 'التجاوز عن الخطأ والنسيان',
          screen: const Ahadith39(title: 'التجاوز عن الخطأ والنسيان')),
      AhadithItem(
          name: 'كن في الدنيا كأنك غريب',
          screen: const Ahadith40(title: 'كن في الدنيا كأنك غريب')),
    ];
    return LayoutBuilder(
      builder: (context, constraints) {
        final crossAxisCount = constraints.maxWidth < 600 ? 2 : 2;
        return GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: ahadithItems.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            crossAxisSpacing: 16.0,
            mainAxisSpacing: 16.0,
          ),
          itemBuilder: (context, index) {
            final item = ahadithItems[index];
            return AhadithCategoryCard(
              number: index + 1,
              title: item.name,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => item.screen,
                  ),
                );
              },
              icon: FontAwesomeIcons.book,
              // imageUrl: 'assets/background-card.png',
            );
          },
        );
      },
    );
  }
}

class AhadithItem {
  final String name;
  final Widget screen;
  AhadithItem({required this.name, required this.screen});
}
