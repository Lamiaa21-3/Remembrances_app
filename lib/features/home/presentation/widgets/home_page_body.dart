import 'package:flutter/material.dart';
import 'package:qoraan_app/cora/utilites/colors_app.dart';

import 'package:qoraan_app/cora/utilites/widgets/custom_arabic_text.dart';

import '../../../../generated/l10n.dart';

import 'home_page_custom_timing_container.dart';
import 'home_page_word_container.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Image.asset('assets/images/Prayer.png'),
          const SizedBox(
            height: 9,
          ),
          const HomePageCustomTimingContainer(),
          const SizedBox(
            height: 8,
          ),
          HomePageWordContainer()
        ],
      ),
    );
  }
}
