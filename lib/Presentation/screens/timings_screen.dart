import 'package:flutter/material.dart';
import 'package:tatmaen/imports.dart';

class TimingsScreen extends StatefulWidget {
  const TimingsScreen({super.key});

  @override
  State<TimingsScreen> createState() => _TimingsScreenState();
}

class _TimingsScreenState extends State<TimingsScreen> {
  void requestPermission() async {
    FirebaseMessaging messaging = FirebaseMessaging.instance;
    NotificationSettings settings = await messaging.requestPermission(
        alert: true,
        announcement: false,
        badge: true,
        carPlay: false,
        criticalAlert: false,
        provisional: false,
        sound: true);
    if (settings.authorizationStatus == AuthorizationStatus.authorized) {}
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      navigateTo(context, const TimingsScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {
        if (state is GetTimingsSuccess) {
          AppCubit.get(context).errorStatus = false;
        }
      },
      builder: (context, state) {
        var appCubit = AppCubit.get(context);
        final isDarkMode = Theme.of(context).brightness == Brightness.dark;

        return Scaffold(
          backgroundColor: isDarkMode ? const Color(0xff1F1F1F) : Colors.white,
          endDrawer: Drawer(
            backgroundColor:
                isDarkMode ? const Color(0xff1F1F1F) : Colors.white,
            child: ListView(
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: isDarkMode
                          ? [Colors.grey[800]!, Colors.black]
                          : [AppColors.primaryColor, Colors.white],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: DrawerHeader(
                    margin: EdgeInsets.zero,
                    padding: const EdgeInsets.all(2),
                    child: Center(
                      child: Image.asset(
                        'assets/logo.png',
                        width: 450,
                        height: 450,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                ListTile(
                  title: Row(
                    children: [
                      Expanded(
                        child: Text(
                          textAlign: TextAlign.right,
                          'طريقة تحديد مواقيت الصلاة',
                          style: TextStyle(
                            color: isDarkMode
                                ? Colors.white
                                : AppColors.primaryColor,
                            fontSize: 20.sp,
                            fontFamily: 'DIN',
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Icon(Icons.timer,
                          color: isDarkMode
                              ? Colors.white
                              : AppColors.primaryColor),
                    ],
                  ),
                  onTap: () {
                    showMethods(context);
                  },
                ),
                const CustomSpace(),
                ListTile(
                  trailing: SizedBox(
                    width: 140.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Expanded(
                          child: Text(
                            'التنبية لأذكار الصباح',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: isDarkMode
                                  ? Colors.white
                                  : AppColors.primaryColor,
                              fontSize: 20.sp,
                              fontFamily: 'DIN',
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 6,
                        ),
                        Icon(Icons.sunny,
                            color: isDarkMode
                                ? Colors.white
                                : AppColors.primaryColor),
                      ],
                    ),
                  ),
                  title: Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: AppText(
                      selectedTimeMorning != null
                          ? DateFormat('hh:mma').format(
                              DateTime(
                                0,
                                1,
                                1,
                                selectedTimeMorning!.hour,
                                selectedTimeMorning!.minute,
                              ),
                            )
                          : 'اختر التوقيت',
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w700,
                      color: isDarkMode
                          ? const Color(0xff0c8ee1)
                          : AppColors.primaryColor,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  onTap: () async {
                    final pickedTime = await showTimePicker(
                      context: context,
                      initialTime: selectedTimeMorning ?? TimeOfDay.now(),
                    );

                    if (pickedTime != null) {
                      setState(() {
                        selectedTimeMorning = pickedTime;
                      });

                      CacheHelper.saveData(
                        key: 'Morning',
                        value:
                            "${selectedTimeMorning!.hour}:${selectedTimeMorning!.minute}",
                      );

                      await NotificationService.showNotification(
                        title: "التنبية بأذكار الصباح",
                        payload: {
                          "navigate": "true",
                        },
                        actionButtons: [
                          NotificationActionButton(
                            key: 'check',
                            label: 'الدخول إلى التطبيق الآن',
                            color: AppColors.primaryColor,
                          ),
                        ],
                        scheduled: true,
                        selectedTimeMorning: selectedTimeMorning,
                        interval: 0,
                      );
                    }
                  },
                ),
                const CustomSpace(),
                ListTile(
                  trailing: SizedBox(
                    width: 140.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Expanded(
                          child: Text(
                            'التنبية لأذكار المساء',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: isDarkMode
                                  ? Colors.white
                                  : AppColors.primaryColor,
                              fontSize: 20.sp,
                              fontFamily: 'DIN',
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 6,
                        ),
                        Icon(Icons.dark_mode,
                            color: isDarkMode
                                ? Colors.white
                                : AppColors.primaryColor),
                      ],
                    ),
                  ),
                  title: Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: AppText(
                      selectedTimeEvening != null
                          ? DateFormat('hh:mma ').format(
                              DateTime(
                                0,
                                1,
                                1,
                                selectedTimeEvening!.hour,
                                selectedTimeEvening!.minute,
                              ),
                            )
                          : 'اختر التوقيت',
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w700,
                      color: isDarkMode
                          ? const Color(0xff0c8ee1)
                          : AppColors.primaryColor,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  onTap: () async {
                    final pickedTime = await showTimePicker(
                      context: context,
                      initialTime: selectedTimeEvening ?? TimeOfDay.now(),
                    );

                    if (pickedTime != null) {
                      setState(() {
                        selectedTimeEvening = pickedTime;
                      });
                      CacheHelper.saveData(
                        key: 'Evening',
                        value:
                            "${selectedTimeEvening!.hour}:${selectedTimeEvening!.minute}",
                      );
                      await NotificationService.showNotification(
                        title: "التنبية بأذكار المساء",
                        payload: {
                          "navigate": "true",
                        },
                        actionButtons: [
                          NotificationActionButton(
                            key: 'check',
                            label: 'الدخول إلى التطبيق الآن',
                            color: AppColors.primaryColor,
                          ),
                        ],
                        scheduled: true,
                        selectedTimeEvening: selectedTimeEvening,
                        interval: 0,
                      );
                    }
                  },
                ),
                const CustomSpace(),
                ListTile(
                  title: Row(
                    children: [
                      Expanded(
                        child: Text(
                          textAlign: TextAlign.right,
                          'معلومات عن التطبيق',
                          style: TextStyle(
                            color: isDarkMode
                                ? Colors.white
                                : AppColors.primaryColor,
                            fontSize: 20.sp,
                            fontFamily: 'DIN',
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Icon(Icons.info,
                          color: isDarkMode
                              ? Colors.white
                              : AppColors.primaryColor),
                    ],
                  ),
                  onTap: () {
                    showappinfo(context);
                  },
                ),
                const CustomSpace(),
                ListTile(
                  title: Row(
                    children: [
                      Expanded(
                        child: Text(
                          textAlign: TextAlign.right,
                          'سياسة الخصوصية',
                          style: TextStyle(
                            color: isDarkMode
                                ? Colors.white
                                : AppColors.primaryColor,
                            fontSize: 20.sp,
                            fontFamily: 'DIN',
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Icon(Icons.privacy_tip_rounded,
                          color: isDarkMode
                              ? Colors.white
                              : AppColors.primaryColor),
                    ],
                  ),
                  onTap: () {
                    showprivacy(context);
                  },
                ),
                const CustomSpace(),
                ListTile(
                  title: Row(
                    children: [
                      Expanded(
                        child: Text(
                          textAlign: TextAlign.right,
                          'تقييم التطبيق',
                          style: TextStyle(
                            color: isDarkMode
                                ? Colors.white
                                : AppColors.primaryColor,
                            fontSize: 20.sp,
                            fontFamily: 'DIN',
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Icon(Icons.star,
                          color: isDarkMode
                              ? Colors.white
                              : AppColors.primaryColor),
                    ],
                  ),
                  onTap: () {
                    shareFeedback(context);
                  },
                ),
                const CustomSpace(),
                ListTile(
                  title: Row(
                    children: [
                      Expanded(
                        child: Text(
                          textAlign: TextAlign.right,
                          'شارك التطبيق',
                          style: TextStyle(
                            color: isDarkMode
                                ? Colors.white
                                : AppColors.primaryColor,
                            fontSize: 20.sp,
                            fontFamily: 'DIN',
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Icon(Icons.share,
                          color: isDarkMode
                              ? Colors.white
                              : AppColors.primaryColor),
                    ],
                  ),
                  onTap: () {
                    shareOptions(context);
                  },
                ),
                const CustomSpace(),
                ListTile(
                  title: Row(
                    children: [
                      Expanded(
                        child: Text(
                          textAlign: TextAlign.right,
                          'تواصل معنا',
                          style: TextStyle(
                            color: isDarkMode
                                ? Colors.white
                                : AppColors.primaryColor,
                            fontSize: 20.sp,
                            fontFamily: 'DIN',
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Icon(Icons.mail_rounded,
                          color: isDarkMode
                              ? Colors.white
                              : AppColors.primaryColor),
                    ],
                  ),
                  onTap: () {
                    sendEmail();
                  },
                ),
                const CustomSpace(),
                ListTile(
                  title: Row(
                    children: [
                      Expanded(
                        child: Text(
                          textAlign: TextAlign.right,
                          'ادعمنا',
                          style: TextStyle(
                            color: isDarkMode
                                ? Colors.white
                                : AppColors.primaryColor,
                            fontSize: 20.sp,
                            fontFamily: 'DIN',
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Icon(
                        FontAwesomeIcons.circleDollarToSlot,
                        color:
                            isDarkMode ? Colors.white : AppColors.primaryColor,
                      ),
                    ],
                  ),
                  onTap: () {
                    Donate(context);
                  },
                ),
              ],
            ),
          ),
          body: SafeArea(
            child: Center(
              heightFactor: 1,
              child: RefreshIndicator(
                color: AppColors.primaryColor,
                onRefresh: () async {
                  appCubit.getMyCurrentLocation();
                },
                child: ScrollConfiguration(
                  behavior: const ScrollBehavior().copyWith(overscroll: false),
                  child: SingleChildScrollView(
                    physics: const AlwaysScrollableScrollPhysics(),
                    child: appCubit.errorStatus == true
                        ? Padding(
                            padding: const EdgeInsets.all(20),
                            child: Center(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  if (appCubit.errorStatus)
                                    Image.asset(
                                      'assets/error404.png',
                                      width: MediaQuery.of(context).size.width *
                                          0.8,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.6,
                                    ),
                                  AppText(
                                    "تأكد من الاتصال بالإنترنت \n و تفعيل الموقع",
                                    align: TextAlign.center,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold,
                                    color: isDarkMode
                                        ? Colors.white
                                        : AppColors.primaryColor,
                                  ),
                                ],
                              ),
                            ),
                          )
                        : appCubit.timesModel == null
                            ? CircularProgressIndicator(
                                color: AppColors.primaryColor,
                              )
                            : Stack(
                                alignment: AlignmentDirectional.topEnd,
                                children: [
                                  Column(
                                    children: [
                                      if (state is GetCurrentAddressLoading)
                                        LinearProgressIndicator(
                                          color: AppColors.primaryColor,
                                        ),
                                      Stack(
                                        alignment:
                                            AlignmentDirectional.bottomEnd,
                                        children: [
                                          Opacity(
                                            opacity: isDarkMode ? 0.3 : 1.0,
                                            child: Image.asset(
                                              isDarkMode
                                                  ? 'assets/mousqblack.png'
                                                  : 'assets/mousq.png',
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          addressWidget(appCubit),
                                        ],
                                      ),
                                      timesWidget(appCubit),
                                    ],
                                  ),
                                  Builder(
                                    builder: (context) => IconButton(
                                      onPressed: () {
                                        Scaffold.of(context).openEndDrawer();
                                      },
                                      icon: Padding(
                                        padding: EdgeInsets.only(
                                            right: 15.w, top: 10.h),
                                        child: Icon(
                                          FontAwesomeIcons.bars,
                                          color: isDarkMode
                                              ? Colors.white
                                              : Colors.black54,
                                          size: 32,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget addressWidget(AppCubit appCubit) {
    final String administrativeArea =
        CacheHelper.getString(key: "administrativeArea");
    final String country = CacheHelper.getString(key: "country");
    final String locality = CacheHelper.getString(key: "locality");

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppText(
              appCubit.address == null
                  ? locality
                  : appCubit.address!.locality.toString(),
              fontWeight: FontWeight.bold,
              color: Theme.of(context).brightness == Brightness.dark
                  ? Colors.white
                  : Colors.black54,
              fontSize: 18.sp,
            ),
            SizedBox(
              width: 12.w,
            ),
            Icon(
              Icons.location_on,
              color: Theme.of(context).brightness == Brightness.dark
                  ? Colors.white
                  : Colors.black54,
              size: 28,
            ),
          ],
        ),
        AppText(
          appCubit.address == null
              ? '$administrativeArea, $country'
              : '${appCubit.address!.administrativeArea}, ${appCubit.address!.country}',
          fontWeight: FontWeight.bold,
          color: Theme.of(context).brightness == Brightness.dark
              ? Colors.white
              : Colors.black54,
          fontSize: 18.sp,
        ),
      ],
    );
  }

  Widget timesWidget(AppCubit appCubit) {
    String formatPrayTime(String time) {
      DateTime now = DateTime.now();
      List<String> parts = time.split(':');

      final int hours = int.parse(parts[0]);
      final int minutes = int.parse(parts[1]);

      DateTime convertedDateTime =
          DateTime(now.year, now.month, now.day, hours, minutes);
      final formattedTime = DateFormat(' hh:mma').format(convertedDateTime);
      return formattedTime;
    }

    return Column(
      children: [
        SizedBox(height: 5.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: AppText(
                '    آخر تحديث :  ${appCubit.timesModel!.data.date.readable}',
                align: TextAlign.center,
                fontWeight: FontWeight.w500,
                fontSize: 14.sp,
                fontFamily: 'DIN',
                color: Colors.grey,
              ),
            ),
          ],
        ),
        SizedBox(height: 15.h),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 3.0),
          child: Column(
            children: [
              prayTimeRow(
                  en: 'Fajr',
                  time: formatPrayTime(appCubit.timesModel!.data.timings.fajr),
                  ar: 'الفجر'),
              const SizedBox(height: 10),
              prayTimeRow(
                  en: 'Sunrise',
                  time:
                      formatPrayTime(appCubit.timesModel!.data.timings.sunrise),
                  ar: 'الشروق'),
              const SizedBox(height: 10),
              prayTimeRow(
                  en: 'Dhuhr',
                  time: formatPrayTime(appCubit.timesModel!.data.timings.dhuhr),
                  ar: 'الظهر'),
              const SizedBox(height: 10),
              prayTimeRow(
                  en: 'Asr',
                  time: formatPrayTime(appCubit.timesModel!.data.timings.asr),
                  ar: 'العصر'),
              const SizedBox(height: 10),
              prayTimeRow(
                  en: 'Maghrib',
                  time:
                      formatPrayTime(appCubit.timesModel!.data.timings.maghrib),
                  ar: 'المغرب'),
              const SizedBox(height: 10),
              prayTimeRow(
                  en: 'Isha',
                  time: formatPrayTime(appCubit.timesModel!.data.timings.isha),
                  ar: 'العشاء'),
            ],
          ),
        ),
      ],
    );
  }
}
