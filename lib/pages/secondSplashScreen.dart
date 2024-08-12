import 'package:flutter/material.dart';
import 'package:hotel_booking_app_ui/pages/navPage.dart';

class Secondsplashscreen extends StatelessWidget {
  const Secondsplashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          margin: EdgeInsets.only(right: 20, left: 20),
          // padding: EdgeInsets.only(right: 20, left: 20),
          height: 600,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'asset/images/sp-2.jpg',
                  height: 160,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Welcome to OYO!',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                Text(
                  'OYO app collects location data to\npersonalize suggested hotels, offers and\ndestinations to improve your booking\nexperience. This data is also used\nto enable SOS emergency services\nto provide optimal resolution to your\nproblem.',
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  "Please choose 'allow all the time' when\nasked for location access.",
                  style: TextStyle(color: Color.fromARGB(255, 124, 119, 70)),
                ),
                SizedBox(
                  height: 26,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return NavPage();
                    }));
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 40,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      'Continue',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
