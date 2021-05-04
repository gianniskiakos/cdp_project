import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService{

  final String uid;
  DatabaseService({ this.uid });

  //collection reference
  final CollectionReference cdpCollection = Firestore.instance.collection('cdps');

  Future updateUserData(String name, int points) async {
    return await cdpCollection.document(uid).setData({
      'name' : name,
      'points' : points,
    });
  }

}