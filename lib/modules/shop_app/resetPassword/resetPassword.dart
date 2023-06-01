import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:weam/components/components.dart';
import 'package:weam/modules/shop_app/login_shop/login_shop.dart';
import 'package:weam/modules/shop_app/register/register_shop_controller.dart';
import 'package:weam/modules/shop_app/resetPassword/resetPassword_controller.dart';

import '../../../constant.dart';

class resetPassword extends StatefulWidget {
  const resetPassword({Key? key}) : super(key: key);

  @override
  State<resetPassword> createState() => _resetPasswordState();
}

class _resetPasswordState extends State<resetPassword> {
  @override
  Widget build(BuildContext context) {
    resetPasswordControllerImp controller = Get.put(resetPasswordControllerImp());
    return Scaffold(
      backgroundColor: thirdBackColor,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  ' New Password ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'DeliciousHandrawn',
                    color: firstBackColor,
                    fontSize: 60.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
               Text(
                   'Please enter the new password',
                 style: TextStyle(
                   color: secondBackColor,
                 ),
               ),
                SizedBox(
                  height: 80.0,
                ),
                FormFeild(
                  labeltext: "Email",
                  iconData: Icons.remove_red_eye_sharp,
                  mycontroller:controller.password ,
                  hinttext: "Enter your Password",
                ),
                SizedBox(
                  height: 40.0,
                ),
                FormFeild(
                  labeltext: "Email",
                  iconData: Icons.remove_red_eye_sharp,
                  mycontroller:controller.repassword ,
                  hinttext: " Re Enter your Password",
                ),
                SizedBox(
                  height: 80.0,
                ),
                defaultButtom(
                  text: 'Save',
                  color: forthBackColor,
                  onPressed: () {
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

