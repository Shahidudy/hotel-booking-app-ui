import 'package:flutter/material.dart';

Widget launchPriceCard({
  required String roomRent,
}) {
  return Column(
    children: [
      Container(
        margin: EdgeInsets.only(left: 10),
        padding: EdgeInsets.only(left: 20),
        height: 180,
        width: 145,
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Spacer(),
            Text(
              'Starting from',
              style: TextStyle(color: Colors.white),
            ),
            Text(
              'Rs : $roomRent',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            Text(
              '+ taxes',
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              height: 6,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.white, width: 2)),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 5, bottom: 5),
                child: Text(
                  'Explore',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      )
    ],
  );
}
