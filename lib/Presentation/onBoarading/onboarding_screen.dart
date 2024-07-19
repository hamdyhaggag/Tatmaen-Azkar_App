import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../Data/Web_Services/cache_helper.dart';
import '../../Data/Web_Services/functions.dart';
import '../screens/screen_layout.dart';
import 'onboarding_contents.dart';
import 'size_config.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController();
    super.initState();
  }

  int _currentPage = 0;
  List colors = const [
    Color(0xfff3eded),
    Color(0xfff3eded),
    Color(0xfff3eded),
    Color(0xfff3eded),
    Color(0xfff3eded),
    Color(0xfff3eded),
  ];

  AnimatedContainer _buildDots({required int index}) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(50)),
        color: Color(0xFF1E5A83),
      ),
      margin: const EdgeInsets.only(right: 5),
      height: 10,
      curve: Curves.easeIn,
      width: _currentPage == index ? 20 : 10,
    );
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double width = SizeConfig.screenW!;
    bool isSmallScreen = width <= 550;

    return Scaffold(
      backgroundColor: colors[_currentPage],
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: PageView.builder(
                physics: const BouncingScrollPhysics(),
                controller: _controller,
                reverse: true,
                onPageChanged: (value) => setState(() => _currentPage = value),
                itemCount: contents.length,
                itemBuilder: (context, i) {
                  return Padding(
                    padding: EdgeInsets.all(isSmallScreen ? 20.0 : 40.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        SizedBox(
                          height: 70.h,
                        ),
                        Image.asset(
                          contents[i].image,
                          height:
                              SizeConfig.blockV! * (isSmallScreen ? 25 : 35),
                        ),
                        SizedBox(height: isSmallScreen ? 60 : 100),
                        Text(
                          contents[i].title,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: "Cairo",
                            fontWeight: FontWeight.w600,
                            color: const Color(0xFF1E5A83),
                            fontSize: isSmallScreen ? 28 : 35,
                          ),
                        ),
                        const SizedBox(height: 15),
                        LayoutBuilder(
                          builder: (context, constraints) {
                            double fontSize = isSmallScreen ? 19 : 23;
                            return Text(
                              contents[i].desc,
                              style: TextStyle(
                                fontFamily: "Cairo",
                                fontWeight: FontWeight.w300,
                                color: const Color(0xFF1E5A83),
                                fontSize: fontSize,
                              ),
                              textAlign: TextAlign.center,
                            );
                          },
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      contents.length,
                      (index) => _buildDots(
                          index:
                              contents.length - index - 1), // Reverse the dots
                    ),
                  ),
                  _currentPage + 1 == contents.length
                      ? Padding(
                          padding: EdgeInsets.all(isSmallScreen ? 20 : 30),
                          child: ElevatedButton(
                            onPressed: () {
                              navigateTo(context, const ScreenLayout());
                              CacheHelper.saveData(
                                  key: 'isEnterBefore', value: true);
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF1E5A83),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: isSmallScreen ? 60 : width * 0.2,
                                vertical: isSmallScreen ? 15 : 20,
                              ),
                              textStyle: TextStyle(
                                fontSize: isSmallScreen ? 20 : 23,
                                fontFamily: 'Cairo',
                              ),
                            ),
                            child: const Text("ابدأ الآن"),
                          ),
                        )
                      : Padding(
                          padding: EdgeInsets.all(isSmallScreen ? 20 : 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  _controller.nextPage(
                                    duration: const Duration(milliseconds: 200),
                                    curve: Curves.easeIn,
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xFF1E5A83),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  elevation: 0,
                                  padding: EdgeInsets.symmetric(
                                    horizontal: isSmallScreen ? 20 : 30,
                                    vertical: isSmallScreen ? 15 : 25,
                                  ),
                                  textStyle: TextStyle(
                                    fontSize: isSmallScreen ? 18 : 20,
                                    fontFamily: 'Cairo',
                                  ),
                                ),
                                child: const Text("التالي"),
                              ),
                              TextButton(
                                onPressed: () {
                                  navigateTo(context, const ScreenLayout());
                                  CacheHelper.saveData(
                                      key: 'isEnterBefore', value: true);
                                },
                                style: TextButton.styleFrom(
                                  elevation: 0,
                                  textStyle: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: isSmallScreen ? 18 : 20,
                                    fontFamily: 'Cairo',
                                  ),
                                ),
                                child: const Text(
                                  "التخطي",
                                  style: TextStyle(color: Color(0xFF1E5A83)),
                                ),
                              ),
                            ],
                          ),
                        ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
