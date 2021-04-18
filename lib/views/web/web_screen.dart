import 'package:admindashboard/views/web/widgets/body_content.dart';
import 'package:admindashboard/views/web/widgets/bottom_bar.dart';
import 'package:admindashboard/views/web/widgets/web_navbar.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class WebScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (_, size) {
        return Scaffold(
          body: Row(
            children: [
              WebNavbar(),
              Expanded(
                child: Stack(
                  children: [
                    Align(
                        alignment: Alignment.topCenter,
                        child: WebBodyContent(
                          size: size,
                        )),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 300,
                        child: BottomBar(),
                      ),
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
