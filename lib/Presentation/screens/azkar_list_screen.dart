import 'package:flutter/material.dart';
import 'package:tatmaen24/imports.dart';

class AzkarListScreen extends StatelessWidget {
  final List<AzkarItem> azkar = [
    AzkarItem(text: 'سبحان الله', count: 33, reward: 'لها ثواب عظيم عند الله'),
    AzkarItem(
        text: 'الحمد لله',
        count: 33,
        reward: 'لك أجر عظيم عند الله وذلك لأنك حمدته على نعمه'),
    AzkarItem(text: 'الله أكبر', count: 100, reward: 'لا يعلم أجرها إلا الله'),
    AzkarItem(
        text: 'لا إله إلا الله',
        count: 33,
        reward: 'لها فضل عظيم لا يعلمه إلا الله'),
    AzkarItem(
        text: 'لا حول ولا قوة إلا بالله',
        count: 33,
        reward: 'لك على كل تسبيحه شجرة بالجنه'),
    AzkarItem(
        text: 'اللهم صلِّ على سيدنا محمد',
        count: 100,
        reward: 'يرد عليك الرسول صلى الله عليه وسلم السلام'),
  ];

  AzkarListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'أذكار السبحة الإلكترونية',
        isHome: true,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8.0),
        itemCount: azkar.length,
        itemBuilder: (context, index) {
          return AzkarListItem(azkarItem: azkar[index]);
        },
      ),
    );
  }
}

class AzkarItem {
  final String text;
  final int count;
  final String reward;

  AzkarItem({required this.text, required this.count, required this.reward});
}

class AzkarListItem extends StatelessWidget {
  final AzkarItem azkarItem;

  const AzkarListItem({super.key, required this.azkarItem});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 15.0),
      child: ListTile(
        contentPadding: const EdgeInsets.all(16.0),
        title: Text(
          azkarItem.text,
          textAlign: TextAlign.right,
          style: const TextStyle(fontSize: 21, fontFamily: 'DIN'),
        ),
        subtitle: Text(
          azkarItem.reward,
          textAlign: TextAlign.right,
          style: const TextStyle(fontSize: 17, fontFamily: 'DIN'),
        ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              '${azkarItem.count}',
              textAlign: TextAlign.left,
              style: const TextStyle(fontSize: 24, fontFamily: 'DIN'),
            ),
            const SizedBox(
              width: 30,
            ),
            const Text(
              'مرة',
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 24, fontFamily: 'DIN'),
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
