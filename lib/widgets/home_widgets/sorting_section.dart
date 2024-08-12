import 'package:flutter/material.dart';

class SortingSection extends StatefulWidget {
  const SortingSection({super.key});

  @override
  State<SortingSection> createState() => _SortingSectionState();
}

class _SortingSectionState extends State<SortingSection> {
  int myIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      // decoration: BoxDecoration(color: Colors.amber),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Row(
            children: [
              containerRows(chipText: 'Sort', myIcon: Icons.sort, index: 0),
              containerRows(
                  chipText: 'Locality', myIcon: Icons.arrow_downward, index: 1),
              containerRows(
                  chipText: 'Price', myIcon: Icons.arrow_forward, index: 2),
              containerRows(chipText: 'Super OYO', index: 3),
              containerRows(chipText: 'Townhouse', index: 4),
              containerRows(chipText: 'Couple Friendly', index: 5),
            ],
          )
        ],
      ),
    );
  }

  Widget containerRows({
    required String chipText,
    required int index,
    IconData? myIcon,
  }) {
    return GestureDetector(
      onTap: () {
        setState(() {
          myIndex = index;
        });
      },
      child: Container(
        margin: EdgeInsets.only(right: 10),
        height: 35,
        padding: EdgeInsets.only(left: 10, right: 10),
        decoration: BoxDecoration(
            border: Border.all(),
            borderRadius: BorderRadius.circular(20),
            color: myIndex == index ? Colors.black : Colors.white),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              chipText,
              style: TextStyle(
                  color: myIndex == index ? Colors.white : Colors.black),
            ),
            SizedBox(
              width: 5,
            ),
            // Icon(
            //   myIcon,
            //   color: myIndex == index ? Colors.white : Colors.black,
            // )
          ],
        ),
      ),
    );
  }
}
