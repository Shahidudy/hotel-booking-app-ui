import 'package:flutter/material.dart';

class SearchTextformfieldSection extends StatelessWidget {
  const SearchTextformfieldSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20),
      height: 50,
      decoration: BoxDecoration(
          // color: Colors.grey,
          borderRadius: BorderRadius.circular(30),
          border: Border.all()),
      child: TextFormField(
        decoration: InputDecoration(
            icon: Icon(
              Icons.arrow_back,
            ),
            hintText: 'Search for city,location or hotel',
            border: InputBorder.none),
      ),
    );
  }
}
