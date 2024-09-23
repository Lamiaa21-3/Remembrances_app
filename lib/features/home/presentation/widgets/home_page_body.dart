import 'package:flutter/material.dart';

import 'package:qoraan_app/cora/utilites/styles_app.dart';


import 'home_page_custom_row_words.dart';
import 'home_page_custom_timing_container.dart';
import 'home_page_list_view_container.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child:  SingleChildScrollView(

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const Text(
              'الأحد ربيع الأول 1445',
              style: StylesApp.style18Weight600DarkGreen,
            ),

            const SizedBox(height: 10,),
            Image.asset('assets/images/Prayer.png'),
            const SizedBox(height: 10,),
            const HomePageCustomTimingContainer(),
            const SizedBox(height: 10,),
            // Text(
            //   S.of(context).gregoriandate,
            //   style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
            // ),
            const Text(
              'منوعات دينية',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
            ),
            const HomePageListViewContainer(),
            const HomePageCustomRowWords(),
            const HomePageListViewViedo(),
          ],
        ),
      ),
    );
  }
}

class HomePageListViewViedo extends StatelessWidget {
  const HomePageListViewViedo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return Stack(children:[
            Image.asset('assets/images/Group 465.png'),
            Positioned(
              top: 40,
                right: 113,
                child: Image.asset('assets/images/run.png')),
          ]);
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
            width: 14,
          );
        },
      ),
    );
  }
}
