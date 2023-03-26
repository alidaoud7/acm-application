import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//import 'account_screen.dart';
//import 'home_page_screen.dart';
//import 'messages_screen.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentPage = 0;
  final screens = [

    // HomePage(),
    //ProfilePage(),
    //CalendarPage(),
    //SettingsPage(),



  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentPage,
        //children: screens,
      ),
      bottomNavigationBar:BottomNavigationBar(
        elevation: 0,
        currentIndex: currentPage,
        onTap: (index){
          setState(() {
            currentPage = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
              icon : currentPage == 0 ?
              Icon(
                Icons.home,
                color: Colors.black,
              ) :  Icon(
                Icons.home_outlined,
                color:  Colors.grey.shade700,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: currentPage == 1 ?
              Icon(
                Icons.calendar_month,
                color: Colors.black,
              ) :
              Icon(
                Icons.calendar_month_outlined,
                color: Colors.grey.shade700,
              ) ,
              label: "Schedule"),
          BottomNavigationBarItem(
              icon: currentPage == 2 ?
              Icon(
                Icons.search,
                color: Colors.black,
              ):
              Icon(
                Icons.search_outlined,
                color: Colors.grey.shade700,
              ) ,
              label: "Search"),
          BottomNavigationBarItem(
              icon: currentPage == 3?
              Icon(
                Icons.notifications,
                color: Colors.black,
              ):
              Icon(
                Icons.notifications_outlined,
                color: Colors.grey.shade700,
              ) ,
              label: "Notifications"),
          BottomNavigationBarItem(
              icon: currentPage == 4 ?
              Icon(
                Icons.person,
                color: Colors.black,
              ):
              Icon(
                Icons.person_outlined,
                color: Colors.grey.shade700,
              ),
              label: "Person"),

        ],) ,
    );
  }
}