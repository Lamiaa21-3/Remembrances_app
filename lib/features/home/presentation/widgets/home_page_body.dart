import 'package:flutter/material.dart';
import 'package:qoraan_app/cora/utilites/colors_app.dart';

import 'package:qoraan_app/cora/utilites/styles_app.dart';
import 'package:qoraan_app/cora/utilites/widgets/custom_arabic_text.dart';

import '../../../../generated/l10n.dart';

import 'home_page_custom_timing_container.dart';


class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: CustomArabicText(
              text: S.of(context).hDate,
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: ColorsApp.extraGreen,
            ),
          ),

          const SizedBox(
            height: 6,
          ),
          Image.asset('assets/images/Prayer.png'),
          const SizedBox(
            height: 9,
          ),
          const HomePageCustomTimingContainer(),
          const SizedBox(
            height: 8,
          ),



        ],
      ),
    );
  }
}


