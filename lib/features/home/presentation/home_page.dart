import 'package:flutter/material.dart';

import 'package:qoraan_app/cora/utilites/colors_app.dart';

import 'package:qoraan_app/cora/utilites/widgets/custom_arabic_text.dart';
import 'package:qoraan_app/features/home/presentation/widgets/home_page_body.dart';
import 'package:qoraan_app/features/home/presentation/widgets/home_page_custom_appbar.dart';

import '../../../generated/l10n.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(

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


