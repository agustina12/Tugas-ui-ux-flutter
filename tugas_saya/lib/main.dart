import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "Tugas Saya",
    home: new Home(),
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.amber[900],
        title: new Text("Tugas Saya"),
      ),
      body: new ListView(
        children: <Widget>[
          new TugasSaya(gambar: "https://assetcdn.kulina.id/production/img/tahu-bakso-kuah-3.jpg",judul: "Tahu Bakso Kuah",),
          new TugasSaya(gambar: "https://assetcdn.kulina.id/production/img/ayam-serundeng.jpg",judul: "Ayam Serundeng",),
          new TugasSaya(gambar: "https://assetcdn.kulina.id/production/img/empal-gepuk.jpg",judul: "Empal Gepuk",),
          new TugasSaya(gambar: "https://assetcdn.kulina.id/production/img/gado-gado-ayam-suwir-betawi.jpg",judul: "Gado-gado Ayam Suwir",),
          new TugasSaya(gambar: "https://assetcdn.kulina.id/production/img/soto-daging-sapi-9.jpg",judul: "Soto Daging Sapi",),
        ],
      ),
    );
  }
}

class TugasSaya extends StatelessWidget {

  TugasSaya ({this.gambar, this.judul});
  final String gambar;
  final String judul;

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.all(20.0),
      child: new Center(
        child: new Column(
          children: <Widget>[
            new Image(
              image: new NetworkImage(
                  gambar),
              width: 400.0,
            ),
            new Container(
              child: new Center(
                child: new Column(
                  children: <Widget>[
                    new Text(
                      judul, 
                      style: new TextStyle(fontSize: 20.0),
                      ),
                      new Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                      style: new TextStyle(fontSize: 12.0),
                      ),
                  ],
                  )),
            )
            
          ],
        ),
      ),
    );
  }
}
