library about_page_view;

import 'package:portfolio/core/services/utils.dart';
import 'package:provider_architecture/provider_architecture.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter/material.dart';
import 'about_page_view_model.dart';
import 'dart:html' as html;

part 'about_page_mobile.dart';
part 'about_page_tablet.dart';
part 'about_page_desktop.dart';


class AboutPageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AboutPageViewModel viewModel = AboutPageViewModel();
    return ViewModelProvider<AboutPageViewModel>.withConsumer(
      viewModel: viewModel,
      onModelReady: (viewModel) {
        // Do something once your viewModel is initialized
      },
      builder: (context, viewModel, child) {
        return ScreenTypeLayout(
          mobile: _AboutPageMobile(viewModel),
          desktop: _AboutPageDesktop(viewModel),
          tablet: _AboutPageTablet(viewModel),  
        );
      }
    );
  }
}