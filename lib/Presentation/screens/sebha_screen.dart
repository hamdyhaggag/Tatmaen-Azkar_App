import 'package:flutter/material.dart';
import '../../imports.dart';

class Sebha extends StatelessWidget {
  const Sebha({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      backgroundColor: isDarkMode ? const Color(0xff1F1F1F) : Colors.white,
      appBar: const CustomAppBar(title: 'السبحة', isHome: true),
      body: BlocBuilder<AppCubit, AppStates>(
        builder: (context, state) {
          final cubit = AppCubit.get(context);
          return ScrollConfiguration(
            behavior: const ScrollBehavior().copyWith(overscroll: false),
            child: ListView(
              children: [
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
                        height: MediaQuery.of(context).size.height / 1.7,
                        fit: BoxFit.cover,
                        alignment: Alignment.center,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 30.0),
                        child: Text(
                          '${cubit.counter}',
                          style: TextStyle(
                            fontSize: cubit.counter < 1000 ? 65 : 45,
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
                Container(
                  color: isDarkMode ? Colors.transparent : Colors.white,
                  child: Column(
                    children: [
                      const MyCustomRow(),
                      SizedBox(height: 20.h),
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
    );
  }
}
