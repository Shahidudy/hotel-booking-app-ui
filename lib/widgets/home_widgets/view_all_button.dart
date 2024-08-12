import 'package:flutter/material.dart';

class ViewAllButton extends StatelessWidget {
  const ViewAllButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20, top: 0, bottom: 16),
      height: 40,
      width: 100,
      decoration: BoxDecoration(
          // color: Colors.yellow,
          borderRadius: BorderRadius.circular(10),
          border: Border.all()),
      child: Center(child: Text('View All')),
    );
  }
}
