import 'package:aimablemupenzi_card/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: CupertinoPageScaffold(
            child: SafeArea(
              child: Form(
                autovalidateMode: AutovalidateMode.always,
                onChanged: () {
                  Form.of(primaryFocus!.context!)?.save();
                },
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        children: <Widget>[
                          Container(
                            child: SizedBox(
                              child: Container(
                                margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                                child: Center(
                                    child: Image.asset('assets/logo.png')),
                              ),
                            ),
                          ),
                          Text(
                            "Create Account",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 27),
                          ),
                          Container(
                            height: 300,
                            width: 250,
                            color: Colors.white,
                            child: SafeArea(
                              child: ListView(
                                children: <Widget>[
                                  Text("Names"),
                                  Padding(
                                    padding: EdgeInsets.all(3.0),
                                    child: CupertinoTextFormFieldRow(
                                      placeholder: "Enter Your Names",
                                      keyboardType: TextInputType.text,
                                      autocorrect: false,
                                      prefix: Icon(CupertinoIcons.person),
                                      validator: (String? value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Required';
                                        }
                                      },
                                    ),
                                  ),
                                  Text("Phone"),
                                  Padding(
                                    padding: EdgeInsets.all(3),
                                    child: CupertinoTextFormFieldRow(
                                      placeholder: "Enter Phone Number",
                                      autocorrect: false,
                                      keyboardType: TextInputType.number,
                                      prefix: Icon(CupertinoIcons.phone),
                                      validator: (String? value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Required';
                                        }
                                      },
                                    ),
                                  ),
                                  Text("Email"),
                                  Padding(
                                    padding: EdgeInsets.all(3),
                                    child: CupertinoTextFormFieldRow(
                                      placeholder: "Enter Your Email",
                                      autocorrect: false,
                                      keyboardType: TextInputType.text,
                                      //clearButtonMode: OverlayVisibilityMode.editing,
                                      prefix: Icon(CupertinoIcons.mail_solid),
                                      validator: (String? value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Required';
                                        }
                                      },
                                    ),
                                  ),
                                  Text("Password"),
                                  Padding(
                                    padding: EdgeInsets.all(3),
                                    child: CupertinoTextFormFieldRow(
                                      placeholder: "Enter Password",
                                      autocorrect: false,
                                      keyboardType: TextInputType.text,
                                      // clearButtonMode: OverlayVisibilityMode.editing,
                                      obscureText: true,
                                      prefix:
                                          Icon(CupertinoIcons.padlock_solid),
                                      validator: (String? value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Required';
                                        }
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(3),
                                    child: CupertinoTextFormFieldRow(
                                      placeholder: "Confirm Password",
                                      autocorrect: false,
                                      keyboardType: TextInputType.text,
                                      //clearButtonMode: OverlayVisibilityMode.editing,
                                      obscureText: true,
                                      prefix:
                                          Icon(CupertinoIcons.padlock_solid),
                                      validator: (String? value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Required';
                                        }
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: 200,
                            width: 250,
                            margin: EdgeInsets.symmetric(vertical: 10),
                            child: Padding(
                              padding: EdgeInsets.all(0),
                              child: Column(
                                children: <Widget>[
                                  ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  LoginPage()),
                                        );
                                      },
                                      child: Text("Register")),
                                  Row(
                                    children: [
                                      Text("Already Have Acccount"),
                                      TextButton(
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        LoginPage()));
                                          },
                                          child: Text("Login"))
                                    ],
                                  ),
                                  Image.asset(
                                    'assets/footer.png',
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
