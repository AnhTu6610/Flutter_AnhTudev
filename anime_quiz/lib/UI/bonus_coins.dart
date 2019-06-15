import 'package:flutter/material.dart';

class Bonus_Coins extends StatefulWidget {
  @override
  _Bonus_CoinsState createState() => _Bonus_CoinsState();
}

class _Bonus_CoinsState extends State<Bonus_Coins> {
  _Close(){
    Navigator.pop(context);
  }
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: Scaffold(
        body: Material(
          color: Colors.blue[400],
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,

            children: <Widget>[
              Container(
                padding: EdgeInsets.only(bottom: 20.0, left: 10.0, right: 10.0),
                child: OutlineButton(
                  onPressed: () {},
                  highlightColor: Colors.white,
                  splashColor: Colors.yellow,
                  borderSide: BorderSide(color: Colors.white, width: 3.0),
                  shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(60.0)),
                  child: Column(
                    children: <Widget>[
                      Image.asset('assets/images/coin.png', fit: BoxFit.contain, height: 60.0,),
                      Text('Get free coins', style: TextStyle(fontSize: 30, color: Colors.white),),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 20.0, left: 10.0, right: 10.0),
                child: OutlineButton(
                  onPressed: () {},
                  highlightColor: Colors.white,
                  splashColor: Colors.yellow,
                  borderSide: BorderSide(color: Colors.white, width: 3.0),
                  shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(60.0)),
                  child: Column(
                    children: <Widget>[
                      Image.asset('assets/images/iconfacebook.png', fit: BoxFit.contain, height: 60.0,),
                      Text('Share FaceBook', style: TextStyle(fontSize: 30, color: Colors.white),),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 20.0, left: 10.0, right: 10.0),
                child: OutlineButton(
                  onPressed: () {},
                  highlightColor: Colors.white,
                  splashColor: Colors.yellow,
                  borderSide: BorderSide(color: Colors.white, width: 3.0),
                  shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(60.0)),
                  child: Column(
                    children: <Widget>[
                      //Image.asset('assets/images/coin.png', fit: BoxFit.contain, height: 60.0,),
                      Icon(Icons.star, color: Colors.yellow,size: 60.0,),
                      Text('Rate App', style: TextStyle(fontSize: 30, color: Colors.white),),
                    ],
                  ),
                ),
              ),
              IconButton(
                icon: Icon(Icons.close, color: Colors.red),
                iconSize: 70.0,
                tooltip: 'Close',
                splashColor: Colors.yellow,
                onPressed: (){_Close();},
              ),
            ],
          ),
        ),
      ),
    );
  }
}