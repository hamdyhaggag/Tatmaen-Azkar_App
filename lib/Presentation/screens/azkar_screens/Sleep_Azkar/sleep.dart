import 'package:flutter/material.dart';
import '../../../../imports.dart';

class SleepAzkar extends StatelessWidget {
  final String title;
  const SleepAzkar({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'أذكار النوم'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 15),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Sleep1(title: 'أذكار النوم'),
                  ),
                );
              },
              child: const CustomFolderRow(title: 'أذكار النوم'),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Sleep2(),
                  ),
                );
              },
              child: const CustomFolderRow(title: 'الدعاء إذا تقلب ليلاً'),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Sleep3(),
                  ),
                );
              },
              child: const CustomFolderRow(title: 'دعاء الفزع في النوم'),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Sleep4(),
                  ),
                );
              },
              child: const CustomFolderRow(
                  title: ' ما يفعل من رأى الرؤيا اأو الحلم'),
            ),
          ],
        ),
      ),
    );
  }
}
