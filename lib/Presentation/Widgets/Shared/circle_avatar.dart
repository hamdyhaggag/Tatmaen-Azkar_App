import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:tatmaen/imports.dart';
=======
import 'package:tatmaen24/imports.dart';
>>>>>>> 0baf087bcac187a91ff41f8d122b99e82b735b57

class CustomCircleAvatar extends StatelessWidget {
  const CustomCircleAvatar({super.key, this.title});

  final String? title;

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return BlocBuilder<AppCubit, AppStates>(
      builder: (context, state) {
        final cubit = AppCubit.get(context);
        return InkWell(
          onTap: () {
            cubit.changeMaxCounter(int.parse(title ?? '9999'));
          },
          child: CircleAvatar(
            backgroundColor: cubit.maxCounter == int.parse(title ?? '9999')
                ? isDarkMode
                    ? const Color(0xff0c8ee1)
                    : AppColors.primaryColor
                : AppColors.greyColor,
            radius: 24,
            child: title == null
                ? Padding(
                    padding: EdgeInsets.only(right: 6.w),
                    child: const Icon(
                      FontAwesomeIcons.infinity,
                      color: Colors.white,
                      size: 18,
                    ),
                  )
                : AppText(
                    title!,
                    fontFamily: 'DIN',
                    fontSize: 15,
                    color: Colors.white,
                  ),
          ),
        );
      },
    );
  }
}
