import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<String> imagePaths = [
    'images/image-1.png',
    'images/image-2.png',
    'images/image-3.png',
    'images/image-4.png',
    'images/image-5.png',
    'images/image-6.png',
    'images/image-7.png',
    'images/image1.jpeg',
    'images/image2.jpeg',
    'images/image3.png',
    'images/image4.jpeg',

  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[400],
          centerTitle: true,
          title: Text('Image Gallery'),
        ),
        body: GridView.count(
          crossAxisCount: 2,
           mainAxisSpacing: 10.0, // Gap between rows
          crossAxisSpacing: 10.0, // Gap between columns
          padding: EdgeInsets.all(10.0), // Padding around the grid
          children: List.generate(imagePaths.length, (index) {
            return Image(
              image: AssetImage(imagePaths[index]),
            );
          }),
        ),
      ),
    );
  }
}
