import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hai_air/cubit/auth_cubit.dart';
import 'package:hai_air/ui/widgets/custom_button.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is AuthFailed) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.error),
            ),
          );
        } else if(state is AuthInitial){
          Navigator.pushNamedAndRemoveUntil(context, '/sign-up', (route) => false);
        }
      },

      builder: (context, state) {
        if(state is AuthLoading){
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        return Scaffold(
          body: Center(
            child: CustomButton(
              onPressed: () {
                context.read<AuthCubit>().signOut();
              },
              tittle: 'Logout',
              width: 220,
            ),
          ),
        );
      },
    );
  }
}
