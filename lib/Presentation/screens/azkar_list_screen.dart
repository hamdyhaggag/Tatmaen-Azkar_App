import 'package:flutter/material.dart';
import 'package:tatmaen24/Presentation/screens/add_azkar_item.dart';
import 'package:tatmaen24/imports.dart';

final ValueNotifier<List<AzkarItem>> azkarNotifier = ValueNotifier([
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
]);

class AzkarListScreen extends StatelessWidget {
  const AzkarListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: isDarkMode ? const Color(0xff1F1F1F) : Colors.white,
      appBar: const CustomAppBar(
        title: 'السبحة الإلكترونية',
        isHome: true,
      ),
      body: ValueListenableBuilder<List<AzkarItem>>(
        valueListenable: azkarNotifier,
        builder: (context, azkar, child) {
          return ListView.builder(
            padding: const EdgeInsets.all(8.0),
            itemCount: azkar.length,
            itemBuilder: (context, index) {
              return Dismissible(
                key: Key(azkar[index].text),
                background: Container(color: Colors.red),
                confirmDismiss: (direction) async {
                  if (azkar[index].isDefault) {
                    return false;
                  }
                  if (direction == DismissDirection.startToEnd) {
                    return false;
                  }
                  return await showDialog<bool>(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text(
                        'تأكيد الحذف',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'DIN',
                            fontWeight: FontWeight.w600,
                            fontSize: 20.sp,
                            color: isDarkMode
                                ? Colors.white
                                : AppColors.primaryColor),
                      ),
                      content: Text(
                        textAlign: TextAlign.center,
                        'هل أنت متأكد أنك تريد حذف هذا الذكر؟',
                        style: TextStyle(
                            fontFamily: 'DIN',
                            fontSize: 22.sp,
                            color: isDarkMode
                                ? Colors.white
                                : AppColors.primaryColor),
                      ),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context, false),
                          child: Text(
                            'إلغاء',
                            style: TextStyle(
                                fontFamily: 'DIN',
                                fontSize: 16.sp,
                                color: isDarkMode
                                    ? Colors.white
                                    : AppColors.primaryColor),
                          ),
                        ),
                        TextButton(
                          onPressed: () => Navigator.pop(context, true),
                          child: Text(
                            'حذف',
                            style: TextStyle(
                                fontFamily: 'DIN',
                                fontSize: 16.sp,
                                color: isDarkMode
                                    ? Colors.white
                                    : AppColors.primaryColor),
                          ),
                        ),
                      ],
                    ),
                  );
                },
                onDismissed: (direction) {
                  if (!azkar[index].isDefault) {
                    azkarNotifier.value = List.from(azkarNotifier.value)
                      ..removeAt(index);
                  }
                },
                child: AzkarListItem(
                  azkarItem: azkar[index],
                  onDelete: () {},
                ),
              );
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
              MaterialPageRoute(
                builder: (context) => const AddAzkarScreen(),
              ),
            );
            Vibrate.feedback(FeedbackType.heavy);
          },
          title: 'إضافة ذكر',
        ),
      ],
    );
  }
}

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
}

class AzkarListItem extends StatelessWidget {
  final AzkarItem azkarItem;
  final VoidCallback onDelete;

  const AzkarListItem(
      {super.key, required this.azkarItem, required this.onDelete});

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
          style: TextStyle(
              fontSize: 21.sp,
              fontFamily: 'DIN',
              color: isDarkMode ? Colors.white : AppColors.primaryColor,
              fontWeight: FontWeight.w600),
        ),
        subtitle: Text(
          azkarItem.reward,
          textAlign: TextAlign.right,
          style: TextStyle(
              fontSize: 16.sp,
              fontFamily: 'DIN',
              color: isDarkMode ? Colors.white : AppColors.primaryColor),
        ),
        trailing: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              '${azkarItem.count}',
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontSize: 22.sp,
                  fontFamily: 'DIN',
                  color: isDarkMode ? Colors.white : AppColors.primaryColor),
            ),
            SizedBox(
              width: 26.w,
            ),
            Text(
              'مرة',
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontSize: 18.sp,
                  fontFamily: 'DIN',
                  color: isDarkMode ? Colors.white : AppColors.primaryColor),
            ),
          ],
        ),
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
}
