import 'package:flutter/material.dart';
import 'package:tatmaen24/Presentation/screens/SebhaCounterSection.dart';
import 'package:tatmaen24/imports.dart';

class Sebha extends StatelessWidget {
  final String title;
  final String subtitle;
  final int beadCount;
  final int? maxCounter;

  const Sebha({
    super.key,
    required this.title,
    required this.subtitle,
    required this.beadCount,
    this.maxCounter,
  });

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return SafeArea(
      child: Scaffold(
        backgroundColor: isDarkMode ? const Color(0xff1F1F1F) : Colors.white,
        body: BlocBuilder<AppCubit, AppStates>(
          builder: (context, state) {
            final cubit = AppCubit.get(context);

            if (maxCounter != null) {
              cubit.changeMaxCounter(maxCounter);
            }

            return ScrollConfiguration(
              behavior: const ScrollBehavior().copyWith(overscroll: false),
              child: ListView(
                children: [
                  Column(
                    children: [
                      SebhaCounterSection(
                        total: cubit.totalCounter,
                        currentCount: cubit.counter,
                        cycleCount: cubit.cycleCounter,
                        beadCount: beadCount,
                        title: title,
                        subtitle: subtitle,
                      ),
                      GestureDetector(
                        onTap: cubit.incrementCounter,
                        child: Stack(
                          alignment: AlignmentDirectional.center,
                          children: [
                            Image.asset(
                              isDarkMode
                                  ? 'assets/circle1.png'
                                  : 'assets/circle2.png',
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height / 2.3,
                              fit: BoxFit.cover,
                              alignment: Alignment.center,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 30.0),
                              child: Text(
                                '${cubit.counter}',
                                style: TextStyle(
                                  fontSize: cubit.counter < 1000 ? 55 : 35,
                                  color: isDarkMode
                                      ? Colors.grey
                                      : AppColors.primaryColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    color: isDarkMode ? Colors.transparent : Colors.white,
                    child: Column(
                      children: [
                        SizedBox(height: 10.h),
                        AppButton(
                          horizontalPadding: 30.w,
                          onPressed: () {
                            cubit.resetCounter();
                            Vibrate.feedback(FeedbackType.heavy);
                          },
                          title: 'البدء من جديد',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
