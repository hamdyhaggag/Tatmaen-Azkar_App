import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../constants/colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
    required this.title,
    this.isHome = false,
  }) : super(key: key);
  final String title;
  final bool isHome;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return AppBar(
      backgroundColor: isDarkMode ? Colors.transparent : Colors.white,
      elevation: 0,
      title: Align(
        alignment: isHome
            ? AlignmentDirectional.topCenter
            : AlignmentDirectional.topEnd,
        child: Text(
          title,
          style: TextStyle(
            fontSize: 23,
            fontFamily: 'Cairo',
            fontWeight: FontWeight.w700,
            color: isDarkMode ? Colors.white : AppColors.primaryColor,
          ),
        ),
      ),
      leadingWidth: 0.0,
      leading: const SizedBox(),
      actions: !isHome
          ? [
              IconButton(
                onPressed: () {
                  Navigator.canPop(context) == true
                      ? Navigator.pop(context)
                      : () {};
                },
                icon: Icon(
                  FontAwesomeIcons.chevronRight,
                  color: isDarkMode ? Colors.white : AppColors.primaryColor,
                ),
              ),
              SizedBox(width: 5.w),
            ]
          : [],
    );
  }
}
