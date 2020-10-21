import 'dart:html';

import 'package:color_picker/HomePage.dart';
import 'package:color_picker/mobile_view/MobileHomePage.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter/material.dart';



class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      breakpoints: ScreenBreakpoints(desktop: 800, tablet: 650, watch: 250),
      desktop: HomePage(),
      mobile: MobileHomePage(),
    );
  }
}