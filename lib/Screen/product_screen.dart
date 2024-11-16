import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Provider/products_providers.dart';
import '../Widget/custom_product.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Products")),
      body: Consumer<ProductProvider>(
        builder: (context, objectProvider, child) {
          var objectModel = objectProvider?.productmodel;
          if (objectModel == null) {
            objectProvider.fetchData();
            return Center(child: CircularProgressIndicator());
          } else if (objectModel.products.isEmpty) {
            return Center(child: Text("No products available"));
          } else {
            return GridView.builder(
              padding: const EdgeInsets.all(10),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: objectModel.products.length,
              itemBuilder: (context, index) {
                return CustomProduct(
                  image: objectModel.products[index]['image'],
                  name: objectModel.products[index]['name'],
                  description: objectModel.products[index]['description'],
                );
              },
            );
          }
        },
      ),
    );
  }
}

class Product
{
  String image;
  String title;
  String description;

  Product({required this.image, required this.title, required this.description});
}
