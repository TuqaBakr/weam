// ignore: camel_case_types
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:weam/components/components.dart';
import 'package:weam/modules/shop_app/logo/logo.dart';
import 'package:weam/modules/shop_app/register/register_shop.dart';
import '../../../constant.dart';
import 'login_shop_controller.dart';


  class loginShop extends StatefulWidget {
    const loginShop({Key? key}) : super(key: key);
  @override
  _loginShopState createState() => _loginShopState();
}
//var formKey = GlobalKey<FormState>();

class _loginShopState extends State<loginShop> {
  @override
  Widget build(BuildContext context) {
    loginShopControllerImp controller = Get.put(loginShopControllerImp());
    return Scaffold(
      /*appBar: AppBar(
        elevation: 50,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25),
            bottomRight: Radius.circular(25),
          ),
        ),
        backgroundColor:secondBackColor,
      ),*/
      backgroundColor: thirdBackColor,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
          //  child: Form(
             // key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  logo(),
                 const SizedBox(
                    height: 40.0,
                  ),
                 const Text(
                    'Login',
                    style: TextStyle(
                      fontFamily: 'DeliciousHandrawn',
                      color: firstBackColor,
                      fontSize: 60.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 50.0,
                  ),
                  FormFeild(
                    labeltext: "Email",
                    iconData: Icons.email,
                    mycontroller:controller.email ,
                    hinttext: "Enter your Email",
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  FormFeild(
                    labeltext: "password",
                    iconData: Icons.remove_red_eye_outlined,
                    mycontroller:controller.password,
                    hinttext: "Enter your password",
                  ),
                  const SizedBox(
                    height: 100.0,
                  ),
                  InkWell(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children:const [
                         Text(
                          'Forget Password ?',
                          textAlign: TextAlign.end,
                        ),
                      ],
                    ),
                    onTap: ()
                    {
                      controller.goToforgetPassword();
                    },

                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  defaultButtom(
                    text: 'Login',
                    color: secondBackColor,
                    onPressed: () {},
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  defaultButtom(
                    text: 'ReGister',
                    color: forthBackColor,
                    onPressed: () {
                      controller.goToregisterShop();
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

