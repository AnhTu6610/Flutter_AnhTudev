import 'package:anime_quiz/UI/bonus_coins.dart';
import 'package:anime_quiz/UI/play_game.dart';
import 'package:anime_quiz/entitys/question.dart';
import 'package:anime_quiz/entitys/user.dart';
import 'package:flutter/material.dart';

class List_Level extends StatefulWidget {
  final List<Question> question;
  final User user;

  const List_Level({Key key, this.question, this.user}) : super(key: key);

  @override
  _List_LevelState createState() => _List_LevelState(question, user);
}

class _List_LevelState extends State<List_Level> {
  List<Question> question;
  User user;
  _List_LevelState(this.question, this.user);
  _pushBonus() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Bonus_Coins()));
  }

  _pushLevel() {
    //Navigator.push(context, MaterialPageRoute(builder: (context) => List_Level()));
  }
  _PlayGame(List<Question> questionList, int index) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => Play_Game(
                questionList: questionList, index: index, user: user)));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.green,
          title: Text(
            "${user.tenuser}",
            style: TextStyle(fontSize: 30.0),
          ),
          //centerTitle: true,
          actions: <Widget>[
            Container(
              margin: EdgeInsets.only(right: 20.0),
              child: Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(right: 15.0),
                    child: RaisedButton(
                      child: Wrap(
                        spacing: 5.0,
                        children: <Widget>[
                          Icon(Icons.loupe, color: Colors.amber),
                          Text(
                            'Bonus',
                            style:
                                TextStyle(color: Colors.white, fontSize: 20.0),
                          )
                        ],
                      ),
                      color: Colors.pink,
                      elevation: 4.0,
                      splashColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(20.0)),
                      onPressed: () {
                        _pushBonus();
                      },
                    ),
                  ),
                  Container(
                    child: RaisedButton(
                      child: Wrap(
                        spacing: 5.0,
                        children: <Widget>[
                          Text(
                            '${user.coin}',
                            style:
                                TextStyle(color: Colors.white, fontSize: 20.0),
                          ),
                          Image.asset(
                            'assets/images/coin.png',
                            height: 23.0,
                            fit: BoxFit.contain,
                          ),
                        ],
                      ),
                      color: Colors.blueAccent,
                      elevation: 4.0,
                      splashColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(20.0)),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        body: new Material(
            color: Colors.green[200],
            child: GridView.extent(
              maxCrossAxisExtent: 100.0,
              mainAxisSpacing: 5.0,
              crossAxisSpacing: 5.0,
              padding: EdgeInsets.all(5.0),
              children: _Level(),
            )),
      ),
    );
  }

  List<Widget> _Level() {
    //int number = question.length;
    //List<Question> qq = question;
    List<RaisedButton> buttons =
        new List<RaisedButton>.generate(question.length, (int index) {
      return new RaisedButton(
        onPressed: () {
          if (index != 0) {
            if (question[index - 1].status == 1)
              _PlayGame(question, index);
          }else{
            _PlayGame(question, index);
          }
          
        },
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0))),
        color: Colors.white,
        child: Stack(
          children: <Widget>[
            if (index != 0)
              if (question[index - 1].status == 1)
                Container(
                  alignment: Alignment.center,
                  child: Image.asset(
                    'assets/imagesGame/${question[index].linkimage}',
                    fit: BoxFit.fill,
                  ),
                )
              else
                Container(
                  alignment: Alignment(0.0, 0.0),
                  child: Icon(
                    Icons.lock,
                    color: Colors.green,
                    size: 50.0,
                  ),
                )
            else
              Container(
                alignment: Alignment.center,
                child: Image.asset(
                  'assets/imagesGame/${question[index].linkimage}',
                  fit: BoxFit.fill,
                ),
              ),
            Container(
              alignment: Alignment(1.0, 1.0),
              child: Text(
                (index + 1).toString(),
                style: TextStyle(fontSize: 20.0, color: Colors.black),
              ),
            ),
            if (question[index].status == 1)
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(90.0)),
                ),
                child: Icon(
                  Icons.check_circle,
                  color: Colors.green,
                ),
              )
          ],
        ),
      );
    });
    return buttons;
  }
}
