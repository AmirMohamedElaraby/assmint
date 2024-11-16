import 'package:flutter/material.dart';

import '../Screen/details_screen.dart';
import '../Screen/product_screen.dart';

class CustomProduct extends StatelessWidget {

  String image;
  String name;
  String description;
  CustomProduct({super.key, required this.image, required this.name, required this.description});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 2,
      children: [
        Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                    MaterialPageRoute(
                        builder: (context) => DetailsScreen(
                          product: Product(image: image, title : name, description : description),
                      ),
                    ),
                  );
                },
                child: Image.network(image , width: 70, height: 50,),
              ),
              SizedBox(height: 40,),
              Text(name),
            ],
          ),
        ),
      ],
    );
  }
}
