


import 'package:flutter/material.dart';

import '../../../../cora/utilites/colors_app.dart';
import '../../../../cora/utilites/widgets/custom_arabic_text.dart';
import '../../../../generated/l10n.dart';

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