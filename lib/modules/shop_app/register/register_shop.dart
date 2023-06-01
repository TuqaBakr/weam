import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:weam/components/components.dart';
import 'package:weam/modules/shop_app/login_shop/login_shop.dart';
import 'package:weam/modules/shop_app/register/register_shop_controller.dart';

import '../../../constant.dart';

class registerShop extends StatefulWidget {
  const registerShop({Key? key}) : super(key: key);

  @override
  State<registerShop> createState() => _registerShopState();
}
class _registerShopState extends State<registerShop> {
  @override
  Widget build(BuildContext context) {
    registerShopControllerImp controller = Get.put(registerShopControllerImp());
    return Scaffold(
      backgroundColor: thirdBackColor,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                   const Text(
                      'Register',
                      style: TextStyle(
                        fontFamily: 'DeliciousHandrawn',
                        color: firstBackColor,
                        fontSize: 60.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 100.0,
                    ),
                    FormFeild(
                      labeltext: "Username",
                      iconData: Icons.person_outline,
                      mycontroller:controller.username ,
                      hinttext: "Enter your Username",
                    ),
                    const SizedBox(
                      height: 40.0,
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
                      labeltext: "Phone",
                      iconData: Icons.phone,
                      mycontroller:controller.phone ,
                      hinttext: "Enter your Phone",
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    FormFeild(
                      labeltext: "password",
                      iconData: Icons.remove_red_eye_outlined,
                      mycontroller:controller.password ,
                      hinttext: "Enter your password",
                    ),
                    const SizedBox(
                      height: 60.0,
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    defaultButtom(
                      text: 'ReGister',
                      color: secondBackColor,
                      onPressed: () {
                      },
                    ),
                    const SizedBox(
                      height: 20.0,
                    )
                    /*
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:const [
                        Text(" have an account ? ") ,
                        InkWell(
                          onTap: (){
                            controller.goTologinShop();
                          },
                          child: Text (" Login ",
                            style: TextStyle(
                                color: forthBackColor,
                                fontWeight: FontWeight.bold,
                        ),
                          ),
                        ),

                      ],
                    )
                  */
                  ],
                ),
              ),
            ),
          ),
       );
  }
}

