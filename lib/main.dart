import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Tugas 1',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'EUDEKA!'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: IconButton(
              icon: Icon(Icons.refresh),
              tooltip: 'reload',
              onPressed:  () {
                print("refresh me");
                setState(() {});
              },
            ),


          )

        ],
        backgroundColor: Colors.blueGrey,
        title: Text(widget.title),
      ),
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height / 3,
                  width: MediaQuery.of(context).size.width,
                  child: new Image.asset(
                    "assets/images/agu.jpg",
                    fit: BoxFit.fill,
                  ),
                ),
                Container(
                    color: Color.fromARGB(255, 196, 196, 196),
                    padding: EdgeInsets.only(left: 25, top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Dirgahayu RI ",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,),
                        ),
                      ],
                    ),
                ),
                Container(
                  color: Color.fromARGB(255, 196, 196, 196),
                  padding: EdgeInsets.only(left: 25, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "17 Agustus 2019",
                        style: TextStyle(color: Colors.black, fontSize: 15,),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  color: Colors.white,
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Text(
                    "Perayaan lomba 17 Agustusan merupakan tradisi tahunan yang dilakukan oleh rakyat Indonesia untuk menyambut hari kemerdekaan RI. Meski ragam lomba yang diadakan dari tahun ke tahun cenderung sama, antusiasme masyarakat dalam mengikutinya tidak perlu ditanyakan.",
                    style: TextStyle(color: Colors.black,),
                    textAlign: TextAlign.justify,
                  ),
                ),
                Container(
                  color: Colors.white,
                  padding: EdgeInsets.only(top: 15, left: 20, right: 20, bottom: 20),
                  child: Text(
                    "Mulai dari anak-anak hingga orang tua semuanya tidak melewatkan momen seru tiap bulan Agustus itu.  Beragam hadiah unik dan menarik pun banyak dijumpai, mulai peralatan dapur hingga barang-barang elektronik, seperti TV dan kulkas.",
                    style: TextStyle(color: Colors.black,),
                    textAlign: TextAlign.justify,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      padding: EdgeInsets.only(bottom: 20),
                      child: Icon(Icons.comment),
                    ),
                    Container(
                      padding: EdgeInsets.only(bottom: 20),
                      child: Icon(Icons.share),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}