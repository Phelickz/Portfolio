library home_view;

import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:portfolio/core/ani.dart';
import 'package:portfolio/core/animation.dart';
import 'package:portfolio/core/services/res.dart';
import 'package:portfolio/core/services/res2.dart';
import 'package:portfolio/core/services/routes.dart';
import 'package:portfolio/core/services/utils.dart';
import 'package:portfolio/theme/colors.dart';
import 'package:portfolio/views/about_page/about_page_view.dart';
import 'package:portfolio/widgets/menu/menu_widget.dart';
import 'package:provider_architecture/provider_architecture.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter/material.dart';
import 'home_view_model.dart';

part 'home_mobile.dart';
part 'home_tablet.dart';
part 'home_desktop.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    HomeViewModel viewModel = HomeViewModel();
    return ViewModelProvider<HomeViewModel>.withConsumer(
      viewModel: viewModel,
      onModelReady: (viewModel) {
        // Do something once your viewModel is initialized
      },
      builder: (context, viewModel, child) {
        return ScreenTypeLayout(
          mobile: _HomeMobile(viewModel),
          desktop: _HomeDesktop(viewModel),
          tablet: _HomeTablet(viewModel),  
        );
      }
    );
  }
}