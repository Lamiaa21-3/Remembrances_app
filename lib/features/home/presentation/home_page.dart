import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:qoraan_app/cora/utilites/colors_app.dart';
import 'package:qoraan_app/cora/utilites/styles_app.dart';
import 'package:qoraan_app/cora/utilites/widgets/custom_arabic_text.dart';
import 'package:qoraan_app/features/home/presentation/widgets/home_page_body.dart';

import '../../../generated/l10n.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // appBar: AppBar(
      //   actions: [
      //     Padding(
      //       padding: const EdgeInsets.only(left: 98.0),
      //       child: CustomArabicText(
      //         text: S.of(context).place,
      //         fontWeight: FontWeight.w600,
      //         fontSize: 12,
      //         color: ColorsApp.grey,
      //       ),
      //     )
      //   ],
      //   title: Padding(
      //     padding: EdgeInsets.only(left: 88.0),
      //     child: CustomArabicText(
      //       text: S.of(context).mDate,
      //       fontWeight: FontWeight.w600,
      //       fontSize: 12,
      //       color: ColorsApp.grey,
      //     ),
      //   ),
      // ),
      body: SafeArea(
        child: Column(
          children: [
            HomePageCustomAppbar(),
            HomePageBody(),
          ],
        ),
      ),
    );
  }
}

class HomePageCustomAppbar extends StatelessWidget {
  const HomePageCustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 48.0,vertical: 12),
      child: Column(
        children: [
          Row(
            children: [
              CustomArabicText(
                text: S.of(context).mDate,
                fontWeight: FontWeight.w600,
                fontSize: 12,
                color: ColorsApp.grey,
              ),
              Spacer(),
              CustomArabicText(
                text: S.of(context).place,
                fontWeight: FontWeight.w600,
                fontSize: 12,
                color: ColorsApp.grey,
              ),
            ],
          ),
          Row(
            children: [
              CustomArabicText(
                text: S.of(context).hDate,
                fontWeight: FontWeight.w700,
                fontSize: 18,

              ),
              Spacer(),
              CustomArabicText(
                text: S.of(context).eygptcairo,
                fontWeight: FontWeight.w700,
                fontSize: 18,

              ),
            ],
          )
        ],
      ),
    );
  }
}
