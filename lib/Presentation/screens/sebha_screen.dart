import 'package:flutter/material.dart';
import 'package:tatmaen/Presentation/screens/SebhaCounterSection.dart';
import 'package:tatmaen/imports.dart';

class Sebha extends StatefulWidget {
  final String title;
  final String subtitle;
  final int beadCount;
  final int? maxCounter;

  const Sebha({
    super.key,
    required this.title,
    required this.subtitle,
    required this.beadCount,
    this.maxCounter,
  });

  @override
  SebhaState createState() => SebhaState();
}

class SebhaState extends State<Sebha> {
  late int _counter;
  late int _totalCounter;
  late int _cycleCounter;

  @override
  void initState() {
    super.initState();
    _loadCounters();
  }

  Future<void> _loadCounters() async {
    final counters = await loadSebhaCounter(widget.title);
    setState(() {
      _counter = counters['counter']!;
      _totalCounter = counters['totalCounter']!;
      _cycleCounter = counters['cycleCounter']!;
    });
  }

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return SafeArea(
      child: Scaffold(
        backgroundColor: isDarkMode ? const Color(0xff1F1F1F) : Colors.white,
        body: BlocBuilder<AppCubit, AppStates>(
          builder: (context, state) {
            final cubit = AppCubit.get(context);

            if (widget.maxCounter != null) {
              cubit.changeMaxCounter(widget.maxCounter);
            }

            return ScrollConfiguration(
              behavior: const ScrollBehavior().copyWith(overscroll: false),
              child: ListView(
                children: [
                  SebhaCounterSection(
                    total: _totalCounter,
                    currentCount: _counter,
                    cycleCount: _cycleCounter,
                    beadCount: widget.beadCount,
                    title: widget.title,
                    subtitle: widget.subtitle,
                  ),
                  GestureDetector(
                    onTap: () async {
                      setState(() {
                        _counter++;
                        _totalCounter++;
                        _cycleCounter = (_counter / widget.beadCount).floor();
                      });
                      await saveSebhaCounter(
                          widget.title, _counter, _totalCounter, _cycleCounter);
                    },
                    child: Stack(
                      alignment: AlignmentDirectional.center,
                      children: [
                        Image.asset(
                          isDarkMode
                              ? 'assets/circle1.png'
                              : 'assets/circle2.png',
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height / 2.3,
                          fit: BoxFit.cover,
                          alignment: Alignment.center,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 30.0),
                          child: Text(
                            '$_counter',
                            style: TextStyle(
                              fontSize: _counter < 1000 ? 55 : 35,
                              color: isDarkMode
                                  ? Colors.grey
                                  : AppColors.primaryColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: isDarkMode ? Colors.transparent : Colors.white,
                    child: Column(
                      children: [
                        SizedBox(height: 10.h),
                        AppButton(
                          horizontalPadding: 30.w,
                          onPressed: () async {
                            setState(() {
                              _counter = 0;
                              _totalCounter = 0;
                              _cycleCounter = 0;
                            });
                            await saveSebhaCounter(widget.title, _counter,
                                _totalCounter, _cycleCounter);
                            Vibrate.feedback(FeedbackType.heavy);
                          },
                          title: 'البدء من جديد',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

Future<void> saveSebhaCounter(
    String itemText, int counter, int totalCounter, int cycleCounter) async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.setInt('${itemText}_counter', counter);
  await prefs.setInt('${itemText}_totalCounter', totalCounter);
  await prefs.setInt('${itemText}_cycleCounter', cycleCounter);
}

Future<Map<String, int>> loadSebhaCounter(String itemText) async {
  final prefs = await SharedPreferences.getInstance();
  final counter = prefs.getInt('${itemText}_counter') ?? 0;
  final totalCounter = prefs.getInt('${itemText}_totalCounter') ?? 0;
  final cycleCounter = prefs.getInt('${itemText}_cycleCounter') ?? 0;

  return {
    'counter': counter,
    'totalCounter': totalCounter,
    'cycleCounter': cycleCounter,
  };
}
