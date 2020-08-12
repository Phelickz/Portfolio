import 'package:portfolio/core/services/routes.dart';
import 'package:portfolio/views/about_page/about_page_view.dart';

import 'core/locator.dart';
import 'core/providers.dart';
import 'core/services/navigator_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'views/home/home_view.dart';
import 'package:flutter_web_ui/ui.dart' as ui;

void main() async {
  await LocatorInjector.setupLocator();
  // await ui.webOnlyInitializePlatform();
  runApp(MainApplication());
}

class MainApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: ProviderInjector.providers,
      child: MaterialApp(
        title: 'Awa Felix | Software Developer',
        onGenerateRoute: generateRoute,
        navigatorKey: navigatorKey,
        routes: {
          '/about': (context) => AboutPageView(),
          '/works': (context) => AboutPageView(),
        },
        initialRoute: HomeRoute,
      ),
    );
  }
}
