import 'package:flutter/material.dart';


class CustomerBottomSheetContainer extends StatelessWidget {
  const CustomerBottomSheetContainer({
    super.key,
    required this.containercolor,
    required this.text1,
    required this.image,
  });
  final Color containercolor;
  final String text1;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 100,
        decoration: BoxDecoration(
            color: containercolor, borderRadius: BorderRadius.circular(14)),
        child: Row(
          children: [
            const SizedBox(
              width: 40,
            ),
            Center(
                child: Text(
              text1,

            )),
            const SizedBox(
              width: 60,
            ),
            Image.asset(image),
          ],
        ),
      ),
    );
  }
}
