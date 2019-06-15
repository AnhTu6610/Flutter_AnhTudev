import 'package:anime_quiz/dao/crud.dart';
import 'package:anime_quiz/entitys/question.dart';
import 'package:anime_quiz/entitys/user.dart';

class Controller {
  Crud crud = new Crud();
  Future<List<Question>> getAllQuestion() async{
    await crud.openDB();
    return await crud.getAllQuestion();
  }
  Future updateQuestion(Question question) async{
    Question ques = question;
    ques.status = 1;
    await crud.openDB();
    await crud.update(ques);
  }

  Future<List<User>> getAllUser() async{
    await crud.openDB();
    return await crud.getAllUser();
  }
  Future congCoin(User us) async{
    User user = us;
    user.coin += 10;
    await crud.openDB();
    await crud.updateUser(user);
  }
  Future truCoin(User us) async{
    User user = us;
    user.coin -= 10;
    await crud.openDB();
    await crud.updateUser(user);
  }
  
}