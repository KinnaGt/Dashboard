import 'package:dashboardapp/pages/clients/clients.dart';
import 'package:dashboardapp/pages/drivers/drivers.dart';
import 'package:dashboardapp/pages/overview/overview.dart';
import 'package:dashboardapp/routings/routes.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings){ // take route settings and return the page route
  switch (settings.name) {
    case OverViewPageRoute:
      return _getPageRoute(OverViewPage());
    case DriversPageRoute:
      return _getPageRoute(DriversPage());
    case ClientsPageRoute:
      return _getPageRoute(ClientsPage());
    default:
      return _getPageRoute(OverViewPage());
  }
}


PageRoute _getPageRoute(Widget child){ // Return a page route
  return MaterialPageRoute(builder: (context) => child);
}