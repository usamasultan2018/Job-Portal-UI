import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:job_portal_ui/screens/chat_screen.dart';
import 'package:job_portal_ui/screens/home_screen.dart';
import 'package:job_portal_ui/screens/schedule_screen.dart';
import 'package:job_portal_ui/screens/setting_screen.dart';
class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int selectedIndex = 0;
  final List<Widget> _widgets = [
    HomeScreen(),
    ChatScreen(),
    ScheduleScreen(),
    SettingScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        bottomNavigationBar:BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color(0xff08151F),
          iconSize: 30,
          selectedFontSize: 10,
          unselectedFontSize: 10,
          currentIndex: selectedIndex,
          onTap: (index){
            setState(() {
              selectedIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Iconsax.message,),
              label: 'Chat',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.schedule,),
                label: 'Schedule'
            ),
            BottomNavigationBarItem(
                icon: Icon(Iconsax.settings),
                label: 'Setting'
            ),
          ],
        ),
        body:_widgets[selectedIndex],
    );
  }
}
