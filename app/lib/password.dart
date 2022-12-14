import 'package:aimablemupenzi_card/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
//import 'package:flutter/material.dart';
class PasswordRecover extends StatefulWidget {
  const PasswordRecover({Key? key}) : super(key: key);

  @override
  State<PasswordRecover> createState() => _PasswordRecoverState();
}

class _PasswordRecoverState extends State<PasswordRecover> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.all(8.0),

                child: Column(
                  children: <Widget>[
                    Container(
                      child: SizedBox(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                          child: Center(
                              child: Image.asset('assets/logo.png')

                          ),
                        ),

                      ),
                    ),
                    Text("Reset Your Password",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 27),),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      height: 200,
                      width: 250,
                      color: Colors.white,
                      child: SafeArea(
                        child: ListView(
                          children: <Widget>[
                            Text(
                                "Enter Verified Email address And We Will Send a Password Reset Link",
                            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),),
                            SizedBox(
                              child: Text("Email",style: TextStyle(fontWeight: FontWeight.bold),),
                              height: 30,
                            ),
                            Padding(padding: EdgeInsets.all(3.0),
                              child: CupertinoTextField(
                                placeholder: "Enter Email to Reset",
                                keyboardType: TextInputType.text,
                                clearButtonMode: OverlayVisibilityMode.editing,
                                autocorrect: false,
                                prefix: Icon(CupertinoIcons.mail_solid),

                              ),

                            ),


                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 200,
                      width: 250,

                      margin: EdgeInsets.symmetric(vertical: 55),
                      child: Padding(padding: EdgeInsets.all(0),
                        child: Column(
                          children: <Widget>[

                            ElevatedButton(onPressed: () {}, child: Text(
                                "Send Password Email Link")),
                            Row(
                              children: [
                              TextButton(onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                              }, child: Text("Back To Login"))

                              ],
                            ),
                            Image.asset('assets/footer.png',),

                          ],

                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ],
          ),
        )

    );
  }
  }
