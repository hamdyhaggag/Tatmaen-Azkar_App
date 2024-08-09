import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:tatmaen/imports.dart'; // Ensure correct imports
=======
import 'package:tatmaen24/imports.dart'; // Ensure correct imports
>>>>>>> 0baf087bcac187a91ff41f8d122b99e82b735b57

class Mix23 extends StatelessWidget {
  const Mix23({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'دعاء رؤية الهلال'),
      body: BlocProvider(
        create: (context) => AzkarCubit(),
        child: const AzkarModelView(
          title: 'دعاء رؤية الهلال',
          azkarList: [
            'الله أكبر ، اللهم أهله علينا بالأمن ، والإيمان والسلامة ، والإسلام ، والتوفيق لما تحب وترضى ربنا وربك الله',
          ],
          maxValues: [1],
        ),
      ),
    );
  }
}
