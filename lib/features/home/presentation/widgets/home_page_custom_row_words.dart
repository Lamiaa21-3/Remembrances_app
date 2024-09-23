


import 'package:flutter/material.dart';

import '../../../../cora/utilites/colors_app.dart';
import '../../../../cora/utilites/widgets/custom_arabic_text.dart';
import '../../../../generated/l10n.dart';

class HomePageCustomRowWords extends StatelessWidget {
  const HomePageCustomRowWords({super.key});

  @override
  Widget build(BuildContext context) {
    return     Row(
      children: [
        CustomArabicText(
          text: S.of(context).differentVideo,
          fontSize: 16,
          fontWeight: FontWeight.w700,
          color: ColorsApp.black,

        ),
        Spacer(),
        CustomArabicText(
          text: S.of(context).more,
          fontSize: 16,
          fontWeight: FontWeight.w700,
          color: ColorsApp.semiGreen,

        ),
      ],
    );
  }
}
