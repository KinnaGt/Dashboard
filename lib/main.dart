


import 'package:dashboardapp/controllers/navigation_controller.dart';
import 'package:dashboardapp/layout.dart';
import 'package:dashboardapp/pages/404/error_page.dart';
import 'package:dashboardapp/pages/authentication/authentication.dart';
import 'package:dashboardapp/routings/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants/style.dart';
import 'controllers/menu_controller.dart';


void main(){
  Get.put(MenuController()); // Controlador parte de GetX para mostrar Menu y Navegar
  Get.put(NavigationController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      
        initialRoute: AuthenticationPageRoute,
        unknownRoute: GetPage(name: "/not-found", page: () => PageNotFound()),
        getPages: [
          GetPage(name: RootRoute, page: () =>SiteLayout()),
          GetPage(name: AuthenticationPageRoute, page: () => const AuthenticationPage()),
        ],
        


        debugShowCheckedModeBanner: false,
        title: "Dashboard",
        theme:ThemeData(
          scaffoldBackgroundColor: light,
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
    );
  }

}