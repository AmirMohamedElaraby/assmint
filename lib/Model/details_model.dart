class DetailsModels{
  List<dynamic> products;
  DetailsModels({required this.products});

  factory DetailsModels.fromJson(Map<String,dynamic>json)
  {
    return DetailsModels(products: json['products']);
  }
}