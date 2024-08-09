import 'package:flutter/material.dart';
import 'package:tatmaen/imports.dart';

class AddAzkarScreen extends StatefulWidget {
  const AddAzkarScreen({super.key});

  @override
  AddAzkarScreenState createState() => AddAzkarScreenState();
}

class AddAzkarScreenState extends State<AddAzkarScreen> {
  final _textController = TextEditingController();
  final _countController = TextEditingController();
  final _rewardController = TextEditingController();

  void _addAzkar() {
    final text = _textController.text;
    final count = int.tryParse(_countController.text) ?? 0;
    final reward = _rewardController.text;

    if (text.isNotEmpty && count > 0) {
      final newAzkar = AzkarItem(text: text, count: count, reward: reward);
      azkarNotifier.value = List.from(azkarNotifier.value)..add(newAzkar);

      // Initialize the counter values in SharedPreferences
      saveSebhaCounter(text, 0, 0, 0);

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Sebha(
            title: text,
            subtitle: reward,
            beadCount: count,
            maxCounter: count,
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: isDarkMode ? const Color(0xff1F1F1F) : Colors.white,
      appBar: const CustomAppBar(title: 'إضافة ذكر'),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              textAlign: TextAlign.right,
              controller: _textController,
              decoration: InputDecoration(
                label: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'نص الذكر',
                    style: TextStyle(
                      fontFamily: 'DIN',
                      color: isDarkMode ? Colors.white : AppColors.primaryColor,
                    ),
                  ),
                ),
                focusColor: isDarkMode ? Colors.white : AppColors.primaryColor,
              ),
              style: TextStyle(
                fontFamily: 'DIN',
                color: isDarkMode ? Colors.white : AppColors.primaryColor,
              ),
            ),
            TextField(
              textAlign: TextAlign.right,
              controller: _countController,
              decoration: InputDecoration(
                label: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'عدد المرات',
                    style: TextStyle(
                      fontFamily: 'DIN',
                      color: isDarkMode ? Colors.white : AppColors.primaryColor,
                    ),
                  ),
                ),
                focusColor: isDarkMode ? Colors.white : AppColors.primaryColor,
              ),
              keyboardType: TextInputType.number,
              style: TextStyle(
                fontFamily: 'DIN',
                color: isDarkMode ? Colors.white : AppColors.primaryColor,
              ),
            ),
            TextField(
              textAlign: TextAlign.right,
              controller: _rewardController,
              decoration: InputDecoration(
                label: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'ثواب الذكر',
                    style: TextStyle(
                      fontFamily: 'DIN',
                      color: isDarkMode ? Colors.white : AppColors.primaryColor,
                    ),
                  ),
                ),
                focusColor: isDarkMode ? Colors.white : AppColors.primaryColor,
              ),
              style: TextStyle(
                fontFamily: 'DIN',
                color: isDarkMode ? Colors.white : AppColors.primaryColor,
              ),
            ),
            SizedBox(height: 20.h),
            AppButton(
              horizontalPadding: 20.w,
              onPressed: () {
                _addAzkar();

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      'تمت الإضافة',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'DIN',
                        fontSize: 20.sp,
                        color: isDarkMode ? Colors.white : Colors.white,
                      ),
                    ),
                    duration: const Duration(seconds: 2),
                    behavior: SnackBarBehavior.floating,
                    backgroundColor:
                        isDarkMode ? Colors.black12 : Colors.black26,
                  ),
                );

                Vibrate.feedback(FeedbackType.heavy);
              },
              title: 'إضافة',
            )
          ],
        ),
      ),
    );
  }
}
