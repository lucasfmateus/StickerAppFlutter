import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:stickers/Utils/Stickers.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
    });
  }

  List<Packeage> packeagesList = new List();
  List<Sticker> packeage = new List();
  List<Sticker> bonoroPack = new List();
  List<Sticker> dorimePack = new List();
  List<Sticker> pingoPack = new List();
  List<Sticker> laranjoPack = new List();

  @override
  void initState() {
    super.initState();

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


  Widget GetImage(list,index) {
    final x = list.asMap();
    final myFigure = x[index];
    return Image.asset(myFigure.name);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE3E3E3),
      appBar: AppBar(
        title: Text(widget.title),
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
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: new EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
                      decoration:
                        BoxDecoration(
                          color: Colors.white,
                          borderRadius: new BorderRadius.circular(16.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black38,
                              blurRadius: 8.0,
                              spreadRadius: 1.0,
                              offset: Offset(
                                0.1, // horizontal, move right 10
                                0.1, // vertical, move down 10
                              ),
                            )
                          ]
                        ),
                      child:
                        new Container(
                          padding: new EdgeInsets.fromLTRB(24.0, 24.0, 24.0, 8.0),
                          alignment: Alignment.bottomCenter,
                          child:
                            new Column(
                              children: <Widget>[
                                new Column(
                                  children: <Widget>[
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child:
                                        Text(
                                          it.Title,
                                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28  )
                                        ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child:
                                        new Row(
                                          children: <Widget>[
                                            Text(
                                                "Autor: ",
                                                style: TextStyle(fontSize: 14, color: Colors.grey )
                                            ),
                                            Text(
                                                it.Author,
                                                style: TextStyle(fontSize: 14, color: Colors.grey )
                                            ),
                                          ],
                                        )
                                    ),
                                  ],
                                ),
                                new Column(
                                  children: <Widget>[
                                    new Container(
                                      height: MediaQuery.of(context).size.height * 0.42,
                                      margin: new EdgeInsets.all(0),
                                      child:
                                        Align(
                                          alignment: Alignment.center,
                                          child:
                                          Image.asset(it.Icon),
                                        ),
                                    )
                                  ],
                                ),
                                new Column(
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
                          /*GridView.count(
                              mainAxisSpacing: 16,
                              crossAxisSpacing: 16,
                              crossAxisCount: 3,
                              children: List.generate(it.Stickers.length, (index)
                              {
                                return Center(
                                  child: Image.asset(it.Stickers[index].name),
                                );
                              })
                          ),*/
                        ),
                    );
                  }).toList(),
                ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
