import 'package:flutter/material.dart';
class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.indigo,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(

                child: Center(
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/Photo from Vrajraj Gohil.jpg"),radius: 80.0,
                  ),
                ),
              ),
              Text("Vrajraj Gohil",style: TextStyle(color: Colors.black,fontSize: 30.0),),
             Padding(padding: EdgeInsets.all(5.0)),
              Text("Parul University",style: TextStyle(color: Colors.white,fontSize: 20.0))

            ],
          ),
        )
        );


  }
}
