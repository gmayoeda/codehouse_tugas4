// import 'package:codehouse_tugas4/home.dart';
import 'package:codehouse_tugas4/signuppage.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'custom/bottomnav.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _secureText = true;
  String name = "", email = "", password = "";
  late SharedPreferences sharedPreferences;

  TextEditingController user = TextEditingController();
  TextEditingController pass = TextEditingController();

  void getPref() async {
    sharedPreferences = await SharedPreferences.getInstance();
    if (sharedPreferences.getString("name") == null) {
      name = "null";
      print(name);
    } else {
      setState(() {
        name = sharedPreferences.getString("name")!;
        email = sharedPreferences.getString("email")!;
        password = sharedPreferences.getString("password")!;
      });
      print(name);
      print(email);
      print(password);
    }
  }

  void Login() {
    if (user.text == name && pass.text == password) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => BottomNav()),
      );
    } else {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Alert'),
            content: Text(
              'Username atau Password tidak sesuai!',
              style: TextStyle(fontWeight: FontWeight.w400),
            ),
            actions: <Widget>[
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Close')),
            ],
          );
        },
      );
    }
  }

  showHide() {
    setState(() {
      _secureText = !_secureText;
    });
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
          padding: const EdgeInsets.fromLTRB(18, 40, 18, 34),
          child: Column(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Log in',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Sign In to continue',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    ),
                    SizedBox(height: 28),
                    Text(
                      'Username',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    ),
                    Container(
                      height: 45,
                      margin: new EdgeInsets.only(top: 8.0),
                      padding: EdgeInsets.symmetric(horizontal: 14),
                      decoration: BoxDecoration(
                        color: Color(0xFFA9BCCF).withOpacity(0.2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextFormField(
                        controller: user,
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                          hintText: 'Username',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Password',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    ),
                    Container(
                      height: 45,
                      margin: new EdgeInsets.only(top: 8.0),
                      padding: EdgeInsets.symmetric(horizontal: 14),
                      decoration: BoxDecoration(
                        color: Color(0xFFA9BCCF).withOpacity(0.2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextFormField(
                        controller: pass,
                        keyboardType: TextInputType.text,
                        obscureText: _secureText,
                        decoration: const InputDecoration(
                          hintText: 'Password',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    SizedBox(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: ElevatedButton(
                              onPressed: () {
                                Login();
                                // Navigator.pushAndRemoveUntil(
                                //   context,
                                //   MaterialPageRoute(
                                //     builder: (BuildContext context) =>
                                //         BottomNav(),
                                //   ),
                                //   (route) => false,
                                // );
                              },
                              style: ElevatedButton.styleFrom(
                                shape: new RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(10.0),
                                ),
                                minimumSize: Size(324.0, 45.0),
                              ),
                              child: Text("Log in",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500))),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account? ",
                      style: TextStyle(
                          color: Color(0xFF6A6A6A),
                          fontSize: 14,
                          fontWeight: FontWeight.w500)),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignupPage()));
                    },
                    child: Text("Sign up",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500)),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
