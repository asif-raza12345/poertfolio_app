import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:my_portfolio_app/profiles/dashboard.dart';
import 'package:my_portfolio_app/profiles/hobby.dart';
import 'package:my_portfolio_app/profiles/home.dart';
import 'package:my_portfolio_app/profiles/work.dart';
import 'package:my_portfolio_app/signup/register.dart';
import 'package:my_portfolio_app/signup/singup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(name: '/', page: () =>const  SingupScreen()),
        GetPage(name: '/LoginScreen', page: () =>const  LoginScreen()),
        GetPage(name: '/HomeScreen', page: () => const HomeScreen()),
        GetPage(name: '/DashboardScreen', page: () =>const  DashboardScreen()),
        GetPage(name: '/work', page: () => const work()),
        GetPage(name: '/Hobby', page: () => const Hobby()),
      ],
    );
  }
}



