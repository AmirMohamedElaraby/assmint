import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled6/Provider/Register_provider.dart';
import 'package:untitled6/Provider/products_providers.dart';

import 'Screen/login_screen.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => RegistrationProvider()),
          ChangeNotifierProvider(create: (context) => ProductProvider()),
        ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Products',
        home: LoginScreen(),
      ),
    );
  }
}
