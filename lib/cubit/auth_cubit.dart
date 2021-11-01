import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:hai_air/models/user_model.dart';
import 'package:hai_air/services/auth_services.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  void signUp({
    required String name,
    required String email,
    required String password,
  }) async {
    try {
      emit(AuthLoading());

      UserModel user = await AuthService()
          .signUp(name: name, email: email, password: password);

      emit(AuthSucces(user));
    } catch (e) {
      emit(AuthFailed(e.toString()));
    }
  }
}
