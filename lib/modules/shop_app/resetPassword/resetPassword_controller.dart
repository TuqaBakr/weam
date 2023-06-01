import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:weam/modules/shop_app/login_shop/login_shop.dart';
import 'package:weam/modules/shop_app/resetPassword/resetPassword.dart';
import 'package:weam/routes.dart';

abstract class resetPasswordController extends GetxController{
  resetPassword();
  goTosuccessReset();
}

class  resetPasswordControllerImp extends resetPasswordController {

  late TextEditingController password;
  late TextEditingController repassword;

  @override
  resetPassword() {
  }

  @override
  goTosuccessReset() {
    Get.offNamed(AppRoute.successReset);
  }

  @override
  void onInit() {
    password = TextEditingController();
    repassword = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    password.dispose();
    repassword.dispose();
    super.dispose();
  }

}