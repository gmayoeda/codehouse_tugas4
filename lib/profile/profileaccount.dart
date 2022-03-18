import 'package:flutter/material.dart';

class ProfileAccount extends StatelessWidget {
  const ProfileAccount({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Account",
          style: TextStyle(
              color: Color(0xff5f6f8c),
              fontSize: 14,
              fontWeight: FontWeight.w500),
        ),
        SizedBox(height: 8),
        InkWell(
          highlightColor: Color(0xff5f6f8c),
          borderRadius: BorderRadius.circular(10),
          onTap: () {},
          child: Container(
            padding: const EdgeInsets.all(8),
            width: double.infinity,
            height: 45,
            decoration: BoxDecoration(
              color: const Color(0xFFFFFFFF).withOpacity(0.90),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.20),
                  blurRadius: 1.0,
                  offset: Offset(3.0, 3.0),
                ),
              ],
            ),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/icons/User Settings.png',
                        width: 30,
                        height: 30,
                        color: Colors.grey[600],
                      ),
                      SizedBox(width: 6),
                      Text(
                        'Account Setting',
                        style: TextStyle(
                            color: Colors.grey[700],
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.grey[400],
                )
              ],
            ),
          ),
        ),
        SizedBox(height: 8),
        InkWell(
          highlightColor: Color(0xff5f6f8c),
          borderRadius: BorderRadius.circular(10),
          onTap: () {},
          child: Container(
            padding: const EdgeInsets.all(8),
            width: double.infinity,
            height: 45,
            decoration: BoxDecoration(
              color: const Color(0xFFFFFFFF).withOpacity(0.90),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.20),
                  blurRadius: 1.0,
                  offset: Offset(3.0, 3.0),
                ),
              ],
            ),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/icons/Appointment Scheduling.png',
                        width: 30,
                        height: 30,
                        color: Colors.grey[600],
                      ),
                      SizedBox(width: 6),
                      Text(
                        'History',
                        style: TextStyle(
                            color: Colors.grey[700],
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.grey[400],
                )
              ],
            ),
          ),
        ),
        SizedBox(height: 8),
        InkWell(
          highlightColor: Color(0xff5f6f8c),
          borderRadius: BorderRadius.circular(10),
          onTap: () {},
          child: Container(
            padding: const EdgeInsets.all(8),
            width: double.infinity,
            height: 45,
            decoration: BoxDecoration(
              color: const Color(0xFFFFFFFF).withOpacity(0.80),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.20),
                  blurRadius: 1.0,
                  offset: Offset(3.0, 3.0),
                ),
              ],
            ),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/icons/Star.png',
                        width: 30,
                        height: 30,
                        color: Colors.grey[600],
                      ),
                      SizedBox(width: 6),
                      Text(
                        'Rate This Apps',
                        style: TextStyle(
                            color: Colors.grey[700],
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.grey[400],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
