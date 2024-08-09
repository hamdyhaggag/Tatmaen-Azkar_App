import 'package:flutter/material.dart';
import 'package:tatmaen/imports.dart';

class Ahadith32 extends StatelessWidget {
  final String title;
  const Ahadith32({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: 'لا ضرر ولا ضرار'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 15),
            CustomContainer(
                headtitle: 'الحديث الثاني و الثلاثون',
                title:
                    ' عن أبي سعيد سعد بن مالك بن سنان الخدري رضي الله عنه أن رسول الله ( ﷺ ) قال: (لا ضرر ولا ضرار) .\n حديث حسن رواه ابن ماجه والدار قطني وغيرهما مسنداً',
                maxValue: 1),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
