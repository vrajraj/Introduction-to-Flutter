import 'package:flutter/material.dart';
import 'package:flutter_bootcamp_week_2/favortite_quotes.dart';
import 'package:flutter_bootcamp_week_2/quotes.dart';


void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  )
);

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color color = Colors.black;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(onPressed: () {
            print("FAVORITE BUTTON PRESSED");
            Navigator.push(context,
                MaterialPageRoute(builder: (context)=>FavoritePage()));
          },icon: Icon(Icons.favorite,color: Colors.red,),)
        ],
        title: Text("Flutter Quotes"),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.favorite),
              title: Text("Favorite Quotes"),
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text("About Us"),
            )
          ],
        ),
      ),
      body: ListView.builder(
          itemCount: Quotes.quotes.length,
          itemBuilder: (context,index){
            return Card(
              child: ListTile(
                title: Text(Quotes.quotes[index]),
                trailing: IconButton(
                  onPressed: () {
                    setState(() {
                      Quotes.favQuotes.contains(Quotes.quotes[index])
                          ? Quotes.favQuotes.remove(Quotes.quotes[index])
                          : Quotes.favQuotes.add(Quotes.quotes[index]);
                    });
                  },
                  icon: Icon(Icons.favorite),
                  color: Quotes.favQuotes.contains(Quotes.quotes[index])
                      ?Colors.red
                      :Colors.black
                  ,),
              ),
            );
          }),
    );
  }
}
