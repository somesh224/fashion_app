import 'package:fashion_app/Routes/routes.dart';
import 'package:fashion_app/Screens/cart.dart';
import 'package:fashion_app/Screens/otp.dart';
import 'package:fashion_app/Screens/phone.dart';
import 'package:fashion_app/Screens/settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); 

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent
      )
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.cart,
      routes: {
        MyRoutes.homeRoute :(context) => Login(),
        MyRoutes.phone :(context) => PhoneNumber(),
        MyRoutes.otp :(context) => Otp(),
        MyRoutes.cart :(context) => Mycart(),
        MyRoutes.setting :(context) => SettingsScreen(),
      },
    );
  }
}
