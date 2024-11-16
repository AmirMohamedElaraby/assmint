class ProductModel{
  List products;
  bool status;

  ProductModel({required this.products,required this.status});

  factory ProductModel.fromJson(Map<String,dynamic>json)
  {
    return ProductModel(products: json['products'], status: json['status']);
  }
}