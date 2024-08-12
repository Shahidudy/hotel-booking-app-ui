import 'package:flutter/material.dart';
import 'package:hotel_booking_app_ui/pages/navPage.dart';

class TwoButtonHeaderSection extends StatelessWidget {
  const TwoButtonHeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20),
      height: 50,
      // color: Colors.yellow,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return NavPage();
              }));
            },
            child: CircleAvatar(
              child: Text('X'),
            ),
          ),
          CircleAvatar(
            child: Icon(Icons.exit_to_app_sharp),
          )
        ],
      ),
    );
  }
}
