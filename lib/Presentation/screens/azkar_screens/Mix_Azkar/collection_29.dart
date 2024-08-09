import 'package:flutter/material.dart';
import 'package:tatmaen/imports.dart';

class Mix29 extends StatelessWidget {
  const Mix29({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => AzkarCubit(),
        child: const AzkarModelView(
          title: 'دعـاء صـلاة الاستخـارة',
          azkarList: [
            'قال جابر بن عبدالله رضي الله عنهما : كان رسول الله صلى الله عليه وسلم يعلمنا الاستخارة في الامور كلها كما يعلمنا السورة من القرآن ، يقول : ( إذا هم أحدكم بالأمر فليركع ركعتين من غير الفريضة ثم ليقل : اللهم إني أستخيرك بعلمك ، وأستقدرك بقدرتك وأسألك من فضلك العظيم فإنك تقدر ولا أقدر وتعلم ولاأعلم وأنت علام الغيوب ، اللهم إن كنت تعلم أن هذا الأمر ـ ويسمي حاجته ـ خيرا لي في ديني ومعاشي وعاقبة أمري ـ أو قال عاجله وآجله ـ فأقدره لي ويسره لي ثم بارك لي فيه ، وإن كنت تعلم أن هذا الأمر شر لي في ديني ومعاشي وعاقبة أمري ـ أو قال عاجله وآجله ـ فاصرفه عني واصرفني عنه واقدر لي الخير حيث كان ثم ارضني به',
          ],
          maxValues: [1],
        ),
      ),
    );
  }
}
