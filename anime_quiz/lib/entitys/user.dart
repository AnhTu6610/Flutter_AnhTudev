final String zid = 'id';
final String ztenuser = 'tenuser';
final String zcoin = 'coin';
class User {
  int id;
  String tenuser;
  int coin;
  User(this.id, this.tenuser, this.coin);
  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      zid : id,
      ztenuser : tenuser,
      zcoin : coin,
    };
    return map;
  }
  User.fromMap(Map<String, dynamic> map) {
    this.id = map[zid];
    this.tenuser = map[ztenuser];
    this.coin = map[zcoin];
  }
}