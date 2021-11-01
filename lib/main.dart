


import 'package:dashboardapp/layout.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'controllers/menu_controller.dart';


void main(){
  Get.put(MenuController()); // Controlador parte de GetX para mostrar Menu y Navegar
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Dashboard",
        theme:ThemeData(
          scaffoldBackgroundColor: Colors.white,
          textTheme: GoogleFonts.mulishTextTheme(
            Theme.of(context).textTheme
          ).apply(
            bodyColor: Colors.black
          ),
          pageTransitionsTheme: PageTransitionsTheme(builders: {
              TargetPlatform.iOS :FadeUpwardsPageTransitionsBuilder(),
              TargetPlatform.android : FadeUpwardsPageTransitionsBuilder(),
          }),
        primaryColor: Colors.blue
        ),
        home: SiteLayout()
    );
  }

}