import 'package:flutter/material.dart';
import 'package:hotel_booking_app_ui/pages/bookingsPage.dart';
import 'package:hotel_booking_app_ui/pages/homePage.dart';
import 'package:hotel_booking_app_ui/pages/needHelp.dart';
import 'package:hotel_booking_app_ui/pages/oyoServiced.dart';
import 'package:hotel_booking_app_ui/pages/searchPage.dart';

class NavPage extends StatefulWidget {
  const NavPage({super.key});

  @override
  State<NavPage> createState() => _NavPageState();
}

class _NavPageState extends State<NavPage> {
  //MY OWN INDEX TO GET CLICKED PAGE;
  int myIndex = 0;

  //FUNCTION TO INVOKE CLICKED PAGE FROM GESTURE DETECTOR
  void myTapping(int tappingIndex) {
    setState(() {
      myIndex = tappingIndex;
    });
  }

  List _allPages = [
    Homepage(),
    Bookingspage(),
    SearchPage(),
    OyoServicedPage(),
    NeedhelpPage(),
  ];

  List<String> pagesName = [
    'Home',
    'Bookings',
    'Search',
    'OYO Serviced',
    'Need Help',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //BODY TO NAVIGATE PAGE
      body: _allPages[myIndex],

      //BOTTOM NAVIGATION BAR
      bottomNavigationBar: Container(
        height: 80,
        decoration: BoxDecoration(
          color: Colors.grey[350],
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 9),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  navColumns(
                    myText: pagesName[0],
                    myIcon: Icons.home,
                    tapableIndex: 0,
                  ),
                  navColumns(
                    myText: pagesName[1],
                    myIcon: Icons.book,
                    tapableIndex: 1,
                  ),
                  navColumns(
                    myText: pagesName[2],
                    myIcon: Icons.search,
                    tapableIndex: 2,
                  ),
                  navColumns(
                    myText: pagesName[3],
                    myIcon: Icons.room_service,
                    tapableIndex: 3,
                  ),
                  navColumns(
                    myText: pagesName[4],
                    myIcon: Icons.help,
                    tapableIndex: 4,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget navColumns({
    required String myText,
    required IconData myIcon,
    required int tapableIndex,
  }) {
    return GestureDetector(
      onTap: () {
        myTapping(tapableIndex);
      },
      child: Column(
        children: [
          // Container(
          //   height: 3,
          //   width: 50,
          //   decoration: BoxDecoration(
          //       borderRadius: BorderRadius.circular(30),
          //       color: tapableIndex == myIndex ? Colors.black : Colors.white),
          //   // child: Text(''),
          // ),
          SizedBox(
            height: 5,
          ),
          Icon(
            myIcon,
            color: tapableIndex == myIndex ? Colors.black : Colors.grey[700],
          ),
          Text(myText),
        ],
      ),
    );
  }
}
