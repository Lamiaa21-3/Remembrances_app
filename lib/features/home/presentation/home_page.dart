import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:qoraan_app/cora/utilites/styles_app.dart';
import 'package:qoraan_app/cora/utilites/widgets/custom_arabic_text.dart';
import 'package:qoraan_app/features/home/presentation/widgets/home_page_body.dart';

import '../../../generated/l10n.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Image.asset('assets/images/feather_bell.png'),
          ),
        ],
        title: Padding(
          padding: EdgeInsets.only(left: 150.0),
          child: CustomArabicText(
            text: S.of(context).mDate,
            fontWeight: FontWeight.w600,
            fontSize: 12,
          ),
        ),
      ),
      body: const HomePageBody(),
    );
  }
}
