import 'package:admindashboard/views/mobile/widgets/custom_drawer.dart';
import 'package:admindashboard/views/tablet/widgets/bottombar_small.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';


class MobileScreen extends StatelessWidget {
  final scaffoldKey=GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (_,sizingInformation){
        return Scaffold(
          key: scaffoldKey,
          drawer: CustomDrawer(),
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(200),
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.bottomLeft,
//        stops: [0.1, 0.5, 0.7, 0.9],
                  colors: [
                    Colors.pink,
                    Colors.orangeAccent
                  ],
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(onTap: (){scaffoldKey.currentState.openDrawer();},child: Icon(Icons.menu)),
                  Text("Dashboard"),
                  Icon(Icons.more_vert),
                ],
              ),
            ),
//            leading: GestureDetector(onTap: (){scaffoldKey.currentState.openDrawer();},child: Icon(Icons.menu)),
//            title: Text("Dashboard"),
//            actions: [
//              Icon(Icons.more_vert),
//            ],
          ),
          body: Stack(
            children: [
              Align(
                alignment: Alignment.topCenter,
                  child: _row2by2Widget(sizingInformation)),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 330,
                  child: BottomBarSmall(),),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _row2by2Widget(SizingInformation sizingInformation) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: _singleItemQuickStats(
                  title: "Total Bookings",
                  value: "28,345",
                  gradColorOne: Colors.blueAccent,
                  gradColorTwo: Colors.blue,
                  width: sizingInformation.screenSize.width / 2.6,
                  icon: null,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: _singleItemQuickStats(
                    title: "Pending Approval",
                    value: "180",
                    icon: null,
                    gradColorOne: Colors.greenAccent,
                    gradColorTwo: Colors.green,
                    width: sizingInformation.screenSize.width / 2.6,
                    textColor: Colors.red),
              ),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: _singleItemQuickStats(
                    title: "New Clients This Month",
                    value: "810",
                    icon: Icons.arrow_upward,
                    iconColor: Colors.green,
                    gradColorOne: Colors.pinkAccent,
                    gradColorTwo: Colors.pink,
                    width: sizingInformation.screenSize.width / 2.6),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: _singleItemQuickStats(
                    title: "Returning Clients",
                    value: "20%",
                    icon: Icons.arrow_downward,
                    gradColorOne: Colors.orangeAccent,
                    gradColorTwo: Colors.orange,
                    width: sizingInformation.screenSize.width / 2.6,
                    iconColor: Colors.red),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _singleItemQuickStats({String title, Color gradColorOne, Color gradColorTwo, Color textColor = Colors.black, String value,
    IconData icon, double width, double height, Color iconColor}) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.symmetric(horizontal: 28, vertical: 18),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.bottomLeft,
//        stops: [0.1, 0.5, 0.7, 0.9],
          colors: [
            gradColorOne,
            gradColorTwo
          ],
        ),
        borderRadius: BorderRadius.all(Radius.circular(8)),
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(.2),
              spreadRadius: 2,
              offset: Offset(0.5, 0.5),
              blurRadius: 2),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(color: textColor, fontSize: 18),
          ),
          SizedBox(
            height: 10,
          ),
          icon == null
              ? Text(
            value,
            style: TextStyle(
                fontSize: 24,
                color: Colors.black,
                fontWeight: FontWeight.bold),
          )
              : Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                value,
                style: TextStyle(
                  fontSize: 28,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Icon(
                icon,
                color: iconColor,
              )
            ],
          ),
        ],
      ),
    );
  }
}

