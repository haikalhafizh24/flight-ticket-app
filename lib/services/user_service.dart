import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:hai_air/models/user_model.dart';

class UserService {
  final CollectionReference _userReference =
      FirebaseFirestore.instance.collection('users');

  Future<void> setUser(UserModel user) async {
    try {
      _userReference.doc(user.id).set({
        'name': user.name,
        'email': user.email,
        'balance': user.balance,
      });
    } catch (e) {
      rethrow;
    }
  }

  Future<UserModel> getUserById(String id) async {
    try {
      DocumentSnapshot snapshot = await _userReference.doc(id).get();
      return UserModel(
          id: id,
          email: snapshot['email'],
          name: snapshot['name'],
          balance: snapshot['balance']);
    } catch (e) {
      rethrow;
    }
  }

  Future<UserModel> getUserGoogle(String id) async {
    try {
      final auth = FirebaseAuth.instance.currentUser;
      return UserModel(
        id: id,
        email: auth!.email ?? '',
        name: auth.displayName ?? '',
        balance: 240000,
      );
    } catch (e) {
      rethrow;
    }
  }
}
