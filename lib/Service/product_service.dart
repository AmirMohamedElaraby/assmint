import 'package:dio/dio.dart';
import '../Model/product_model.dart';

class ProductService{
  static Dio dio = Dio();

  static Future<ProductModel>getData() async
  {
    try
    {
      Response response = await dio.get('https://student.valuxapps.com/api/home');
      if(response.statusCode == 200)
      {
        return ProductModel.fromJson(response.data);
      }
      else
      {
        throw Exception("Error");
      }
    }
    catch(e)
    {
      throw Exception("Find $e");
    }
  }
}