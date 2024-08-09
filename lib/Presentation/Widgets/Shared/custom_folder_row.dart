import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
<<<<<<< HEAD
import 'package:tatmaen/Presentation/Config/constants/app_text.dart';
import 'package:tatmaen/Presentation/Config/constants/colors.dart';
=======
import 'package:tatmaen24/Presentation/Config/constants/app_text.dart';
import 'package:tatmaen24/Presentation/Config/constants/colors.dart';
>>>>>>> 0baf087bcac187a91ff41f8d122b99e82b735b57

class CustomFolderRow extends StatelessWidget {
  const CustomFolderRow({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 12, top: 5),
          child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
            AppText(
              title,
              fontSize: 18,
              fontFamily: 'DIN',
              fontWeight: FontWeight.w500,
              color: isDarkMode ? Colors.white : AppColors.primaryColor,
            ),
            SizedBox(
              width: 22.w,
            ),
            Icon(
              FontAwesomeIcons.fileLines,
              color: isDarkMode ? Colors.white : AppColors.primaryColor,
            )
          ]),
        ),
        SizedBox(
          height: 10.h,
        ),
        Container(
          height: 2.h,
          width: 420.w,
          color: colorWithOpacity,
        ),
      ],
    );
  }
}

Color colorWithOpacity = AppColors.primaryColor.withOpacity(0.2);
