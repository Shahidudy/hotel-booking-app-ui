import 'package:flutter/material.dart';

class ContinueYourSearchSection extends StatelessWidget {
  const ContinueYourSearchSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20, top: 30, bottom: 50),
      height: 120,
      // decoration: BoxDecoration(color: Colors.grey[300]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Continue your search',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          Container(
            margin: EdgeInsets.only(top: 15),
            // height: 40,
            width: 210,
            decoration: BoxDecoration(
                // color: Colors.green,
                border: Border.all(),
                borderRadius: BorderRadius.circular(10)),
            child: ListTile(
              title: Text('Kozikode'),
              subtitle: Text('Today - Tomorrow'),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 17,
                color: Colors.grey[700],
              ),
            ),
          )
        ],
      ),
    );
  }
}
