import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  final String name;
  final String email;

  const ProfileHeader({
    Key? key,
    required this.name,
    required this.email,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage("assets/images/Ellipse.png"),
          ),
          SizedBox(height: 6),
          Text(
            name.toString().toUpperCase(),
            textAlign: TextAlign.start,
            style: TextStyle(
                color: Colors.black, fontSize: 14, fontWeight: FontWeight.w300),
          ),
          // SizedBox(height: 6),
          // Text(
          //   '+62123456789',
          //   textAlign: TextAlign.start,
          //   style: TextStyle(
          //       fontStyle: FontStyle.italic,
          //       color: Colors.black,
          //       fontSize: 12,
          //       fontWeight: FontWeight.w400),
          // ),
          SizedBox(height: 6),
          Text(
            email,
            textAlign: TextAlign.start,
            style: TextStyle(
                fontStyle: FontStyle.italic,
                color: Colors.grey,
                fontSize: 12,
                fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
