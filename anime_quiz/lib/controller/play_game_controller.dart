import 'dart:math';

import 'package:anime_quiz/entitys/traloi.dart';

class Play_Game_Controller {
  List<String> tachChuoi(String dapan){
    return dapan.split('');
  }
  List<String> tronDapAn(List<String> listDapAn){
    List<String> chuoiDaTron = ['','','','','','','','','','','','','','','','','',''];
    List<String> bangChuCai = ['A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z'];//26
    
    var random = new Random();
    
    for(int i= 0; i< listDapAn.length; i++){
      int index = random.nextInt(17);
      int thoat = 0;
      while (thoat == 0) {
        if (chuoiDaTron[index] == '') {
          //chuoiDaTron.insert(index, listDapAn[i]);
          chuoiDaTron[index] = listDapAn[i];
          thoat ++;
        } else {
          index = random.nextInt(17);
        }
        
      }
    }
    for (var i = 0; i < chuoiDaTron.length; i++) {
      if(chuoiDaTron[i]==''){
        chuoiDaTron[i] = bangChuCai[random.nextInt(chuoiDaTron.length)];
      }
    }
    //print(chuoiDaTron);
    return chuoiDaTron;
  }
  List<TraLoi> khoiTaoLuuTraLoi(String dapan){
    List<TraLoi> templ = new List<TraLoi>();
    for (var i = 0; i < dapan.length; i++) {
      templ.add(new TraLoi('', null, null));
    }
    return templ;
  }
}