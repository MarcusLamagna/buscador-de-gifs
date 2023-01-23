import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
//Criando página para apresentar um único gif
class GifPage extends StatelessWidget {

  final Map _gifData;

  //Construtor
  GifPage(this._gifData);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_gifData["title"]),
        backgroundColor: Colors.black,
        //Compartilhar gifs
        actions: [
          IconButton(onPressed: (){
            Share.share(_gifData["images"]["fixed_height"]["url"]);
          }, icon: Icon(Icons.share),
          )
        ],
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Image.network(_gifData["images"]["fixed_height"]["url"]),
      ),
    );
  }
}
