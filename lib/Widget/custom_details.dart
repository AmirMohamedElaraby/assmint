import 'package:flutter/material.dart';

class CustomDetails extends StatelessWidget {

  String image;
  String title;
  String description;
  CustomDetails({super.key, required this.image, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(image),
        Text(title),
        Text(description),
      ],
    );
  }
}
