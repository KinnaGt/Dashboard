const RootRoute = "/";

const OverviewPageDisplayName = "Overview";
const OverViewPageRoute = "/overview";

const DriversPageDisplayName = "Drivers";
const DriversPageRoute = "/drivers";

const ClientsPageDisplayName = "Clients";
const ClientsPageRoute = "/clients";

const AuthenticationPageDisplayName = "Log out";
const AuthenticationPageRoute = "/auth";

class MenuItem {
  final String name;
  final String route;

  MenuItem(this.name, this.route);
}

List<MenuItem> sideMenuItemRoutes = [
 MenuItem(OverviewPageDisplayName, OverViewPageRoute),
 MenuItem(DriversPageDisplayName, DriversPageRoute),
 MenuItem(ClientsPageDisplayName, ClientsPageRoute),
 MenuItem(AuthenticationPageDisplayName, AuthenticationPageRoute),
];