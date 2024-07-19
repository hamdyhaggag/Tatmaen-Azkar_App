import 'package:flutter/material.dart';

import '../../../../Widgets/custom_app_bar.dart';
import '../../../../Widgets/custom_folder_row.dart';
import 'azan1.dart';
import 'azan2.dart';
import 'azan3.dart';

class Azan extends StatelessWidget {
  final String title;
  const Azan({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'الأذان'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 15),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Azan1(),
                  ),
                );
              },
              child: const CustomFolderRow(title: 'الأذان'),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Azan2(),
                  ),
                );
              },
              child: const CustomFolderRow(title: 'الدعاء بعد الأذان'),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Azan3(),
                  ),
                );
              },
              child:
                  const CustomFolderRow(title: 'الدعاء بين الأذان و الإقامة'),
            ),
          ],
        ),
      ),
    );
  }
}
