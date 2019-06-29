import 'package:flutter/material.dart';
import './profile.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UserId:160303108033'),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text('Profile',style: TextStyle(color: Colors.black,fontSize: 25.0)),
              leading: Icon(Icons.accessibility_new,color: Colors.indigo,size:25.0,),
            )
          ],
        ),
      ),
      body:
      Column(
        children: <Widget>[

          Center(

            child: Container(

              child: Text("WELCOME TO INDIAN NAVY",style: TextStyle(color: Colors.indigo,fontSize: 25.0)),


            ),

          ),
          new MaterialButton(
            child: Text('profile',style: TextStyle(fontSize: 15.0,color: Colors.white),),
              color: Colors.indigo,

              onPressed:(){
                Navigator.push(context,
                  new  MaterialPageRoute(builder: (context) => new Profile()),
                );
              })
        ],
      )


        );

  }
}
