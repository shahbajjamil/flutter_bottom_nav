import 'package:flutter/material.dart';

import '../Screen/account_page.dart';
import '../Screen/business_page.dart';
import '../Screen/home_page.dart';
import '../Screen/page_one.dart';
import '../Screen/page_two.dart';

enum TabItem { home, business, account }

/// TabNavigator class.
class TabNavigator extends StatelessWidget {
  const TabNavigator({
    super.key,
    required this.navigatorKey,
    required this.currentTab,
    required this.selectTab,
  });

  /// Navigator key.
  final GlobalKey<NavigatorState> navigatorKey;

  /// Currently open tab.
  final TabItem currentTab;

  /// Function to change selected tab.
  final Function selectTab;

  @override
  Widget build(BuildContext context) {
    return Navigator(
        key: navigatorKey,
        initialRoute: '/',
        onGenerateRoute: (RouteSettings routeSettings) {
          return _routeForRouteSettings(
              context: context, routeSettings: routeSettings);
        });
  }

  MaterialPageRoute<dynamic> _routeForRouteSettings(
      {required BuildContext context, required RouteSettings routeSettings}) {
    if (routeSettings.name == '/') {
      switch (currentTab) {
        case TabItem.home:
          return MaterialPageRoute<dynamic>(
              builder: (BuildContext context) => const HomePage(),
              settings: routeSettings);
        case TabItem.business:
          return MaterialPageRoute<dynamic>(
              builder: (BuildContext context) => const BusinessPage(),
              settings: routeSettings);
        case TabItem.account:
          return MaterialPageRoute<dynamic>(
              builder: (BuildContext context) => const AccountPage(),
              settings: routeSettings);
        default:
          break;
      }
    } else {
      switch (routeSettings.name) {
        case "pageOne":
          return MaterialPageRoute<dynamic>(
              builder: (BuildContext context) => const PageOne(),
              settings: routeSettings);
        case "pageTwo":
          return MaterialPageRoute<dynamic>(
              builder: (BuildContext context) => const PageTwo(),
              settings: routeSettings);
        default:
          break;
      }
    }
    return MaterialPageRoute<dynamic>(
        builder: (BuildContext context) => Scaffold(
              body: Center(
                child: Text('No route defined for ${routeSettings.name}'),
              ),
            ),
        settings: routeSettings);
  }
}
