import 'package:flutter/material.dart';
import 'package:race_timeprediction/view/profile_screen/profile_screen.dart';


import '../home_view/home.dart';
import '../setting_screen/setting_screen.dart';

class MyBottomNavigationBar extends StatefulWidget {
  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _currentIndex = 0;
  final List<Widget> _screens = [
    Home_Screen(),
    Setting_Screen(),
    ProfileScreen(),
  ];
  Color _selecteditemcolor = Color(0xff8338EC);
  Color _unselecteditemcolor = Colors.black;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
              bottomRight: Radius.circular(20.0),
              bottomLeft: Radius.circular(20.0),
            ),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: Offset(0, -1),
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
              bottomRight: Radius.circular(20.0),
              bottomLeft: Radius.circular(20.0),
            ),
            child: BottomNavigationBar(
              selectedItemColor: _selecteditemcolor,
              unselectedItemColor: _unselecteditemcolor,
              showSelectedLabels: false,
              selectedLabelStyle: TextStyle(fontSize: 1),
              backgroundColor: Color(0xffECDEFF),
              currentIndex: _currentIndex,
              onTap: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
              selectedIconTheme: IconThemeData(color: Colors.blue),
              items: [
                BottomNavigationBarItem(
                  icon: ColorFiltered(
                      colorFilter: ColorFilter.mode(
                        _currentIndex == 0
                            ? _selecteditemcolor
                            : _unselecteditemcolor,
                        BlendMode.srcIn,
                      ),
                      child: Image(
                        image: AssetImage("assets/icons/homeicon.png"),
                        height: 30,
                      )),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: ColorFiltered(
                      colorFilter: ColorFilter.mode(
                        _currentIndex == 1
                            ? _selecteditemcolor
                            : _unselecteditemcolor,
                        BlendMode.srcIn,
                      ),
                      child: Image(
                          image: AssetImage(
                        "assets/icons/settingicon.png",
                      ))),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: ColorFiltered(
                      colorFilter: ColorFilter.mode(
                        _currentIndex == 2
                            ? _selecteditemcolor
                            : _unselecteditemcolor,
                        BlendMode.srcIn,
                      ),
                      child: Image(
                          image: AssetImage("assets/icons/profile_icon.png"))),
                  label: '',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
