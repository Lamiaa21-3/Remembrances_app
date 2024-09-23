


import 'package:flutter/material.dart';
import 'package:qoraan_app/cora/utilites/styles_app.dart';
import 'package:qoraan_app/cora/utilites/widgets/custom_arabic_text.dart';
import 'package:qoraan_app/features/home/presentation/widgets/home_page_body.dart';

import '../../../generated/l10n.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
       actions: [
         IconButton(onPressed: (){}, icon: const Icon(Icons.notifications_none,size: 40,),),
       ],

        title:  Padding(
          padding: EdgeInsets.only(left: 140.0),
          child: CustomArabicText(text: S.of(context).date,),
        ),


      ),
      body: const HomePageBody(),

    );
  }
}
