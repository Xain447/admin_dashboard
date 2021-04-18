import 'package:admindashboard/views/web/widgets/bottombar_column.dart';
import 'package:flutter/material.dart';

class BottomBarSmall extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      color: Colors.blueGrey[900],
      child: Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              BottomBarColumn(
                heading: 'ABOUT',
                s1: 'Contact Us',
                s2: 'About Us',
                s3: 'Careers',
              ),
              BottomBarColumn(
                heading: 'HELP',
                s1: 'Payment',
                s2: 'Cancellation',
                s3: 'FAQ',
              ),
              BottomBarColumn(
                heading: 'SOCIAL',
                s1: 'Twitter',
                s2: 'Facebook',
                s3: 'YouTube',
              ),
            ],
          ),
          Divider(
            color: Colors.blueGrey,
          ),
          SizedBox(height: 20),
          InfoText(
            type: 'Email',
            text: 'explore@gmail.com',
          ),
          SizedBox(height: 5),
          InfoText(
            type: 'Address',
            text: '128, Trymore Road, Delft, MN - 56124',
          ),
          SizedBox(height: 20),
          Divider(
            color: Colors.blueGrey,
          ),
          SizedBox(height: 20),
          Text(
            'Copyright © 2020 | EXPLORE',
            style: TextStyle(
              color: Colors.blueGrey.shade300,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}


class InfoText extends StatelessWidget {
  final String type;
  final String text;

  InfoText({@required this.type, @required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '$type: ',
          style: TextStyle(
            color: Colors.blueGrey.shade300,
            fontSize: 16,
          ),
        ),
        Flexible(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.blueGrey.shade100,
              fontSize: 16,
            ),
          ),
        )
      ],
    );
  }
}