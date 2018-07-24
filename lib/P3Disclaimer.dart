import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'libs.dart';
import 'setup.dart';
import 'P4Page01.dart';
import 'globals.dart';

//========================================================
//==========   SECOND     ================================
class p3Disclaimer extends StatefulWidget {
  p3Disclaimer({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _p3Disclaimer createState() => new _p3Disclaimer();
}

class _p3Disclaimer extends State<p3Disclaimer> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Second Screen"),
      ),
      body: Column(
        children: <Widget>[


          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(38.0),
              child: new Text(
                "  DISCLAIMER  ",
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.red,
                ),
              ),
            ),
          ),


          Expanded(
            flex: 7,
              child: new SingleChildScrollView(
                child:  Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(DISCLAIMER_TEXT,
                  style: TextStyle(fontSize: 15.0,
                  color: Colors.indigo),
                  ),
                ),
              ),
          ),





//          Expanded(
//            flex: 3,
//            child: new Container(
//              child: new  Center(
//               child: Column(
//                 children: <Widget>[
//                   //Spacer(),
//                   Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Center(
//                       child: RoundedButton(
//                         buttonName: 'ACCEPT',
//                         onTap: () {
//                           //Navigator.of(context).pushNamed('/a');
//                         },
//                         highlightColor: Colors.blue,
//                         //width: screenSize.width,
//                         height: 50.0,
//                         bottomMargin: 10.0,
//                         borderWidth: 0.0,
//                         buttonColor: Colors.blue,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//              )
//            ),
//          ),

//          Expanded(
//            flex: 5,
//          ),



//          Padding(
//            padding: const EdgeInsets.all(28.0),
//            child: new InkWell(
//
//              onTap: () => print('hello'),
//              child: new Container(
//                //width: 100.0,
//                height: 50.0,
//                decoration: new BoxDecoration(
//                  color: Colors.blueAccent,
//                  border: new Border.all(color: Colors.white, width: 2.0),
//                  borderRadius: new BorderRadius.circular(10.0),
//                ),
//                child: new Center(child: new Text('Click Me', style: new TextStyle(fontSize: 18.0, color: Colors.white),),),
//              ),
//            ),
//          ),

        
        Padding(
          padding: const EdgeInsets.all(38.0),
          child: new RB001(),
        )


        ],
      ),
    );
  }
}
//
//========================================
//========================================
class RB001 extends StatelessWidget {
  const RB001({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.green,
        padding: EdgeInsets.all(10.0),
          shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(60.0)),
        child: Text(" submit ",    style: TextStyle(fontSize: 20.0)),
        onPressed: () {
          print (" pressed button");
          Navigator.push(
            context,
            //MaterialPageRoute(builder: (context) => Second()),
            CupertinoPageRoute(builder: (context) => P4Page01()),
          );
        },
      ),
    );
  }
}
//========================================
//========================================



//========================================================
//==========   SECOND     ================================
//========================================================

//========================================================
BackGround2(String bgImage) {
  return new Container(
    decoration: new BoxDecoration(
      image: new DecorationImage(
        image: new AssetImage(bgImage),
        fit: BoxFit.cover,
      ),
    ),
    child: null /* add child content content here */,
  );
}
//========================================================




