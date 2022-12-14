import 'package:aimablemupenzi_card/login.dart';
import 'package:aimablemupenzi_card/speaker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

//import 'package:flutter/src/material/input_decorator.dart';
//import 'package:flutter/src/material/icons.dart';
//import 'package:flutter/material.dart';
class MeetingPage extends StatefulWidget {
  const MeetingPage({Key? key}) : super(key: key);

  @override
  State<MeetingPage> createState() => _MeetingPageState();
}

class _MeetingPageState extends State<MeetingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
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
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(left: 100),
                                  child: Row(
                                    children: [
                                      Image.asset('assets/logo.png'),
                                      TextButton(
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      LoginPage()));
                                        },
                                        child: Text("logout"),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 0),
                                  child: CupertinoTextField(
                                    placeholder: "Search Meeting Here",
                                    autocorrect: false,
                                    keyboardType: TextInputType.text,
                                    clearButtonMode:
                                        OverlayVisibilityMode.editing,
                                    prefix: Icon(CupertinoIcons.search),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Available Meeting",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Cryptocurrency and Web3",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                children: <Widget>[
                                  Image.asset(
                                    'assets/meet.png',
                                    height: 150,
                                    width: 130,
                                  ),
                                  Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 0),
                                      child: SingleChildScrollView(
                                        child: Column(
                                          children: <Widget>[
                                            Row(
                                              children: <Widget>[
                                                Icon(
                                                  Icons.mic_none,
                                                  size: 15,
                                                ),
                                                Text("Changpeng Zhao"),
                                                ElevatedButton(
                                                  onPressed: () {
                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: (context) =>
                                                                SpeakerPage()));
                                                  },
                                                  child: Text(
                                                    "More",
                                                    style: TextStyle(),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Icon(
                                                  Icons.calendar_today,
                                                  size: 15,
                                                ),
                                                Text("17/12/2022 09h:12h"),
                                              ],
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Icon(
                                                  Icons.location_on,
                                                  size: 15,
                                                ),
                                                Text("Marriot Hotel"),
                                              ],
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      vertical: 0),
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: <Widget>[
                                                      Text(
                                                        "Meeting Schedule",
                                                        style: TextStyle(
                                                          color: Colors.blue,
                                                        ),
                                                      ),
                                                      Text(
                                                          "14h-14:30h Introduction"),
                                                      Text(
                                                          "14:30'-16h Speaker Time"),
                                                      Text("16h-16:30 Break"),
                                                      Text(
                                                          "17:30'-18h Conclusion"),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      )),
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
                    SizedBox(
                      height: 20,
                      child: Center(
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SpeakerPage()));
                          },
                          child: Text("Join"),
                          style: ButtonStyle(),
                        ),
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Row(
                                children: <Widget>[
                                  Image.asset(
                                    'assets/meet.png',
                                    height: 150,
                                    width: 130,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(vertical: 0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: <Widget>[
                                            Icon(
                                              Icons.mic_none,
                                              size: 15,
                                            ),
                                            Text("Samafara Joseph"),
                                            Text("Aimable Tuyizere"),
                                            ElevatedButton(
                                              onPressed: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            SpeakerPage()));
                                              },
                                              child: Text("More"),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: <Widget>[
                                            Icon(
                                              Icons.calendar_today,
                                              size: 15,
                                            ),
                                            Text("19/12/2022 11h:03h"),
                                          ],
                                        ),
                                        Row(
                                          children: <Widget>[
                                            Icon(
                                              Icons.location_on,
                                              size: 15,
                                            ),
                                            Text("Serena Hotel"),
                                          ],
                                        ),
                                        Row(
                                          children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 0),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    "Meeting Schedule",
                                                    style: TextStyle(
                                                      color: Colors.blue,
                                                    ),
                                                  ),
                                                  Text("9-9:30h Introduction"),
                                                  Text(
                                                      "9:30'-11h Speaker Time"),
                                                  Text("11-11:30' Break"),
                                                  Text("11:30'-12h Conclusion"),
                                                ],
                                              ),
                                            ),
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
                    SizedBox(
                      height: 20,
                      child: Center(
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SpeakerPage()));
                          },
                          child: Text("Join"),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
