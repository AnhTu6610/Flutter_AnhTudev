import 'package:anime_quiz/UI/list_level.dart';
import 'package:anime_quiz/entitys/question.dart';
import 'package:anime_quiz/entitys/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:anime_quiz/controller/controller.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Controller controller = new Controller();
  Future<List<Question>> questions;
  List<Question> ques;
  Future<List<User>> userd;
  List<User> users;
  User user;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.questions = controller.getAllQuestion();
    questions.then((onValue) => this.ques = onValue);

    this.userd = controller.getAllUser();
    userd.then((onValue) => this.users = onValue);
  }
  _pushListLevel() {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => List_Level(question: ques, user: users[0])),
      );
    }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    

    return MaterialApp(
        home: new Container(
      child: Stack(
        //salignment: Alignment.,
        children: <Widget>[
          Center(
            child: new Image.asset(
              'assets/images/bg.png',
              width: size.width,
              height: size.height,
              fit: BoxFit.fill,
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Spacer(flex: 1),
                Container(
                  child: Text(
                    "Game\nAnime Quiz",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                Spacer(flex: 1),
                Container(
                  child: RaisedButton(
                      color: Colors.white,
                      splashColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(40.0)),
                      ),
                      onPressed: () {
                        _pushListLevel();
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(right: 20.0),
                            child: Material(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(40.0)),
                                child: Ink(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.red, width: 4.0),
                                    color: Colors.indigo,
                                    shape: BoxShape.circle,
                                  ),
                                  child: InkWell(
                                    //This keeps the splash effect within the circle
                                    borderRadius: BorderRadius.circular(
                                        1000.0), //Something large to ensure a circle
                                    child: Padding(
                                      padding: EdgeInsets.all(5.0),
                                      child: Icon(
                                        Icons.play_arrow,
                                        size: 40.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                )),
                          ),
                          //Spacer(flex: 1,),
                          Container(
                            child: Text(
                              'Play Game',
                              style: TextStyle(
                                  fontSize: 30.0, color: Colors.black),
                            ),
                          )
                        ],
                      )),
                ),
                //Spacer(flex: 1),
                Container(
                  padding: EdgeInsets.only(top: 15.0),
                  child: RaisedButton(
                      color: Colors.white,
                      splashColor: Colors.purple,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(40.0)),
                      ),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(right: 20.0),
                            child: Material(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(40.0)),
                                child: Ink(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.purple, width: 4.0),
                                    color: Colors.indigo,
                                    shape: BoxShape.circle,
                                  ),
                                  child: InkWell(
                                    //This keeps the splash effect within the circle
                                    borderRadius: BorderRadius.circular(
                                        1000.0), //Something large to ensure a circle
                                    child: Padding(
                                      padding: EdgeInsets.all(10.0),
                                      child: Icon(
                                        Icons.rate_review,
                                        size: 30.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                )),
                          ),
                          //Spacer(flex: 1,),
                          Container(
                            child: Text(
                              'Rate Game',
                              style: TextStyle(
                                  fontSize: 30.0, color: Colors.black),
                            ),
                          )
                        ],
                      )),
                ),
                Spacer(flex: 2),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
