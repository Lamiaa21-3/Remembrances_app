import 'package:flutter/material.dart';

import '../../../../cora/utilites/colors_app.dart';

import 'home_page_ietm_container.dart';

class HomePageListViewContainer extends StatelessWidget {
  const HomePageListViewContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          HomePageIetmContainer(
              text: 'القران الكريم',
              color: ColorsApp.lightBlue,
              image: 'assets/images/Holy-Quran-Ramadan.png'),
          HomePageIetmContainer(
              text: 'المسبحة',
              color: ColorsApp.pink,
              image: 'assets/images/Prayer-Beads-Ramadan.png'),
          HomePageIetmContainer(
              text: 'الاذكار',
              color: ColorsApp.lightBlue,
              image: 'assets/images/Holy-Quran-Ramadan.png'),

        ],
      ),
    );
  }
}