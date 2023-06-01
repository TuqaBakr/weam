import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:weam/services/srevices.dart';

class LocaleController extends GetxController{

  Locale? language ;
  
  MyServices myServices = Get.find() ;

  changeLang(String langcode){
    Locale locale = Locale(langcode) ;
    Get.updateLocale(locale) ;
    myServices.sharedPreferances.setString("lang", langcode) ;
  }


  @override
  void onInit(){
    String? sharedPrefLang = myServices.sharedPreferances.getString("lang") ;
    if(sharedPrefLang == "ar"){
      language = const Locale("ar") ;
    }
    else if(sharedPrefLang == "en"){
      language = const Locale("en") ;
    }
    else{
      language = Locale(Get.deviceLocale!.languageCode) ;
    }
  }
}