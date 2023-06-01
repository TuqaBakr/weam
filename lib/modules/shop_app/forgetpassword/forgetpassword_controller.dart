import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:weam/modules/shop_app/login_shop/login_shop.dart';
import 'package:weam/routes.dart';

abstract class ForgetPasswordController extends GetxController{
  checkemail();
  goToVerfiyCode();
}

class  ForgetPasswordControllerImp extends ForgetPasswordController {

  late TextEditingController email;

  @override
  checkemail() {
  }

  @override
  goToVerfiyCode() {
    Get.offNamed(AppRoute.verfiycode);
  }

  @override
  void onInit() {
    email = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    super.dispose();
  }





}