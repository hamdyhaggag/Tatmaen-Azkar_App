import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import 'package:tatmaen24/Presentation/screens/add_azkar_item.dart';
import 'package:tatmaen24/imports.dart';

final ValueNotifier<List<AzkarItem>> azkarNotifier = ValueNotifier([]);

class AzkarItem {
  final String text;
  final int count;
  final String reward;
  final bool isDefault;

  AzkarItem({
    required this.text,
    required this.count,
    required this.reward,
    this.isDefault = false,
  });

  // Convert AzkarItem to JSON
  Map<String, dynamic> toJson() => {
        'text': text,
        'count': count,
        'reward': reward,
        'isDefault': isDefault,
      };

  // Create AzkarItem from JSON
  factory AzkarItem.fromJson(Map<String, dynamic> json) => AzkarItem(
        text: json['text'],
        count: json['count'],
        reward: json['reward'],
        isDefault: json['isDefault'],
      );
}

Future<void> loadAzkarItems() async {
  final prefs = await SharedPreferences.getInstance();
  final azkarJson = prefs.getString('azkar_items');

  if (azkarJson != null) {
    final List<dynamic> azkarList = json.decode(azkarJson);
    azkarNotifier.value =
        azkarList.map((item) => AzkarItem.fromJson(item)).toList();
  } else {
    _setDefaultAzkarItems();
  }
}

void _setDefaultAzkarItems() async {
  azkarNotifier.value = _defaultAzkarItems();
  await saveAzkarItems();
}

List<AzkarItem> _defaultAzkarItems() => [
      AzkarItem(
          text: 'سبحان الله',
          count: 33,
          reward: 'لها ثواب عظيم عند الله',
          isDefault: true),
      AzkarItem(
          text: 'الحمد لله',
          count: 33,
          reward: 'لك أجر عظيم عند الله وذلك لأنك حمدته على نعمه',
          isDefault: true),
      AzkarItem(
          text: 'الله أكبر',
          count: 100,
          reward: 'لا يعلم أجرها إلا الله',
          isDefault: true),
      AzkarItem(
          text: 'لا إله إلا الله',
          count: 33,
          reward: 'لها فضل عظيم لا يعلمه إلا الله',
          isDefault: true),
      AzkarItem(
          text: 'لا حول ولا قوة إلا بالله',
          count: 33,
          reward: 'لك على كل تسبيحه شجرة بالجنه',
          isDefault: true),
      AzkarItem(
          text: 'اللهم صلِّ على سيدنا محمد',
          count: 100,
          reward: 'يرد عليك الرسول صلى الله عليه وسلم السلام',
          isDefault: true),
    ];

Future<void> saveAzkarItems() async {
  final prefs = await SharedPreferences.getInstance();
  final azkarJson =
      json.encode(azkarNotifier.value.map((item) => item.toJson()).toList());
  await prefs.setString('azkar_items', azkarJson);
}

class AzkarListScreen extends StatelessWidget {
  const AzkarListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    loadAzkarItems(); // Fetch data when screen builds

    return Scaffold(
      backgroundColor: isDarkMode ? const Color(0xff1F1F1F) : Colors.white,
      appBar: const CustomAppBar(title: 'السبحة الإلكترونية', isHome: true),
      body: ValueListenableBuilder<List<AzkarItem>>(
        valueListenable: azkarNotifier,
        builder: (context, azkar, child) {
          return ListView.builder(
            padding: const EdgeInsets.all(8.0),
            itemCount: azkar.length,
            itemBuilder: (context, index) {
              final item = azkar[index];
              return _buildAzkarItem(context, item, index, isDarkMode);
            },
          );
        },
      ),
      persistentFooterButtons: [
        AppButton(
          horizontalPadding: 20.w,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const AddAzkarScreen()),
            );
            Vibrate.feedback(FeedbackType.heavy);
          },
          title: 'إضافة ذكر',
        ),
      ],
    );
  }

  Widget _buildAzkarItem(
      BuildContext context, AzkarItem item, int index, bool isDarkMode) {
    return Dismissible(
      key: Key(item.text),
      background: Container(color: Colors.red),
      confirmDismiss: (direction) =>
          _confirmDismiss(context, item, direction, isDarkMode),
      onDismissed: (direction) {
        if (!item.isDefault) {
          azkarNotifier.value = List.from(azkarNotifier.value)..removeAt(index);
          saveAzkarItems();
        }
      },
      child: AzkarListItem(azkarItem: item),
    );
  }

  Future<bool?> _confirmDismiss(BuildContext context, AzkarItem item,
      DismissDirection direction, bool isDarkMode) {
    if (item.isDefault || direction != DismissDirection.endToStart)
      return Future.value(false);

    return showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(
          'تأكيد الحذف',
          textAlign: TextAlign.center,
          style: _dialogTextStyle(isDarkMode),
        ),
        content: Text(
          'هل أنت متأكد أنك تريد حذف هذا الذكر؟',
          textAlign: TextAlign.center,
          style: _dialogTextStyle(isDarkMode),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: Text('إلغاء', style: _dialogTextStyle(isDarkMode)),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, true),
            child: Text('حذف', style: _dialogTextStyle(isDarkMode)),
          ),
        ],
      ),
    );
  }

  TextStyle _dialogTextStyle(bool isDarkMode) {
    return TextStyle(
      fontFamily: 'DIN',
      fontSize: 16.sp,
      color: isDarkMode ? Colors.white : AppColors.primaryColor,
    );
  }
}

class AzkarListItem extends StatelessWidget {
  final AzkarItem azkarItem;

  const AzkarListItem({super.key, required this.azkarItem});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Card(
      color: isDarkMode ? Colors.black12 : Colors.grey.shade100,
      margin: EdgeInsets.symmetric(vertical: 15.0.h),
      child: ListTile(
        contentPadding: const EdgeInsets.all(16.0),
        title: Text(
          azkarItem.text,
          textAlign: TextAlign.right,
          style: _textStyle(isDarkMode,
              fontSize: 21.sp, fontWeight: FontWeight.w600),
        ),
        subtitle: Text(
          azkarItem.reward,
          textAlign: TextAlign.right,
          style: _textStyle(isDarkMode, fontSize: 16.sp),
        ),
        trailing: _buildTrailing(isDarkMode),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Sebha(
                title: azkarItem.text,
                subtitle: azkarItem.reward,
                beadCount: azkarItem.count,
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildTrailing(bool isDarkMode) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          '${azkarItem.count}',
          textAlign: TextAlign.left,
          style: _textStyle(isDarkMode, fontSize: 22.sp),
        ),
        SizedBox(width: 26.w),
        Text(
          'مرة',
          textAlign: TextAlign.left,
          style: _textStyle(isDarkMode, fontSize: 18.sp),
        ),
      ],
    );
  }

  TextStyle _textStyle(bool isDarkMode,
      {required double fontSize, FontWeight fontWeight = FontWeight.normal}) {
    return TextStyle(
      fontSize: fontSize,
      fontFamily: 'DIN',
      color: isDarkMode ? Colors.white : AppColors.primaryColor,
      fontWeight: fontWeight,
    );
  }
}
