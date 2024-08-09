import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tatmaen/Presentation/Widgets/Shared/app_dialog.dart';
import 'package:tatmaen/imports.dart';

class ScreenLayout extends StatelessWidget {
  const ScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppStates>(
      builder: (context, state) {
        final cubit = AppCubit.get(context);
        final isDarkMode = Theme.of(context).brightness == Brightness.dark;

        return Scaffold(
          bottomNavigationBar: BottomNavigationBar(
              selectedFontSize: 19,
              unselectedFontSize: 19,
              iconSize: 25,
              elevation: 90,
              unselectedItemColor: Colors.grey,
              backgroundColor:
                  isDarkMode ? const Color(0xb01f1f1f) : Colors.white,
              type: BottomNavigationBarType.fixed,
              items: cubit.bottomItems,
              currentIndex: cubit.index,
              selectedItemColor: AppColors.primaryColor,
              onTap: (index) {
                cubit.changeIndex(index);
              }),
          body: PopScope(
              onPopInvoked: (didPop) async {
                if (cubit.index != 4) {
                  cubit.changeIndex(4);
                  return Future.value(false);
                } else {
                  AppDialog.showAppDialog(
                    context: context,
                    content: 'هل تود الخروج من التطبيق ؟',
                    okAction: AppDialogAction(
                      title: 'نعم',
                      onTap: () {
                        SystemNavigator.pop();
                      },
                    ),
                    cancelAction: AppDialogAction(
                      title: 'لا',
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  );
                  return Future.value(false);
                }
              },
              child: cubit.buildScreens[cubit.index]),
        );
      },
    );
  }
}
