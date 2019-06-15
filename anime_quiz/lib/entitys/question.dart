final String kid = 'id';
final String kdapan = 'dapan';
final String klinkimage = 'linkimage';
final String kstatus = 'status';
class Question {
  int id;
  String dapan;
  String linkimage;
  int status;
  Question({this.id, this.dapan, this.linkimage, this.status});
  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      kid : id,
      kdapan : dapan,
      klinkimage : linkimage,
      kstatus : status,
    };
    return map;
  }
  Question.fromMap(Map<String, dynamic> map) {
    this.id = map[kid];
    this.dapan = map[kdapan];
    this.linkimage = map[klinkimage];
    this.status = map[kstatus];
  }
  
}