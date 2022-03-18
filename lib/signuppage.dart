import 'package:codehouse_tugas4/loginpage.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  bool _secureText = true;

  GlobalKey<FormState> formKey = new GlobalKey<FormState>();

  TextEditingController namaController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  void savePref() async {
    if (namaController.text == "" ||
        emailController.text == "" ||
        passController.text == "") {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Alert'),
            content: Text(
              'Cek kembali inputan!',
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
    } else {
      SharedPreferences preferences = await SharedPreferences.getInstance();
      preferences.setString("name", namaController.text);
      preferences.setString("email", emailController.text);
      preferences.setString("password", passController.text);
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginPage()),
      );
    }
  }

  showHide() {
    setState(() {
      _secureText = !_secureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.fromLTRB(18, 40, 18, 34),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                Expanded(
                  child: ListView(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              InkWell(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Icon(Icons.arrow_back_ios)),
                              Text(
                                'Sign up',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Register to create an account',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w400),
                          ),
                          SizedBox(height: 28),
                          Text(
                            'Name',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w400),
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
                              controller: namaController,
                              keyboardType: TextInputType.text,
                              decoration: const InputDecoration(
                                hintText: 'Username',
                                border: InputBorder.none,
                              ),
                              // validator: (value) {
                              //   if (value!.isEmpty) {
                              //     return "Username harus diisi";
                              //   }
                              //   return null;
                              // },
                            ),
                          ),
                          SizedBox(height: 16),
                          Text(
                            'Email',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w400),
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
                              controller: emailController,
                              keyboardType: TextInputType.emailAddress,
                              decoration: const InputDecoration(
                                hintText: 'Email address',
                                border: InputBorder.none,
                              ),
                              // validator: (value) {
                              //   if (value!.isEmpty) {
                              //     return "Email harus diisi";
                              //   }
                              //   return null;
                              // },
                            ),
                          ),
                          SizedBox(height: 16),
                          Text(
                            'Password',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w400),
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
                              controller: passController,
                              keyboardType: TextInputType.text,
                              obscureText: _secureText,
                              decoration: const InputDecoration(
                                hintText: 'Password',
                                border: InputBorder.none,
                              ),
                              // validator: (value) {
                              //   if (value!.isEmpty) {
                              //     return "Password harus diisi";
                              //   }
                              //   return null;
                              // },
                            ),
                          ),
                          SizedBox(height: 40),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: ElevatedButton(
                                    onPressed: () {
                                      savePref();
                                    },
                                    style: ElevatedButton.styleFrom(
                                      shape: new RoundedRectangleBorder(
                                        borderRadius:
                                            new BorderRadius.circular(10.0),
                                      ),
                                      minimumSize: Size(324.0, 45.0),
                                    ),
                                    child: Text("Sign up",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500))),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                        ],
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an account? ",
                        style: TextStyle(
                            color: Color(0xFF6A6A6A),
                            fontSize: 14,
                            fontWeight: FontWeight.w500)),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()));
                        // Navigator.pop(context);
                      },
                      child: Text("Log in",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500)),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
