import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  /*Product*/var product;
  DetailsScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Image.network(product.image , width: 100,),
          Text(product.title , style: TextStyle(fontWeight: FontWeight.bold),),
          SizedBox(height: 25,),
          Text(product.description)

        ],
      ),
    );
  }
}
