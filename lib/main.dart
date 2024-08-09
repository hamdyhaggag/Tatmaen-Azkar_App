import 'package:flutter/material.dart';
import 'package:tatmaen/imports.dart';

Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  if (kDebugMode) {
    print(message.messageId);
  }
}

TimeOfDay? stringToTimeOfDay(String timeString) {
  if (timeString.isNotEmpty) {
    final parts = timeString.split(":");
    return TimeOfDay(hour: int.parse(parts[0]), minute: int.parse(parts[1]));
  }
  return null;
}

bool isEnterBefore = false;
int radioValue = 5;
bool isLight = CacheHelper.getBoolean(key: 'isLight');
TimeOfDay? selectedTimeMorning;
TimeOfDay? selectedTimeEvening;
String? selectedMorning;
String? selectedEvening;

final lightThemeData = ThemeData(
  primaryColor: Colors.blue,
  textTheme: const TextTheme(labelLarge: TextStyle(color: Colors.white70)),
  brightness: Brightness.light,
  hintColor: Colors.blue,
);

final darkThemeData = ThemeData(
  primaryColor: Colors.blue,
  textTheme: const TextTheme(labelLarge: TextStyle(color: Color(0xff1F1F1F))),
  brightness: Brightness.dark,
  hintColor: Colors.blue,
);

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await NotificationService.initializeNotification();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);
  await CacheHelper.init();
  await initializeAppSettings();

  Bloc.observer = MyGlobalObserver();

  runApp(EasyDynamicThemeWidget(
    child: TatmaenApp(isLight: isLight),
  ));
}

Future<void> initializeAppSettings() async {
  radioValue = CacheHelper.getInteger(key: 'value');
  isEnterBefore = CacheHelper.getBoolean(key: 'isEnterBefore');
  selectedMorning = CacheHelper.getString(key: 'Morning');
  selectedEvening = CacheHelper.getString(key: 'Evening');
  selectedTimeMorning = stringToTimeOfDay(selectedMorning!);
  selectedTimeEvening = stringToTimeOfDay(selectedEvening!);

  log(selectedMorning ?? "No Morning Time");
  log(selectedEvening ?? "No Evening Time");

  DioHelper.init();
}

class TatmaenApp extends StatelessWidget {
  final bool? isLight;
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  const TatmaenApp({super.key, this.isLight});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit()..getMyCurrentLocation(),
      child: ScreenUtilInit(
        designSize: const Size(360, 690),
        child: BlocConsumer<AppCubit, AppStates>(
          listener: (context, state) {},
          builder: (context, state) {
            return MaterialApp(
              navigatorKey: navigatorKey,
              title: "Tatmaen - تَطْمَئِن",
              theme: lightThemeData.copyWith(
                textTheme: const TextTheme(
                  titleMedium: TextStyle(fontSize: 25, fontFamily: 'DIN'),
                  bodyMedium: TextStyle(fontSize: 30, fontFamily: 'DIN'),
                ),
              ),
              darkTheme: darkThemeData.copyWith(
                textTheme: const TextTheme(
                  titleMedium: TextStyle(
                    fontSize: 25,
                    fontFamily: 'DIN',
                    color: Colors.white,
                  ),
                  bodyMedium: TextStyle(
                    fontSize: 30,
                    fontFamily: 'DIN',
                    color: Colors.white,
                  ),
                ),
              ),
              themeMode: ThemeMode.system,
              debugShowCheckedModeBanner: false,
              home: const SplashScreen(),
            );
          },
        ),
      ),
    );
  }
}
