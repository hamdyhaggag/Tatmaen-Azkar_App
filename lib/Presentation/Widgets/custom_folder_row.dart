// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../constants/colors.dart';
import '../../constants/app_text.dart';

class CustomFolderRow extends StatelessWidget {
  const CustomFolderRow({
    Key? key,
    required this.title,
  }) : super(key: key);
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
              fontFamily: 'Cairo',
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
