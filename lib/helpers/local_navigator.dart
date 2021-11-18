import 'package:dashboardapp/constants/controller.dart';
import 'package:dashboardapp/routings/router.dart';
import 'package:dashboardapp/routings/routes.dart';
import 'package:flutter/widgets.dart';

Navigator localNavigator() =>   Navigator(
      key: navigationController.navigatorKey,
      onGenerateRoute: generateRoute,
      initialRoute: OverViewPageRoute,
    );