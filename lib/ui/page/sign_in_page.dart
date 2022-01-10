import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hai_air/cubit/auth_cubit.dart';
import 'package:hai_air/ui/widgets/custom_button.dart';
import 'package:hai_air/ui/widgets/custom_text_from_field.dart';
import '../../shared/theme.dart';

class SignInPage extends StatelessWidget {
  SignInPage({Key? key}) : super(key: key);

  final TextEditingController emailController = TextEditingController(text: '');
  final TextEditingController passwordController =
      TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: const EdgeInsets.only(
          top: 50,
        ),
        child: Text("Sign In",
            style: blackTextStyle.copyWith(fontSize: 24, fontWeight: bold)),
      );
    }

    Widget inputSection() {
      Widget emailInput() {
        return CustomTextFormField(
          tittle: "Email Adress",
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

      Widget signInButton() {
        return BlocConsumer<AuthCubit, AuthState>(
          listener: (context, state) {
            if (state is AuthSucces) {
              Navigator.pushNamedAndRemoveUntil(
                  context, '/main', (route) => false);
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
              tittle: 'Sign In',
              onPressed: () {
                context.read<AuthCubit>().signIn(
                    email: emailController.text,
                    password: passwordController.text);
              },
            );
          },
        );
      }

      Widget signInGoogle() {
        return BlocConsumer<AuthCubit, AuthState>(
          listener: (context, state) {
            if (state is AuthSucces) {
              Navigator.pushNamedAndRemoveUntil(
                  context, '/main', (route) => false);
            } else if (state is AuthFailed) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.error),
                ),
              );
            }
          },
          builder: (context, state) {
            // if (state is AuthLoading) {
            //   return const Center(
            //     child: CircularProgressIndicator(),
            //   );
            // }
            return GestureDetector(
              onTap: () {
                context.read<AuthCubit>().signInGoogle();
              },
              child: Container(
                margin: EdgeInsets.only(top: defaultMargin),
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(defaultRadius),
                        color: kPrimaryColor,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Sign In with Google Account',
                            style: whiteTextStyle.copyWith(
                                fontSize: 18, fontWeight: medium),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Image.asset(
                            'assets/google_icon.png',
                            width: 30,
                            height: 30,
                            color: kWhiteColor,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        );
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
            emailInput(),
            passwordInput(),
            signInButton(),
            signInGoogle(),
          ],
        ),
      );
    }

    Widget signUpButton() {
      return Container(
          margin: const EdgeInsets.only(top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Don\'t have an account?',
                style: greyTextStyle.copyWith(fontSize: 16),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/sign-up');
                },
                child: Text('Sign Up',
                    style: primaryTextStyle.copyWith(fontSize: 16)),
              )
            ],
          ));
    }

    return SafeArea(
      child: Scaffold(
        backgroundColor: kBackgroundColor,
        body: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          children: [
            title(),
            inputSection(),
            signUpButton(),
          ],
        ),
      ),
    );
  }
}
