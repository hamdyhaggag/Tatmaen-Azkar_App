import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../constants/colors.dart';
import '../../Business_Logic/Cubit/app_cubit.dart';
import '../../Business_Logic/Cubit/app_states.dart';
import '../../constants/app_text.dart';

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
                    fontFamily: 'Cairo',
                    fontSize: 15,
                    color: Colors.white,
                  ),
          ),
        );
      },
    );
  }
}
