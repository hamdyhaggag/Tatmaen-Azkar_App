import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vibrate/flutter_vibrate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tatmaen/Business_Logic/Cubit/app_cubit.dart';
import 'package:tatmaen/Business_Logic/Cubit/app_states.dart';
import 'package:tatmaen/Data/utils/functions.dart';
import 'package:tatmaen/Presentation/Config/constants/app_text.dart';
import 'package:tatmaen/Presentation/Config/constants/colors.dart';
import 'package:tatmaen/Presentation/screens/SettingsScreen/app_info.dart';
import 'package:share_plus/share_plus.dart';
import 'package:tatmaen/Presentation/screens/SettingsScreen/privacy_policy.dart';
import 'package:url_launcher/url_launcher.dart';

Widget prayTimeRow({
  required String en,
  required String time,
  required String ar,
}) {
  return Builder(
    builder: (context) {
      final isDarkMode = Theme.of(context).brightness == Brightness.dark;

      return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: AppText(
                en,
                fontSize: 20,
                align: TextAlign.end,
              ),
            ),
            Expanded(
              flex: 0,
              child: AppText(
                time,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: isDarkMode
                    ? const Color(0xff0c8ee1)
                    : AppColors.primaryColor,
              ),
            ),
            Expanded(
              flex: 1,
              child: AppText(
                ar,
                fontSize: 20,
                textDirection: TextDirection.rtl,
              ),
            ),
          ],
        ),
      );
    },
  );
}

Widget radioItem({
  required String title,
  required int value,
  required BuildContext context,
}) {
  final appCubit = AppCubit.get(context);
  final isDarkMode = Theme.of(context).brightness == Brightness.dark;

  return RadioListTile<int>(
    title: AppText(
      title,
      fontSize: 16,
      textDirection: TextDirection.rtl,
      color: isDarkMode ? Colors.white : AppColors.primaryColor,
    ),
    value: value,
    groupValue: appCubit.radioValue,
    onChanged: (int? newValue) {
      if (newValue != null) {
        appCubit.changeRadio(newValue);
        Vibrate.feedback(FeedbackType.impact);
        Navigator.pop(context, newValue);
      }
    },
  );
}

void showMethods(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {},
        builder: (context, state) {
          final isDarkMode = Theme.of(context).brightness == Brightness.dark;

          return SimpleDialog(
            titlePadding: const EdgeInsets.fromLTRB(0, 10, 12, 0),
            title: AppText(
              'طريقة تحديد مواقيت الصلاة',
              textDirection: TextDirection.rtl,
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: isDarkMode ? Colors.white : AppColors.primaryColor,
            ),
            contentPadding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
            children: <Widget>[
              radioItem(
                  title: 'رابطة العالم الإسلامي', value: 3, context: context),
              radioItem(
                  title: 'الهيئة المصرية العامة للمساحة',
                  value: 5,
                  context: context),
              radioItem(
                  title: 'جامعة العلوم الإسلامية في كراتشي',
                  value: 1,
                  context: context),
              radioItem(
                  title: 'الجمعية الإسلامية لأمريكا الشمالية',
                  value: 2,
                  context: context),
              radioItem(
                  title: 'معهد الجيوفيزياء في جامعة طهران',
                  value: 7,
                  context: context),
            ],
          );
        },
      );
    },
  );
}

const String googlePlayUrl =
    'https://play.google.com/store/apps/developer?id=dev.hamdyhaggag';
void _launchURL(String link) async {
  Uri url = Uri.parse(link);

  if (!await launchUrl(
    url,
    mode: LaunchMode.externalApplication,
  )) {
    throw 'Could not launch $url';
  }
}

Widget buildRow(IconData icon, String url, String title, Color color) {
  return InkWell(
    onTap: () {
      _launchURL(url);
    },
    child: SizedBox(
      height: 40.h,
      child: Row(
        textDirection: TextDirection.rtl,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(icon, color: color, size: 25),
          AppText(title),
        ],
      ),
    ),
  );
}

Donate(context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      final isDarkMode = Theme.of(context).brightness == Brightness.dark;

      return AlertDialog(
        titlePadding: const EdgeInsets.fromLTRB(0, 15, 17, 0),
        title: AppText(
          'ادعمنا من خلال :',
          textDirection: TextDirection.rtl,
          color: isDarkMode ? Colors.white : AppColors.primaryColor,
          fontWeight: FontWeight.bold,
          fontFamily: 'DIN',
        ),
        contentPadding: const EdgeInsets.fromLTRB(30, 20, 30, 40),
        content: SizedBox(
          width: MediaQuery.of(context).size.width * 0.8,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Center(
                child: buildRow(
                  FontAwesomeIcons.moneyCheckDollar,
                  'https://www.buymeacoffee.com/hamdyhaggag74',
                  'Buy Me A Coffee',
                  isDarkMode ? Colors.white : AppColors.primaryColor,
                ),
              ),
              const SizedBox(height: 10),
              Center(
                child: buildRow(
                  FontAwesomeIcons.paypal,
                  'https://www.paypal.com/paypalme/hamdyhaggag74',
                  'paypal',
                  isDarkMode ? Colors.white : AppColors.primaryColor,
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}

////////////////////////////////////////

showprivacy(context) {
  navigateTo(context, const PrivacyPolicy());
}

showappinfo(context) {
  navigateTo(context, const AppInfo());
}

///////////////////////////////

showAlertdialogExampleDidntused(context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const AppText('Magical Portal'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const AppText('You have discovered a magical portal!'),
            SizedBox(height: 10.h),
            const AppText('Where would you like to go?'),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('Forest'),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('Mountains'),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('Beach'),
          ),
        ],
      );
    },
  );
}

////////////////////////////////////////////////

void shareOptions(BuildContext context) async {
  const String text = googlePlayUrl;
  const String subject = "  Tatmaen - تطبيق تَطْمَئِن";

  await Share.share(text, subject: subject);
}

////////////////////////////////////////////////
void openGooglePlayForFeedback() async {
  const String packageName = 'com.tafakkur';
  const String googlePlayUrl = 'market://details?id=$packageName';

  final Uri googlePlayUri = Uri.parse(googlePlayUrl);

  if (await canLaunchUrl(googlePlayUri)) {
    await launchUrl(googlePlayUri);
  } else {
    throw 'Could not launch Google Play Store.';
  }
}

void shareFeedback(BuildContext context) {
  openGooglePlayForFeedback();
}

////////////////////////////////////////////////
void sendEmail() async {
  final Uri emailUri = Uri(
    scheme: 'mailto',
    path: 'arabianatech@gmail.com',
    query:
        'subject=ملاحظات ( تطبيق تَطْمَئِن )&body=  .. السلام عليكم ورحمة الله وبركاته ..\n  تمت تعبئة هذة الرسالة تلقائيا ، امسح نص الرسالة و اترك رسالتك', // Replace with your desired subject and body
  );

  if (await canLaunchUrl(emailUri)) {
    await launchUrl(emailUri);
  } else {
    throw 'Could not launch email';
  }
}
