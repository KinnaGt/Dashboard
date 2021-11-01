import 'package:dashboardapp/widgets/large_screen.dart';
import 'package:dashboardapp/widgets/small_screen.dart';
import 'package:flutter/material.dart';

import 'helpers/responsiveness.dart';

class SiteLayout extends StatelessWidget{
  const SiteLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
          elevation:0,
          backgroundColor: Colors.white,
        ),
        body: const ResponsiveWidget(largeScreen:LargeScreen(),smallScreen: SmallScreen(), mediumScreen: LargeScreen())
      
      );
  }

}