import 'package:flutter/material.dart';

class Albums extends StatelessWidget {
  const Albums({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 200,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/Rectangle 1-1.png"),
                fit: BoxFit.none),
            borderRadius: BorderRadius.circular(8),
            border: Border.all(width: 0, color: Colors.grey.withOpacity(0)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                blurRadius: 5.0,
                offset: Offset(0.0, 2.0),
              ),
            ],
          ),
          child: Stack(
            children: [
              Positioned(
                left: 8,
                bottom: 5,
                // right: 200,
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/Ellipse 2-1.png"),
                ),
              ),
              Positioned(
                left: 60,
                bottom: 20,
                // right: 200,
                child: Text("Derek Drymon",
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                        fontWeight: FontWeight.w400)),
              ),
              Positioned(
                left: 60,
                bottom: 8,
                // right: 200,
                child: Text("Nature Photographer",
                    style: TextStyle(
                        fontSize: 10,
                        fontStyle: FontStyle.italic,
                        color: Colors.white,
                        fontWeight: FontWeight.w300)),
              ),
              Positioned(
                right: 8,
                bottom: 10,
                // right: 200,
                child: Row(
                  children: [
                    Text(
                      "106",
                      style: TextStyle(
                          fontSize: 12,
                          fontStyle: FontStyle.italic,
                          color: Colors.white,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(width: 2),
                    Icon(
                      Icons.favorite,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 10),
        Container(
          height: 200,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/Rectangle 1.png"),
                fit: BoxFit.none),
            borderRadius: BorderRadius.circular(8),
            border: Border.all(width: 0, color: Colors.grey.withOpacity(0)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                blurRadius: 5.0,
                offset: Offset(0.0, 2.0),
              ),
            ],
          ),
          child: Stack(
            children: [
              Positioned(
                left: 8,
                bottom: 5,
                // right: 200,
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/Ellipse 2.png"),
                ),
              ),
              Positioned(
                left: 60,
                bottom: 20,
                // right: 200,
                child: Text("Dave Simmon",
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                        fontWeight: FontWeight.w400)),
              ),
              Positioned(
                left: 60,
                bottom: 8,
                // right: 200,
                child: Text("Freelancer",
                    style: TextStyle(
                        fontSize: 10,
                        fontStyle: FontStyle.italic,
                        color: Colors.white,
                        fontWeight: FontWeight.w300)),
              ),
              Positioned(
                right: 8,
                bottom: 10,
                // right: 200,
                child: Row(
                  children: [
                    Text(
                      "88",
                      style: TextStyle(
                          fontSize: 12,
                          fontStyle: FontStyle.italic,
                          color: Colors.white,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(width: 2),
                    Icon(
                      Icons.favorite,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
