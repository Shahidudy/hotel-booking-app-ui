import 'package:flutter/material.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.only(left: 10, right: 20),
        height: 55,
        decoration: BoxDecoration(
            color: Colors.grey[300], borderRadius: BorderRadius.circular(30)),
        child: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
            ),
            Container(
              margin: EdgeInsets.only(top: 4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Kozikode',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text('09 Aug - 10 Aug . 1 guest')
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
