import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:weam/modules/shop_app/login_shop/login_shop.dart';
import 'package:weam/routes.dart';

abstract class registerController extends GetxController{
  registerShop();
  goTologinShop();
}

class registerShopControllerImp extends registerController {

  late TextEditingController email;
  late TextEditingController password;
  late TextEditingController phone;
  late TextEditingController username;

  @override
  registerShop() {}

  @override
  goTologinShop() {
    Get.offNamed(AppRoute.loginShop);
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    phone = TextEditingController();
    username = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    phone.dispose();
    username.dispose();
    super.dispose();
  }



}