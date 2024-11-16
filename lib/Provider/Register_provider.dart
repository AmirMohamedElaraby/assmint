import 'package:flutter/material.dart';
import 'package:untitled6/Model/register_model.dart';
import '../Service/register_service.dart';

class RegistrationProvider extends ChangeNotifier
{
  Future<bool> shgiup(email,password,name,phone) async
  {
    try
    {
      await RegisterService.register(name, email, password, phone);
      notifyListeners();
      return true;
    }
    catch(e)
    {
      print(e);
    }
    return false;
  }

  Future<bool> login(email,password)async
  {
    try
    {
      await RegisterService.login(email, password);
      notifyListeners();
      return true;
    }
    catch(e)
    {
      print(e);
    }
    return false;
  }
}