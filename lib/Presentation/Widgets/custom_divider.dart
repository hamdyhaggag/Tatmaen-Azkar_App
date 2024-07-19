// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import '../../../constants/colors.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Stack(
      children: [
        CircleAvatar(
          backgroundColor: AppColors.primaryColor,
          radius: 27,
          child: const Text(
            '3',
            style: TextStyle(
              fontFamily: 'Cairo',
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
        Positioned(
          bottom: 22,
          left: 0,
          right: 0,
          child: Container(
            height: 2,
            width: 15,
            color: isDarkMode ? Colors.white : AppColors.primaryColor,
          ),
        ),
      ],
    );
  }
}
