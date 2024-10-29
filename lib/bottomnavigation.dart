import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myapp/Homepage.dart';
import 'package:myapp/chat.dart';
import 'package:myapp/notification.dart';
import 'package:myapp/profile.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  List Screens = [Homepage(), ChatPage(), Profile(), NotificationsScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Screens[_currentIndex],
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: [
          Icons.home,
          Icons.chat,
          Icons.person,
          Icons.notification_add,
        ],
        activeIndex: _currentIndex,
        gapLocation: GapLocation.none,
        onTap: (index) {
          setState(() => _currentIndex = index);
          // Handle navigation here based on the index
          // For example, you can use a switch statement
          // switch (index) {
          //   case 0:
          //     // Navigator.push(context, MaterialPageRoute(builder: (context) => SearchScreen()));
          //     break;
          //   case 1:
          //     // Navigator.push(context, MaterialPageRoute(builder: (context) => FavoriteScreen()));
          //     break;
          //   case 2:
          //     Navigator.push(
          //         context, MaterialPageRoute(builder: (context) => Home()));
          //     break;
          //   case 3:
          //     Navigator.push(
          //         context, MaterialPageRoute(builder: (context) => Saved()));
          //     break;
          //   case 4:
          //     // Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileScreen()));
          //     break;
          // }
        },
        activeColor: Colors.black, // Change active color if needed
        inactiveColor: Colors.grey.shade800, // Change inactive color if needed
        backgroundColor: Colors.white, // Change background color if needed
      ),
    );
  }
}
