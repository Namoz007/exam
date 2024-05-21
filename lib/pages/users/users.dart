List<CommentUser> commentUsers = [
  CommentUser(name: 'Kathryn Muphry',
      img: 'https://www.google.com/imgres?q=person%20images&imgurl=https%3A%2F%2Ft3.ftcdn.net%2Fjpg%2F02%2F99%2F04%2F20%2F360_F_299042079_vGBD7wIlSeNl7vOevWHiL93G4koMM967.jpg&imgrefurl=https%3A%2F%2Fstock.adobe.com%2Fsearch%3Fk%3Dperson&docid=u8MkgSDI8RpPkM&tbnid=WtSakh-QHajDfM&vet=12ahUKEwjXs5bJjZyGAxV6ERAIHeLTBqcQM3oECBcQAA..i&w=487&h=360&hcb=2&ved=2ahUKEwjXs5bJjZyGAxV6ERAIHeLTBqcQM3oECBcQAA',
      time: 'Sep 21, 2021',
      likeCount: 14,
      isLike: false,
      comment: 'Nice list.👍'),
  CommentUser(name: 'Full name',
      img: 'comment_user_first',
      time: 'Time',
      likeCount: 37,
      isLike: false,
      comment: 'Nice list.👍👍'),
  CommentUser(name: 'Full name',
      img: 'comment_user_second',
      time: 'Time',
      likeCount: 97,
      isLike: false,
      comment: 'Integer pulvinar lacus ac consequat dapibus.🔥🔥🔥'),
  CommentUser(name: 'Full name',
      img: 'comment_user_threed',
      time: 'Time',
      likeCount: 05,
      isLike: false,
      comment: 'Integer pulvinar lacus ac consequat dapibus.\n🔥🔥🔥'),
];

class CommentUser{
  String name;
  String img;
  String time;
  int likeCount;
  bool isLike;
  String comment;
  bool disLike =  false;
  
  CommentUser({required this.name, required this.img, required this.time, required this.likeCount,required this.isLike, required this.comment,});
}


List<User> users = [
  User(fullName: 'Muhammadzohid Qahramonov', email: 'qahramonovmuhammadzohid47@gmail.com', password: 'qahramonov47@'),
  User(fullName: 'a', email: 'a@', password: 'aaaaaaaa')
];

class User{
  String email;
  String password;
  String fullName;

  User({required this.fullName, required this.email, required this.password});
}