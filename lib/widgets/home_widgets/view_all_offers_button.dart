import 'package:flutter/material.dart';

class ViewAllOffersButton extends StatelessWidget {
  const ViewAllOffersButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20, bottom: 40),
      height: 50,
      decoration: BoxDecoration(
          border: Border.all(), borderRadius: BorderRadius.circular(10)),
      child: Center(
          child: Text(
        'Viw all offers',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
      )),
    );
  }
}
