import 'package:flutter/material.dart';
import './home.dart';
void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  title: 'login page',
  home:Login() ,
));
class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> with SingleTickerProviderStateMixin {
  Animation<double> _iconAnimation;
  AnimationController _iconAnimationController;

  @override
  void initState() {
    super.initState();
    _iconAnimationController = new AnimationController(
        vsync: this, duration: new Duration(milliseconds: 500));
    _iconAnimation = new CurvedAnimation(
      parent: _iconAnimationController,
      curve: Curves.bounceOut,
    );
    _iconAnimation.addListener(() => this.setState(() {}));
    _iconAnimationController.forward();
  }

  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      body: new Stack(fit: StackFit.expand, children: <Widget>[


        new Image(
          image: new AssetImage("assets/logo.jpg"),
          fit: BoxFit.fill,
          colorBlendMode: BlendMode.darken,
          color: Colors.black87,
        ),
        new Theme(
          data: new ThemeData(
              brightness: Brightness.dark,
              inputDecorationTheme: new InputDecorationTheme(
                // hintStyle: new TextStyle(color: Colors.blue, fontSize: 20.0),
                labelStyle:
                new TextStyle(color: Colors.white, fontSize: 25.0),
              )),
          isMaterialAppTheme: true,
          child:
          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text("INDIAN NAVY",style: TextStyle(color: Colors.white,fontSize:30.0)),
              Padding(padding: const EdgeInsets.all(40.0),),
              new Image(image: AssetImage("assets/indian navy.jpg"),
                height: _iconAnimation.value * 100.0,
                width: _iconAnimation.value * 100.0,
              ),
              new Container(
                padding: const EdgeInsets.all(40.0),
                child: new Form(
                  autovalidate: true,
                  child: new Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      new TextFormField(
                        decoration: new InputDecoration(
                            labelText: "Enter Email", fillColor: Colors.white),
                        keyboardType: TextInputType.emailAddress,
                      ),
                      new TextFormField(
                        decoration: new InputDecoration(
                          labelText: "Enter Password",
                        ),
                        obscureText: true,
                        keyboardType: TextInputType.text,
                      ),
                      new Padding(
                        padding: const EdgeInsets.only(top: 60.0),
                      ),
                      new MaterialButton(
                        child: new Text("Login",
                          style: TextStyle(
                            color: Colors.indigo[900],
                            fontSize: 30.0,
                          ),
                        ),
                        height: 50.0,
                        minWidth: 150.0,
                        color: Colors.white,
                        textColor: Colors.white,
                        onPressed: () {
                          Navigator.pushReplacement(context,
                            new  MaterialPageRoute(builder: (context) => new Home()),
                          );

                        },
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ]),
    );
  }
}
