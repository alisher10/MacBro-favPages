import 'package:flutter/material.dart';
import 'package:hive_db/FavoritePage/favorite_page.dart';
import 'package:hive_db/LoginPages/login_phone_page.dart';
import 'package:hive_db/MainPage/main_page.dart';
import 'package:hive_db/ProfilePage/my_profile_page.dart';
import 'package:hive_db/RegistrationPage/registration_page.dart';
import 'package:hive_db/WelcomePage/welcome_page.dart';
import '../LoginPages/login_phone_page2.dart';
import '../MainPage/main_page.dart';
import '../WelcomePage/welcome_page.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive_db/Models/price_model.dart';
import 'package:hive_db/Models/product_model.dart';


void main() async{
  await GetStorage.init();
  await Hive.initFlutter();
  Hive.registerAdapter(PriceAdapter());

  Hive.registerAdapter(ProductModelAdapter());

  await Hive.openBox<ProductModel>('favorites_box');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => MyApp()),
        GetPage(name: '/welcome-page', page: () => WelcomePage()),
        GetPage(name: '/login-phone-page', page: () => LoginPhonePage()),
        GetPage(name: '/login-phone-page2', page: () => LoginPhonePage2()),
        GetPage(name: '/registration-page', page: () => RegistrationPage()),
        GetPage(name: '/main-page', page: () => MainPage()),
        GetPage(name: '/my-profile-page', page: () => MyProfilePage()),
        GetPage(name: '/favorite_page', page: () => FavoritePage()),
        // Dynamic route
      ],
      home: WelcomePage(),
    );
  }
}

