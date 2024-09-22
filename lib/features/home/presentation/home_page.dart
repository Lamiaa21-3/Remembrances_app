


import 'package:flutter/material.dart';
import 'package:qoraan_app/cora/utilites/styles_app.dart';
import 'package:qoraan_app/features/home/presentation/widgets/home_page_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
       actions: [
         IconButton(onPressed: (){}, icon: Icon(Icons.notifications_none,size: 40,),),
       ],

        title: Padding(
          padding: const EdgeInsets.only(left: 140.0),
          child: Text('12 الثلاثاء ديسمبر 2023',style: StylesApp.style15Weight600Black,),
        ),


      ),
      body: const HomePageBody(),

    );
  }
}
