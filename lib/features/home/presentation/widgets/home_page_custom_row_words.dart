


import 'package:flutter/material.dart';

import '../../../../cora/utilites/colors_app.dart';

class HomePageCustomRowWords extends StatelessWidget {
  const HomePageCustomRowWords({super.key});

  @override
  Widget build(BuildContext context) {
    return    const Padding(
      padding: EdgeInsets.only(top: 8.0,bottom: 8),
      child: Row(
        children: [
          Text(
            'مقاطع دينية متنوعة',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
          ),
          Spacer(),
          Text(
            '  المزيد',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700,color: ColorsApp.grey),
          ),
        ],
      ),
    );
  }
}
