import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:portfolio/views/about_page/about_page_view.dart';
import 'package:portfolio/views/home/home_view.dart';

const String HomeRoute = '/';
const String AboutRoute = '/about';
const String WorksRoute = '/works';
// const String EpisodeDetailsRoute = '/episode';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomeRoute:
      return MaterialPageRoute(builder: (context) => HomeView(), /*settings: RouteSettings(name: 'me')*/);
    case AboutRoute:
      return PageTransition(
        settings: settings,
                      duration: Duration(seconds: 4),
                        curve: Curves.easeOut,
                        type: PageTransitionType.fade,
                        alignment: Alignment.topCenter,
                        child: AboutPageView());
    case WorksRoute:
      return MaterialPageRoute(builder: (context) => AboutPageView());
    default:
      return MaterialPageRoute(
        builder: (context) => Scaffold(
          body: Center(
            child: Text('No path for ${settings.name}'),
          ),
        ),
      );
  }
}