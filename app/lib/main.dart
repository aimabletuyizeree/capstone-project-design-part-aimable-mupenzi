
import 'package:flutter/material.dart';
import 'registration.dart';
//import 'package:flutter/src/painting/image_provider.dart';
//import 'package:flutter/src/services/asset_bundle.dart';
void main() => runApp(MaterialApp(
home: HomePage(),

));

class HomePage extends StatefulWidget {
  const
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Padding(
        padding: EdgeInsets.fromLTRB(0.0, 210.0, 0.0, 0.0),
         child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children:<Widget> [
              Center(
              child:Image.asset('assets/Homepage.png',
              ),
            ),
              Divider(height: 40,
              color: Colors.white,),
            ElevatedButton(onPressed: () {
              Navigator.push( context,
                MaterialPageRoute(
                  builder: (context) =>  SecondScreen(),
                ),
              );
            },
              child: Text("GET STARTED"),
            )
          ],
        ),
      ),

    );
  }
}