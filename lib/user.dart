class User {
  int userid;
  String username;
  String password;
  String regin;
  String phone_number;
  String onjob;
  int type;

  User(
    this.userid,
    this.username,
    this.password,
    this.regin,
    this.phone_number,
    this.onjob,
    this.type,
  );
  static User objToUser(Map<String, dynamic> map) {
    return User(
      map["userid"],
      map["username"],
      map["password"],
      map["regin"],
      map["phone_number"],
      map["onjob"],
      map["type"],
    );
  }
}