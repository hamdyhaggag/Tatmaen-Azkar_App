import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:tatmaen/imports.dart';
=======
import 'package:tatmaen24/imports.dart';
>>>>>>> 0baf087bcac187a91ff41f8d122b99e82b735b57
import 'azan1.dart';
import 'azan2.dart';
import 'azan3.dart';

class Azan extends StatelessWidget {
  final String title;
  const Azan({super.key, required this.title});

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
