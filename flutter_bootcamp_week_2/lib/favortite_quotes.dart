import 'package:flutter/material.dart';
import 'package:flutter_bootcamp_week_2/quotes.dart';

class FavoritePage extends StatefulWidget {
  @override
  _FavoritePageState createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Favorite Quotes"),
      ),
      body: ListView.builder(
          itemCount: Quotes.favQuotes.length,
          itemBuilder:(context,index){
            return Card(
              child: ListTile(
                title: Text(Quotes.favQuotes[index]),
                trailing: IconButton(icon: Icon(Icons.delete),
                    onPressed: (){
                      setState(() {
                        Quotes.favQuotes.remove(Quotes.favQuotes[index]);
                      });
                    }),
              ),
            );
          }),
    );
  }
}
