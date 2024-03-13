class User {
  int userid;
  String username;
  String regin;
  String password;
  String phone_number;
  String onjob;
  int type;

  User(
    this.userid,
    this.username,
    this.regin,
    this.password,
    this.phone_number,
    this.onjob,
    this.type,
  );
  static User objToUser(Map<String, dynamic> map) {
    return User(
      map["userid"],
      map["username"],
      map["regin"],
      map["password"],
      map["phone_number"],
      map["onjob"],
      map["type"],
    );
  }
}