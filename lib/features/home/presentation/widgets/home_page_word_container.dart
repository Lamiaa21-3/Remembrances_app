import 'package:flutter/material.dart';
import 'package:qoraan_app/cora/utilites/colors_app.dart';

import '../../../../cora/utilites/widgets/custom_arabic_text.dart';
import '../../../../generated/l10n.dart';

class HomePageWordContainer extends StatelessWidget {
  const HomePageWordContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: ColorsApp.black,
            width: 2,
          ),
        ),
        child: Center(
          child: CustomArabicText(
            text: S.of(context).allWorships,
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
