class User {
  final String? name;
  final String? imageurl;

  User({this.name, this.imageurl});
}

class Message {
  final User user;
  final String massges;
  final String createdAt;

  Message({required this.user, required this.massges, required this.createdAt});
}

var curreentUser = User(
  name: 'jenadius',
  imageurl: 'assets/images/ppic2.jpeg',
);
var elvira = User(
  name: 'Elivira',
  imageurl: 'assets/images/ppic2.jpeg',
);

var jesica = User(
  name: 'Jesca',
  imageurl: 'assets/images/ppic.jpg',
);

List<Message> messages = [
  Message(
    user: curreentUser,
    massges: 'That is good i will teach you',
    createdAt: '31/03/20121',
  ),
  Message(
    user: elvira,
    massges: ' thanks my love',
    createdAt: '31/03/20121',
  ),
  Message(
    user: jesica,
    massges: 'You are welcom',
    createdAt: '31/03/20121',
  ),
];

List<Message> chats = [
  Message(
    user: curreentUser,
    massges: ' Do you love programming',
    createdAt: '31/03/20121',
  ),
  Message(
    user: elvira,
    massges: ' yes i do',
    createdAt: '31/03/20121',
  ),
  Message(
    user: curreentUser,
    massges: 'That is good i will teach you',
    createdAt: '31/03/20121',
  ),
  Message(
    user: elvira,
    massges: ' thanks my love',
    createdAt: '31/03/20121',
  ),
  Message(
    user: curreentUser,
    massges: 'You are welcom',
    createdAt: '31/03/20121',
  ),
];
