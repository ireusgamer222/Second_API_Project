import'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:second_api_project/screens/cart_screen/cart_screen.dart';

class LoginSevices{

  final url = "https://dummyjson.com/auth/login";

  login(context,String? username ,String? password) async{
    final Header = {'Content-Type':'application/json'};
    final Body = {'username':username,'password':password};
    final response = await http.post(Uri.parse(url),headers: Header,body: jsonEncode(Body) );

    if(response.statusCode == 200){
      Get.off(CartPage());
    }
    else{
      showModalBottomSheet(
          context: context,
          builder: (BuildContext context) {
            return Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'Login Error',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Text('${response.body}'),
                  const SizedBox(height: 16.0),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context); // Dismiss the bottom sheet
                    },
                    child: const Text('OK'),
                  ),
                ],
              ),
            );
          });
    }


  }

}