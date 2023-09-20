import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:flutter/material.dart';
import 'package:second_api_project/screens/LoginIn/login_screen.dart';
import 'package:second_api_project/screens/first_screen/controller.dart';
import 'package:second_api_project/screens/first_screen/product_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: login_screen(),
    );
  }
}


