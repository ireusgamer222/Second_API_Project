import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:second_api_project/screens/LoginIn/controller.dart';
import 'package:second_api_project/services/Login_Services.dart';

class login_screen extends StatelessWidget{

  final controller = Get.put(loginController());

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text("Log in",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
      ),
      body:
      Padding(padding: const EdgeInsets.all(18),
      child: Column(children: [
        const SizedBox(height: 20,),
        TextFormField(
          controller: controller.usernameInput,
          decoration: InputDecoration(label: Text("Username")),
        ),
        const SizedBox(height: 20,),
        TextFormField(
          controller:controller.passwordInput ,
          decoration: InputDecoration(label: Text("Password")),
          obscureText: true,

        ),

        const SizedBox(height: 20,),


        ElevatedButton(onPressed: () => controller.login(context), child: const Text("Log in",)),
      ],)
        ,),
    );
  }
}