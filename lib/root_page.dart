import 'package:flutter/material.dart';
import 'package:qoraan_app/cora/utilites/colors_app.dart';
import 'package:qoraan_app/personalpage.dart';


import 'features/home/presentation/home_page.dart';
import 'generated/l10n.dart';

class RootHomePage extends StatefulWidget {
  const RootHomePage({Key? key}) : super(key: key);

  @override
  State<RootHomePage> createState() => _RootHomePageState();
}

class _RootHomePageState extends State<RootHomePage> {
  int currentindex = 0;
  final List<Widget> pages = <Widget>[
    HomePage(),

    const Scaffold(
      body: Center(
        child: Text('home'),
      ),
    ),
    PersonalProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentindex],
      bottomNavigationBar: buildBottomNavBar(),
    );
  }

  Widget buildBottomNavBar() {
    return BottomNavigationBar(
      selectedLabelStyle: const TextStyle(
          fontFamily: "Cairo", fontSize: 15, fontWeight: FontWeight.bold),

      backgroundColor: Colors.white,
      fixedColor: Color(0xff3E8574
      ),
      // selectedItemColor: AppColor.primary,

      currentIndex: currentindex,
      onTap: (value) {
        setState(() {
          currentindex = value;
        });
      },
      items: [
        BottomNavigationBarItem(
            icon: const Icon(Icons.mosque_outlined), label: 'الصفحة الرئيسية'),
        BottomNavigationBarItem(
            icon: const Icon(Icons.access_time),
            label: 'مواقيت الصلاة'),
        BottomNavigationBarItem(
            icon: const Icon(Icons.settings_outlined),
            label: 'الاعدادات'),

      ],
    );
  }
}
