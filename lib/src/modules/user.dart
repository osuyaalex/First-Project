import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel{
  //field
  static const NAME = "name";
  static const EMAIL = "email";
  static const ID = "id";

  //variable
  String _name;
  String _email;cvvv
  String _id;

  //getters
  String get name => _name;
  String get email => _email;
  String get id => _id;

  UserModel.fromSnapshot(DocumentSnapshot snapshot){
    //_name = snapshot.data[NAME];
    //_name = snapshot.data[NAME];
    //_name = snapshot.data[NAME];
  }





}
