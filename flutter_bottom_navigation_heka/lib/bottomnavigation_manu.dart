import 'package:flutter/material.dart';
import 'package:flutter_bottom_navigation_heka/page_help.dart';
import 'package:flutter_bottom_navigation_heka/page_mainmenu.dart';
import 'package:flutter_bottom_navigation_heka/page_profile.dart';

class MyBottomNavigationBar extends StatefulWidget {
  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int secilen_index = 0;
  List<Widget> allPages;
  MainMenu page_mainMenu;
  ProfilePage page_profilePage;
  HelpPage page_help;
  bool account_type=false;

  @override
  void initState() {
    super.initState();
    page_help = HelpPage();
    page_profilePage = ProfilePage();
    page_mainMenu = MainMenu();
    allPages =[page_mainMenu, page_profilePage, page_help];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Navigation Bar My Best Practice"),
      ),
      body: allPages[secilen_index],
      bottomNavigationBar: buildBottomNavigationBar(),
    );
  }

  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
            backgroundColor: Colors.orangeAccent),
        BottomNavigationBarItem(
            icon: account_type==false?  Icon(Icons.account_circle):Icon(Icons.blur_circular),
            title: account_type==false? Text("User"):Text("Shop") ,
            backgroundColor: Colors.blue),
        BottomNavigationBarItem(
            icon: Icon(Icons.help_outline),
            activeIcon:Icon(Icons.help) ,
            title: Text("Help"),
            backgroundColor: Colors.green),
      ],
      type: BottomNavigationBarType.shifting,
      currentIndex: secilen_index,
      onTap: (secilen) {
        setState(() {
          secilen_index = secilen;
        });
      },
    );

  }
}
