import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class TabletBodyContent extends StatelessWidget {
  SizingInformation size;
  TabletBodyContent({this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.screenSize.width / 1,
      child: Column(
        children: [
          _headerWidget(),
          _quickStatsWidget(),
        ],
      ),
    );
  }

  Widget _headerWidget() {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "DashBoard",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Welcome Back!",
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
                color: Colors.indigo,
                borderRadius: BorderRadius.all(Radius.circular(8))),
            child: Text(
              "Customise Blocks",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _quickStatsWidget() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Quick Stats",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 15,
          ),
          _row2by2Widget()

        ],
      ),
    );
  }

  Widget _row2by2Widget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _singleItemQuickStats(
              title: "Total Bookings",
              value: "28,345",
              width: size.screenSize.width / 3.5,
              icon: null,
              gradColorOne: Colors.blueAccent,
              gradColorTwo: Colors.blue,
            ),
            _singleItemQuickStats(
                title: "Pending Approval",
                value: "180",
                icon: null,
                width: size.screenSize.width / 3.5,
                textColor: Colors.red,
              gradColorOne: Colors.greenAccent,
              gradColorTwo: Colors.green,
            ),
          ],
        ),
        SizedBox(
          height: 8,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _singleItemQuickStats(
                title: "New Clients This Month",
                value: "810",
                icon: Icons.arrow_upward,
                iconColor: Colors.green,
                gradColorOne: Colors.pinkAccent,
                gradColorTwo: Colors.pink,
                width: size.screenSize.width / 3.5),
            _singleItemQuickStats(
                title: "Returning Clients",
                value: "20%",
                icon: Icons.arrow_downward,
                gradColorOne: Colors.orangeAccent,
                gradColorTwo: Colors.orange,
                width: size.screenSize.width / 3.5,
                iconColor: Colors.red),
          ],
        ),
      ],
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
