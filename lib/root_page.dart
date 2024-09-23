import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:qoraan_app/personalpage.dart';


import 'features/home/presentation/home_page.dart';


class RootHomePage extends StatefulWidget {
  const RootHomePage({super.key});

  @override
  State<RootHomePage> createState() => _RootHomePageState();
}

class _RootHomePageState extends State<RootHomePage> {
  int currentindex = 0;
  final List<Widget> pages = <Widget>[
    const HomePage(),

    const Scaffold(
      body: Center(
        child: Text('home'),
      ),
    ),
    const PersonalProfilePage(),
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
      fixedColor: const Color(0xff3E8574
      ),
      // selectedItemColor: AppColor.primary,

      currentIndex: currentindex,
      onTap: (value) {
        setState(() {
          currentindex = value;
        });
      },
      items: const [
        BottomNavigationBarItem(
            icon:   FaIcon(FontAwesomeIcons.house), label: 'الصفحة الرئيسية'),
        BottomNavigationBarItem(
            icon: Icon(Icons.access_time),
            label: 'مواقيت الصلاة'),
        BottomNavigationBarItem(
            icon: Icon(Icons.settings_outlined),
            label: 'الاعدادات'),

      ],
    );
  }
}
