import 'package:flutter/material.dart';
import 'package:qoraan_app/features/home/presentation/home_page.dart';

import '../../../../generated/l10n.dart';
import 'custom_container_bottom_sheet.dart';

class CustomerBottomSheetItem extends StatelessWidget {
  const CustomerBottomSheetItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: double.infinity,
        // decoration: BoxDecoration(color: Colors.blue),
        child: Column(
          children: [
            SizedBox(
              height: 80,
            ),
            InkWell(
              onTap: () {
                // context.push(SoloQuizePage());
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomerBottomSheetContainer(
                  containercolor: Color(0xffB5A7FF),
                  text1: S.of(context).individual,
                  image: 'AssetsData.student',
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return HomePage();
                }));
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomerBottomSheetContainer(
                  containercolor: Color(0xff6AC38D),
                  text1: S.of(context).train,
                  image: 'AssetsData.student',
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            InkWell(
              onTap: () {},
              child: CustomerBottomSheetContainer(
                containercolor: Color(0xffFFA4F2),
                text1: S.of(context).against,
                image: "assets/svg/oneone.png",
                //text2: S.of(context).against,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomerBottomSheetContainer(
                    containercolor: Color(0xffBC4A26),
                    text1: S.of(context).group,
                    image: "assets/svg/group.png"
                    //text2: S.of(context).against,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
