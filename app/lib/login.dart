import 'package:aimable_card/meeting.dart';
import 'package:aimable_card/password.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
//import 'package:flutter/material.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:SingleChildScrollView(
      child: CupertinoPageScaffold(
        child: SafeArea(
          child: Form(
            autovalidateMode: AutovalidateMode.always,
           onChanged: (){
             Form.of(primaryFocus!.context!)?.save();
           },
            child: Column(
              children: [
                Padding(padding: EdgeInsets.all(8.0),

                  child: Column(
                    children:<Widget> [

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
                      Text("Login Page",
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 27),),
                      Container(
                             margin: EdgeInsets.symmetric(vertical: 10),
                        height: 220,
                        width: 250,
                        color: Colors.white,
                        child: SafeArea(
                          child: ListView(
                            children:<Widget> [
                              Text("Email"),
                              Padding(padding: EdgeInsets.all(3.0),
                                child: CupertinoTextFormFieldRow(
                                  placeholder: "Enter Email",
                                  keyboardType: TextInputType.text,
                                  //clearButtonMode: OverlayVisibilityMode.editing,
                                  autocorrect: false,
                                  prefix: Icon(CupertinoIcons.mail_solid),
                                  validator: (String? value){
                                    if(value==null|| value.isEmpty)
                                      {
                                        return'Email Required';
                                      }
                                  },

                                ),

                              ),
                              Divider(
                                height: 40,
                                color: Colors.black,
                              ),

                              SizedBox(
                                height: 15,
                              ),
                              Text("Password"),
                              Padding(padding: EdgeInsets.all(3),

                                child: CupertinoTextFormFieldRow(

                                  placeholder: "Enter Your Password",
                                  autocorrect: false,
                                  keyboardType: TextInputType.text,
                                 // clearButtonMode: OverlayVisibilityMode.editing,
                                  obscureText: true,
                                  prefix: Icon(CupertinoIcons.padlock_solid),
                                  validator: (String? value){
                                    if(value==null||value.isEmpty)
                                      {
                                        return'Password Required';
                                      }
                                  },
                                ),
                              ),
                              SizedBox(
                                height:5,
                              ),
                              Text("Email you use must be the same with one used in account creation.",
                              style: TextStyle(color: Colors.blue),),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 200,
                        width: 250,

                        margin: EdgeInsets.symmetric(vertical: 70),
                        child: Padding(padding: EdgeInsets.all(0),
                          child:Column(
                            children: <Widget>[

                              ElevatedButton(onPressed: (){
                                Navigator.push(
                                  context,MaterialPageRoute(builder: (context)=>MeetingPage()),
                                );
                              }, child:Text("Login")),
                              Row(
                                children: [
                                  TextButton(onPressed: (){
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context)=>PasswordRecover())
                                    );
                                  },
                                      child:Text("Forgot Password"),
                                  ),


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
          ),
        ),
      ),
      )

    );

  }
}