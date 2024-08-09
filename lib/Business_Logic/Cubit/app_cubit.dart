import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:tatmaen/Data/Model/times_model.dart';
import 'package:tatmaen/imports.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitialState());

  static AppCubit get(context) => BlocProvider.of(context);

  bool isLightMode = true;

  int index = 4;
  int counter = 0;
  int totalCounter = 0;
  int cycleCounter = 0;
  int? maxCounter;
  int radioValue = 5;

  Position? position;
  bool errorStatus = false;
  TimesModel? timesModel;
  DirectionModel? directionModel;
  Placemark? address;
  String? administrativeArea;
  String? country;
  String? locality;

  List<Widget> get buildScreens => [
        const QiblaScreen(),
        const AhadithScreen(),
        const AzkarScreen(),
        const SebhaAzkarListScreen(),
        const TimingsScreen(),
      ];

  List<BottomNavigationBarItem> get bottomItems => [
        _buildBottomNavItem('qibla', 'القبلة', 0),
        _buildBottomNavItem('Ahadith', 'الأربعين', 1),
        _buildBottomNavItem('Azkar', 'الأذكار', 2),
        _buildBottomNavItem('Tasbih', 'السبحة', 3),
        _buildBottomNavItem('home', 'الرئيسية', 4),
      ];

  void changeAppMode({required bool? isLight}) {
    isLightMode = !isLightMode;
    CacheHelper.saveData(key: 'isLight', value: isLightMode);
    emit(ThemeChangeModeState());
  }

  void changeIndex(int newIndex) {
    index = newIndex;
    Vibrate.feedback(FeedbackType.impact);
    emit(ChangeBottomNavState());
  }

  void incrementCounter() {
    counter++;
    if (maxCounter != null && counter >= maxCounter!) {
      counter = 0;
      cycleCounter++;
    }
    totalCounter++;
    emit(CounterIncrementedState());
  }

  void resetCounter() {
    counter = 0;
    totalCounter = 0;
    cycleCounter = 0;
    emit(ChangeCounterState());
  }

  void changeMaxCounter(int? max) {
    maxCounter = max;
    emit(ChangeMaxCounterState());
  }

  Future<void> getMyCurrentLocation() async {
    emit(GetCurrentAddressLoading());
    try {
      await Geolocator.requestPermission();
      position = await Geolocator.getCurrentPosition(
        timeLimit: const Duration(milliseconds: 3000),
        desiredAccuracy: LocationAccuracy.high,
      );
      if (position != null) {
        await _getLocationData(position!.latitude, position!.longitude);
      }
      emit(GetCurrentLocationSuccess());
    } catch (error) {
      errorStatus = true;
      log('Error when getting location: $error');
      emit(GetCurrentLocationError());
    }
  }

  Future<void> getTimings({
    required String time,
    required double latitude,
    required double longitude,
  }) async {
    emit(GetCurrentAddressLoading());
    time = time.substring(0, time.length - 3);
    try {
      final value = await DioHelper.getData(
        url: "timings/$time",
        latitude: latitude,
        longitude: longitude,
        method: radioValue,
      );
      timesModel = TimesModel.fromJson(value.data);
      saveTimeModel(timeModel: timesModel!);
      emit(GetTimingsSuccess());
    } catch (error) {
      log('getTimings error: $error');
      _handleError();
    }
  }

  Future<void> getDirection({
    required double latitude,
    required double longitude,
  }) async {
    emit(GetCurrentAddressLoading());
    try {
      final value = await DioHelper.getData(
        url: "qibla/$latitude/$longitude",
      );
      directionModel = DirectionModel.fromJson(value.data);
      emit(GetDirectionSuccess());
    } catch (error) {
      log('getDirection error: $error');
      emit(GetDirectionError());
    }
  }

  Future<void> getCurrentLocationAddress({
    required double latitude,
    required double longitude,
  }) async {
    emit(GetCurrentAddressLoading());
    try {
      final placemarks = await placemarkFromCoordinates(latitude, longitude);
      if (placemarks.isNotEmpty) {
        address = placemarks.first;
        administrativeArea = address?.administrativeArea;
        country = address?.country;
        locality = address?.locality;

        CacheHelper.saveData(
            key: 'administrativeArea', value: administrativeArea);
        CacheHelper.saveData(key: 'country', value: country);
        CacheHelper.saveData(key: 'locality', value: locality);

        emit(GetCurrentAddressSuccess());
      }
    } catch (error) {
      log('getCurrentLocationAddress error: $error');
      emit(GetCurrentAddressError());
    }
  }

  void decreaseTimes({required int times}) {
    emit(DecreaseTimes());
  }

  void changeRadio(int value) {
    radioValue = value;
    emit(ChangeRadio());
    CacheHelper.saveData(key: 'value', value: value);
    getMyCurrentLocation();
  }

  BottomNavigationBarItem _buildBottomNavItem(
      String asset, String label, int itemIndex) {
    return BottomNavigationBarItem(
      icon: ColorFiltered(
        colorFilter: ColorFilter.mode(
          index == itemIndex ? AppColors.primaryColor : Colors.grey,
          BlendMode.srcIn,
        ),
        child: SvgPicture.asset(
          "assets/icon/$asset.svg",
          height: 24,
        ),
      ),
      label: label,
    );
  }

  Future<void> _getLocationData(double latitude, double longitude) async {
    await getCurrentLocationAddress(latitude: latitude, longitude: longitude);
    await getTimings(
      latitude: latitude,
      longitude: longitude,
      time: DateTime.now().millisecondsSinceEpoch.toString(),
    );
    await getDirection(
      latitude: latitude,
      longitude: longitude,
    );
  }

  Future<void> _handleError() async {
    timesModel = await getTimeModel();
    if (timesModel == null) {
      errorStatus = true;
      emit(GetTimingsError());
    } else {
      emit(GetTimingsSuccess());
    }
  }
}
