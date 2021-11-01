import 'package:firebase_auth/firebase_auth.dart';
import 'package:hai_air/models/user_model.dart';
import 'package:hai_air/services/user_service.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<UserModel> signUp({
    required String name,
    required String email,
    required String password,
  }) async {
    try {
      UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      UserModel user = UserModel(
        id: userCredential.user!.uid,
        email: email,
        name: name,
        balancae: 340000000,
      );

      await UserService().setUser(user);
      return user;
    } catch (e) {
      rethrow;
    }
  }
}
