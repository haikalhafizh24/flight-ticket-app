import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hai_air/models/user_model.dart';

class UserService {
  final CollectionReference _userReference =
      FirebaseFirestore.instance.collection('users');

  Future <void> setUser(UserModel user) async {
    try {
      _userReference.doc(user.id).set({
        'name' : user.name,
        'email' : user.email,
        'balance' : user.balancae,
      });
    } catch (e) {
      rethrow;
    }
  }
}
