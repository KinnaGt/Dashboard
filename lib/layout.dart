import 'package:dashboardapp/widgets/large_screen.dart';
import 'package:dashboardapp/widgets/side_menu.dart';
import 'package:dashboardapp/widgets/small_screen.dart';
import 'package:dashboardapp/widgets/top_nav.dart';
import 'package:flutter/material.dart';

import 'helpers/responsiveness.dart';

class SiteLayout extends StatelessWidget{
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey(); 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        extendBodyBehindAppBar: true,
        appBar: topNavigationBar(context, scaffoldKey),
        drawer: Drawer(
        child: SideMenu(),
        ),
        body: const ResponsiveWidget(largeScreen:LargeScreen(),smallScreen: SmallScreen(), mediumScreen: LargeScreen())
      );
  }
}