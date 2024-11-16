import 'package:flutter/material.dart';
import 'package:untitled6/Service/product_service.dart';
import '../Model/product_model.dart';
import '../Service/register_service.dart';

class ProductProvider extends ChangeNotifier{
  ProductModel? productmodel;

  Future<void> signup(name, password, email, phone)async
  {
    try
    {
      var response = await RegisterService.register(name, email, password, phone);
      notifyListeners();
    }
    catch(e)
    {
      print('Registration Error : $e');
    }
  }

  Future<void> login(email,password)async
  {
    try
    {
      var response = await RegisterService.login(email, password);
    }
    catch(e)
    {
      print('Registration Error : $e');
    }
  }
  Future<void> fetchData() async
  {
    try
    {
      productmodel = await ProductService.getData();
      notifyListeners();
    }
    catch (e)
    {
      print('Fetch Data Error: $e');
    }
  }
}