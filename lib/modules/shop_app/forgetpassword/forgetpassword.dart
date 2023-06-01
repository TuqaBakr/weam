import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:weam/components/components.dart';
import 'package:weam/modules/shop_app/login_shop/login_shop.dart';
import 'package:weam/modules/shop_app/register/register_shop_controller.dart';

import '../../../constant.dart';
import 'forgetpassword_controller.dart';

class forgetPassword extends StatefulWidget {
  const forgetPassword({Key? key}) : super(key: key);

  @override
  State<forgetPassword> createState() => _forgetPasswordState();
}
class _forgetPasswordState extends State<forgetPassword> {
  @override
  Widget build(BuildContext context) {
    ForgetPasswordControllerImp controller = Get.put(ForgetPasswordControllerImp());
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
                  'Forget Password !! ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'DeliciousHandrawn',
                    color: firstBackColor,
                    fontSize: 60.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 100.0,
                ),
                FormFeild(
                  labeltext: "Email",
                  iconData: Icons.email,
                  mycontroller:controller.email ,
                  hinttext: "Enter your Email",
                ),
                SizedBox(
                  height: 80.0,
                ),
                defaultButtom(
                  text: 'Check',
                  color: forthBackColor,
                  onPressed: () {
                    controller.goToVerfiyCode();
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

