import 'package:flutter/material.dart';
import 'package:space_app/screens/home.dart';
import 'package:space_app/screens/login.dart';
import 'package:space_app/screens/plant_details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        Login.routeName: (_) => Login(),
        Home.routeName: (_) => Home(),
        PlantDetails.routeName: (_) => PlantDetails()
      },
      initialRoute: Login.routeName,
    );
  }
}
