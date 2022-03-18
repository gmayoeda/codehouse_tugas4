// import 'package:codehouse_tugas4/loginpage.dart';
import 'package:codehouse_tugas4/loginpage.dart';
import 'package:codehouse_tugas4/profile/otherinfo.dart';
import 'package:codehouse_tugas4/profile/profileheader.dart';
import 'package:codehouse_tugas4/profile/profileaccount.dart';
// import 'package:codehouse_tugas4/signuppage.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String name = "", email = "", password = "";
  late SharedPreferences sharedPreferences;

  void getPref() async {
    sharedPreferences = await SharedPreferences.getInstance();
    setState(() {
      name = sharedPreferences.getString("name")!;
      email = sharedPreferences.getString("email")!;
    });
    print(name);
    print(email);
  }

  void logout() {
    sharedPreferences.clear();
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LoginPage()),
    );
  }

  @override
  void initState() {
    getPref();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProfileHeader(name: name, email: email),
                  SizedBox(height: 36.5),
                  ProfileAccount(),
                  SizedBox(height: 18),
                  OtherInfo(),
                  SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: ElevatedButton.icon(
                          icon: Icon(Icons.logout_outlined),
                          label: Text("Log Out",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w500)),
                          onPressed: () {
                            logout();
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFFEC5F70),
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(10.0),
                            ),
                            minimumSize: Size(324.0, 45.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
