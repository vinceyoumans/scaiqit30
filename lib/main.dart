import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'globals.dart';
import 'setup.dart';
import 'home2.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SCAI-QIT 30',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'SCAI-QIT 30'),
    );
  }
}

class MyHomePage extends StatefulWidget {

  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
// modal Window here about information

  void _incrementCounter() {
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {

    return new Scaffold(
//      appBar: new AppBar(
//        title: new Text(widget.title),
//      ),
//=================================================
//=================================================
    body: new Center(
      child: Stack(
        children: <Widget>[
//=================================================

        // backgrounds
Padding(
  padding: const EdgeInsets.all(18.0),
  child:   new Container(
    child: Column(
      children: <Widget>[

        new Expanded(
            flex: 10,
            child: Row(
              children: <Widget>[
                //Text(" A"),
                //Text("SCAI QIT"),
              ],
            )),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: new Image.asset(SQ01),
        ),
        Padding(
          padding: const EdgeInsets.all(38.0),
          child: new Image.asset(SQ02),
        )
      ],
    ),
  ),
),



//=================================================
        //OverLay

          new Container(
            child: new Column(
              children: <Widget>[
                //--------  top section
                new Container(
                  child: new Spacer(
                    flex: 3,
                  ),
                ),

                new Expanded(
                    flex: 5,
                    child: Column(
                      children: <Widget>[
                Text("SCAI-QIT Cath Lab Guidlines",
                  softWrap: true,
                  style: TextStyle(fontSize: 20.0, color: Colors.blue),
                ),
                Text("Appropriate Use Criteria App"),
                      ],
                    )
                ),

                //-------- mid section
                CUPBUT_01(context),
                //-------- footer
                new Container(
                  child: new Spacer(
                    flex: 38,
                  ),
                ),

                new Expanded(
                    flex: 15,
                    child: Column(
                      children: <Widget>[
//                Text(" A"),
//                Text(" B"),
                      ],
                    )
                ),

              ],
            ),
          ),



//=================================================
        ],
      ),
    ) ,
//=================================================
//=================================================

      floatingActionButton: new FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: new Icon(Icons.info),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}




//========================================================
//==========   CupButton 01     ==========================
//========================================================
CupertinoButton CUPBUT_01(BuildContext context) {
  return new CupertinoButton(
    //color: Colors.blue.withOpacity(0.5),
    color: HOMEPAGE_BUTTON_COLOR,
    //minSize: double.infinity,

    child: Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        children: <Widget>[
          Text(
            HOMEPAGE_TITLE01,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30.0,
            ),
          ),
          //Text("For Congress",
          Text(
            HOMEPAGE_TITLE02,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25.0,
            ),
          ),
        ],
      ),
    ),
    onPressed: () {
      //  PUT NAVIGATION HERE
      print('click mb001');
      //Navigator.pushNamed(context, '/Second');
      Navigator.push(
        context,
        //MaterialPageRoute(builder: (context) => Second()),
        CupertinoPageRoute(builder: (context) => Second()),
      );
    },
  );
}

//========================================================
//==========   CupButton 01     ==========================
//========================================================
