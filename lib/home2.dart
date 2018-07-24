import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'globals.dart';
import 'libs.dart';
import 'setup.dart';
import 'P3Disclaimer.dart';






//========================================================
//==========   SECOND     ================================
class Second extends StatefulWidget {
  Second({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _Second createState() => new _Second();
}

class _Second extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Second Screen"),
      ),
      body: new Center(
        child: new Stack(
          children: <Widget>[

            //----  Background
            BackGround2(SECOND_BACKGROUND_IMAGE),

            //-- Button and text layer
            LEVEL22Buttons(),

          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
//========================================================
//==========   SECOND     ================================
//========================================================



//========================================================
BackGround2( String bgImage) {
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




//=============================================================
//=============================================================
class LEVEL22Buttons extends StatelessWidget {
  const LEVEL22Buttons({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[



        new Expanded(
            flex: 35,
            child: Row(
              children: <Widget>[
                Text(""),
                new Image.asset(SQ03),
                //Text(" B"),
              ],
            ),
        ),



        spacer(5),
        new Container(
          child: new Spacer(
            flex: 8,
          ),
        ),
        new Container(
//          child: new Text(" hi there"),
        ),
        new Container(
          child: new Spacer(
            flex: 2,
          ),
        ),

//===================================================
        CUPBUT_02(context, 1),
        spacer(5),
        //CUPBUT_02(context, 2),
        spacer(5),
        //CUPBUT_02(context, 3),

        //===================================================
        new Expanded(
            flex: 15,
            child: Column(
              children: <Widget>[
                //Text(" A"),
                //Text(" B"),

              ],
            )),
        new Expanded(
            flex: 15,
            child: Row(
              children: <Widget>[
                //Text(" A"),
                //Text(" B"),
                //_buildText(text: 'flex: 2', color: Colors.white, textColor: Colors.black),
              ],
            )),
      ],
    );
  }

}

  //========================================================
//==========   CupButton 01     ==========================
//========================================================
  CupertinoButton CUPBUT_02(BuildContext context, int nextPage) {

    var _text01 ="1";
    var _text02 ="2";
    var _nextScreen = "";

    if( nextPage == 1) {
//    final String _text01 = "Menu01";
//    final String _text02 = "Menu01";

      _text01 = "";
      _text02 = "2012 Appropriate Use Criteria for Coronary Revascularization Focused Update";

    }

    if( nextPage == 2) {
      _text01 = "Menu02";
      _text02 = "Menu02";
    }

    if( nextPage == 3) {
      _text01 = "Menu03";
      _text02 = "Menu03";
    }




    return new CupertinoButton(
      color: HOMEPAGE_BUTTON_COLOR,
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: <Widget>[
            Text(
              _text01,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
            ),
            //Text("For Congress",
            Text(
              _text02,
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
          //CupertinoPageRoute(builder: (context) => Second()),
            CupertinoPageRoute(builder: (context) => p3Disclaimer()),
        );
      },
    );
  }

//========================================================
//==========   CupButton 01     ==========================
//========================================================





//===================================================
//===================================================
  Expanded spacer(int flexes) {
    return new Expanded(
        flex: flexes,
        child: Row(
          children: <Widget>[
            //Text(" A"),
            //Text(" B"),
          ],
        ));
  }
//===================================================
//===================================================








