import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hai_air/cubit/auth_cubit.dart';
import 'package:hai_air/ui/widgets/custom_button.dart';
import 'package:hai_air/ui/widgets/custom_text_from_field.dart';
import '../../shared/theme.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({Key? key}) : super(key: key);

  final TextEditingController nameController = TextEditingController(text: '');
  final TextEditingController emailController = TextEditingController(text: '');
  final TextEditingController passwordController = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: const EdgeInsets.only(
          top: 50,
        ),
        child: Text("Join us and get\nyour next journey",
            style: blackTextStyle.copyWith(fontSize: 24, fontWeight: bold)),
      );
    }

    Widget inputSection() {
      Widget nameInput() {
        return CustomTextFormField(
          tittle: "Name",
          hintText: "Your full name",
          controller: nameController,
        );
      }

      Widget emailInput() {
        return CustomTextFormField(
          tittle: "Email",
          hintText: "Your email address",
          controller: emailController,
        );
      }

      Widget passwordInput() {
        return CustomTextFormField(
          tittle: "Password",
          hintText: "Your password",
          obsecureText: true,
          controller: passwordController,
        );
      }

      Widget signUpButton() {
        return BlocConsumer<AuthCubit, AuthState>(
          listener: (context, state) {
            if (state is AuthSucces) {
              Navigator.pushNamedAndRemoveUntil(
                  context, '/bonus-page', (route) => false);
            } else if (state is AuthFailed) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.error),
                ),
              );
            }
          },
          builder: (context, state) {
            if (state is AuthLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            return CustomButton(
              tittle: 'Sign UP',
              onPressed: () {
                context.read<AuthCubit>().signUp(
                    name: nameController.text,
                    email: emailController.text,
                    password: passwordController.text);
              },
            );
          },
        );
      }

      Widget signInButton() {
        return Container(
            margin: const EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have an account?',
                  style: greyTextStyle.copyWith(fontSize: 16),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text('Sign In',
                      style: primaryTextStyle.copyWith(fontSize: 16)),
                )
              ],
            ));
      }

      return Container(
        margin: const EdgeInsets.only(top: 30),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        child: Column(
          children: [
            nameInput(),
            emailInput(),
            passwordInput(),
            signUpButton(),
            signInButton(),
          ],
        ),
      );
    }

    Widget tacButton() {
      return Container(
        margin: const EdgeInsets.only(top: 60, bottom: 50),
        child: Center(
          child: Text(
            "Terms and Conditions",
            style: greyTextStyle.copyWith(
                fontSize: 14,
                fontWeight: light,
                decoration: TextDecoration.underline),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          children: [
            title(),
            inputSection(),
            tacButton(),
          ],
        ),
    );
  }
}
