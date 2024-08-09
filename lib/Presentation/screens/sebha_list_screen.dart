import 'package:flutter/material.dart';

<<<<<<< HEAD
import 'package:tatmaen/imports.dart';
=======
import 'package:tatmaen24/imports.dart';
>>>>>>> 0baf087bcac187a91ff41f8d122b99e82b735b57

final ValueNotifier<List<AzkarItem>> azkarNotifier = ValueNotifier([]);

class SebhaAzkarListScreen extends StatelessWidget {
  const SebhaAzkarListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    _loadAzkarItems();

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
              return AzkarListItem(item: item, index: index);
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

  Future<void> _loadAzkarItems() async {
    final service = SebhaAzkarService();
    azkarNotifier.value = await service.loadAzkarItems();
  }
}
