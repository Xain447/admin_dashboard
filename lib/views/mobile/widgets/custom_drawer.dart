import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25),
      width: 200,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        color: Colors.black54,
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(.2),
              blurRadius: 2,
              offset: Offset(0.5, 0.0),
              spreadRadius: 2)
        ],
      ),
      child: ListView(
        children: [
          Container(
            width: 150,
            height: 150,
            child: Image.asset("assets/black_logo.png"),
          ),
          SizedBox(height: 20,),
          Container(
            color: Colors.black12,
            child: ExpandablePanel(
              header: ListTile(
                title: Text(
                  'UI Elements',
                  style: TextStyle(fontSize: 22.0, color: Colors.blueGrey),
                ),
              ),
              expanded: Column(
                children: [
                  GestureDetector(
                    onTap: () {
//                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => UpcomingTraining()));
                    },
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(15),
                      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey[350],
                              offset: Offset(0.5, 1.0),
                              blurRadius: 8,
                            )
                          ]),
                      child: Center(
                        child: Text(
                          'Dashboard v1',
                          style:
                          TextStyle(fontSize: 18.0, color: Colors.blueGrey),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
//                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => ConfirmedTrainings()));
                    },
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(15),
                      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey[350],
                              offset: Offset(0.5, 1.0),
                              blurRadius: 8,
                            )
                          ]),
                      child: Center(
                        child: Text(
                          'Dashboard v2',
                          style:
                          TextStyle(fontSize: 18.0, color: Colors.blueGrey),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
//                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => PendingTrainings()));
                    },
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(15),
                      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey[350],
                              offset: Offset(0.5, 1.0),
                              blurRadius: 8,
                            )
                          ]),
                      child: Center(
                        child: Text(
                          'Dashboard v3',
                          style:
                          TextStyle(fontSize: 18.0, color: Colors.blueGrey),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              collapsed: Text(""),
            ),
          ),

          Container(
            color: Colors.black12,
            child: ExpandablePanel(
              header: ListTile(
                title: Text(
                  'UI Elements',
                  style: TextStyle(fontSize: 22.0, color: Colors.blueGrey),
                ),
              ),
              expanded: Column(
                children: [
                  GestureDetector(
                    onTap: () {
//                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => UpcomingTraining()));
                    },
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(15),
                      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey[350],
                              offset: Offset(0.5, 1.0),
                              blurRadius: 8,
                            )
                          ]),
                      child: Center(
                        child: Text(
                          'Dashboard v1',
                          style:
                          TextStyle(fontSize: 18.0, color: Colors.blueGrey),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
//                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => ConfirmedTrainings()));
                    },
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(15),
                      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey[350],
                              offset: Offset(0.5, 1.0),
                              blurRadius: 8,
                            )
                          ]),
                      child: Center(
                        child: Text(
                          'Dashboard v2',
                          style:
                          TextStyle(fontSize: 18.0, color: Colors.blueGrey),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
//                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => PendingTrainings()));
                    },
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(15),
                      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey[350],
                              offset: Offset(0.5, 1.0),
                              blurRadius: 8,
                            )
                          ]),
                      child: Center(
                        child: Text(
                          'Dashboard v3',
                          style:
                          TextStyle(fontSize: 18.0, color: Colors.blueGrey),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              collapsed: Text(""),
            ),
          ),


          Container(
            color: Colors.black12,
            child: ExpandablePanel(
              header: ListTile(
                title: Text(
                  'UI Elements',
                  style: TextStyle(fontSize: 22.0, color: Colors.blueGrey),
                ),
              ),
              expanded: Column(
                children: [
                  GestureDetector(
                    onTap: () {
//                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => UpcomingTraining()));
                    },
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(15),
                      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey[350],
                              offset: Offset(0.5, 1.0),
                              blurRadius: 8,
                            )
                          ]),
                      child: Center(
                        child: Text(
                          'Dashboard v1',
                          style:
                          TextStyle(fontSize: 18.0, color: Colors.blueGrey),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
//                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => ConfirmedTrainings()));
                    },
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(15),
                      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey[350],
                              offset: Offset(0.5, 1.0),
                              blurRadius: 8,
                            )
                          ]),
                      child: Center(
                        child: Text(
                          'Dashboard v2',
                          style:
                          TextStyle(fontSize: 18.0, color: Colors.blueGrey),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
//                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => PendingTrainings()));
                    },
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(15),
                      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey[350],
                              offset: Offset(0.5, 1.0),
                              blurRadius: 8,
                            )
                          ]),
                      child: Center(
                        child: Text(
                          'Dashboard v3',
                          style:
                          TextStyle(fontSize: 18.0, color: Colors.blueGrey),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              collapsed: Text(""),
            ),
          ),

          Container(
            color: Colors.black12,
            child: ExpandablePanel(
              header: ListTile(
                title: Text(
                  'UI Elements',
                  style: TextStyle(fontSize: 22.0, color: Colors.blueGrey),
                ),
              ),
              expanded: Column(
                children: [
                  GestureDetector(
                    onTap: () {
//                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => UpcomingTraining()));
                    },
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(15),
                      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey[350],
                              offset: Offset(0.5, 1.0),
                              blurRadius: 8,
                            )
                          ]),
                      child: Center(
                        child: Text(
                          'Dashboard v1',
                          style:
                          TextStyle(fontSize: 18.0, color: Colors.blueGrey),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
//                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => ConfirmedTrainings()));
                    },
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(15),
                      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey[350],
                              offset: Offset(0.5, 1.0),
                              blurRadius: 8,
                            )
                          ]),
                      child: Center(
                        child: Text(
                          'Dashboard v2',
                          style:
                          TextStyle(fontSize: 18.0, color: Colors.blueGrey),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
//                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => PendingTrainings()));
                    },
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(15),
                      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey[350],
                              offset: Offset(0.5, 1.0),
                              blurRadius: 8,
                            )
                          ]),
                      child: Center(
                        child: Text(
                          'Dashboard v3',
                          style:
                          TextStyle(fontSize: 18.0, color: Colors.blueGrey),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              collapsed: Text(""),
            ),
          ),

        ],
      ),
    );
  }
}
