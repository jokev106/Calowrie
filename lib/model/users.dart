part of 'models.dart';

class Users extends Equatable{
  
  final String uid;
  final String name;
  final String email;
  final String password;
  final String createdAt;
  final String updateAt;

  const Users(
    this.uid,
    this.name,
    this.email,
    this.password,
    this.createdAt,
    this.updateAt,
  );

  @override
  List<Object> get props => [
    uid,
    name,
    email,
    password,
    createdAt,
    updateAt,
  ];

}