import 'package:admindashboard/views/tablet/widgets/bottombar_small.dart';
import 'package:admindashboard/views/tablet/widgets/tablet_body_content.dart';
import 'package:admindashboard/views/tablet/widgets/tablet_navbar.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class TabletScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (_, size) {
        return Scaffold(
          body: Row(
            children: [
              TabletNavbar(),
              Expanded(
                child: Stack(
                  children: [
                    TabletBodyContent(size: size,),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 330,
                          child: BottomBarSmall(),),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

