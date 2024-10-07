import 'package:flutter/material.dart';

import '../../../../cora/utilites/colors_app.dart';

class HomePageCustomTimingContainer extends StatelessWidget {
  const HomePageCustomTimingContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        height: MediaQuery.of(context).size.height * .2,
        width: MediaQuery.of(context).size.width * 2.4,
        decoration: BoxDecoration(
          color: ColorsApp.extraGreen,
          borderRadius: BorderRadius.circular(17),
        ),
        child: Row(
          children: [
            Image.asset('assets/images/qotas.png',height: 160,fit: BoxFit.fill,),
            const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'الظهر',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
                Text(
                  '11:45 ',
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),

                Padding(
                  padding: EdgeInsets.only(right: 99.0),
                  child: Text(
                    'م ',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,  ),
                  ),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}