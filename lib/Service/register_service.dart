import 'package:dio/dio.dart';
import '../Model/register_model.dart';

class RegisterService{
  static Dio dio = Dio();

  static Future<RegistrationModel>register(name,email,password,phone)async
  {
    try
    {
      Response response = await dio.post("https://student.valuxapps.com/api/register",
          data: {
            "Name" : name,
            "Email" : email,
            "Phone" : phone,
            "Pass" : password,
          }
      );
      if(response.statusCode == 200)
      {
        print(response.data);
        return RegistrationModel.fromJson(response.data);
      }
      else
      {
        throw Exception("Service Error");
      }
    }
    catch(e)
    {
      throw Exception('Error $e');
    }
  }

  static Future<RegistrationModel>login(email,password)async
  {
    try
    {
      Response response = await dio.post('https://student.valuxapps.com/api/login',
          data: {
            "Email" : email,
            "PassWord" : password
          }
      );
      if(response.statusCode == 200)
      {
        print(response.data);
        return RegistrationModel.fromJson(response.data);
      }
      else
      {
        throw Exception("Service Error");
      }
    }
    catch(e)
    {
      throw Exception('Error : $e');
    }
  }
}