import 'package:flutter/material.dart';

class OtherInfo extends StatelessWidget {
  const OtherInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Other Info",
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
            padding: const EdgeInsets.symmetric(horizontal: 15),
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'About This Apps',
                  style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 12,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  'Version 1.0.0',
                  style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 12,
                      fontWeight: FontWeight.w500),
                ),
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
            padding: const EdgeInsets.symmetric(horizontal: 15),
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
              children: [
                Text(
                  'Privacy Policy',
                  style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 12,
                      fontWeight: FontWeight.w500),
                ),
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
            padding: const EdgeInsets.symmetric(horizontal: 15),
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'FAQ',
                  style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 12,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 8),
        InkWell(
          focusColor: Colors.amberAccent,
          highlightColor: Colors.amberAccent,
          borderRadius: BorderRadius.circular(10),
          onTap: () {},
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Terms Of Service',
                  style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 12,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
