import 'package:anime_quiz/dao/crud.dart';
import 'package:anime_quiz/entitys/question.dart';
class List_level_controller {
  Crud crud = new Crud();
  Future getAllQuestion() async{
    await crud.getAllQuestion();
  }
}