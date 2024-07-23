import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tatmaen24/Business_Logic/Cubit/azkar_cubit.dart';
import 'package:tatmaen24/Business_Logic/Cubit/azkar_state.dart';
import 'package:tatmaen24/Presentation/screens/azkar_screens/Azkar%20Widgets/AzkarDotsIndicator.dart';
import 'package:tatmaen24/Presentation/screens/azkar_screens/Azkar%20Widgets/AzkarHeader.dart';
import 'package:tatmaen24/Presentation/screens/azkar_screens/Azkar%20Widgets/AzkarPages.dart';
import 'package:tatmaen24/Presentation/screens/azkar_screens/Azkar%20Widgets/AzkarProgressIndicator.dart';
import 'package:tatmaen24/Presentation/screens/azkar_screens/Azkar%20Widgets/AzkarTitle.dart';

class AzkarModelView extends StatefulWidget {
  final String title;
  final List<String> azkarList;

  const AzkarModelView({
    super.key,
    required this.title,
    required this.azkarList,
  });

  @override
  AzkarModelViewState createState() => AzkarModelViewState();
}

class AzkarModelViewState extends State<AzkarModelView> {
  late ConfettiController _confettiController;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _confettiController =
        ConfettiController(duration: const Duration(seconds: 1));
    _pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    _confettiController.dispose();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final azkar = widget.azkarList;

    return Scaffold(
      body: SafeArea(
        child: BlocListener<AzkarCubit, AzkarState>(
          listener: (context, state) {
            final progress = (state.currentIndex + 1) / azkar.length;
            if (progress == 1.0) {
              _confettiController.play();
            }
          },
          child: Stack(
            children: [
              Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFF3A6073), Color(0xFF16222A)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: Column(
                  children: [
                    AzkarHeader(screenWidth: screenWidth),
                    SizedBox(height: screenHeight * 0.02),
                    AzkarTitle(screenWidth: screenWidth, title: widget.title),
                    SizedBox(height: screenHeight * 0.04),
                    AzkarDotsIndicator(screenWidth: screenWidth, azkar: azkar),
                    AzkarPages(
                      screenWidth: screenWidth,
                      screenHeight: screenHeight,
                      azkar: azkar,
                      pageController: _pageController,
                    ),
                    SizedBox(height: screenHeight * 0.08),
                    AzkarProgressIndicator(
                      screenWidth: screenWidth,
                      screenHeight: screenHeight,
                      azkar: azkar,
                    ),
                    SizedBox(height: screenHeight * 0.08),
                  ],
                ),
              ),
              ConfettiWidget(
                confettiController: _confettiController,
                blastDirectionality: BlastDirectionality.explosive,
                shouldLoop: false,
                colors: const [
                  Colors.red,
                  Colors.blue,
                  Colors.green,
                  Colors.yellow
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
