import 'package:flutter/material.dart';
import 'package:qoraan_app/cora/utilites/colors_app.dart';

import 'package:qoraan_app/cora/utilites/styles_app.dart';
import 'package:qoraan_app/cora/utilites/widgets/custom_arabic_text.dart';

import '../../../../generated/l10n.dart';
import 'home_page_custom_row_words.dart';
import 'home_page_custom_timing_container.dart';
import 'home_page_list_view_container.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomArabicText(
            text: S.of(context).hDate,
            fontSize: 15,
            fontWeight: FontWeight.w600,
            color: ColorsApp.extraGreen,
          ),

          const SizedBox(
            height: 6,
          ),
          Image.asset('assets/images/Prayer.png'),
          const SizedBox(
            height: 10,
          ),
          const HomePageCustomTimingContainer(),
          const SizedBox(
            height: 8,
          ),

          CustomArabicText(
            text: S.of(context).religious,
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: ColorsApp.black,

          ),
          const SizedBox(
            height: 6,
          ),

          const HomePageListViewContainer(),
          const HomePageCustomRowWords(),
          const HomePageListViewViedo(),
        ],
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
          return Stack(children: [
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
