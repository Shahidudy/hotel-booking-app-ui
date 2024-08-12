import 'package:flutter/material.dart';

Widget discoverRow({
  required String imageUrl,
  required String hotelTitle,
  required String subTitle,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        margin: EdgeInsets.only(left: 15, top: 20),
        height: 170,
        width: 260,
        decoration: BoxDecoration(
            // color: Colors.green,
            ),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image(
              image: AssetImage(
                imageUrl,
              ),
              fit: BoxFit.fill,
            )),
      ),
      Padding(
        padding: EdgeInsets.only(left: 20),
        child: Text(
          hotelTitle,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(left: 20),
        child: Text(
          subTitle,
          style: TextStyle(fontSize: 10),
        ),
      ),
    ],
  );
}
