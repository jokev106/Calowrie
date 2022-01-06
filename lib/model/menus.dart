part of 'models.dart';

class Menus extends Equatable{
  final String uid;
  final String name;
  final String calorie;
  final String time;
  final String type;
  final String ingredients;
  final String steps;
  final String image;
  final String createdAt;
  final String updatedAt;

  const Menus(
    this.uid,
    this.name,
    this.calorie,
    this.time,
    this.type,
    this.ingredients,
    this.steps,
    this.image,
    this.createdAt,
    this.updatedAt,
  );

  @override
  List<Object> get props => [
    uid,
    name,
    calorie,
    time,
    type,
    ingredients,
    steps,
    image,
    createdAt,
    updatedAt,
    
  ];
}