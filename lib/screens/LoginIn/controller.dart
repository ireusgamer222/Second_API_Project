import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../../services/Login_Services.dart';

class loginController extends GetxController{

  final usernameInput = TextEditingController();
  final passwordInput = TextEditingController();
  final services = LoginSevices();

  login(context) async{
    await services.login(context,usernameInput.text,passwordInput.text);
  }

}