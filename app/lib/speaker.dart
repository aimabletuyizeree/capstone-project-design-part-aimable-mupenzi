import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class SpeakerPage extends StatefulWidget {
  const SpeakerPage({Key? key}) : super(key: key);

  @override
  State<SpeakerPage> createState() => _SpeakerPageState();
}

class _SpeakerPageState extends State<SpeakerPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

        backgroundColor: Colors.white,
        body:SingleChildScrollView(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.all(8.0),

                child: Column(
                  children:<Widget> [
                    SizedBox(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                        child: Center(
                          child: Column(
                            children:<Widget> [
                              Image.asset('assets/logo.png'),
                              Padding(padding: EdgeInsets.symmetric(vertical: 0),
                                child: CupertinoTextField(
                                  placeholder: "Search Meeting Here",
                                  autocorrect: false,
                                  keyboardType: TextInputType.text,
                                  clearButtonMode: OverlayVisibilityMode.editing,
                                  prefix: Icon(CupertinoIcons.search),

                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text("Speakers"
                              ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                              SizedBox(
                                height: 5,
                              ),

                            ],
                          ),
                        ),
                      ),

                    ),
                    Container(

                      child: Row(
                        children: [
                          Column(
                            children: [
                              Row(
                                children:<Widget> [
                                  Image.asset('assets/binance.png',
                                    height: 150,width: 130,),

                                  Padding(padding: EdgeInsets.symmetric(vertical: 0),

                                        child: Column(
                                          children:<Widget> [
                                            Row(
                                              children:<Widget> [

                                                Text("Names:"),
                                                Text("Changpeng Zhao"),
                                              ],
                                            ),
                                            Row(
                                              children:<Widget> [
                                                Text("Work:"),
                                                Text("Cheif Exective Secretary"),
                                              ],
                                            ),
                                            Row(
                                              children:<Widget> [
                                                Text("Institution:"),
                                                Text("Binance")


                                              ],
                                            ),
                                            Row(
                                              children:<Widget> [
                                                Icon(FontAwesomeIcons.facebook,
                                                color: Colors.blue,),
                                                Icon(FontAwesomeIcons.twitter,
                                                color: Colors.blue,),
                                                Icon(FontAwesomeIcons.github,),
                                                Icon(FontAwesomeIcons.instagram,
                                                color: Colors.red,),
                                              ],
                                            ),

                                          ],
                                        ),
                                      ),
                                  ]


                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      height: 40,
                      color: Colors.grey,
                    ),

                    Container(

                      child: Row(
                        children: [
                          Column(
                            children: [
                              Row(
                                children:<Widget> [
                                  Image.asset('assets/meet.png',
                                    height: 150,width: 130,),

                                  Padding(padding: EdgeInsets.symmetric(vertical: 0),
                                    child: Column(
                                      children:<Widget> [
                                        Row(
                                          children:<Widget> [

                                            Text("Names"),
                                            Text("Work:Samafara Joseph"),

                                          ],
                                        ),
                                        Row(
                                          children:<Widget> [
                                            Text("Work:"),
                                            Text("Cheif Exective Secretary"),
                                          ],
                                        ),
                                        Row(
                                          children:<Widget> [
                                              Text("Institution:"),
                                              Text("SOlVIT AFRICA")

                                          ],
                                        ),
                                        Row(
                                          children:<Widget> [
                                            Icon(FontAwesomeIcons.facebook,
                                              color: Colors.blue,),
                                            Icon(FontAwesomeIcons.twitter,
                                              color: Colors.blue,),
                                            Icon(FontAwesomeIcons.github,),
                                            Icon(FontAwesomeIcons.instagram,
                                              color: Colors.red,),
                                          ],
                                        ),

                                      ],
                                    ),

                                  ),

                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      height: 40,
                      color: Colors.grey,
                    ),
                    Container(

                      child: Row(
                        children: [
                          Column(
                            children: [
                              Row(
                                children:<Widget> [
                                  Image.asset('assets/meet.png',
                                    height: 150,width: 130,),

                                  Padding(padding: EdgeInsets.symmetric(vertical: 0),

                                        child: Column(
                                          children:<Widget> [
                                            Row(
                                              children:<Widget> [

                                                Text("Names:"),
                                                Text("Aimable Tuyizere"),
                                              ],
                                            ),
                                            Row(
                                              children:<Widget> [
                                                Text("Work:"),
                                                Text("Student"),
                                              ],
                                            ),
                                            Row(
                                              children:<Widget> [
                                                Text("Institution:"),
                                                Text("UR/CST")


                                              ],
                                            ),
                                            Row(
                                              children:<Widget> [
                                                Icon(FontAwesomeIcons.facebook,
                                                  color: Colors.blue,),
                                                Icon(FontAwesomeIcons.twitter,
                                                  color: Colors.blue,),
                                                Icon(FontAwesomeIcons.github,),
                                                Icon(FontAwesomeIcons.instagram,
                                                  color: Colors.red,),
                                              ],
                                            ),

                                          ],
                                        ),
                                      )


                                ],
                              ),
                            ],
                          ),
                        ],
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
