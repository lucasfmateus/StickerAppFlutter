import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:stickers/Pages/CreatePackeagePage.dart';
import 'package:stickers/Pages/EditPackeagePage.dart';
import 'package:stickers/Utils/Stickers.dart';
import 'package:stickers/Utils/EditableBlurCard.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget { 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Stickers'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();

}

class _MyHomePageState extends State<MyHomePage> {

  List<Packeage> packeagesList = new List();
  List<Sticker> packeage = new List();
  List<Sticker> bonoroPack = new List();
  List<Sticker> dorimePack = new List();
  List<Sticker> pingoPack = new List();
  List<Sticker> laranjoPack = new List();

  _MyHomePageState() {

    dorimePack.add(new Sticker(name: 'assets/images/dori.png'));
    dorimePack.add(new Sticker(name: 'assets/images/ameno.png'));
    dorimePack.add(new Sticker(name: 'assets/images/ameno.jpg'));
    dorimePack.add(new Sticker(name: 'assets/images/dorime.jpg'));

    bonoroPack.add(new Sticker(name: 'assets/bonoro/bonoro.webp'));
    bonoroPack.add(new Sticker(name: 'assets/bonoro/bonoro (2).webp'));
    bonoroPack.add(new Sticker(name: 'assets/bonoro/bonoro (3).webp'));
    bonoroPack.add(new Sticker(name: 'assets/bonoro/bonoro (4).webp'));
    bonoroPack.add(new Sticker(name: 'assets/bonoro/bonoro (5).webp'));
    bonoroPack.add(new Sticker(name: 'assets/bonoro/bonoro (6).webp'));
    bonoroPack.add(new Sticker(name: 'assets/bonoro/bonoro (7).webp'));
    bonoroPack.add(new Sticker(name: 'assets/bonoro/bonoro (1).jpg'));

    dorimePack.add(new Sticker(name: 'assets/dorime/dori.png'));
    dorimePack.add(new Sticker(name: 'assets/dorime/ameno.png'));
    dorimePack.add(new Sticker(name: 'assets/dorime/ameno.jpg'));
    dorimePack.add(new Sticker(name: 'assets/dorime/dorime.jpg'));

    pingoPack.add(new Sticker(name: 'assets/pingo/pingo (1).webp'));
    pingoPack.add(new Sticker(name: 'assets/pingo/pingo (2).webp'));
    pingoPack.add(new Sticker(name: 'assets/pingo/pingo (3).webp'));
    pingoPack.add(new Sticker(name: 'assets/pingo/pingo (4).webp'));
    pingoPack.add(new Sticker(name: 'assets/pingo/pingo (5).webp'));
    pingoPack.add(new Sticker(name: 'assets/pingo/pingo (6).webp'));
    pingoPack.add(new Sticker(name: 'assets/pingo/pingo (7).webp'));
    pingoPack.add(new Sticker(name: 'assets/pingo/pingo (8).webp'));
    pingoPack.add(new Sticker(name: 'assets/pingo/pingo (9).webp'));

    laranjoPack.add(new Sticker(name: 'assets/laranjo/laranjo (2).webp'));
    laranjoPack.add(new Sticker(name: 'assets/laranjo/laranjo (1).webp'));
    laranjoPack.add(new Sticker(name: 'assets/laranjo/laranjo (3).webp'));
    laranjoPack.add(new Sticker(name: 'assets/laranjo/laranjo (5).webp'));
    laranjoPack.add(new Sticker(name: 'assets/laranjo/laranjo (6).webp'));
    laranjoPack.add(new Sticker(name: 'assets/laranjo/laranjo (7).webp'));
    laranjoPack.add(new Sticker(name: 'assets/laranjo/laranjo (8).webp'));

    packeagesList.add(
        new Packeage(
          Id: "1",
          Active: true,
          Author: "Lucas Mateus",
          Count: bonoroPack.length,
          CreateAt: DateTime.now(),
          Icon: bonoroPack.first.name,
          Stickers: bonoroPack,
          Title: "Pacote Bonoro",
          First: bonoroPack[1].name,
          Second: bonoroPack[2].name,
          Third: bonoroPack[3].name,
        )
    );
    packeagesList.add(
        new Packeage(
          Id: "2",
          Active: true,
          Author: "Lucas Mateus",
          Count: dorimePack.length,
          CreateAt: DateTime.now(),
          Icon: dorimePack.first.name,
          Stickers: dorimePack,
          Title: "Pacote Dorime",
          First: dorimePack[1].name,
          Second: dorimePack[2].name,
          Third: dorimePack[3].name,
        )
    );
    packeagesList.add(
        new Packeage(
          Id: "1",
          Active: true,
          Author: "Lucas Mateus",
          Count: pingoPack.length,
          CreateAt: DateTime.now(),
          Icon: pingoPack.first.name,
          Stickers: packeage,
          Title: "Pacote Pinguim",
          First: pingoPack[1].name,
          Second: pingoPack[2].name,
          Third: pingoPack[3].name,
        )
    );

    packeagesList.add(
        new Packeage(
          Id: "1",
          Active: true,
          Author: "Lucas Mateus",
          Count: laranjoPack.length,
          CreateAt: DateTime.now(),
          Icon: laranjoPack.first.name,
          Stickers: laranjoPack,
          Title: "Pacote Do Laranjo",
          First: laranjoPack[1].name,
          Second: laranjoPack[2].name,
          Third: laranjoPack[3].name,
        )
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE3E3E3),
      appBar: AppBar(
        title: Center(
          child: Text(widget.title),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Container(
              height: 120,
            ),
            new Container(
              child:
                new CarouselSlider(
                  height: MediaQuery.of(context).size.height * 0.65 ,
                  items: packeagesList.map((it) {
                    return EditableBlurCard(
                      Container(
                        padding: EdgeInsets.all(16.0),
                        alignment: Alignment.bottomCenter,
                        child: Column(
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                      it.Title,
                                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28  )
                                  ),
                                ),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Row(
                                      children: <Widget>[
                                        Text(
                                            "Atualizado em: ",
                                            style: TextStyle(fontSize: 10, color: Colors.grey )
                                        ),
                                        Text(
                                            it.CreateAt.toString(),
                                            style: TextStyle(fontSize: 10, color: Colors.grey )
                                        ),
                                      ],
                                    )
                                ),
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Container(
                                  height: MediaQuery.of(context).size.height * 0.42,
                                  margin: EdgeInsets.all(0),
                                  child:
                                  Align(
                                    alignment: Alignment.center,
                                    child:
                                    Image.asset(it.Icon),
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Image.asset(it.First, height:  MediaQuery.of(context).size.height * 0.08),
                                    Image.asset(it.Second, height:  MediaQuery.of(context).size.height * 0.08),
                                    Image.asset(it.Third, height:  MediaQuery.of(context).size.height * 0.08),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      EditPackeagePage()
                    );
                  }).toList(),
                ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => CreatePackagePage()
              )
          );
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
