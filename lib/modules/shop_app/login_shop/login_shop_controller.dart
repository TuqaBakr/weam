import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:weam/modules/shop_app/login_shop/login_shop.dart';
import 'package:weam/routes.dart';

abstract class loginController extends GetxController{
  loginShop();
  goToregisterShop();
  goToforgetPassword();
}

class loginShopControllerImp extends loginController {

  late TextEditingController email;
  late TextEditingController password;

  @override
  loginShop() {
  }

  @override
  goToregisterShop() {
      Get.toNamed(AppRoute.registerShop);
    }

  @override
  goToforgetPassword() {
    Get.toNamed(AppRoute.forgetPassword);
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }


}