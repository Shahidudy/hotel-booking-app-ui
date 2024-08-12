import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ServiceStaggeredPhotoSection extends StatelessWidget {
  const ServiceStaggeredPhotoSection({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> roomNamesInCards = [
      'Sunday\nVadodara',
      'Palette kolkatta',
      "Town House OAK",
      'Palette Jaipur',
      'Sunday Zirajpur',
      'Palette Pune',
    ];
    return Container(
      margin: EdgeInsets.all(20),
      height: 425,
      // decoration: BoxDecoration(color: Colors.white),
      child: MasonryGridView.builder(
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          physics: NeverScrollableScrollPhysics(),
          itemCount: 6,
          gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(),
              child: Column(
                children: [
                  Stack(
                    children: [
                      Positioned(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image(
                              image:
                                  AssetImage('asset/rooms/b-${index + 1}.jpg')),
                        ),
                      ),
                      Positioned(
                          bottom: 10,
                          left: 9,
                          child: Text(
                            roomNamesInCards[index],
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                decorationThickness: 20,
                                decorationColor: Colors.black),
                          ))
                    ],
                  ),
                ],
              ),
            );
          }),
    );
  }
}
