import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:tatmaen/imports.dart';
=======
import 'package:tatmaen24/imports.dart';
>>>>>>> 0baf087bcac187a91ff41f8d122b99e82b735b57

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
  });
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
              fontFamily: 'DIN',
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
