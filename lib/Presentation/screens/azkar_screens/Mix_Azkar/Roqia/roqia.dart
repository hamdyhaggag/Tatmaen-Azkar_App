import 'package:flutter/material.dart';
import 'package:tatmaen/imports.dart';

class RoqiaScreen extends StatelessWidget {
  final String title;
  const RoqiaScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'الرقية الشرعية'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 15),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Roqia1(),
                  ),
                );
              },
              child: const CustomFolderRow(title: ' الرقية الشرعية من القرآن'),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Roqia2(),
                  ),
                );
              },
              child: const CustomFolderRow(title: ' الرقية الشرعية من السنة'),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Roqia3(),
                  ),
                );
              },
              child: const CustomFolderRow(title: ' مشروعية الرقية'),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Roqia4(),
                  ),
                );
              },
              child: const CustomFolderRow(title: ' القرآن شفاء لكل داء'),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Roqia5(),
                  ),
                );
              },
              child: const CustomFolderRow(title: ' الصلاة من أسباب العلاج'),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Roqia6(),
                  ),
                );
              },
              child:
                  const CustomFolderRow(title: ' الدعاء في ثلث الليل الأخير'),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Roqia7(),
                  ),
                );
              },
              child: const CustomFolderRow(title: ' الحجامة من أسباب العلاج'),
            ),
          ],
        ),
      ),
    );
  }
}
