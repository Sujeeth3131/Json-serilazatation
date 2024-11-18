import 'dart:convert';

class User{
  final String name;
  final int age;
  final String email;

  User(this.name,this.age,this.email);

  //from Json method
User.fromJson(Map<String,dynamic>json)
  :name = json["name"] as String,
   age=json["age"] as int,
   email=json["email"] as String;

Map<String,dynamic> toJson()=>{
  "name":name,
  "age":age,
  "email":email,
};
}

