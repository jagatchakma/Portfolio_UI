import 'package:flutter/material.dart';

class PackageGridView extends StatefulWidget {
  const PackageGridView({Key? key}) : super(key: key);

  @override
  State<PackageGridView> createState() => _PackageGridViewState();
}

class _PackageGridViewState extends State<PackageGridView> {
  List<String> imagesList = [
    'images/image1.jpg',
    'images/image2.jpg',
    'images/image3.jpg',
    'images/image1.jpg',
    'images/image2.jpg',
    'images/image3.jpg',
    'images/image1.jpg',
    'images/image2.jpg',
    'images/image3.jpg',
    'images/image2.jpg',
    'images/image3.jpg',
    'images/image1.jpg',
    'images/image2.jpg',
    'images/image3.jpg',
    'images/image1.jpg',
    'images/image2.jpg',
    'images/image3.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GridView.builder(
        itemCount: imagesList.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.all(10),
            // padding: EdgeInsets.all(10),
            decoration: BoxDecoration(color: Colors.grey),
            child: Image.asset(imagesList[index]),
          );
        },
      ),
    );
  }
}
