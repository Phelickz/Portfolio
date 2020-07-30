library menu_widget;

import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:portfolio/core/services/res.dart';
import 'package:portfolio/core/services/res2.dart';
import 'package:portfolio/views/about_page/about_page_view.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter/material.dart';

part 'menu_mobile.dart';
part 'menu_tablet.dart';
part 'menu_desktop.dart';

class MenuWidget extends StatelessWidget {
  final GestureTapCallback onTap;

  const MenuWidget({Key key, this.onTap}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
        mobile: _MenuMobile(onTap: onTap,),
        desktop: _MenuDesktop(),
        tablet: _MenuTablet(),
    );
  }
}