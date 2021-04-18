import 'package:admindashboard/views/mobile/mobile_screen.dart';
import 'package:admindashboard/views/tablet/tablet_screen.dart';
import 'package:admindashboard/views/web/web_screen.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, size) {
        if(size.isDesktop){
          return WebScreen();
        }

        if(size.isTablet){
          return TabletScreen();
        }

        if(size.isMobile){
          return MobileScreen();
        }
      },
    );
  }
}


