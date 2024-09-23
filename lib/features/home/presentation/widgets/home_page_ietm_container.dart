


import 'package:flutter/material.dart';

class HomePageIetmContainer extends StatelessWidget {
  const HomePageIetmContainer(
      {super.key,
        required this.text,
        required this.color,
        required this.image});

  final String text;
  final Color color;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0,top: 6),
      child: Container(
        height: 160,
        width: 165,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(23),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0,top: 21),
              child: Text(
                text,
                style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
              ),
            ),
            Center(child: Image.asset(image,height: 100,fit: BoxFit.scaleDown,)),
          ],
        ),
      ),
    );
  }
}