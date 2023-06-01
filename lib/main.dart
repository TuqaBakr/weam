import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:weam/lucalization/changelocal.dart';
import 'package:weam/modules/profile/profile.dart';
import 'package:image_picker/image_picker.dart';
import 'package:weam/routes.dart';
import 'package:weam/services/srevices.dart';
import 'constant.dart';
import 'lucalization/translation.dart';
import 'modules/shop_app/changeLang/changeLang.dart';
import 'modules/shop_app/on_boarding/on_boarding_screen.dart';
import 'dart:io';

void main() async {
  WidgetsFlutterBinding.ensureInitialized() ;
  await initialServices() ;
  runApp( MyApp());
}

class MyApp extends StatelessWidget
{
  late File image;
  final imagepicker = ImagePicker();

  uploadImage() async{
    var pickedImage = await imagepicker.getImage(source: ImageSource.camera);

  }

  @override
  Widget build(BuildContext context)
  {
    Get.put(LocaleController()) ;
    LocaleController controller = Get.find() ;
    return GetMaterialApp(
      translations: MyTranslation() ,
      debugShowCheckedModeBanner: false,
        locale: controller.language,
      home:  Language(),
      routes: routes,
    );
  }

}